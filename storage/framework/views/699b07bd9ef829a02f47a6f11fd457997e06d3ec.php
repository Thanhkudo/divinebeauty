<?php if($block): ?>
    <?php
        $title = $block->json_params->title->{$locale} ?? $block->title;
        $brief = $block->json_params->brief->{$locale} ?? $block->brief;
        $content = $block->json_params->content->{$locale} ?? $block->content;
        $image = $block->image ?? '';
        $image_background = $block->image_background ?? '';
        $url_link = $block->url_link != '' ? $block->url_link : '';
        $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
        
        // Filter all blocks by parent_id
        $block_childs = $blocks->filter(function ($item, $key) use ($block) {
            return $item->parent_id == $block->id;
        });
        
        $params['status'] = App\Consts::POST_STATUS['active'];
        $params['is_featured'] = true;
        $params['is_type'] = App\Consts::POST_TYPE['service'];
        
        $rows = App\Http\Services\ContentService::getCmsPost($params)
            ->limit(6)
            ->get();
    ?>

    <style>
        .elementor-883 .elementor-element.elementor-element-dd25944 .jet-listing-dynamic-field .jet-listing-dynamic-field__content {
            width: auto;
            min-height: 61px;
        }

        
    </style>
    <div class="elementor-element elementor-element-70da773d e-con-boxed e-con" data-id="70da773d"
        data-element_type="container" data-settings='{"background_background":"classic","content_width":"boxed"}'>
        <div class="e-con-inner">
            <div class="elementor-element elementor-element-57ce4827 e-con-full e-con" data-id="57ce4827"
                data-element_type="container" data-settings='{"content_width":"full"}'>
                <div class="elementor-element elementor-element-4b891093 e-con-full e-con" data-id="4b891093"
                    data-element_type="container" data-settings='{"content_width":"full"}'>
                    <div class="elementor-element elementor-element-29359605 e-con-full e-con" data-id="29359605"
                        data-element_type="container" data-settings='{"content_width":"full"}'>
                        <div class="elementor-element elementor-element-629b1371 animated-slow elementor-invisible elementor-widget elementor-widget-heading"
                            data-id="629b1371" data-element_type="widget" data-settings='{"_animation":"fadeInLeft"}'
                            data-widget_type="heading.default">
                            <div class="elementor-widget-container">
                                <h5 class="elementor-heading-title elementor-size-default">
                                    <?php echo e($brief); ?>

                                </h5>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-407e4395 elementor-widget elementor-widget-heading"
                            data-id="407e4395" data-element_type="widget" data-widget_type="heading.default">
                            <div class="elementor-widget-container">
                                <h2 class="elementor-heading-title elementor-size-default">
                                    <?php echo e($title); ?>

                                </h2>
                            </div>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-5c4b8177 e-con-full e-con" data-id="5c4b8177"
                        data-element_type="container" data-settings='{"content_width":"full"}'>
                        <div class="elementor-element elementor-element-43196fe4 elementor-widget elementor-widget-text-editor"
                            data-id="43196fe4" data-element_type="widget" data-widget_type="text-editor.default">
                            <div class="elementor-widget-container">
                                <p>
                                    <?php echo e($content); ?>

                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-2dc92c4e e-con-full e-con" data-id="2dc92c4e"
                        data-element_type="container" data-settings='{"content_width":"full"}'>
                        <div class="elementor-element elementor-element-235b3a48 elementor-widget elementor-widget-button"
                            data-id="235b3a48" data-element_type="widget" data-widget_type="button.default">
                            <div class="elementor-widget-container">
                                <div class="elementor-button-wrapper">
                                    <a href="<?php echo e($url_link); ?>"
                                        class="elementor-button-link elementor-button elementor-size-sm" role="button">
                                        <span class="elementor-button-content-wrapper">
                                            <span class="elementor-button-text"><?php echo e($url_link_title); ?></span>
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-3bc9f81 elementor-widget__width-initial elementor-widget-tablet__width-initial elementor-widget-mobile__width-initial elementor-absolute elementor-hidden-phone ekit-equal-height-disable elementor-invisible elementor-widget elementor-widget-elementskit-icon-box"
                            data-id="3bc9f81" data-element_type="widget"
                            data-settings='{"_animation":"rotateInDownRight","_animation_delay":800,"_position":"absolute"}'
                            data-widget_type="elementskit-icon-box.default">
                            <div class="elementor-widget-container">
                                <div class="ekit-wid-con">
                                    <div
                                        class="elementskit-infobox text-center text- icon-top-align elementor-animation-">
                                        <div class="elementskit-box-header">
                                            <div class="elementskit-info-box-icon">
                                                <img decoding="async" width="263" height="239"
                                                    src="<?php echo e($image_background); ?>" class="attachment- size-"
                                                    alt="<?php echo e($title); ?>" loading="lazy"
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
                <div class="elementor-element elementor-element-4ae4582 elementor-widget elementor-widget-jet-listing-grid"
                    data-id="4ae4582" data-element_type="widget" data-settings='{"columns":3,"columns_mobile":"1"}'
                    data-widget_type="jet-listing-grid.default">
                    <div class="elementor-widget-container">
                        <div class="jet-listing-grid jet-listing">
                            <div class="jet-listing-grid__items grid-col-desk-4 grid-col-tablet-3 grid-col-mobile-1 jet-listing-grid--883"
                                data-nav='{"enabled":false,"type":null,"more_el":null,"query":[],"widget_settings":{"lisitng_id":883,"posts_num":6,"columns":3,"columns_tablet":3,"columns_mobile":1,"is_archive_template":"","post_status":["publish"],"use_random_posts_num":"","max_posts_num":9,"not_found_message":"No data was found","is_masonry":false,"equal_columns_height":"","use_load_more":"","load_more_id":"","load_more_type":"click","load_more_offset":{"unit":"px","size":0,"sizes":[]},"use_custom_post_types":"","custom_post_types":[],"hide_widget_if":"","carousel_enabled":"","slides_to_scroll":"1","arrows":"true","arrow_icon":"fa fa-angle-left","dots":"","autoplay":"true","autoplay_speed":5000,"infinite":"true","center_mode":"","effect":"slide","speed":500,"inject_alternative_items":"","injection_items":[],"scroll_slider_enabled":"","scroll_slider_on":["desktop","tablet","mobile"],"custom_query":false,"custom_query_id":"","_element_id":""}}'
                                data-page="1" data-pages="2" data-listing-source="posts" data-listing-id="883"
                                data-query-id="">
                                <?php if($rows): ?>
                                    <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php
                                            $title_child = $item->json_params->title->{$locale} ?? $item->title;
                                            $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
                                            $content_child = $item->json_params->content->{$locale} ?? $item->content;
                                            $image_child = $item->image != '' ? $item->image : null;
                                            $backgruod_child = $item->image_background != '' ? $item->image_background : null;
                                            $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->taxonomy_alias ?? $item->taxonomy_title, $item->taxonomy_id);
                                            $alias_post = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
                                        ?>
                                        <div class="jet-listing-grid__item jet-listing-dynamic-post-871"
                                            data-post-id="871">
                                            <div class="jet-engine-listing-overlay-wrap" data-url="<?php echo e($alias_post); ?>">
                                                <div data-elementor-type="jet-listing-items" data-elementor-id="883"
                                                    class="elementor elementor-883">
                                                    <div class="elementor-element elementor-element-f1331db e-con-full e-con"
                                                        data-id="f1331db" data-element_type="container"
                                                        data-settings='{"background_background":"classic","content_width":"full"}'>
                                                        <div class="elementor-element elementor-element-8174a2e elementor-widget elementor-widget-image"
                                                            data-id="8174a2e" data-element_type="widget"
                                                            data-widget_type="image.default">
                                                            <a href="<?php echo e($alias_post); ?>">
                                                                <div class="elementor-widget-container">
                                                                    <img decoding="async" src="<?php echo e($image_child); ?>"
                                                                        title="<?php echo e($title_child); ?>"
                                                                        alt="<?php echo e($title_child); ?>" loading="lazy" />
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="elementor-element elementor-element-83bd34a e-con-full e-con"
                                                            data-id="83bd34a" data-element_type="container"
                                                            data-settings='{"content_width":"full","background_background":"classic"}'>
                                                            <div class="elementor-element elementor-element-dd25944 elementor-widget elementor-widget-jet-listing-dynamic-field"
                                                                data-id="dd25944" data-element_type="widget"
                                                                data-widget_type="jet-listing-dynamic-field.default">
                                                                <div class="elementor-widget-container">
                                                                    <div
                                                                        class="jet-listing jet-listing-dynamic-field display-inline">
                                                                        <div
                                                                            class="jet-listing-dynamic-field__inline-wrap">
                                                                            <h3
                                                                                class="jet-listing-dynamic-field__content">
                                                                                <?php echo e($title_child); ?>

                                                                            </h3>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="elementor-element elementor-element-57ddac1 elementor-widget elementor-widget-jet-listing-dynamic-field"
                                                                data-id="57ddac1" data-element_type="widget"
                                                                data-widget_type="jet-listing-dynamic-field.default">
                                                                <div class="elementor-widget-container">
                                                                    <div
                                                                        class="jet-listing jet-listing-dynamic-field display-inline">
                                                                        <div
                                                                            class="jet-listing-dynamic-field__inline-wrap">
                                                                            <p
                                                                                class="jet-listing-dynamic-field__content">
                                                                                <?php echo e(Str::limit($content_child, 100)); ?>

                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="elementor-element elementor-element-4f726c6 elementor-widget elementor-widget-button"
                                                                data-id="4f726c6" data-element_type="widget"
                                                                data-widget_type="button.default">
                                                                <div class="elementor-widget-container">
                                                                    <div class="elementor-button-wrapper">
                                                                        <a href="<?php echo e($alias_post); ?>"
                                                                            class="elementor-button-link elementor-button elementor-size-sm"
                                                                            role="button">
                                                                            <span
                                                                                class="elementor-button-content-wrapper">
                                                                                <span
                                                                                    class="elementor-button-icon elementor-align-icon-right">
                                                                                    <i aria-hidden="true"
                                                                                        class="icon icon-right-arrow"></i>
                                                                                </span>
                                                                                <span
                                                                                    class="elementor-button-text"><?php echo app('translator')->get('Read more'); ?></span>
                                                                            </span>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <a href="<?php echo e($alias_post); ?>"
                                                    class="jet-engine-listing-overlay-link"></a>
                                            </div>
                                        </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="elementor-element elementor-element-bc2fa8a elementor-widget__width-initial elementor-widget-tablet__width-initial elementor-widget-mobile__width-initial elementor-absolute elementor-hidden-phone ekit-equal-height-disable elementor-invisible elementor-widget elementor-widget-elementskit-icon-box"
                    data-id="bc2fa8a" data-element_type="widget"
                    data-settings='{"_animation":"rotateInUpLeft","_animation_delay":800,"_position":"absolute"}'
                    data-widget_type="elementskit-icon-box.default">
                    <div class="elementor-widget-container">
                        <div class="ekit-wid-con">
                            <div class="elementskit-infobox text-center text- icon-top-align elementor-animation-">
                                <div class="elementskit-box-header">
                                    <div class="elementskit-info-box-icon">

                                        <img decoding="async" width="263" height="239"
                                            src="<?php echo e($image_background); ?>" class="attachment- size-"
                                            alt="<?php echo e($title); ?>" loading="lazy" title="<?php echo e($title); ?>" />
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
<?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/blocks/cms_service/styles/default.blade.php ENDPATH**/ ?>