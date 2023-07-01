<div id="gnav gnav-mb" class="right">
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