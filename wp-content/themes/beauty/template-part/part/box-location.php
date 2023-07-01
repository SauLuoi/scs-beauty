<?php
$location = get_field('location');
$page_store_id = get_template_id('page-stores-vn.php');
$page_store_link = get_page_link($page_store_id);
?>
<?php if ($location) { ?>
    <div class="box-location">
        <h3 class="ttl">
            <img src="<?php bloginfo("template_url"); ?>/assets/vn/images/item/shop.png"
                 alt="shop">
            <span class="fnt-roboto">Thông tin cửa hàng</span>
        </h3>
        <div class="inner-location">
            <?php
            foreach ($location as $item) {
                $post_name = $item->post_name;
                $post_title = $item->post_title;
                ?>
                <a href="<?php echo $page_store_link . '#' . $post_name; ?>" target="_blank"
                   class="fnt-roboto"><?php echo $post_title; ?></a>
            <?php } ?>
        </div>
    </div>
<?php } ?>