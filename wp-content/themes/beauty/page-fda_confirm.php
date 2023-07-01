<?php
/*
Template Name: Agent fda confirm
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

$inputs = originalContactSend1('fda');
?>
<style>
    form .submit_btn_confirm input ,form .form-btn-block .btn a{
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
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<header id="header">
    <?php get_template_part("template-part/global/header-ja"); ?>
    <div id="mainvisual">
        <div class="container">
            <h1>FDA認可取得依頼・ご相談</h1>
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
                <span>FDA認可取得依頼・ご相談</span>
            </li>
        </ul>
    </div>
</div>
<main id="main"><!-- main -->
    <div class="main-content full-page">
        <div class="content">
            <section class="sec-form pb50">
                <h2 class="ttlh2-post">⼊⼒内容確認</h2>
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
                                    <span class="ttl text-center">会社名・店舗名</span>
                                </dt>
                                <dd><?php echo !empty($inputs['company'])?$inputs['company']:''; ?></dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="ttl text-center">お名前</span>
                                </dt>
                                <dd><?php echo !empty($inputs['fullname'])?$inputs['fullname']:''; ?></dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="ttl text-center">フリガナ</span>
                                </dt>
                                <dd><?php echo !empty($inputs['furigana'])?$inputs['furigana']:''; ?></dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="ttl text-center">役職</span>
                                </dt>
                                <dd><?php echo !empty($inputs['director'])?$inputs['director']:''; ?></dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="ttl text-center">電話番号</span>
                                </dt>
                                <dd><?php echo !empty($inputs['tel'])?$inputs['tel']:''; ?></dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="ttl text-center">メールアドレス</span>
                                </dt>
                                <dd><?php echo !empty($inputs['email'])?$inputs['email']:''; ?></dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="ttl text-center">住所</span>
                                </dt>
                                <dd><?php echo !empty($inputs['state'])?$inputs['state']:''; ?>/<?php echo !empty($inputs['address'])?$inputs['address']:''; ?></dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="ttl text-center">商品リスト添付</span>
                                </dt>
                                <dd class="file-name"><?php echo !empty($inputs['product_file'])?$inputs['product_file']:''; ?></dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="ttl text-center">成分表添付</span>
                                </dt>
                                <dd class="file-name"><?php echo !empty($inputs['ingredients_file'])?$inputs['ingredients_file']:''; ?></dd>
                            </dl>
                            <dl>
                                <dt class="last">
                                    <span class="ttl text-center">お問い合わせ内容</span>
                                </dt>
                                <dd><?php echo !empty($inputs['comment'])?$inputs['comment']:''; ?></dd>
                            </dl>
                        </div>
                        <div class="form-btn-block">
                            <div class="btn">
                                <div class="form-btn submit_btn_confirm">
                                    <input type="submit" name="Submit" value="⼊⼒内容確認に進む" id="submit_btn">
                                    <input type="hidden" name="action" value="confirm">
                                </div>
                            </div>
                            <!--Button back for comfirm-->
                            <p class="btn mt20"><a href="<?php echo bloginfo('url'); ?>/jp/fda#form" id="backButton">前に戻り修正を行う</a></p>
                        </div>
                    </form>
                    <script>
                        // $("#backButton").click(function (){
                        //     history.forward();
                        // })
                    </script>
                </div>
                <!-- end wp-form -->
            </section>
        </div>
    </div>
</main>

<!-- end main -->
<?php get_template_part("template-part/global/footer-ja"); ?>

<?php get_footer(); ?>

