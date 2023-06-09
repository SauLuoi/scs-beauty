<?php
$top_topic_title = get_field('top_topic_title');
$top_topic_desc = get_field('top_topic_desc');
$top_topic_feature_pc = get_field('top_topic_feature_pc');
$top_topic_feature_sp = get_field('top_topic_feature_sp');
$page_id = get_the_ID();
?>
<section id="sec06" class="sec06">
    <div class="container">
        <h2 class="<?php echo $page_id === 164 ? 'fnt-notosan' : ''; ?>"><?php echo $top_topic_title; ?></h2>
        <p class="txt  <?php echo $page_id === 164 ? 'fnt-notosan' : ''; ?>"><?php echo $top_topic_desc; ?></p>
    </div>
    <figure>
        <img class="pc" src="<?php echo $top_topic_feature_pc['url']; ?>"
             alt="<?php echo $top_topic_feature_pc['alt']; ?>">
        <img class="sp" src="<?php echo $top_topic_feature_sp['url']; ?>"
             alt="<?php echo $top_topic_feature_sp['alt']; ?>">
    </figure>
</section>
