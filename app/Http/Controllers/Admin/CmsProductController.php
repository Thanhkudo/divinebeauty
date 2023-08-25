<?php

namespace App\Http\Controllers\Admin;

use App\Consts;
use App\Region;
use App\Http\Services\ContentService;
use App\Models\CmsProduct;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use App\Models\Language;
use Illuminate\Support\Facades\App;
class CmsProductController extends Controller
{
    public function __construct()
    {
        $this->routeDefault  = 'cms_products';
        $this->viewPart = 'admin.pages.cms_products';
        $this->responseData['module_name'] = __('Product Management');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $params = $request->all();
        $params['is_type'] = Consts::POST_TYPE['product'];
        // Get list post with filter params
        $rows = ContentService::getCmsPost($params)->paginate(Consts::DEFAULT_PAGINATE_LIMIT);
        $paramTaxonomys['status'] = Consts::TAXONOMY_STATUS['active'];
        $paramTaxonomys['taxonomy'] = Consts::TAXONOMY['product'];
        $this->responseData['parents'] = ContentService::getCmsTaxonomy($paramTaxonomys)->get();

        $this->responseData['rows'] =  $rows;
        $this->responseData['params'] = $params;
        $this->responseData['booleans'] = Consts::TITLE_BOOLEAN;
        $this->responseData['postStatus'] = Consts::STATUS;

        return $this->responseView($this->viewPart . '.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $paramTaxonomys['status'] = Consts::TAXONOMY_STATUS['active'];
        $paramTaxonomys['taxonomy'] = Consts::TAXONOMY['product'];
        $this->responseData['parents'] = ContentService::getCmsTaxonomy($paramTaxonomys)->get();
        return $this->responseView($this->viewPart . '.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|max:255',
            'taxonomy_id' => 'required|max:255',
        ]);

        $lang = Language::where('is_default', 1)->first()->lang_code ?? App::getLocale();
        $params = $request->all();
        if (isset($params['lang'])) {
            $lang = $params['lang'];
            unset($params['lang']);
        }
        $params['is_type'] = Consts::POST_TYPE['product'];
        $params['alias'] = Str::slug($params['alias'] ?? $params['title']);
        $params['admin_created_id'] = Auth::guard('admin')->user()->id;
        $params['admin_updated_id'] = Auth::guard('admin')->user()->id;
        $params['json_params']['title'][$lang] = $request['title'];
        $CmsProduct = CmsProduct::create($params);
        return redirect()->route($this->routeDefault . '.index')->with('successMessage', __('Add new successfully!'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CmsProduct  $cmsProduct
     * @return \Illuminate\Http\Response
     */
    public function show(CmsProduct $cmsProduct)
    {
        // Do not use this function
        return redirect()->back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\CmsProduct  $cmsProduct
     * @return \Illuminate\Http\Response
     */
    public function edit(CmsProduct $cmsProduct)
    {
        $paramTaxonomys['status'] = Consts::TAXONOMY_STATUS['active'];
        $paramTaxonomys['taxonomy'] = Consts::TAXONOMY['product'];
        $this->responseData['parents'] = ContentService::getCmsTaxonomy($paramTaxonomys)->get();
        $this->responseData['detail'] = $cmsProduct;
        $this->responseData['relateds'] = ContentService::getCmsPost([
            'related_post' => $cmsProduct->json_params->related_post ?? [""],
            'order_by' => 'id'
        ])->get();
        return $this->responseView($this->viewPart . '.edit');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CmsProduct  $cmsProduct
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CmsProduct $cmsProduct)
    {
        $request->validate([
            'title' => 'required|max:255',
            'taxonomy_id' => 'required|max:255',
        ]);

        $lang = Language::where('is_default', 1)->first()->lang_code ?? App::getLocale();
        $params = $request->all();
        if (isset($params['lang'])) {
            $lang = $params['lang'];
            unset($params['lang']);
        }

        $params['alias'] = $params['alias'] != "" ? Str::slug($params['alias']) : $params['title'];
        $params['admin_updated_id'] = Auth::guard('admin')->user()->id;
        $params['json_params']['title'][$lang] = $params['title'];

        $arr_insert = $params;
        // cập nhật lại arr_insert['json_params'] từ dữ liệu mới và cũ
        if ($cmsProduct->json_params != "") {
            foreach ($cmsProduct->json_params as $key => $val) {
                if($key == "gallery_image" ){continue;}
                if (isset($arr_insert['json_params'][$key])) {
                    if ($arr_insert['json_params'][$key] != null) {
                        if (isset($arr_insert['json_params'][$key])) {
                            if (!is_array($params['json_params'][$key])) {
                                $arr_insert['json_params'][$key] = $params['json_params'][$key];
                            } else {

                                $arr_insert['json_params'][$key] = array_merge((array)$val, $params['json_params'][$key]);
                            }
                        } else {
                            $arr_insert['json_params'][$key] = $val;
                        }
                    }
                }
            }
        }

        $cmsProduct->fill($arr_insert);
        $cmsProduct->save();

        return redirect()->back()->with('successMessage', __('Successfully updated!'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CmsProduct  $cmsProduct
     * @return \Illuminate\Http\Response
     */
    public function destroy(CmsProduct $cmsProduct)
    {
        // check is type product
        if ($cmsProduct->is_type != Consts::POST_TYPE['product']) {
            return redirect()->back()->with('errorMessage', __('Permission denied!'));
        }

        $cmsProduct->status = Consts::STATUS_DELETE;
        $cmsProduct->save();

        return redirect()->route($this->routeDefault . '.index')->with('successMessage', __('Delete record successfully!'));
    }
}
