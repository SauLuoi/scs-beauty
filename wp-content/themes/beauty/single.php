<?php get_header(); ?>
<?php
$tags = get_the_tags();
$cats = get_the_category();
$title = get_the_title();
$feature = get_the_post_thumbnail_url();

//field
$post_link_video = get_field('post_link_video');
$post_choose_image = get_field('post_choose_image');
?>
<header id="header">
    <?php get_template_part("template-part/global/header"); ?>
    <?php
    //field page
    $heading = get_field('heading');
    ?>
    <div id="mainvisual">
        <div class="container">
            <h1>THÔNG TIN SẢN PHẨM</h1>
        </div>
    </div>
    <?php get_template_part("template-part/global/breadcrumb"); ?>

</header>

<div class="main-content">
    <div class="content">
        <div class="content-cats">
            <?php
            foreach ($cats as $cat) {
                $cat_name = $cat->name;
                ?>
                <p class="cat"><?php echo $cat_name; ?></p>
            <?php } ?>
        </div>
        <h2 class="ttlh2_2"><?php echo $title; ?></h2>
        <?php
        if (!empty($tags)) {
            ?>
            <div class="tags">
                <?php foreach ($tags as $tag) {
                    $tag_name = $tag->name;
                    $tag_link = get_tag_link($tag->term_id);
                    ?>
                    <a href="<?php echo $tag_link; ?>"># <?php echo $tag_name; ?></a>
                <?php } ?>
            </div>
            <?php
        }
        ?>
        <figure class="cover">
            <img src="<?php echo $feature; ?>" alt="<?php echo $title; ?>">
        </figure>
        <!--        <div class="list-content-in-post">-->
        <?php echo do_shortcode('[ez-toc]'); ?>
        <!--        </div>-->
        <div class="post-content wysiwyg">
            <?php the_content(); ?>

            <?php if ($post_link_video) { ?>
                <p>YouTubeのiframe埋込のイメージ</p>
                <?php echo $post_link_video; ?>
            <?php } ?>

            <?php if ($post_choose_image) { ?>
                <p>Google / Yahooなどの広告バナー挿入イメージ</p>
                <div class="ads clearfix">
                    <div class="ads-wrapper">
                        <?php foreach ($post_choose_image as $adv) { ?>
                            <figure class="pull-left">
                                <img src="<?php echo $adv; ?>" alt="ads">
                            </figure>
                        <?php } ?>
                    </div>
                </div>
            <?php } ?>
        </div>

        <!--        box-info-->
        <?php get_template_part("template-part/part/box-info"); ?>

        <!--        box location-->
        <?php get_template_part("template-part/part/box-location"); ?>

        <!--        box social share-->
        <?php get_template_part("template-part/part/box-social-share"); ?>

        <div class="box-btn-last">
            <?php previous_post_link('%link', __('Prev')); ?>

            <a href="<?php bloginfo('url'); ?>/item" class="back-list">Back to list</a>

            <?php next_post_link('%link', __('next')); ?>
            <!--            <a href="#next" class="next">Next</a>-->
        </div>

        <!--        box recomment-->
        <?php get_template_part("template-part/part/box-recommend"); ?>

    </div>
    <div class="side-bar">
        <div class="button-menu sp">&#8594;</div>
        <?php get_template_part("template-part/global/side-bar"); ?>
    </div>
</div>
<?php get_template_part("template-part/part/sec-instagram"); ?>

<!-- end main -->
<?php get_template_part("template-part/global/footer"); ?>

<?php get_footer(); ?>
