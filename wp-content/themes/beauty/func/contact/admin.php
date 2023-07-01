<?php
add_action('admin_menu', 'contact_menu_page');
function contact_menu_page()
{
    add_menu_page('連絡先の設定', '連絡先の設定', 'manage_options', 'contact_menu_page', 'add_contact_menu_page', 'dashicons-email-alt', 59);
//	add_submenu_page( 'contact_menu_page', '予約フォーム設定', '予約フォーム設定', 'manage_options', 'contact_reservation_menu_page', 'add_contact_reservation_menu_page');
    add_action('admin_init', 'register_contact_setting');
}

function register_contact_setting()
{
    $addSlugs = array('reservation');

    register_setting('contact-menu-group', 'stagegroup_contact_from_name');
    register_setting('contact-menu-group', 'stagegroup_contact_from_email');
    register_setting('contact-menu-group', 'stagegroup_contact_subject');
    register_setting('contact-menu-group', 'stagegroup_contact_body');
    register_setting('contact-menu-group', 'stagegroup_contact_bcc');

    register_setting('contact-menu-group', 'stagegroup_contact_notice_subject');
    register_setting('contact-menu-group', 'stagegroup_contact_notice_to');
    register_setting('contact-menu-group', 'stagegroup_contact_notice_body');

    foreach($addSlugs as $slug)
    {
        register_setting($slug .'-menu-group', 'stagegroup_' . $slug . '_from_name');
        register_setting($slug .'-menu-group', 'stagegroup_' . $slug . '_from_email');
        register_setting($slug .'-menu-group', 'stagegroup_' . $slug . '_subject');
        register_setting($slug .'-menu-group', 'stagegroup_' . $slug . '_body');
        register_setting($slug .'-menu-group', 'stagegroup_' . $slug . '_bcc');

        register_setting($slug .'-menu-group', 'stagegroup_' . $slug . '_notice_subject');
        register_setting($slug .'-menu-group', 'stagegroup_' . $slug . '_notice_to');
        register_setting($slug .'-menu-group', 'stagegroup_' . $slug . '_notice_body');
    }
}

function add_contact_menu_page()
{
    create_common_contact_menu_page('contact');
}
function add_contact_reservation_menu_page()
{
    create_common_contact_menu_page('reservation');
}

function create_common_contact_menu_page($slug)
{
    $params = settingFormParam($slug);
    $title = 'お問い合わせ設定';
    switch($slug)
    {
        case 'reservation':
            $title = '予約フォーム設定';
            break;
        case 'contacnt':
        default:
            break;
    }
    ?>
    <div class="wrap">
        <h1><?php echo $title; ?></h1>
        <form method="post" action="options.php" enctype="multipart/form-data" encoding="multipart/form-data">
            <?php settings_fields($slug . '-menu-group'); do_settings_sections($slug. '-menu-group'); ?>
            <h2 class="title">送信元設定</h2>
            <p>自動返信メール、管理者への通知メールの送信元メールアドレスを入力してください。<br />
                特に指定がない場合は、WordPressの管理者のメールアドレスとなります。<br />
                また、メールはWEBサーバーから送信されますので、ドメインの設定などによっては迷惑メールになる場合もあります。</p>
            <table class="form-table" role="presentation">
                <tbody>
                <tr>
                    <th scope="row"><label for="stagegroup_<?php echo $slug; ?>_from_name">送信元名称</label></th>
                    <td>
                        <input name="stagegroup_<?php echo $slug; ?>_from_name" type="text" id="stagegroup_<?php echo $slug; ?>_from_name" value="<?php echo get_option('stagegroup_'.$slug.'_from_name',get_option('blogname')); ?>" class="regular-text code">
                    </td>
                </tr>
                <tr>
                    <th scope="row"><label for="stagegroup_<?php echo $slug; ?>_from_email">送信元メールアドレス</label></th>
                    <td>
                        <input name="stagegroup_<?php echo $slug; ?>_from_email" type="text" id="stagegroup_<?php echo $slug; ?>_from_email" value="<?php echo get_option('stagegroup_'.$slug.'_from_email',get_option('admin_email')); ?>" class="regular-text ltr">
                    </td>
                </tr>
                </tbody>
            </table>
            <hr>
            <h2 class="title">自動返信メール設定</h2>
            <p>お問い合わせされた方への自動返信メールの設定です。</p>
            <table class="form-table" role="presentation">
                <tbody>
                <tr>
                    <th scope="row"><label for="stagegroup_<?php echo $slug; ?>_subject">メールタイトル</label></th>
                    <td>
                        <input name="stagegroup_<?php echo $slug; ?>_subject" type="text" id="stagegroup_<?php echo $slug; ?>_subject" value="<?php echo get_option('stagegroup_'.$slug.'_subject','お問い合わせありがとうございます。'); ?>" class="regular-text code">
                    </td>
                </tr>
                <tr>
                    <th scope="row"><label for="stagegroup_<?php echo $slug; ?>_body">本文テンプレート</label></th>
                    <td>
                        <textarea name="stagegroup_<?php echo $slug; ?>_body" rows="10" cols="50" id="stagegroup_<?php echo $slug; ?>_body" class="large-text code"><?php echo get_option('stagegroup_'.$slug.'_body','お問い合わせを承りました。'); ?></textarea>
                        <p>本文には以下の変数が利用できます。<br/ >
                            <?php foreach($params as $key => $val): echo '<strong>'.$val['name'] . '</strong>: {' . $key .'}　'; endforeach; ?><strong>問合せ日時</strong>: {sendedDatetime}</p>
                    </td>
                </tr>
                <tr>
                    <th scope="row"><label for="stagegroup_<?php echo $slug; ?>_bcc">BCC送信先</label></th>
                    <td>
                        <input name="stagegroup_<?php echo $slug; ?>_bcc" type="text" id="stagegroup_<?php echo $slug; ?>_bcc" value="<?php echo get_option('stagegroup_'.$slug.'_bcc',get_option('admin_email')); ?>" class="regular-text code">
                        <p>カンマ区切りで、複数のメールアドレスを設定できます。</p>
                    </td>
                </tr>
                </tbody>
            </table>
            <hr>
            <h2 class="title">通知メール設定</h2>
            <p>運営者への自動返信メールの設定です。</p>
            <table class="form-table" role="presentation">
                <tbody>
                <tr>
                    <th scope="row"><label for="stagegroup_<?php echo $slug; ?>_notice_subject">メールタイトル</label></th>
                    <td>
                        <input name="stagegroup_<?php echo $slug; ?>_notice_subject" type="text" id="stagegroup_<?php echo $slug; ?>_notice_subject" value="<?php echo get_option('stagegroup_'.$slug.'_notice_subject','お問い合わせ通知'); ?>" class="regular-text code">
                    </td>
                </tr>
                <tr>
                    <th scope="row"><label for="stagegroup_<?php echo $slug; ?>_notice_to">送信先</label></th>
                    <td>
                        <input name="stagegroup_<?php echo $slug; ?>_notice_to" type="text" id="stagegroup_<?php echo $slug; ?>_notice_to" value="<?php echo get_option('stagegroup_'.$slug.'_notice_to',get_option('admin_email')); ?>" class="regular-text code">
                        <p>カンマ区切りで、複数のメールアドレスを設定できます。</p>
                    </td>
                </tr>
                <tr>
                    <th scope="row"><label for="stagegroup_<?php echo $slug; ?>_notice_body">本文テンプレート</label></th>
                    <td>
                        <textarea name="stagegroup_<?php echo $slug; ?>_notice_body" rows="10" cols="50" id="stagegroup_<?php echo $slug; ?>_notice_body" class="large-text code"><?php echo get_option('stagegroup_'.$slug.'_notice_body','お問い合わせがあります。'); ?></textarea>
                        <p>本文には以下の変数が利用できます。<br/ >
                            <?php foreach($params as $key => $val): echo '<strong>'.$val['name'] . '</strong>: {' . $key .'}　'; endforeach; ?><strong>問合せ日時</strong>: {sendedDatetime}</p>
                    </td>
                </tr>
                </tbody>
            </table>
            <?php submit_button(); ?>
        </form>
    </div>
    <?php
}
?>