<?php
$top_pick_up_choose_item = get_field('top_pick_up_choose_item');
$page_id = get_the_ID();
?>

<?php if ($top_pick_up_choose_item) { ?>
    <section id="sec01" class="sec01">
        <div class="container">
            <h2 class="fnt-bodoni ttlh2">
                <img src="<?php bloginfo('template_url'); ?>/assets/vn/images/s1_ico.png" alt="PICK UP ITEM">
                <span>PICK UP ITEM</span>
            </h2>
            <div class="inner s1_slider">
                <?php
                foreach ($top_pick_up_choose_item as $item) {
                    $id = $item->ID;
                    $title = get_the_title($id);
                    $tag = get_the_tags($id);
                    $feature = get_the_post_thumbnail_url($id);
                    $link = get_the_permalink($id);
                    $tags = wp_get_post_terms($id, 'posts_tags_jp');
                    ?>
                    <div class="item">
                        <a href="<?php echo $link; ?>">
                            <figure>
                                <img src="<?php echo $feature; ?>" alt="<?php echo $title; ?>">
                            </figure>
                        </a>
                        <h3 class="ttl <?php echo $page_id === 164 ? 'fnt-notosan' : ''; ?> ">
                            <a href="<?php echo $link; ?>">
                                <strong><?php echo $title; ?></strong>
                            </a>
                        </h3>
                        <p class="txt <?php echo $page_id === 164 ? 'fnt-notosan' : ''; ?>">
                            <?php
                            if (!empty($tag)) {
                                foreach ($tag as $tag_item) {
                                    $tag_name = $tag_item->name;
                                    if (strlen($tag_name) > 25) {
                                        $tag_name = substr($tag_item->name, 0, 25) . '...';
                                    }
                                    $tag_slug = $tag_item->slug;
                                    ?>
                                    <a href="<?php bloginfo('url'); ?>/tag/<?php echo $tag_slug; ?>"
                                       class="c_53b5ed <?php echo $page_id === 164 ? 'fnt-notosan' : ''; ?>">
                                        <small># <?php echo $tag_name; ?></small>
                                    </a>
                                <?php }
                            } ?>
                            <?php
                            if (!empty($tags)) {
                                foreach ($tags as $tags_item) {
                                    $tags_name = $tags_item->name;
                                    if (strlen($tags_name) > 25) {
                                        $tags_name = substr($tags_item->name, 0, 25) . '...';
                                    }
                                    $tags_slug = $tags_item->slug;
                                    ?>
                                    <a href="<?php bloginfo('url'); ?>/item-jp?tag=<?php echo $tags_item->term_id; ?>"
                                       class="c_53b5ed <?php echo $page_id === 164 ? 'fnt-notosan' : ''; ?>">
                                        <small># <?php echo $tags_name; ?></small>
                                    </a>
                                <?php }
                            } ?>
                        </p>
                    </div>
                <?php } ?>
            </div>
        </div>
    </section>
<?php } ?>
