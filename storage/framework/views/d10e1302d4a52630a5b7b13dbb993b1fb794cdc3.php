<footer data-elementor-type="footer" data-elementor-id="93" class="elementor elementor-93 elementor-location-footer">
    <section
        class="elementor-section elementor-top-section elementor-element elementor-element-271772b9 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
        data-id="271772b9" data-element_type="section" data-settings='{"background_background":"classic"}'
        data-e-bg-lazyload=".elementor-background-overlay">
        <div class="elementor-background-overlay"></div>
        <div class="elementor-container elementor-column-gap-default">
            <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-8c9e48"
                data-id="8c9e48" data-element_type="column">
                <div class="elementor-widget-wrap elementor-element-populated">
                    <section
                        class="elementor-section elementor-inner-section elementor-element elementor-element-3c44da0f elementor-section-boxed elementor-section-height-default elementor-section-height-default"
                        data-id="3c44da0f" data-element_type="section">
                        <div class="elementor-container elementor-column-gap-no">
                            <div class="elementor-column elementor-col-25 elementor-inner-column elementor-element elementor-element-325eb0d7"
                                data-id="325eb0d7" data-element_type="column"
                                data-settings='{"background_background":"classic"}'>
                                <div class="elementor-widget-wrap elementor-element-populated">
                                    <div class="elementor-element elementor-element-278e165 elementor-widget elementor-widget-image"
                                        data-id="278e165" data-element_type="widget" data-widget_type="image.default">
                                        <div class="elementor-widget-container">
                                                <img width="800" height="251"
                                                    src="<?php echo e($web_information->image->logo_footer ?? ''); ?>"
                                                    class="attachment-full size-full wp-image-291" alt=""
                                                    decoding="async" loading="lazy"
                                                    srcset="<?php echo e($web_information->image->logo_footer ?? ''); ?>"
                                                    sizes="(max-width: 800px) 100vw, 800px" />
                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-2748dfde elementor-widget elementor-widget-text-editor"
                                        data-id="2748dfde" data-element_type="widget"
                                        data-widget_type="text-editor.default">
                                        <div class="elementor-widget-container">
                                            <p>
                                                <?php echo e($web_information->information->{'brief_'.$locale} ?? ''); ?>

                                            </p>
                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-3513618a elementor-shape-circle e-grid-align-left e-grid-align-tablet-left elementor-grid-0 elementor-widget elementor-widget-social-icons"
                                        data-id="3513618a" data-element_type="widget"
                                        data-widget_type="social-icons.default">
                                        <div class="elementor-widget-container">

                                            <div class="elementor-social-icons-wrapper elementor-grid">

                                                <?php if(isset($web_information->social->facebook)): ?>
                                                    <span class="elementor-grid-item">
                                                        <a class="elementor-icon elementor-social-icon elementor-social-icon-facebook-f elementor-animation-shrink elementor-repeater-item-c0163ab"
                                                            href="<?php echo e($web_information->social->facebook); ?>" target="_blank">
                                                            <i class="fab fa-facebook-f"></i>
                                                        </a>
                                                    </span>
                                                <?php endif; ?>
                                                <?php if(isset($web_information->social->tiktok)): ?>
                                                    <span class="elementor-grid-item">
                                                        <a class="elementor-icon elementor-social-icon elementor-social-icon-tiktok elementor-animation-shrink elementor-repeater-item-63f86db"
                                                            href="<?php echo e($web_information->social->tiktok); ?>" target="_blank">
                                                            <i class="fab fa-tiktok"></i>
                                                        </a>
                                                    </span>
                                                <?php endif; ?>
                                                <?php if(isset($web_information->social->instagram)): ?>
                                                    <span class="elementor-grid-item">
                                                        <a class="elementor-icon elementor-social-icon elementor-social-icon-instagram elementor-animation-shrink elementor-repeater-item-63f86db"
                                                            href="<?php echo e($web_information->social->instagram); ?>"
                                                            target="_blank">
                                                            <i class="fab fa-instagram"></i>
                                                        </a>
                                                    </span>
                                                <?php endif; ?>
                                                <?php if(isset($web_information->social->youtube)): ?>
                                                    <span class="elementor-grid-item">
                                                        <a class="elementor-icon elementor-social-icon elementor-social-icon-youtube elementor-animation-shrink elementor-repeater-item-63f86db"
                                                            href="<?php echo e($web_information->social->youtube); ?>" target="_blank">
                                                            <i class="fab fa-youtube"></i>
                                                        </a>
                                                    </span>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php if(isset($menu)): ?>
                                <?php
                                    $footer_menu = $menu->filter(function ($item, $key) {
                                        return $item->menu_type == 'footer' && ($item->parent_id == null || $item->parent_id == 0);
                                    });
                                ?>
                                <?php $__currentLoopData = $footer_menu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $items): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php
                                        $title = isset($items->json_params->name->{$locale}) && $items->json_params->name->{$locale} != '' ? $items->json_params->name->{$locale} : $items->name;
                                        $footer_menu_child = $menu->filter(function ($item, $key) use ($items) {
                                            return $item->parent_id == $items->id;
                                        });
                                    ?>
                                    <div class="elementor-column elementor-col-25 elementor-inner-column elementor-element elementor-element-3f875f18"
                                        data-id="3f875f18" data-element_type="column">
                                        <div class="elementor-widget-wrap elementor-element-populated">
                                            <div class="elementor-element elementor-element-7e015939 elementor-widget elementor-widget-heading"
                                                data-id="7e015939" data-element_type="widget"
                                                data-widget_type="heading.default">
                                                <div class="elementor-widget-container">
                                                    <h4 class="elementor-heading-title elementor-size-default">
                                                        <?php echo e($title); ?>

                                                    </h4>
                                                </div>
                                            </div>
                                            
                                            <div class="elementor-element elementor-element-1c5845b5 elementor-icon-list--layout-traditional elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list"
                                                data-id="1c5845b5" data-element_type="widget"
                                                data-widget_type="icon-list.default">
                                                <div class="elementor-widget-container">
                                                    <ul class="elementor-icon-list-items">
                                                        <?php if(isset($footer_menu_child)): ?>
                                                            <?php $__currentLoopData = $footer_menu_child; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <li class="elementor-icon-list-item">
                                                                <a href="<?php echo e($item_child->url_link); ?>">
                                                                    <span class="elementor-icon-list-text"><?php echo e($item_child->json_params->name->{$locale}??$item_child->name); ?></span>
                                                                </a>
                                                            </li>
                                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                        <?php endif; ?>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php endif; ?>






                            <div class="elementor-column elementor-col-25 elementor-inner-column elementor-element elementor-element-5c980ef7"
                                data-id="5c980ef7" data-element_type="column">
                                <div class="elementor-widget-wrap elementor-element-populated">
                                    <div class="elementor-element elementor-element-56f044ad elementor-widget elementor-widget-heading"
                                        data-id="56f044ad" data-element_type="widget"
                                        data-widget_type="heading.default">
                                        <div class="elementor-widget-container">
                                            <h4 class="elementor-heading-title elementor-size-default">
                                                <?php echo app('translator')->get('Contact Information'); ?>
                                            </h4>
                                        </div>
                                    </div>
                                    
                                    <div class="elementor-element elementor-element-3c90e9d7 elementor-icon-list--layout-traditional elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list"
                                        data-id="3c90e9d7" data-element_type="widget"
                                        data-widget_type="icon-list.default">
                                        <div class="elementor-widget-container">
                                            <ul class="elementor-icon-list-items">
                                                <li class="elementor-icon-list-item">
                                                    <a
                                                        href="cdn-cgi/l/email-protection.html#ef868189808e9d868a83828a8b868c8e83889daf88828e8683c18c8082">
                                                        <span class="elementor-icon-list-icon">
                                                            <i aria-hidden="true" class="icon icon-envelope2"></i>
                                                        </span>
                                                        <span class="elementor-icon-list-text">
                                                            <span class="__cf_email__"
                                                                data-cfemail="e38a8d858c82918a868f8e86878a80828f8491a3848e828a8fcd808c8e"><?php echo e($web_information->information->email); ?></span></span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-601d323 elementor-icon-list--layout-traditional elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list"
                                        data-id="601d323" data-element_type="widget"
                                        data-widget_type="icon-list.default">
                                        <div class="elementor-widget-container">
                                            <ul class="elementor-icon-list-items">
                                                <li class="elementor-icon-list-item">
                                                    <a href="tel:<?php echo e($web_information->information->phone); ?>">
                                                        <span class="elementor-icon-list-icon">
                                                            <i aria-hidden="true" class="jki jki-phone1-light"></i>
                                                        </span>
                                                        <span
                                                            class="elementor-icon-list-text"><?php echo e($web_information->information->phone); ?></span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-d732653 elementor-icon-list--layout-traditional elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list"
                                        data-id="d732653" data-element_type="widget"
                                        data-widget_type="icon-list.default">
                                        <div class="elementor-widget-container">
                                            <ul class="elementor-icon-list-items">
                                                <li class="elementor-icon-list-item">
                                                    <span class="elementor-icon-list-icon">
                                                        <i aria-hidden="true" class="jki jki-map-marker1-light"></i>
                                                    </span>
                                                    <span
                                                        class="elementor-icon-list-text"><?php echo e($web_information->information->address); ?></span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                </div>
            </div>
        </div>
    </section>
</footer>
<?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/blocks/footer/styles/default.blade.php ENDPATH**/ ?>