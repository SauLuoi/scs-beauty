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

$res = originalContactConfirm('agent-recruitment');
?>
<style>
    .sec-form{
        padding-top: 0;
    }
</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
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
            <section class="sec1-banner">
                <div class="title"><h2 class="fnt-notoserif">Bạn có muốn kinh doanh <br>thực phẩm chức năng,mỹ phẩm <br>chất lượng hàng Nhật không?</h2></div>
                <div class="inner">
                    <div class="item">
                        <figure><img src="<?php bloginfo('template_url') ?>/assets/vn/images/agent-recruitment/s1_img1.png" alt="Bạn có thể biết xu hướng của Nhật"></figure>
                        <h3>Bạn có thể biết xu hướng của Nhật</h3>
                    </div>
                    <div class="item">
                        <figure><img src="<?php bloginfo('template_url') ?>/assets/vn/images/agent-recruitment/s1_img2.png" alt="Bạn có thể bán những thương hiệu nổi tiếng là hàng nội địa của Nhật chưa có trên thị trường"></figure>
                        <h3>Bạn có thể bán những thương hiệu nổi tiếng là hàng nội địa của Nhật chưa có trên thị trường</h3>
                    </div>
                    <div class="item">
                        <figure><img src="<?php bloginfo('template_url') ?>/assets/vn/images/agent-recruitment/s1_img3.png" alt="Bạn có thể hợp tác, xúc tiến bán hàng với nhà sản xuất"></figure>
                        <h3>Bạn có thể hợp tác, xúc tiến bán hàng với nhà sản xuất</h3>
                    </div>
                </div>
            </section>
            <section id="sec-form" class="sec-form">
                <h2 class="ttlh2_2 fnt-notoserif text-center">Vui lòng liên hệ với chúng tôi để được hỗ trợ và tư vấn</h2>
                <h3 class="ttlh2-post">FORM LIÊN HỆ</h3>
                <p>Để gửi yêu cầu tư vấn sản phẩm/dịch vụ, vui lòng điền thông tin vào biểu mẫu dưới đây:
                    Hãy chắc chắn bạn đã đọc “<a href="#pp"><strong>Chính sách bảo mật</strong></a>” và nếu bạn đồng ý với nội dung này, vui lòng điền thông tin cần thiết vào biểu mẫu bên dưới và nhấn nút “Tiến hành xác nhận nội dung".</p>

                <!-- wp-form -->
                <div class="form-block">
                    <form method="post" action="?#sec-form" name="form" id="form">
                        <?php wp_nonce_field( 'aiwave_contact_form', '_aiwave_token' ); ?>
                        <div class="tbl-contact">
                            <dl class="first">
                                <dt>
                                    <em class="ninni">Tùy ý</em>
                                    <span class="ttl text-center">Tên công ty/Tên đại lý</span>
                                </dt>
                                <dd>
                                    <input type="text" name="company" id="company" value="<?php echo !empty($res['inputs']['company'])?$res['inputs']['company']:''; ?>" placeholder="Ví dụ ) Công ty cổ phần trách nhiệm...">
                                    <?php if(!empty($res['errors']['company'])): ?>
                                        <small class="error">※<?php echo $res['errors']['company']; ?></small>
                                    <?php endif; ?>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <em class="hissu">Bắt buộc</em>
                                    <span class="ttl text-center">Tên</span>
                                </dt>
                                <dd>
                                    <input type="text" class="changeF" name="fullname" id="fullname" value="<?php echo !empty($res['inputs']['fullname'])?$res['inputs']['fullname']:''; ?>" placeholder="Hãy nhập tên vào">
                                    <?php if(!empty($res['errors']['fullname'])): ?>
                                        <small class="error">※<?php echo $res['errors']['fullname']; ?></small>
                                    <?php endif; ?>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <em class="hissu">Bắt buộc</em>
                                    <span class="ttl text-center">Địa chỉ Email</span>
                                </dt>
                                <dd>
                                    <input type="email" class="changeF" name="email" id="email" value="<?php echo !empty($res['inputs']['email'])?$res['inputs']['email']:''; ?>" placeholder="Ví dụ ）abc@sample.jp">
                                    <?php if(!empty($res['errors']['email'])): ?>
                                        <small class="error">※<?php echo $res['errors']['email']; ?></small>
                                    <?php endif; ?>
                                    <p class="mt15">Cần xác nhận, nên hãy nhập lại 1 lần nữa</p>
                                    <input type="email" class="changeF" name="c_email" id="c_email" value="<?php echo !empty($res['inputs']['c_email'])?$res['inputs']['c_email']:''; ?>" placeholder="Ví dụ ）abc@sample.jp">
                                    <?php if(!empty($res['errors']['c_email'])): ?>
                                        <small class="error">※<?php echo $res['errors']['c_email']; ?></small>
                                    <?php endif; ?>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <em class="ninni">Tùy ý</em>
                                    <span class="ttl text-center">Điện thoại liên hệ</span>
                                </dt>
                                <dd>
                                    <input type="tel" name="tel" id="tel" maxlength="13" minlength="10" value="<?php echo !empty($res['inputs']['tel'])?$res['inputs']['tel']:''; ?>" placeholder="Ví dụ ）03-3263-0219">
                                    <?php if(!empty($res['errors']['tel'])): ?>
                                        <small class="error">※<?php echo $res['errors']['tel']; ?></small>
                                    <?php endif; ?>
                                </dd>
                            </dl>
                            <dl>
                                <dt class="last">
                                    <em class="hissu">Bắt buộc</em>
                                    <span class="ttl text-center">Nội dung</span>
                                </dt>
                                <dd>
                                    <textarea name="comment" class="changeF" id="comment" placeholder="Ví dụ ）sample"><?php echo !empty($res['inputs']['comment'])?$res['inputs']['comment']:''; ?></textarea>
                                    <?php if(!empty($res['errors']['comment'])): ?>
                                        <small class="error">※<?php echo $res['errors']['comment']; ?></small>
                                    <?php endif; ?>
                                </dd>
                            </dl>
                        </div>
                        <div class="consent_txt">
                            <?php if(!empty($res['errors']['agreement'])): ?>
                                <div class="error">※<?php echo $res['errors']['agreement']; ?></div>
                            <?php endif; ?>
                            <label><input type="checkbox" id="consent_check" name="agreement">&nbsp;&nbsp;Đồng ý chính sách bảo mật</a><br></label>
                            <p>※Nếu bạn không đồng ý, bạn sẽ không thể gửi.</p>
                        </div>
                        <div class="form-btn-block">
                            <div class="btn">
                                <div class="form-btn">
                                    <input type="submit" name="Submit" value="Tiến hành xác nhận nội dung" id="submit_btn" class="fnt-roboto">
                                    <input type="hidden" name="action" value="confirm">
                                </div>
                            </div>
                            <!--Button back for comfirm-->
                            <!-- <p class="btn mt20"><a href="#back">QUAY LẠI TRANG TRƯỚC</a></p> -->
                        </div>
                    </form>

                    <script>
                        // $(document).ready(function (){
                        //     const consent_chk = document.getElementById('consent_check');
                        //     const submit_btn = document.getElementById('submit_btn');
                        //     consent_chk.disabled = true;
                        //     submit_btn.disabled = true;
                        //     consent_chk.checked = false
                        //     $(".changeF").change(function () {
                        //         changeInput();
                        //     })
                        //     function changeInput(){
                        //         var fullname = $("input[name=fullname]").val();
                        //         var contact_email = $("input[name=email]").val();
                        //         var contact_email_c = $("input[name=c_email]").val();
                        //         var contact_address1 = $("textarea[name=comment]").val();
                        //
                        //
                        //         if(fullname && contact_email && contact_email_c && contact_address1){
                        //             consent_chk.disabled = false
                        //         }else{
                        //             consent_chk.disabled = true
                        //         }
                        //     }
                        //     changeInput();
                        //
                        //     consent_chk.addEventListener('change', function() {
                        //         if (this.checked) {
                        //             submit_btn.disabled = false;
                        //         } else {
                        //             submit_btn.disabled = true;
                        //         }
                        //     });
                        // })
                    </script>
                    <style>
                        form .form-btn input{
                            font-size: 22px;
                            padding: 8.6px 15px;
                            width: 398px;
                        }
                        @media screen and (max-width: 767px){
                            form .form-btn input {
                                font-size: 18px;
                                padding: 16px 0;
                                width: 288px;
                                text-align: center;
                            }
                        }

                    </style>
                </div>
                <!-- end wp-form -->
                <div id="pp">
                    <h3 class="ttlh2-post">Chính sách bảo mật</h3>
                    <p class="cap">Trong hoạt động của trang web này, chúng tôi tôn trọng quyền riêng tư của khách hàng, xem xét thông tin cá nhân, bảo vệ cẩn thận và cố gắng quản
                        lý thông tin đó một cách thích hợp.</p>
                    <div class="inner mt25">
                        <h4>Mục đích sử dụng thông tin cá nhân</h4>
                        <p> a) Liên hệ với bạn để cung cấp cho bạn các dịch vụ phù hợp với nhu cầu của bạn<br>b) Liên hệ với bạn để trả lời các câu hỏi của bạn</p>
                        <ul class="list mt25">
                            <li>Chúng tôi sẽ thu thập thông tin cá nhân cần thiết cho các mục đích trên bằng các phương thức công bằng và phù hợp.</li>
                            <li>Chúng tôi nhận được sự đồng ý của bạn khi thu thập những thông tin cá nhân cần được lưu ý.</li>
                            <li>Thông tin cá nhân nhận được sẽ không được sử dụng cho bất kỳ mục đích nào khác ngoài các mục đích trên mà không có sự đồng ý của cá nhân.</li>
                            <li>Chúng tôi sẽ thực hiện các biện pháp để ngăn chặn rò rỉ thông tin và giám sát không chỉ nhân viên mà cả các bên nhận ủy thác.</li>
                            <li>Bất kể đó là ở trong hay ngoài nước, chúng tôi sẽ không cung cấp thông tin cho bên thứ ba mà không có sự đồng ý của cá nhân, trừ khi được pháp luật cho phép.</li>
                            <li>Chúng tôi sẽ tiết lộ thông tin cá nhân của người đó khi có sự yêu cầu từ người đó.</li>
                            <li>Nếu thông tin cá nhân được tiết lộ khác với sự thật, chúng tôi sẽ chỉnh sửa hoặc xóa thông tin đó.</li>
                            <li>Chúng tôi sẽ phản hồi thích hợp và kịp thời các khiếu nại liên quan đến việc xử lý thông tin cá nhân.</li>
                            <li>Chính sách bảo vệ thông tin cá nhân này được áp dụng trong trang web này.</li>
                        </ul>
                        <h4>＜Liên hệ để được giải đáp thắc mắc về thông tin cá nhân＞</h4>
                        <p>Stage Asia LLC.<br/>
                            info@stageasia.jp</p>
                        <h4 class="mt25">Về việc sử dụng Google Analytics</h4>
                        <p>Để cung cấp dịch vụ tốt hơn và cải thiện khả năng sử dụng của trang web, trang web này sử dụng Google Analytics để thu thập và phân tích dữ liệu chẳng hạn như trạng thái sử dụng trang web. Vào thời điểm đó, Google có thể thông qua “cookie” để thu thập thông tin như địa chỉ IP của bạn, nhưng thông tin được thu thập bởi “cookie” không thể nhận dạng được cá nhân.<br>Các thông tin được thu thập cũng được quản lý bởi chính sách bảo mật của Google.<br>Bằng cách sử dụng trang web này, được cho rằng bạn đã đồng ý với việc xử lý dữ liệu do Google và trang web này thực hiện theo các phương pháp và mục đích trên</p>
                        <h4 class="mt25">Chính sách bảo mật của Google</h4>
                        <ul>
                            <li class="link-policy"><a href="https://policies.google.com/privacy?hl=ja" target="_blank">https://policies.google.com/privacy?hl=ja</a></li>
                            <li class="link-policy"><a href="https://policies.google.com/technologies/partner-sites?hl=ja" target="_blank">https://policies.google.com/technologies/partner-sites?hl=ja</a></li>
                        </ul>
                    </div>
                </div>
            </section>
        </div>
    </div>
</main>

<!-- end main -->
<?php get_template_part("template-part/global/footer"); ?>

<?php get_footer(); ?>

