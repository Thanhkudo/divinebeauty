<?php if($block): ?>
    <?php
        
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
    ?>
    <div class="elementor-97">
        <div class="elementor-element elementor-element-6b367f1 e-con-full e-con" data-id="6b367f1"
            data-element_type="container" id="map" data-settings="{&quot;content_width&quot;:&quot;full&quot;}">

                <?php if(isset($web_information->source_code->map)): ?>
                    <?php echo $web_information->source_code->map; ?>

                <?php endif; ?>
        </div>
    </div>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/blocks/about_us/styles/map.blade.php ENDPATH**/ ?>