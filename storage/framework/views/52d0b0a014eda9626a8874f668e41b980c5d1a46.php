

<?php
    $page_title = $page->json_params->title->$locale ?? ($page->title ?? $page->name);
    $description = $page->json_params->description->{$locale} ?? ($page->description ?? '');
    $content = $page->json_params->content->{$locale} ?? ($page->content ?? '');
    $image = $page->json_params->og_image != '' ? $page->json_params->og_image: $web_information->image->background_breadcrumbs;
?>


<?php $__env->startSection('content'); ?>
    <main id="content" class="site-main post-98 page type-page status-publish hentry" role="main">
        <div class="page-content">
            <div data-elementor-type="wp-page" data-elementor-id="98" class="elementor elementor-98">
                <div class="elementor-element elementor-element-7904b915 e-con-boxed e-con" data-id="7904b915"
                    data-element_type="container"
                    data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;background_motion_fx_motion_fx_scrolling&quot;:&quot;yes&quot;,&quot;background_motion_fx_translateY_effect&quot;:&quot;yes&quot;,&quot;background_motion_fx_translateY_speed&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:10,&quot;sizes&quot;:[]},&quot;content_width&quot;:&quot;boxed&quot;,&quot;background_motion_fx_translateY_affectedRange&quot;:{&quot;unit&quot;:&quot;%&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:{&quot;start&quot;:0,&quot;end&quot;:100}},&quot;background_motion_fx_devices&quot;:[&quot;desktop&quot;,&quot;tablet&quot;,&quot;mobile&quot;]}"
                    data-e-bg-lazyload=""
                    style="background: url('<?php echo e($image); ?>');
                    background-position: center center;
                    background-repeat: repeat;
                    background-size: 60% auto;">
                    <div class="e-con-inner">
                        <div class="elementor-element elementor-element-2444e205 elementor-invisible elementor-widget elementor-widget-heading"
                            data-id="2444e205" data-element_type="widget"
                            data-settings="{&quot;_animation&quot;:&quot;fadeInUp&quot;}"
                            data-widget_type="heading.default">
                            <div class="elementor-widget-container">
                                <style>
                                    /*! elementor - v3.11.1 - 15-02-2023 */
                                    .elementor-heading-title {
                                        padding: 0;
                                        margin: 0;
                                        line-height: 1
                                    }

                                    .elementor-widget-heading .elementor-heading-title[class*=elementor-size-]>a {
                                        color: inherit;
                                        font-size: inherit;
                                        line-height: inherit
                                    }

                                    .elementor-widget-heading .elementor-heading-title.elementor-size-small {
                                        font-size: 15px
                                    }

                                    .elementor-widget-heading .elementor-heading-title.elementor-size-medium {
                                        font-size: 19px
                                    }

                                    .elementor-widget-heading .elementor-heading-title.elementor-size-large {
                                        font-size: 29px
                                    }

                                    .elementor-widget-heading .elementor-heading-title.elementor-size-xl {
                                        font-size: 39px
                                    }

                                    .elementor-widget-heading .elementor-heading-title.elementor-size-xxl {
                                        font-size: 59px
                                    }
                                </style>
                                <h1 class="elementor-heading-title elementor-size-default"><?php echo e($page_title); ?></h1>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-1fd11388 elementor-widget__width-initial elementor-invisible elementor-widget elementor-widget-heading"
                            data-id="1fd11388" data-element_type="widget"
                            data-settings="{&quot;_animation&quot;:&quot;fadeInDown&quot;}"
                            data-widget_type="heading.default">
                            <div class="elementor-widget-container">
                                <h4 class="elementor-heading-title elementor-size-default"><?php echo e($description); ?></h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/pages/aboutus/index.blade.php ENDPATH**/ ?>