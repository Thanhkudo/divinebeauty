@if ($block)
    @php
        
        $title = $block->json_params->title->{$locale} ?? $block->title;
        $brief = $block->json_params->brief->{$locale} ?? $block->brief;
        $content = $block->json_params->content->{$locale} ?? $block->content;
        $image = $block->image != '' ? $block->image : null;
        $image_background = $block->image_background != '' ? $block->image_background : null;
        $url_link = $block->url_link != '' ? $block->url_link : '';
        $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
        // Filter all blocks by parent_id
        $block_childs = $blocks->filter(function ($item, $key) use ($block) {
            return $item->parent_id == $block->id;
        });
    @endphp

    <div class="elementor-98">
        <div class="elementor-element elementor-element-f54a222 e-con-boxed e-con" data-id="f54a222"
            data-element_type="container"
            data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;content_width&quot;:&quot;boxed&quot;}">
            <div class="e-con-inner">
                <div class="elementor-element elementor-element-788abe9 e-con-full e-con" data-id="788abe9"
                    data-element_type="container" data-settings="{&quot;content_width&quot;:&quot;full&quot;}">


                    @if ($block_childs)
                        @foreach ($block_childs as $items)
                            @php
                                $title_child = $items->json_params->title->{$locale} ?? $items->title;
                                $brief_child = $items->json_params->brief->{$locale} ?? $items->brief;
                                $content_child = $items->json_params->content->{$locale} ?? $items->content;
                                $image_child = $items->image != '' ? $items->image : null;
                                $image_background_child = $items->image_background != '' ? $items->image_background : null;
                                $url_link_child = $items->url_link != '' ? $items->url_link : 'javascript:void(0)';
                                $url_link_title_child = $items->json_params->url_link_title->{$locale} ?? $items->url_link_title;
                                $icon_child = $items->icon != '' ? $items->icon : '';
                                $style_child = $items->json_params->style ?? '';
                                $block_childs2 = $blocks->filter(function ($item, $key) use ($items) {
                                    return $item->parent_id == $items->id;
                                });
                            @endphp

                            @if ($block_childs2)
                                @foreach ($block_childs2 as $item)
                                    @php
                                        $title_child2 = $item->json_params->title->{$locale} ?? $item->title;
                                        $brief_child2 = $item->json_params->brief->{$locale} ?? $item->brief;
                                        $content_child2 = $item->json_params->content->{$locale} ?? $item->content;
                                        $image_child2 = $item->image != '' ? $item->image : null;
                                        $image_background_child2 = $item->image_background != '' ? $item->image_background : null;
                                    @endphp
                                    @if ($loop->index % 2 == 0)
                                        <div class="elementor-element elementor-element-5aa99c5 e-con-full e-con"
                                            data-id="5aa99c5" data-element_type="container"
                                            data-settings="{&quot;content_width&quot;:&quot;full&quot;}">
                                            <div class="elementor-element elementor-element-fa19cb8 elementor-widget elementor-widget-image"
                                                data-id="fa19cb8" data-element_type="widget"
                                                data-widget_type="image.default">
                                                <div class="elementor-widget-container">
                                                    <img width="1140" height="760" src="{{ $image_child2 }}"
                                                        class="attachment-full size-full wp-image-1405"
                                                        alt="4V7A7453 - Ariel Medical - Aesthetic Clinic | GREECE"
                                                        decoding="async" loading="lazy" srcset="{{ $image_child2 }}"
                                                        sizes="(max-width: 1140px) 100vw, 1140px"
                                                        title="{{ $title_child2 }}">
                                                </div>
                                            </div>
                                        </div>
                                    @else
                                        <div class="elementor-element elementor-element-d5ba2de e-con-full e-con"
                                            data-id="d5ba2de" data-element_type="container"
                                            data-settings="{&quot;content_width&quot;:&quot;full&quot;}">
                                            <div class="elementor-element elementor-element-a0eaca4 elementor-widget__width-inherit elementor-widget elementor-widget-image"
                                                data-id="a0eaca4" data-element_type="widget"
                                                data-widget_type="image.default">
                                                <div class="elementor-widget-container">
                                                    <img width="1140" height="760"
                                                        src="{{ $image_child2 }}"
                                                        class="attachment-full size-full wp-image-1396"
                                                        alt="4V7A7586 - Ariel Medical - Aesthetic Clinic | GREECE"
                                                        decoding="async" loading="lazy"
                                                        srcset="{{ $image_child2 }}"
                                                        sizes="(max-width: 1140px) 100vw, 1140px"
                                                        title="{{ $title_child2 }}">
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                @endforeach
                            @endif
                            @if ($image_background_child != null)
                                <div class="elementor-element elementor-element-2aeec9b animated-slow e-con-full elementor-invisible e-con"
                                    data-id="2aeec9b" data-element_type="container"
                                    data-settings="{&quot;animation&quot;:&quot;fadeInLeft&quot;,&quot;content_width&quot;:&quot;full&quot;}">
                                    <div class="elementor-element elementor-element-ce60683 e-con-full e-con"
                                        data-id="ce60683" data-element_type="container"
                                        data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;content_width&quot;:&quot;full&quot;}"
                                        data-e-bg-lazyload=""
                                        style="
                                        background: url('{{ $image_background_child }}');
                                        background-position: center center;
                                        background-repeat: no-repeat;
                                        background-size: cover;
                                      ">
                                        <div class="elementor-element elementor-element-0ac1e3d elementor-widget elementor-widget-spacer"
                                            data-id="0ac1e3d" data-element_type="widget"
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
                <div class="elementor-element elementor-element-bb8535d e-con-full e-con" data-id="bb8535d"
                    data-element_type="container" data-settings="{&quot;content_width&quot;:&quot;full&quot;}">
                    <div class="elementor-element elementor-element-20cd20d animated-slow elementor-invisible elementor-widget elementor-widget-heading"
                        data-id="20cd20d" data-element_type="widget"
                        data-settings="{&quot;_animation&quot;:&quot;fadeInLeft&quot;}"
                        data-widget_type="heading.default">
                        <div class="elementor-widget-container">
                            <h5 class="elementor-heading-title elementor-size-default">{{ $brief }}</h5>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-559fd79 elementor-widget elementor-widget-heading"
                        data-id="559fd79" data-element_type="widget" data-widget_type="heading.default">
                        <div class="elementor-widget-container">
                            <h2 class="elementor-heading-title elementor-size-default">{{ $title }}</h2>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-efa4573 elementor-widget elementor-widget-text-editor"
                        data-id="efa4573" data-element_type="widget" data-widget_type="text-editor.default">
                        <div class="elementor-widget-container">
                           
                            {!! $content !!}
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-3bc1f4b elementor-widget__width-initial elementor-widget-tablet__width-initial elementor-widget-mobile__width-initial elementor-absolute elementor-hidden-phone ekit-equal-height-disable elementor-invisible elementor-widget elementor-widget-elementskit-icon-box"
                        data-id="3bc1f4b" data-element_type="widget"
                        data-settings="{&quot;_animation&quot;:&quot;rotateInUpLeft&quot;,&quot;_animation_delay&quot;:800,&quot;_position&quot;:&quot;absolute&quot;}"
                        data-widget_type="elementskit-icon-box.default">
                        <div class="elementor-widget-container">
                            <div class="ekit-wid-con">

                                    <div
                                        class="elementskit-infobox text-center text- icon-top-align elementor-animation-   ">
                                        <div class="elementskit-box-header">
                                            <div class="elementskit-info-box-icon ">
                                                <img decoding="async" width="227" height="256"
                                                    src="{{ $image_background }}" class="attachment- size-"
                                                    alt={{ $title }}"
                                                    loading="lazy" title="{{ $title }}">
                                            </div>
                                        </div>
                                        <div class="box-body">
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-0add025 elementor-widget elementor-widget-button"
                        data-id="0add025" data-element_type="widget" data-widget_type="button.default">
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
            </div>
        </div>
    </div>
@endif
