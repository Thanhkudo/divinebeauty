<?php if($block): ?>
    <?php
        $title = $block->json_params->title->{$locale} ?? $block->title;
        $brief = $block->json_params->brief->{$locale} ?? $block->brief;
        $description = $block->json_params->description->{$locale} ?? ($block->json_params->description ?? '');
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
    ?>

    <div class="elementor-element elementor-element-601798f3 e-con-boxed e-con" data-id="601798f3"
        data-element_type="container" data-settings='{"background_background":"classic","content_width":"boxed"}'>
        <div class="e-con-inner">
            <div class="elementor-element elementor-element-32194af0 e-con-full e-con" data-id="32194af0"
                data-element_type="container" data-settings='{"content_width":"full"}'>
                <div class="elementor-element elementor-element-2843f55c elementor-widget elementor-widget-image"
                    data-id="2843f55c" data-element_type="widget" data-widget_type="image.default">
                    <div class="elementor-widget-container">
                        <img width="1140" height="760" src="<?php echo e($image); ?>"
                            class="attachment-full size-full wp-image-1405"
                            alt="4V7A7453 - Ariel Medical - Aesthetic Clinic | GREECE" decoding="async" loading="lazy"
                            srcset=" <?php echo e($image); ?>" sizes="(max-width: 1140px) 100vw, 1140px"
                            title="<?php echo e($title); ?>" />
                    </div>
                </div>
                <div class="elementor-element elementor-element-7987cc78 animated-slow e-con-full elementor-invisible e-con"
                    data-id="7987cc78" data-element_type="container"
                    data-settings='{"animation":"fadeInLeft","content_width":"full"}'>
                    <div class="elementor-element elementor-element-c9e6b3a e-con-full e-con" data-id="c9e6b3a"
                        data-element_type="container"
                        data-settings='{"background_background":"classic","content_width":"full"}'>
                        <div class="elementor-element elementor-element-19f90e1c elementor-widget elementor-widget-heading"
                            data-id="19f90e1c" data-element_type="widget" data-widget_type="heading.default">
                            <div class="elementor-widget-container">
                                <h3 class="elementor-heading-title elementor-size-default">
                                    <?php echo e($description); ?>

                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="elementor-element elementor-element-4c45bfa6 e-con-full e-con" data-id="4c45bfa6"
                data-element_type="container" data-settings='{"content_width":"full"}'>
                <div class="elementor-element elementor-element-5ebc6801 animated-slow elementor-invisible elementor-widget elementor-widget-heading"
                    data-id="5ebc6801" data-element_type="widget" data-settings='{"_animation":"fadeInRight"}'
                    data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h5 class="elementor-heading-title elementor-size-default">
                            <?php echo e($brief); ?>

                        </h5>
                    </div>
                </div>
                <div class="elementor-element elementor-element-2ecadb71 elementor-widget elementor-widget-heading"
                    data-id="2ecadb71" data-element_type="widget" data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h2 class="elementor-heading-title elementor-size-default">
                            <?php echo e($title); ?>

                        </h2>
                    </div>
                </div>
                <div class="elementor-element elementor-element-7f280de3 elementor-widget elementor-widget-text-editor"
                    data-id="7f280de3" data-element_type="widget" data-widget_type="text-editor.default">
                    <div class="elementor-widget-container">
                        <p>
                            <?php echo e($content); ?>

                        </p>
                    </div>
                </div>
                <div class="elementor-element elementor-element-257cab35 elementor-widget elementor-widget-jkit_feature_list"
                    data-id="257cab35" data-element_type="widget" data-widget_type="jkit_feature_list.default">
                    <div class="elementor-widget-container">
                        <div
                            class="jeg-elementor-kit jkit-feature-list icon-position-left icon-position-left icon-position-left jeg_module_76_9_64c246e276584">
                            <ul class="feature-list-items shape-circle shape-view-stacked connector-type-classic">
                                <?php if($block_childs): ?>
                                    <?php $__currentLoopData = $block_childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php
                                            $title_child = $item->json_params->title->{$locale} ?? $item->title;
                                            $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
                                            $content_child = $item->json_params->content->{$locale} ?? $item->content;
                                            $image_child = $item->image != '' ? $item->image : null;
                                            $icon = $item->icon != '' ? $item->icon : '';
                                            $style = $item->json_params->style ?? '';
                                        ?>
                                         <li class="feature-list-item elementor-repeater-item-5a416f5">
                                            <span class="connector"></span>
                                            <div class="feature-list-icon-box">
                                                <div class="feature-list-icon-inner">
                                                    <span class="feature-list-icon">
                                                        <i aria-hidden="true" class="<?php echo e($icon); ?>"></i>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="feature-list-content-box">
                                                <h4 class="feature-list-title">
                                                    <?php echo e($title_child); ?>

                                                </h4>
                                            </div>
                                        </li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endif; ?>

                               
                                
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="elementor-element elementor-element-0307e9a elementor-widget__width-initial elementor-widget-tablet__width-initial elementor-widget-mobile__width-initial elementor-absolute elementor-hidden-phone ekit-equal-height-disable elementor-invisible elementor-widget elementor-widget-elementskit-icon-box"
                    data-id="0307e9a" data-element_type="widget"
                    data-settings='{"_animation":"rotateInDownRight","_animation_delay":800,"_position":"absolute"}'
                    data-widget_type="elementskit-icon-box.default">
                    <div class="elementor-widget-container">
                        <div class="ekit-wid-con">
                                <div class="elementskit-infobox text-center text- icon-top-align elementor-animation-">
                                    <div class="elementskit-box-header">
                                        <div class="elementskit-info-box-icon">
                                            <img decoding="async" width="263" height="239"
                                                src="<?php echo e($image_background); ?>"
                                                class="attachment- size-"
                                                alt="elements set of natural and floral elements G9XCU6B procedures 2 - Ariel Medical - Aesthetic Clinic | GREECE"
                                                loading="lazy"
                                                title="<?php echo e($title); ?>" />
                                        </div>
                                    </div>
                                    <div class="box-body"></div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>

    
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/blocks/custom/styles/about_vision.blade.php ENDPATH**/ ?>