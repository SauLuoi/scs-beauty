<?php
$args = array(
    'post_type' => 'post-jp',
    'post_status' => 'publish',
    'showposts' => 8,
);
$query_args = new WP_Query($args);
?>

<section id="sec02" class="sec02">
    <div class="container">
        <h2 class="fnt-bodoni ttlh2">
            <img src="<?php bloginfo('template_url'); ?>/assets/vn/images/s2_ico.png" alt="NEW ITEM">
            <span>NEW ITEM</span>
        </h2>
        <?php if ($query_args->have_posts()) { ?>
            <div class="inner">
                <?php
                while ($query_args->have_posts()) {
                    $query_args->the_post();
                    $title = get_the_title();
                    $tag = wp_get_post_terms(get_the_ID(), 'posts_tags_jp');
                    $feature = get_the_post_thumbnail_url();
                    $link = get_the_permalink();
                    ?>
                    <div class="item">
                        <a href="<?php echo $link; ?>">
                            <figure>
                                <img src="<?php echo $feature; ?>" alt="<?php echo $title; ?>">
                            </figure>
                        </a>
                        <h3 class="ttl fnt-notosan">
                            <a href="<?php echo $link; ?>">
                                <strong><?php echo $title; ?></strong>
                            </a>
                        </h3>
                        <p class="txt fnt-notosan">
                            <?php
                            if ($tag) {
                                foreach ($tag as $tag_item) {
                                    $tag_name = $tag_item->name;
                                    $tag_slug = $tag_item->slug;
                                    ?>
                                    <a href="<?php bloginfo('url'); ?>/jp/item?tag=<?php echo $tag_item->term_id; ?>"
                                       class="c_53b5ed">
                                        <small># <?php echo $tag_name; ?></small>
                                    </a>
                                <?php }
                            } ?>
                        </p>
                    </div>
                <?php }
                wp_reset_postdata(); ?>
            </div>
        <?php } ?>
    </div>
</section>
