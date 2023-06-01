<?php
/*
Template Name: Company
*/
?>
<?php get_header(); ?>
<?php
$country = get_field('country');

$about_ja_title = get_field('about_ja_title');
$about_ja_desc = get_field('about_ja_desc');
?>
<header id="header">
    <?php get_template_part("template-part/global/header"); ?>
    <?php get_template_part("template-part/part/main-visual-breadcrumb"); ?>

</header>
<div class="page-company">
    <div class="main-content full-page">
        <div class="content">
            <div class="post-content">
                <?php if ($country) { ?>
                    <div>
                        <?php
                        foreach ($country as $country_item) {
                            $country_name = $country_item['country_name'];
                            $country_information = $country_item['country_information'];
                            ?>
                            <h2 class="ttlh2-post"><?php echo $country_name; ?></h2>
                            <?php
                            foreach ($country_information as $info) {
                                $company = $info['country_company'];
                                $office = $info['country_office'];
                                $tel = $info['country_tel'];
                                $representative = $info['country_representative'];
                                ?>
                                <div class="table-dl">
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

<!-- end main -->
<?php get_template_part("template-part/global/footer"); ?>

<?php get_footer(); ?>
