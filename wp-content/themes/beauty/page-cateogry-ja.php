<?php
/*
Template Name: Category JP
*/

get_header();

$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;

$args = array(
    'post_type' => 'post-jp',
    'post_status' => 'publish',
    'posts_per_page' => 12,
    'paged' => $paged,
);
$query = new WP_Query($args);
$max_num_pages = $query->max_num_pages;

?>
<header id="header">
    <?php get_template_part("template-part/global/header"); ?>
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
                    $tags = get_the_tags();
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
                                    $tag_link = get_tag_link($tag->term_id);
                                    ?>
                                    <a href="<?php echo $tag_link; ?>" class="c_53b5ed">
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

<?php
get_footer();
?>
