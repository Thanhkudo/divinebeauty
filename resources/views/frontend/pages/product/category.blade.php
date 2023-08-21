@extends('frontend.layouts.default')

@php
    $page_title = $taxonomy->json_params->title->{$locale} ?? ($taxonomy->title ?? ($page->title ?? $page->name));
    $image_background = $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
    
    $title = $taxonomy->json_params->title->{$locale} ?? ($taxonomy->title ?? null);
    $brief = $taxonomy->json_params->brief->{$locale} ?? ($taxonomy->brief ?? null);
    $content = $taxonomy->json_params->content->{$locale} ?? ($taxonomy->content ?? null);
    $description = $taxonomy->json_params->description->{$locale} ?? ($taxonomy->description ?? null);
    $description = $taxonomy->json_params->description->{$locale} ?? ($taxonomy->description ?? null);
    $image = $taxonomy->json_params->image ?? null;
    $seo_title = $taxonomy->json_params->seo_title ?? $title;
    $seo_keyword = $taxonomy->json_params->seo_keyword ?? null;
    $seo_description = $taxonomy->json_params->seo_description ?? null;
    $seo_image = $image ?? null;
    
    if (isset($list_taxonomy)) {
        $taxonomy_parent = $list_taxonomy->first(function ($item, $key) use ($taxonomy) {
            return $item->id == $taxonomy->parent_id;
        });
        if (isset($taxonomy_parent)) {
            $page_title_parent = $taxonomy_parent->json_params->title->{$locale} ?? ($taxonomy_parent->title ?? null);
            $brief_parent = $taxonomy_parent->json_params->brief->{$locale} ?? ($taxonomy_parent->brief ?? null);
            $content_parent = $taxonomy_parent->json_params->content->{$locale} ?? ($taxonomy_parent->content ?? null);
            $description_parent = $taxonomy_parent->json_params->title->{$locale} ?? ($taxonomy_parent->title ?? null);
            $image_background = $taxonomy_parent->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
            $image = $taxonomy->json_params->image_background ?? ($taxonomy->json_params->image ?? '');
        }
    }
    if ($posts) {
        $list_post = $posts->filter(function ($item, $key) use ($taxonomy) {
            return $item->taxonomy_id == $taxonomy->id;
        });
    }
    $taxonomy_child = $list_taxonomy->filter(function ($item, $key) use ($taxonomy) {
        return $item->id != $taxonomy->id && $item->parent_id == $taxonomy->parent_id;
    });
@endphp

@push('style')
    <style>
        .elementor-field-group.elementor-field-type-submit {
            margin-top: 30px
        }

        .elementor-76 .elementor-element.elementor-element-1053a240,
        .elementor-76 .elementor-element.elementor-element-1c68afca {

            --margin-top: -50px;
        }

        .elementor-76 .elementor-element.elementor-element-1c68afca {
            box-shadow: unset;
            --margin-right: 20px;
            --margin-bottom: 0px;
            --margin-left: 10px;
            --padding-top: 120px;
            --padding-right: 60px;
            --padding-bottom: 60px;
            --padding-left: 10px;
        }

        .elementor-76 .elementor-element.elementor-element-1053a240:not(.elementor-motion-effects-element-type-background) {
            padding: 0px;
            overflow: hidden;
            background: transparent;
            box-shadow: unset;
        }

        .elementor-76 .elementor-element.elementor-element-1c68afca:not(.elementor-motion-effects-element-type-background) {
            background: transparent;

        }

        @media(min-width: 768px) {

            .elementor-76 .elementor-element.elementor-element-1053a240,
            .elementor-76 .elementor-element.elementor-element-1c68afca {
                --width: 50%;
            }
        }

       

        .elementor-883 .elementor-element.elementor-element-8174a2e img {
            width: 100%;
            height: 307px;
            object-fit: cover;
            border-radius: 10px 10px 10px 10px;
        }

        .title_taxonomy {
            color: #555;
            font-family: Marcellus;
            font-size: 10px;
            letter-spacing: 2px;
            text-transform: uppercase;
        }


    
        .elementor_taxonomy .elementor-883 .elementor-element.elementor-element-8174a2e img {
            width: 100%;
            height: auto;
            object-fit: cover;
            border-radius: 10px 10px 10px 10px;
        }

        .elementor_taxonomy .elementor-76 .elementor-element.elementor-element-1c68afca:not(.elementor-motion-effects-element-type-background) {
            width: 100%;
            padding: 0px;
            background: transparent;
            box-shadow: unset;
        }

        .elementor_taxonomy .elementor-883 .elementor-element.elementor-element-dd25944 .jet-listing-dynamic-field {
            justify-content: center;
        }

        .elementor_taxonomy .elementor-883 .elementor-element.elementor-element-dd25944 .jet-listing-dynamic-field .jet-listing-dynamic-field__content {
            margin: 0px;
            padding: 0px
        }

        .elementor_taxonomy .elementor-883 .elementor-element.elementor-element-83bd34a {
            padding: 20px;
            --margin-top: -11%;
            --margin-bottom: 40px;
        }

        .elementor_taxonomy .elementor-883 .elementor-element.elementor-element-dd25944>.elementor-widget-container {
            margin: 0;
        }

        .jet-listing-grid__items>.jet-listing-grid__item {
            padding: 0px 24px;
        }

        .e-con-inner.pt-3 {
            padding-top: 44px
        }

        hr.line_taxonomi {
            width: 1px;
            height: 67px;
            background: #D6D6D6;
            margin: auto;
            border: none;
        }

        .m-auto {
            margin: auto
        }

        .mb-6 {
            margin-bottom: 63px
        }

        .w-100 {
            width: 100%;
        }

        .elementor-size-lg {
            width: 80%;
            max-width: 368px;

        }
        .page-content a.link_title{
            text-decoration: none;
            color: #000;
        }
        .page-content a.link_title:hover{
           
            color: var(--e-global-color-accent );
        }
    </style>
@endpush
@section('content')
    <div data-elementor-type="archive" data-elementor-id="278" class="elementor elementor-278 elementor-location-archive">
        <div class="elementor-element elementor-element-365968f e-con-boxed e-con" data-id="365968f"
            data-element_type="container"
            data-settings='{"background_background":"classic","background_motion_fx_motion_fx_scrolling":"yes","background_motion_fx_translateY_effect":"yes","background_motion_fx_translateY_speed":{"unit":"px","size":10,"sizes":[]},"content_width":"boxed","background_motion_fx_translateY_affectedRange":{"unit":"%","size":"","sizes":{"start":0,"end":100}},"background_motion_fx_devices":["desktop","tablet","mobile"]}'
            data-e-bg-lazyload=""
            style="background: url('{{ $image_background }}');
            background-position: bottom center;
            background-repeat: no-repeat;
            background-size: cover;">
            <div class="e-con-inner elementor-98">
                <div class="elementor-element elementor-element-20cd20d animated-slow elementor-invisible elementor-widget elementor-widget-heading"
                    data-id="20cd20d" data-element_type="widget"
                    data-settings="{&quot;_animation&quot;:&quot;fadeInLeft&quot;}" data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <div class="elementor-heading-title elementor-size-default">
                            {{ $description_parent ?? $description }}</div>
                    </div>
                </div>
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
                            {{ $content_parent ?? $content }}
                        </h4>
                    </div>
                </div>
            </div>
        </div>

        <div class="elementor-element elementor-element-20fd6022 animated-slow e-con-boxed elementor-invisible e-con"
            data-id="20fd6022" data-element_type="container"
            data-settings='{"animation":"fadeInUp","content_width":"boxed"}'>
            <div class="e-con-inner">
                <div class="elementor-element elementor-element-1c68afca e-con-full e-con" data-id="1c68afca"
                    data-element_type="container" data-settings='{"background_background":"classic","content_width":"full"}'
                    data-e-bg-lazyload="">
                    <div class="elementor-element  e-con-full e-con" data-id="2eb5d8a5" data-element_type="container"
                        data-settings='{"content_width":"full"}'>
                        <div class="elementor-element elementor-element-1d858db7 elementor-widget elementor-widget-heading"
                            data-id="1d858db7" data-element_type="widget" data-widget_type="heading.default">
                            <div class="elementor-widget-container">
                                <h3 class="elementor-heading-title elementor-size-default">
                                    {{ $brief }}
                                </h3>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-1c4eacf9 elementor-widget elementor-widget-text-editor"
                            data-id="1c4eacf9" data-element_type="widget" data-widget_type="text-editor.default">
                            <div class="elementor-widget-container">

                                <p>
                                    {!! $content !!}
                                </p>
                            </div>
                        </div>
                        @if (isset($list_post) && count($list_post) > 0 )
                        <div
                            class="elementor-field-group elementor-column elementor-field-type-submit elementor-col-100 e-form__buttons">
                            <a href="#list-post"><button type="submit" class="elementor-button elementor-size-md">
                                    <span>
                                        <span class="elementor-align-icon-left elementor-button-icon">
                                            <i aria-hidden="true" class="mdi mdi-message-text-outline"></i>
                                        </span>
                                        <span class="elementor-button-text">@lang('View All Product')</span>
                                    </span>
                                </button>
                            </a>
                        </div>
                        @endif
                    </div>
                </div>

                <div class="elementor-element elementor-element-1053a240 e-con-full e-con" data-id="1053a240"
                    data-element_type="container"
                    data-settings='{"background_background":"classic","content_width":"full"}'>
                    <div class="elementor-element elementor-element-22b236f0 elementor-view-default elementor-vertical-align-top elementor-widget elementor-widget-icon-box"
                        data-id="22b236f0" data-element_type="widget" data-widget_type="icon-box.default">
                        <div class="elementor-widget-container">
                            <div class="elementor-icon-box-wrapper">
                                <div class="elementor-icon-box-content">
                                    <img src="{{ $image }}" title="{{ $title }}" alt="{{ $image }}"
                                        loading="lazy" />
                                </div>
                            </div>
                        </div>
                    </div>

                </div>


            </div>
        </div>

        @if (isset($list_post) && count($list_post) > 0 )
            <div class="elementor-element elementor-element-a4b0e69 e-con-boxed e-con" data-id="a4b0e69" id="list-post"
                data-element_type="container" data-settings='{"content_width":"boxed"}'>
                <div class="e-con-inner">
                    <div class="elementor-element elementor-element-4b1bd98 e-con-full e-con" data-id="4b1bd98"
                        data-element_type="container" data-settings='{"content_width":"full"}'>
                        <div class="elementor-element elementor-element-b53d988 elementor-widget elementor-widget-heading"
                            data-id="b53d988" data-element_type="widget" data-widget_type="heading.default">
                            <div class="elementor-widget-container elementor-kit-12">
                                <h2 class="elementor-heading-titl elementor-size-default">
                                    @lang('All') {{ $brief }}
                                </h2>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-71e83f elementor-widget elementor-widget-jet-listing-grid"
                            data-id="71e83f5" data-element_type="widget"
                            data-settings='{"columns":"2","columns_mobile":"1"}'
                            data-widget_type="jet-listing-grid.default">
                            <div class="elementor-widget-container">
                                <div class="jet-listing-grid jet-listing">
                                    <div class="jet-listing-grid__items grid-col-desk-4 grid-col-tablet-2 grid-col-mobile-1 jet-listing-grid--883"
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
                                                <div class="jet-engine-listing-overlay-wrap"
                                                    data-url="{{ $alias_post }}">
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
                                                            <div class="elementor-element elementor-element-83bd34 e-con-full e-con"
                                                                data-id="83bd34a" data-element_type="container"
                                                                data-settings='{"content_width":"full","background_background":"classic"}'>
                                                                <div class="elementor-element elementor-element-dd25944 elementor-widget elementor-widget-jet-listing-dynamic-field"
                                                                    data-id="dd25944" data-element_type="widget"
                                                                    data-widget_type="jet-listing-dynamic-field.default">
                                                                    <div class="elementor-widget-container">
                                                                        <div class="title_taxonomy">
                                                                            {{ $item_post->taxonomy_title }}</div>
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
                                                                                    {!! Str::limit($brief_post, 50) !!}
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <a href="{{ $alias_post }}"
                                                        class="jet-engine-listing-overlay-link"></a>
                                                </div>
                                            </div>
                                        @endforeach

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                {{-- <div
                    class="elementor-field-group elementor-column elementor-field-type-submit elementor-col-100 e-form__buttons mb-6">
                    <a href="#load-more" class=" m-auto elementor-size-lg"><button type="submit"
                            class="elementor-button elementor-size-lg">
                            <span>
                                <span class="elementor-align-icon-left elementor-button-icon">
                                    <i aria-hidden="true" class="mdi mdi-message-text-outline"></i>
                                </span>
                                <span class="elementor-button-text">@lang('Load more')</span>
                            </span>
                        </button>
                    </a>
                </div> --}}
            </div>
        @endif


        @if ($taxonomy_child)
            <hr class="line_taxonomi">
            <div class="elementor-element elementor-element-a4b0e69 e-con-boxed e-con" data-id="a4b0e69"
                data-element_type="container" data-settings='{"content_width":"boxed"}'>
                <div class="e-con-inner pt-3">
                    <div class="elementor-element elementor-element-4b1bd98 e-con-full e-con" data-id="4b1bd98"
                        data-element_type="container" data-settings='{"content_width":"full"}'>
                        <div class="elementor-element elementor-element-b53d988 elementor-widget elementor-widget-heading"
                            data-id="b53d988" data-element_type="widget" data-widget_type="heading.default">
                            <div class="elementor-widget-container elementor-kit-12">
                                <h2 class="elementor-heading-titl elementor-size-default" id="load-more">
                                    @lang('Let’s See Other') {{ $page_title_parent }}
                                </h2>
                            </div>
                        </div>
                        <div class="elementor_taxonomy elementor-element elementor-element-71e83f51 elementor-widget elementor-widget-jet-listing-grid"
                            data-id="71e83f51" data-element_type="widget"
                            data-settings='{"columns":"2","columns_mobile":"1"}'
                            data-widget_type="jet-listing-grid.default">
                            <div class="elementor-widget-container">
                                <div class="jet-listing-grid jet-listing">
                                    <div class="jet-listing-grid__items grid-col-desk-3 grid-col-tablet-2 grid-col-mobile-1 jet-listing-grid--883"
                                        data-nav='{"enabled":false,"type":null,"more_el":null,"query":[],"widget_settings":{"lisitng_id":883,"posts_num":4,"columns":2,"columns_tablet":2,"columns_mobile":1,"is_archive_template":"","post_status":["publish"],"use_random_posts_num":"","max_posts_num":9,"not_found_message":"No data was found","is_masonry":false,"equal_columns_height":"","use_load_more":"","load_more_id":"","load_more_type":"click","load_more_offset":{"unit":"px","size":0,"sizes":[]},"use_custom_post_types":"","custom_post_types":[],"hide_widget_if":"","carousel_enabled":"","slides_to_scroll":"1","arrows":"true","arrow_icon":"fa fa-angle-left","dots":"","autoplay":"true","autoplay_speed":5000,"infinite":"true","center_mode":"","effect":"slide","speed":500,"inject_alternative_items":"","injection_items":[{"_id":"7ef05a1","item":"883","item_num":6,"inject_once":"yes","item_colspan":"2"}],"scroll_slider_enabled":"","scroll_slider_on":["desktop","tablet","mobile"],"custom_query":false,"custom_query_id":"","_element_id":""}}'
                                        data-page="1" data-pages="2" data-listing-source="posts" data-listing-id="883"
                                        data-query-id="">
                                        @foreach ($taxonomy_child as $items)
                                            @php
                                                $title_child = $items->json_params->title->{$locale} ?? $items->title;
                                                $brief_child = $items->json_params->brief->{$locale} ?? $items->brief;
                                                $content_child = $items->json_params->content->{$locale} ?? $items->content;
                                                $image_child = $items->json_params->image != '' ? $items->json_params->image : null;
                                                // Viet ham xu ly lay slug
                                                $alias_child = $items->alias ?? '';
                                            @endphp
                                            <div class="jet-listing-grid__item jet-listing-dynamic-post-875"
                                                data-post-id="875">
                                                <div class="jet-engine-listing-overlay-wrap"
                                                    data-url="{{ $alias_child }}">
                                                    <div data-elementor-type="jet-listing-items" data-elementor-id="883"
                                                        class="elementor elementor-883">
                                                        <div class="elementor-element elementor-element-f1331db e-con-full e-con"
                                                            data-id="f1331db" data-element_type="container"
                                                            data-settings='{"background_background":"classic","content_width":"full"}'>
                                                            <a href="{{ $alias_child }}">
                                                                <div class="elementor-element elementor-element-8174a2e elementor-widget elementor-widget-image"
                                                                    data-id="8174a2e" data-element_type="widget"
                                                                    data-widget_type="image.default">
                                                                    <div class="elementor-widget-container">
                                                                        <img src="{{ $image_child }}"
                                                                            title="{{ $title_child }}"
                                                                            alt="{{ $title_child }}" loading="lazy" />
                                                                    </div>
                                                                </div>
                                                            </a>
                                                            <div class="elementor-element elementor-element-83bd34a e-con-full e-con"
                                                                data-id="83bd34a" data-element_type="container"
                                                                data-settings='{"content_width":"full","background_background":"classic"}'>
                                                                <div class="elementor-element elementor-element-dd25944 elementor-widget elementor-widget-jet-listing-dynamic-field"
                                                                    data-id="dd25944" data-element_type="widget"
                                                                    data-widget_type="jet-listing-dynamic-field.default">
                                                                    <a href="{{ $alias_child }}" class="link_title">
                                                                    <div class="elementor-widget-container">
                                                                        <div
                                                                            class="jet-listing jet-listing-dynamic-field display-inline">
                                                                            <div
                                                                                class="jet-listing-dynamic-field__inline-wrap">
                                                                                <h3
                                                                                    class="jet-listing-dynamic-field__content">
                                                                                    {{ $title_child }}
                                                                                </h3>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    </a>
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </div>
                                                    <a href="{{ $alias_child }}"
                                                        class="jet-engine-listing-overlay-link"></a>
                                                </div>
                                            </div>
                                        @endforeach

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif
    </div>

    {{-- End content --}}
@endsection
