<?php
/*
Template Name: Top JP
*/
?>
<?php get_header(); ?>

<header id="header">
    <?php get_template_part("template-part/global/header-ja"); ?>
    <?php get_template_part("template-part/part/main-visual-top"); ?>

</header>
<!-- end header -->
<main id="main"><!-- main -->

    <?php get_template_part("template-part/part/sec-pick-up-item"); ?>
    <?php get_template_part("template-part/part-jp/sec-new-item"); ?>
    <?php get_template_part("template-part/part-jp/sec-search"); ?>
    <?php get_template_part("template-part/part-jp/sec-tags"); ?>
    <?php get_template_part("template-part/part/sec-instagram"); ?>
    <?php get_template_part("template-part/part/sec-topic"); ?>
</main>


<!-- end main -->
<?php get_template_part("template-part/global/footer-ja"); ?>

<?php get_footer(); ?>
