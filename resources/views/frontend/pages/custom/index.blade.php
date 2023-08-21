@extends('frontend.layouts.default')

@php
    $page_title = $page->json_params->title->$locale ?? ($page->title ?? $page->name);
    $image = $page->json_params->og_image != '' ? $page->json_params->og_image : $web_information->image->background_breadcrumbs;
    $description = $page->json_params->description->{$locale} ?? ($page->description ?? '');
    $content = $page->json_params->content->{$locale} ?? ($page->content ?? '');
@endphp
@push('style')
    <style>

    </style>
@endpush
@section('content')
    <div data-elementor-type="wp-page" data-elementor-id="97" class="elementor elementor-97">
        <div class="elementor-element elementor-element-04be872 e-con-boxed e-con" data-id="04be872"
            data-element_type="container"
            data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;background_motion_fx_motion_fx_scrolling&quot;:&quot;yes&quot;,&quot;background_motion_fx_translateY_effect&quot;:&quot;yes&quot;,&quot;background_motion_fx_translateY_speed&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:10,&quot;sizes&quot;:[]},&quot;content_width&quot;:&quot;boxed&quot;,&quot;background_motion_fx_translateY_affectedRange&quot;:{&quot;unit&quot;:&quot;%&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:{&quot;start&quot;:0,&quot;end&quot;:100}},&quot;background_motion_fx_devices&quot;:[&quot;desktop&quot;,&quot;tablet&quot;,&quot;mobile&quot;]}"
            data-e-bg-lazyload=""
            style="background: url('{{ $image }}');
              background-position: center center;
                    background-repeat: repeat;
                    background-size: 100% auto;">
            <div class="e-con-inner">
                <div class="elementor-element elementor-element-7065d69 elementor-invisible elementor-widget elementor-widget-heading"
                    data-id="7065d69" data-element_type="widget"
                    data-settings="{&quot;_animation&quot;:&quot;fadeInUp&quot;}" data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h1 class="elementor-heading-title elementor-size-default">{{ $page_title }}</h1>
                    </div>
                </div>
                <div class="elementor-element elementor-element-1d7ed4d elementor-invisible elementor-widget elementor-widget-heading"
                    data-id="1d7ed4d" data-element_type="widget"
                    data-settings="{&quot;_animation&quot;:&quot;fadeInDown&quot;}" data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h4 class="elementor-heading-title elementor-size-default">{{ $description }}
                        </h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @if ($content != '')
        <div class="e-con">
            <div class="e-con-inner">
                {{-- <div class="elementor-element elementor-element-6f62a12 elementor-widget elementor-widget-heading"
                    data-id="6f62a12" data-element_type="widget" data-widget_type="heading.default">
                    <div class="elementor-widget-container">
                        <h1 class="elementor-heading-title elementor-size-default">{{$page_title}}</h1>
                    </div>
                </div> --}}
                <div class="elementor-element elementor-element-85d8178 elementor-widget elementor-widget-text-editor"
                    data-id="85d8178" data-element_type="widget" data-widget_type="text-editor.default">
                    <div class="elementor-widget-container">
                        {!!$content!!}
                    </div>
                </div>
            </div>
        </div>
    @endif
@endsection
