<?php
/*
Template Name: Agent recruitments Confirm
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

$inputs = originalContactSend('agent-recruitment');
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

<!-- end header -->
<main id="main"><!-- main -->
    <div class="main-content full-page">
        <div class="content">
            <section id="sec-form" class="sec-form pb50">
                <h3 class="ttlh2-post">Xác nhận nội dung đã nhập</h3>
                <!-- wp-form -->
                <div class="form-block">
                    <form method="post" action="?" name="form" id="form">
                        <?php foreach($inputs as $key=>$val): ?>
                            <?php if(is_array($val)): ?>
                                <?php foreach($val as $mval): ?>
                                    <input type="hidden" name="<?php echo $key; ?>[]" value="<?php echo $mval; ?>" />
                                <?php endforeach; ?>
                            <?php else: ?>
                                <input type="hidden" name="<?php echo $key; ?>" value="<?php echo $val; ?>" />
                            <?php endif; ?>
                        <?php endforeach; ?>
                        <?php wp_nonce_field( 'aiwave_contact_confirm_form', '_aiwave_confirm_token' ); ?>
                        <div class="tbl-contact">
                            <dl class="first">
                                <dt>
                                    <span class="ttl text-center">Tên công ty/Tên đại lý</span>
                                </dt>
                                <dd><?php echo !empty($inputs['company'])?$inputs['company']:''; ?></dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="ttl text-center">Tên</span>
                                </dt>
                                <dd><?php echo !empty($inputs['fullname'])?$inputs['fullname']:''; ?></dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="ttl text-center">Địa chỉ Email</span>
                                </dt>
                                <dd><?php echo !empty($inputs['email'])?$inputs['email']:''; ?></dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="ttl text-center">Điện thoại liên hệ</span>
                                </dt>
                                <dd><?php echo !empty($inputs['tel'])?$inputs['tel']:''; ?></dd>
                            </dl>
                            <dl>
                                <dt class="last">
                                    <span class="ttl text-center">Nội dung</span>
                                </dt>
                                <dd><?php echo !empty($inputs['comment'])?$inputs['comment']:''; ?></dd>
                            </dl>
                        </div>
                        <div class="form-btn-block">
                            <!--Button back for comfirm-->
                            <p class="btn mb20"><a class="submit_btn_confirm" href="/agent-recruitment#form">TRỞ VỀ</a></p>
                            <div class="btn">
                                <div class="form-btn">
                                    <input type="submit" name="Submit" value="Gửi nội dung" id="submit_btn" class="fnt-roboto">
                                    <input type="hidden" name="action" value="confirm">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- end wp-form -->
            </section>
            <style>
                form .submit_btn_confirm,form .form-btn input{
                    font-size: 22px;
                    height: 60px;
                    padding: 0;
                    line-height: 60px;
                    width: 290px;
                }
                form .form-btn{
                    width: 290px;
                }
            </style>
        </div>
    </div>
</main>

<!-- end main -->
<?php get_template_part("template-part/global/footer"); ?>

<?php get_footer(); ?>

