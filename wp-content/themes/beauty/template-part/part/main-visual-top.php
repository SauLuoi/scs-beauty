<div id="mainvisual">
    <div class="container">
        <div class="box-slider">
            <?php
            $top_main_visual_slide = get_field('top_main_visual_slide');
            $top_text_slide = get_field('top_text_slide');
            $top_main_visual_feature = get_field('top_main_visual_feature');
            ?>
            <?php if ($top_main_visual_slide) { ?>
                <div class="mv_slider">
                    <?php
                    foreach ($top_main_visual_slide as $slide) {
                        $top_main_visual_slide_image = $slide['top_main_visual_slide_image'];
                        $top_main_visual_slide_alt = $top_main_visual_slide_image['alt'];
                        $top_main_visual_slide_url = $top_main_visual_slide_image['url'];
                        ?>
                        <div class="item">
                            <img src="<?php echo $top_main_visual_slide_url; ?>"
                                 alt="<?php echo $top_main_visual_slide_alt; ?> ">
                        </div>
                    <?php } ?>
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
