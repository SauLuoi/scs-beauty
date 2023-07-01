<?php
/*
Template Name: Top VN
*/
?>
<?php get_header(); ?>
<header id="header">
    <?php get_template_part("template-part/global/header"); ?>
    <?php get_template_part("template-part/part/main-visual-top"); ?>
</header>
<main id="main"><!-- main -->
    <?php get_template_part("template-part/part/sec-pick-up-item"); ?>
    <?php get_template_part("template-part/part/sec-new-item"); ?>
    <?php get_template_part("template-part/part/sec-search"); ?>
    <?php get_template_part("template-part/part/sec-tags"); ?>
    <?php get_template_part("template-part/part/sec-instagram"); ?>
    <?php get_template_part("template-part/part/sec-topic"); ?>
</main>

<!-- end main -->
<?php get_template_part("template-part/global/footer"); ?>



<?php get_footer(); ?>

