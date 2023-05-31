<?php
require_once(get_template_directory() . '/load/func/contact/admin.php');
// 問合せのフォーム内容はここで設定
function settingFormParam($slug = 'contact')
{
    $formSettings = array();
    switch($slug)
    {
        case 'contact':
        default:
            $formSettings = array(
                'company' => array(
                    'name'     => '会社名・店舗名・屋号',
                    'required' => false,
                    'is_to_name' => 1,
                ),
                'staff_name' => array(
                    'name'     => 'お名前',
                    'required' => true,
                    'is_to_name' => 2,
                ),
//                'section_name' => array(
//                    'name'     => '部署名・役職名',
//                ),
                'contact_tel' => array(
                    'name'     => '電話番号',
                    'format' => 'tel',
                ),
                'email' => array(
                    'name'     => 'メールアドレス',
                    'required' => true,
                    'is_confirm' => 'c_email',
                    'format' => 'email',
                    'is_to_email' => true,
                ),
                'c_email' => array(
                    'name'     => '確認用メールアドレス',
                    'required' => true,
                    'format' => 'email',
                ),
//                'contact_zip' => array(
//                    'name'     => '郵便番号',
//                    'format' => 'zip',
////					'required' => true,
//                ),
//                'contact_address1' => array(
//                    'name'     => '都道府県',
//                    'required' => true,
//                ),
//                'job_category' => array(
//                    'name' => '業種',
//                    'required' => true,
//                ),
//                'contact_address2' => array(
//                    'name'     => '市区郡町村',
//                ),
//                'contact_trigger'    => array(
//                    'name' => 'お問い合わせのきっかけ',
//                    'required' => true,
//                ),
//                'site_url' => array(
//                    'name' => 'サイトURL',
//                ),
                'comment' => array(
                    'name'     => 'お問い合わせ内容(メッセージ)',
                    'required' => true,
                ),
//                'agreement' => array(
//                    'name' =>  'プライバシーポリシーへの同意',
//                    'required' => true,
//                ),
            );
            break;
    }

    return $formSettings;
}
// 画面フローはここで設定
function settingContactFlow($slug)
{
    $flows = array();
    switch($slug)
    {
        case 'contact':
        default:
            $flows['confirm'] = '/'.$slug.'-confirm/';
            $flows['thanks']  = '/';
            break;
    }
    return $flows;
}


function originalContactConfirm($slug = 'contact')
{

    if( !session_id() ){session_start();}
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        if(!isset($_POST['_aiwave_token']) || !wp_verify_nonce($_POST['_aiwave_token'], 'aiwave_contact_form'))
        {
            return array('inputs' => array(),'errors' => array('form' => 'トークンの取得に失敗しました。最初からやり直してください。'));
        }
        $_SESSION[$slug] = $_POST;

        $validationParams = settingFormParam($slug);
        $errors = originalContactValidation($_POST, $validationParams);

        if(count($errors) > 0)
        {
            return array(
                'inputs' => $_SESSION[$slug],
                'errors' => $errors
            );
        }

        $flows = settingContactFlow($slug);
        wp_redirect(home_url($flows['confirm']));
    }

    if(!empty($_SESSION[$slug]))
    {
        $errors = [];
        if(!empty($_SESSION['flash_sess']))
        {
            $errors['form'] = 'error';
            unset($_SESSION['flash_sess']);
        }
        return array(
            'inputs' => $_SESSION[$slug],
            'errors' => $errors,
        );
    } else {
        return array(
            'inputs' => array(),
            'errors' => array()
        );
    }
}

function originalContactValidation($values,$validationParams)
{
    $myContactErrors = array();
    foreach($validationParams as $key => $valid)
    {
        if(!isset($myContactErrors[$key]))
        {
            if(isset($valid['required']) && $valid['required'])
            {
                if(empty($values[$key]))
                {
                    if(is_array($values[$key]))
                    {
                        if(count($values[$key]) < 1)
                        {
                            $myContactErrors[$key] = $valid['name'] . 'の選択は必須です。';
                            continue;
                        }
                    } else {
                        $myContactErrors[$key] = $valid['name'] . 'は必須です。';
                        continue;
                    }
                } else {
                    $string = preg_replace('/　|\s+/', '', $values[$key]);
                    if(empty($string))
                    {
                        $myContactErrors[$key] = $valid['name'] . 'は必須です。';
                        continue;
                    }
                }
            }
            if(isset($valid['multi_required']) && $valid['multi_required'])
            {
                $checkFlg = true;
                foreach($valid['multi_required'] as $skey)
                {
                    if(!$values[$skey])
                    {
                        $myContactErrors[$key] = $valid['name'] . 'はいずれも必須です。';
                        continue;
                    }
                }
            }
            if(isset($valid['sometime_required']) && $valid['sometime_required'])
            {
                if($values[$valid['sometime_required']['target']] == $valid['sometime_required']['same'] && (!isset($values[$key]) || !$values[$key]))
                {
                    $myContactErrors[$key] = $valid['name'] . 'は' . $_POST[$valid['sometime_required']['target']] . 'の時、必須です。';
                    continue;
                }
            }

            if(isset($valid['format']) && $valid['format'])
            {
                switch($valid['format'])
                {
                    case 'kana':
                        if($values[$key] && !preg_match("/^[ァ-ヶー]+$/u", $values[$key]))
                        {
                            $myContactErrors[$key] = $valid['name'] . 'は全角カタカナのみご利用いただけます。';
                            //continue;
                        }
                        break;
                    case 'tel':
                        //^0\d{2,3}-\d{1,4}-\d{4}$
                        //[a-zA-Z0-9_-]+$
                        if($_POST[$key] && !preg_match("/[0-9\-]+$/", $_POST[$key]))
                        {
                            $myContactErrors[$key] = $valid['name'] . 'は電話・FAX番号として正しくありません。';
                            //continue;
                        }
                        break;
                    case 'email':
                        //
                        if($values[$key] && !preg_match("/^[a-zA-Z0-9-_\.]+@[a-zA-Z0-9-_\.]+$/", $values[$key]))
                        {
                            $myContactErrors[$key] = $valid['name'] . 'はメールアドレスとして正しくありません。';
                            //continue;
                        }
                        break;
                    case 'zip_only_number':
                        //
                        if($values[$key] && !preg_match("/^((\d{3}-\d{4})|(\d{7}))$/", $values[$key]))
                        {
                            $myContactErrors[$key] = $valid['name'] . 'は郵便番号として正しくありません。(半角数字と半角ハイフン「-」がご利用いただけます。)';
                            //continue;
                        }
                        break;
                }
            }
            if(isset($valid['is_confirm']) && $valid['is_confirm'])
            {
                // 一致フォームと一致していないならアウト
                if(!isset($values[$key]) || !isset($values[$valid['is_confirm']]) || $values[$key] !== $values[$valid['is_confirm']])
                {
                    $myContactErrors[$key] = $valid['name'] . 'が確認用フォームと一致していません。';
                    continue;
                }
            }
        }
    }
    return $myContactErrors;
}

function originalContactSend($slug = 'contact')
{
    if( !session_id() ){session_start();}
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        if(!isset($_POST['_aiwave_confirm_token']) || !wp_verify_nonce($_POST['_aiwave_confirm_token'], 'aiwave_contact_confirm_form'))
        {
            //return array('inputs' => array(),'errors' => array('form' => 'トークンの取得に失敗しました。最初からやり直してください。'));
            $_SESSION['flash_sess'] = true;
            wp_redirect( home_url($slug));
            exit;
        }

        $formSettins = settingFormParam($slug);
        // is_to_nameとis_to_emailを持つキーを探す
        $toEmail = NULL;
        $toName  = NULL;

        $toNames = array();
        foreach($formSettins as $formName => $set)
        {
            if(array_key_exists('is_to_name', $set))
            {
                $toNames[$set['is_to_name']] = $_POST[$formName];
            }
            if(array_key_exists('is_to_email', $set))
            {
                $toEmail = $_POST[$formName];
            }
        }
        if(count($toNames) > 0)
        {
            ksort($toNames);
            $toName = implode(' ', $toNames);
        }

        mb_language('Japanese');
        mb_internal_encoding('UTF-8');

        // {my_contact_"key"}を$valueに差し替える、但し、複数項目の場合は別。
        $searches  = array();
        $replaces = array();
        foreach($_POST as $key => $myv)
        {
            $searches[]  = '{'.$key.'}';

            $myv = is_array($myv)?implode(',', $myv):$myv;
            $myv = str_replace('{', '｛', $myv);
            $myv = str_replace('}', '｝', $myv);
            $replaces[] = $myv;
        }
        $searches[]  = '{sendedDatetime}';
        $replaces[] = date_i18n('Y年m月d日 H時i分');//date('Y年m月d日 H時i分');

        // FROM名(初期値ブログ名)
        $fromName = get_option('stagegroup_' . $slug .'_from_name', get_option('blogname'));
        // FROMメールアドレス(初期値管理者メールアドレス)
        $fromEmail = get_option('stagegroup_' . $slug .'_from_email', get_option('admin_email'));
        // ヘッダー構築
        $headers[] = 'From: ' . mb_encode_mimeheader($fromName) . '<' . $fromEmail . '>';
        if($toEmail)
        {
            if($toName)
            {
                $toString = mb_encode_mimeheader($toName) . "<" . $toEmail .">";
            } else {
                $toString = $toEmail;
            }
            // タイトル(初期値指定)
            $subject = get_option('stagegroup_' . $slug .'_subject', 'お問い合わせありがとうございます。' );
            $bccEmailTemp = get_option( 'stagegroup_' . $slug .'_bcc', get_option('admin_email'));
            // カンマ区切りで
            $bccs = explode(',', $bccEmailTemp);
            $myHeaders = $headers;
            foreach($bccs as $bcc)
            {
                $myHeaders[] = 'Bcc: ' . $bcc;
            }
            // メッセージ構築
            $message = originalCreateContactMessage($searches,$replaces,true, $slug);
            if(!mb_send_mail($toString, originalReplaceMailCommon($subject,$searches, $replaces), $message, implode("\r\n",$myHeaders)))
            {
                $_SESSION[$slug]['common'] = 'メールの送信に失敗しました。お手数ですが時間をおいてやりなおしてください。';
                return $_SESSION[$slug];
            }
        }
        // 管理者用

        $subject = get_option('stagegroup_' . $slug .'_notice_subject', 'お問い合わせ通知' );
        $ownerToString = get_option( 'stagegroup_' . $slug .'_notice_to', get_option('admin_email'));
        $message = originalCreateContactMessage($searches,$replaces, false,$slug);
        if(!mb_send_mail($ownerToString, originalReplaceMailCommon($subject,$searches, $replaces), $message, implode("\r\n",$headers)))
        {
            $_SESSION[$slug]['common'] = 'メールの送信に失敗しました。お手数ですが時間をおいてやりなおしてください。';
            return $_SESSION[$slug];
        }
        stagegroup_consul_send($message);
        unset($_SESSION[$slug]);
        $flows = settingContactFlow($slug);
        wp_redirect( home_url($flows['thanks']));
    } else {
        if(!empty($_SESSION[$slug])){
            return $_SESSION[$slug];
        } else {
            wp_redirect( home_url($slug));
        }
    }
}

function originalCreateContactMessage($searches, $replaces, $isUser = true,$slug)
{
    if($isUser)
    {
        $body = get_option( 'stagegroup_' . $slug .'_body','お問い合わせを承りました。');
    } else {
        $body = get_option( 'stagegroup_' . $slug .'_notice_body','お問い合わせがあります。');
    }
    return originalReplaceMailCommon($body, $searches, $replaces);
}

function originalReplaceMailCommon($body, $searches, $replaces)
{
    $body = str_replace($searches,$replaces, $body);
    //if判定を処理する
    /*
        $pattern='{if (.*?)}';
        preg_match($pattern, $contents, $match );
        $sample=$match[1];
    */
    // のこった{}を削る
    $body =preg_replace('/\{(.*?)\}/', "", $body);
    return $body;
}

function stagegroup_prefs_list()
{
    return array(
        '1' => '北海道',
        '2' => '青森県',
        '3' => '岩手県',
        '4' => '宮城県',
        '5' => '秋田県',
        '6' => '山形県',
        '7' => '福島県',
        '8' => '茨城県',
        '9' => '栃木県',
        '10' => '群馬県',
        '11' => '埼玉県',
        '12' => '千葉県',
        '13' => '東京都',
        '14' => '神奈川県',
        '15' => '新潟県',
        '16' => '富山県',
        '17' => '石川県',
        '18' => '福井県',
        '19' => '山梨県',
        '20' => '長野県',
        '21' => '岐阜県',
        '22' => '静岡県',
        '23' => '愛知県',
        '24' => '三重県',
        '25' => '滋賀県',
        '26' => '京都府',
        '27' => '大阪府',
        '28' => '兵庫県',
        '29' => '奈良県',
        '30' => '和歌山県',
        '31' => '鳥取県',
        '32' => '島根県',
        '33' => '岡山県',
        '34' => '広島県',
        '35' => '山口県',
        '36' => '徳島県',
        '37' => '香川県',
        '38' => '愛媛県',
        '39' => '高知県',
        '40' => '福岡県',
        '41' => '佐賀県',
        '42' => '長崎県',
        '43' => '熊本県',
        '44' => '大分県',
        '45' => '宮崎県',
        '46' => '鹿児島県',
        '47' => '沖縄県'
    );
}

function stagegroup_contact_trigger_list()
{
    return array(
        '新規ホームページ制作を検討中',
        '既存ホームページのリニューアルを検討中',
        '新規ショッピングサイト制作を検討中',
        '既存ショッピングサイトのリニューアルを検討中',
        '起業・独立に伴うホームページの立ち上げ',
        '新規事業、プロジェクトの立ち上げ',
        'その他'
    );
    /*
        return array(
            '女性向けのホームページを制作したい',
            '既存サイトの見直しをしたい',
            '起業・独立に伴うホームページの立ち上げ',
            '新規事業、プロジェクトの立ち上げ',
            'その他'
        );
    */
}

function stagegroup_consul_send($message,$convert_flg = false)
{
    $ch = curl_init();
    $post_url = 'https://consul.stagegroup.jp/common/form_db_api2.php';
    curl_setopt($ch, CURLOPT_URL, $post_url);
    curl_setopt($ch, CURLOPT_POST, 1);
    $post_data = stagegroup_consul_param_setup($_POST,$message);
    if($convert_flg)
    {
        mb_convert_variables('UTF-8', 'eucJP-win', $post_data);//consulサイトはUTF8なのでEUCからUTF8に変換しておく
    }
    curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post_data));
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    //タイムアウトは15秒設定
    curl_setopt($ch, CURLOPT_TIMEOUT, 15);
    $result_data = curl_exec($ch);
    curl_close($ch);
}

function stagegroup_consul_param_setup($val,$message)
{
    $form_query = array();
    $form_query['INQ_WAY'] = '2';	//初回問合せ方法
    $form_query['BAITAI'] = '12';	//問合せ媒体
    if(!empty($val['corp_name']))
    {
        $form_query['TITLE'] = $val['corp_name'];	//会社名
    }
    if(!empty($val['staff_name']))
    {
        $form_query['TANTOU'] = $val['staff_name'];	//担当者名
    }
    if(!empty($val['contact_tel']))
    {
        $form_query['TEL'] = $val['contact_tel'];	//TEL
    }
    if(!empty($val['contact_address1']))
    {
        $form_query['ADDRESS'] = $val['contact_address1'];
        if(!empty($val['contact_address2']))
        {
            $form_query['ADDRESS'] .= $val['contact_address2'];	//住所
        }
    }
    if(!empty($val['site_url']))
    {
        $form_query['EMAIL'] = $val['contact_email'];	//メールアドレス
    }
    /*
    if($people)
    {
        $form_query['STAFF'] = $people_lst[$people]['staff'];//従業員数
        $form_query['KEITAI'] = $people_lst[$people]['keitai'];//組織形態
    }
    */
    if(!empty($val['site_url']))
    {
        $form_query['KIZON_URL'] = $val['site_url'];	//既存URL
    }
    $form_query['CONTENT'] = "アイウェイヴフォームからの送信

{$message}
";
    return $form_query;
}

?>
