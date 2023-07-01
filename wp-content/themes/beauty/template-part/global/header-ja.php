<?php
$h_logo = get_field('h_logo', 'option');
?>

<style>
    @media (min-width: 768px) {
        body:not(.page-top) #header nav ul {
            justify-content: start;
        }

        body:not(.page-top) #header nav ul li {
            margin-left: 40px;
        }
    }
</style>
<div class="container">
    <div class="inner">
        <p class="btn-language bg01 sp fnt-notosan">
            <img src="<?php bloginfo('template_url') ?>/assets/vn/images/common/language.png" alt="language">
        </p>
        <div class="left">
            <p class="logo fnt-notosan">
                <a href="<?php bloginfo('url'); ?>/jp">
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
                    'theme_location' => 'primary-ja',
                    'container' => 'nav',
                    'container_class' => 'navbar',
                    'menu_class' => 'item fnt-notosan',
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
                <a href="<?php echo $h_button_url_ja; ?>" target="<?php echo $h_button_target_ja; ?>">
                    <?php echo $h_button_title_ja; ?>
                </a>
            </p>
        </div>
    </div>
    <div class="language">
        <a href="<?php bloginfo('url'); ?>">VN</a>
        <a class="active" href="<?php bloginfo('url'); ?>/jp/">JP</a>
    </div>
</div>
