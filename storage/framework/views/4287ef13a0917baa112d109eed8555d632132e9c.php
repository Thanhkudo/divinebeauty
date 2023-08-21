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

<style>
    .elementor-76 .elementor-element.elementor-element-e9e0e8f {
    --padding-top: 65px;
}
</style>
    <div class="elementor-element elementor-element-355cb61 e-con-boxed e-con" data-id="355cb61"
        data-element_type="container" data-settings='{"background_background":"classic","content_width":"boxed"}'>
        <div class="e-con-inner">
            <div class="elementor-element elementor-element-86e9bff e-con-full e-con" data-id="86e9bff"
                data-element_type="container" data-settings='{"content_width":"full"}'>
                <div class="elementor-element elementor-element-4ab59ff animated-slow elementor-invisible elementor-widget elementor-widget-heading"
                    data-id="4ab59ff" data-element_type="widget" data-settings='{"_animation":"fadeInRight"}'
                    data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h5 class="elementor-heading-title elementor-size-default">
                            <?php echo e($brief); ?>

                        </h5>
                    </div>
                </div>
                <div class="elementor-element elementor-element-88fde68 elementor-widget elementor-widget-heading"
                    data-id="88fde68" data-element_type="widget" data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h2 class="elementor-heading-title elementor-size-default">
                            <?php echo e($title); ?>

                        </h2>
                    </div>
                </div>
                <div class="elementor-element elementor-element-91a014a elementor-widget elementor-widget-text-editor"
                    data-id="91a014a" data-element_type="widget" data-widget_type="text-editor.default">
                    <div class="elementor-widget-container">
                        <p>
                            <?php echo e($content); ?>

                        </p>
                    </div>
                </div>
                <div class="elementor-element elementor-element-8de538f elementor-widget elementor-widget-heading"
                    data-id="8de538f" data-element_type="widget" data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h4 class="elementor-heading-title elementor-size-default">
                            <?php echo app('translator')->get('Contact Infor'); ?>
                        </h4>
                    </div>
                </div>
                <div class="elementor-element elementor-element-ccb5c52 e-con-full e-con" data-id="ccb5c52"
                    data-element_type="container" data-settings='{"content_width":"full"}'>
                    <div class="elementor-element elementor-element-7ef275c jkit-equal-height-disable elementor-widget elementor-widget-jkit_icon_box"
                        data-id="7ef275c" data-element_type="widget" data-widget_type="jkit_icon_box.default">
                        <div class="elementor-widget-container">
                            <div
                                class="jeg-elementor-kit jkit-icon-box icon-position-left elementor-animation- jeg_module_76_11_64c246e2957ac">
                                <div
                                    class="icon-box-link">
                                    <div class="jkit-icon-box-wrapper hover-from-left">
                                        <div class="icon-box icon-box-header elementor-animation-float">
                                            <div class="icon style-color">
                                                <i aria-hidden="true" class="jki jki-envelope2-light"></i>
                                            </div>
                                        </div>
                                        <div class="icon-box icon-box-body">
                                            <h3 class="title"><?php echo app('translator')->get('Email'); ?></h3>
                                            <p class="icon-box-description">
                                                <?php echo e($web_information->information->email); ?>

                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-575bd6e jkit-equal-height-disable elementor-widget elementor-widget-jkit_icon_box"
                        data-id="575bd6e" data-element_type="widget" data-widget_type="jkit_icon_box.default">
                        <div class="elementor-widget-container">
                            <div
                                class="jeg-elementor-kit jkit-icon-box icon-position-left elementor-animation- jeg_module_76_12_64c246e298ba9">
                                <div  class="icon-box-link">
                                    <div class="jkit-icon-box-wrapper hover-from-left">
                                        <div class="icon-box icon-box-header elementor-animation-float">
                                            <div class="icon style-color">
                                                <i aria-hidden="true" class="jki jki-phone1-light"></i>
                                            </div>
                                        </div>
                                        <div class="icon-box icon-box-body">
                                            <h3 class="title"><?php echo app('translator')->get('Phone'); ?></h3>
                                            <p class="icon-box-description">
                                                <?php echo e($web_information->information->phone); ?><br />
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="elementor-element elementor-element-e9e0e8f e-con-full e-con" data-id="e9e0e8f"
                data-element_type="container" data-settings='{"content_width":"full"}'>
                <div class="elementor-element elementor-element-3ac6755 elementor-widget elementor-widget-heading"
                    data-id="3ac6755" data-element_type="widget" data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h4 class="elementor-heading-title elementor-size-default">
                            <?php echo e($description); ?>

                        </h4>
                    </div>
                </div>

                <?php if($block_childs): ?>
                    <?php $__currentLoopData = $block_childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php
                            $title_child = $item->json_params->title->{$locale} ?? $item->title;
                            $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
                            $content_child = $item->json_params->content->{$locale} ?? $item->content;
                            $image_child = $item->image != '' ? $item->image : null;
                            $icon_child = $item->icon != '' ? $item->icon : '';
                            $style_child = $item->json_params->style ?? '';
                        ?>

                        <div class="elementor-element <?php echo e($style_child == 'end' ? 'elementor-element-ca5b593' : 'elementor-element-b5fffce'); ?> e-con-full e-con"
                            data-id="<?php echo e($style_child == 'end' ? 'ca5b593' : 'b5fffce'); ?>" data-element_type="container" data-settings='{"content_width":"full"}'>
                            <div class="elementor-element elementor-element-47cc039 e-con-full e-con" data-id="47cc039"
                                data-element_type="container" data-settings='{"content_width":"full"}'>
                                <div class="elementor-element elementor-element-27145fa elementor-widget elementor-widget-heading"
                                    data-id="27145fa" data-element_type="widget" data-widget_type="heading.default">
                                    <div class="elementor-widget-container">
                                        <span
                                            class="elementor-heading-title elementor-size-default"><?php echo e($title_child); ?></span>
                                    </div>
                                </div>
                            </div>
                            <div class="elementor-element elementor-element-585ae47 e-con-full e-con" data-id="585ae47"
                                data-element_type="container" data-settings='{"content_width":"full"}'>
                                <div class="elementor-element elementor-element-b331939 elementor-icon-list--layout-inline elementor-align-right elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list"
                                    data-id="b331939" data-element_type="widget" data-widget_type="icon-list.default">
                                    <div class="elementor-widget-container">
                                        <ul class="elementor-icon-list-items elementor-inline-items">
                                            <li class="elementor-icon-list-item elementor-inline-item">
                                                <span class="elementor-icon-list-icon">
                                                    <?php if($icon_child != ''): ?>
                                                        <i aria-hidden="true" class="<?php echo e($icon_child); ?>"></i>
                                                    <?php endif; ?>
                                                </span>
                                                <span class="elementor-icon-list-text"><?php echo e($content_child); ?></span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>




            </div>
        </div>
    </div>

<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/blocks/custom/styles/opening_hours.blade.php ENDPATH**/ ?>