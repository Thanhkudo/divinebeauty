@php
    if (isset($menu)) {
        $main_menu = $menu->first(function ($item, $key) {
            return $item->menu_type == 'header' && ($item->parent_id == null || $item->parent_id == 0);
        });
    
        $menu_chil = $menu->filter(function ($item, $key) use ($main_menu) {
            return $item->parent_id == $main_menu->id;
        });
    }
    
@endphp

<header data-elementor-type="header" data-elementor-id="84" class="elementor elementor-84 elementor-location-header">
    <div class="elementor-element elementor-element-763b117 e-con-boxed e-con" data-id="763b117"
        data-element_type="container">
        <div class="e-con-inner">
            <div class="elementor-element elementor-element-2970a3f e-con-full e-con" data-id="2970a3f"
                data-element_type="container"
                data-settings='{"background_background":"classic","content_width":"full"}'>
                <div class="elementor-element elementor-element-a4361c3 elementor-widget__width-auto elementor-hidden-mobile elementor-widget elementor-widget-ekit-nav-menu"
                    data-id="a4361c3" data-element_type="widget" data-widget_type="ekit-nav-menu.default">
                    <div class="elementor-widget-container">
                        <div class="ekit-wid-con ekit_menu_responsive_tablet"
                            data-hamburger-icon="icon icon-menu-button" data-hamburger-icon-type="icon"
                            data-responsive-breakpoint="1024">
                            <button class="elementskit-menu-hamburger elementskit-menu-toggler" title="menu">
                                <i aria-hidden="true" class="ekit-menu-icon icon icon-menu-button"></i>
                            </button>
                            <div id="ekit-megamenu-left-menu"
                                class="elementskit-menu-container elementskit-menu-offcanvas-elements elementskit-navbar-nav-default elementskit_plus_icon ekit-nav-menu-one-page-no ekit-nav-dropdown-hover">
                                <ul id="menu-left-menu"
                                    class="elementskit-navbar-nav elementskit-menu-po-justified submenu-click-on-icon">

                                    @isset($menu_chil)
                                        @foreach ($menu_chil as $item)
                                            @php
                                                if ($loop->index > 2) {
                                                    break;
                                                }
                                            @endphp
                                            @if ($item->sub <= 0)
                                                <li id="menu-item-{{ $item->id }}"
                                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-76 current_page_item menu-item-389 nav-item elementskit-mobile-builder-content {{ $item->url_link == url()->full() ? 'active' : '' }}"
                                                    data-vertical-menu="750px">
                                                    <a href="{{ $item->url_link }}"
                                                        class="ekit-menu-nav-link {{ $item->url_link == url()->full() ? 'active' : '' }}">
                                                        @if (isset($item->json_params->image) && $item->json_params->image != '')
                                                            <img class="trp-flag-image" style="margin-right: 5px"
                                                                src="{{ $item->json_params->image }}" width="18"
                                                                height="12" alt="en_GB" title="English" /><span
                                                                class="trp-ls-language-name">
                                                        @endif
                                                        {{ $item->json_params->name->{$locale} ?? ($item->name ?? '') }}
                                                    </a>
                                                </li>
                                            @else
                                                <li id="menu-item-{{ $item->id }}"
                                                    class="menu-item menu-item-type-post_type_archive menu-item-object-treatments menu-item-has-children menu-item-911 nav-item elementskit-dropdown-has relative_position elementskit-dropdown-menu-default_width elementskit-mobile-builder-content {{ $item->url_link == url()->full() ? 'active' : '' }}"
                                                    data-vertical-menu="750px">
                                                    <a href="{{ $item->url_link }}"
                                                        class="ekit-menu-nav-link ekit-menu-dropdown-toggle {{ $item->url_link == url()->full() ? 'active' : '' }}">
                                                        {{ $item->json_params->name->{$locale} ?? ($item->name ?? '') }}
                                                        <i class="icon icon-down-arrow1 elementskit-submenu-indicator"></i>
                                                    </a>
                                                    <ul class="elementskit-dropdown elementskit-submenu-panel">
                                                        @foreach ($menu as $item_sub)
                                                            @if ($item_sub->parent_id == $item->id)
                                                                @if ($item_sub->sub <= 0)
                                                                    <li id="menu-item-{{ $item_sub->id ?? '' }}"
                                                                        class="menu-item menu-item-type-post_type menu-item-object-treatments menu-item-1006 nav-item elementskit-mobile-builder-content"
                                                                        data-vertical-menu="750px">
                                                                        <a href="{{ $item_sub->url_link }}"
                                                                            class="dropdown-item">{{ $item_sub->json_params->name->{$locale} ?? ($item_sub->name ?? '') }}</a>
                                                                    </li>
                                                                @endif
                                                            @endif
                                                        @endforeach
                                                    </ul>
                                                </li>
                                            @endif
                                        @endforeach
                                    @endisset
                                </ul>
                                <div class="elementskit-nav-identity-panel">
                                    <div class="elementskit-site-title">
                                        <a class="elementskit-nav-logo" href="{{ route('frontend.home') }}"
                                            target="_self" rel="">
                                            <img width="136" height="38"
                                                src="{{ $web_information->image->logo_header ?? '' }}"
                                                class="attachment-full size-full" alt="" decoding="async"
                                                loading="lazy" />
                                        </a>
                                    </div>
                                    <button class="elementskit-menu-close elementskit-menu-toggler" type="button">
                                        X
                                    </button>
                                </div>
                            </div>
                            <div
                                class="elementskit-menu-overlay elementskit-menu-offcanvas-elements elementskit-menu-toggler ekit-nav-menu--overlay">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="elementor-element elementor-element-e81a5a0 elementor-widget__width-initial elementor-widget elementor-widget-image"
                    data-id="e81a5a0" data-element_type="widget" data-widget_type="image.default">
                    <div class="elementor-widget-container">
                        <style>
                            /*! elementor - v3.11.1 - 15-02-2023 */
                            .elementor-widget-image {
                                text-align: center;
                            }

                            .elementor-widget-image a {
                                display: inline-block;
                            }

                            .elementor-widget-image a img[src$=".svg"] {
                                width: 48px;
                            }

                            .elementor-widget-image img {
                                vertical-align: middle;
                                display: inline-block;
                            }
                        </style>
                        <a href="{{ route('frontend.home') }}">
                            @if(isset($web_information->source_code->logo_svg) && $web_information->source_code->logo_svg !="")
                                {!!$web_information->source_code->logo_svg!!}
                            @else
                             <img style="width: 100%;" width="800" height="251" src="{{ $web_information->image->logo_header ?? '' }}"
                                class="attachment-full size-full wp-image-291" alt="" decoding="async"
                                loading="lazy" srcset="{{ $web_information->image->logo_header ?? '' }}"
                                sizes="(max-width: 800px) 100vw, 800px" />
                            @endif
                           
                        </a>
                    </div>
                </div>
                <div class="elementor-element elementor-element-b65b9ad elementor-widget__width-auto elementor-hidden-mobile elementor-widget elementor-widget-ekit-nav-menu"
                    data-id="b65b9ad" data-element_type="widget" data-widget_type="ekit-nav-menu.default">
                    <div class="elementor-widget-container">
                        <div class="ekit-wid-con ekit_menu_responsive_tablet"
                            data-hamburger-icon="icon icon-menu-button" data-hamburger-icon-type="icon"
                            data-responsive-breakpoint="1024">
                            <button class="elementskit-menu-hamburger elementskit-menu-toggler"  title="menu">
                                <i aria-hidden="true" class="ekit-menu-icon icon icon-menu-button"></i>
                            </button>
                            <div id="ekit-megamenu-right-menu"
                                class="elementskit-menu-container elementskit-menu-offcanvas-elements elementskit-navbar-nav-default elementskit_plus_icon ekit-nav-menu-one-page-no ekit-nav-dropdown-hover">
                                <ul id="menu-right-menu"
                                    class="elementskit-navbar-nav elementskit-menu-po-justified submenu-click-on-icon">
                                    @isset($menu_chil)
                                        @foreach ($menu_chil as $item)
                                            @php
                                                if ($loop->index < 3) {
                                                    continue;
                                                }
                                            @endphp
                                            @if ($item->sub <= 0)
                                                <li id="menu-item-{{ $item->id }}"
                                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-76 current_page_item menu-item-389 nav-item elementskit-mobile-builder-content {{ $item->url_link == url()->full() ? 'active' : '' }}"
                                                    data-vertical-menu="750px">
                                                    <a href="{{ $item->url_link }}"
                                                        class="ekit-menu-nav-link {{ $item->url_link == url()->full() ? 'active' : '' }}">
                                                        @if (isset($item->json_params->image) && $item->json_params->image != '')
                                                            <img class="trp-flag-image" style="margin-right: 5px"
                                                                src="{{ $item->json_params->image }}" width="18"
                                                                height="12" alt="en_GB" title="English" /><span
                                                                class="trp-ls-language-name">
                                                        @endif
                                                        {{ $item->json_params->name->{$locale} ?? ($item->name ?? '') }}
                                                    </a>
                                                </li>
                                            @else
                                                <li id="menu-item-{{ $item->id }}"
                                                    class="menu-item menu-item-type-post_type_archive menu-item-object-treatments menu-item-has-children menu-item-911 nav-item elementskit-dropdown-has relative_position elementskit-dropdown-menu-default_width elementskit-mobile-builder-content {{ $item->url_link == url()->full() ? 'active' : '' }}"
                                                    data-vertical-menu="750px">
                                                    <a href="{{ $item->url_link }}"
                                                        class="ekit-menu-nav-link ekit-menu-dropdown-toggle {{ $item->url_link == url()->full() ? 'active' : '' }}">
                                                        {{ $item->json_params->name->{$locale} ?? ($item->name ?? '') }}
                                                        <i class="icon icon-down-arrow1 elementskit-submenu-indicator"></i>
                                                    </a>
                                                    <ul class="elementskit-dropdown elementskit-submenu-panel">
                                                        @foreach ($menu as $item_sub)
                                                            @if ($item_sub->parent_id == $item->id)
                                                                @if ($item_sub->sub <= 0)
                                                                    <li id="menu-item-{{ $item_sub->id ?? '' }}"
                                                                        class="menu-item menu-item-type-post_type menu-item-object-treatments menu-item-1006 nav-item elementskit-mobile-builder-content"
                                                                        data-vertical-menu="750px">
                                                                        <a href="{{ $item_sub->url_link }}"
                                                                            class="dropdown-item">{{ $item_sub->json_params->name->{$locale} ?? ($item_sub->name ?? '') }}</a>
                                                                    </li>
                                                                @endif
                                                            @endif
                                                        @endforeach
                                                    </ul>
                                                </li>
                                            @endif
                                        @endforeach
                                    @endisset

                                </ul>
                                <div class="elementskit-nav-identity-panel">
                                    <div class="elementskit-site-title">
                                        <a class="elementskit-nav-logo" href="{{ route('frontend.home') }}"
                                            target="_self" rel="">
                                            <img width="2299" height="764"
                                                src="{{ $web_information->image->logo_header ?? '' }}"
                                                class="attachment-full size-full" alt="" decoding="async"
                                                loading="lazy"
                                                srcset="{{ $web_information->image->logo_header ?? '' }}"
                                                sizes="(max-width: 2299px) 100vw, 2299px" />
                                        </a>
                                    </div>
                                    <button class="elementskit-menu-close elementskit-menu-toggler" type="button">
                                        X
                                    </button>
                                </div>
                            </div>
                            <div
                                class="elementskit-menu-overlay elementskit-menu-offcanvas-elements elementskit-menu-toggler ekit-nav-menu--overlay">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="elementor-element elementor-element-ebf99e9 elementor-widget__width-auto elementor-hidden-desktop elementor-hidden-tablet elementor-widget elementor-widget-ekit-nav-menu"
                    data-id="ebf99e9" data-element_type="widget" data-widget_type="ekit-nav-menu.default">
                    <div class="elementor-widget-container">
                        <div class="ekit-wid-con ekit_menu_responsive_tablet"
                            data-hamburger-icon="icon icon-menu-button" data-hamburger-icon-type="icon"
                            data-responsive-breakpoint="1024">
                            <button class="elementskit-menu-hamburger elementskit-menu-toggler"  title="menu">
                                <i aria-hidden="true" class="ekit-menu-icon icon icon-menu-button"></i>
                            </button>
                            <div id="ekit-megamenu-main-menu"
                                class="elementskit-menu-container elementskit-menu-offcanvas-elements elementskit-navbar-nav-default elementskit_plus_icon ekit-nav-menu-one-page-no ekit-nav-dropdown-hover">
                                <ul id="menu-main-menu"
                                    class="elementskit-navbar-nav elementskit-menu-po-justified submenu-click-on-icon">
                                    @isset($menu_chil)
                                        @foreach ($menu_chil as $item)
                                            @if ($item->sub <= 0)
                                                <li id="menu-item-{{ $item->id }}"
                                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-107 nav-item elementskit-mobile-builder-content"
                                                    data-vertical-menu="750px">
                                                    <a href="{{ $item->url_link }}" class="ekit-menu-nav-link">
                                                        @if (isset($item->json_params->image) && $item->json_params->image != '')
                                                            <img class="trp-flag-image" style="margin-right: 5px"
                                                                src="{{ $item->json_params->image }}" width="18"
                                                                height="12" alt="en_GB" title="English" /><span
                                                                class="trp-ls-language-name">
                                                        @endif
                                                        {{ $item->json_params->name->{$locale} ?? ($item->name ?? '') }}
                                                    </a>
                                                </li>
                                            @else
                                                <li id="menu-item-{{ $item->id }}"
                                                    class="menu-item menu-item-type-post_type_archive menu-item-object-treatments menu-item-has-children menu-item-911 nav-item elementskit-dropdown-has relative_position elementskit-dropdown-menu-default_width elementskit-mobile-builder-content {{ $item->url_link == url()->full() ? 'active' : '' }}"
                                                    data-vertical-menu="750px">
                                                    <a href="{{ $item->url_link }}"
                                                        class="ekit-menu-nav-link ekit-menu-dropdown-toggle {{ $item->url_link == url()->full() ? 'active' : '' }}">
                                                        {{ $item->json_params->name->{$locale} ?? ($item->name ?? '') }}
                                                        <i class="icon icon-down-arrow1 elementskit-submenu-indicator"></i>
                                                    </a>
                                                    <ul class="elementskit-dropdown elementskit-submenu-panel">
                                                        @foreach ($menu as $item_sub)
                                                            @if ($item_sub->parent_id == $item->id)
                                                                @if ($item_sub->sub <= 0)
                                                                    <li id="menu-item-{{ $item_sub->id ?? '' }}"
                                                                        class="menu-item menu-item-type-post_type menu-item-object-treatments menu-item-1006 nav-item elementskit-mobile-builder-content"
                                                                        data-vertical-menu="750px">
                                                                        <a href="{{ $item_sub->url_link }}"
                                                                            class="dropdown-item">{{ $item_sub->json_params->name->{$locale} ?? ($item_sub->name ?? '') }}</a>
                                                                    </li>
                                                                @endif
                                                            @endif
                                                        @endforeach
                                                    </ul>
                                                </li>
                                            @endif
                                        @endforeach
                                    @endisset
                                </ul>
                                <div class="elementskit-nav-identity-panel">
                                    <div class="elementskit-site-title">
                                        <a class="elementskit-nav-logo" href="{{ route('frontend.home') }}"
                                            target="_self" rel="">
                                            <img width="2299" height="764"
                                                src="{{ $web_information->image->logo_header ?? '' }}"
                                                class="attachment-full size-full" alt="" decoding="async"
                                                loading="lazy"
                                                srcset="{{ $web_information->image->logo_header ?? '' }}"
                                                sizes="(max-width: 2299px) 100vw, 2299px" />
                                        </a>
                                    </div>
                                    <button class="elementskit-menu-close elementskit-menu-toggler" type="button">
                                        X
                                    </button>
                                </div>
                            </div>
                            <div
                                class="elementskit-menu-overlay elementskit-menu-offcanvas-elements elementskit-menu-toggler ekit-nav-menu--overlay">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
