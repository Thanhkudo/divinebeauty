@extends('frontend.layouts.default')

@php
    $page_title = $taxonomy->json_params->title->{$locale} ?? ($taxonomy->title ?? ($page->title ?? $page->name));
    $image_background = $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
    
    $title = $taxonomy->json_params->title->{$locale} ?? ($taxonomy->title ?? null);
    $brief = $taxonomy->json_params->brief->{$locale} ?? ($taxonomy->brief ?? null);
    $description = $taxonomy->json_params->description->{$locale} ?? ($taxonomy->description ?? null);
    $content = $taxonomy->json_params->content->{$locale} ?? ($taxonomy->content ?? null);
    $image = $taxonomy->json_params->image ?? null;
    $seo_title = $taxonomy->json_params->seo_title ?? $title;
    $seo_keyword = $taxonomy->json_params->seo_keyword ?? null;
    $seo_description = $taxonomy->json_params->seo_description ?? null;
    $seo_image = $image ?? null;
    
    $arr_id_taxonomy = explode(',', $taxonomy->sub_taxonomy_id);
    if ($list_taxonomy) {
        $taxonomy_child = $list_taxonomy->filter(function ($item, $key) use ($arr_id_taxonomy) {
            return in_array($item->id, $arr_id_taxonomy);
        });
    }
@endphp

@push('style')
    <style>
        .elementor-76 .elementor-element.elementor-element-1c68afca:not(.elementor-motion-effects-element-type-background) {
            width: 100%;
            padding: 0px;
            background: transparent;
            box-shadow: unset;
        }

        .elementor-883 .elementor-element.elementor-element-dd25944 .jet-listing-dynamic-field {
            justify-content: center;
        }

        .elementor-883 .elementor-element.elementor-element-dd25944 .jet-listing-dynamic-field .jet-listing-dynamic-field__content {
            margin: 0px;
            padding: 0px
        }

        .elementor-883 .elementor-element.elementor-element-83bd34a {
            padding: 20px;
            --margin-top: -10%;
            --margin-bottom: 40px;
        }

        .elementor-883 .elementor-element.elementor-element-dd25944>.elementor-widget-container {
            margin: 0;
        }

        .elementor-883 .elementor-element.elementor-element-dd25944 .jet-listing-dynamic-field .jet-listing-dynamic-field__content {
            text-transform: uppercase;
            font-size: 18px
        }

        .elementor-278 .elementor-element.elementor-element-b53d988 .elementor-heading-title {
            font-size: 40px;
            font-weight: 400;
        }

        .elementor-278 .elementor-element.elementor-element-8e62a90 .elementor-text-editor {
            font-size: 22px;
        }

        .elementor-883 .elementor-element.elementor-element-8174a2e img {
            height: auto;
        }

        .page-content a.link_title {
            text-decoration: none;
            color: #000;
        }

        .page-content a.link_title:hover {

            color: var(--e-global-color-accent);
        }
       .elementor.elementor .e-con>.elementor-widget.elementor-element-400602d3{
        width: 100%;
       }
        .elementor-element-400602d3 img {
            border-radius: 10px;
            height: 400px;
            width: 100%;
            object-fit: cover;
        }

        @media (max-width: 767px) {
            .elementor-76 .elementor-element.elementor-element-1c68afca {
                margin-top: 20px;
            }
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
                        <div class="elementor-heading-title elementor-size-default">{{ $description }}</div>
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
                            {{ $brief }}
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
                    data-e-bg-lazyload="" style="width: 100%;">

                    <div class="elementor-element elementor-element-400602d3 elementor-icon-list--layout-traditional elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list"
                        data-id="400602d3" data-element_type="widget" data-widget_type="icon-list.default">
                        <div class="elementor-widget-container">
                            <img src="{{ $image }}" alt="{{ $page_title }}">

                        </div>
                    </div>

                </div>

            </div>
        </div>



        <div class="elementor-element elementor-element-a4b0e69 e-con-boxed e-con" data-id="a4b0e69"
            data-element_type="container" data-settings='{"content_width":"boxed"}'>
            <div class="e-con-inner">
                <div class="elementor-element elementor-element-4b1bd98 e-con-full e-con" data-id="4b1bd98"
                    data-element_type="container" data-settings='{"content_width":"full"}'>
                    @if ($taxonomy_child)

                        <div class="elementor-element elementor-element-b53d988 elementor-widget elementor-widget-heading"
                            data-id="b53d988" data-element_type="widget" data-widget_type="heading.default">
                            <div class="elementor-widget-container">
                                <h2 class="elementor-heading-title elementor-size-default">
                                    @lang('All') {{ $page_title }}
                                </h2>
                            </div>
                        </div>

                        <div class="elementor-element elementor-element-8e62a90 elementor-widget elementor-widget-jet-unfold"
                            data-id="8e62a90" data-element_type="widget"
                            data-settings='{"mask_height":{"unit":"px","size":120,"sizes":[]},"mask_height_tablet":{"unit":"px","size":"","sizes":[]},"mask_height_mobile":{"unit":"px","size":"","sizes":[]},"unfold_duration":{"unit":"ms","size":500,"sizes":[]},"unfold_easing":"easeOutBack","fold_duration":{"unit":"ms","size":300,"sizes":[]},"fold_easing":"easeOutSine"}'
                            data-widget_type="jet-unfold.default">
                            <div class="elementor-widget-container">
                                <div class="jet-unfold"
                                    data-settings='{"height":{"unit":"px","size":120,"sizes":[]},"separatorHeight":{"unit":"px","size":90,"sizes":[]},"unfoldDuration":{"unit":"ms","size":500,"sizes":[]},"foldDuration":{"unit":"ms","size":300,"sizes":[]},"unfoldEasing":"easeOutBack","foldEasing":"easeOutSine","foldScrolling":"false","hideOutsideClick":"false","autoHide":"false","autoHideTime":""}'>
                                    <div class="jet-unfold__inner">
                                        <div class="jet-unfold__mask">
                                            <div class="jet-unfold__content">
                                                <div
                                                    class="jet-unfold__content-inner elementor-text-editor elementor-clearfix">
                                                    {{ $content }}
                                                </div>
                                            </div>
                                            <div class="jet-unfold__separator"></div>
                                        </div>
                                        <div class="jet-unfold__trigger">
                                            <div class="jet-unfold__button elementor-button elementor-size-md"
                                                href="#" data-unfold-text="Read More"
                                                data-fold-text="{{ __('Hide') }}"
                                                data-fold-icon='&lt;i aria-hidden="true" class="fas fa-chevron-up"&gt;&lt;/i&gt;'
                                                data-unfold-icon='&lt;i aria-hidden="true" class="fas fa-chevron-down"&gt;&lt;/i&gt;'
                                                tabindex="0" role="button">
                                                <span class="jet-unfold__button-icon jet-tricks-icon"><i aria-hidden="true"
                                                        class="fas fa-chevron-down"></i></span><span
                                                    class="jet-unfold__button-text">@lang('Read More')</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        @if ($taxonomy_child)
                            <div class="elementor-element elementor-element-71e83f5 elementor-widget elementor-widget-jet-listing-grid"
                                data-id="71e83f5" data-element_type="widget"
                                data-settings='{"columns":"2","columns_mobile":"1"}'
                                data-widget_type="jet-listing-grid.default">
                                <div class="elementor-widget-container">
                                    <div class="jet-listing-grid jet-listing">
                                        <div class="jet-listing-grid__items grid-col-desk-4 grid-col-tablet-4 grid-col-mobile-1 jet-listing-grid--883"
                                            data-nav='{"enabled":false,"type":null,"more_el":null,"query":[],"widget_settings":{"lisitng_id":883,"posts_num":4,"columns":2,"columns_tablet":2,"columns_mobile":1,"is_archive_template":"","post_status":["publish"],"use_random_posts_num":"","max_posts_num":9,"not_found_message":"No data was found","is_masonry":false,"equal_columns_height":"","use_load_more":"","load_more_id":"","load_more_type":"click","load_more_offset":{"unit":"px","size":0,"sizes":[]},"use_custom_post_types":"","custom_post_types":[],"hide_widget_if":"","carousel_enabled":"","slides_to_scroll":"1","arrows":"true","arrow_icon":"fa fa-angle-left","dots":"","autoplay":"true","autoplay_speed":5000,"infinite":"true","center_mode":"","effect":"slide","speed":500,"inject_alternative_items":"","injection_items":[{"_id":"7ef05a1","item":"883","item_num":6,"inject_once":"yes","item_colspan":"2"}],"scroll_slider_enabled":"","scroll_slider_on":["desktop","tablet","mobile"],"custom_query":false,"custom_query_id":"","_element_id":""}}'
                                            data-page="1" data-pages="2" data-listing-source="posts"
                                            data-listing-id="883" data-query-id="">
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
                                                        <div data-elementor-type="jet-listing-items"
                                                            data-elementor-id="883" class="elementor elementor-883">

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
                                                                                alt="{{ $title_child }}"
                                                                                loading="lazy" />
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
                        @endif
                    @endif
                </div>
            </div>
        </div>
    </div>

    {{-- End content --}}
@endsection
