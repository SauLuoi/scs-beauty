<?php
$ins_link = get_field('ins_link');
?>
<section id="sec05" class="sec_instagram">
    <div class="container">
        <h2 class="ttlh2">
            <a href="<?php echo $ins_link; ?>" target="_blank">
                <img src="<?php bloginfo('template_url'); ?>/assets/vn/images/s5_ico.png" alt="instagram">
            </a>
        </h2>
    </div>
    <?php echo do_shortcode('[instagram-feed feed=1]'); ?>
</section>
