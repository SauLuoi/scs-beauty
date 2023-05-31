<?php
$args = array(
    'post_type' => 'post-jp',
    'hide_empty' => false,
    'taxonomy' => 'posts_tags_jp',
);

$tags = get_tags($args);
?>
<section class="keyword">
    <h2 class="fnt-bodoni ttlh2">
        <img src="<?php bloginfo("template_url"); ?>/assets/vn//images/s4_ico.png" alt="KEYWORD">
        <span>KEYWORD</span>
    </h2>
    <div class="tags fnt-roboto">
        <?php
        foreach ($tags as $tag) {
            $tag_name = $tag->name;
            $tag_slug = $tag->slug;
            $tag_link = get_tag_link($tag->term_id);
            ?>
            <a href="<?php echo $tag_link; ?>"># <?php echo $tag_name; ?></a>
        <?php } ?>
    </div>
</section>
