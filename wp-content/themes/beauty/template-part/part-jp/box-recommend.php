<?php
$id = get_the_ID();
$cats = get_the_category();
$cat_id = [];
foreach ($cats as $cat) {
    $cat_id = $cat->term_id;
}
$args = array(
    'post_type' => 'post-jp',
    'post_status' => 'publish',
    'cat' => $cat_id,
    'showpost' => 8,
    'post__not_in' => array($id),
);
$query = new WP_Query($args);
?>
<div class="recommend">
    <h2 class="ttlh2 fnt-bodoni">
        <img src="<?php bloginfo("template_url"); ?>/assets/vn/images/item/ico_like.png" alt="like">
        <span>RECOMMEND</span>
    </h2>
    <?php if ($query->have_posts()) { ?>
        <div class="inner slider_recommend">
            <?php
            while ($query->have_posts()) {
                $query->the_post();
                $title = get_the_title();
                $link = get_the_permalink();
                $tags = wp_get_post_terms(get_the_ID(), 'posts_tags_jp');
                $feature = get_the_post_thumbnail_url();
                ?>
                <a href="<?php echo $link; ?>" class="item">
                    <figure>
                        <img src="<?php echo $feature; ?>"
                             alt="<?php echo $title; ?>">
                    </figure>
                    <h3 class="ttl"><strong><?php echo $title; ?></strong></h3>
                    <?php if ($tags) { ?>
                        <p class="txt">
                            <?php foreach ($tags as $tag) {
                                $tag_name = $tag->name;
                                if (strlen($tag_name) > 25) {
                                    $tag_name = substr($tag_name, 0, 25) . '...';
                                }
                                ?>
                                <small class="c_53b5ed"># <?php echo $tag_name; ?></small>
                            <?php } ?>
                        </p>
                    <?php } ?>
                </a>
            <?php }
            wp_reset_postdata(); ?>
        </div>
    <?php } ?>
</div>
