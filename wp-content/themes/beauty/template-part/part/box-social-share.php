<?php
$post_social_fb = get_field('post_social_fb');
$post_social_tw = get_field('post_social_tw');
?>
<div class="box-social">
    <h2 class="fnt-bodoni ttlh2"><span>SHARE</span></h2>
    <ul class="list-social">
        <li>
            <a href="<?php echo $post_social_tw; ?>" target="_blank">
                <img src="<?php bloginfo("template_url"); ?>/assets/vn/images/item/tw.png"
                     alt="twitter">
            </a>
        </li>
        <li>
            <a href="<?php echo $post_social_fb; ?>" target="_blank">
                <img src="<?php bloginfo("template_url"); ?>/assets/vn/images/item/fb.png"
                     alt="facebook">
            </a>
        </li>
    </ul>
</div>
