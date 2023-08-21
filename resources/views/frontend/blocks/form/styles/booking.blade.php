@if ($block)
    @php
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
        
    @endphp


    <div class="elementor-element elementor-element-20fd6022 animated-slow e-con-boxed elementor-invisible e-con"
        data-id="20fd6022" data-element_type="container" data-settings='{"animation":"fadeInUp","content_width":"boxed"}'>
        <div class="e-con-inner">
            <div class="elementor-element elementor-element-1c68afca e-con-full e-con" data-id="1c68afca"
                data-element_type="container" data-settings='{"background_background":"classic","content_width":"full"}'
                data-e-bg-lazyload="">
                <div class="elementor-element elementor-element-2eb5d8a5 e-con-full e-con" data-id="2eb5d8a5"
                    data-element_type="container" data-settings='{"content_width":"full"}'>
                    <div class="elementor-element elementor-element-1d858db7 elementor-widget elementor-widget-heading"
                        data-id="1d858db7" data-element_type="widget" data-widget_type="heading.default">
                        <div class="elementor-widget-container">
                            <h3 class="elementor-heading-title elementor-size-default">
                                {{ $title }}
                            </h3>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-1c4eacf9 elementor-widget elementor-widget-text-editor"
                        data-id="1c4eacf9" data-element_type="widget" data-widget_type="text-editor.default">
                        <div class="elementor-widget-container">
                           
                            <p>
                                {!! $content !!}
                            </p>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-71e2b3e7 elementor-view-framed elementor-position-left elementor-vertical-align-middle elementor-mobile-position-left elementor-shape-circle elementor-widget elementor-widget-icon-box"
                        data-id="71e2b3e7" data-element_type="widget" data-widget_type="icon-box.default">
                        <div class="elementor-widget-container">
                            
                            <div class="elementor-icon-box-wrapper">
                                <div class="elementor-icon-box-icon">
                                    <a class="elementor-icon elementor-animation-"
                                        href="tel:{{ $web_information->information->phone ?? '' }}">
                                        <i aria-hidden="true" class="jki jki-phone1-light"></i>
                                    </a>
                                </div>
                                <div class="elementor-icon-box-content">
                                    <h4 class="elementor-icon-box-title">
                                        <a href="tel:{{ $web_information->information->phone ?? '' }}">
                                            {{ $web_information->information->phone ?? '' }}
                                        </a>
                                    </h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-18f68b1 elementor-view-framed elementor-position-left elementor-vertical-align-middle elementor-mobile-position-left elementor-shape-circle elementor-widget elementor-widget-icon-box"
                        data-id="18f68b1" data-element_type="widget" data-widget_type="icon-box.default">
                        <div class="elementor-widget-container">
                            <div class="elementor-icon-box-wrapper">
                                <div class="elementor-icon-box-icon">
                                    <a class="elementor-icon elementor-animation-"
                                        href="{{ $web_information->information->map ?? '#' }}">
                                        <i aria-hidden="true" class="icon icon-map-marker1"></i>
                                    </a>
                                </div>
                                <div class="elementor-icon-box-content">
                                    <h4 class="elementor-icon-box-title">
                                        <a href="{{ $web_information->information->map ?? '#' }}">
                                            {{ $web_information->information->address ?? '' }}
                                        </a>
                                    </h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="elementor-element elementor-element-11953f01 e-con-full e-con" data-id="11953f01"
                    data-element_type="container" data-settings='{"content_width":"full"}'>
                    <div class="elementor-element elementor-element-400602d3 elementor-icon-list--layout-traditional elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list"
                        data-id="400602d3" data-element_type="widget" data-widget_type="icon-list.default">
                        <div class="elementor-widget-container">
                            
                            <ul class="elementor-icon-list-items">
                                @if ($block_childs)
                                    @foreach ($block_childs as $items)
                                        @php
                                            $title_childs = $items->json_params->title->{$locale} ?? $items->title;
                                            $brief_childs = $items->json_params->brief->{$locale} ?? $items->brief;
                                            $icon_childs = $items->json_params->icon->{$locale} ?? $items->icon;
                                        @endphp
                                        <li class="elementor-icon-list-item">
                                            <span class="elementor-icon-list-icon">
                                                <i aria-hidden="true" class="{{ $icon_childs }}"></i>
                                            </span>
                                            <span class="elementor-icon-list-text">{{ $title_childs }}</span>
                                        </li>
                                    @endforeach
                                @endif

                            </ul>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-18005963 elementor-align-justify elementor-widget elementor-widget-button"
                        data-id="18005963" data-element_type="widget" data-widget_type="button.default">
                        <div class="elementor-widget-container">
                            <div class="elementor-button-wrapper">
                                <a href="{{ $url_link }}"
                                    class="elementor-button-link elementor-button elementor-size-sm" role="button">
                                    <span class="elementor-button-content-wrapper">
                                        <span class="elementor-button-text">{{ $url_link_title }}</span>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="elementor-element elementor-element-1053a240 e-con-full e-con" data-id="1053a240"
                data-element_type="container"
                data-settings='{"background_background":"classic","content_width":"full"}'>
                <div class="elementor-element elementor-element-22b236f0 elementor-view-default elementor-vertical-align-top elementor-widget elementor-widget-icon-box"
                    data-id="22b236f0" data-element_type="widget" data-widget_type="icon-box.default">
                    <div class="elementor-widget-container">
                        <div class="elementor-icon-box-wrapper">
                            <div class="elementor-icon-box-content">
                                <h3 class="elementor-icon-box-title">
                                    <span> {{ $brief }} </span>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="elementor-element elementor-element-5e489f6 elementor-button-align-start elementor-widget elementor-widget-form"
                    data-id="5e489f6" data-element_type="widget"
                    data-settings='{"step_next_label":"Next","step_previous_label":"Previous","button_width":"100","step_type":"number_text","step_icon_shape":"circle"}'
                    data-widget_type="form.default">
                    <div class="elementor-widget-container">
                        <style>
                            /*! elementor-pro - v3.11.0 - 13-02-2023 */
                            .elementor-button.elementor-hidden,
                            .elementor-hidden {
                                display: none;
                            }

                            .e-form__step {
                                width: 100%;
                            }

                            .e-form__step:not(.elementor-hidden) {
                                display: flex;
                                flex-wrap: wrap;
                            }

                            .e-form__buttons {
                                flex-wrap: wrap;
                            }

                            .e-form__buttons,
                            .e-form__buttons__wrapper {
                                display: flex;
                            }

                            .e-form__indicators {
                                display: flex;
                                justify-content: space-between;
                                align-items: center;
                                flex-wrap: nowrap;
                                font-size: 13px;
                                margin-bottom: var(--e-form-steps-indicators-spacing);
                            }

                            .e-form__indicators__indicator {
                                display: flex;
                                flex-direction: column;
                                align-items: center;
                                justify-content: center;
                                flex-basis: 0;
                                padding: 0 var(--e-form-steps-divider-gap);
                            }

                            .e-form__indicators__indicator__progress {
                                width: 100%;
                                position: relative;
                                background-color: var(--e-form-steps-indicator-progress-background-color);
                                border-radius: var(--e-form-steps-indicator-progress-border-radius);
                                overflow: hidden;
                            }

                            .e-form__indicators__indicator__progress__meter {
                                width: var(--e-form-steps-indicator-progress-meter-width,
                                        0);
                                height: var(--e-form-steps-indicator-progress-height);
                                line-height: var(--e-form-steps-indicator-progress-height);
                                padding-right: 15px;
                                border-radius: var(--e-form-steps-indicator-progress-border-radius);
                                background-color: var(--e-form-steps-indicator-progress-color);
                                color: var(--e-form-steps-indicator-progress-meter-color);
                                text-align: right;
                                transition: width 0.1s linear;
                            }

                            .e-form__indicators__indicator:first-child {
                                padding-left: 0;
                            }

                            .e-form__indicators__indicator:last-child {
                                padding-right: 0;
                            }

                            .e-form__indicators__indicator--state-inactive {
                                color: var(--e-form-steps-indicator-inactive-primary-color,
                                        #c2cbd2);
                            }

                            .e-form__indicators__indicator--state-inactive [class*="indicator--shape-"]:not(.e-form__indicators__indicator--shape-none) {
                                background-color: var(--e-form-steps-indicator-inactive-secondary-color,
                                        #fff);
                            }

                            .e-form__indicators__indicator--state-inactive object,
                            .e-form__indicators__indicator--state-inactive svg {
                                fill: var(--e-form-steps-indicator-inactive-primary-color,
                                        #c2cbd2);
                            }

                            .e-form__indicators__indicator--state-active {
                                color: var(--e-form-steps-indicator-active-primary-color,
                                        #39b54a);
                                border-color: var(--e-form-steps-indicator-active-secondary-color,
                                        #fff);
                            }

                            .e-form__indicators__indicator--state-active [class*="indicator--shape-"]:not(.e-form__indicators__indicator--shape-none) {
                                background-color: var(--e-form-steps-indicator-active-secondary-color,
                                        #fff);
                            }

                            .e-form__indicators__indicator--state-active object,
                            .e-form__indicators__indicator--state-active svg {
                                fill: var(--e-form-steps-indicator-active-primary-color,
                                        #39b54a);
                            }

                            .e-form__indicators__indicator--state-completed {
                                color: var(--e-form-steps-indicator-completed-secondary-color,
                                        #fff);
                            }

                            .e-form__indicators__indicator--state-completed [class*="indicator--shape-"]:not(.e-form__indicators__indicator--shape-none) {
                                background-color: var(--e-form-steps-indicator-completed-primary-color,
                                        #39b54a);
                            }

                            .e-form__indicators__indicator--state-completed .e-form__indicators__indicator__label {
                                color: var(--e-form-steps-indicator-completed-primary-color,
                                        #39b54a);
                            }

                            .e-form__indicators__indicator--state-completed .e-form__indicators__indicator--shape-none {
                                color: var(--e-form-steps-indicator-completed-primary-color,
                                        #39b54a);
                                background-color: initial;
                            }

                            .e-form__indicators__indicator--state-completed object,
                            .e-form__indicators__indicator--state-completed svg {
                                fill: var(--e-form-steps-indicator-completed-secondary-color,
                                        #fff);
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
                                margin-bottom: 10px;
                            }

                            .e-form__indicators__indicator__icon img,
                            .e-form__indicators__indicator__icon object,
                            .e-form__indicators__indicator__icon svg {
                                width: var(--e-form-steps-indicator-icon-size);
                                height: auto;
                            }

                            .e-form__indicators__indicator__icon .e-font-icon-svg {
                                height: 1em;
                            }

                            .e-form__indicators__indicator__number {
                                width: var(--e-form-steps-indicator-padding, 30px);
                                height: var(--e-form-steps-indicator-padding, 30px);
                                border-width: 1px;
                                border-style: solid;
                                display: flex;
                                justify-content: center;
                                align-items: center;
                                margin-bottom: 10px;
                            }

                            .e-form__indicators__indicator--shape-circle {
                                border-radius: 50%;
                            }

                            .e-form__indicators__indicator--shape-square {
                                border-radius: 0;
                            }

                            .e-form__indicators__indicator--shape-rounded {
                                border-radius: 5px;
                            }

                            .e-form__indicators__indicator--shape-none {
                                border: 0;
                            }

                            .e-form__indicators__indicator__label {
                                text-align: center;
                            }

                            .e-form__indicators__indicator__separator {
                                width: 100%;
                                height: var(--e-form-steps-divider-width);
                                background-color: #c2cbd2;
                            }

                            .e-form__indicators--type-icon,
                            .e-form__indicators--type-icon_text,
                            .e-form__indicators--type-number,
                            .e-form__indicators--type-number_text {
                                align-items: flex-start;
                            }

                            .e-form__indicators--type-icon .e-form__indicators__indicator__separator,
                            .e-form__indicators--type-icon_text .e-form__indicators__indicator__separator,
                            .e-form__indicators--type-number .e-form__indicators__indicator__separator,
                            .e-form__indicators--type-number_text .e-form__indicators__indicator__separator {
                                margin-top: calc(var(--e-form-steps-indicator-padding, 30px) / 2 - var(--e-form-steps-divider-width, 1px) / 2);
                            }

                            .elementor-field-type-hidden {
                                display: none;
                            }

                            .elementor-field-type-html {
                                display: inline-block;
                            }

                            .elementor-login .elementor-lost-password,
                            .elementor-login .elementor-remember-me {
                                font-size: 0.85em;
                            }

                            .elementor-field-type-recaptcha_v3 .elementor-field-label {
                                display: none;
                            }

                            .elementor-field-type-recaptcha_v3 .grecaptcha-badge {
                                z-index: 1;
                            }

                            .elementor-button .elementor-form-spinner {
                                order: 3;
                            }

                            .elementor-form .elementor-button>span {
                                display: flex;
                                justify-content: center;
                                align-items: center;
                            }

                            .elementor-form .elementor-button .elementor-button-text {
                                white-space: normal;
                                flex-grow: 0;
                            }

                            .elementor-form .elementor-button svg {
                                height: auto;
                            }

                            .elementor-form .elementor-button .e-font-icon-svg {
                                height: 1em;
                            }

                            .elementor-select-wrapper .select-caret-down-wrapper {
                                position: absolute;
                                top: 50%;
                                transform: translateY(-50%);
                                inset-inline-end: 10px;
                                pointer-events: none;
                                font-size: 11px;
                            }

                            .elementor-select-wrapper .select-caret-down-wrapper svg {
                                display: unset;
                                width: 1em;
                                aspect-ratio: unset;
                                fill: currentColor;
                            }

                            .elementor-select-wrapper .select-caret-down-wrapper i {
                                font-size: 19px;
                                line-height: 2;
                            }

                            .elementor-select-wrapper.remove-before:before {
                                content: "" !important;
                            }
                        </style>
                        <form class="form_ajax" method="post" name="New Form"
                            action="{{ route('frontend.contact.store') }}">
                            @csrf
                            <input type="hidden" name="is_type" value="contact">

                            <div class="elementor-form-fields-wrapper elementor-labels-above">
                                <div
                                    class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-100">
                                    <label for="form-field-name" class="elementor-field-label">
                                        @lang('Name')
                                    </label>
                                    <input size="1" type="text" name="name" id="form-field-name"
                                        class="elementor-field elementor-size-md elementor-field-textual"
                                        placeholder="@lang('Name')" />
                                </div>

                                <div
                                    class="elementor-field-type-tel elementor-field-group elementor-column elementor-field-group-phone elementor-col-100">
                                    <label for="form-field-phone" class="elementor-field-label">
                                        @lang('Phone')
                                    </label>
                                    <input size="1" type="tel" name="phone" id="form-field-phone"
                                        class="elementor-field elementor-size-md elementor-field-textual"
                                        placeholder="@lang('Phone')" pattern="^[0-9\-\+]{9,15}$"
                                        title="Only numbers and phone characters (#, -, *, etc) are accepted." />
                                </div>
                                <div
                                    class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-100 elementor-field-required">
                                    <label for="form-field-email" class="elementor-field-label">
                                        @lang('Email')
                                    </label>
                                    <input size="1" type="email" name="email" id="form-field-email"
                                        class="elementor-field elementor-size-md elementor-field-textual"
                                        placeholder="@lang('Email')" required="required" aria-required="true" />
                                </div>
                                <div
                                    class="elementor-field-group elementor-column elementor-field-type-submit elementor-col-100 e-form__buttons">
                                    <button type="submit" class="elementor-button elementor-size-md">
                                        <span>
                                            <span class="elementor-align-icon-left elementor-button-icon">
                                                <i aria-hidden="true" class="mdi mdi-message-text-outline"></i>
                                            </span>
                                            <span class="elementor-button-text">@lang('Send Message')</span>
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
@endif
