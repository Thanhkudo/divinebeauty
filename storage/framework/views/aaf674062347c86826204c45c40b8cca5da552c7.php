

<?php
    $page_title = $taxonomy->json_params->title->{$locale} ?? ($taxonomy->title ?? null);
    $image_background = $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
    
    $title = $taxonomy->json_params->title->{$locale} ?? ($taxonomy->title ?? null);
    $brief = $taxonomy->json_params->brief->{$locale} ?? ($taxonomy->brief ?? null);
    $content = $taxonomy->json_params->content->{$locale} ?? ($taxonomy->content ?? null);
    $image = $taxonomy->json_params->image ?? null;
    $seo_title = $taxonomy->json_params->seo_title ?? $title;
    $seo_keyword = $taxonomy->json_params->seo_keyword ?? null;
    $seo_description = $taxonomy->json_params->seo_description ?? null;
    $seo_image = $image ?? null;
    
    $arr_id_taxonomy = explode(',', $taxonomy->sub_taxonomy_id);
    if ($list_taxonomy) {
        $taxonomy_child = $list_taxonomy->filter(function ($item, $key) use ($arr_id_taxonomy) {
            return in_array($item->id, $arr_id_taxonomy);
        });
    }
?>

<?php $__env->startSection('content'); ?>
<style>
    .elementor-278 .elementor-element.elementor-element-b53d988 .elementor-heading-title {
        color: var(--e-global-color-accent);
    }
    
</style>
    <div data-elementor-type="archive" data-elementor-id="278" class="elementor elementor-278 elementor-location-archive">
        <div class="elementor-element elementor-element-365968f e-con-boxed e-con" data-id="365968f"
            data-element_type="container"
            data-settings='{"background_background":"classic","background_motion_fx_motion_fx_scrolling":"yes","background_motion_fx_translateY_effect":"yes","background_motion_fx_translateY_speed":{"unit":"px","size":10,"sizes":[]},"content_width":"boxed","background_motion_fx_translateY_affectedRange":{"unit":"%","size":"","sizes":{"start":0,"end":100}},"background_motion_fx_devices":["desktop","tablet","mobile"]}'
            data-e-bg-lazyload=""
            style="background: url('<?php echo e($image_background); ?>');
            background-position: center;
            background-repeat: no-repeat;
            background-size: 100%;">
            <div class="e-con-inner">
                <div class="elementor-element elementor-element-98f209b elementor-invisible elementor-widget elementor-widget-heading"
                    data-id="98f209b" data-element_type="widget" data-settings='{"_animation":"fadeInUp"}'
                    data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h1 class="elementor-heading-title elementor-size-default">
                            <?php echo e($page_title); ?>

                        </h1>
                    </div>
                </div>
                <div class="elementor-element elementor-element-d2d406c elementor-widget__width-initial elementor-invisible elementor-widget elementor-widget-heading"
                    data-id="d2d406c" data-element_type="widget" data-settings='{"_animation":"fadeInDown"}'
                    data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h4 class="elementor-heading-title elementor-size-default">
                            <?php echo e($brief); ?>

                        </h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="elementor-element elementor-element-a4b0e69 e-con-boxed e-con" data-id="a4b0e69"
            data-element_type="container" data-settings='{"content_width":"boxed"}'>
            <div class="e-con-inner">
                <div class="elementor-element elementor-element-4b1bd98 e-con-full e-con" data-id="4b1bd98"
                    data-element_type="container" data-settings='{"content_width":"full"}'>


                    <?php if($taxonomy_child): ?>
                        <?php $__currentLoopData = $taxonomy_child; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_taxonomy): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php
                                $list_post = $posts->filter(function ($item, $key) use ($item_taxonomy) {
                                    return $item->taxonomy_id == $item_taxonomy->id;
                                });
                            ?>
                            
                            <?php if($loop->index != 1): ?>
                                <div class="elementor-element elementor-element-cc95237 animated-slow elementor-invisible elementor-widget elementor-widget-heading"
                                    data-id="cc95237" data-element_type="widget" data-settings='{"_animation":"fadeInLeft"}'
                                    data-widget_type="heading.default">
                                    <div class="elementor-widget-container">
                                        <h5 class="elementor-heading-title elementor-size-default">
                                            <?php echo e($item_taxonomy->json_params->brief->{$locale} ?? ($item_taxonomy->brief ?? '')); ?>

                                        </h5>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-b53d988 elementor-widget elementor-widget-heading"
                                    data-id="b53d988" data-element_type="widget" data-widget_type="heading.default">
                                    <div class="elementor-widget-container">
                                        <h2 class="elementor-heading-title elementor-size-default">
                                            <?php echo e($item_taxonomy->json_params->title->{$locale} ?? ($item_taxonomy->title ?? '')); ?>

                                        </h2>
                                    </div>
                                </div>
                                
                                <?php if(isset($list_post)): ?>
                                    
                                    <?php if(count($list_post) == 1): ?>
                                        <?php $__currentLoopData = $list_post; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val_post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php
                                                $title_post = $val_post->json_params->title->{$locale} ?? $val_post->title;
                                                $brief_post = $val_post->json_params->brief->{$locale} ?? $val_post->brief;
                                                $content_post = $val_post->json_params->content->{$locale} ?? $val_post->content;
                                                $image_post = $val_post->image_thumb != '' ? $val_post->image_thumb : ($val_post->image != '' ? $val_post->image : null);
                                                // $date = date('H:i d/m/Y', strtotime($val_post->created_at));
                                                $date = date('d', strtotime($val_post->created_at));
                                                $month = date('M', strtotime($val_post->created_at));
                                                $year = date('Y', strtotime($val_post->created_at));
                                                // Viet ham xu ly lay slug
                                                $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $val_post->taxonomy_alias ?? $val_post->taxonomy_title, $val_post->taxonomy_id);
                                                $alias_post = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $val_post->alias ?? $title, $val_post->id, 'detail', $val_post->taxonomy_title);
                                            ?>
                                            <div class="elementor-element elementor-element-01bf320 e-con-full e-con"
                                                data-id="01bf320" data-element_type="container"
                                                data-settings='{"background_background":"classic","content_width":"full"}'>
                                                <div class="elementor-element elementor-element-272e82c jkit-equal-height-disable elementor-widget elementor-widget-jkit_image_box"
                                                    data-id="272e82c" data-element_type="widget"
                                                    data-widget_type="jkit_image_box.default">
                                                    <div class="elementor-widget-container">
                                                        <div
                                                            class="jeg-elementor-kit jkit-image-box style-default elementor-animation- jeg_module_871__64c246fc6bb3e">
                                                            <div class="image-box-header elementor-animation-">
                                                                <img src="<?php echo e($image_post); ?>" />
                                                            </div>
                                                            <div class="image-box-body">
                                                                <div class="body-inner">
                                                                    <h3 class="body-title icon-position-before">
                                                                        <?php echo e($title_post); ?>

                                                                    </h3>
                                                                    <div class="body-description">
                                                                        <?php echo Str::limit($content_post, 120); ?>

                                                                    </div>
                                                                    <div class="body-button">
                                                                        <div class="button-box icon-position-after">
                                                                            <div class="button-wrapper">
                                                                                <a style="text-decoration: none"
                                                                                    href="<?php echo e($alias_post); ?>"><?php echo app('translator')->get('Read More'); ?><i
                                                                                        aria-hidden="true"
                                                                                        class="jki jki-right-arrow-light"></i></a>
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

                                        
                                        
                                    <?php elseif(count($list_post) > 1): ?>
                                        <div class="elementor-element elementor-element-71e83f5 elementor-widget elementor-widget-jet-listing-grid"
                                            data-id="71e83f5" data-element_type="widget"
                                            data-settings='{"columns":"2","columns_mobile":"1"}'
                                            data-widget_type="jet-listing-grid.default">
                                            <div class="elementor-widget-container">
                                                <div class="jet-listing-grid jet-listing">
                                                    <div class="jet-listing-grid__items grid-col-desk-2 grid-col-tablet-2 grid-col-mobile-1 jet-listing-grid--883"
                                                        data-nav='{"enabled":false,"type":null,"more_el":null,"query":[],"widget_settings":{"lisitng_id":883,"posts_num":4,"columns":2,"columns_tablet":2,"columns_mobile":1,"is_archive_template":"","post_status":["publish"],"use_random_posts_num":"","max_posts_num":9,"not_found_message":"No data was found","is_masonry":false,"equal_columns_height":"","use_load_more":"","load_more_id":"","load_more_type":"click","load_more_offset":{"unit":"px","size":0,"sizes":[]},"use_custom_post_types":"","custom_post_types":[],"hide_widget_if":"","carousel_enabled":"","slides_to_scroll":"1","arrows":"true","arrow_icon":"fa fa-angle-left","dots":"","autoplay":"true","autoplay_speed":5000,"infinite":"true","center_mode":"","effect":"slide","speed":500,"inject_alternative_items":"","injection_items":[{"_id":"7ef05a1","item":"883","item_num":6,"inject_once":"yes","item_colspan":"2"}],"scroll_slider_enabled":"","scroll_slider_on":["desktop","tablet","mobile"],"custom_query":false,"custom_query_id":"","_element_id":""}}'
                                                        data-page="1" data-pages="2" data-listing-source="posts"
                                                        data-listing-id="883" data-query-id="">
                                                        <?php $__currentLoopData = $list_post; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <?php
                                                                $title_post = $item_post->json_params->title->{$locale} ?? $item_post->title;
                                                                $brief_post = $item_post->json_params->brief->{$locale} ?? $item_post->brief;
                                                                $content_post = $item_post->json_params->content->{$locale} ?? $item_post->content;
                                                                $image_post = $item_post->image_thumb != '' ? $item_post->image_thumb : ($item_post->image != '' ? $item_post->image : null);
                                                                // $date = date('H:i d/m/Y', strtotime($item_post->created_at));
                                                                $date = date('d', strtotime($item_post->created_at));
                                                                $month = date('M', strtotime($item_post->created_at));
                                                                $year = date('Y', strtotime($item_post->created_at));
                                                                // Viet ham xu ly lay slug
                                                                $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item_post->taxonomy_alias ?? $item_post->taxonomy_title, $item_post->taxonomy_id);
                                                                $alias_post = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item_post->alias ?? $title, $item_post->id, 'detail', $item_post->taxonomy_title);
                                                            ?>
                                                            <div class="jet-listing-grid__item jet-listing-dynamic-post-875"
                                                                data-post-id="875">
                                                                <div class="jet-engine-listing-overlay-wrap"
                                                                    data-url="<?php echo e($alias_post); ?>">
                                                                    <div data-elementor-type="jet-listing-items"
                                                                        data-elementor-id="883"
                                                                        class="elementor elementor-883">
                                                                        <div class="elementor-element elementor-element-f1331db e-con-full e-con"
                                                                            data-id="f1331db" data-element_type="container"
                                                                            data-settings='{"background_background":"classic","content_width":"full"}'>
                                                                            <div class="elementor-element elementor-element-8174a2e elementor-widget elementor-widget-image"
                                                                                data-id="8174a2e" data-element_type="widget"
                                                                                data-widget_type="image.default">
                                                                                <div class="elementor-widget-container">
                                                                                    <img src="<?php echo e($image_post); ?>"
                                                                                        title="<?php echo e($title_post); ?>"
                                                                                        alt="<?php echo e($title_post); ?>"
                                                                                        loading="lazy" />
                                                                                </div>
                                                                            </div>
                                                                            <div class="elementor-element elementor-element-83bd34a e-con-full e-con"
                                                                                data-id="83bd34a"
                                                                                data-element_type="container"
                                                                                data-settings='{"content_width":"full","background_background":"classic"}'>
                                                                                <div class="elementor-element elementor-element-dd25944 elementor-widget elementor-widget-jet-listing-dynamic-field"
                                                                                    data-id="dd25944"
                                                                                    data-element_type="widget"
                                                                                    data-widget_type="jet-listing-dynamic-field.default">
                                                                                    <div
                                                                                        class="elementor-widget-container">
                                                                                        <div
                                                                                            class="jet-listing jet-listing-dynamic-field display-inline">
                                                                                            <div
                                                                                                class="jet-listing-dynamic-field__inline-wrap">
                                                                                                <h3
                                                                                                    class="jet-listing-dynamic-field__content">
                                                                                                    <?php echo e($title_post); ?>

                                                                                                </h3>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="elementor-element elementor-element-57ddac1 elementor-widget elementor-widget-jet-listing-dynamic-field"
                                                                                    data-id="57ddac1"
                                                                                    data-element_type="widget"
                                                                                    data-widget_type="jet-listing-dynamic-field.default">
                                                                                    <div
                                                                                        class="elementor-widget-container">
                                                                                        <div
                                                                                            class="jet-listing jet-listing-dynamic-field display-inline">
                                                                                            <div
                                                                                                class="jet-listing-dynamic-field__inline-wrap">
                                                                                                <p
                                                                                                    class="jet-listing-dynamic-field__content">
                                                                                                    <?php echo e(Str::limit($content_post, 100)); ?>

                                                                                                </p>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="elementor-element elementor-element-4f726c6 elementor-widget elementor-widget-button"
                                                                                    data-id="4f726c6"
                                                                                    data-element_type="widget"
                                                                                    data-widget_type="button.default">
                                                                                    <div
                                                                                        class="elementor-widget-container">
                                                                                        <div
                                                                                            class="elementor-button-wrapper">
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
                                                                                                        class="elementor-button-text"><?php echo app('translator')->get('Read More'); ?></span>
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

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <?php endif; ?>
                                <?php endif; ?>
                            <?php else: ?>
                                <div class="elementor-element elementor-element-cc95237 animated-slow elementor-invisible elementor-widget elementor-widget-heading"
                                    data-id="cc95237" data-element_type="widget"
                                    data-settings='{"_animation":"fadeInLeft"}' data-widget_type="heading.default">
                                    <div class="elementor-widget-container">
                                        <h5 class="elementor-heading-title elementor-size-default">
                                            <?php echo e($item_taxonomy->json_params->brief->{$locale} ?? ($item_taxonomy->brief ?? '')); ?>

                                        </h5>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-b53d988 elementor-widget elementor-widget-heading"
                                    data-id="b53d988" data-element_type="widget" data-widget_type="heading.default">
                                    <div class="elementor-widget-container">
                                        <h2 class="elementor-heading-title elementor-size-default">
                                            <?php echo e($item_taxonomy->json_params->title->{$locale} ?? ($item_taxonomy->title ?? '')); ?>

                                        </h2>
                                    </div>
                                </div>

                                
                                

                                <?php if(isset($list_post)): ?>
                                    <div class="elementor-element elementor-element-2e9c597 elementor-widget elementor-widget-jet-listing-grid"
                                        data-id="2e9c597" data-element_type="widget"
                                        data-settings='{"columns":3,"columns_mobile":"1"}'
                                        data-widget_type="jet-listing-grid.default">
                                        <div class="elementor-widget-container">
                                            <div class="jet-listing-grid jet-listing">
                                                <div class="jet-listing-grid__items grid-col-desk-3 grid-col-tablet-3 grid-col-mobile-1 jet-listing-grid--883"
                                                    data-nav='{"enabled":false,"type":null,"more_el":null,"query":[],"widget_settings":{"lisitng_id":883,"posts_num":3,"columns":3,"columns_tablet":3,"columns_mobile":1,"is_archive_template":"","post_status":["publish"],"use_random_posts_num":"","max_posts_num":9,"not_found_message":"No data was found","is_masonry":false,"equal_columns_height":"","use_load_more":"","load_more_id":"","load_more_type":"click","load_more_offset":{"unit":"px","size":0,"sizes":[]},"use_custom_post_types":"","custom_post_types":[],"hide_widget_if":"","carousel_enabled":"","slides_to_scroll":"1","arrows":"true","arrow_icon":"fa fa-angle-left","dots":"","autoplay":"true","autoplay_speed":5000,"infinite":"true","center_mode":"","effect":"slide","speed":500,"inject_alternative_items":"","injection_items":[{"_id":"7ef05a1","item":"883","item_num":6,"inject_once":"yes","item_colspan":"2"}],"scroll_slider_enabled":"","scroll_slider_on":["desktop","tablet","mobile"],"custom_query":false,"custom_query_id":"","_element_id":""}}'
                                                    data-page="1" data-pages="3" data-listing-source="posts"
                                                    data-listing-id="883" data-query-id="">
                                                    <?php $__currentLoopData = $list_post; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <?php
                                                            $title_post = $item_post->json_params->title->{$locale} ?? $item_post->title;
                                                            $brief_post = $item_post->json_params->brief->{$locale} ?? $item_post->brief;
                                                            $content_post = $item_post->json_params->content->{$locale} ?? $item_post->content;
                                                            $image_post = $item_post->image_thumb != '' ? $item_post->image_thumb : ($item_post->image != '' ? $item_post->image : null);
                                                            // $date = date('H:i d/m/Y', strtotime($item_post->created_at));
                                                            $date = date('d', strtotime($item_post->created_at));
                                                            $month = date('M', strtotime($item_post->created_at));
                                                            $year = date('Y', strtotime($item_post->created_at));
                                                            // Viet ham xu ly lay slug
                                                            $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item_post->taxonomy_alias ?? $item_post->taxonomy_title, $item_post->taxonomy_id);
                                                            $alias_post = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item_post->alias ?? $title, $item_post->id, 'detail', $item_post->taxonomy_title);
                                                            if ($loop->index > 2) {
                                                                break;
                                                            }
                                                        ?>
                                                        <div class="jet-listing-grid__item jet-listing-dynamic-post-872"
                                                            data-post-id="872">
                                                            <div class="jet-engine-listing-overlay-wrap"
                                                                data-url="<?php echo e($alias_post); ?>">
                                                                <div data-elementor-type="jet-listing-items"
                                                                    data-elementor-id="883" class="elementor elementor-883">
                                                                    <div class="elementor-element elementor-element-f1331db e-con-full e-con"
                                                                        data-id="f1331db" data-element_type="container"
                                                                        data-settings='{"background_background":"classic","content_width":"full"}'>
                                                                        <div class="elementor-element elementor-element-8174a2e elementor-widget elementor-widget-image"
                                                                            data-id="8174a2e" data-element_type="widget"
                                                                            data-widget_type="image.default ">
                                                                            <div class="elementor-widget-container">
                                                                                <img src="<?php echo e($image_post); ?>"
                                                                                    title="<?php echo e($title_post); ?>"
                                                                                    alt="<?php echo e($title_post); ?>"
                                                                                    loading="lazy" />
                                                                            </div>
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
                                                                                                <?php echo e($title_post); ?>

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
                                                                                                <?php echo e(Str::limit($content_post, 100)); ?>

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
                                                                                                    class="elementor-button-text"><?php echo app('translator')->get('Read More'); ?></span>
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

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-71e83f5 elementor-widget elementor-widget-jet-listing-grid"
                                        data-id="71e83f5" data-element_type="widget"
                                        data-settings='{"columns":"2","columns_mobile":"1"}'
                                        data-widget_type="jet-listing-grid.default">
                                        <div class="elementor-widget-container">
                                            <div class="jet-listing-grid jet-listing">
                                                <div class="jet-listing-grid__items grid-col-desk-2 grid-col-tablet-2 grid-col-mobile-1 jet-listing-grid--883"
                                                    data-nav='{"enabled":false,"type":null,"more_el":null,"query":[],"widget_settings":{"lisitng_id":883,"posts_num":4,"columns":2,"columns_tablet":2,"columns_mobile":1,"is_archive_template":"","post_status":["publish"],"use_random_posts_num":"","max_posts_num":9,"not_found_message":"No data was found","is_masonry":false,"equal_columns_height":"","use_load_more":"","load_more_id":"","load_more_type":"click","load_more_offset":{"unit":"px","size":0,"sizes":[]},"use_custom_post_types":"","custom_post_types":[],"hide_widget_if":"","carousel_enabled":"","slides_to_scroll":"1","arrows":"true","arrow_icon":"fa fa-angle-left","dots":"","autoplay":"true","autoplay_speed":5000,"infinite":"true","center_mode":"","effect":"slide","speed":500,"inject_alternative_items":"","injection_items":[{"_id":"7ef05a1","item":"883","item_num":6,"inject_once":"yes","item_colspan":"2"}],"scroll_slider_enabled":"","scroll_slider_on":["desktop","tablet","mobile"],"custom_query":false,"custom_query_id":"","_element_id":""}}'
                                                    data-page="1" data-pages="2" data-listing-source="posts"
                                                    data-listing-id="883" data-query-id="">
                                                    <?php $__currentLoopData = $list_post; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <?php
                                                            $title_post = $item_post->json_params->title->{$locale} ?? $item_post->title;
                                                            $brief_post = $item_post->json_params->brief->{$locale} ?? $item_post->brief;
                                                            $content_post = $item_post->json_params->content->{$locale} ?? $item_post->content;
                                                            $image_post = $item_post->image_thumb != '' ? $item_post->image_thumb : ($item_post->image != '' ? $item_post->image : null);
                                                            // $date = date('H:i d/m/Y', strtotime($item_post->created_at));
                                                            $date = date('d', strtotime($item_post->created_at));
                                                            $month = date('M', strtotime($item_post->created_at));
                                                            $year = date('Y', strtotime($item_post->created_at));
                                                            // Viet ham xu ly lay slug
                                                            $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item_post->taxonomy_alias ?? $item_post->taxonomy_title, $item_post->taxonomy_id);
                                                            $alias_post = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item_post->alias ?? $title, $item_post->id, 'detail', $item_post->taxonomy_title);
                                                            if ($loop->index <= 2) {
                                                                continue;
                                                            }
                                                        ?>

                                                        <div class="jet-listing-grid__item jet-listing-dynamic-post-872"
                                                            data-post-id="872">
                                                            <div class="jet-engine-listing-overlay-wrap"
                                                                data-url="<?php echo e($alias_post); ?>">
                                                                <div data-elementor-type="jet-listing-items"
                                                                    data-elementor-id="883" class="elementor elementor-883">
                                                                    <div class="elementor-element elementor-element-f1331db e-con-full e-con"
                                                                        data-id="f1331db" data-element_type="container"
                                                                        data-settings='{"background_background":"classic","content_width":"full"}'>
                                                                        <div class="elementor-element elementor-element-8174a2e elementor-widget elementor-widget-image"
                                                                            data-id="8174a2e" data-element_type="widget"
                                                                            data-widget_type="image.default">
                                                                            <div class="elementor-widget-container">
                                                                                <img src="<?php echo e($image_post); ?>"
                                                                                    title="<?php echo e($title_post); ?>"
                                                                                    alt="<?php echo e($title_post); ?>"
                                                                                    loading="lazy" />
                                                                            </div>
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
                                                                                                <?php echo e($title_post); ?>

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
                                                                                                <?php echo e(Str::limit($content_post, 100)); ?>

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
                                                                                                    class="elementor-button-text"><?php echo app('translator')->get('Read More'); ?></span>
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
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php endif; ?>
                            <?php endif; ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
    
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/pages/service/default.blade.php ENDPATH**/ ?>