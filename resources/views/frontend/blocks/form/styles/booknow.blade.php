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

    <div class="elementor-278">
        <div class="elementor-element elementor-element-ac8b1e4 e-con-boxed e-con" data-id="ac8b1e4"
            data-element_type="container" data-settings='{"background_background":"classic","content_width":"boxed"}'
            data-e-bg-lazyload=""
            style="background: url({{ $background }});
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;">
            <div class="e-con-inner">
                <div class="elementor-element elementor-element-96bcbac e-con-full e-con" data-id="96bcbac"
                    data-element_type="container" data-settings='{"content_width":"full"}'>
                    <div class="elementor-element elementor-element-cabe5c9 animated-slow elementor-invisible elementor-widget elementor-widget-heading"
                        data-id="cabe5c9" data-element_type="widget" data-settings='{"_animation":"fadeInLeft"}'
                        data-widget_type="heading.default">
                        <div class="elementor-widget-container">
                            <h5 class="elementor-heading-title elementor-size-default">
                                {{ $url_link_title }}
                            </h5>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-d0c2d71 elementor-widget elementor-widget-heading"
                        data-id="d0c2d71" data-element_type="widget" data-widget_type="heading.default">
                        <div class="elementor-widget-container">
                            <h2 class="elementor-heading-title elementor-size-default">
                                {{ $title }}
                            </h2>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-9474791 elementor-widget elementor-widget-text-editor"
                        data-id="9474791" data-element_type="widget" data-widget_type="text-editor.default">
                        <div class="elementor-widget-container">

                            {{ $content }}
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-e4147d4 elementor-widget elementor-widget-heading"
                        data-id="e4147d4" data-element_type="widget" data-widget_type="heading.default">
                        <div class="elementor-widget-container">
                            <h4 class="elementor-heading-title elementor-size-default">
                                @lang('Opening Hours')
                            </h4>
                        </div>
                    </div>
                    @if ($block_childs)
                        @foreach ($block_childs as $items)
                            @php
                                $title_childs = $items->json_params->title->{$locale} ?? $items->title;
                                $brief_childs = $items->json_params->brief->{$locale} ?? $items->brief;
                                $contact_childs = $items->json_params->content->{$locale} ?? $items->content;
                                $icon_childs = $items->json_params->icon->{$locale} ?? $items->icon;
                                
                            @endphp
                           <div class="elementor-element elementor-element-562ce84 e-con-full e-con" data-id="562ce84"
                           data-element_type="container" data-settings='{"content_width":"full"}'>
                           <div class="elementor-element elementor-element-23eb752 e-con-full e-con" data-id="23eb752"
                               data-element_type="container" data-settings='{"content_width":"full"}'>
                               <div class="elementor-element elementor-element-f8aec51 elementor-widget elementor-widget-heading"
                                   data-id="f8aec51" data-element_type="widget" data-widget_type="heading.default">
                                   <div class="elementor-widget-container">
                                       <span class="elementor-heading-title elementor-size-default">{{ $title_childs}}</span>
                                   </div>
                               </div>
                           </div>
                           <div class="elementor-element elementor-element-3283b7d e-con-full e-con" data-id="3283b7d"
                               data-element_type="container" data-settings='{"content_width":"full"}'>
                               <div class="elementor-element elementor-element-44715d1 elementor-icon-list--layout-inline elementor-align-right elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list"
                                   data-id="44715d1" data-element_type="widget" data-widget_type="icon-list.default">
                                   <div class="elementor-widget-container">
   
                                       <ul class="elementor-icon-list-items elementor-inline-items">
                                           <li class="elementor-icon-list-item elementor-inline-item">
                                               <span class="elementor-icon-list-icon">
                                                   <i aria-hidden="true" class="{{$icon_childs}}"></i>
                                               </span>
                                               <span class="elementor-icon-list-text">{{$contact_childs}}</span>
                                           </li>
                                       </ul>
                                   </div>
                               </div>
                           </div>
                       </div>
                        @endforeach
                    @endif
                    
                  
                </div>
                <div class="elementor-element elementor-element-d6b03c2 animated-slow e-con-full elementor-invisible e-con"
                    data-id="d6b03c2" data-element_type="container"
                    data-settings='{"background_background":"classic","animation":"fadeInRight","content_width":"full"}'>
                    <div class="elementor-element elementor-element-fc0fce7 elementor-widget elementor-widget-text-editor"
                        data-id="fc0fce7" data-element_type="widget" data-widget_type="text-editor.default">
                        <div class="elementor-widget-container">
                            <p>
                                {{ $brief }}
                            </p>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-f6c8d91 elementor-button-align-start elementor-widget elementor-widget-form"
                        data-id="f6c8d91" data-element_type="widget"
                        data-settings='{"step_next_label":"Next","step_previous_label":"Previous","button_width":"100","step_type":"number_text","step_icon_shape":"circle"}'
                        data-widget_type="form.default">
                        <div class="elementor-widget-container">

                            <form class="form_ajax" method="post" action="{{ route('frontend.contact.store') }}">
                                @csrf
                                <input type="hidden" name="is_type" value="contact">

                                <div class="elementor-form-fields-wrapper elementor-labels-above">
                                    <div
                                        class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-100">
                                        <label for="form-field-name" class="elementor-field-label">
                                            @lang('Name') </label>
                                        <input size="1" type="text" name="name" id="form-field-name"
                                            class="elementor-field elementor-size-md  elementor-field-textual"
                                            placeholder="Name">
                                    </div>

                                    <div
                                        class="elementor-field-type-tel elementor-field-group elementor-column elementor-field-group-phone elementor-col-100 ">
                                        <label for="form-field-phone" class="elementor-field-label">
                                            @lang('Phone') </label>
                                        <input size="1" type="tel" name="phone" id="form-field-phone"
                                            class="elementor-field elementor-size-md elementor-field-textual"
                                            placeholder="Phone" pattern="^[0-9\-\+]{9,15}$"
                                            title="Only numbers and phone characters (#, -, *, etc) are accepted." />
                                    </div>
                                    <div
                                        class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-100 elementor-field-required">
                                        <label for="form-field-email" class="elementor-field-label">
                                            @lang('Email')
                                        </label>
                                        <input size="1" type="email" name="email" id="form-field-email"
                                            class="elementor-field elementor-size-md elementor-field-textual"
                                            placeholder="@lang('Email')" required="required"
                                            aria-required="true" />
                                    </div>
                                    <div
                                        class="elementor-field-type-textarea elementor-field-group elementor-column elementor-field-group-message elementor-col-100">
                                        <label for="form-field-message" class="elementor-field-label">
                                            @lang('Message') </label>
                                        <textarea class="elementor-field-textual elementor-field  elementor-size-md" name="content" id="form-field-message"
                                            rows="4" placeholder="Message"></textarea>
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
    </div>
@endif
