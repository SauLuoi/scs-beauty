<?php
/*
Template Name: Category JP
*/

get_header();

$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;

$tags_id = $_GET['tag'] ? $_GET['tag'] : '';
$cats_id = $_GET['cat'] ? $_GET['cat'] : '';

if ($tags_id || $cats_id) {
    $args = array(
        'post_type' => 'post-jp',
        'post_status' => 'publish',
        'posts_per_page' => 12,
        'paged' => $paged,
        'tax_query' => array(
            'relation' => 'OR',
            array(
                'taxonomy' => 'posts_tags_jp',
                'field' => 'term_id',
                'terms' => $tags_id,
            ),
            array(
                'taxonomy' => 'posts_cat_jp',
                'field' => 'term_id',
                'terms' => $cats_id,
            )
        ),
    );
} else {
    $args = array(
        'post_type' => 'post-jp',
        'post_status' => 'publish',
        'posts_per_page' => 12,
        'paged' => $paged,
    );
}
$query = new WP_Query($args);
$max_num_pages = $query->max_num_pages;

?>
<header id="header">
    <?php get_template_part("template-part/global/header-ja"); ?>
    <?php get_template_part("template-part/part/main-visual-breadcrumb"); ?>

</header>

<div class="main-content">
    <div class="content">
        <h2 class="ttlh2-post">
            Category
        </h2>
        <?php if ($query->have_posts()) { ?>
            <div class="list-item-post">
                <?php
                while ($query->have_posts()) {
                    $query->the_post();
                    $title = get_the_title();
                    $feature = get_the_post_thumbnail_url();
                    $tags = wp_get_post_terms(get_the_ID(), 'posts_tags_jp');
                    $link = get_the_permalink();
                    ?>
                    <div class="item">
                        <a href="<?php echo $link; ?>">
                            <figure>
                                <img src="<?php echo $feature; ?>" alt="Nhập tên sản phẩm.Nhập tên sản phẩm.">
                            </figure>
                        </a>
                        <h3 class="ttl">
                            <a href="<?php echo $link; ?>">
                                <strong><?php echo $title; ?></strong>
                            </a>
                        </h3>
                        <?php if ($tags) { ?>
                            <p class="txt">
                                <?php
                                foreach ($tags as $tag) {
                                    $tag_name = $tag->name;
                                    $tag_id = $tag->term_id;
                                    $tag_link = get_tag_link($tag->term_id);
                                    ?>
                                    <a href="<?php echo bloginfo("url"); ?>/item-jp?tag=<?php echo $tag_id; ?>"
                                       class="c_53b5ed">
                                        <small># <?php echo $tag_name; ?></small>
                                    </a>
                                <?php } ?>
                            </p>
                        <?php } ?>
                    </div>
                <?php } ?>
            </div>
        <?php }
        wp_reset_postdata(); ?>

        <?php core_paginationCustom($max_num_pages); ?>
    </div>
    <div class="side-bar">
        <div class="button-menu sp">&#8594;</div>
        <?php get_template_part("template-part/global/side-bar-ja"); ?>
    </div>
</div>
<?php get_template_part("template-part/part/sec-instagram"); ?>

<!-- end main -->
<?php get_template_part("template-part/global/footer-ja"); ?>
<?php
get_footer();
?>
