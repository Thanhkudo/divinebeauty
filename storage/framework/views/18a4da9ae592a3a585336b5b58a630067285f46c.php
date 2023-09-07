<?php if($block): ?>
    <?php
        $title = $block->json_params->title->{$locale} ?? $block->title;
        $brief = $block->json_params->brief->{$locale} ?? $block->brief;
        $content = $block->json_params->content->{$locale} ?? $block->content;
        $background = $block->image_background != '' ? $block->image_background : url('assets/img/banner.jpg');
        $url_link = $block->url_link != '' ? $block->url_link : '';
        $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
        $gallery = $block->json_params->gallery_image ?? '';
        // Filter all blocks by parent_id
        $block_childs = $blocks->filter(function ($item, $key) use ($block) {
            return $item->parent_id == $block->id;
        });
    ?>
    <style>
        .elementor-gallery__container {
            min-height: 1px
        }

        .elementor-gallery-item {
            position: relative;
            overflow: hidden;
            display: block;
            text-decoration: none;
            border: solid var(--image-border-width) var(--image-border-color);
            border-radius: var(--image-border-radius)
        }

        .elementor-gallery-item__content,
        .elementor-gallery-item__overlay {
            height: 100%;
            width: 100%;
            position: absolute;
            top: 0;
            left: 0
        }

        .elementor-gallery-item__overlay {
            mix-blend-mode: var(--overlay-mix-blend-mode);
            transition-duration: var(--overlay-transition-duration);
            transition-property: mix-blend-mode, transform, opacity, background-color
        }

        .elementor-gallery-item__image.e-gallery-image {
            transition-duration: var(--image-transition-duration);
            transition-property: filter, transform
        }

        .elementor-gallery-item__content {
            display: flex;
            flex-direction: column;
            justify-content: var(--content-justify-content, center);
            align-items: center;
            text-align: var(--content-text-align);
            padding: var(--content-padding)
        }

        .elementor-gallery-item__content>div {
            transition-duration: var(--content-transition-duration)
        }

        .elementor-gallery-item__content.elementor-gallery--sequenced-animation>div:nth-child(2) {
            transition-delay: calc(var(--content-transition-delay) / 3)
        }

        .elementor-gallery-item__content.elementor-gallery--sequenced-animation>div:nth-child(3) {
            transition-delay: calc(var(--content-transition-delay) / 3 * 2)
        }

        .elementor-gallery-item__content.elementor-gallery--sequenced-animation>div:nth-child(4) {
            transition-delay: calc(var(--content-transition-delay) / 3 * 3)
        }

        .elementor-gallery-item__description {
            color: var(--description-text-color, #fff);
            width: 100%
        }

        .elementor-gallery-item__title {
            color: var(--title-text-color, #fff);
            font-weight: 700;
            width: 100%
        }

        .elementor-gallery__titles-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: var(--titles-container-justify-content, center);
            margin-bottom: 20px
        }

        .elementor-gallery__titles-container:not(.e--pointer-framed) .elementor-item:after,
        .elementor-gallery__titles-container:not(.e--pointer-framed) .elementor-item:before {
            background-color: var(--galleries-pointer-bg-color-hover)
        }

        .elementor-gallery__titles-container:not(.e--pointer-framed) .elementor-item.elementor-item-active:after,
        .elementor-gallery__titles-container:not(.e--pointer-framed) .elementor-item.elementor-item-active:before {
            background-color: var(--galleries-pointer-bg-color-active)
        }

        .elementor-gallery__titles-container.e--pointer-framed .elementor-item:before {
            border-color: var(--galleries-pointer-bg-color-hover);
            border-width: var(--galleries-pointer-border-width)
        }

        .elementor-gallery__titles-container.e--pointer-framed .elementor-item:after {
            border-color: var(--galleries-pointer-bg-color-hover)
        }

        .elementor-gallery__titles-container.e--pointer-framed .elementor-item.elementor-item-active:after,
        .elementor-gallery__titles-container.e--pointer-framed .elementor-item.elementor-item-active:before {
            border-color: var(--galleries-pointer-bg-color-active)
        }

        .elementor-gallery__titles-container.e--pointer-framed.e--animation-draw .elementor-item:before {
            border-left-width: var(--galleries-pointer-border-width);
            border-bottom-width: var(--galleries-pointer-border-width);
            border-right-width: 0;
            border-top-width: 0
        }

        .elementor-gallery__titles-container.e--pointer-framed.e--animation-draw .elementor-item:after {
            border-left-width: 0;
            border-bottom-width: 0;
            border-right-width: var(--galleries-pointer-border-width);
            border-top-width: var(--galleries-pointer-border-width)
        }

        .elementor-gallery__titles-container.e--pointer-framed.e--animation-corners .elementor-item:before {
            border-left-width: var(--galleries-pointer-border-width);
            border-bottom-width: 0;
            border-right-width: 0;
            border-top-width: var(--galleries-pointer-border-width)
        }

        .elementor-gallery__titles-container.e--pointer-framed.e--animation-corners .elementor-item:after {
            border-left-width: 0;
            border-bottom-width: var(--galleries-pointer-border-width);
            border-right-width: var(--galleries-pointer-border-width);
            border-top-width: 0
        }

        .elementor-gallery__titles-container .e--pointer-double-line .elementor-item:after,
        .elementor-gallery__titles-container .e--pointer-double-line .elementor-item:before,
        .elementor-gallery__titles-container .e--pointer-overline .elementor-item:before,
        .elementor-gallery__titles-container .e--pointer-underline .elementor-item:after {
            height: var(--galleries-pointer-border-width)
        }

        .elementor-gallery-title {
            --space-between: 10px;
            cursor: pointer;
            color: #6d7882;
            font-weight: 500;
            position: relative;
            padding: 7px 14px;
            transition: all .3s
        }

        .elementor-gallery-title--active {
            color: #495157
        }

        .elementor-gallery-title:not(:last-child) {
            margin-right: var(--space-between)
        }

        .elementor-gallery-item__title+.elementor-gallery-item__description {
            margin-top: var(--description-margin-top)
        }

        .e-gallery-item.elementor-gallery-item {
            transition-property: all
        }

        .e-gallery-item.elementor-animated-content .elementor-animated-item--enter-from-bottom,
        .e-gallery-item.elementor-animated-content .elementor-animated-item--enter-from-left,
        .e-gallery-item.elementor-animated-content .elementor-animated-item--enter-from-right,
        .e-gallery-item.elementor-animated-content .elementor-animated-item--enter-from-top,
        .e-gallery-item:hover .elementor-gallery__item-overlay-bg,
        .e-gallery-item:hover .elementor-gallery__item-overlay-content,
        .e-gallery-item:hover .elementor-gallery__item-overlay-content__description,
        .e-gallery-item:hover .elementor-gallery__item-overlay-content__title {
            opacity: 1
        }

        a.elementor-item.elementor-gallery-title {
            color: var(--galleries-title-color-normal)
        }

        a.elementor-item.elementor-gallery-title.elementor-item-active,
        a.elementor-item.elementor-gallery-title.highlighted,
        a.elementor-item.elementor-gallery-title:focus,
        a.elementor-item.elementor-gallery-title:hover {
            color: var(--galleries-title-color-hover)
        }

        a.elementor-item.elementor-gallery-title.elementor-item-active {
            color: var(--gallery-title-color-active)
        }

        .e-con-inner>.elementor-widget-gallery,
        .e-con>.elementor-widget-gallery {
            width: var(--container-widget-width);
            --flex-grow: var(--container-widget-flex-grow)
        }
    </style>

    <div
        class="page-template-default page page-id-101 wp-custom-logo translatepress-en_GB jkit-color-scheme e-lazyload elementor-default elementor-kit-12 elementor-page elementor-page-101">
        <main id="content" class="site-main post-101 page type-page status-publish hentry" role="main">
            <div class="page-content">
                <div data-elementor-type="wp-page" data-elementor-id="101" class="elementor elementor-101">
                    <div class="elementor-element elementor-element-a1016a1 e-con-full e-con" data-id="a1016a1"
                        data-element_type="container"
                        data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;content_width&quot;:&quot;full&quot;}">
                        <div class="elementor-element elementor-element-9012edf elementor-widget elementor-widget-gallery"
                            data-id="9012edf" data-element_type="widget"
                            data-settings="{&quot;gallery_layout&quot;:&quot;masonry&quot;,&quot;gap&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:20,&quot;sizes&quot;:[]},&quot;image_hover_animation&quot;:&quot;grow&quot;,&quot;lazyload&quot;:&quot;yes&quot;,&quot;columns&quot;:4,&quot;columns_tablet&quot;:2,&quot;columns_mobile&quot;:1,&quot;gap_tablet&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:10,&quot;sizes&quot;:[]},&quot;gap_mobile&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:10,&quot;sizes&quot;:[]},&quot;link_to&quot;:&quot;file&quot;,&quot;overlay_background&quot;:&quot;yes&quot;,&quot;content_hover_animation&quot;:&quot;fade-in&quot;}"
                            data-widget_type="gallery.default">
                            <div class="elementor-widget-container">
                                <div class="elementor-gallery__container">
                                    <?php if($gallery): ?>
                                        <?php $__currentLoopData = $gallery; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <a class="e-gallery-item elementor-gallery-item elementor-animated-content"
                                                href="<?php echo e($item); ?>" data-elementor-open-lightbox="yes"
                                                data-elementor-lightbox-slideshow="all-9012edf"
                                                data-e-action-hash="#elementor-action%3Aaction%3Dlightbox%26settings%3DeyJpZCI6MTQwMSwidXJsIjoiaHR0cHM6XC9cL2FyaWVsbWVkaWNhbC5nclwvd3AtY29udGVudFwvdXBsb2Fkc1wvMjAyM1wvMDNcLzRWN0E3NTY0LmpwZyIsInNsaWRlc2hvdyI6ImFsbC05MDEyZWRmIn0%3D">
                                                <div class="e-gallery-image elementor-gallery-item__image"
                                                    data-thumbnail="<?php echo e($item); ?>" data-width="400"
                                                    data-height="400" alt="Image"></div>
                                                <div class="elementor-gallery-item__overlay"></div>
                                            </a>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>


<?php endif; ?>
<?php $__env->startPush('script'); ?>
    <script
        src="<?php echo e(url('themes/frontend/wp-content/plugins/elementor-pro/assets/js/webpack-pro.runtime.minf416.js')); ?>?ver=3.11.0"
        id='elementor-pro-webpack-runtime-js'></script>

    <script>
        $('.e-gallery-image.elementor-gallery-item__image').each(function() {
            var element = $(this);
            var img = new Image();
            img.src = element.attr('data-thumbnail');;
            img.onload = async function() {
                element.attr('data-width', this.width);
                element.attr('data-height', this.height);
            }
        })
    </script>
    <script id='elementor-pro-frontend-js-before'>
        var ElementorProFrontendConfig = {
            "urls": {},
        };
    </script>
<?php $__env->stopPush(); ?>
<?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/blocks/gallery_Image/styles/default.blade.php ENDPATH**/ ?>