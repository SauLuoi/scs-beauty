<?php
$post_social_fb = get_field('post_social_fb');
$post_social_tw = get_field('post_social_tw');

$id = get_the_ID();
$link = get_the_permalink($id);
?>
<div class="box-social">
    <h2 class="fnt-bodoni ttlh2"><span>SHARE</span></h2>
    <ul class="list-social">
        <li>
            <a href="https://twitter.com/share?url=<?php echo $link; ?>" target="_blank">
                <img src="<?php bloginfo("template_url"); ?>/assets/vn/images/item/tw.png"
                     alt="twitter">
            </a>
        </li>
        <li>
            <a href="https://www.facebook.com/sharer/sharer.php?u=<?php echo $link; ?>" target="_blank">
                <img src="<?php bloginfo("template_url"); ?>/assets/vn/images/item/fb.png"
                     alt="facebook">
            </a>
        </li>
    </ul>
</div>
