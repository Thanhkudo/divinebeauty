<?php if($block): ?>
    <?php
        
        $title = $block->json_params->title->{$locale} ?? $block->title;
        $brief = $block->json_params->brief->{$locale} ?? $block->brief;
        $content = $block->json_params->content->{$locale} ?? $block->content;
        $image = $block->image != '' ? $block->image : null;
        $image_background = $block->image_background != '' ? $block->image_background : null;
        
        // Filter all blocks by parent_id
        $block_childs = $blocks->filter(function ($item, $key) use ($block) {
            return $item->parent_id == $block->id;
        });
        if ($agent->isDesktop() && $image_background != null) {
            $image_for_screen = $image_background;
        } else {
            $image_for_screen = $image;
        }
    ?>

    <style>
        .elementor-76 .elementor-element.elementor-element-8fd194a:not(.elementor-motion-effects-element-type-background) {
            background: url('<?php echo e($image_for_screen); ?>');
            background-size: cover;
            background-position: 100%;
        }

        .elementor-76 .elementor-element.elementor-element-8fd194a::before {
            display: none;
        }


        @media (min-width: 768px) {
            .elementor-76 .elementor-element.elementor-element-1b86a4c {
                --margin-top: -70px;
                --width: 66.179%;
            }
        }

        @media (max-width: 767px) {
            .elementor-76 .elementor-element.elementor-element-d1088ef .elementor-heading-title {
                font-size: 28px;
            }
            .elementor-76 .elementor-element.elementor-element-1b86a4c {
                --margin-top: -420px;
            }
        }
    </style>
    <div class="elementor-element elementor-element-8fd194a e-con-boxed e-con lazyloaded " data-id="8fd194a"
        data-element_type="container">
        <div class="e-con-inner">
            <div class="elementor-element elementor-element-1b86a4c e-con-full e-con" data-id="1b86a4c"
                data-element_type="container" data-settings='{"content_width":"full"}'>
                <div class="elementor-element elementor-element-d1088ef elementor-widget elementor-widget-heading"
                    data-id="d1088ef" data-element_type="widget" data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <style>
                            /*! elementor - v3.11.1 - 15-02-2023 */
                            .elementor-heading-title {
                                padding: 0;
                                margin: 0;
                                line-height: 1;
                            }

                            .elementor-widget-heading .elementor-heading-title[class*="elementor-size-"]>a {
                                color: inherit;
                                font-size: inherit;
                                line-height: inherit;
                            }

                            .elementor-widget-heading .elementor-heading-title.elementor-size-small {
                                font-size: 15px;
                            }

                            .elementor-widget-heading .elementor-heading-title.elementor-size-medium {
                                font-size: 19px;
                            }

                            .elementor-widget-heading .elementor-heading-title.elementor-size-large {
                                font-size: 29px;
                            }

                            .elementor-widget-heading .elementor-heading-title.elementor-size-xl {
                                font-size: 39px;
                            }

                            .elementor-widget-heading .elementor-heading-title.elementor-size-xxl {
                                font-size: 59px;
                            }
                        </style>
                        <h1 class="elementor-heading-title elementor-size-default">
                            <?php echo $content; ?>

                        </h1>
                    </div>
                </div>
            </div>
            <div class="elementor-element elementor-element-1fcb01f elementor-widget-mobile__width-initial elementor-absolute elementor-widget elementor-widget-image"
                data-id="1fcb01f" data-element_type="widget" data-settings='{"_position":"absolute"}'
                data-widget_type="image.default">
                <div class="elementor-widget-container">
                    

                </div>
            </div>
        </div>
    </div>
<?php endif; ?><?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/blocks/banner/styles/slide.blade.php ENDPATH**/ ?>