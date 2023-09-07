<?php

namespace App\Http\Controllers\FrontEnd;

use App\Consts;
use App\Http\Services\ContentService;
use App\Models\Branch;
use App\Models\Contact;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;


class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $params['status'] = Consts::TAXONOMY_STATUS['active'];

        return $this->responseView('frontend.pages.contact.index');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            $request->validate([
                'is_type' => 'required|max:255'
            ]);

            $params = $request->all();
            $params['status'] = Consts::CONTACT_STATUS['new'];
            $messageResult = '';
            // Case get message
            switch ($params['is_type']) {
                case Consts::CONTACT_TYPE['newsletter']:
                    $messageResult = $this->web_information->information->notice_newsletter ?? __('Subscribe newsletter successfully!');
                    break;
                case Consts::CONTACT_TYPE['advise']:
                    $messageResult = $this->web_information->information->notice_advise ?? __('Booking successfull!');
                    break;
                case Consts::CONTACT_TYPE['faq']:
                    $messageResult = $this->web_information->information->notice_faq ?? __('Send contact successfully!');
                    break;
                case Consts::CONTACT_TYPE['call_request']:
                    $messageResult = $this->web_information->information->call_request ?? __('Send call request successfully!');
                    break;
                default:
                    $messageResult = $this->web_information->information->notice_contact ?? __('Send contact successfully!');
                    break;
            }

            if ($params['is_type'] == Consts::CONTACT_TYPE['newsletter']) {
                $contact = Contact::firstOrCreate(
                    [
                        'is_type' => $params['is_type'],
                        'email' => $params['email']
                    ]
                );
            } else {
                $contact = Contact::create($params);
            }

            // send mail
            if (isset($params['email']) && $params['email'] != "") {
                $arr_email = ['Hth11082001@gmail.com', 'guyherzel@gmail.com'];

                // $_ENV['MAIL_USERNAME'] = $this->web_information->information->send_email;
                // $this->setEnv('MAIL_USERNAME', $this->web_information->information->send_email);
                config([
                    'mail.mailers.smtp.username' =>   $this->web_information->information->send_email,
                    'mail.mailers.smtp.password' =>   $this->web_information->information->pass_email,
                ]);
                foreach ($arr_email as $email) {
                    Mail::send('frontend.emails.contact', ['contact' => $contact], function ($message) use ($email) {
                        $message->to($email);
                        $message->subject(__('You received a new appointment from the system'));
                    });
                }
            }

            // call api pancake
            $shop_id = 20035474;
            $key_api = '6ec90ff1adfd4c2b823ae1f0b96b7c05';
            $apiURL = 'https://pos.pages.fm/api/v1/shops/' . $shop_id . '/crm/Contact/records?api_key=' . $key_api;

            $curl = curl_init();
            $data = array(
                'record[Name]' => $params['name'] ?? "",
                'record[Phone]' => $params['phone'] ?? "",
                'record[Email]' => $params['email'] ?? "",
                'record[Note]' => $params['content'] ?? "",
            );
            curl_setopt($curl, CURLOPT_POST, 1);
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
            curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
            curl_setopt($curl, CURLOPT_URL, $apiURL);
            curl_setopt($curl, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);

            curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

            $response = curl_exec($curl);
            curl_close($curl);
            $data_items = json_decode($response, true);
            //end

            return $this->sendResponse($contact, $messageResult);
        } catch (Exception $ex) {
            // throw $ex;
            abort(422, __($ex->getMessage()));
        }
    }

    public function branch(Request $request)
    {
        $params['city'] = $request->get('city');
        $params['district'] = $request->get('district');

        $rows = Branch::where('status', Consts::STATUS['active'])
            ->when(!empty($params['city']), function ($query) use ($params) {
                $query->where('city', '=', $params['city']);
            })
            ->when(!empty($params['district']), function ($query) use ($params) {
                $query->where('district', '=', $params['district']);
            })
            ->get();

        $this->responseData['params'] = $params;
        $this->responseData['rows'] = $rows;

        return $this->responseView('frontend.pages.branch.index');
    }
}
