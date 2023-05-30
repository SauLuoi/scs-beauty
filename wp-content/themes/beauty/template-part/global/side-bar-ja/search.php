<?php
$page_id = get_option('page_on_front');
$top_search_category = get_field('top_search_category', $page_id);
?>
<section class="sec_page">
    <h2 class="fnt-bodoni ttlh2">
        <img src="<?php bloginfo("template_url"); ?>/assets/vn//images/s3_ico.png" alt="SEARCH">
        <span>SEARCH</span>
    </h2>
    <div class="inner">
        <?php foreach ($top_search_category as $cat) {
            $cat_id = $cat->term_id;
            $cat_name = $cat->name;
            $cat_slug = get_category_link($cat_id);
            $cat_feature = get_field('feature', 'category_' . $cat_id);
            ?>
            <a href="<?php echo $cat_slug; ?>" class="fnt-roboto">
                <span><?php echo $cat_name; ?></span>
                <figure>
                    <img src="<?php echo $cat_feature; ?>" alt="<?php echo $cat_name; ?>">
                </figure>
            </a>
        <?php } ?>
        <a href="../item/" class="fnt-roboto">
            <span>Sản phẩm khác</span>
            <figure>
                <img src="<?php bloginfo("template_url"); ?>/assets/vn//images/s3_img3.jpg" alt="Sản phẩm khác">
            </figure>
        </a>
    </div>
</section>
