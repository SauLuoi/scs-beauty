<?php
/*
Template Name: Agent recruitments Complete
*/
?>
<?php get_header(); ?>
<?php
$agent_banner_image = get_field('agent_banner_image');
$agent_banner_title = get_field('agent_banner_title');
$agent_trending_content = get_field('agent_trending_content');

//policy
$agent_policy_main_content = get_field('agent_policy_main_content');
$agent_policy_contact = get_field('agent_policy_contact');
$agent_policy_google_analytics = get_field('agent_policy_google_analytics');
$agent_policy_google = get_field('agent_policy_google');

//form
$agent_form_title = get_field('agent_form_title');
$agent_form_id = get_field('agent_form_id');
$contact_form = do_shortcode('[contact-form-7 id="' . $agent_form_id . '"]');

?>
<style>
    .sec-form{
        padding-top: 0;
    }
</style>
<header id="header">
    <?php get_template_part("template-part/global/header"); ?>
    <div id="mainvisual">
        <div class="container">
            <h1>TUYỂN DỤNG NHÀ PHÂN PHỐI</h1>
        </div>
    </div>

</header>
<div id="breadcrumb">
    <div class="container">
        <ul class="nav-breadcrumb">
            <li>
                <a href="/"><span>TOP</span></a>
            </li>
            <li>
                <span>Tuyển Dụng Nhà Phân Phối</span>
            </li>
        </ul>
    </div>
</div>


<main id="main"><!-- main -->
    <div class="main-content full-page">
        <div class="content">
            <section id="sec-form" class="sec-form pb50">
                <h3 class="ttlh2-post">Hoàn tất gửi</h3>
                <!-- wp-form -->
                <p>Gửi thành công<br>Chúng tôi sẽ liên hệ với bạn qua e-mail hoặc điện thoại vào ngày kế tiếp.<br>Xin lưu ý sẽ có thể mất một ít thời gian để gửi trả lời.</p>
                <!-- end wp-form -->
                <p class="btn mt50"><a href="/">Trở lại TRANG CHỦ</a></p>
            </section>
            <style>
                .btn a{
                    font-size: 22px;
                    height: 60px;
                    padding: 0;
                    line-height: 60px;
                    width: 290px;
                }
                .btn a{
                    width: 290px;
                }
            </style>
        </div>
    </div>
</main>

<!-- end main -->
<?php get_template_part("template-part/global/footer"); ?>

<?php get_footer(); ?>

