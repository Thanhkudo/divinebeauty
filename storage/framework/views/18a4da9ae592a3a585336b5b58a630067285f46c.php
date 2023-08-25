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
        body {
            --wp--preset--color--black: #000000;
            --wp--preset--color--cyan-bluish-gray: #abb8c3;
            --wp--preset--color--white: #ffffff;
            --wp--preset--color--pale-pink: #f78da7;
            --wp--preset--color--vivid-red: #cf2e2e;
            --wp--preset--color--luminous-vivid-orange: #ff6900;
            --wp--preset--color--luminous-vivid-amber: #fcb900;
            --wp--preset--color--light-green-cyan: #7bdcb5;
            --wp--preset--color--vivid-green-cyan: #00d084;
            --wp--preset--color--pale-cyan-blue: #8ed1fc;
            --wp--preset--color--vivid-cyan-blue: #0693e3;
            --wp--preset--color--vivid-purple: #9b51e0;
            --wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg, rgba(6, 147, 227, 1) 0%, rgb(155, 81, 224) 100%);
            --wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg, rgb(122, 220, 180) 0%, rgb(0, 208, 130) 100%);
            --wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg, rgba(252, 185, 0, 1) 0%, rgba(255, 105, 0, 1) 100%);
            --wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg, rgba(255, 105, 0, 1) 0%, rgb(207, 46, 46) 100%);
            --wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg, rgb(238, 238, 238) 0%, rgb(169, 184, 195) 100%);
            --wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg, rgb(74, 234, 220) 0%, rgb(151, 120, 209) 20%, rgb(207, 42, 186) 40%, rgb(238, 44, 130) 60%, rgb(251, 105, 98) 80%, rgb(254, 248, 76) 100%);
            --wp--preset--gradient--blush-light-purple: linear-gradient(135deg, rgb(255, 206, 236) 0%, rgb(152, 150, 240) 100%);
            --wp--preset--gradient--blush-bordeaux: linear-gradient(135deg, rgb(254, 205, 165) 0%, rgb(254, 45, 45) 50%, rgb(107, 0, 62) 100%);
            --wp--preset--gradient--luminous-dusk: linear-gradient(135deg, rgb(255, 203, 112) 0%, rgb(199, 81, 192) 50%, rgb(65, 88, 208) 100%);
            --wp--preset--gradient--pale-ocean: linear-gradient(135deg, rgb(255, 245, 203) 0%, rgb(182, 227, 212) 50%, rgb(51, 167, 181) 100%);
            --wp--preset--gradient--electric-grass: linear-gradient(135deg, rgb(202, 248, 128) 0%, rgb(113, 206, 126) 100%);
            --wp--preset--gradient--midnight: linear-gradient(135deg, rgb(2, 3, 129) 0%, rgb(40, 116, 252) 100%);
            --wp--preset--duotone--dark-grayscale: url('#wp-duotone-dark-grayscale');
            --wp--preset--duotone--grayscale: url('#wp-duotone-grayscale');
            --wp--preset--duotone--purple-yellow: url('#wp-duotone-purple-yellow');
            --wp--preset--duotone--blue-red: url('#wp-duotone-blue-red');
            --wp--preset--duotone--midnight: url('#wp-duotone-midnight');
            --wp--preset--duotone--magenta-yellow: url('#wp-duotone-magenta-yellow');
            --wp--preset--duotone--purple-green: url('#wp-duotone-purple-green');
            --wp--preset--duotone--blue-orange: url('#wp-duotone-blue-orange');
            --wp--preset--font-size--small: 13px;
            --wp--preset--font-size--medium: 20px;
            --wp--preset--font-size--large: 36px;
            --wp--preset--font-size--x-large: 42px;
            --wp--preset--spacing--20: 0.44rem;
            --wp--preset--spacing--30: 0.67rem;
            --wp--preset--spacing--40: 1rem;
            --wp--preset--spacing--50: 1.5rem;
            --wp--preset--spacing--60: 2.25rem;
            --wp--preset--spacing--70: 3.38rem;
            --wp--preset--spacing--80: 5.06rem;
            --wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);
            --wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);
            --wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);
            --wp--preset--shadow--outlined: 6px 6px 0px -3px rgba(255, 255, 255, 1), 6px 6px rgba(0, 0, 0, 1);
            --wp--preset--shadow--crisp: 6px 6px 0px rgba(0, 0, 0, 1);
        }

        :where(.is-layout-flex) {
            gap: 0.5em;
        }

        body .is-layout-flow>.alignleft {
            float: left;
            margin-inline-start: 0;
            margin-inline-end: 2em;
        }

        body .is-layout-flow>.alignright {
            float: right;
            margin-inline-start: 2em;
            margin-inline-end: 0;
        }

        body .is-layout-flow>.aligncenter {
            margin-left: auto !important;
            margin-right: auto !important;
        }

        body .is-layout-constrained>.alignleft {
            float: left;
            margin-inline-start: 0;
            margin-inline-end: 2em;
        }

        body .is-layout-constrained>.alignright {
            float: right;
            margin-inline-start: 2em;
            margin-inline-end: 0;
        }

        body .is-layout-constrained>.aligncenter {
            margin-left: auto !important;
            margin-right: auto !important;
        }

        body .is-layout-constrained> :where(:not(.alignleft):not(.alignright):not(.alignfull)) {
            max-width: var(--wp--style--global--content-size);
            margin-left: auto !important;
            margin-right: auto !important;
        }

        body .is-layout-constrained>.alignwide {
            max-width: var(--wp--style--global--wide-size);
        }

        body .is-layout-flex {
            display: flex;
        }

        body .is-layout-flex {
            flex-wrap: wrap;
            align-items: center;
        }

        body .is-layout-flex>* {
            margin: 0;
        }

        :where(.wp-block-columns.is-layout-flex) {
            gap: 2em;
        }

        .has-black-color {
            color: var(--wp--preset--color--black) !important;
        }

        .has-cyan-bluish-gray-color {
            color: var(--wp--preset--color--cyan-bluish-gray) !important;
        }

        .has-white-color {
            color: var(--wp--preset--color--white) !important;
        }

        .has-pale-pink-color {
            color: var(--wp--preset--color--pale-pink) !important;
        }

        .has-vivid-red-color {
            color: var(--wp--preset--color--vivid-red) !important;
        }

        .has-luminous-vivid-orange-color {
            color: var(--wp--preset--color--luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-amber-color {
            color: var(--wp--preset--color--luminous-vivid-amber) !important;
        }

        .has-light-green-cyan-color {
            color: var(--wp--preset--color--light-green-cyan) !important;
        }

        .has-vivid-green-cyan-color {
            color: var(--wp--preset--color--vivid-green-cyan) !important;
        }

        .has-pale-cyan-blue-color {
            color: var(--wp--preset--color--pale-cyan-blue) !important;
        }

        .has-vivid-cyan-blue-color {
            color: var(--wp--preset--color--vivid-cyan-blue) !important;
        }

        .has-vivid-purple-color {
            color: var(--wp--preset--color--vivid-purple) !important;
        }

        .has-black-background-color {
            background-color: var(--wp--preset--color--black) !important;
        }

        .has-cyan-bluish-gray-background-color {
            background-color: var(--wp--preset--color--cyan-bluish-gray) !important;
        }

        .has-white-background-color {
            background-color: var(--wp--preset--color--white) !important;
        }

        .has-pale-pink-background-color {
            background-color: var(--wp--preset--color--pale-pink) !important;
        }

        .has-vivid-red-background-color {
            background-color: var(--wp--preset--color--vivid-red) !important;
        }

        .has-luminous-vivid-orange-background-color {
            background-color: var(--wp--preset--color--luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-amber-background-color {
            background-color: var(--wp--preset--color--luminous-vivid-amber) !important;
        }

        .has-light-green-cyan-background-color {
            background-color: var(--wp--preset--color--light-green-cyan) !important;
        }

        .has-vivid-green-cyan-background-color {
            background-color: var(--wp--preset--color--vivid-green-cyan) !important;
        }

        .has-pale-cyan-blue-background-color {
            background-color: var(--wp--preset--color--pale-cyan-blue) !important;
        }

        .has-vivid-cyan-blue-background-color {
            background-color: var(--wp--preset--color--vivid-cyan-blue) !important;
        }

        .has-vivid-purple-background-color {
            background-color: var(--wp--preset--color--vivid-purple) !important;
        }

        .has-black-border-color {
            border-color: var(--wp--preset--color--black) !important;
        }

        .has-cyan-bluish-gray-border-color {
            border-color: var(--wp--preset--color--cyan-bluish-gray) !important;
        }

        .has-white-border-color {
            border-color: var(--wp--preset--color--white) !important;
        }

        .has-pale-pink-border-color {
            border-color: var(--wp--preset--color--pale-pink) !important;
        }

        .has-vivid-red-border-color {
            border-color: var(--wp--preset--color--vivid-red) !important;
        }

        .has-luminous-vivid-orange-border-color {
            border-color: var(--wp--preset--color--luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-amber-border-color {
            border-color: var(--wp--preset--color--luminous-vivid-amber) !important;
        }

        .has-light-green-cyan-border-color {
            border-color: var(--wp--preset--color--light-green-cyan) !important;
        }

        .has-vivid-green-cyan-border-color {
            border-color: var(--wp--preset--color--vivid-green-cyan) !important;
        }

        .has-pale-cyan-blue-border-color {
            border-color: var(--wp--preset--color--pale-cyan-blue) !important;
        }

        .has-vivid-cyan-blue-border-color {
            border-color: var(--wp--preset--color--vivid-cyan-blue) !important;
        }

        .has-vivid-purple-border-color {
            border-color: var(--wp--preset--color--vivid-purple) !important;
        }

        .has-vivid-cyan-blue-to-vivid-purple-gradient-background {
            background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;
        }

        .has-light-green-cyan-to-vivid-green-cyan-gradient-background {
            background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;
        }

        .has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background {
            background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-orange-to-vivid-red-gradient-background {
            background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;
        }

        .has-very-light-gray-to-cyan-bluish-gray-gradient-background {
            background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;
        }

        .has-cool-to-warm-spectrum-gradient-background {
            background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;
        }

        .has-blush-light-purple-gradient-background {
            background: var(--wp--preset--gradient--blush-light-purple) !important;
        }

        .has-blush-bordeaux-gradient-background {
            background: var(--wp--preset--gradient--blush-bordeaux) !important;
        }

        .has-luminous-dusk-gradient-background {
            background: var(--wp--preset--gradient--luminous-dusk) !important;
        }

        .has-pale-ocean-gradient-background {
            background: var(--wp--preset--gradient--pale-ocean) !important;
        }

        .has-electric-grass-gradient-background {
            background: var(--wp--preset--gradient--electric-grass) !important;
        }

        .has-midnight-gradient-background {
            background: var(--wp--preset--gradient--midnight) !important;
        }

        .has-small-font-size {
            font-size: var(--wp--preset--font-size--small) !important;
        }

        .has-medium-font-size {
            font-size: var(--wp--preset--font-size--medium) !important;
        }

        .has-large-font-size {
            font-size: var(--wp--preset--font-size--large) !important;
        }

        .has-x-large-font-size {
            font-size: var(--wp--preset--font-size--x-large) !important;
        }

        .wp-block-navigation a:where(:not(.wp-element-button)) {
            color: inherit;
        }

        :where(.wp-block-columns.is-layout-flex) {
            gap: 2em;
        }

        .wp-block-pullquote {
            font-size: 1.5em;
            line-height: 1.6;
        }

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
                                                    data-thumbnail="<?php echo e($item); ?>" data-width="500"
                                                    data-height="500" alt="Image"></div>
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

    <script
    src="<?php echo e(url('themes/frontend/wp-content/plugins/elementor-pro/assets/js/webpack-pro.runtime.minf416.js')); ?>?ver=3.11.0"
    id='elementor-pro-webpack-runtime-js'></script>
    <script
        src="<?php echo e(url('themes/frontend/wp-content/plugins/elementor/assets/lib/e-gallery/js/e-gallery.min7359.js')); ?>?ver=1.2.0"
        id='elementor-gallery-js'></script>
    <script src="<?php echo e(url('themes/frontend/wp-content/plugins/elementor-pro/assets/js/gallery.min.js')); ?>?ver=1.2.0"></script>
    <script id='elementor-pro-frontend-js-before'>
        var ElementorProFrontendConfig = {
            "urls": {},
        };
    </script>




<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/blocks/gallery_Image/styles/default.blade.php ENDPATH**/ ?>