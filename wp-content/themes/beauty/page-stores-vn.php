<?php
/*
Template Name: Store VN
*/
?>
<?php get_header(); ?>
<?php
$store_city = get_field('store_city');

$args = array(
    'post_type' => 'location',
    'post_status' => 'publish',
    'taxonomy' => 'district',
);

$district_cat = get_categories($args);
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
            <div class="inner">
                <a href="#ho-chi-minh">Hồ Chí Minh</a>
                <a href="#ha-noi">Hà Nội</a>
                <a href="#da-nang">Đà Nẵng</a>
            </div>
        </section>
        <div class="post-content">
            <h2 id="ho-chi-minh" class="ttlh2-post fnt-roboto">Hồ Chí Minh</h2>
            <?php if ($district_cat) {
                foreach ($district_cat as $district_name) {
                    $district_in_city = get_field('district_in_city', 'category_' . $district_name->term_id);
                    ?>

                    <!--                    Hồ chí minh-->
                    <?php if ($district_in_city === "Hồ Chí Minh") { ?>
                        <h3 class="ttlh3-post fnt-roboto"><?php echo $district_name->name; ?></h3>
                    <?php } ?>
                    <?php
                    $args = array(
                        'tax_query' => array(
                            array(
                                'taxonomy' => 'district',
                                'field' => 'slug',
                                'terms' => $district_name->slug,
                            ),
                        ),
                        'meta_key' => 'location_city',
                        'meta_value' => 'Hồ Chí Minh'
                    );
                    $query_args = new WP_Query($args);
                    if ($query_args->have_posts()) { ?>
                        <div class="inner-table">
                            <?php
                            while ($query_args->have_posts()) {
                                $query_args->the_post();
                                $post_id = get_the_ID();
                                $post_title = get_the_title();
                                $post_title_slug = convert_name(strtolower($post_title));
                                $district = get_the_title();
                                $location_address = get_field('location_address', $post_id);
                                $location_maps = get_field('location_maps', $post_id);
                                ?>
                                <table class="table02" id="<?php echo $post_title_slug; ?>">
                                    <tbody>
                                    <tr>
                                        <th>Tên đại lý:</th>
                                        <td><?php echo $district; ?></td>
                                    </tr>
                                    <tr>
                                        <th>Địa chỉ</th>
                                        <td>
                                            <span><?php echo $location_address; ?></span><br>
                                            <?php if ($location_maps) { ?>
                                                <a href="<?php echo $location_maps; ?>" target="_blank"
                                                   class="btn-map-link">map</a>
                                            <?php } ?>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            <?php } ?>
                        </div>
                    <?php } ?>
                <?php }
            } ?>


            <h2 id="ha-noi" class="ttlh2-post fnt-roboto">Hà Nội</h2>
            <?php if ($district_cat) {
                foreach ($district_cat as $district_name) {
                    $district_in_city = get_field('district_in_city', 'category_' . $district_name->term_id);
                    ?>

                    <!--                    Hà Nội-->
                    <?php if ($district_in_city === "Hà Nội") { ?>
                        <h3 class="ttlh3-post fnt-roboto"><?php echo $district_name->name; ?></h3>
                    <?php } ?>
                    <?php
                    $args = array(
                        'tax_query' => array(
                            array(
                                'taxonomy' => 'district',
                                'field' => 'slug',
                                'terms' => $district_name->slug,
                            ),
                        ),
                        'meta_key' => 'location_city',
                        'meta_value' => 'Hà Nội'
                    );
                    $query_args = new WP_Query($args);
                    if ($query_args->have_posts()) { ?>
                        <div class="inner-table">
                            <?php
                            while ($query_args->have_posts()) {
                                $query_args->the_post();
                                $post_id = get_the_ID();
                                $post_title = get_the_title();
                                $post_title_slug = convert_name(strtolower($post_title));
                                $district = get_the_title();
                                $location_address = get_field('location_address', $post_id);
                                $location_maps = get_field('location_maps', $post_id);
                                ?>
                                <table class="table02" id="<?php echo $post_title_slug; ?>">
                                    <tbody>
                                    <tr>
                                        <th>Tên đại lý:</th>
                                        <td><?php echo $district; ?></td>
                                    </tr>
                                    <tr>
                                        <th>Địa chỉ</th>
                                        <td>
                                            <span><?php echo $location_address; ?></span><br>
                                            <?php if ($location_maps) { ?>
                                                <a href="<?php echo $location_maps; ?>" target="_blank"
                                                   class="btn-map-link">map</a>
                                            <?php } ?>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            <?php } ?>
                        </div>
                    <?php } ?>
                <?php }
            } ?>


            <h2 id="da-nang" class="ttlh2-post fnt-roboto">Đà Nẵng</h2>
            <?php if ($district_cat) {
                foreach ($district_cat as $district_name) {
                    $district_in_city = get_field('district_in_city', 'category_' . $district_name->term_id);
                    ?>

                    <!--                    Hà Nội-->
                    <?php if ($district_in_city === "Đà Nẵng") { ?>
                        <h3 class="ttlh3-post fnt-roboto"><?php echo $district_name->name; ?></h3>
                    <?php } ?>
                    <?php
                    $args = array(
                        'tax_query' => array(
                            array(
                                'taxonomy' => 'district',
                                'field' => 'slug',
                                'terms' => $district_name->slug,
                            ),
                        ),
                        'meta_key' => 'location_city',
                        'meta_value' => 'Đà Nẵng'
                    );
                    $query_args = new WP_Query($args);
                    if ($query_args->have_posts()) { ?>
                        <div class="inner-table">
                            <?php
                            while ($query_args->have_posts()) {
                                $query_args->the_post();
                                $post_id = get_the_ID();
                                $post_title = get_the_title();
                                $post_title_slug = convert_name(strtolower($post_title));
                                $district = get_the_title();
                                $location_address = get_field('location_address', $post_id);
                                $location_maps = get_field('location_maps', $post_id);
                                ?>
                                <table class="table02" id="<?php echo $post_title_slug; ?>">
                                    <tbody>
                                    <tr>
                                        <th>Tên đại lý:</th>
                                        <td><?php echo $district; ?></td>
                                    </tr>
                                    <tr>
                                        <th>Địa chỉ</th>
                                        <td>
                                            <span><?php echo $location_address; ?></span><br>
                                            <?php if ($location_maps) { ?>
                                                <a href="<?php echo $location_maps; ?>" target="_blank"
                                                   class="btn-map-link">map</a>
                                            <?php } ?>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            <?php } ?>
                        </div>
                    <?php } ?>
                <?php }
            } ?>
        </div>
    </div>
</div>

<!-- end main -->
<?php get_template_part("template-part/global/footer"); ?>

<?php get_footer(); ?>
