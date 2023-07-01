<?php
$page_id = get_template_id('page-ja.php');
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
            <a href="<?php bloginfo("url");?>/jp/item?cat=<?php echo $cat_id; ?>" class="fnt-notosan">
                <span class="fnt-notosan"><?php echo $cat_name; ?></span>
                <figure>
                    <img src="<?php echo $cat_feature; ?>" alt="<?php echo $cat_name; ?>">
                </figure>
            </a>
        <?php } ?>
    </div>
</section>
