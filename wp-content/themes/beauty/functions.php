<?php
include_once get_template_directory(). '/load/Custom_Functions.php';
include_once get_template_directory(). '/load/CTPost_CTTax.php';
include_once get_template_directory(). '/load/Performance.php';


/* Create CTPost */
// (title, slug_code, slug)
// create_post_type("Sản phẩm","product","san-pham");

/* Create CTTax */
// (title, slug, slug_code, post_type)
// create_taxonomy_theme("Danh mục Sản phẩm","danh-muc-san-pham","product_cat","product");


// Create menu Theme option use Acf Pro
if( function_exists('acf_add_options_page') ) {
    acf_add_options_page(array(
        'page_title'    => 'Theme option',
        'menu_title'    => 'Theme option',
        'menu_slug'     => 'theme-settings',
        'capability'    => 'edit_posts',
        'redirect'      => false
    ));
}


// Title Head Page
if (!function_exists('core_title')) {
    function core_title() {
        if (is_home() || is_front_page()) {
            return get_option('blogname');
        }
        if (is_archive()) {
            $obj = get_queried_object();
            $return = $obj->name;
            if($return == 'product') {
                $return_kq = __( 'Product', 'text_domain' );
            } else {
                $return_kq = $return;
            }
            return $return_kq;
        }
        if (is_search()) {
            return __( 'Search for', 'text_domain' ).' : ['.$_GET['s'].']';
        }
        if (is_404()) {
            return __( 'Page not found', 'text_domain' );
        }
        return get_the_title();
    }
}


// Url File theme
if (!function_exists('core_asset')) {
    function core_asset($path)
    {
        return wp_slash(get_stylesheet_directory_uri() . '/dist/' . $path);
    }
}


// Url image theme
if (!function_exists('core_getPostImage')) {
    function core_getPostImage($id, $imageSize = '')
    {
        $img = wp_get_attachment_image_src(get_post_thumbnail_id($id), $imageSize);
        return (!$img) ? core_asset('images/no-image-wc.png') : $img[0];
    }
}


// Pagination
function core_paginationCustom($max_num_pages) {
    echo '<div class="core-pagination">';

    if ($max_num_pages > 1) {   // tổng số trang (10)
        echo '<ul class="">';

        $paged = (get_query_var('paged')) ? get_query_var('paged') : 1; // trang hiện tại (8)

        echo '<li class="pagination-li"><a href="" class="pagination-a">'.$paged .' / '. $max_num_pages.'</a></li>';

        if ($paged > ($max_num_pages - 5) ) {
            echo '<li class="pagination-li"><a href="'.esc_url( get_pagenum_link( 1 ) ).'" class="pagination-a">
            « 先頭</a></li>';
        }
        if ($paged > 1) {
            echo '<li class="pagination-li"><a href="'.esc_url( get_pagenum_link( $paged - 1 ) ).'" class="pagination-a">
            «</a></li>';
        }
        if ($paged > ($max_num_pages - 5) ) {
            // echo '<li class="pagination-li"><a href="'.esc_url( get_pagenum_link( $paged - 5 ) ).'" class="pagination-a">
            // -5</a></li>';
            echo '<li class="pagination-li"><a href="javascript:void(0)" class="">...</a></li>';
        }

        for($i= 1; $i <= $max_num_pages; $i++) {
            // $half_total_links = floor( 5 / 2);
            $half_total_links = 5;

            $from = $paged - $half_total_links; // trang hiện tại - 2 (8-2= 6)
            $to = $paged + $half_total_links;   // trang hiện tại + 2 (8+2 = 10)

            if ($from < $i && $i < $to) {   // $form cách $to 3 số (từ 6 đến 10 là 7,8,9)
                $class = $i == $paged ? 'active' : 'pagination-a';
                echo '<li class="pagination-li "><a href="'.esc_url( get_pagenum_link( $i ) ).'" class="'.$class.'">'.$i.'</a></li>';
            }
        }

        if ($paged < ($max_num_pages - 5) ) {
            echo '<li class="pagination-li"><a href="javascript:void(0)" class="">...</a></li>';
            // echo '<li class="pagination-li"><a href="'.esc_url( get_pagenum_link( $paged + 5 ) ).'" class="pagination-a">
            // +5</a></li>';
        }
        if ($paged + 1 <= $max_num_pages) {
            echo '<li class="pagination-li"><a href="'.esc_url( get_pagenum_link( $paged + 1 ) ).'" class="pagination-a">
            »</a></li>';
        }
        if ($paged < ($max_num_pages -5) ) {
            echo '<li class="pagination-li"><a href="'.esc_url( get_pagenum_link( $max_num_pages ) ).'" class="pagination-a">
            最後 »</a></li>';
        }

        echo '</ul>';
    }

    echo '</div>';
}
