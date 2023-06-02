<?php
/*
Template Name: Store VN
*/
?>
<?php get_header(); ?>
<?php
$store_city = get_field('store_city');
?>
<header id="header">
    <?php get_template_part("template-part/global/header"); ?>
    <?php get_template_part("template-part/part/main-visual-breadcrumb"); ?>
</header>

<div class="main-content full-page">
    <div class="content">
        <section class="sec-anchor">
            <h2 class="fnt-bodoni ttlh2">
                <img src="<?php bloginfo('template_url'); ?>/assets/vn/images/stores/ico.png" alt="location">
                <span>AREA</span>
            </h2>
            <?php if ($store_city) { ?>
                <div class="inner">
                    <?php
                    foreach ($store_city as $city) {
                        $city_name = $city['store_city_name'];
                        $city_id = convert_name(strtolower($city_name));
                        ?>
                        <a href="#<?php echo $city_id; ?>"><?php echo ucfirst($city_name); ?></a>
                    <?php } ?>
                </div>
            <?php } ?>
        </section>
        <?php if ($store_city) { ?>
            <div class="post-content">
                <?php
                foreach ($store_city as $city_content) {
                    $c_name = $city_content['store_city_name'];
                    $c_district = $city_content['store_district'];
                    $city_content_id = convert_name(strtolower($c_name));
                    ?>
                    <div>
                        <h2 id="<?php echo $city_content_id; ?>"
                            class="ttlh2-post fnt-roboto"><?php echo ucfirst($c_name); ?></h2>
                        <?php
                        if ($c_district) {
                            foreach ($c_district as $district) {
                                $district_name = $district['store_district_name'];
                                $district_agent = $district['store_agent'];
                                ?>
                                <div>
                                    <h3 class="ttlh3-post fnt-roboto"><?php echo ucfirst($district_name); ?></h3>
                                    <?php if ($district_agent) { ?>
                                        <div class="inner-table">
                                            <?php
                                            foreach ($district_agent as $agent) {
                                                $agent_name = $agent['store_agent_name'];
                                                $agent_address = $agent['store_agent_address'];
                                                $agent_maps = $agent['store_agent_maps'];
                                                ?>
                                                <table class="table02">
                                                    <tbody>
                                                    <tr>
                                                        <th>Tên đại lý</th>
                                                        <td><?php echo ucfirst($agent_name); ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th>Địa chỉ</th>
                                                        <td>
                                                            <span><?php echo $agent_address; ?></span><br>
                                                            <?php if ($agent_maps) { ?>
                                                                <a href="<?php echo $agent_maps; ?>"
                                                                   target="_blank"
                                                                   class="btn-map-link">map</a>
                                                            <?php } ?>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            <?php } ?>
                                        </div>
                                    <?php } ?>
                                </div>
                            <?php } ?>
                        <?php } ?>
                    </div>
                <?php } ?>
            </div>
        <?php } ?>
    </div>
</div>

<!-- end main -->
<?php get_template_part("template-part/global/footer"); ?>


<?php get_footer(); ?>
