<?php
$page_id = get_option('page_on_front');
$top_image_galley = get_field('top_image_galley', $page_id);
?>
<section class="banner">
    <?php
    if ($top_image_galley) {
        foreach ($top_image_galley as $img) {
            $image = $img;
            ?>
            <a href="javascript:void(0)" class="ov_hover">
                <img src="<?php echo $image; ?>" alt="banner"></a>
        <?php }
    } ?>
</section>
