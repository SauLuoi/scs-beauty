<?php
/*
Template Name: Agent fda complete
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

//$res = originalContactConfirm('agent-recruitment');
?>
<style>
    .btn a{
        font-size: 22px;
        height: 60px;
        padding: 0;
        line-height: 60px;
        width: 290px;
    }
</style>
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
                <h2 class="ttlh2-post">送信完了</h2>
                <!-- wp-form -->
                <div class="thanks">正常に送信されました<br>後⽇メールまたはお電話にて担当よりご連絡させていただきます。<br>また、ご返信に時間がかかる場合がございますのでご了承ください。</div>
                <p class="btn mt50"><a href="<?php echo bloginfo('url'); ?>/jp">HOMEへ戻る</a></p>
                <!-- end wp-form -->
            </section>
        </div>
    </div>
</main>

<!-- end main -->
<?php get_template_part("template-part/global/footer-ja"); ?>

<?php get_footer(); ?>

