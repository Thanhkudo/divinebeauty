@if ($block)
    @php
        $title = $block->json_params->title->{$locale} ?? $block->title;
        $brief = $block->json_params->brief->{$locale} ?? $block->brief;
        $content = $block->json_params->content->{$locale} ?? $block->content;
        $image_background = $block->image_background != '' ? $block->image_background : null;
        $image = $block->image != '' ? $block->image : null;
        $url_link = $block->url_link != '' ? $block->url_link : '';
        $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
        $style = isset($block->json_params->style) && $block->json_params->style == 'slider-caption-right' ? 'd-none' : '';
        
        $block_childs = $blocks->filter(function ($item, $key) use ($block) {
            return $item->parent_id == $block->id;
        });
        
    @endphp
    <div class="elementor-element elementor-element-48e6adb1 e-con-full e-con" data-id="48e6adb1"
        data-element_type="container" data-settings='{"content_width":"full","background_background":"classic"}'>
        <div class="elementor-element elementor-element-7fa54c63 elementor-widget elementor-widget-jkit_portfolio_gallery"
            data-id="7fa54c63" data-element_type="widget" data-widget_type="jkit_portfolio_gallery.default">
            <div class="elementor-widget-container">
                <div class="jeg-elementor-kit jkit-portfolio-gallery on-hover jeg_module_76_8_64c246e26352e">
                    <div class="portfolio-gallery-container">
                        <div class="row-items">
                            @if ($block_childs)
                                @foreach ($block_childs as $item)
                                    @php
                                        $title_child = $item->json_params->title->{$locale} ?? $item->title;
                                        $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
                                        $content_child = $item->json_params->content->{$locale} ?? $item->content;
                                        $image_child = $item->image != '' ? $item->image : null;
                                        $icon_child = $item->icon != '' ? $item->icon : '';
                                        $style_child = $item->json_params->style ?? '';
                                    @endphp
                                    <div class="row-item elementor-repeater-item-1cabfa0 current-item"
                                        data-tab="portfolio-gallery-tab-{{ $item->id }}">
                                        <div class="row-item-info">
                                            <p class="info-subtitle"></p>
                                            <h3 class="info-title">{{ $title_child }}</h3>
                                        </div>
                                    </div>
                                @endforeach
                            @endif

                        </div>
                        <div class="gallery-items">
                            @if ($block_childs)
                                @foreach ($block_childs as $item)
                                    @php
                                        $title_child = $item->json_params->title->{$locale} ?? $item->title;
                                        $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
                                        $content_child = $item->json_params->content->{$locale} ?? $item->content;
                                        $image_child = $item->image != '' ? $item->image : null;
                                        $icon_child = $item->icon != '' ? $item->icon : '';
                                        $style_child = $item->json_params->style ?? '';
                                    @endphp
                                    <div id="portfolio-gallery-tab-{{ $item->id }}" class="image-item current-item"
                                        data-background="{{ $image_child }}"
                                        style=" background-image: url('{{ $image_child }}'); ">
                                    </div>
                                @endforeach
                            @endif

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endif
