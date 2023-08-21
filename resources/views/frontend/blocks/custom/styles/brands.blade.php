@if ($block)
    @php
        $title = $block->json_params->title->{$locale} ?? $block->title;
        $brief = $block->json_params->brief->{$locale} ?? $block->brief;
        $content = $block->json_params->content->{$locale} ?? $block->content;
        $image = $block->image != '' ? $block->image : '';
        $image_background = $block->image_background != '' ? $block->image_background : '';
        $url_link = $block->url_link != '' ? $block->url_link : '';
        $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
        $style = isset($block->json_params->style) && $block->json_params->style == 'slider-caption-right' ? 'd-none' : '';
        
        // Filter all blocks by parent_id
        $block_childs = $blocks->filter(function ($item, $key) use ($block) {
            return $item->parent_id == $block->id;
        });
    @endphp


    <div data-elementor-type="single-post" data-elementor-id="274"
        class="elementor elementor-274 elementor-location-single post-871 treatments type-treatments status-publish has-post-thumbnail hentry treatment-categories-face">
        <div class="elementor-element elementor-element-98693de e-con-boxed e-con" data-id="98693de"
            data-element_type="container" data-settings="{&quot;content_width&quot;:&quot;boxed&quot;}">
            <div class="e-con-inner">
                <div class="elementor-element elementor-element-fa5e2de elementor-widget elementor-widget-jkit_client_logo"
                    data-id="fa5e2de" data-element_type="widget" data-widget_type="jkit_client_logo.default">
                    <div class="elementor-widget-container">
                        <div class="jeg-elementor-kit jkit-client-logo arrow-bottom-middle jeg_module_871__64c246fd5e03d"
                            data-id="jeg_module_871__64c246fd5e03d"
                            data-settings="{&quot;autoplay&quot;:true,&quot;autoplay_speed&quot;:2500,&quot;autoplay_hover_pause&quot;:false,&quot;show_navigation&quot;:false,&quot;navigation_left&quot;:&quot;&lt;i aria-hidden=\&quot;true\&quot; class=\&quot;fas fa-angle-left\&quot;&gt;&lt;\/i&gt;&quot;,&quot;navigation_right&quot;:&quot;&lt;i aria-hidden=\&quot;true\&quot; class=\&quot;fas fa-angle-right\&quot;&gt;&lt;\/i&gt;&quot;,&quot;show_dots&quot;:false,&quot;arrow_position&quot;:&quot;bottom&quot;,&quot;responsive&quot;:{&quot;desktop&quot;:{&quot;items&quot;:4,&quot;margin&quot;:70,&quot;breakpoint&quot;:1025},&quot;tablet&quot;:{&quot;items&quot;:4,&quot;margin&quot;:100,&quot;breakpoint&quot;:768},&quot;mobile&quot;:{&quot;items&quot;:2,&quot;margin&quot;:35,&quot;breakpoint&quot;:0}}}">
                            <div class="client-list">
                                <div class="client-track">
                                    @if ($block_childs)
                                        @foreach ($block_childs as $item)
                                            @php
                                                $title_child = $item->json_params->title->{$locale} ?? $item->title;
                                                $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
                                                $content_child = $item->json_params->content->{$locale} ?? $item->content;
                                                $image_child = $item->image != '' ? $item->image : null;
                                                $url_link = $item->url_link != '' ? $item->url_link : 'javascript:void(0)';
                                                $url_link_title = $item->json_params->url_link_title->{$locale} ?? $item->url_link_title;
                                                $icon = $item->icon != '' ? $item->icon : '';
                                                $style = $item->json_params->style ?? '';
                                            @endphp

                                            <div class="client-slider item ">
                                                <div class="image-list">
                                                    <div class="content-image"><img src="{{ $image_child }}"
                                                            class="main-image" alt="{{ $title_child }}"></div>
                                                </div>
                                            </div>
                                        @endforeach
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

 
@endif
