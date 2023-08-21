

<?php
    $title = $detail->json_params->title->{$locale} ?? $detail->title;
    $brief = $detail->json_params->brief->{$locale} ?? null;
    $content = $detail->json_params->content->{$locale} ?? null;
    $description = $detail->json_params->description->{$locale} ?? null;
    $image = $detail->image != '' ? $detail->image : null;
    $image_thumb = $detail->image_thumb != '' ? $detail->image_thumb : null;
    $date = date('H:i d/m/Y', strtotime($detail->created_at));
    
    // For taxonomy
    $taxonomy_json_params = json_decode($detail->taxonomy_json_params);
    $taxonomy_title = $taxonomy_json_params->title->{$locale} ?? $detail->taxonomy_title;
    $image_background = $taxonomy_json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? null);
    $taxonomy_alias = Str::slug($taxonomy_title);
    $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $taxonomy_alias, $detail->taxonomy_id);
    
    $seo_title = $detail->json_params->seo_title ?? $title;
    $seo_keyword = $detail->json_params->seo_keyword ?? null;
    $seo_description = $detail->json_params->seo_description ?? $brief;
    $seo_image = $image ?? ($image_thumb ?? null);
    
?>

<?php $__env->startPush('style'); ?>
<?php $__env->stopPush(); ?>

<?php $__env->startPush('schema'); ?>
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>
    
    <div data-elementor-type="single-post" data-elementor-id="274"
        class="elementor elementor-274 elementor-location-single post-871 treatments type-treatments status-publish has-post-thumbnail hentry treatment-categories-face">

        <div class="elementor-element elementor-element-1e3f247 e-con-boxed e-con" data-id="1e3f247"
            data-element_type="container"
            data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;background_motion_fx_motion_fx_scrolling&quot;:&quot;yes&quot;,&quot;background_motion_fx_translateY_effect&quot;:&quot;yes&quot;,&quot;background_motion_fx_translateY_speed&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:10,&quot;sizes&quot;:[]},&quot;content_width&quot;:&quot;boxed&quot;,&quot;background_motion_fx_translateY_affectedRange&quot;:{&quot;unit&quot;:&quot;%&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:{&quot;start&quot;:0,&quot;end&quot;:100}},&quot;background_motion_fx_devices&quot;:[&quot;desktop&quot;,&quot;tablet&quot;,&quot;mobile&quot;]}"
            data-e-bg-lazyload=""
            style="background: url('<?php echo e($image_background); ?>');
            background-position: bottom center;
            background-repeat: no-repeat;
            background-size: cover;">
            <div class="e-con-inner">
                <div class="elementor-element elementor-element-a15f91e elementor-invisible elementor-widget elementor-widget-heading"
                    data-id="a15f91e" data-element_type="widget"
                    data-settings="{&quot;_animation&quot;:&quot;fadeInUp&quot;}" data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h1 class="elementor-heading-title elementor-size-default"><?php echo e($title); ?></h1>
                    </div>
                </div>
                <div class="elementor-element elementor-element-85f6ba7 elementor-widget__width-initial elementor-invisible elementor-widget elementor-widget-heading"
                    data-id="85f6ba7" data-element_type="widget"
                    data-settings="{&quot;_animation&quot;:&quot;fadeInDown&quot;}" data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h4 class="elementor-heading-title elementor-size-default"><?php echo e($brief); ?></h4>
                    </div>
                </div>
            </div>
        </div>

        <div class="elementor-element elementor-element-9899ed4 e-con-boxed e-con" data-id="9899ed4"
            data-element_type="container" data-settings="{&quot;content_width&quot;:&quot;boxed&quot;}">
            <div class="e-con-inner">
                <div class="elementor-element elementor-element-ce313ee e-con-full e-con" data-id="ce313ee"
                    data-element_type="container" data-settings="{&quot;content_width&quot;:&quot;full&quot;}">

                    <div class="elementor-element elementor-element-0422791 animated-slow elementor-invisible elementor-widget elementor-widget-heading"
                        data-id="0422791" data-element_type="widget"
                        data-settings="{&quot;_animation&quot;:&quot;fadeInLeft&quot;}" data-widget_type="heading.default">
                        <div class="elementor-widget-container">
                            <h5 class="elementor-heading-title elementor-size-default"><?php echo e($description); ?></h5>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-043b828 elementor-invisible elementor-widget elementor-widget-heading"
                        data-id="043b828" data-element_type="widget"
                        data-settings="{&quot;_animation&quot;:&quot;fadeInUp&quot;,&quot;_animation_delay&quot;:600}"
                        data-widget_type="heading.default">
                        <div class="elementor-widget-container">
                            <h2 class="elementor-heading-title elementor-size-default"><?php echo e($title); ?></h2>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-64daf4c elementor-widget elementor-widget-jet-listing-dynamic-field"
                        data-id="64daf4c" data-element_type="widget" data-widget_type="jet-listing-dynamic-field.default">
                        <div class="elementor-widget-container">
                            <div class="jet-listing jet-listing-dynamic-field display-inline">
                                <div class="jet-listing-dynamic-field__inline-wrap">
                                    <div class="jet-listing-dynamic-field__content">
                                        <?php echo $content; ?>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="elementor-element elementor-element-44e9144 e-con-full elementor-invisible e-con"
                    data-id="44e9144" data-element_type="container"
                    data-settings="{&quot;animation&quot;:&quot;fadeInRight&quot;,&quot;content_width&quot;:&quot;full&quot;}">

                    <div class="elementor-element elementor-element-33d585f elementor-widget elementor-widget-jet-image-comparison"
                        data-id="33d585f" data-element_type="widget"
                        data-settings="{&quot;slides_to_show&quot;:&quot;1&quot;}"
                        data-widget_type="jet-image-comparison.default">
                        <div class="elementor-widget-container">
                            <div class="elementor-jet-image-comparison jet-elements">
                                <div class="jet-image-comparison">
                                    <div class="jet-image-comparison__instance elementor-slick-slider"
                                        data-settings='{"slidesToShow":{"desktop":1},"autoplaySpeed":5000,"autoplay":true,"pauseOnHover":false,"speed":500,"arrows":false,"dots":true,"slidesToScroll":1,"prevArrow":".jet-image-comparison__prev-arrow-33d585f","nextArrow":".jet-image-comparison__next-arrow-33d585f","rtl":false}'
                                        dir="ltr">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php if(isset($detail->json_params->gallery_image)): ?>
                        <?php $__currentLoopData = $detail->json_params->gallery_image; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_img): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="elementor-element elementor-element-3761774 elementor-widget elementor-widget-image"
                                data-id="3761774" data-element_type="widget" data-widget_type="image.default">
                                <div class="elementor-widget-container">
                                    <img width="800" height="534" src="<?php echo e($item_img); ?>"
                                        class="attachment-large size-large wp-image-1159" alt="" decoding="async"
                                        loading="lazy" srcset="<?php echo e($item_img); ?>" sizes="(max-width: 800px) 100vw, 800px" />
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>

    
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/pages/service/detail.blade.php ENDPATH**/ ?>