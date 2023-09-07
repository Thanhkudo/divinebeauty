<?php

namespace App\Imports;

use App\Models\CmsPost;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithMappedCells;
use Illuminate\Support\Collection;
use Illuminate\Support\Str;

class XxxImport implements ToModel
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */

    public function model(array $row)
    {
        if (!isset($row[0]) || $row[0] == null) {
            return null;
        }
        $detail = CmsPost::where('alias' ,Str::slug($row[1]))->first();
        $json = [
            "price" => str_replace(',','',$row[3]),
            'url_link' => '/contact',
            "url_link_title" => [
                "en" => "Contacts Us",
                "vi" => "Liên hệ ngay",
            ],
            "brief" => [
                "en" => $row[7],
                "vi" => $row[11],
            ],
            "description" => [
                "en" => $row[4],
                "vi" => $row[8],
            ],
            "content" => [
                "en" => $row[6],
                "vi" => $row[10],
            ],
            "information" => [
                "en" => $row[7],
                "vi" => $row[11],
            ],
            "using" => [
                "en" => $row[5],
                "vi" => $row[9],
            ],

            "seo_titl" => null,
            "seo_keyword" => null,
            "seo_description" => null,
            "title" => [
                "en" => $row[1],
                "vi" => $row[2],
            ],
        ];
        if(isset($detail->json_params->gallery_image) && $detail->json_params->gallery_image != null){
            $json['gallery_image'] = $detail->json_params->gallery_image;
        }
        CmsPost::updateOrCreate(['alias' => Str::slug($row[1])],[
            'title' => $row[1],
            'alias' => Str::slug($row[1]),
            'taxonomy_id' => $row[12],
            'is_type' => 'product',
            'json_params' => $json,
            'iorder' => $row[0],
            'status' => 'active',


        ]);
    }

}
