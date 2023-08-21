@extends('admin.layouts.app')
@section('title')
    {{ $module_name }}
@endsection
@php
    if (Request::get('lang') == $languageDefault->lang_locale || Request::get('lang') == '') {
        $lang = $languageDefault->lang_locale;
    } else {
        $lang = Request::get('lang');
    }
    
@endphp
@section('style')
    <style>
        .checkbox_list {
            min-height: 300px;
        }

        .checkbox_list li {
            /* border-bottom: 1px dashed; */
        }
    </style>
@endsection
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            {{ $module_name }}
            <a class="btn btn-sm btn-warning pull-right" href="{{ route(Request::segment(2) . '.create') }}">
                <i class="fa fa-plus"></i>
                @lang('Add')
            </a>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        @if (session('errorMessage'))
            <div class="alert alert-warning alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                {{ session('errorMessage') }}
            </div>
        @endif
        @if (session('successMessage'))
            <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                {{ session('successMessage') }}
            </div>
        @endif
        @if ($errors->any())
            <div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                @foreach ($errors->all() as $error)
                    <p>{{ $error }}</p>
                @endforeach
            </div>
        @endif
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">@lang('Update form')</h3>
                @isset($languages)
                    @foreach ($languages as $item)
                        @if ($item->is_default == 1 && $item->lang_locale != Request::get('lang'))
                            @if (Request::get('lang') != '')
                                <a class="text-primary pull-right"
                                    href="{{ route(Request::segment(2) . '.edit', $detail->id) }}" style="padding-left: 15px">
                                    <i class="fa fa-language"></i> {{ __($item->lang_name) }}
                                </a>
                            @endif
                        @else
                            @if (Request::get('lang') != $item->lang_locale)
                                <a class="text-primary pull-right"
                                    href="{{ route(Request::segment(2) . '.edit', $detail->id) }}?lang={{ $item->lang_locale }}"
                                    style="padding-left: 15px">
                                    <i class="fa fa-language"></i> {{ __($item->lang_name) }}
                                </a>
                            @endif
                        @endif
                    @endforeach
                @endisset
                <span class="pull-right">@lang('Translations'): </span>
            </div>
            <!-- form start -->
            <form role="form" onsubmit=" return check_nestb()"
                action="{{ route(Request::segment(2) . '.update', $detail->id) }}" method="POST" class="form_pages">
                @csrf
                @method('PUT')
                @if (Request::get('lang') != '' && Request::get('lang') != $languageDefault->lang_locale)
                    <input type="hidden" name="lang" value="{{ Request::get('lang') }}">
                @endif
                <div class="box-body">
                    <!-- Custom Tabs -->
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a href="#tab_1" data-toggle="tab">
                                    <h5>
                                        @lang('General information')
                                        <span class="text-danger">*</span>
                                    </h5>
                                </a>
                            </li>
                            <button type="submit" class="btn btn-primary btn-sm pull-right btn_sm_th">
                                <i class="fa fa-floppy-o"></i>
                                @lang('Save')
                            </button>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_1">
                                <div class="d-flex flex-wrap">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>@lang('Name')</label>
                                            <small class="text-red">*</small>
                                            <i class="fa fa-coffee text-red" aria-hidden="true"></i>
                                            <input type="text" class="form-control" name="name"
                                                placeholder="@lang('Name')" value="{{ old('name') ?? ($detail->json_params->name->$lang ?? ($detail->name??"")) }}"
                                                required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>@lang('Url customize')</label>
                                            <i class="fa fa-coffee text-red" aria-hidden="true"></i>
                                            <small class="form-text">
                                                (
                                                <i class="fa fa-info-circle"></i>
                                                @lang('Maximum 100 characters in the group: "A-Z", "a-z", "0-9" and "-_"')
                                                )
                                            </small>
                                            <input type="text" class="form-control" name="alias"
                                                placeholder="@lang('Url customize')"
                                                value="{{ old('alias') ?? $detail->alias }}">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>@lang('Title')</label>
                                            <i class="fa fa-coffee text-red" aria-hidden="true"></i>
                                            <input type="text" class="form-control" name="title"
                                                placeholder="@lang('Title')"
                                                value="{{ old('title') ?? ($detail->json_params->title->$lang??($detail->title??"")) }}">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>@lang('Keyword')</label>
                                            <i class="fa fa-coffee text-red" aria-hidden="true"></i>
                                            <input type="text" class="form-control" name="keyword"
                                                placeholder="@lang('Keyword')"
                                                value="{{ old('keyword') ?? $detail->keyword }}">
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>@lang('Description')</label>
                                            <i class="fa fa-coffee text-red" aria-hidden="true"></i>
                                            <textarea type="text" class="form-control" name="description" placeholder="@lang('Description')">{{ old('description') ?? ($detail->json_params->description->$lang??$detail->description) }}</textarea>
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>@lang('Image')</label>
                                            <i class="fa fa-coffee text-red" aria-hidden="true"></i>
                                            <div class="input-group">
                                                <span class="input-group-btn">
                                                    <a data-input="og_image" data-preview="og_image-holder"
                                                        data-type="cms-image" class="btn btn-primary lfm">
                                                        <i class="fa fa-picture-o"></i> @lang('choose')
                                                    </a>
                                                </span>
                                                <input id="og_image" class="form-control" type="text"
                                                    name="json_params[og_image]" placeholder="@lang('image_link')..."
                                                    value="{{ $detail->json_params->og_image ?? old('json_params[og_image]') }}">
                                            </div>
                                            <div id="og_image-holder" style="margin-top:15px;max-height:150px;">
                                                @if (isset($detail->json_params->og_image) && $detail->json_params->og_image != '')
                                                    <img style="height: 10rem;"
                                                        src="{{ $detail->json_params->og_image }}">
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>@lang('Content Page')</label>
                                            <textarea type="text" class="form-control" name="content" id="content">{{ old('content') ?? ($detail->json_params->content->$lang??$detail->content) }}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>@lang('Status')</label>
                                            <div class="form-control">
                                                @foreach (App\Consts::STATUS as $key => $value)
                                                    <label>
                                                        <input type="radio" name="status" value="{{ $value }}"
                                                            {{ $detail->status == $value ? 'checked' : '' }}>
                                                        <small class="mr-15">{{ __($value) }}</small>
                                                    </label>
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>@lang('Order')</label>
                                            <input type="number" class="form-control" name="iorder"
                                                placeholder="@lang('Order')"
                                                value="{{ old('iorder') ?? $detail->iorder }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>@lang('Route Name')</label>
                                            <small class="text-red">*</small>
                                            <select name="route_name" id="route_name" class="form-control select2"
                                                style="width:100%" required autocomplete="off">
                                                <option value="">@lang('Please select')</option>
                                                @foreach (App\Consts::ROUTE_NAME as $key => $item)
                                                    <option value="{{ $item['name'] }}"
                                                        {{ $detail->route_name == $item['name'] ? 'selected' : '' }}>
                                                        {{ __($item['title']) }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    @php
                                        $route = $detail->route_name;
                                        $templates = collect(App\Consts::ROUTE_NAME);
                                        $template = $templates->first(function ($item, $key) use ($route) {
                                            return $item['name'] == $route;
                                        });
                                    @endphp
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>@lang('Template')</label>
                                            <small class="text-red">*</small>
                                            <select name="json_params[template]" id="template"
                                                class="form-control select2" style="width:100%" required
                                                autocomplete="off">
                                                <option value="">@lang('Please select')</option>
                                                @isset($template)
                                                    @foreach ($template['template'] as $key => $item)
                                                        <option value="{{ $item['name'] }}"
                                                            {{ isset($detail->json_params->template) && $detail->json_params->template == $item['name'] ? 'selected' : '' }}>
                                                            {{ __($item['title']) }}
                                                        </option>
                                                    @endforeach
                                                @endisset
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row nestable-lists">
                                    <div class="col-md-12">
                                        <hr style="border-top: dashed 2px #a94442; margin: 10px 0px;">
                                    </div>
                                    <div class="col-md-12">
                                        <h3>
                                            @lang('Setting Block Content')
                                        </h3>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 class="mb-15">
                                            @lang('Selected Blocks')
                                        </h4>
                                        <div class="dd checkbox_list" id="nastb_selected">
                                            @if (count($block_selected) > 0)
                                                <ol class=" dd-list">
                                                    @foreach ($block_selected as $item)
                                                        <li class="dd-item" data-id="{{ $item->id }}">
                                                            <div class="dd-handle">
                                                                <strong>{{ __($item->title) . ' (' . $item->block_name . ')' }}</strong>
                                                            </div>
                                                        </li>
                                                    @endforeach
                                                </ol>
                                            @endif
                                        </div>

                                    </div>
                                    <div class="col-md-6">
                                        <h4 class="mb-15">
                                            @lang('Available Blocks')
                                        </h4>
                                        <div class="dd checkbox_list" id="nastb_available">

                                            @if (count($blockContents) > 0)
                                                <ol class=" dd-list">
                                                    @foreach ($blockContents as $item)
                                                        @if (!in_array($item->id, $detail->json_params->block_content ?? []))
                                                            <li class="dd-item" data-id="{{ $item->id }}">
                                                                <div class="dd-handle ">
                                                                    <strong>{{ __($item->title) . ' (' . $item->block_name . ')' }}</strong>
                                                                </div>
                                                            </li>
                                                        @endif
                                                    @endforeach
                                                </ol>
                                            @endif
                                        </div>

                                    </div>

                                </div>


                            </div>
                        </div>
                    </div>
                </div>
                <input type="hidden" id="output_selected" name="output_selected" value="">
                <input type="hidden" id="output_available" name="output_available" value="">

                <div class="box-footer">
                    <a class="btn btn-sm btn-success" href="{{ route(Request::segment(2) . '.index') }}">
                        <i class="fa fa-bars"></i>
                        @lang('List')
                    </a>
                    <button type="submit" class="btn btn-primary btn-sm pull-right btn_sm_th">
                        <i class="fa fa-floppy-o"></i>
                        @lang('Save')
                    </button>
                </div>
            </form>
        </div>
    </section>
@endsection
@section('style')
    <link rel="stylesheet" href="{{ asset('themes/admin/plugins/nestable/jquery.nestable.min.css') }}">
@endsection
@section('script')
    <script src="{{ asset('themes/admin/plugins/nestable/jquery.nestable.min.js') }}"></script>
    <script>
        CKEDITOR.replace('content', ck_options);
        // Change to filter
        function check_nestb() {
            $('#output_selected').val(JSON.stringify($('#nastb_selected').nestable('serialize')));
            $('#output_available').val(JSON.stringify($('#nastb_available').nestable('serialize')));
            return true;
        }
        $(document).ready(function() {

            $('#nastb_selected').nestable({
                group: 0,
                maxDepth: 1,
            });
            $('#nastb_available').nestable({
                group: 0,
                maxDepth: 1,
            });



            // Routes get all
            var routes = @json(App\Consts::ROUTE_NAME ?? []);
            $(document).on('change', '#route_name', function() {
                let _value = $(this).val();
                let _targetHTML = $('#template');
                let _list = filterArray(routes, 'name', _value);
                let _optionList = '<option value="">@lang('Please select')</option>';
                if (_list) {
                    _list.forEach(element => {
                        element.template.forEach(item => {
                            _optionList += '<option value="' + item.name + '"> ' + item
                                .title + ' </option>';
                        });
                    });
                    _targetHTML.html(_optionList);
                }
                $(".select2").select2();
            });
            // Fill Available Blocks by template
            $(document).on('change', '#route_name', function() {
                $('#nastb_selected, #nastb_available').html('<div class="dd-empty"></div>');
            });
            $(document).on('change', '#template', function() {
                let template = $(this).val();
                let _targetHTML = $('#nastb_available');

                _targetHTML.html('');
                $('#nastb_selected').html('<div class="dd-empty"></div>');

                let url = "{{ route('block_contents.get_by_template') }}/";
                $.ajax({
                    type: "GET",
                    url: url,
                    data: {
                        "template": template,
                    },
                    success: function(response) {
                        if (response.message == 'success') {
                            let list = response.data || null;
                            let _item = '';
                            let _item_on = '<ol class=" dd-list" id="block_available">';
                            let _item_off = '</ol>';
                            if (list.length > 0) {
                                list.forEach(item => {
                                    _item += '<li class="dd-item" data-id="' + item.id +
                                        '">';
                                    _item += '<div class="dd-handle ">';
                                    _item += '<strong>' + item.title + ' (' + item
                                        .block_name + ')</strong>';
                                    _item += '</div>';
                                    _item += '</li>';
                                });
                                _targetHTML.parent().find('.dd-empty').remove();
                                _targetHTML.html(_item_on + _item + _item_off);
                            }
                        } else {
                            _targetHTML.html(response.message);
                        }
                    },
                    error: function(response) {
                        // Get errors
                        let errors = response.responseJSON.message;
                        _targetHTML.html(errors);
                    }
                });
            });

            // Checked and unchecked block item event
            $(document).on('click', '.block_item', function() {
                let ischecked = $(this).is(':checked');
                let _root = $(this).closest('li');
                console.log(_root);
                let _targetHTML;

                if (ischecked) {
                    _targetHTML = $("#block_selected");
                } else {
                    _targetHTML = $("#block_available");
                }
                _targetHTML.append(_root);
            });
            // Checked and unchecked widget item event
            $(document).on('click', '.widget_item', function() {
                let ischecked = $(this).is(':checked');
                let _root = $(this).closest('li');
                let _targetHTML;

                if (ischecked) {
                    _targetHTML = $("#widget_selected");
                } else {
                    _targetHTML = $("#widget_available");
                }
                _targetHTML.append(_root);
            });
        });
    </script>
@endsection
