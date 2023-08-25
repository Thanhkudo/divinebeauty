<?php if($block): ?>
    <?php
        
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
        
    ?>



    <style>
        .elementor hr.line {
            width: 20%;
            max-width: 40px;
            height: 4px;
            background: #F9DEB7;
            border: none;
        }

        .e-con-inner.border {
            padding-top: 50px;
            padding-bottom: 50px;
            border-bottom: 1px solid #E4E4E4
        }

        .e-con-inner.border-0 {
            padding-top: 160px;
        }

        .elementor-883 .elementor-element.elementor-element-57ddac1 .jet-listing-dynamic-field .jet-listing-dynamic-field__content {
            line-height: 35px
        }

        .block_map {
            width: 100%;
            position: relative;
        }

        .box_map {
            width: 100%;
            border-radius: 10px;
            overflow: hidden;
        }

        .box_map iframe {
            min-height: 500px;
        }

        .box_address {
            position: absolute;
            left: 20px;
            top: 20px;
            background: #fff;
            padding: 20px;
            width: 35%;

            max-width: 315px;
            overflow: hidden;
        }

        .box_address .content {
            height: 400px;
            padding-right: 25px;
            overflow-y: auto;
        }

        .box_address .content::-webkit-scrollbar {
            width: 6px;
        }

        .box_address .content::-webkit-scrollbar-thumb {
            background-color: #DFDFDF;
            border-radius: 20px
        }

        .box_address .content::-webkit-scrollbar-track {
            background-color: #F3F3F3;
            border-radius: 20px
        }

        .box_address .iframe_element {
            color: #000;
            font-size: 12px;
            line-height: 25px;
            margin-bottom: 16px;
            cursor: pointer;
        }

        .box_address .iframe_element .title {
            font-size: 16px;
            font-weight: 700;
            line-height: 36px;
        }

        .box_address .iframe_element hr {
            width: 30px;
            height: 3px;
            background: #DFE2FD;
            border: none;
            margin-bottom: 15px
        }

        .jet-listing-grid__items {
            justify-content: unset;
        }
        .elementor-76 .elementor-element.elementor-element-407e4395 .elementor-heading-title{
            font-weight: 600
        }
        @media(max-width: 767px) {
            .box_address {
                position: relative;
                left: unset;
                top: unset;
                background: #fff;
                padding: 20px;
                width: 100%;
                margin-bottom: 20px;
                max-width: unset;
                overflow: hidden;
            }
        }
    </style>
    <?php if($block_childs): ?>
        <?php $arr_map=[]; ?>
        <?php $__currentLoopData = $block_childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $items): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php
                $title_child = $items->json_params->title->{$locale} ?? $items->title;
                $brief_child = $items->json_params->brief->{$locale} ?? $items->brief;
                $content_child = $items->json_params->content->{$locale} ?? $items->content;
                $image_child = $items->image != '' ? $items->image : null;
                $image_background_child = $items->image_background != '' ? $items->image_background : '';
                
                $block_childs2 = $blocks->filter(function ($item, $key) use ($items) {
                    return $item->parent_id == $items->id;
                });
            ?>


            <div class="elementor-element elementor-element-70da773d e-con-boxed e-con" data-id="70da773d"
                data-element_type="container" data-settings='{"background_background":"classic","content_width":"boxed"}'
                style="background: url('<?php echo e($image_background_child); ?>');
                background-position: center center;
                      background-repeat: repeat;
                      background-size: 100% auto;">
                <div class="e-con-inner border border-<?php echo e($loop->index); ?>">
                    <div class="elementor-element elementor-element-57ce4827 e-con-full e-con" data-id="57ce4827"
                        data-element_type="container" data-settings='{"content_width":"full"}'>
                        <div class="elementor-element elementor-element-4b891093 e-con-full e-con" data-id="4b891093"
                            data-element_type="container" data-settings='{"content_width":"full"}'>
                            <div class="elementor-element elementor-element-29359605 e-con-full e-con"
                                data-id="29359605" data-element_type="container"
                                data-settings='{"content_width":"full"}'>
                                <div class="elementor-element elementor-element-407e4395 elementor-widget elementor-widget-heading"
                                    data-id="407e4395" data-element_type="widget" data-widget_type="heading.default">
                                    <div class="elementor-widget-container">
                                        <h2 class="elementor-heading-title elementor-size-default">
                                            <?php echo e($title_child); ?>

                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-4ae4582 elementor-widget elementor-widget-jet-listing-grid"
                            data-id="4ae4582" data-element_type="widget"
                            data-settings='{"columns":3,"columns_mobile":"1"}'
                            data-widget_type="jet-listing-grid.default">
                            <div class="elementor-widget-container">
                                <div class="jet-listing-grid jet-listing">
                                    <div class="jet-listing-grid__items grid-col-desk-3 grid-col-tablet-3 grid-col-mobile-1 jet-listing-grid--883"
                                        data-nav='{"enabled":false,"type":null,"more_el":null,"query":[],"widget_settings":{"lisitng_id":883,"posts_num":6,"columns":3,"columns_tablet":3,"columns_mobile":1,"is_archive_template":"","post_status":["publish"],"use_random_posts_num":"","max_posts_num":9,"not_found_message":"No data was found","is_masonry":false,"equal_columns_height":"","use_load_more":"","load_more_id":"","load_more_type":"click","load_more_offset":{"unit":"px","size":0,"sizes":[]},"use_custom_post_types":"","custom_post_types":[],"hide_widget_if":"","carousel_enabled":"","slides_to_scroll":"1","arrows":"true","arrow_icon":"fa fa-angle-left","dots":"","autoplay":"true","autoplay_speed":5000,"infinite":"true","center_mode":"","effect":"slide","speed":500,"inject_alternative_items":"","injection_items":[],"scroll_slider_enabled":"","scroll_slider_on":["desktop","tablet","mobile"],"custom_query":false,"custom_query_id":"","_element_id":""}}'
                                        data-page="1" data-pages="2" data-listing-source="posts" data-listing-id="883"
                                        data-query-id="">
                                        <?php if($block_childs2): ?>
                                            <?php $__currentLoopData = $block_childs2; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php
                                                    $title_child2 = $item->json_params->title->{$locale} ?? $item->title;
                                                    $brief_child2 = $item->json_params->brief->{$locale} ?? $item->brief;
                                                    $content_child2 = $item->json_params->content->{$locale} ?? $item->content;
                                                    $image_child2 = $item->image != '' ? $item->image : null;
                                                    $image_background_child2 = $item->image_background != '' ? $item->image_background : '';
                                                    if (isset($item->json_params->map) && $item->json_params->map != '') {
                                                        $arr_map[] = $item;
                                                    }
                                                ?>
                                                <div class="jet-listing-grid__item jet-listing-dynamic-post-871"
                                                    data-post-id="871">
                                                    <div class="jet-engine-listing-overlay-wrap">
                                                        <div data-elementor-type="jet-listing-items"
                                                            data-elementor-id="883" class="elementor elementor-883">
                                                            <div class="elementor-element elementor-element-f1331db e-con-full e-con"
                                                                data-id="f1331db" data-element_type="container"
                                                                data-settings='{"content_width":"full"}'>
                                                                <div class="elementor-element elementor-element-8174a2e elementor-widget elementor-widget-image"
                                                                    data-id="8174a2e" data-element_type="widget"
                                                                    data-widget_type="image.default">
                                                                    <div class="elementor-widget-container">
                                                                        <div class="elementor-element elementor-element-dd25944 elementor-widget elementor-widget-jet-listing-dynamic-field"
                                                                            data-id="dd25944" data-element_type="widget"
                                                                            data-widget_type="jet-listing-dynamic-field.default">
                                                                            <div class="elementor-widget-container">
                                                                                <div
                                                                                    class="jet-listing jet-listing-dynamic-field display-inline">
                                                                                    <div
                                                                                        class="jet-listing-dynamic-field__inline-wrap">
                                                                                        <h3 class="jet-listing-dynamic-field__content"
                                                                                            style="font-weight: 700">
                                                                                            <?php echo e($title_child2); ?>

                                                                                        </h3>

                                                                                    </div>
                                                                                </div>
                                                                                <hr class="line">
                                                                            </div>
                                                                        </div>
                                                                        <div class="elementor-element elementor-element-57ddac1 elementor-widget elementor-widget-jet-listing-dynamic-field"
                                                                            data-id="57ddac1" data-element_type="widget"
                                                                            data-widget_type="jet-listing-dynamic-field.default"
                                                                            style="margin-top: 27px">
                                                                            <div class="elementor-widget-container">
                                                                                <div
                                                                                    class="jet-listing jet-listing-dynamic-field display-inline">
                                                                                    <div
                                                                                        class="jet-listing-dynamic-field__inline-wrap">
                                                                                        <p
                                                                                            class="jet-listing-dynamic-field__content">
                                                                                            <?php echo nl2br($brief_child2); ?>

                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


        <div class="elementor-element elementor-element-70da773d e-con-boxed e-con" data-id="70da773d"
            data-element_type="container" data-settings='{"background_background":"classic","content_width":"boxed"}'
            style="background: url('<?php echo e($image_background_child); ?>');
                background-position: center center;
                      background-repeat: repeat;
                      background-size: 100% auto;">
            <div class="e-con-inner">
                <div class="block_map">
                    <div class="box_address">
                        <div class="content">
                            <?php $__currentLoopData = $arr_map; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_map): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="iframe_element" data="<?php echo e($item_map->json_params->map ?? ''); ?>">
                                    <div class="title">
                                        <?php echo e($item_map->json_params->title->{$locale} ?? $item_map->title); ?></div>
                                    <hr>
                                    <p><?php echo nl2br($brief = $item_map->json_params->brief->{$locale} ?? $item_map->brief); ?></p>
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                    </div>
                    <div class="box_map">
                        <?php echo $arr_map[0]->json_params->map ?? ''; ?>

                    </div>
                </div>
            </div>
        </div>
    <?php endif; ?>



<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/blocks/stores/styles/map.blade.php ENDPATH**/ ?>