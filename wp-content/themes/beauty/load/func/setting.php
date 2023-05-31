<?php
add_action('admin_menu', 'stagegroup_theme_menu_page');
function stagegroup_theme_menu_page()
{
    add_menu_page('サイト設定', 'サイト設定', 'manage_options', 'stagegroup_theme_menu_page', 'add_stagegrooup_theme_menu_page', 'dashicons-admin-generic', 59);
    add_action('admin_init', 'register_stagegroup_theme_setting');
}

function register_stagegroup_theme_setting()
{
    register_setting('stagegroup-theme-option-group', 'stagegroup_common_patients01');
    register_setting('stagegroup-theme-option-group', 'stagegroup_common_patients02');
    register_setting('stagegroup-theme-option-group', 'stagegroup_common_patients03');
}

function add_stagegrooup_theme_menu_page()
{
    ?>
    <div class="wrap">
        <h1>テーマ設定</h1>
        <p>このテーマを利用する際の、サイト設定が行えます。</p>
        <form method="post" action="options.php" enctype="multipart/form-data" encoding="multipart/form-data">
            <?php settings_fields('stagegroup-theme-option-group'); do_settings_sections('stagegroup-theme-option-group'); ?>

            <h2 class="title">患者数</h2>
            <p>半角数字で入力してください。</p>
            <table class="form-table" role="presentation">
                <tbody>
                <tr>
                    <th scope="row"><label for="stagegroup_common_patients01">公式ホームページ</label></th>
                    <td>
                        <input name="stagegroup_common_patients01" type="number" id="stagegroup_common_patients01" value="<?php echo get_option('stagegroup_common_patients01',0); ?>" class="regular-text" min="0" step="1"> 人
                    </td>
                </tr>
                <tr>
                    <th scope="row"><label for="stagegroup_common_patients02">スギ舌下免疫ページ</label></th>
                    <td>
                        <input name="stagegroup_common_patients02" type="number" id="stagegroup_common_patients02" value="<?php echo get_option('stagegroup_common_patients02',0); ?>" class="regular-text" min="0" step="1"> 人
                    </td>
                </tr>
                <tr>
                    <th scope="row"><label for="stagegroup_common_patients03">ダニ舌下免疫ページ</label></th>
                    <td>
                        <input name="stagegroup_common_patients03" type="number" id="stagegroup_common_patients03" value="<?php echo get_option('stagegroup_common_patients03',0); ?>" class="regular-text" min="0" step="1"> 人
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