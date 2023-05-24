<?php
include_once get_template_directory() . '/load/Custom_Functions.php';
include_once get_template_directory() . '/load/CTPost_CTTax.php';
include_once get_template_directory() . '/load/Performance.php';


/* Create CTPost */
// (title, slug_code, slug)
// create_post_type("Sản phẩm","product","san-pham");

/* Create CTTax */
// (title, slug, slug_code, post_type)
// create_taxonomy_theme("Danh mục Sản phẩm","danh-muc-san-pham","product_cat","product");


// Create menu Theme option use Acf Pro
if (function_exists('acf_add_options_page')) {
    acf_add_options_page(array(
        'page_title' => 'Theme option',
        'menu_title' => 'Theme option',
        'menu_slug' => 'theme-settings',
        'capability' => 'edit_posts',
        'redirect' => false
    ));
}


// Title Head Page
if (!function_exists('core_title')) {
    function core_title()
    {
        if (is_home() || is_front_page()) {
            return get_option('blogname');
        }
        if (is_archive()) {
            $obj = get_queried_object();
            $return = $obj->name;
            if ($return == 'product') {
                $return_kq = __('Product', 'text_domain');
            } else {
                $return_kq = $return;
            }
            return $return_kq;
        }
        if (is_search()) {
            return __('Search for', 'text_domain') . ' : [' . $_GET['s'] . ']';
        }
        if (is_404()) {
            return __('Page not found', 'text_domain');
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
function core_paginationCustom($max_num_pages)
{
    echo '<div class="pagination">';

    if ($max_num_pages > 1) {   // tổng số trang (10)

        $paged = (get_query_var('paged')) ? get_query_var('paged') : 1; // trang hiện tại (8)

        if ($paged >= 1) {
            echo '<a href="' . esc_url(get_pagenum_link($paged - 1)) . '" class="pagination-a">
            &nbsp;</a>';
        }
//        if ($paged > ($max_num_pages - 2)) {
//            // echo '<li class="pagination-li"><a href="'.esc_url( get_pagenum_link( $paged - 5 ) ).'" class="pagination-a">
//            // -5</a></li>';
//            echo '<a href="javascript:void(0)" class="">...</a>';
//        }

        for ($i = 1; $i <= $max_num_pages; $i++) {
            // $half_total_links = floor( 5 / 2);
            $half_total_links = 5;

            $from = $paged - $half_total_links; // trang hiện tại - 2 (8-2= 6)
            $to = $paged + $half_total_links;   // trang hiện tại + 2 (8+2 = 10)

            if ($from < $i && $i < $to) {   // $form cách $to 3 số (từ 6 đến 10 là 7,8,9)
                $class = $i == $paged ? 'active' : 'pagination-a';
                echo '<a href="' . esc_url(get_pagenum_link($i)) . '" class="' . $class . '">' . $i . '</a>';
            }
        }

//        if ($paged < ($max_num_pages - 2)) {
//            echo '<a href="javascript:void(0)" class="">...</a>';
//        }
        if ($paged <= $max_num_pages) {
            echo '<a href="' . esc_url(get_pagenum_link($paged + 1)) . '" class="pagination-a">
            &nbsp;</a>';
        }
//        if ($paged < ($max_num_pages - 5)) {
//            echo '<a href="' . esc_url(get_pagenum_link($max_num_pages)) . '" class="pagination-a">
//            最後 »</a>';
//        }
    }

    echo '</div>';
}

function wp_breadcrumbs()
{
    $name = 'Top';
    $currentBefore = '<li class="current"><span>';
    $currentAfter = '</li></span>';
    $cat_heading = 'Thông tin sản phẩm';

    if (!is_home() && !is_front_page() || is_paged()) {

        global $post;
        $home = get_bloginfo('url');
        echo '<li><a href="' . $home . '">' . $name . '</a></li> ';

        if (is_tax()) {
            $term = get_term_by('slug', get_query_var('term'), get_query_var('taxonomy'));
            echo $currentBefore . $term->name . $currentAfter;

        } elseif (is_category()) {
            global $wp_query;
            $cat_obj = $wp_query->get_queried_object();
            $thisCat = $cat_obj->term_id;
            $thisCat = get_category($thisCat);
            $parentCat = get_category($thisCat->parent);
            if ($thisCat->parent != 0) echo(get_category_parents($parentCat, TRUE, ' '));
            echo '<li><a href="javascript:void(0)">' . $cat_heading . '</a></li>';
            echo $currentBefore . '';
            single_cat_title();
            echo '' . $currentAfter;

        } elseif (is_day()) {
            echo '<li><a href="' . get_year_link(get_the_time('Y')) . '">' . get_the_time('Y') . '</a></li> ';
            echo '<li><a href="' . get_month_link(get_the_time('Y'), get_the_time('m')) . '">' . get_the_time('F') . '</a></li> ';
            echo $currentBefore . get_the_time('d') . $currentAfter;

        } elseif (is_month()) {
            echo '<li><a href="' . get_year_link(get_the_time('Y')) . '">' . get_the_time('Y') . '</a></li> ';
            echo $currentBefore . get_the_time('F') . $currentAfter;

        } elseif (is_year()) {
            echo $currentBefore . get_the_time('Y') . $currentAfter;

        } elseif (is_single()) {
            echo '<li><a href="javascript:void(0)">' . $cat_heading . '</a></li>';
            $postType = get_post_type();
            if ($postType == 'post') {
                $cat = get_the_category();
                $cat = $cat[0];
                echo '<li>' . get_category_parents($cat, TRUE, ' ') . '</li>';
            } elseif ($postType == 'portfolio') {
                $terms = get_the_term_list($post->ID, 'portfolio-category', '', '###', '');
                $terms = explode('###', $terms);
                echo '<li>' . $terms[0] . '</li>';
            }
            echo $currentBefore;
            the_title();
            echo $currentAfter;

        } elseif (is_page() && !$post->post_parent) {
            echo $currentBefore;
            the_title();
            echo $currentAfter;

        } elseif (is_page() && $post->post_parent) {
            $parent_id = $post->post_parent;
            $breadcrumbs = array();
            while ($parent_id) {
                $page = get_page($parent_id);
                $breadcrumbs[] = '<li><a href="' . get_permalink($page->ID) . '">' . get_the_title($page->ID) . '</a></li>';
                $parent_id = $page->post_parent;
            }
            $breadcrumbs = array_reverse($breadcrumbs);
            foreach ($breadcrumbs as $crumb) echo $crumb;
            echo $currentBefore;
            the_title();
            echo $currentAfter;
        } elseif (is_search()) {
            echo $currentBefore . __('Search Results for:', 'wpinsite') . ' &quot;' . get_search_query() . '&quot;' . $currentAfter;
        } elseif (is_tag()) {
            echo '<li><a href="javascript:void(0)">' . $cat_heading . '</a></li>';
            echo $currentBefore . __('', 'wpinsite');
            single_tag_title();
            echo $currentAfter;
        } elseif (is_author()) {
            global $author;
            $userdata = get_userdata($author);
            echo $currentBefore . __('Author Archive', 'wpinsite') . $currentAfter;
        } elseif (is_404()) {
            echo $currentBefore . __('Page Not Found', 'wpinsite') . $currentAfter;
        }
        if (get_query_var('paged')) {
            if (is_category() || is_day() || is_month() || is_year() || is_search() || is_tag() || is_author()) echo ' (';
            echo __('Page') . ' ' . get_query_var('paged');
            if (is_category() || is_day() || is_month() || is_year() || is_search() || is_tag() || is_author()) echo ')';
        }

    }
}

//convert text
function convert_name($str)
{
    $str = preg_replace("/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/", 'a', $str);
    $str = preg_replace("/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/", 'e', $str);
    $str = preg_replace("/(ì|í|ị|ỉ|ĩ)/", 'i', $str);
    $str = preg_replace("/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/", 'o', $str);
    $str = preg_replace("/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/", 'u', $str);
    $str = preg_replace("/(ỳ|ý|ỵ|ỷ|ỹ)/", 'y', $str);
    $str = preg_replace("/(đ)/", 'd', $str);
    $str = preg_replace("/(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ)/", 'A', $str);
    $str = preg_replace("/(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)/", 'E', $str);
    $str = preg_replace("/(Ì|Í|Ị|Ỉ|Ĩ)/", 'I', $str);
    $str = preg_replace("/(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ)/", 'O', $str);
    $str = preg_replace("/(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)/", 'U', $str);
    $str = preg_replace("/(Ỳ|Ý|Ỵ|Ỷ|Ỹ)/", 'Y', $str);
    $str = preg_replace("/(Đ)/", 'd', $str);
    $str = preg_replace("/(\“|\”|\‘|\’|\,|\!|\&|\;|\@|\#|\%|\~|\`|\=|\_|\'|\]|\[|\}|\{|\)|\(|\+|\^)/", '-', $str);
    $str = preg_replace("/( )/", '-', $str);
    return $str;
}
