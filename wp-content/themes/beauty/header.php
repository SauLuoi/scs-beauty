<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   <!-- IEの互換表示無効 -->
    <meta name="format-detection" content="telephone=no">   <!-- 電話番号自動リンク無効 -->
    <meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">   <!-- Skypeによる電話番号置換無効 -->
    <meta name="viewport" content="width=device-width">
    <title><?php echo core_title(); ?></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <!-- Font Awesome BootstrapCDN -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700&display=swap">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Bodoni+Moda:wght@400;500;600;700;800;900&family=Libre+Bodoni:wght@400;500;600;700&family=Roboto:wght@100;300;400;500;700;900&display=swap">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Noto+Serif+JP:wght@200;300;400;500;600;700;900&display=swap">
    <?php wp_head(); ?>
    <?php echo get_field('insert_code_header', 'option'); ?>
</head>
<body class="<?php echo is_front_page() ? 'page-top' : ''; ?> <?php echo pll_current_language('slug') === 'vi' ? 'fnt-vn' : '' ?>">
<section id="wrapper"><!-- wrapper -->
    <?php get_template_part("template-part/global/header"); ?>
    <main id="main"><!-- main -->
