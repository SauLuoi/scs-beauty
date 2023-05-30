<?php
$cats = get_the_category();
$cat_id = [];
foreach ($cats as $cat) {
    $cat_id = $cat->term_id;
}
$args = array(
    'post_type' => 'post',
    'post_status' => 'publish',
    'cat' => $cat_id,
    'showpost' => 10,
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
                $tags = get_the_tags()
                ?>
                <a href="<?php echo $link; ?>" class="item">
                    <figure>
                        <img src="<?php bloginfo("template_url"); ?>/assets/vn/images/item/post1.jpg"
                             alt="Nhập tên sản phẩm.Nhập tên sản phẩm.">
                    </figure>
                    <h3 class="ttl"><strong><?php echo $title; ?></strong></h3>
                    <?php if ($tags) { ?>
                        <p class="txt">
                            <?php foreach ($tags as $tag) {
                                $tag_name = $tag->name;
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