<?php
/*
Template Name: Agent recruitments
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

$res = originalContactConfirm('contact');

echo settingContactFlow('contact')['confirm'];
var_dump($_POST);
?>

<header id="header">
    <?php get_template_part("template-part/global/header"); ?>
    <?php get_template_part("template-part/part/main-visual-breadcrumb"); ?>

</header>

<div class="main-content full-page">
    <div class="content">
        <section class="sec1-banner">
            <div class="title" style="background-image: url('<?php echo $agent_banner_image; ?>')">
                <h2 class="fnt-notoserif"><?php echo $agent_banner_title ? $agent_banner_title : '' ?></h2>
            </div>

            <?php if ($agent_trending_content) { ?>
                <div class="inner">
                    <?php
                    foreach ($agent_trending_content as $trending) {
                        $trending_figure = $trending['figure'];
                        $trending_text = $trending['text'];
                        ?>
                        <div class="item">
                            <figure>
                                <img src="<?php echo $trending_figure['url']; ?>"
                                     alt="<?php echo $trending_figure['alt']; ?>">
                            </figure>
                            <h3><?php echo $trending_text; ?></h3>
                        </div>
                    <?php } ?>
                </div>
            <?php } ?>
        </section>
        <section id="sec-form" class="sec-form">
            <h2 class="ttlh2_2 fnt-notoserif text-center"><?php echo $agent_form_title; ?></h2>
            <h3 class="ttlh2-post">FORM LIÊN HỆ</h3>
            <p>Để gửi yêu cầu tư vấn sản phẩm/dịch vụ, vui lòng điền thông tin vào biểu mẫu dưới đây:
                Hãy chắc chắn bạn đã đọc “<a href="#pp"><strong>Chính sách bảo mật</strong></a>” và nếu bạn đồng ý với
                nội dung này, vui lòng điền thông tin cần thiết vào biểu mẫu bên dưới và nhấn nút “Tiến hành xác nhận
                nội dung".</p>

            <!-- wp-form -->
            <form method="post" action="?" name="form" id="form">
                <?php wp_nonce_field('aiwave_contact_form', '_aiwave_token'); ?>
                <div class="tbl-contact">
                    <dl class="first">
                        <dt>
                            <em class="ninni">任意</em>
                            <span class="ttl text-center">Tên công ty/Tên đại lý</span>
                        </dt>
                        <dd>
                            <input type="text" name="company" id="company" class="changeF"
                                   value="<?php echo !empty($res['inputs']['company']) ? $res['inputs']['company'] : ''; ?>"
                                   placeholder="例）株式会社ステージアジアジャパン">
                        </dd>
                    </dl>
                    <dl>
                        <dt>
                            <em class="hissu">必須</em>
                            <span class="ttl text-center">Tên</span>
                        </dt>
                        <dd>
                            <input type="text" name="staff_name" id="staff_name" class="changeF"
                                   value="<?php echo !empty($res['inputs']['staff_name']) ? $res['inputs']['staff_name'] : ''; ?>"
                                   placeholder="お名前をご入力ください。">
                            <?php if (!empty($res['errors']['staff_name'])): ?>
                                <small class="error">※<?php echo $res['errors']['staff_name']; ?></small>
                            <?php endif; ?>
                        </dd>
                    </dl>
                    <dl>
                        <dt>
                            <em class="hissu">必須</em>
                            <span class="ttl text-center">Địa chỉ Email</span>
                        </dt>
                        <dd>
                            <input type="email" name="email" id="mail" class="changeF"
                                   value="<?php echo !empty($res['inputs']['email']) ? $res['inputs']['email'] : ''; ?>"
                                   placeholder="例）abc@sample.jp">
                            <?php if (!empty($res['errors']['email'])): ?>
                                <small class="error">※<?php echo $res['errors']['email']; ?></small>
                            <?php endif; ?>
                            <p class="mt15">確認のため、もう⼀度ご⼊⼒ください。</p>
                            <input type="email" name="c_email" id="c_email" class="changeF"
                                   value="<?php echo !empty($res['inputs']['c_email']) ? $res['inputs']['c_email'] : ''; ?>"
                                   placeholder="例）abc@sample.jp">
                            <?php if (!empty($res['errors']['c_email'])): ?>
                                <small class="error">※<?php echo $res['errors']['c_email']; ?></small>
                            <?php endif; ?>
                        </dd>
                    </dl>
                    <dl>
                        <dt>
                            <em class="ninni">任意</em>
                            <span class="ttl text-center">Điện thoại liên hệ</span>
                        </dt>
                        <dd>
                            <input type="tel" name="contact_tel" id="contact_tel" maxlength="13" class="changeF"
                                   value="<?php echo !empty($res['inputs']['contact_tel']) ? $res['inputs']['contact_tel'] : ''; ?>"
                                   placeholder="例）03-3263-0219">
                        </dd>
                    </dl>
                    <dl>
                        <dt class="last">
                            <em class="hissu">必須</em>
                            <span class="ttl text-center">Nội dung</span>
                        </dt>
                        <dd>
                            <textarea class="changeF" name="comment" id="comment" placeholder="例）sample">
                                <?php echo !empty($res['inputs']['comment']) ? $res['inputs']['comment'] : ''; ?></textarea>
                            <?php if (!empty($res['errors']['comment'])): ?>
                                <small class="error">※<?php echo $res['errors']['comment']; ?></small>
                            <?php endif; ?>
                        </dd>
                    </dl>
                </div>
                <div class="consent_txt">
                    <label>
                        <input type="checkbox" id="consent_check" name="consent_check">&nbsp;&nbsp;
                        Đồng ý chính sách bảo mật<br>
<!--                        --><?php //if (!empty($res['errors']['agreement'])): ?>
<!--                            <small class="error">※--><?php //echo $res['errors']['agreement']; ?><!--</small>-->
<!--                        --><?php //endif; ?>
                    </label>
                    <p>※Nếu bạn không đồng ý, bạn sẽ không thể gửi.</p>
                </div>
                <div class="form-btn-block">
                    <div class="btn">
                        <div class="form-btn">
                            <input type="submit" name="Submit" value="Tiến hành xác nhận nội dung" id="submit_btn"
                                   class="fnt-roboto">
                            <input type="hidden" name="action" value="confirm">
                        </div>
                    </div>
                    <!--Button back for comfirm-->
                    <!-- <p class="btn mt20"><a href="#back">QUAY LẠI TRANG TRƯỚC</a></p> -->
                </div>
            </form>
            <!-- end wp-form -->

            <div id="pp">
                <h3 class="ttlh2-post">Chính sách bảo mật</h3>
                <p class="cap">Trong hoạt động của trang web này, chúng tôi tôn trọng quyền riêng tư của khách hàng, xem
                    xét thông tin cá nhân, bảo vệ cẩn thận và cố gắng quản
                    lý thông tin đó một cách thích hợp.</p>
                <div class="inner mt25">
                    <?php echo $agent_policy_main_content; ?>

                    <h4>＜Liên hệ để được giải đáp thắc mắc về thông tin cá nhân＞</h4>
                    <p>◯◯◯◯<br><?php echo $agent_policy_contact; ?></p>

                    <h4 class="mt25">Về việc sử dụng Google Analytics</h4>
                    <p><?php echo $agent_policy_google_analytics; ?></p>


                    <h4 class="mt25">Chính sách bảo mật của Google</h4>
                    <?php echo $agent_policy_google; ?>
                </div>
            </div>
        </section>
    </div>
</div>

<!-- end main -->
<?php get_template_part("template-part/global/footer"); ?>
<?php get_footer(); ?>

