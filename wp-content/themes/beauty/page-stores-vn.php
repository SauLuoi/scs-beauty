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
);
$query_args = new WP_Query($args);
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
        <?php if ($query_args->have_posts()) { ?>
            <div class="post-content">
                <h2 id="ho-chi-minh" class="ttlh2-post fnt-roboto">Hồ Chí Minh</h2>
                <?php
                while ($query_args->have_posts()) {
                    $query_args->the_post();
                    $post_id = get_the_ID();
                    $location_city = get_field('location_city', $post_id);
                    $location_slug = convert_name(strtolower($location_city));
                    $district = get_the_title();
                    $location_address = get_field('location_address', $post_id);
                    $location_maps = get_field('location_maps', $post_id);
                    if ($location_slug === 'ho-chi-minh') {
                        ?>
                        <h3 class="ttlh3-post fnt-roboto">Quận 1</h3>
                        <div class="inner-table">
                            <table class="table02">
                                <tbody>
                                <tr>
                                    <th>Tên đại lý</th>
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
                        </div>
                    <?php } ?>
                <?php } ?>
                <h2 id="ha-noi" class="ttlh2-post fnt-roboto">Hà Nội</h2>
                <h3 class="ttlh3-post">zzzzzzzzzzzz</h3>
                <div class="inner-table">
                    <table class="table02">
                        <tbody>
                        <tr>
                            <th>Tên đại lý</th>
                            <td>YENSPA</td>
                        </tr>
                        <tr>
                            <th>Địa chỉ</th>
                            <td>
                                <span>41 đường số 79 , P.Tân Qui, Quận7 TPHCM</span><br>
                                <a href="https://goo.gl/maps/ZYM7RBDJdCSX1v1v9" target="_blank"
                                   class="btn-map-link">map</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <table class="table02">
                        <tbody>
                        <tr>
                            <th>Tên đại lý</th>
                            <td>THAILAND2</td>
                        </tr>
                        <tr>
                            <th>Địa chỉ</th>
                            <td>
                                <span>2F đường số 10 , Quận7 , TPHCM</span><br>
                                <a href="https://goo.gl/maps/YKPWeCXsQdick68j8" target="_blank"
                                   class="btn-map-link">map</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <h2 id="da-nang" class="ttlh2-post fnt-roboto">Đà Nẵng</h2>
                <h3 class="ttlh3-post">aaaaaaaaaaa</h3>
                <div class="inner-table">
                    <table class="table02">
                        <tbody>
                        <tr>
                            <th>Tên đại lý</th>
                            <td>YENSPA</td>
                        </tr>
                        <tr>
                            <th>Địa chỉ</th>
                            <td>
                                <span>41 đường số 79 , P.Tân Qui, Quận7 TPHCM</span><br>
                                <a href="https://goo.gl/maps/ZYM7RBDJdCSX1v1v9" target="_blank"
                                   class="btn-map-link">map</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <table class="table02">
                        <tbody>
                        <tr>
                            <th>Tên đại lý</th>
                            <td>THAILAND2</td>
                        </tr>
                        <tr>
                            <th>Địa chỉ</th>
                            <td>
                                <span>2F đường số 10 , Quận7 , TPHCM</span><br>
                                <a href="https://goo.gl/maps/YKPWeCXsQdick68j8" target="_blank"
                                   class="btn-map-link">map</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <table class="table02">
                        <tbody>
                        <tr>
                            <th>Tên đại lý</th>
                            <td>YENSPA</td>
                        </tr>
                        <tr>
                            <th>Địa chỉ</th>
                            <td>
                                <span>41 đường số 79 , P.Tân Qui, Quận7 TPHCM</span><br>
                                <a href="https://goo.gl/maps/ZYM7RBDJdCSX1v1v9" target="_blank"
                                   class="btn-map-link">map</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <table class="table02">
                        <tbody>
                        <tr>
                            <th>Tên đại lý</th>
                            <td>THAILAND2</td>
                        </tr>
                        <tr>
                            <th>Địa chỉ</th>
                            <td>
                                <span>2F đường số 10 , Quận7 , TPHCM</span><br>
                                <a href="https://goo.gl/maps/YKPWeCXsQdick68j8" target="_blank"
                                   class="btn-map-link">map</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <h3 class="ttlh3-post">bbbbbbbbb</h3>
                <div class="inner-table">
                    <table class="table02">
                        <tbody>
                        <tr>
                            <th>Tên đại lý</th>
                            <td>YENSPA</td>
                        </tr>
                        <tr>
                            <th>Địa chỉ</th>
                            <td>
                                <span>41 đường số 79 , P.Tân Qui, Quận7 TPHCM</span><br>
                                <a href="https://goo.gl/maps/ZYM7RBDJdCSX1v1v9" target="_blank"
                                   class="btn-map-link">map</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <table class="table02">
                        <tbody>
                        <tr>
                            <th>Tên đại lý</th>
                            <td>THAILAND2</td>
                        </tr>
                        <tr>
                            <th>Địa chỉ</th>
                            <td>
                                <span>2F đường số 10 , Quận7 , TPHCM</span><br>
                                <a href="https://goo.gl/maps/YKPWeCXsQdick68j8" target="_blank"
                                   class="btn-map-link">map</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <table class="table02">
                        <tbody>
                        <tr>
                            <th>Tên đại lý</th>
                            <td>YENSPA</td>
                        </tr>
                        <tr>
                            <th>Địa chỉ</th>
                            <td>
                                <span>41 đường số 79 , P.Tân Qui, Quận7 TPHCM</span><br>
                                <a href="https://goo.gl/maps/ZYM7RBDJdCSX1v1v9" target="_blank"
                                   class="btn-map-link">map</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        <?php } ?>
    </div>
</div>

<!-- end main -->
<?php get_template_part("template-part/global/footer"); ?>

<?php get_footer(); ?>
