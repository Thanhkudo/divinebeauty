@if ($block)
    @php
        
        $title = $block->json_params->title->{$locale} ?? $block->title;
        $brief = $block->json_params->brief->{$locale} ?? $block->brief;
        $content = $block->json_params->content->{$locale} ?? $block->content;
        $image = $block->image != '' ? $block->image : '';
        $image_background = $block->image_background != '' ? $block->image_background : $web_information->image->background_breadcrumbs ?? '';
        $url_link = $block->url_link != '' ? $block->url_link : '';
        $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
        $image_for_screen = null;
        if ($agent->isDesktop() && $image_background != null) {
            $image_for_screen = $image_background;
        } else {
            $image_for_screen = $image;
        }
        // Filter all blocks by parent_id
        $block_childs = $blocks->filter(function ($item, $key) use ($block) {
            return $item->parent_id == $block->id;
        });
        
    @endphp


    <div class="elementor-element elementor-element-14b4c829 e-con-boxed e-con" data-id="14b4c829"
        data-element_type="container" data-settings='{"background_background":"classic","content_width":"boxed"}'>
        <div class="e-con-inner">
            <div class="elementor-element elementor-element-7dd8c451 e-con-full e-con" data-id="7dd8c451"
                data-element_type="container" data-settings='{"content_width":"full"}'>
                <div class="elementor-element elementor-element-242fa0a3 animated-slow elementor-invisible elementor-widget elementor-widget-heading"
                    data-id="242fa0a3" data-element_type="widget" data-settings='{"_animation":"fadeInLeft"}'
                    data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h5 class="elementor-heading-title elementor-size-default">
                            {{ $brief }}
                        </h5>
                    </div>
                </div>
                <div class="elementor-element elementor-element-3012322f elementor-widget elementor-widget-heading"
                    data-id="3012322f" data-element_type="widget" data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h2 class="elementor-heading-title elementor-size-default">
                            {{ $title }}
                        </h2>
                    </div>
                </div>
                <div class="elementor-element elementor-element-11159e70 elementor-widget elementor-widget-text-editor"
                    data-id="11159e70" data-element_type="widget" data-widget_type="text-editor.default">
                    <div class="elementor-widget-container">
                        <p>
                            {{ $content }}
                        </p>
                    </div>
                </div>
                @if ($block_childs)
                    @foreach ($block_childs as $item)
                        @php
                            $title_child = $item->json_params->title->{$locale} ?? $item->title;
                            $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
                            $content_child = $item->json_params->content->{$locale} ?? $item->content;
                            $image_child = $item->image != '' ? $item->image : null;
                            $backgruod_child = $item->image_background != '' ? $item->image_background : null;
                            $icon = $item->icon != '' ? $item->icon : '';
                            $style = $item->json_params->style ?? '';
                        @endphp
                        <div class="elementor-element elementor-element-5b75a584 jkit-equal-height-disable elementor-widget elementor-widget-jkit_icon_box"
                            data-id="5b75a584" data-element_type="widget" data-widget_type="jkit_icon_box.default">
                            <div class="elementor-widget-container">
                                <div
                                    class="jeg-elementor-kit jkit-icon-box icon-position-left elementor-animation- jeg_module_76__64c246e1737a1">
                                    <div class="jkit-icon-box-wrapper hover-from-left">
                                        <div class="icon-box icon-box-header elementor-animation-float">
                                            <div class="icon style-color">
                                                <i aria-hidden="true" class="{{ $icon ?? '' }}"></i>
                                            </div>
                                        </div>
                                        <div class="icon-box icon-box-body">
                                            <h3 class="title">
                                                {{ $title_child }}
                                            </h3>
                                            <p class="icon-box-description">
                                                {{ $brief_child }}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif





                <div class="elementor-element elementor-element-a634a4e elementor-widget__width-initial elementor-widget-tablet__width-initial elementor-widget-mobile__width-initial elementor-absolute elementor-hidden-phone ekit-equal-height-disable elementor-invisible elementor-widget elementor-widget-elementskit-icon-box"
                    data-id="a634a4e" data-element_type="widget"
                    data-settings='{"_animation":"rotateInUpLeft","_animation_delay":800,"_position":"absolute"}'
                    data-widget_type="elementskit-icon-box.default">
                    <div class="elementor-widget-container">
                        <div class="ekit-wid-con">
                            {{-- <div href="#" target="_self" rel="" class="ekit_global_links"> --}}
                                <div class="elementskit-infobox text-center text- icon-top-align elementor-animation-">
                                    <div class="elementskit-box-header">
                                        <div class="elementskit-info-box-icon">
                                            <img decoding="async" width="227" height="256"
                                                src="{{ $image }}" class="attachment- size-"
                                                alt="{{$title}}"
                                                loading="lazy"
                                                title="{{$title}}" />
                                        </div>
                                    </div>
                                    <div class="box-body"></div>
                                </div>
                            {{-- </div> --}}
                        </div>
                    </div>
                </div>
                <div class="elementor-element elementor-element-7c9e60c elementor-widget elementor-widget-button"
                    data-id="7c9e60c" data-element_type="widget" data-widget_type="button.default">
                    <div class="elementor-widget-container">
                        <div class="elementor-button-wrapper">
                            <a href="{{ $url_link }}"
                                class="elementor-button-link elementor-button elementor-size-sm" role="button">
                                <span class="elementor-button-content-wrapper">
                                    <span class="elementor-button-text">{{ $url_link_title }}</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="elementor-element elementor-element-2f55f230 e-con-full e-con" data-id="2f55f230"
                data-element_type="container" data-settings='{"content_width":"full"}'>
                @if ($block_childs)
                    @foreach ($block_childs as $item)
                        @php
                            $title_child = $item->json_params->title->{$locale} ?? $item->title;
                            $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
                            $content_child = $item->json_params->content->{$locale} ?? $item->content;
                            $image_child = $item->image != '' ? $item->image : null;
                            $backgruod_child = $item->image_background != '' ? $item->image_background : null;
                            $icon = $item->icon != '' ? $item->icon : '';
                            $style = $item->json_params->style ?? '';
                        @endphp

                        @if ($image_child != null)
                            <div class="elementor-element elementor-element-2aa4eab5 e-con-full e-con"
                                data-id="2aa4eab5" data-element_type="container"
                                data-settings='{"content_width":"full"}'>
                                <div class="elementor-element elementor-element-66290414 animated-slow e-con-full elementor-invisible e-con"
                                    data-id="66290414" data-element_type="container"
                                    data-settings='{"background_background":"classic","animation":"fadeInUp","content_width":"full"}'
                                    data-e-bg-lazyload=""
                                    style="background: url('{{ $backgruod_child }}');
                                    background-position: 38% 0%;
                                    background-repeat: no-repeat;
                                    background-size: cover;">
                                    <div class="elementor-element elementor-element-4bf7b677 elementor-widget elementor-widget-spacer"
                                        data-id="4bf7b677" data-element_type="widget" data-widget_type="spacer.default">
                                        <div class="elementor-widget-container">

                                            <div class="elementor-spacer">
                                                <div class="elementor-spacer-inner"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-122dd4be animated-slow e-con-full elementor-invisible e-con"
                                    data-id="122dd4be" data-element_type="container"
                                    data-settings='{"animation":"fadeInDown","content_width":"full"}'>
                                    <div class="elementor-element elementor-element-1c199305 elementor-widget elementor-widget-image"
                                        data-id="1c199305" data-element_type="widget"
                                        data-widget_type="image.default">
                                        <div class="elementor-widget-container">
                                            <img width="800" height="786" src="{{ $image_child }}"
                                                class="attachment-full size-full wp-image-589"
                                                alt="WhatsApp Image 2023 01 31 at 17.09.13 1 - Ariel Medical - Aesthetic Clinic | GREECE"
                                                decoding="async" loading="lazy" srcset="{{ $image_child }}"
                                                sizes="(max-width: 800px) 100vw, 800px"
                                                title="Homepage 3 - Ariel Medical - Aesthetic Clinic | GREECE" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @else
                            <div class="elementor-element elementor-element-3e5fab37 animated-slow e-con-full elementor-invisible e-con"
                                data-id="3e5fab37" data-element_type="container"
                                data-settings='{"animation":"fadeInRight","content_width":"full"}'>
                                <div class="elementor-element elementor-element-784b0f35 e-con-full e-con"
                                    data-id="784b0f35" data-element_type="container"
                                    data-settings='{"background_background":"classic","content_width":"full"}'
                                    data-e-bg-lazyload=""
                                    style="background: url('{{ $backgruod_child }}');
                                background-position: center center;
                                background-repeat: no-repeat;
                                background-size: cover;">
                                    <div class="elementor-element elementor-element-6b920bd9 elementor-widget elementor-widget-spacer"
                                        data-id="6b920bd9" data-element_type="widget"
                                        data-widget_type="spacer.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-spacer">
                                                <div class="elementor-spacer-inner"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endif
                    @endforeach
                @endif
            </div>
        </div>
    </div>
@endif
