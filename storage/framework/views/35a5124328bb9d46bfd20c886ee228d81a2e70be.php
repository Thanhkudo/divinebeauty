<style>
    img.wp-smiley,
    img.emoji {
        display: inline !important;
        border: none !important;
        box-shadow: none !important;
        height: 1em !important;
        width: 1em !important;
        margin: 0 0.07em !important;
        vertical-align: -0.1em !important;
        background: none !important;
        padding: 0 !important;
    }
</style>

<link rel='stylesheet' id='startklar_select2_styles-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/startklar-elmentor-forms-extwidgets/assets/country_selector/select2.min3781.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='dce-dynamic-visibility-style-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/dynamic-visibility-for-elementor/assets/css/dynamic-visibility5560.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='jkit-elements-main-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/jeg-elementor-kit/assets/css/elements/main1ce0.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='wp-block-library-css'
    href="<?php echo e(asset('themes/frontend/wp-includes/css/dist/block-library/style.min3781.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='jet-engine-frontend-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/jet-engine/assets/css/frontend324d.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='classic-theme-styles-css'
    href="<?php echo e(asset('themes/frontend/wp-includes/css/classic-themes.min3781.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<style id='global-styles-inline-css'>
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
</style>
<link rel='stylesheet' id='trp-language-switcher-style-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/translatepress-multilingual/assets/css/trp-language-switcher3575.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='jet-elements-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/jet-elements/assets/css/jet-elementsa19e.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='jet-elements-skin-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/jet-elements/assets/css/jet-elements-skina19e.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-icons-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementor/assets/lib/eicons/css/elementor-icons.min3b94.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-frontend-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementor/assets/css/frontend-lite.min5900.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='swiper-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementor/assets/lib/swiper/css/swiper.min48f5.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-post-12-css'
    href="<?php echo e(asset('themes/frontend/wp-content/uploads/elementor/css/post-1299e9.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-pro-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementor-pro/assets/css/frontend-lite.minf416.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='jet-tricks-frontend-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/jet-tricks/assets/css/jet-tricks-frontend370e.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-post-76-css'
    href="<?php echo e(asset('themes/frontend/wp-content/uploads/elementor/css/post-762005.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='font-awesome-5-all-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementor/assets/lib/font-awesome/css/all.min5900.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='font-awesome-4-shim-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementor/assets/lib/font-awesome/css/v4-shims.min5900.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='hello-elementor-css'
    href="<?php echo e(asset('themes/frontend/wp-content/themes/hello-elementor/style.minc141.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='hello-elementor-theme-style-css'
    href="<?php echo e(asset('themes/frontend/wp-content/themes/hello-elementor/theme.minc141.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-post-883-css'
    href="<?php echo e(asset('themes/frontend/wp-content/uploads/elementor/css/post-883f914.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-lazyload-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementor/assets/css/modules/lazyload/frontend.min5900.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-post-84-css'
    href="<?php echo e(asset('themes/frontend/wp-content/uploads/elementor/css/post-84f914.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-post-93-css'
    href="<?php echo e(asset('themes/frontend/wp-content/uploads/elementor/css/post-93b4c2.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-icons-ekiticons-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementskit-lite/modules/elementskit-icon-pack/assets/css/ekiticons1102.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='ekit-widget-styles-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementskit-lite/widgets/init/assets/css/widget-styles1102.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='ekit-responsive-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementskit-lite/widgets/init/assets/css/responsive1102.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='google-fonts-1-css'
    href="https://fonts.googleapis.com/css?family=Marcellus%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CMontserrat%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic&amp;display=swap&amp;ver=6.2.2"
    media='all' />
<link rel='stylesheet' id='elementor-icons-jkiticon-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/jeg-elementor-kit/assets/fonts/jkiticon/jkiticon1ce0.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-icons-shared-0-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementor/assets/lib/font-awesome/css/fontawesome.min52d5.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-icons-fa-solid-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementor/assets/lib/font-awesome/css/solid.min52d5.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-icons-fa-regular-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementor/assets/lib/font-awesome/css/regular.min52d5.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-icons-fa-brands-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementor/assets/lib/font-awesome/css/brands.min52d5.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<style>
    .select2-container .select2-selection img,
    .select2-container .select2-results__option img {
        width: 50px;
        vertical-align: middle;
        padding: 0px;
        -webkit-box-shadow: 2px 2px 7px 1px rgba(34, 60, 80, 0.2);
        -moz-box-shadow: 2px 2px 7px 1px rgba(34, 60, 80, 0.2);
        box-shadow: 2px 2px 7px 1px rgba(34, 60, 80, 0.2);
        margin: 0px 12px 0 0;
    }

    .select2-container .selection {
        padding: 0px;
        display: inherit;
        width: 100%;
    }

    .select2-container .select2-selection,
    .select2-container .select2-results__option {
        padding: 0 6px;
        color: #777;
        font-family: arial;
    }

    select.startklar_country_selector {
        width: 100%;
    }

    .elementor-field-type-country_selector_form_field {
        display: block;
    }

    .select2.select2-container--default .select2-selection--single .select2-selection__arrow b {
        border-color: #c7c7c7 transparent transparent transparent;
        border-style: solid;
        border-width: 16px 10px 0 10px;
        height: 0;
        left: 50%;
        margin-left: -22px;
        margin-top: 3px;
        position: absolute;
        top: 50%;
        width: 0;
    }

    .select2.select2-container--default.select2-container--open .select2-selection--single .select2-selection__arrow b {
        border-color: transparent transparent #c7c7c7 transparent;
        border-width: 0 10px 16px 10px;
    }

    .select2-selection--single #select2-startklar_country_selector-container {
        height: 34px;
    }

    .select2-results__options li {
        margin: 10px 0 0 0;
    }

    .select2.select2-container--default .select2-search--dropdown .select2-search__field {
        margin: 0;
    }

    .select2 .select2-selection.select2-selection--single {
        padding: 5px 0 0 0;
        height: 48px;
    }

    .select2-container>.select2-dropdown {
        width: 370px !important;
    }
</style>
<style>
    .dropzone_container {
        width: 100%;
        padding: 0;
        box-shadow: inset 0 0 0 1px rgb(0 0 0 / 3%), inset 0px 4px 3px -2px rgb(0 0 0 / 7%);
    }

    .dropzone_container {
        background: white;
        border-radius: 5px;
        border: 2px dashed rgb(0, 135, 247);
        border-image: none;
        margin-left: auto;
        margin-right: auto;
    }

    .dropzone_container .dz-message .dz-button {
        padding: 10px;
        color: #d9d9d9;
        font-weight: 600;
    }

    .dropzone_container .dz-preview.dz-image-preview {
        background: #fff;
        -webkit-box-shadow: 4px 4px 8px 0px rgb(34 60 80 / 20%);
        -moz-box-shadow: 4px 4px 8px 0px rgba(34, 60, 80, 0.2);
        box-shadow: 4px 4px 8px 0px rgb(34 60 80 / 20%);
        border-radius: 20px;
    }

    .elementor-field-group.elementor-column .dropzone_container {
        background: white;
        border-radius: 5px;
        border: 2px dashed rgb(0, 135, 247);
        border-image: none;
        margin-left: auto;
        margin-right: auto;
        width: 100%;
        padding: 0;
        box-shadow: inset 0 0 0 1px rgb(0 0 0 / 3%), inset 0px 4px 3px -2px rgb(0 0 0 / 7%);
        min-height: 150px;
    }

    .dropzone_container.dz-clickable,
    .dropzone.dz-clickable {
        cursor: pointer;
    }

    .wrap_dropzone_container {
        width: 100%;
    }

    .elementor-field-group.elementor-column .dropzone_container .dz-message .dz-button {
        padding: 20px;
        color: #d9d9d9;
        font-weight: 600;
        border-radius: 5px;
        color: #0087F7;
        box-shadow: inset 0 0 0 1px rgb(0 0 0 / 3%), inset 0px 4px 3px -2px rgb(0 0 0 / 7%);
        cursor: pointer;
        background: none;
    }

    .elementor-field-group.elementor-column .dropzone_container .dz-message {
        text-align: center;
        font-size: 14px;
        line-height: 14px;
        margin-top: 33px;
        position: relative;
    }

    .elementor-field-group.elementor-column .dropzone_container .dz-message button:hover:after {
        width: 100%;
    }

    .elementor-field-group.elementor-column .dropzone_container .dz-message button {
        position: relative;
        font-size: 15px;
        font-family: arial;
    }

    .elementor-field-group.elementor-column .dropzone_container .dz-message button:after {
        content: "";
        position: absolute;
        left: 0;
        top: 0;
        height: 100%;
        width: 0;
        background: rgba(0, 0, 0, .05);
        z-index: 1;
        transition: width .2s ease-in-out;
    }

    .elementor-field-group.elementor-column .dropzone .dz-preview .dz-remove {
        text-decoration: none;
    }


    .dz-preview .dz-remove {
        height: 32px;
        width: 32px;
        margin: 0 auto;
        position: absolute;
        bottom: -28px;
        left: calc(50% - 15px);
        z-index: 10000;
        cursor: pointer !important;
    }

    .dz-preview .dz-remove i {
        position: absolute;
        left: 0px;
        top: 0px;
        width: 20px;
        height: 20px;
        opacity: 0.5;
        cursor: pointer !important;
    }

    .dz-preview .dz-remove i:hover {
        opacity: 1;
    }

    .dz-preview .dz-remove i:before,
    .dz-preview .dz-remove i:after {
        position: absolute;
        left: 15px;
        content: ' ';
        height: 20px;
        width: 2px;
        background-color: #333;
    }

    .dz-preview .dz-remove i:before {
        transform: rotate(45deg);
    }

    .dz-preview .dz-remove i:after {
        transform: rotate(-45deg);
    }
</style>
<style>
    .elementor-field-type-startklar_hp_form_field {
        height: 1px !important;
        width: 1px !important;
        position: relative;
        overflow: hidden;
        padding: 0px !important;
        margin: 0px !important;
    }
</style>

<link rel="stylesheet"
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementor/assets/css/widget-icon-box.min.css')); ?>">
<link rel="stylesheet"
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementor/assets/css/widget-icon-list.min.css')); ?>">

<style>
    /*! elementor - v<?php echo e($ver); ?> - 15-02-2023 */
    .elementor-column .elementor-spacer-inner {
        height: var(--spacer-size)
    }

    .e-con {
        --container-widget-width: 100%
    }

    .e-con-inner>.elementor-widget-spacer,
    .e-con>.elementor-widget-spacer {
        width: var(--container-widget-width, var(--spacer-size));
        --align-self: var(--container-widget-align-self, initial);
        --flex-shrink: 0
    }

    .e-con-inner>.elementor-widget-spacer>.elementor-widget-container,
    .e-con-inner>.elementor-widget-spacer>.elementor-widget-container>.elementor-spacer,
    .e-con>.elementor-widget-spacer>.elementor-widget-container,
    .e-con>.elementor-widget-spacer>.elementor-widget-container>.elementor-spacer {
        height: 100%
    }

    .e-con-inner>.elementor-widget-spacer>.elementor-widget-container>.elementor-spacer>.elementor-spacer-inner,
    .e-con>.elementor-widget-spacer>.elementor-widget-container>.elementor-spacer>.elementor-spacer-inner {
        height: var(--container-widget-height, var(--spacer-size))
    }
</style>
<style>
    /*! elementor - v<?php echo e($ver); ?> - 15-02-2023 */
    .elementor-widget-divider {
        --divider-border-style: none;
        --divider-border-width: 1px;
        --divider-color: #2c2c2c;
        --divider-icon-size: 20px;
        --divider-element-spacing: 10px;
        --divider-pattern-height: 24px;
        --divider-pattern-size: 20px;
        --divider-pattern-url: none;
        --divider-pattern-repeat: repeat-x
    }

    .elementor-widget-divider .elementor-divider {
        display: flex
    }

    .elementor-widget-divider .elementor-divider__text {
        font-size: 15px;
        line-height: 1;
        max-width: 95%
    }

    .elementor-widget-divider .elementor-divider__element {
        margin: 0 var(--divider-element-spacing);
        flex-shrink: 0
    }

    .elementor-widget-divider .elementor-icon {
        font-size: var(--divider-icon-size)
    }

    .elementor-widget-divider .elementor-divider-separator {
        display: flex;
        margin: 0;
        direction: ltr
    }

    .elementor-widget-divider--view-line_icon .elementor-divider-separator,
    .elementor-widget-divider--view-line_text .elementor-divider-separator {
        align-items: center
    }

    .elementor-widget-divider--view-line_icon .elementor-divider-separator:after,
    .elementor-widget-divider--view-line_icon .elementor-divider-separator:before,
    .elementor-widget-divider--view-line_text .elementor-divider-separator:after,
    .elementor-widget-divider--view-line_text .elementor-divider-separator:before {
        display: block;
        content: "";
        border-bottom: 0;
        flex-grow: 1;
        border-top: var(--divider-border-width) var(--divider-border-style) var(--divider-color)
    }

    .elementor-widget-divider--element-align-left .elementor-divider .elementor-divider-separator>.elementor-divider__svg:first-of-type {
        flex-grow: 0;
        flex-shrink: 100
    }

    .elementor-widget-divider--element-align-left .elementor-divider-separator:before {
        content: none
    }

    .elementor-widget-divider--element-align-left .elementor-divider__element {
        margin-left: 0
    }

    .elementor-widget-divider--element-align-right .elementor-divider .elementor-divider-separator>.elementor-divider__svg:last-of-type {
        flex-grow: 0;
        flex-shrink: 100
    }

    .elementor-widget-divider--element-align-right .elementor-divider-separator:after {
        content: none
    }

    .elementor-widget-divider--element-align-right .elementor-divider__element {
        margin-right: 0
    }

    .elementor-widget-divider:not(.elementor-widget-divider--view-line_text):not(.elementor-widget-divider--view-line_icon) .elementor-divider-separator {
        border-top: var(--divider-border-width) var(--divider-border-style) var(--divider-color)
    }

    .elementor-widget-divider--separator-type-pattern {
        --divider-border-style: none
    }

    .elementor-widget-divider--separator-type-pattern.elementor-widget-divider--view-line .elementor-divider-separator,
    .elementor-widget-divider--separator-type-pattern:not(.elementor-widget-divider--view-line) .elementor-divider-separator:after,
    .elementor-widget-divider--separator-type-pattern:not(.elementor-widget-divider--view-line) .elementor-divider-separator:before,
    .elementor-widget-divider--separator-type-pattern:not([class*=elementor-widget-divider--view]) .elementor-divider-separator {
        width: 100%;
        min-height: var(--divider-pattern-height);
        -webkit-mask-size: var(--divider-pattern-size) 100%;
        mask-size: var(--divider-pattern-size) 100%;
        -webkit-mask-repeat: var(--divider-pattern-repeat);
        mask-repeat: var(--divider-pattern-repeat);
        background-color: var(--divider-color);
        -webkit-mask-image: var(--divider-pattern-url);
        mask-image: var(--divider-pattern-url)
    }

    .elementor-widget-divider--no-spacing {
        --divider-pattern-size: auto
    }

    .elementor-widget-divider--bg-round {
        --divider-pattern-repeat: round
    }

    .rtl .elementor-widget-divider .elementor-divider__text {
        direction: rtl
    }

    .e-con-inner>.elementor-widget-divider,
    .e-con>.elementor-widget-divider {
        width: var(--container-widget-width, 100%);
        --flex-grow: var(--container-widget-flex-grow)
    }

    body.e-lazyload .e-con.lazyloaded:before {
        --e-bg-lazyload-loaded: var(--e-bg-lazyload);
    }

    /*! elementor - v<?php echo e($ver); ?> - 15-02-2023 */
    .elementor-widget-social-icons.elementor-grid-0 .elementor-widget-container,
    .elementor-widget-social-icons.elementor-grid-mobile-0 .elementor-widget-container,
    .elementor-widget-social-icons.elementor-grid-tablet-0 .elementor-widget-container {
        line-height: 1;
        font-size: 0;
    }

    .elementor-widget-social-icons:not(.elementor-grid-0):not(.elementor-grid-tablet-0):not(.elementor-grid-mobile-0) .elementor-grid {
        display: inline-grid;
    }

    .elementor-widget-social-icons .elementor-grid {
        grid-column-gap: var(--grid-column-gap, 5px);
        grid-row-gap: var(--grid-row-gap, 5px);
        grid-template-columns: var(--grid-template-columns);
        justify-content: var(--justify-content, center);
        justify-items: var(--justify-content, center);
    }

    .elementor-icon.elementor-social-icon {
        font-size: var(--icon-size, 25px);
        line-height: var(--icon-size, 25px);
        width: calc(var(--icon-size, 25px) + (2 * var(--icon-padding, 0.5em)));
        height: calc(var(--icon-size, 25px) + (2 * var(--icon-padding, 0.5em)));
    }

    .elementor-social-icon {
        --e-social-icon-icon-color: #000;
        display: inline-flex;
        background-color: #fff;
        align-items: center;
        justify-content: center;
        text-align: center;
        cursor: pointer;
    }

    .elementor-social-icon i {
        color: var(--e-social-icon-icon-color);
    }

    .elementor-social-icon svg {
        fill: var(--e-social-icon-icon-color);
    }

    .elementor-social-icon:last-child {
        margin: 0;
    }

    .elementor-social-icon:hover {
        opacity: 0.9;
        color: #fff;
    }

    .elementor-social-icon-android {
        background-color: #a4c639;
    }

    .elementor-social-icon-apple {
        background-color: #999;
    }

    .elementor-social-icon-behance {
        background-color: #1769ff;
    }

    .elementor-social-icon-bitbucket {
        background-color: #205081;
    }

    .elementor-social-icon-codepen {
        background-color: #000;
    }

    .elementor-social-icon-delicious {
        background-color: #39f;
    }

    .elementor-social-icon-deviantart {
        background-color: #05cc47;
    }

    .elementor-social-icon-digg {
        background-color: #005be2;
    }

    .elementor-social-icon-dribbble {
        background-color: #ea4c89;
    }

    .elementor-social-icon-elementor {
        background-color: #d30c5c;
    }

    .elementor-social-icon-envelope {
        background-color: #ea4335;
    }

    .elementor-social-icon-facebook,
    .elementor-social-icon-facebook-f {
        background-color: #3b5998;
    }

    .elementor-social-icon-flickr {
        background-color: #0063dc;
    }

    .elementor-social-icon-foursquare {
        background-color: #2d5be3;
    }

    .elementor-social-icon-free-code-camp,
    .elementor-social-icon-freecodecamp {
        background-color: #006400;
    }

    .elementor-social-icon-github {
        background-color: #333;
    }

    .elementor-social-icon-gitlab {
        background-color: #e24329;
    }

    .elementor-social-icon-globe {
        background-color: #818a91;
    }

    .elementor-social-icon-google-plus,
    .elementor-social-icon-google-plus-g {
        background-color: #dd4b39;
    }

    .elementor-social-icon-houzz {
        background-color: #7ac142;
    }

    .elementor-social-icon-instagram {
        background-color: #262626;
    }

    .elementor-social-icon-jsfiddle {
        background-color: #487aa2;
    }

    .elementor-social-icon-link {
        background-color: #818a91;
    }

    .elementor-social-icon-linkedin,
    .elementor-social-icon-linkedin-in {
        background-color: #0077b5;
    }

    .elementor-social-icon-medium {
        background-color: #00ab6b;
    }

    .elementor-social-icon-meetup {
        background-color: #ec1c40;
    }

    .elementor-social-icon-mixcloud {
        background-color: #273a4b;
    }

    .elementor-social-icon-odnoklassniki {
        background-color: #f4731c;
    }

    .elementor-social-icon-pinterest {
        background-color: #bd081c;
    }

    .elementor-social-icon-product-hunt {
        background-color: #da552f;
    }

    .elementor-social-icon-reddit {
        background-color: #ff4500;
    }

    .elementor-social-icon-rss {
        background-color: #f26522;
    }

    .elementor-social-icon-shopping-cart {
        background-color: #4caf50;
    }

    .elementor-social-icon-skype {
        background-color: #00aff0;
    }

    .elementor-social-icon-slideshare {
        background-color: #0077b5;
    }

    .elementor-social-icon-snapchat {
        background-color: #fffc00;
    }

    .elementor-social-icon-soundcloud {
        background-color: #f80;
    }

    .elementor-social-icon-spotify {
        background-color: #2ebd59;
    }

    .elementor-social-icon-stack-overflow {
        background-color: #fe7a15;
    }

    .elementor-social-icon-steam {
        background-color: #00adee;
    }

    .elementor-social-icon-stumbleupon {
        background-color: #eb4924;
    }

    .elementor-social-icon-telegram {
        background-color: #2ca5e0;
    }

    .elementor-social-icon-thumb-tack {
        background-color: #1aa1d8;
    }

    .elementor-social-icon-tripadvisor {
        background-color: #589442;
    }

    .elementor-social-icon-tumblr {
        background-color: #35465c;
    }

    .elementor-social-icon-twitch {
        background-color: #6441a5;
    }

    .elementor-social-icon-twitter {
        background-color: #1da1f2;
    }

    .elementor-social-icon-viber {
        background-color: #665cac;
    }

    .elementor-social-icon-vimeo {
        background-color: #1ab7ea;
    }

    .elementor-social-icon-vk {
        background-color: #45668e;
    }

    .elementor-social-icon-weibo {
        background-color: #dd2430;
    }

    .elementor-social-icon-weixin {
        background-color: #31a918;
    }

    .elementor-social-icon-whatsapp {
        background-color: #25d366;
    }

    .elementor-social-icon-wordpress {
        background-color: #21759b;
    }

    .elementor-social-icon-xing {
        background-color: #026466;
    }

    .elementor-social-icon-yelp {
        background-color: #af0606;
    }

    .elementor-social-icon-youtube {
        background-color: #cd201f;
    }

    .elementor-social-icon-500px {
        background-color: #0099e5;
    }

    .elementor-shape-rounded .elementor-icon.elementor-social-icon {
        border-radius: 10%;
    }

    .elementor-shape-circle .elementor-icon.elementor-social-icon {
        border-radius: 50%;
    }
</style>
<link rel='stylesheet' id='jeg-dynamic-style-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/jeg-elementor-kit/lib/jeg-framework/assets/css/jeg-dynamic-styles077c.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />

<link rel='stylesheet' id='e-animations-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementor/assets/lib/animations/animations.min5900.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-post-98-css'
    href="<?php echo e(asset('themes/frontend/wp-content/uploads/elementor/css/post-98d09f.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='sweetalert2-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/jeg-elementor-kit/assets/js/sweetalert2/sweetalert2.min430c.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-post-97-css'
    href="<?php echo e(asset('themes/frontend/wp-content/uploads/elementor/css/post-97df4c.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-post-278-css'
    href="<?php echo e(asset('themes/frontend/wp-content/uploads/elementor/css/post-2786e8d.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='elementor-post-274-css'
    href="<?php echo e(asset('themes/frontend/wp-content/uploads/elementor/css/post-27406af.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='tiny-slider-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/jeg-elementor-kit/assets/js/tiny-slider/tiny-sliderf342.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel='stylesheet' id='jet-juxtapose-css-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/jet-elements/assets/css/lib/juxtapose/juxtapose.mine7f0.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />
<link rel="stylesheet" id="elementor-post-101-css"
    href="<?php echo e(asset('themes/frontend/wp-content/uploads/elementor/css/post-101c374.css')); ?>?ver=<?php echo e($ver); ?>"
    media="all" />
<link rel='stylesheet' id='elementor-gallery-css'
    href="<?php echo e(asset('themes/frontend/wp-content/plugins/elementor/assets/lib/e-gallery/css/e-gallery.min7359.css')); ?>?ver=<?php echo e($ver); ?>"
    media='all' />

<style>
    body {
        background: url(<?php echo e($web_information->image->image_body); ?>);
        background-position: center center;
        background-repeat: repeat;
        background-size: 100% auto;
    }

    .elementor-93 .elementor-element.elementor-element-278e165 img {
        width: 160px;
    }



    .elementor-76 .elementor-element.elementor-element-e9e0e8f {
        --justify-content: flex-start;

    }

    .elementor-76 .elementor-element.elementor-element-601798f3:not(.elementor-motion-effects-element-type-background),
    .elementor-76 .elementor-element.elementor-element-601798f3>.elementor-motion-effects-container>.elementor-motion-effects-layer {
        background-color: transparent;
    }

    .elementor-76 .elementor-element.elementor-element-70da773d:not(.elementor-motion-effects-element-type-background),
    .elementor-76 .elementor-element.elementor-element-70da773d>.elementor-motion-effects-container>.elementor-motion-effects-layer {
        background-color: transparent;
    }

    .elementor-93 .elementor-element.elementor-element-56f044ad .elementor-heading-title {
        color: var(--e-global-color-accent);

    }

    .elementor-93 .elementor-element.elementor-element-7e015939 .elementor-heading-title {
        color: var(--e-global-color-accent);
    }

    .jet-listing-grid__items {
        justify-content: center;
    }

    .jet-listing-grid__items>.jet-listing-grid__item {
        margin-bottom: 20px;
    }

    .elementor-278 .elementor-element.elementor-element-01bf320 {
        margin-bottom: 30px
    }

    .elementor-76 .elementor-element.elementor-element-7ef275c .jeg-elementor-kit.jkit-icon-box .icon-box>.icon i,
    .elementor-76 .elementor-element.elementor-element-575bd6e .jeg-elementor-kit.jkit-icon-box .icon-box>.icon i {
        color: var(--e-global-color-accent);
    }

    .elementor-76 .elementor-element.elementor-element-5b75a584>.elementor-widget-container {
        padding: 0 0 0 10px
    }

    @media(max-width: 767px) {
        .elementor-76 .elementor-element.elementor-element-8fd194a {
            /* min-height: unset; */
        }
    }


    @media (max-width: 1024px) {
        .ekit_menu_responsive_tablet>.elementskit-navbar-nav-default {
            background-color: #000;
        }

        .elementor-84 .elementor-element.elementor-element-ebf99e9 .elementskit-navbar-nav>li>a {
            color: #fafaff;
        }

        .elementor-84 .elementor-element.elementor-element-ebf99e9 .elementskit-navbar-nav .elementskit-submenu-panel>li>a {
            color: #fff;
            background-color: #000;
        }
    }
</style>
<?php if(isset($web_information->source_code->header)): ?>
    <?php echo $web_information->source_code->header; ?>

<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/panels/styles.blade.php ENDPATH**/ ?>