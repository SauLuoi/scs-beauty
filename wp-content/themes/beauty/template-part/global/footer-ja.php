<?php
$h_logo = get_field('h_logo', 'option');
$copyright = get_field('copyright', 'option');

//button
$h_button_ja = get_field('h_button_ja', 'option');
$h_button_title_ja = $h_button_ja['title'];
$h_button_url_ja = $h_button_ja['url'];
$h_button_target_ja = $h_button_ja['target'];
?>
<footer id="footer"><!-- footer -->
    <div class="container">
        <?php
        if (function_exists('wp_nav_menu')) {
            $args = array(
                'theme_location' => 'footer-ja',
                'container' => 'nav',
                'menu_class' => 'fnt-notosan',
            );
            wp_nav_menu($args);

        }
        ?>
        <p class="btn  fnt-notosan">
            <a href="<?php echo $h_button_url_ja; ?>" target="<?php echo $h_button_target_ja; ?>">
                <?php echo $h_button_title_ja; ?>
            </a>
        </p>
        <p class="logo">
            <a href="<?php bloginfo('url'); ?>">
                <img src="<?php echo $h_logo; ?>" alt="美⼈">
                <span>Người đẹp</span>
            </a>
        </p>
    </div>
    <address class="container fnt-notosan"><?php echo $copyright; ?></address>
    <p class="page_up"><span class="up"></span></p>
</footer>
<!-- end footer -->
