@extends('frontend.layouts.default')

@php
    $page_title = $taxonomy->title ?? ($page->title ?? $page->name);
    $image_background = $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
    
    $title = $taxonomy->json_params->title->{$locale} ?? ($taxonomy->title ?? null);
    $brief = $taxonomy->json_params->brief->{$locale} ?? ($taxonomy->brief ?? null);
    $content = $taxonomy->json_params->content->{$locale} ?? ($taxonomy->content ?? null);
    $image = $taxonomy->json_params->image ?? null;
    $seo_title = $taxonomy->json_params->seo_title ?? $title;
    $seo_keyword = $taxonomy->json_params->seo_keyword ?? null;
    $seo_description = $taxonomy->json_params->seo_description ?? null;
    $seo_image = $image ?? null;
    
    $list_post = $posts->filter(function ($item, $key) use ($taxonomy) {
        return $item->taxonomy_id == $taxonomy->id && $item->status == App\Consts::POST_STATUS['active'];
    });
@endphp

@section('content')
    <div data-elementor-type="archive" data-elementor-id="278" class="elementor elementor-278 elementor-location-archive">
        <div class="elementor-element elementor-element-365968f e-con-boxed e-con" data-id="365968f"
            data-element_type="container"
            data-settings='{"background_background":"classic","background_motion_fx_motion_fx_scrolling":"yes","background_motion_fx_translateY_effect":"yes","background_motion_fx_translateY_speed":{"unit":"px","size":10,"sizes":[]},"content_width":"boxed","background_motion_fx_translateY_affectedRange":{"unit":"%","size":"","sizes":{"start":0,"end":100}},"background_motion_fx_devices":["desktop","tablet","mobile"]}'
            data-e-bg-lazyload=""
            style="background: url('{{ $image_background }}');
            background-position:  center;
            background-repeat: no-repeat;
            background-size: 100%;">
            <div class="e-con-inner">
                <div class="elementor-element elementor-element-98f209b elementor-invisible elementor-widget elementor-widget-heading"
                    data-id="98f209b" data-element_type="widget" data-settings='{"_animation":"fadeInUp"}'
                    data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h1 class="elementor-heading-title elementor-size-default">
                            {{ $page_title }}
                        </h1>
                    </div>
                </div>
                <div class="elementor-element elementor-element-d2d406c elementor-widget__width-initial elementor-invisible elementor-widget elementor-widget-heading"
                    data-id="d2d406c" data-element_type="widget" data-settings='{"_animation":"fadeInDown"}'
                    data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h4 class="elementor-heading-title elementor-size-default">
                            {{ $brief }}
                        </h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="elementor-element elementor-element-a4b0e69 e-con-boxed e-con" data-id="a4b0e69"
            data-element_type="container" data-settings='{"content_width":"boxed"}'>
            <div class="e-con-inner">
                <div class="elementor-element elementor-element-4b1bd98 e-con-full e-con" data-id="4b1bd98"
                    data-element_type="container" data-settings='{"content_width":"full"}'>

                    {{-- lấy ra dich vu --}}
                    @if (isset($list_post))
                        <div class="elementor-element elementor-element-71e83f5 elementor-widget elementor-widget-jet-listing-grid"
                            data-id="71e83f5" data-element_type="widget"
                            data-settings='{"columns":"2","columns_mobile":"1"}'
                            data-widget_type="jet-listing-grid.default">
                            <div class="elementor-widget-container">
                                <div class="jet-listing-grid jet-listing">
                                    <div class="jet-listing-grid__items grid-col-desk-2 grid-col-tablet-2 grid-col-mobile-1 jet-listing-grid--883"
                                        data-nav='{"enabled":false,"type":null,"more_el":null,"query":[],"widget_settings":{"lisitng_id":883,"posts_num":4,"columns":2,"columns_tablet":2,"columns_mobile":1,"is_archive_template":"","post_status":["publish"],"use_random_posts_num":"","max_posts_num":9,"not_found_message":"No data was found","is_masonry":false,"equal_columns_height":"","use_load_more":"","load_more_id":"","load_more_type":"click","load_more_offset":{"unit":"px","size":0,"sizes":[]},"use_custom_post_types":"","custom_post_types":[],"hide_widget_if":"","carousel_enabled":"","slides_to_scroll":"1","arrows":"true","arrow_icon":"fa fa-angle-left","dots":"","autoplay":"true","autoplay_speed":5000,"infinite":"true","center_mode":"","effect":"slide","speed":500,"inject_alternative_items":"","injection_items":[{"_id":"7ef05a1","item":"883","item_num":6,"inject_once":"yes","item_colspan":"2"}],"scroll_slider_enabled":"","scroll_slider_on":["desktop","tablet","mobile"],"custom_query":false,"custom_query_id":"","_element_id":""}}'
                                        data-page="1" data-pages="2" data-listing-source="posts" data-listing-id="883"
                                        data-query-id="">
                                        @foreach ($list_post as $item_post)
                                            @php
                                                $title_post = $item_post->json_params->title->{$locale} ?? $item_post->title;
                                                $brief_post = $item_post->json_params->brief->{$locale} ?? $item_post->brief;
                                                $content_post = $item_post->json_params->content->{$locale} ?? $item_post->content;
                                                $image_post = $item_post->image_thumb != '' ? $item_post->image_thumb : ($item_post->image != '' ? $item_post->image : null);
                                                // $date = date('H:i d/m/Y', strtotime($item_post->created_at));
                                                $date = date('d', strtotime($item_post->created_at));
                                                $month = date('M', strtotime($item_post->created_at));
                                                $year = date('Y', strtotime($item_post->created_at));
                                                // Viet ham xu ly lay slug
                                                $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item_post->taxonomy_alias ?? $item_post->taxonomy_title, $item_post->taxonomy_id);
                                                $alias_post = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item_post->alias ?? $title, $item_post->id, 'detail', $item_post->taxonomy_title);
                                            @endphp
                                            <div class="jet-listing-grid__item jet-listing-dynamic-post-875"
                                                data-post-id="875">
                                                <div class="jet-engine-listing-overlay-wrap" data-url="{{ $alias_post }}">
                                                    <div data-elementor-type="jet-listing-items" data-elementor-id="883"
                                                        class="elementor elementor-883">
                                                        <div class="elementor-element elementor-element-f1331db e-con-full e-con"
                                                            data-id="f1331db" data-element_type="container"
                                                            data-settings='{"background_background":"classic","content_width":"full"}'>
                                                            <div class="elementor-element elementor-element-8174a2e elementor-widget elementor-widget-image"
                                                                data-id="8174a2e" data-element_type="widget"
                                                                data-widget_type="image.default">
                                                                <div class="elementor-widget-container">
                                                                    <img src="{{ $image_post }}"
                                                                        title="{{ $title_post }}"
                                                                        alt="{{ $title_post }}" loading="lazy" />
                                                                </div>
                                                            </div>
                                                            <div class="elementor-element elementor-element-83bd34a e-con-full e-con"
                                                                data-id="83bd34a" data-element_type="container"
                                                                data-settings='{"content_width":"full","background_background":"classic"}'>
                                                                <div class="elementor-element elementor-element-dd25944 elementor-widget elementor-widget-jet-listing-dynamic-field"
                                                                    data-id="dd25944" data-element_type="widget"
                                                                    data-widget_type="jet-listing-dynamic-field.default">
                                                                    <div class="elementor-widget-container">
                                                                        <div
                                                                            class="jet-listing jet-listing-dynamic-field display-inline">
                                                                            <div
                                                                                class="jet-listing-dynamic-field__inline-wrap">
                                                                                <h3
                                                                                    class="jet-listing-dynamic-field__content">
                                                                                    {{ $title_post }}
                                                                                </h3>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="elementor-element elementor-element-57ddac1 elementor-widget elementor-widget-jet-listing-dynamic-field"
                                                                    data-id="57ddac1" data-element_type="widget"
                                                                    data-widget_type="jet-listing-dynamic-field.default">
                                                                    <div class="elementor-widget-container">
                                                                        <div
                                                                            class="jet-listing jet-listing-dynamic-field display-inline">
                                                                            <div
                                                                                class="jet-listing-dynamic-field__inline-wrap">
                                                                                <p
                                                                                    class="jet-listing-dynamic-field__content">
                                                                                    {{ Str::limit($content_post, 100) }}
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="elementor-element elementor-element-4f726c6 elementor-widget elementor-widget-button"
                                                                    data-id="4f726c6" data-element_type="widget"
                                                                    data-widget_type="button.default">
                                                                    <div class="elementor-widget-container">
                                                                        <div class="elementor-button-wrapper">
                                                                            <a href="{{ $alias_post }}"
                                                                                class="elementor-button-link elementor-button elementor-size-sm"
                                                                                role="button">
                                                                                <span
                                                                                    class="elementor-button-content-wrapper">
                                                                                    <span
                                                                                        class="elementor-button-icon elementor-align-icon-right">
                                                                                        <i aria-hidden="true"
                                                                                            class="icon icon-right-arrow"></i>
                                                                                    </span>
                                                                                    <span
                                                                                        class="elementor-button-text">@lang('Read More')</span>
                                                                                </span>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        @endforeach

                                    </div>
                                </div>
                            </div>
                        </div>
                    @endif


                </div>
            </div>
        </div>
    </div>
    {{-- End content --}}
@endsection
