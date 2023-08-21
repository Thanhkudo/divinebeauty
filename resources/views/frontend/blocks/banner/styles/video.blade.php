@if ($block)
    @php
        
        $title = $block->json_params->title->{$locale} ?? $block->title;
        $brief = $block->json_params->brief->{$locale} ?? $block->brief;
        $content = $block->json_params->content->{$locale} ?? $block->content;
        $image = $block->image != '' ? $block->image : null;
        $image_background = $block->image_background != '' ? $block->image_background : null;
        // Filter all blocks by parent_id
        $block_childs = $blocks->filter(function ($item, $key) use ($block) {
            return $item->parent_id == $block->id;
        });
    @endphp
    @if ($block_childs)
        @foreach ($block_childs as $items)
            @php
                $title_child = $items->json_params->title->{$locale} ?? $items->title;
                $brief_child = $items->json_params->brief->{$locale} ?? $items->brief;
                $content_child = $items->json_params->content->{$locale} ?? $items->content;
                $image_child = $items->image != '' ? $items->image : null;
                $image_background_child = $items->image_background != '' ? $items->image_background : null;
                $video = $items->json_params->video ?? '';
                $icon = $items->icon ?? '';
                
                $url_link_child = $items->url_link != '' ? $items->url_link : '';
                $url_link_title_child = $items->json_params->url_link_title->{$locale} ?? $items->url_link_title;
                $image_for_screen = null;
                if ($agent->isDesktop() && $image_background_child != null) {
                    $image_for_screen = $image_background_child;
                } else {
                    $image_for_screen = $image_child;
                }
                
            @endphp
            <div data-elementor-type="wp-page" data-elementor-id="98" class="elementor elementor-98">
                <div class="elementor-element elementor-element-660138d e-con-boxed e-con" data-id="660138d"
                    data-element_type="container"
                    data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;content_width&quot;:&quot;boxed&quot;}"
                    data-e-bg-lazyload=""
                    style="background: url('{{ $image_background_child }}');
                background-position: 0% 40%;
                background-repeat: no-repeat;
                background-size: cover;">
                    <div class="e-con-inner">
                        <div class="elementor-element elementor-element-ae907ad e-con-full e-con" data-id="ae907ad"
                            data-element_type="container" data-settings="{&quot;content_width&quot;:&quot;full&quot;}">
                            <div class="elementor-element elementor-element-889f6a8 animated-slow elementor-invisible elementor-widget elementor-widget-jkit_video_button"
                                data-id="889f6a8" data-element_type="widget"
                                data-settings="{&quot;_animation&quot;:&quot;fadeInUp&quot;,&quot;_animation_delay&quot;:10}"
                                data-widget_type="jkit_video_button.default">
                                <div class="elementor-widget-container">
                                    <div class="jeg-elementor-kit jkit-video-button jeg_module_98__64c24708aa9ab btn-pla"
                                        data-autoplay="0" data-loop="0" data-controls="1" data-type="youtube"
                                        data-mute="0" data-start="1" data-end="0" >
                                        <a href="{{ $video }}" title="Video" data-html="{{$video}}"
                                            jkit-swal-htmlContainer="{{$video}}"
                                            class="jkit-video-popup-btn glow-enable">
                                            <span class="icon-position-before"><i aria-hidden="true"
                                                    class="jki jki-play1-light"></i>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="elementor-element elementor-element-08db5a5 elementor-widget elementor-widget-heading"
                                data-id="08db5a5" data-element_type="widget" data-widget_type="heading.default">
                                <div class="elementor-widget-container">
                                    <h2 class="elementor-heading-title elementor-size-default">{{ $content_child }}</h2>
                                </div>
                            </div>
                            <div class="elementor-element elementor-element-0c10b11 elementor-widget elementor-widget-button"
                                data-id="0c10b11" data-element_type="widget" data-widget_type="button.default">
                                <div class="elementor-widget-container">
                                    <div class="elementor-button-wrapper">
                                        <a href="{{ $url_link_child }}"
                                            class="elementor-button-link elementor-button elementor-size-sm"
                                            role="button">
                                            <span class="elementor-button-content-wrapper">
                                                <span class="elementor-button-text">{{ $url_link_title_child }}</span>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @push('schema')
                <script></script>
            @endpush
        @endforeach

    @endif
@endif
