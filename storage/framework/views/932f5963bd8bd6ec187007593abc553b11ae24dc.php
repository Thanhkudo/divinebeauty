<?php
    $title = $detail->json_params->title->{$locale} ?? $detail->title;
    $brief = $detail->json_params->brief->{$locale} ?? 'Đang cập nhật';
    $price = $detail->json_params->price ?? null;
    $description = $detail->json_params->description->{$locale} ?? null;
    $content = $detail->json_params->content->{$locale} ?? null;
    $information = $detail->json_params->information->{$locale} ?? null;
    $using = $detail->json_params->using->{$locale} ?? null;
    $image = $detail->image != '' ? $detail->image : null;
    $image_thumb = $detail->image_thumb != '' ? $detail->image_thumb : null;
    $date = date('H:i d/m/Y', strtotime($detail->created_at));
    // For taxonomy
    $taxonomy_json_params = json_decode($detail->taxonomy_json_params);
    $taxonomy_title = $taxonomy_json_params->title->{$locale} ?? $detail->taxonomy_title;
    $taxonomy_brief = $taxonomy_json_params->brief->{$locale} ?? '';
    $image_background = $web_information->image->background_breadcrumbs ?? null;
    $taxonomy_alias = Str::slug($taxonomy_title);
    $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['product'], $taxonomy_alias, $detail->taxonomy_id);

    $seo_title = $detail->json_params->seo_title ?? $title;
    $seo_keyword = $detail->json_params->seo_keyword ?? null;
    $seo_description = $detail->json_params->seo_description ?? $brief;
    $seo_image = $image ?? ($image_thumb ?? null);

    $image_product_screen = null;
    if ($agent->isDesktop() && $image != null) {
        $image_product_screen = $image;
    } else {
        $image_product_screen = $image_thumb;
    }
    $params['status'] = App\Consts::TAXONOMY_STATUS['active'];
    $params['taxonomy_id'] = $detail->taxonomy_id;
    $params['is_type'] = App\Consts::TAXONOMY['product'];
    $params['different_id'] = $detail->id;
    $rows = App\Http\Services\ContentService::getCmsPost_ramdom($params)
        ->inRandomOrder()
        ->limit(4)
        ->get();

?>

<?php $__env->startPush('style'); ?>
    <link rel='stylesheet' href="<?php echo e(asset('themes/frontend/divine/css/bootstrap.min.css')); ?>" media='all' />
    <link rel="stylesheet" href="<?php echo e(asset('themes/frontend/divine/css/slick.css')); ?>" type="text/css" />
    <link rel="stylesheet" href="<?php echo e(asset('themes/frontend/divine/css/slick-theme.css')); ?>" type="text/css" />
    <style>
        .e-con>.e-con-inner.elementor-98 {
            padding: 103px;
        }

        .e-con>.e-con-inner.pt-91 {
            padding-top: 91px
        }

        .taxonomy_title {
            color: #555;
            font-family: Marcellus;
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 2px;
            text-transform: uppercase;
        }

        .mt-25 {
            margin-top: 25px
        }

        .title.text-dark {
            color: #000;
            font-size: 36px;
            font-weight: 400;
            margin: 0;
        }

        .brief {
            color: #000;
            font-family: Montserrat;
            font-size: 16px;
            font-weight: 400;
        }

        .box-type {
            margin-top: 55px;
            color: #000;
            font-family: Montserrat;
            font-size: 16px;
            font-weight: 600;
        }

        .box-type a {
            text-decoration: none;
            font-size: 14px;
            font-weight: 400;
        }

        .box_slide_image {
            padding-right: 41px;
        }

        .border,
        .rounded-2 img {
            border-radius: 10px;
            border: 2px solid transparent;
        }

        .slick-track {
            display: flex;
            align-items: center
        }

        .slider-nav .slick-current img {
            border: 2px solid #E4B125;

        }

        .nav-item a {
            text-decoration: none;
            color: #616161;
            font-size: 16px;
            font-weight: 500;
            text-transform: uppercase;
        }

        .nav-pills .nav-link.active,
        .nav-pills .show>.nav-link {
            color: #000;
            font-size: 18px;
            font-weight: 600;
            background: unset;
            border-bottom: 3px solid #000;
        }

        .nav-pills .nav-link {
            padding: 10px;
            border-radius: 0px;
        }

        .line {
            width: 100%;
            height: 1px;
            background: #EFEFEF;
        }

        .nav-justified .nav-item {
            flex-basis: unset;
            -webkit-box-flex: unset;
            flex-grow: unset;
            text-align: left;
            margin-right: 40px;
        }

        .page-content a.link_title {
            text-decoration: none;
            color: #000;
            font-size: 20px;
            font-weight: 400;
            text-transform: uppercase;
        }
        .product-title a.link_title{
            font-size: 16px;
            font-weight: 600;
            text-align: center;
            display: inline-block
        }
        .page-content a.link_title:hover {

            color: var(--e-global-color-accent);
        }

        .elementor-kit-12 h2 {
            font-size: 32px;
            font-weight: 400;
        }
        .related-posts{
            position: relative;
            border-radius: 10px;
            padding: 40px 80px;
            z-index: 2;
        }
        .box_item{
            position: relative;
            z-index: 2;
        }

        .bg_detail{
            border-radius: 10px;
            position: absolute;
            z-index: 1;
            left: 0px;
            top: 0px;
            display: block;
            width: 100%;
            height: 100%;
            opacity: 0.5;
            background: #FCF6E7;
        }
        @media (max-width: 767.98px) {
            .nav-justified .nav-item {
                flex-basis: 0;
                -webkit-box-flex: 1;
                flex-grow: 1;
                text-align: center;
            }
            .related-posts{
                padding: 40px 10px;
            }
        }
    </style>
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>
    <div data-elementor-type="archive" data-elementor-id="278" class="elementor elementor-278 elementor-location-archive">
        <div class="elementor-element elementor-element-365968f e-con-boxed e-con" data-id="365968f"
            data-element_type="container"
            data-settings='{"background_background":"classic","background_motion_fx_motion_fx_scrolling":"yes","background_motion_fx_translateY_effect":"yes","background_motion_fx_translateY_speed":{"unit":"px","size":10,"sizes":[]},"content_width":"boxed","background_motion_fx_translateY_affectedRange":{"unit":"%","size":"","sizes":{"start":0,"end":100}},"background_motion_fx_devices":["desktop","tablet","mobile"]}'
            data-e-bg-lazyload=""
            style="background: url('<?php echo e($image_background); ?>');
        background-position: bottom center;
        background-repeat: no-repeat;
        background-size: cover;">
            <div class="e-con-inner elementor-98 ">
            </div>
        </div>
    </div>

    <section class="py-4">
        <div class="container">
            <div class="row gx-5">
                <aside class="col-lg-6 box_slide_image mb-3 mb-lg-0">
                    <div class="border rounded-4  d-flex justify-content-center align-items-center slider slider-for">
                        <a data-fslightbox="mygalley" class="rounded-4"data-type="image" href="<?php echo e($image); ?>">
                            <img style="max-width: 100%; max-height: 100vh; margin: auto;" class="rounded-4 fit"
                                src="<?php echo e($image); ?>" />
                        </a>
                        <?php if(isset($detail->json_params->gallery_image)): ?>
                            <?php $__currentLoopData = $detail->json_params->gallery_image; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $img): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <a data-fslightbox="mygalley" class="rounded-4" data-type="image"
                                    href="<?php echo e($img); ?>">
                                    <img style="max-width: 100%; max-height: 100vh; margin: auto;" class="rounded-4 fit"
                                        src="<?php echo e($img); ?>" />
                                </a>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                    </div>
                    <div class="d-flex justify-content-center  slider slider-nav mt-25">
                        <div data-fslightbox="mygalley" class="mx-1 rounded-2" data-type="image" class="item-thumb">
                            <img width="150" height="150" class="rounded-2" src="<?php echo e($image); ?>" />
                        </div>
                        <?php if(isset($detail->json_params->gallery_image)): ?>
                            <?php $__currentLoopData = $detail->json_params->gallery_image; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $img): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div data-fslightbox="mygalley" class="mx-1 rounded-2" data-type="image" class="item-thumb">
                                    <img width="150" height="150" class="rounded-2" src="<?php echo e($img); ?>" />
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                    </div>
                </aside>
                <main class="col-lg-6">
                    <div class="ps-lg-3">
                        <div class="taxonomy_title">
                            <?php echo e($taxonomy_title); ?>

                        </div>
                        <h4 class="title text-dark">
                            <?php echo e($title); ?>

                        </h4>
                        <div class="mt-25">
                            <span class="salary"><?php echo e(number_format($price, '0', '', '.')); ?>

                                <?php echo e(App\Consts::CURRENCY_UNIT['vi']); ?></span>
                        </div>
                        <?php if($image_thumb != null): ?>
                            <div class="mt-25 box-img">
                                <img src="<?php echo e($image_thumb); ?>" alt="<?php echo e($title); ?>">
                            </div>
                        <?php endif; ?>
                        <div class="mt-25">
                            <p class="brief"><?php echo e($brief); ?></p>
                        </div>
                        
                        <div class="elementor-element elementor-element-7c9e60c elementor-widget elementor-widget-button"
                            data-id="7c9e60c" data-element_type="widget" data-widget_type="button.default">
                            <div class="elementor-widget-container">
                                <div class="elementor-button-wrapper">
                                    <a href="/contact" class="elementor-button-link elementor-button elementor-size-sm"
                                        role="button">
                                        <span class="elementor-button-content-wrapper">
                                            <span class="elementor-button-text">Contacts Us</span>
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <p class="box-type">
                            <?php echo app('translator')->get('Trademark: '); ?> <a href="<?php echo e($alias_category); ?>"><?php echo e($taxonomy_title); ?></a>
                        </p>



                    </div>
                </main>
            </div>
        </div>
    </section>
    <section class="py-4 mt-lg-4">
        <div class="container">
            <div class="row gx-4 ">
                <div class="col-lg-9 ">
                    <div class="rounded-2">
                        <!-- Pills navs -->
                        <div class="nav nav-pills nav-justified" id="ex1" role="tablist">
                            <?php if($description != null): ?>
                                <div class="nav-item" role="presentation">
                                    <a class="nav-link  active" id="tab-1" data-mdb-toggle="pill" href="#pills-1"
                                        role="tab" aria-controls="pills-1" aria-selected="true"><?php echo app('translator')->get('Description'); ?></a>
                                </div>
                            <?php endif; ?>
                            <?php if($content != null): ?>
                                <div class="nav-item" role="presentation">
                                    <a class="nav-link" id="tab-2" data-mdb-toggle="pill" href="#pills-2"
                                        role="tab" aria-controls="pills-2"
                                        aria-selected="false"><?php echo app('translator')->get('Product Details'); ?></a>
                                </div>
                            <?php endif; ?>
                            <?php if($information != null): ?>
                                <div class="nav-item" role="presentation">
                                    <a class="nav-link" id="tab-3" data-mdb-toggle="pill" href="#pills-3"
                                        role="tab" aria-controls="pills-3"
                                        aria-selected="false"><?php echo app('translator')->get('Information'); ?></a>
                                </div>
                            <?php endif; ?>
                            <?php if($using != null): ?>
                                <div class="nav-item" role="presentation">
                                    <a class="nav-link" id="tab-4" data-mdb-toggle="pill" href="#pills-4"
                                        role="tab" aria-controls="pills-4"
                                        aria-selected="false"><?php echo app('translator')->get('How to you'); ?></a>
                                </div>
                            <?php endif; ?>
                        </div>
                        <!-- Pills navs -->
                    </div>
                </div>
                <hr class="line mb-3">
                <div class="col-lg-9">
                    <div class="rounded-2">
                        <!-- Pills content -->
                        <div class="tab-content" id="content">

                            <?php if($description != null): ?>
                                <div class="tab-pane fade show active" id="pills-1" role="tabpanel"
                                    aria-labelledby="tab-1">
                                    <?php echo $description; ?>

                                </div>
                            <?php endif; ?>
                            <?php if($content != null): ?>
                                <div class="tab-pane fade mb-2" id="pills-2" role="tabpanel" aria-labelledby="tab-2">
                                    <?php echo $content; ?>

                                </div>
                            <?php endif; ?>
                            <?php if($information != null): ?>
                                <div class="tab-pane fade mb-2" id="pills-3" role="tabpanel" aria-labelledby="tab-3">
                                    <?php echo $information; ?>

                                </div>
                            <?php endif; ?>
                            <?php if($using != null): ?>
                                <div class="tab-pane fade mb-2" id="pills-4" role="tabpanel" aria-labelledby="tab-4">
                                    <?php echo $using; ?>

                                </div>
                            <?php endif; ?>



                        </div>
                        <!-- Pills content -->
                    </div>
                </div>

            </div>
        </div>
    </section>
    
    <?php if(isset($relatedPosts) && count($relatedPosts) > 0): ?>
        <div class="container elementor-kit-12">
            <h2 class="title-widget text-capitalize mt-5"><?php echo app('translator')->get('products commonly used together'); ?></h2>

            <div class="related-posts mt-5">
                <div class="bg_detail"></div>
                <div class="box_item row">
                    <?php $__currentLoopData = $relatedPosts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php
                        $title_item = $item->json_params->title->{$locale} ?? $item->title;
                        $brief = $item->json_params->brief->{$locale} ?? $item->brief;
                        $price = $item->json_params->price ?? '';
                        $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
                        $date = date('d/m/Y', strtotime($item->created_at));
                        // Viet ham xu ly lay slug
                        $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['product'], $item->alias ?? $title_item, $item->id, 'detail', $item->taxonomy_title);
                    ?>
                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="product">
                            <div class="product-image">
                                <a href="<?php echo e($alias); ?>">
                                    <img src="<?php echo e($image); ?>" alt="<?php echo e($title_item); ?>">
                                </a>
                            </div>
                            <div class="product-desc center">
                                <div class="product-title page-content">
                                    <h3><a class="link_title" href="<?php echo e($alias); ?>"><?php echo e($title_item); ?></a></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>

            </div>
        </div>
    <?php endif; ?>



    <?php if(isset($rows) && count($rows) > 0): ?>
        <div data-elementor-type="archive" data-elementor-id="278"
            class="elementor elementor-278 elementor-location-archive">
            <div class="elementor-element elementor-element-a4b0e69 e-con-boxed e-con" data-id="a4b0e69" id="list-post"
                data-element_type="container" data-settings='{"content_width":"boxed"}'>
                <div class="e-con-inner">
                    <div class="elementor-element elementor-element-4b1bd98 e-con-full e-con" data-id="4b1bd98"
                        data-element_type="container" data-settings='{"content_width":"full"}'>
                        <div class=" elementor-element elementor-element-b53d988 elementor-widget elementor-widget-heading w-100"
                            data-id="b53d988" data-element_type="widget" data-widget_type="heading.default">
                            <div class="elementor-widget-container elementor-kit-12">
                                <h2 class="elementor-heading-titl elementor-size-default">
                                    <?php echo app('translator')->get('All'); ?> <?php echo e($taxonomy_title); ?>

                                </h2>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-71e83f elementor-widget elementor-widget-jet-listing-grid"
                            data-id="71e83f5" data-element_type="widget"
                            data-settings='{"columns":"2","columns_mobile":"1"}'
                            data-widget_type="jet-listing-grid.default">
                            <div class="elementor-widget-container">
                                <div class="jet-listing-grid jet-listing">
                                    <div class="jet-listing-grid__items grid-col-desk-4 grid-col-tablet-2 grid-col-mobile-1 jet-listing-grid--883"
                                        data-nav='{"enabled":false,"type":null,"more_el":null,"query":[],"widget_settings":{"lisitng_id":883,"posts_num":4,"columns":2,"columns_tablet":2,"columns_mobile":1,"is_archive_template":"","post_status":["publish"],"use_random_posts_num":"","max_posts_num":9,"not_found_message":"No data was found","is_masonry":false,"equal_columns_height":"","use_load_more":"","load_more_id":"","load_more_type":"click","load_more_offset":{"unit":"px","size":0,"sizes":[]},"use_custom_post_types":"","custom_post_types":[],"hide_widget_if":"","carousel_enabled":"","slides_to_scroll":"1","arrows":"true","arrow_icon":"fa fa-angle-left","dots":"","autoplay":"true","autoplay_speed":5000,"infinite":"true","center_mode":"","effect":"slide","speed":500,"inject_alternative_items":"","injection_items":[{"_id":"7ef05a1","item":"883","item_num":6,"inject_once":"yes","item_colspan":"2"}],"scroll_slider_enabled":"","scroll_slider_on":["desktop","tablet","mobile"],"custom_query":false,"custom_query_id":"","_element_id":""}}'
                                        data-page="1" data-pages="2" data-listing-source="posts" data-listing-id="883"
                                        data-query-id="">
                                        <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php
                                                $title_post = $item_post->json_params->title->{$locale} ?? $item_post->title;
                                                $brief_post = $item_post->json_params->brief->{$locale} ?? $item_post->brief;
                                                $content_post = $item_post->json_params->content->{$locale} ?? $item_post->content;
                                                $image_post = $item_post->image != '' ? $item_post->image : null;
                                                $price = $item_post->json_params->price ?? null;
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
                                                                        <img src="<?php echo e($image_post); ?>"
                                                                            title="<?php echo e($title_post); ?>"
                                                                            alt="<?php echo e($title_post); ?>" loading="lazy" />
                                                                    </div>
                                                                </a>
                                                            </div>
                                                            <div class="elementor-element elementor-element-83bd34 e-con-full e-con"
                                                                data-id="83bd34a" data-element_type="container"
                                                                data-settings='{"content_width":"full","background_background":"classic"}'>
                                                                <div class="elementor-element elementor-element-dd25944 elementor-widget elementor-widget-jet-listing-dynamic-field"
                                                                    data-id="dd25944" data-element_type="widget"
                                                                    data-widget_type="jet-listing-dynamic-field.default">
                                                                    <div class="elementor-widget-container">
                                                                        <div class="title_taxonomy">
                                                                            <?php echo e($item_post->taxonomy_title); ?>

                                                                        </div>
                                                                        <div
                                                                            class="jet-listing jet-listing-dynamic-field display-inline">

                                                                            <a href="<?php echo e($alias_post); ?>"
                                                                                class="link_title">
                                                                                <div
                                                                                    class="jet-listing-dynamic-field__inline-wrap">
                                                                                    <h3
                                                                                        class="jet-listing-dynamic-field__content">
                                                                                        <?php echo e($title_post); ?>

                                                                                    </h3>
                                                                                </div>
                                                                            </a>
                                                                        </div>
                                                                        <?php if($price): ?>
                                                                            <div class="title_taxonomy price">
                                                                                <?php echo e(number_format($price, '0', '', '.')); ?>

                                                                                <?php echo e(App\Consts::CURRENCY_UNIT['vi']); ?>

                                                                            </div>
                                                                        <?php endif; ?>


                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    <?php endif; ?>


<?php $__env->stopSection(); ?>
<?php $__env->startPush('script'); ?>
    <script src="<?php echo e(url('themes/frontend/divine/js/bootstrap.min.js')); ?>"></script>
    <script src="<?php echo e(asset('themes/frontend/divine/js/slick.min.js')); ?>"></script>
    <script src="<?php echo e(asset('themes/frontend/divine/js/script.min.js')); ?>"></script>
    <script>
        $(document).ready(function() {
            $('.slider-for').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: false,
                fade: true,
                asNavFor: '.slider-nav'
            });
            $('.slider-nav').slick({
                slidesToShow: 4,
                slidesToScroll: 1,
                asNavFor: '.slider-for',
                dots: false,
                centerMode: false,
                focusOnSelect: true,
                arrows: false,
                accessibility: true,
                onAfterChange: function(slide, index) {

                    $('.current-slide').removeClass('current-slide');
                    $(this.$slides.get(index)).addClass('current-slide');
                },
                onInit: function(slick) {
                    $(slick.$slides.get(0)).addClass('current-slide');
                }
            });
        });
    </script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('frontend.layouts.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/pages/product/detail.blade.php ENDPATH**/ ?>