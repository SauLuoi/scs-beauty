<?php
$post_purchase_link = get_field('post_purchase_link');
?>
<?php if ($post_purchase_link) { ?>
    <div class="box-info">
        <h3 class="ttl">
            <img src="<?php bloginfo("template_url"); ?>/assets/vn/images/item/shopping-cart.png" alt="cart">
            <span class="fnt-roboto">Bấm vào đây để mua sản phẩm</span>
        </h3>
        <p class="btn-buy ov_hover">
            <a href="<?php echo $post_purchase_link; ?>" target="_blank">
                <img src="<?php bloginfo("template_url"); ?>/assets/vn/images/item/lazada-logo.png" alt="lazada"></a>
        </p>
    </div>
<?php } ?>
