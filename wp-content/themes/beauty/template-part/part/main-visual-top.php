<div id="mainvisual">
    <div class="container">
        <div class="box-slider">
            <?php
            $top_main_visual_slide = get_field('top_main_visual_slide');
            $top_text_slide = get_field('top_text_slide');
            $top_main_visual_feature = get_field('top_main_visual_feature');
            ?>
            <?php if (!empty($top_main_visual_slide)) { ?>
                <div class="mv_slider">
                    <?php
                    foreach ($top_main_visual_slide as $slide) {
                        $top_main_visual_slide_image = $slide['top_main_visual_slide_image'];
                        $top_main_visual_slide_link_post = $slide['top_main_visual_slide_url'];
                        $top_main_visual_slide_alt = $top_main_visual_slide_image['alt'];
                        $top_main_visual_slide_url = $top_main_visual_slide_image['url'];
                        ?>
                        <div class="item">
                            <?php if ($top_main_visual_slide_link_post) { ?>
                            <a href="<?php echo $top_main_visual_slide_link_post; ?>" target="_blank">
                                <?php } ?>
                                <img src="<?php echo $top_main_visual_slide_url; ?>"
                                     alt="<?php echo $top_main_visual_slide_alt; ?> ">
                                <?php if ($top_main_visual_slide_link_post) { ?>
                            </a>
                        <?php } ?>
                        </div>
                    <?php } ?>
                </div>
            <?php } else { ?>
                <div class="mv_slider" style="opacity: 0;">
                    <div class="item">
                        <a href="javascript:void(0)">
                            <img src="<?php bloginfo('template_url'); ?>/assets/vn/images/common/bg_mv.png"
                                 alt="">
                        </a>
                    </div>
                </div>
            <?php } ?>
        </div>
        <?php
        if ($top_main_visual_feature) {
            $top_main_visual_feature_url = $top_main_visual_feature['url'];
            $top_main_visual_feature_alt = $top_main_visual_feature['alt'];
            ?>
            <figure class="pt">
                <img src="<?php echo $top_main_visual_feature_url; ?>"
                     alt="<?php echo $top_main_visual_feature_alt; ?>">
            </figure>
        <?php } ?>
    </div>
</div>
