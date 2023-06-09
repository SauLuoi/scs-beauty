<?php
/*
Template Name: Company JP
*/
?>
<?php get_header(); ?>
<?php
$country = get_field('country');

$about_ja_title = get_field('about_ja_title');
$about_ja_desc = get_field('about_ja_desc');

$title = get_the_title();
?>

<header id="header">
    <?php get_template_part("template-part/global/header-ja"); ?>
    <?php
    //field page
    $heading = get_field('heading');
    ?>
    <div id="mainvisual">
        <div class="container">
            <h1 class="fnt-notosan"><?php echo $heading; ?></h1>
        </div>
    </div>
    <div id="breadcrumb">
        <div class="container">
            <ul class="nav-breadcrumb fnt-notosan">
                <li>
                    <a href="<?php bloginfo("url"); ?>/jp"><span>TOP</span></a>
                </li>
                <li>
                    <span><?php echo $title; ?></span>
                </li>
            </ul>
        </div>
    </div>
    <!-- end mainvisual -->

</header>
<!-- end header -->

<div class="page-company">
    <div class="main-content full-page">
        <div class="content">
            <div class="post-content">
                <h2 class="ttlh2-post fnt-notosan "><?php echo $about_ja_title; ?></h2>
                <p class=" fnt-notosan"><?php echo $about_ja_desc; ?></p>
                <div class="box-content box-jp">
                    <p class="flag"><img
                                src="<?php bloginfo('template_url'); ?>/assets/jp/images/company/flag_jp.jpg"
                                alt="jp"></p>
                    <h3 class="ttlh3_3  fnt-notosan">アジアで事業展開を考えている⽇本企業様</h3>
                    <div class="row row1">
                        <div class="item">
                            <img src="<?php bloginfo('template_url'); ?>/assets/jp/images/company/ico1.png"
                                 alt="化粧品をベトナムに輸出したい">
                            <h4 class="text-center fnt-notosan">化粧品を<br>ベトナムに輸出したい</h4>
                        </div>
                        <div class="item">
                            <img src="<?php bloginfo('template_url'); ?>/assets/jp/images/company/ico2.png"
                                 alt="ベトナムでFDA認可を取得したい">
                            <h4 class="text-center fnt-notosan">ベトナムで<br>FDA認可を取得したい</h4>
                        </div>
                        <div class="item">
                            <img src="<?php bloginfo('template_url'); ?>/assets/jp/images/company/ico1.png"
                                 alt="アジア諸国に商品を販売したい">
                            <h4 class="text-center fnt-notosan">アジア諸国に<br>商品を販売したい</h4>
                        </div>
                    </div>
                    <div class="row arrow">
                        <p class="text-center fnt-notosan"><img
                                    src="<?php bloginfo('template_url'); ?>/assets/jp/images/company/arrow.png"
                                    alt="arrow"></p>
                        <p class="txt-note fnt-notosan">⽇本国内の企業間で<br>やりとりが完結！</p>
                    </div>
                    <div class="row row2 bg_effaff">
                        <h3 class="ttlh3_3 fnt-notosan">⽇本法⼈</h3>
                        <p class="text-center"><img
                                    src="<?php bloginfo('template_url'); ?>/assets/jp/images/company/logo_saj.png"
                                    alt="saj"></p>
                        <div class="inner">
                            <div class="item">
                                <img src="<?php bloginfo('template_url'); ?>/assets/jp/images/company/handshake.png"
                                     alt="handshake">
                                <h4 class="text-center fnt-notosan">貿易</h4>
                            </div>
                            <div class="item">
                                <img src="<?php bloginfo('template_url'); ?>/assets/jp/images/company/laptop.png"
                                     alt="laptop">
                                <h4 class="text-center">IT</h4>
                            </div>
                            <div class="item">
                                <img src="<?php bloginfo('template_url'); ?>/assets/jp/images/company/flag_vn.jpg"
                                     alt="flag" class="flag_small">
                                <h4 class="text-center fnt-notosan">マーケティング</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row arrow">
                    <p class="text-center"><img
                                src="<?php bloginfo('template_url'); ?>/assets/jp/images/company/arrow.png"
                                alt="arrow">
                    </p>
                </div>
                <div class="box-content box-vn">
                    <div class="row row2 bg_effaff">
                        <h3 class="ttlh3_3">ベトナム法⼈</h3>
                        <p class="text-center">現地法⼈でしかできない必要な⼿続きも代⾏可能です。</p>
                        <p class="text-center"><img
                                    style="width: 316px; max-height: 69px;"
                                    src="<?php bloginfo('template_url'); ?>/assets/jp/images/company/logo-sav.png"
                                    alt="saj"></p>
                        <div class="inner fnt-notosan">
                            <div class="item">
                                <h4 class="text-center">ベトナム進出<br>サポート</h4>
                            </div>
                            <div class="item">
                                <h4 class="text-center">ベトナム<br>オフショア<br>事業</h4>
                            </div>
                            <div class="item">
                                <h4 class="text-center">ベトナム・中国<br>ASEAN向け<br>輸出事業</h4>
                            </div>
                            <div class="item">
                                <h4 class="text-center">ベトナム市場<br>マーケティング</h4>
                            </div>
                        </div>
                    </div>
                    <div class="row row3">
                        <div class="inner fnt-notosan">
                            <h4 class="item">ネットショッピング</h4>
                            <h4 class="item">販社・卸商社</h4>
                            <h4 class="item">ショップチェーン</h4>
                        </div>
                    </div>
                </div>
                <p class="btn fnt-notosan"><a href="../fda/#sec-form">ご依頼・ご相談はこちら</a></p>

                <?php if ($country) { ?>
                    <div>
                        <?php
                        foreach ($country as $country_item) {
                            $country_name = $country_item['country_name'];
                            $country_information = $country_item['country_information'];
                            ?>
                            <h2 class="ttlh2-post fnt-notosan"><?php echo $country_name; ?></h2>
                            <?php
                            foreach ($country_information as $info) {
                                $company = $info['country_company'];
                                $office = $info['country_office'];
                                $tel = $info['country_tel'];
                                $representative = $info['country_representative'];
                                ?>
                                <div class="table-dl fnt-notosan">
                                    <?php
                                    if ($company) {
                                        $company_name = $company['name'];
                                        $company_content = $company['content'];
                                        ?>
                                        <dl>
                                            <dt><?php echo $company_name; ?></dt>
                                            <dd><?php echo $company_content; ?></dd>
                                        </dl>
                                    <?php } ?>
                                    <?php
                                    if ($office) {
                                        $office_name = $office['name'];
                                        $office_content = $office['content'];
                                        $office_maps = $office['maps'];
                                        ?>
                                        <dl>
                                            <dt><?php echo $office_name; ?></dt>
                                            <dd>
                                                <p><?php echo $office_content; ?></p>
                                                <div class="gmap">
                                                    <?php echo $office_maps; ?>
                                                </div>
                                            </dd>
                                        </dl>
                                    <?php } ?>
                                    <?php
                                    if ($tel) {
                                        $tel_name = $tel['name'];
                                        $tel_content = $tel['content'];
                                        ?>
                                        <dl>
                                            <dt><?php echo $tel_name; ?></dt>
                                            <dd>
                                                <a href="tel:<?php echo $tel_content; ?>"><?php echo $tel_content; ?></a>
                                            </dd>
                                        </dl>
                                    <?php } ?>
                                    <?php
                                    if ($representative) {
                                        $office_name = $representative['name'];
                                        $office_content = $representative['content'];
                                        ?>
                                        <dl>
                                            <dt><?php echo $office_name; ?></dt>
                                            <dd><?php echo $office_content; ?></dd>
                                        </dl>
                                    <?php } ?>
                                </div>
                            <?php } ?>
                        <?php } ?>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>

<?php //get_template_part("template-part/part/sec-instagram"); ?>

<!-- end main -->
<?php get_template_part("template-part/global/footer-ja"); ?>

<?php get_footer(); ?>
