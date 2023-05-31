<?php
/*
Template Name: Agent recruitments Confirm
*/
?>
<?php get_header(); ?>
<?php
$inputs = originalContactSend('contact');
var_dump($inputs);
?>

<header id="header">
    <?php get_template_part("template-part/global/header"); ?>
    <?php get_template_part("template-part/part/main-visual-breadcrumb"); ?>

</header>

<main id="main"><!-- main -->
    <div class="main-content full-page">
        <div class="content">
            <section id="sec-form" class="sec-form pb50">
                <h3 class="ttlh2-post">Xác nhận nội dung đã nhập</h3>
                <!-- wp-form -->
                <div class="form-block">
                    <form method="post" action="./confirm.php#mf" name="form" onsubmit="return inputChk(this)">
                        <div class="tbl-contact">
                            <dl class="first">
                                <dt>
                                    <span class="ttl text-center">Tên công ty/Tên đại lý</span>
                                </dt>
                                <dd>Nhập đầu vào của bạn</dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="ttl text-center">Tên</span>
                                </dt>
                                <dd>Nhập đầu vào của bạn</dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="ttl text-center">Địa chỉ Email</span>
                                </dt>
                                <dd>Nhập đầu vào của bạn</dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="ttl text-center">Điện thoại liên hệ</span>
                                </dt>
                                <dd>Nhập đầu vào của bạn</dd>
                            </dl>
                            <dl>
                                <dt class="last">
                                    <span class="ttl text-center">Nội dung</span>
                                </dt>
                                <dd>Nhập đầu vào của bạnNhập đầu vào của bạnNhập đầu vào của bạnNhập đầu vào của bạn</dd>
                            </dl>
                        </div>
                        <div class="form-btn-block">
                            <!--Button back for comfirm-->
                            <p class="btn mb20"><a class="submit_btn_confirm" href="#back">TRỞ VỀ</a></p>
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
        </div>
    </div>
</main>

<!-- end main -->
<?php get_template_part("template-part/global/footer"); ?>
<?php get_footer(); ?>
