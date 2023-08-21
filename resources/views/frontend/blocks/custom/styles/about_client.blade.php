@if ($block)
    @php
        
        $title = $block->json_params->title->{$locale} ?? $block->title;
        $brief = $block->json_params->brief->{$locale} ?? $block->brief;
        $content = $block->json_params->content->{$locale} ?? $block->content;
        $image = $block->image != '' ? $block->image : '';
        $image_background = $block->image_background != '' ? $block->image_background : '';
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

    <div class="elementor-element elementor-element-93ab316 e-con-full e-con" data-id="93ab316"
        data-element_type="container" data-settings='{"content_width":"full"}'>
        <div class="elementor-element elementor-element-7fcacd82 e-con-full e-con" data-id="7fcacd82"
            data-element_type="container" data-settings='{"background_background":"classic","content_width":"full"}'
            data-e-bg-lazyload=""
            style="background-image: url('{{ $image_background }}');
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;">
            <div class="elementor-element elementor-element-742eec75 elementor-widget elementor-widget-spacer"
                data-id="742eec75" data-element_type="widget" data-widget_type="spacer.default">
                <div class="elementor-widget-container">
                    <div class="elementor-spacer">
                        <div class="elementor-spacer-inner"></div>
                    </div>
                </div>
            </div>
            <div class="elementor-element elementor-element-491b042e elementor-widget__width-initial elementor-widget elementor-widget-jkit_testimonials"
                data-id="491b042e" data-element_type="widget" data-widget_type="jkit_testimonials.default">
                <div class="elementor-widget-container">
                    <div class="jeg-elementor-kit jkit-testimonials arrow-bottom-middle style-2 quote-override jeg_module_76_10_64c246e28b19d"
                        data-id="jeg_module_76_10_64c246e28b19d"
                        data-settings='{"autoplay":true,"autoplay_speed":3500,"autoplay_hover_pause":false,"show_navigation":false,"navigation_left":"&lt;i aria-hidden=\"true\" class=\"fas fa-angle-left\"&gt;&lt;\/i&gt;","navigation_right":"&lt;i aria-hidden=\"true\" class=\"fas fa-angle-right\"&gt;&lt;\/i&gt;","show_dots":false,"arrow_position":"bottom","responsive":{"desktop":{"items":1,"margin":20,"breakpoint":1025},"tablet":{"items":1,"margin":10,"breakpoint":768},"mobile":{"items":1,"margin":10,"breakpoint":0}}}'>
                        <div class="testimonials-list">
                            <div class="testimonials-track">
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

                                        <div class="testimonial-item elementor-repeater-item-578b953">
                                            <div class="testimonial-box hover-from-left">
                                                <div class="icon-content">
                                                    <i aria-hidden="true" class="{{ $icon }}"></i>
                                                </div>
                                                <div class="comment-content">
                                                    <p>
                                                        {{ $content_child }}
                                                    </p>
                                                </div>
                                                <div class="comment-header">
                                                    <ul class="rating-stars">
                                                        <li>
                                                            <i aria-hidden="true" class="fas fa-star"></i>
                                                        </li>
                                                        <li>
                                                            <i aria-hidden="true" class="fas fa-star"></i>
                                                        </li>
                                                        <li>
                                                            <i aria-hidden="true" class="fas fa-star"></i>
                                                        </li>
                                                        <li>
                                                            <i aria-hidden="true" class="fas fa-star"></i>
                                                        </li>
                                                        <li>
                                                            <i aria-hidden="true" class="fas fa-star"></i>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="comment-bio">
                                                    <div class="bio-details">
                                                        <div class="profile-image">
                                                            <img decoding="async" src="{{ $image_child }}"
                                                                alt="{{ $title_child }}" title="{{ $title_child }}" />
                                                        </div>
                                                        <span class="profile-info">
                                                            <strong class="profile-name">{{ $title_child }}</strong>
                                                            <p class="profile-des"></p>
                                                        </span>
                                                    </div>
                                                </div>
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
@endif
