<?php
$h_logo = get_field('h_logo', 'option');
$copyright = get_field('copyright', 'option');

//button
$h_button = get_field('h_button', 'option');
$h_button_title = $h_button['title'];
$h_button_url = $h_button['url'];
$h_button_target = $h_button['target'];
?>
<footer id="footer"><!-- footer -->
    <div class="container">
        <?php
        if (function_exists('wp_nav_menu')) {
            $args = array(
                'theme_location' => 'footer',
                'container' => 'nav',
            );
            wp_nav_menu($args);

        }
        ?>
        <p class="btn">
            <a href="<?php echo $h_button_url; ?>" target="<?php echo $h_button_target; ?>">
                <?php echo $h_button_title; ?>
            </a>
        </p>
        <p class="logo">
            <a href="<?php bloginfo('url'); ?>">
                <img src="<?php echo $h_logo; ?>" alt="美⼈">
                <span>Người đẹp</span>
            </a>
        </p>
    </div>
    <address class="container"><?php echo $copyright; ?></address>
    <p class="page_up"><span class="up"></span></p>
</footer>
<!-- end footer -->
