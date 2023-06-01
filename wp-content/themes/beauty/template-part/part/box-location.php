<?php
$location = get_field('location');
?>
<div class="box-location">
    <h3 class="ttl">
        <img src="<?php bloginfo("template_url"); ?>/assets/vn/images/item/shop.png"
             alt="shop">
        <span class="fnt-roboto">Bấm vào đây để xử lý các cửa hàng</span>
    </h3>
    <?php if ($location) { ?>
        <div class="inner-location">
            <?php
            foreach ($location as $addr) {
                $location_address = $addr['location_address'];
                $location_link = $addr['location_link'];
                ?>
                <a href="<?php echo $location_link; ?>" target="_blank"
                   class="fnt-roboto"><?php echo $location_address; ?></a>
            <?php } ?>
        </div>
    <?php } ?>
</div>
