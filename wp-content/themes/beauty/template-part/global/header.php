<?php
$h_logo = get_field('h_logo', 'option');

//field page
$heading = get_field('heading');
?>

<header id="header">
    <div class="container">
        <div class="inner">
            <p class="btn-language bg01 sp">
                <img src="<?php bloginfo('template_url') ?>/assets/vn/images/common/language.png" alt="language">
            </p>
            <div class="left">
                <p class="logo">
                    <a href="<?php bloginfo('url'); ?>">
                        <img src="<?php echo $h_logo; ?>" alt="美⼈">
                        <span>Người đẹp</span>
                    </a>
                </p>
                <div class="hamburger sp bg01">
                    <div class="hamburger-box">
                        <div class="hamburger-inner"></div>
                    </div>
                </div>
            </div>
            <div id="gnav" class="right">
                <?php
                if (function_exists('wp_nav_menu')) {
                    $args = array(
                        'theme_location' => 'primary',
                        'container' => 'nav',
                        'container_class' => 'navbar',
                        'menu_class' => 'item',
                    );
                    wp_nav_menu($args);

                }
                ?>
                <?php
                $h_button = get_field('h_button', 'option');
                $h_button_title = $h_button['title'];
                $h_button_url = $h_button['url'];
                $h_button_target = $h_button['target'];

                $h_button_ja = get_field('h_button_ja', 'option');
                $h_button_title_ja = $h_button_ja['title'];
                $h_button_url_ja = $h_button_ja['url'];
                $h_button_target_ja = $h_button_ja['target'];
                ?>
                <p class="btn">
                    <?php
                    if (pll_current_language('slug') === 'vi') {
                        ?>
                        <a href="<?php echo $h_button_url; ?>" target="<?php echo $h_button_target; ?>">
                            <?php echo $h_button_title; ?>
                        </a>
                    <?php } else { ?>
                        <a href="<?php echo $h_button_url_ja; ?>" target="<?php echo $h_button_target_ja; ?>">
                            <?php echo $h_button_title_ja; ?>
                        </a>
                    <?php } ?>
                </p>
            </div>
        </div>
        <div class="language">
            <?php
            pll_current_language('slug');
            $args_language = array(
                'show_flags' => 0,
                'show_names' => 0,
                'display_names_as' => 'slug',
            );
            pll_the_languages($args_language);
            ?>
        </div>
    </div>

    <!-- mainvisual -->
    <?php if (is_front_page()) { ?>
        <div id="mainvisual">
            <div class="container">
                <div class="box-slider">
                    <?php
                    $top_main_visual_slide = get_field('top_main_visual_slide');
                    $top_text_slide = get_field('top_text_slide');
                    $top_main_visual_feature = get_field('top_main_visual_feature');
                    ?>
                    <?php if ($top_main_visual_slide) { ?>
                        <div class="mv_slider">
                            <?php
                            foreach ($top_main_visual_slide as $slide) {
                                $top_main_visual_slide_image = $slide['top_main_visual_slide_image'];
                                $top_main_visual_slide_alt = $top_main_visual_slide_image['alt'];
                                $top_main_visual_slide_url = $top_main_visual_slide_image['url'];
                                ?>
                                <div class="item">
                                    <img src="<?php echo $top_main_visual_slide_url; ?>"
                                         alt="<?php echo $top_main_visual_slide_alt; ?> ">
                                </div>
                            <?php } ?>
                        </div>
                    <?php } ?>
                </div>
                <?php
                if ($top_main_visual_feature) {
                    $top_main_visual_feature_url = $top_main_visual_feature['url'];
                    $top_main_visual_feature_alt = $top_main_visual_feature['alt'];
                    ?>
                    <figure class="pt">
                        <img src="<?php echo $top_main_visual_feature_url; ?>"
                             alt="<?php echo $top_main_visual_feature_alt; ?>">
                    </figure>
                <?php } ?>
            </div>
        </div>
    <?php } else { ?>
        <div id="mainvisual">
            <div class="container">
                <h1><?php echo $heading; ?></h1>
            </div>
        </div>
        <?php get_template_part("template-part/global/breadcrumb"); ?>
    <?php } ?>
    <!-- end mainvisual -->
</header>
<!-- end header -->
