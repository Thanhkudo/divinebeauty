<?php if($block): ?>
    <?php
        $title = $block->json_params->title->{$locale} ?? $block->title;
        $brief = $block->json_params->brief->{$locale} ?? $block->brief;
        $content = $block->json_params->content->{$locale} ?? $block->content;
        $image = $block->image != '' ? $block->image : null;
        $background = $block->image_background != '' ? $block->image_background : null;
        $url_link = $block->url_link != '' ? $block->url_link : '';
        $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
        
        // Filter all blocks by parent_id
        $block_childs = $blocks->filter(function ($item, $key) use ($block) {
            return $item->parent_id == $block->id;
        });
        
    ?>
    <div data-elementor-type="wp-page" data-elementor-id="97" class="elementor elementor-97">
        <div class="elementor-element elementor-element-168a095 e-con-boxed e-con" data-id="168a095"
            data-element_type="container"
            data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;content_width&quot;:&quot;boxed&quot;}">
            <div class="e-con-inner">
                <div class="elementor-element elementor-element-ed4758b e-con-full e-con" data-id="ed4758b"
                    data-element_type="container" data-settings="{&quot;content_width&quot;:&quot;full&quot;}">
                    <div class="elementor-element elementor-element-82af5af animated-slow elementor-invisible elementor-widget elementor-widget-heading"
                        data-id="82af5af" data-element_type="widget"
                        data-settings="{&quot;_animation&quot;:&quot;fadeInLeft&quot;}"
                        data-widget_type="heading.default">
                        <div class="elementor-widget-container">
                            <h5 class="elementor-heading-title elementor-size-default"><?php echo e($url_link_title); ?></h5>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-2608e29 elementor-widget elementor-widget-heading"
                        data-id="2608e29" data-element_type="widget" data-widget_type="heading.default">
                        <div class="elementor-widget-container">
                            <h2 class="elementor-heading-title elementor-size-default"><?php echo e($title); ?>

                            </h2>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-1d84997 elementor-widget elementor-widget-text-editor"
                        data-id="1d84997" data-element_type="widget" data-widget_type="text-editor.default">
                        <div class="elementor-widget-container">
                            <style>
                                /*! elementor - v3.11.1 - 15-02-2023 */
                                .elementor-widget-text-editor.elementor-drop-cap-view-stacked .elementor-drop-cap {
                                    background-color: #818a91;
                                    color: #fff
                                }

                                .elementor-widget-text-editor.elementor-drop-cap-view-framed .elementor-drop-cap {
                                    color: #818a91;
                                    border: 3px solid;
                                    background-color: transparent
                                }

                                .elementor-widget-text-editor:not(.elementor-drop-cap-view-default) .elementor-drop-cap {
                                    margin-top: 8px
                                }

                                .elementor-widget-text-editor:not(.elementor-drop-cap-view-default) .elementor-drop-cap-letter {
                                    width: 1em;
                                    height: 1em
                                }

                                .elementor-widget-text-editor .elementor-drop-cap {
                                    float: left;
                                    text-align: center;
                                    line-height: 1;
                                    font-size: 50px
                                }

                                .elementor-widget-text-editor .elementor-drop-cap-letter {
                                    display: inline-block
                                }
                            </style>
                            <p><?php echo $content; ?></p>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-8425997 e-con-full e-con" data-id="8425997"
                        data-element_type="container" data-settings="{&quot;content_width&quot;:&quot;full&quot;}">
                        <div class="elementor-element elementor-element-ec104ce e-con-full e-con" data-id="ec104ce"
                            data-element_type="container" data-settings="{&quot;content_width&quot;:&quot;full&quot;}">
                            <div class="elementor-element elementor-element-60e8fa1 elementor-view-framed elementor-shape-square elementor-widget elementor-widget-icon"
                                data-id="60e8fa1" data-element_type="widget" data-widget_type="icon.default">
                                <div class="elementor-widget-container">
                                    <div class="elementor-icon-wrapper">
                                        <div class="elementor-icon">
                                            <i aria-hidden="true" class="jki jki-email1-light"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="elementor-element elementor-element-00da5c1 elementor-widget elementor-widget-heading"
                                data-id="00da5c1" data-element_type="widget" data-widget_type="heading.default">
                                <div class="elementor-widget-container">
                                    <h3 class="elementor-heading-title elementor-size-default"><?php echo app('translator')->get('Get Consultation'); ?></h3>
                                </div>
                            </div>
                            <div class="elementor-element elementor-element-c8f6894 elementor-icon-list--layout-traditional elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list"
                                data-id="c8f6894" data-element_type="widget" data-widget_type="icon-list.default">
                                <div class="elementor-widget-container">
                                    
                                    <ul class="elementor-icon-list-items">
                                        <li class="elementor-icon-list-item">
                                            <a href="tel:<?php echo e($web_information->information->phone); ?>">
                                                <span class="elementor-icon-list-icon">
                                                    <i aria-hidden="true" class="fas fa-circle"></i> </span>
                                                <span class="elementor-icon-list-text">Phone :
                                                    <?php echo e($web_information->information->phone); ?></span>
                                            </a>
                                        </li>
                                        <li class="elementor-icon-list-item">
                                            <span class="elementor-icon-list-icon">
                                                <i aria-hidden="true" class="fas fa-circle"></i> </span>
                                            <span class="elementor-icon-list-text">Location :
                                                <?php echo e($web_information->information->address); ?></span>
                                        </li>
                                        <li class="elementor-icon-list-item">
                                            <a href="mailto: <?php echo e($web_information->information->email); ?>">
                                                <span class="elementor-icon-list-icon">
                                                    <i aria-hidden="true" class="fas fa-circle"></i> </span>
                                                <span class="elementor-icon-list-text">Email :
                                                    <?php echo e($web_information->information->email); ?></span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-68f447b e-con-full e-con" data-id="68f447b"
                            data-element_type="container" data-settings="{&quot;content_width&quot;:&quot;full&quot;}">
                            <div class="elementor-element elementor-element-830b797 elementor-view-framed elementor-shape-square elementor-widget elementor-widget-icon"
                                data-id="830b797" data-element_type="widget" data-widget_type="icon.default">
                                <div class="elementor-widget-container">
                                    <div class="elementor-icon-wrapper">
                                        <div class="elementor-icon">
                                            <i aria-hidden="true" class="jki jki-clock11-light"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="elementor-element elementor-element-8f4188a elementor-widget elementor-widget-heading"
                                data-id="8f4188a" data-element_type="widget" data-widget_type="heading.default">
                                <div class="elementor-widget-container">
                                    <h3 class="elementor-heading-title elementor-size-default"><?php echo app('translator')->get('Opening Hours'); ?></h3>
                                </div>
                            </div>
                            <div class="elementor-element elementor-element-c386b42 elementor-icon-list--layout-traditional elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list"
                                data-id="c386b42" data-element_type="widget" data-widget_type="icon-list.default">
                                <div class="elementor-widget-container">
                                    <ul class="elementor-icon-list-items">
                                        <?php if($block_childs): ?>
                                            <?php $__currentLoopData = $block_childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $items): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <li class="elementor-icon-list-item">
                                                    <span class="elementor-icon-list-icon">
                                                        <i aria-hidden="true" class="fas fa-circle"></i> </span>
                                                    <span class="elementor-icon-list-text"><?php echo e($items->title); ?></span>
                                                </li>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php endif; ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="elementor-element elementor-element-fe3c123 e-con-full e-con" data-id="fe3c123"
                    data-element_type="container"
                    data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;content_width&quot;:&quot;full&quot;}">
                    <div class="elementor-element elementor-element-320c71e elementor-widget elementor-widget-text-editor"
                        data-id="320c71e" data-element_type="widget" data-widget_type="text-editor.default">
                        <div class="elementor-widget-container">
                            <p><?php echo e($brief); ?></p>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-fc68a11 elementor-button-align-start elementor-widget elementor-widget-form"
                        data-id="fc68a11" data-element_type="widget"
                        data-settings="{&quot;step_next_label&quot;:&quot;Next&quot;,&quot;step_previous_label&quot;:&quot;Previous&quot;,&quot;button_width&quot;:&quot;100&quot;,&quot;step_type&quot;:&quot;number_text&quot;,&quot;step_icon_shape&quot;:&quot;circle&quot;}"
                        data-widget_type="form.default">
                        <div class="elementor-widget-container">
                            <style>
                                /*! elementor-pro - v3.11.0 - 13-02-2023 */
                                .elementor-button.elementor-hidden,
                                .elementor-hidden {
                                    display: none
                                }

                                .e-form__step {
                                    width: 100%
                                }

                                .e-form__step:not(.elementor-hidden) {
                                    display: flex;
                                    flex-wrap: wrap
                                }

                                .e-form__buttons {
                                    flex-wrap: wrap
                                }

                                .e-form__buttons,
                                .e-form__buttons__wrapper {
                                    display: flex
                                }

                                .e-form__indicators {
                                    display: flex;
                                    justify-content: space-between;
                                    align-items: center;
                                    flex-wrap: nowrap;
                                    font-size: 13px;
                                    margin-bottom: var(--e-form-steps-indicators-spacing)
                                }

                                .e-form__indicators__indicator {
                                    display: flex;
                                    flex-direction: column;
                                    align-items: center;
                                    justify-content: center;
                                    flex-basis: 0;
                                    padding: 0 var(--e-form-steps-divider-gap)
                                }

                                .e-form__indicators__indicator__progress {
                                    width: 100%;
                                    position: relative;
                                    background-color: var(--e-form-steps-indicator-progress-background-color);
                                    border-radius: var(--e-form-steps-indicator-progress-border-radius);
                                    overflow: hidden
                                }

                                .e-form__indicators__indicator__progress__meter {
                                    width: var(--e-form-steps-indicator-progress-meter-width, 0);
                                    height: var(--e-form-steps-indicator-progress-height);
                                    line-height: var(--e-form-steps-indicator-progress-height);
                                    padding-right: 15px;
                                    border-radius: var(--e-form-steps-indicator-progress-border-radius);
                                    background-color: var(--e-form-steps-indicator-progress-color);
                                    color: var(--e-form-steps-indicator-progress-meter-color);
                                    text-align: right;
                                    transition: width .1s linear
                                }

                                .e-form__indicators__indicator:first-child {
                                    padding-left: 0
                                }

                                .e-form__indicators__indicator:last-child {
                                    padding-right: 0
                                }

                                .e-form__indicators__indicator--state-inactive {
                                    color: var(--e-form-steps-indicator-inactive-primary-color, #c2cbd2)
                                }

                                .e-form__indicators__indicator--state-inactive [class*=indicator--shape-]:not(.e-form__indicators__indicator--shape-none) {
                                    background-color: var(--e-form-steps-indicator-inactive-secondary-color, #fff)
                                }

                                .e-form__indicators__indicator--state-inactive object,
                                .e-form__indicators__indicator--state-inactive svg {
                                    fill: var(--e-form-steps-indicator-inactive-primary-color, #c2cbd2)
                                }

                                .e-form__indicators__indicator--state-active {
                                    color: var(--e-form-steps-indicator-active-primary-color, #39b54a);
                                    border-color: var(--e-form-steps-indicator-active-secondary-color, #fff)
                                }

                                .e-form__indicators__indicator--state-active [class*=indicator--shape-]:not(.e-form__indicators__indicator--shape-none) {
                                    background-color: var(--e-form-steps-indicator-active-secondary-color, #fff)
                                }

                                .e-form__indicators__indicator--state-active object,
                                .e-form__indicators__indicator--state-active svg {
                                    fill: var(--e-form-steps-indicator-active-primary-color, #39b54a)
                                }

                                .e-form__indicators__indicator--state-completed {
                                    color: var(--e-form-steps-indicator-completed-secondary-color, #fff)
                                }

                                .e-form__indicators__indicator--state-completed [class*=indicator--shape-]:not(.e-form__indicators__indicator--shape-none) {
                                    background-color: var(--e-form-steps-indicator-completed-primary-color, #39b54a)
                                }

                                .e-form__indicators__indicator--state-completed .e-form__indicators__indicator__label {
                                    color: var(--e-form-steps-indicator-completed-primary-color, #39b54a)
                                }

                                .e-form__indicators__indicator--state-completed .e-form__indicators__indicator--shape-none {
                                    color: var(--e-form-steps-indicator-completed-primary-color, #39b54a);
                                    background-color: initial
                                }

                                .e-form__indicators__indicator--state-completed object,
                                .e-form__indicators__indicator--state-completed svg {
                                    fill: var(--e-form-steps-indicator-completed-secondary-color, #fff)
                                }

                                .e-form__indicators__indicator__icon {
                                    width: var(--e-form-steps-indicator-padding, 30px);
                                    height: var(--e-form-steps-indicator-padding, 30px);
                                    font-size: var(--e-form-steps-indicator-icon-size);
                                    border-width: 1px;
                                    border-style: solid;
                                    display: flex;
                                    justify-content: center;
                                    align-items: center;
                                    overflow: hidden;
                                    margin-bottom: 10px
                                }

                                .e-form__indicators__indicator__icon img,
                                .e-form__indicators__indicator__icon object,
                                .e-form__indicators__indicator__icon svg {
                                    width: var(--e-form-steps-indicator-icon-size);
                                    height: auto
                                }

                                .e-form__indicators__indicator__icon .e-font-icon-svg {
                                    height: 1em
                                }

                                .e-form__indicators__indicator__number {
                                    width: var(--e-form-steps-indicator-padding, 30px);
                                    height: var(--e-form-steps-indicator-padding, 30px);
                                    border-width: 1px;
                                    border-style: solid;
                                    display: flex;
                                    justify-content: center;
                                    align-items: center;
                                    margin-bottom: 10px
                                }

                                .e-form__indicators__indicator--shape-circle {
                                    border-radius: 50%
                                }

                                .e-form__indicators__indicator--shape-square {
                                    border-radius: 0
                                }

                                .e-form__indicators__indicator--shape-rounded {
                                    border-radius: 5px
                                }

                                .e-form__indicators__indicator--shape-none {
                                    border: 0
                                }

                                .e-form__indicators__indicator__label {
                                    text-align: center
                                }

                                .e-form__indicators__indicator__separator {
                                    width: 100%;
                                    height: var(--e-form-steps-divider-width);
                                    background-color: #c2cbd2
                                }

                                .e-form__indicators--type-icon,
                                .e-form__indicators--type-icon_text,
                                .e-form__indicators--type-number,
                                .e-form__indicators--type-number_text {
                                    align-items: flex-start
                                }

                                .e-form__indicators--type-icon .e-form__indicators__indicator__separator,
                                .e-form__indicators--type-icon_text .e-form__indicators__indicator__separator,
                                .e-form__indicators--type-number .e-form__indicators__indicator__separator,
                                .e-form__indicators--type-number_text .e-form__indicators__indicator__separator {
                                    margin-top: calc(var(--e-form-steps-indicator-padding, 30px) / 2 - var(--e-form-steps-divider-width, 1px) / 2)
                                }

                                .elementor-field-type-hidden {
                                    display: none
                                }

                                .elementor-field-type-html {
                                    display: inline-block
                                }

                                .elementor-login .elementor-lost-password,
                                .elementor-login .elementor-remember-me {
                                    font-size: .85em
                                }

                                .elementor-field-type-recaptcha_v3 .elementor-field-label {
                                    display: none
                                }

                                .elementor-field-type-recaptcha_v3 .grecaptcha-badge {
                                    z-index: 1
                                }

                                .elementor-button .elementor-form-spinner {
                                    order: 3
                                }

                                .elementor-form .elementor-button>span {
                                    display: flex;
                                    justify-content: center;
                                    align-items: center
                                }

                                .elementor-form .elementor-button .elementor-button-text {
                                    white-space: normal;
                                    flex-grow: 0
                                }

                                .elementor-form .elementor-button svg {
                                    height: auto
                                }

                                .elementor-form .elementor-button .e-font-icon-svg {
                                    height: 1em
                                }

                                .elementor-select-wrapper .select-caret-down-wrapper {
                                    position: absolute;
                                    top: 50%;
                                    transform: translateY(-50%);
                                    inset-inline-end: 10px;
                                    pointer-events: none;
                                    font-size: 11px
                                }

                                .elementor-select-wrapper .select-caret-down-wrapper svg {
                                    display: unset;
                                    width: 1em;
                                    aspect-ratio: unset;
                                    fill: currentColor
                                }

                                .elementor-select-wrapper .select-caret-down-wrapper i {
                                    font-size: 19px;
                                    line-height: 2
                                }

                                .elementor-select-wrapper.remove-before:before {
                                    content: "" !important
                                }
                            </style>
                            <form class="form_ajax" method="post" 
                                action="<?php echo e(route('frontend.contact.store')); ?>">
                                <?php echo csrf_field(); ?>
                                <input type="hidden" name="is_type" value="contact">

                                <div class="elementor-form-fields-wrapper elementor-labels-above">
                                    <div
                                        class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-100">
                                        <label for="form-field-name" class="elementor-field-label">
                                            <?php echo app('translator')->get('Name'); ?> </label>
                                        <input size="1" type="text" name="name"
                                            id="form-field-name"
                                            class="elementor-field elementor-size-md  elementor-field-textual"
                                            placeholder="Name">
                                    </div>
                                    
                                    <div
                                        class="elementor-field-type-tel elementor-field-group elementor-column elementor-field-group-phone elementor-col-100">
                                        <label for="form-field-phone" class="elementor-field-label">
                                            <?php echo app('translator')->get('Phone'); ?> </label>
                                            <input size="1" type="tel" name="phone" id="form-field-phone"
                                            class="elementor-field elementor-size-md elementor-field-textual"
                                            placeholder="Phone" pattern="^[0-9\-\+]{9,15}$"
                                            title="Only numbers and phone characters (#, -, *, etc) are accepted." />
                                    </div>
                                    <div
                                        class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-100 elementor-field-required">
                                        <label for="form-field-email" class="elementor-field-label">
                                            <?php echo app('translator')->get('Email'); ?>
                                        </label>
                                        <input size="1" type="email" name="email" id="form-field-email"
                                            class="elementor-field elementor-size-md elementor-field-textual"
                                            placeholder="<?php echo app('translator')->get('Email'); ?>" required="required" aria-required="true" />
                                    </div>
                                    <div
                                        class="elementor-field-type-textarea elementor-field-group elementor-column elementor-field-group-message elementor-col-100">
                                        <label for="form-field-message" class="elementor-field-label">
                                            <?php echo app('translator')->get('Message'); ?> </label>
                                        <textarea class="elementor-field-textual elementor-field  elementor-size-md" name="content"
                                            id="form-field-message" rows="4" placeholder="Message"></textarea>
                                    </div>
                                    <div
                                        class="elementor-field-group elementor-column elementor-field-type-submit elementor-col-100 e-form__buttons">
                                        <button type="submit" class="elementor-button elementor-size-md">
                                            <span>
                                                <span class="elementor-align-icon-left elementor-button-icon">
                                                    <i aria-hidden="true" class="mdi mdi-message-text-outline"></i>
                                                </span>
                                                <span class="elementor-button-text"><?php echo app('translator')->get('Send Message'); ?></span>
                                            </span>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/blocks/form/styles/contact.blade.php ENDPATH**/ ?>