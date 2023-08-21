<!DOCTYPE html>
<html lang="<?php echo e($locale ?? 'vi'); ?>">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        <?php echo e($seo_title ?? ($page->title ?? ($web_information->information->seo_title ?? ''))); ?>

    </title>
    <link rel="icon" href="<?php echo e($web_information->image->favicon ?? ''); ?>" type="image/x-icon">
    
    <?php
        $seo_title = $seo_title ?? ($page->title ?? ($web_information->information->seo_title ?? ''));
        $seo_keyword = $seo_keyword ?? ($page->keyword ?? ($web_information->information->seo_keyword ?? ''));
        $seo_description = $seo_description ?? ($page->description ?? ($web_information->information->seo_description ?? ''));
        $seo_image = $seo_image ?? ($page->json_params->og_image ?? ($web_information->image->seo_og_image ?? ''));
    ?>
    <meta name="description" content="<?php echo e($seo_description); ?>" />
    <meta name="keywords" content="<?php echo e($seo_keyword); ?>" />
    <meta name="news_keywords" content="<?php echo e($seo_keyword); ?>" />
    <meta property="og:image" content="<?php echo e($seo_image); ?>" />
    <meta property="og:title" content="<?php echo e($seo_title); ?>" />
    <meta property="og:description" content="<?php echo e($seo_description); ?>" />
    <meta property="og:url" content="<?php echo e(Request::fullUrl()); ?>" />

    <meta name="copyright" content="<?php echo e($web_information->information->site_name ?? ''); ?>" />
    <meta name="author" content="<?php echo e($web_information->information->site_name ?? ''); ?>" />
    <meta name="robots" content="index,follow" />

    
    
    <?php echo $__env->make('frontend.panels.styles', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    
    <?php echo $__env->yieldPushContent('style'); ?>
    <style>

    </style>
    <?php echo $__env->yieldPushContent('schema'); ?>
</head>

<body
    class="home page-template-default page page-id-76 wp-custom-logo translatepress-en_GB jkit-color-scheme e-lazyload elementor-default elementor-kit-12 elementor-page elementor-page-76">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false"
        role="none"
        style="
        visibility: hidden;
        position: absolute;
        left: -9999px;
        overflow: hidden;
      ">
        <defs>
            <filter id="wp-duotone-dark-grayscale">
                <feColorMatrix color-interpolation-filters="sRGB" type="matrix"
                    values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
                <feComponentTransfer color-interpolation-filters="sRGB">
                    <feFuncR type="table" tableValues="0 0.49803921568627" />
                    <feFuncG type="table" tableValues="0 0.49803921568627" />
                    <feFuncB type="table" tableValues="0 0.49803921568627" />
                    <feFuncA type="table" tableValues="1 1" />
                </feComponentTransfer>
                <feComposite in2="SourceGraphic" operator="in" />
            </filter>
        </defs>
    </svg>
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false"
        role="none"
        style="
        visibility: hidden;
        position: absolute;
        left: -9999px;
        overflow: hidden;
      ">
        <defs>
            <filter id="wp-duotone-grayscale">
                <feColorMatrix color-interpolation-filters="sRGB" type="matrix"
                    values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
                <feComponentTransfer color-interpolation-filters="sRGB">
                    <feFuncR type="table" tableValues="0 1" />
                    <feFuncG type="table" tableValues="0 1" />
                    <feFuncB type="table" tableValues="0 1" />
                    <feFuncA type="table" tableValues="1 1" />
                </feComponentTransfer>
                <feComposite in2="SourceGraphic" operator="in" />
            </filter>
        </defs>
    </svg>
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false"
        role="none"
        style="
        visibility: hidden;
        position: absolute;
        left: -9999px;
        overflow: hidden;
      ">
        <defs>
            <filter id="wp-duotone-purple-yellow">
                <feColorMatrix color-interpolation-filters="sRGB" type="matrix"
                    values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
                <feComponentTransfer color-interpolation-filters="sRGB">
                    <feFuncR type="table" tableValues="0.54901960784314 0.98823529411765" />
                    <feFuncG type="table" tableValues="0 1" />
                    <feFuncB type="table" tableValues="0.71764705882353 0.25490196078431" />
                    <feFuncA type="table" tableValues="1 1" />
                </feComponentTransfer>
                <feComposite in2="SourceGraphic" operator="in" />
            </filter>
        </defs>
    </svg>
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false"
        role="none"
        style="
        visibility: hidden;
        position: absolute;
        left: -9999px;
        overflow: hidden;
      ">
        <defs>
            <filter id="wp-duotone-blue-red">
                <feColorMatrix color-interpolation-filters="sRGB" type="matrix"
                    values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
                <feComponentTransfer color-interpolation-filters="sRGB">
                    <feFuncR type="table" tableValues="0 1" />
                    <feFuncG type="table" tableValues="0 0.27843137254902" />
                    <feFuncB type="table" tableValues="0.5921568627451 0.27843137254902" />
                    <feFuncA type="table" tableValues="1 1" />
                </feComponentTransfer>
                <feComposite in2="SourceGraphic" operator="in" />
            </filter>
        </defs>
    </svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false"
        role="none"
        style="
        visibility: hidden;
        position: absolute;
        left: -9999px;
        overflow: hidden;
      ">
        <defs>
            <filter id="wp-duotone-midnight">
                <feColorMatrix color-interpolation-filters="sRGB" type="matrix"
                    values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
                <feComponentTransfer color-interpolation-filters="sRGB">
                    <feFuncR type="table" tableValues="0 0" />
                    <feFuncG type="table" tableValues="0 0.64705882352941" />
                    <feFuncB type="table" tableValues="0 1" />
                    <feFuncA type="table" tableValues="1 1" />
                </feComponentTransfer>
                <feComposite in2="SourceGraphic" operator="in" />
            </filter>
        </defs>
    </svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false"
        role="none"
        style="
        visibility: hidden;
        position: absolute;
        left: -9999px;
        overflow: hidden;
      ">
        <defs>
            <filter id="wp-duotone-magenta-yellow">
                <feColorMatrix color-interpolation-filters="sRGB" type="matrix"
                    values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
                <feComponentTransfer color-interpolation-filters="sRGB">
                    <feFuncR type="table" tableValues="0.78039215686275 1" />
                    <feFuncG type="table" tableValues="0 0.94901960784314" />
                    <feFuncB type="table" tableValues="0.35294117647059 0.47058823529412" />
                    <feFuncA type="table" tableValues="1 1" />
                </feComponentTransfer>
                <feComposite in2="SourceGraphic" operator="in" />
            </filter>
        </defs>
    </svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false"
        role="none"
        style="
        visibility: hidden;
        position: absolute;
        left: -9999px;
        overflow: hidden;
      ">
        <defs>
            <filter id="wp-duotone-purple-green">
                <feColorMatrix color-interpolation-filters="sRGB" type="matrix"
                    values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
                <feComponentTransfer color-interpolation-filters="sRGB">
                    <feFuncR type="table" tableValues="0.65098039215686 0.40392156862745" />
                    <feFuncG type="table" tableValues="0 1" />
                    <feFuncB type="table" tableValues="0.44705882352941 0.4" />
                    <feFuncA type="table" tableValues="1 1" />
                </feComponentTransfer>
                <feComposite in2="SourceGraphic" operator="in" />
            </filter>
        </defs>
    </svg>
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false"
        role="none"
        style="
        visibility: hidden;
        position: absolute;
        left: -9999px;
        overflow: hidden;
      ">
        <defs>
            <filter id="wp-duotone-blue-orange">
                <feColorMatrix color-interpolation-filters="sRGB" type="matrix"
                    values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
                <feComponentTransfer color-interpolation-filters="sRGB">
                    <feFuncR type="table" tableValues="0.098039215686275 1" />
                    <feFuncG type="table" tableValues="0 0.66274509803922" />
                    <feFuncB type="table" tableValues="0.84705882352941 0.41960784313725" />
                    <feFuncA type="table" tableValues="1 1" />
                </feComponentTransfer>
                <feComposite in2="SourceGraphic" operator="in" />
            </filter>
        </defs>
    </svg>
    <a class="skip-link screen-reader-text" href="#content"> Skip to content</a>
    <?php echo $__env->make('frontend.blocks.header.styles.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <main id="content" class="site-main post-76 page type-page status-publish hentry" role="main">
        <div class="page-content">
            
            <div data-elementor-type="wp-page" data-elementor-id="76" class="elementor elementor-76">
                <?php if(isset($blocks_selected)): ?>
                    <?php $__currentLoopData = $blocks_selected; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $block): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if(\View::exists('frontend.blocks.' . $block->block_code . '.index')): ?>
                            <?php echo $__env->make('frontend.blocks.' . $block->block_code . '.index', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php else: ?>
                            <?php echo e('View: frontend.blocks.' . $block->block_code . '.index do not exists!'); ?>

                        <?php endif; ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>
            </div>
            <div class="post-tags">
            </div>


        </div>
        <section id="comments" class="comments-area">
        </section>
    </main>

    <?php echo $__env->make('frontend.blocks.footer.styles.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    
    <?php echo $__env->make('frontend.panels.scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    
    <?php echo $__env->make('frontend.components.sticky.alert', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    
    <?php echo $__env->yieldPushContent('script'); ?>
    
    <?php echo $__env->make('frontend.components.sticky.contact', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    
    <?php echo $__env->make('frontend.components.popup.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

</body>

</html>
<?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/layouts/default.blade.php ENDPATH**/ ?>