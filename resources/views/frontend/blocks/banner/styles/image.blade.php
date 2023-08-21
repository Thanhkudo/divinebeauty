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

    <style>
        .elementor-76 .elementor-element.elementor-element-1053a240:not(.elementor-motion-effects-element-type-background),
        .elementor-76 .elementor-element.elementor-element-1053a240>.elementor-motion-effects-container>.elementor-motion-effects-layer {
            position: absolute;
            background: url('{{ $image_background }}');
            background-repeat: no-repeat;
            background-size: 100% 100%;
            box-shadow: none;
            width: 60%;
            --margin-top: -95px;
            min-height: 150px
        }

         @media(max-width: 768px) {

            .elementor-76 .elementor-element.elementor-element-1053a240:not(.elementor-motion-effects-element-type-background),
            .elementor-76 .elementor-element.elementor-element-1053a240>.elementor-motion-effects-container>.elementor-motion-effects-layer {
                position: relative;
                width: 100%;
                --margin-top: 0;
            }
        }
    </style>


    <div class="elementor-element elementor-element-20fd6022 animated-slow e-con-boxed elementor-invisible e-con"
        data-id="20fd6022" data-element_type="container" data-settings='{"animation":"fadeInUp","content_width":"boxed"}'
        style="height: 0px">
        <div class="e-con-inner" style="justify-content: end ">
            <div class="elementor-element elementor-element-1053a240 e-con-full e-con" data-id="1053a240"
                data-element_type="container" data-settings='{"background_background":"classic","content_width":"full"}'>
            </div>
        </div>
    </div>
@endif
