<?php
/**
 * Template Name: Page Contact
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

get_header();

$res = originalContactConfirm('contact');
?>
    <div id="mainvisual">
        <div class="inner">
            <h1>お問い合わせ</h1>
            <div id="breadcrumb">
                <div class="container">
                    <ul class="nav-breadcrumb">
                        <li>
                            <a href="/"><span>HOME</span></a>
                        </li>
                        <li>
                            <span>お問い合わせ</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- end mainvisual -->
    <!-- end header -->
    <main id="main"><!-- main -->
        <section id="sec-form" class="sec-form">
            <div class="container">
                <p>お問い合わせフォームをご利⽤の際は、必ず「<a href="#pp" class="c_primary">プライバシーポリシー</a>」をご⼀読ください。<br>内容に同意いただけましたら、下記フォームに必要事項をご⼊⼒の上、「⼊⼒内容確認画⾯へ」ボタンを押してください。<br>お送りいただきましたお問い合わせについては、後⽇折り返しご返答させていただきます。<br>なお、ご連絡内容によってはご返答が遅れる場合がございますので、予めご了承ください。</p>
                <!-- wp-form -->
                <div class="form-block">
                    <form method="post" action="?" name="form" id="form">
                        <?php wp_nonce_field( 'aiwave_contact_form', '_aiwave_token' ); ?>
                        <div class="tbl-contact">
                            <dl class="first">
                                <dt>
                                    <em class="hissu">必須</em>
                                    <span class="ttl text-center">お問い合わせ項⽬</span>
                                </dt>
                                <dd class="radio_issue">
                                    <label for="radio_issue-1">
                                        <input type="radio" checked name="radio_issue" id="radio_issue-1" <?php echo (!empty($res['inputs']['radio_issue']) && $res['inputs']['radio_issue'] == 'ベンディング事業について')?'checked':''; ?> value="ベンディング事業について" placeholder="ベンディング事業について">
                                        <span class="text">ベンディング事業について</span>
                                    </label>
                                    <label for="radio_issue-2">
                                        <input type="radio" name="radio_issue" id="radio_issue-2" value="フィールド事業について" <?php echo (!empty($res['inputs']['radio_issue']) && $res['inputs']['radio_issue'] == 'フィールド事業について')?'checked':''; ?> placeholder="フィールド事業について">
                                        <span class="text">フィールド事業について</span>
                                    </label>
                                    <br/>
                                    <?php if(!empty($res['errors']['radio_issue'])): ?>
                                        <div class="error"><?php echo $res['errors']['radio_issue']; ?></div>
                                    <?php endif; ?>
                                </dd>

                            </dl>
                            <dl>
                                <dt>
                                    <em class="hissu">必須</em>
                                    <span class="ttl text-center">会社名</span>
                                </dt>
                                <dd>
                                    <input class="changeF" type="text" name="company" id="company" value="<?php echo !empty($res['inputs']['company'])?$res['inputs']['company']:''; ?>" placeholder="例）株式会社ファインテック">
                                    <?php if(!empty($res['errors']['company'])): ?>
                                        <div class="error"><?php echo $res['errors']['company']; ?></div>
                                    <?php endif; ?>
                                </dd>

                            </dl>
                            <dl>
                                <dt>
                                    <em class="hissu">必須</em>
                                    <span class="ttl text-center">名前・フリガナ</span>
                                </dt>
                                <dd class="name">
                                    <input class="size2 mr20 changeF" type="text" name="firstname1" id="firstname1" value="<?php echo !empty($res['inputs']['firstname1'])?$res['inputs']['firstname1']:''; ?>" placeholder="姓">
                                    <input class="size2 changeF" type="text" name="lastname1" id="lastname1" value="<?php echo !empty($res['inputs']['lastname1'])?$res['inputs']['lastname1']:''; ?>" placeholder="名">
                                    <input class="size2 mt20 mr20 changeF" type="text" name="firstname2" id="firstname2" value="<?php echo !empty($res['inputs']['firstname2'])?$res['inputs']['firstname2']:''; ?>" placeholder="セイ">
                                    <input class="size2 mt20 changeF" type="text" name="lastname2" id="lastname2" value="<?php echo !empty($res['inputs']['lastname2'])?$res['inputs']['lastname2']:''; ?>" placeholder="メイ">
                                    <?php if(!empty($res['errors']['firstname2'])): ?>
                                        <div class="error"><?php echo $res['errors']['firstname2']; ?></div>
                                    <?php endif; ?>
                                </dd>

                            </dl>
                            <dl>
                                <dt>
                                    <em class="hissu">必須</em>
                                    <span class="ttl text-center">メールアドレス</span>
                                </dt>
                                <dd>
                                    <input type="email" class="changeF" name="email" id="mail"  value="<?php echo !empty($res['inputs']['email'])?$res['inputs']['email']:''; ?>" placeholder="例）info@fines-finetec.com">
                                    <?php if(!empty($res['errors']['mail'])): ?>
                                        <div class="error"><?php echo $res['errors']['mail']; ?></div>
                                    <?php endif; ?>
                                    <p class="mt15">確認のため、もう⼀度ご⼊⼒ください。</p>
                                    <input type="email" class="changeF" name="c_email" id="c_email" value="<?php echo !empty($res['inputs']['c_email'])?$res['inputs']['c_email']:''; ?>" placeholder="例）info@fines-finetec.com">
                                    <?php if(!empty($res['errors']['c_email'])): ?>
                                        <div class="error"><?php echo $res['errors']['c_email']; ?></div>
                                    <?php endif; ?>
                                </dd>

                            </dl>
                            <dl>
                                <dt>
                                    <em class="hissu">必須</em>
                                    <span class="ttl text-center">電話番号</span>
                                </dt>
                                <dd>
                                    <input type="tel" class="changeF" name="tel" value="<?php echo !empty($res['inputs']['tel'])?$res['inputs']['tel']:''; ?>" id="tel" maxlength="13" minlength="10" placeholder="0362703031">
                                    <?php if(!empty($res['errors']['tel'])): ?>
                                        <div class="error"><?php echo $res['errors']['tel']; ?></div>
                                    <?php endif; ?>
                                </dd>

                            </dl>
                            <dl>
                                <dt class="last">
                                    <em class="hissu">必須</em>
                                    <span class="ttl text-center">お問い合わせ詳細</span>
                                </dt>
                                <dd>
                                    <textarea name="comment" class="changeF" id="comment" placeholder="お問い合わせの詳細をご⼊⼒ください。"><?php echo !empty($res['inputs']['comment'])?$res['inputs']['comment']:''; ?></textarea>
                                    <?php if(!empty($res['errors']['comment'])): ?>
                                        <div class="error"><?php echo $res['errors']['comment']; ?></div>
                                    <?php endif; ?>
                                </dd>
                            </dl>
                        </div>
                        <div class="consent_txt">
                            <?php if(!empty($res['errors']['agreement'])): ?>
                                <div class="error"><?php echo $res['errors']['agreement']; ?></div>
                            <?php endif; ?>
                            <label><input type="checkbox" id="consent_check" name="consent_check" value="同意する">「<a href="#pp" class="c_primary">プライバシーポリシー</a>」の内容に同意する<br></label>
                            <p>※ご同意いただけない場合は送信ができません。</p>
                        </div>
                        <div class="form-btn-block">
                            <div class="btn">
                                <div class="form-btn">
                                    <input type="submit" name="Submit" value="⼊⼒内容確認へ" id="submit_btn">
                                    <input type="hidden" name="action" value="confirm">
                                </div>
                            </div>
                        </div>
                    </form>

                    <script>
                        $(document).ready(function (){
                            const consent_chk = document.getElementById('consent_check');
                            const submit_btn = document.getElementById('submit_btn');
                            consent_chk.disabled = true;
                            submit_btn.disabled = true;
                            $(".changeF").change(function () {
                                var corp_name = $("input[name=company]").val();
                                var firstname1 = $("input[name=firstname1]").val();
                                var firstname2 = $("input[name=firstname2]").val();
                                var lastname2 = $("input[name=lastname2]").val();
                                var lastname1 = $("input[name=lastname1]").val();
                                var contact_tel = $("input[name=tel]").val();
                                var contact_email = $("input[name=email]").val();
                                var contact_email_c = $("input[name=c_email]").val();
                                var contact_address1 = $("textarea[name=comment]").val();


                                if(corp_name && firstname1 && firstname2 && lastname2 && lastname1 && contact_tel && contact_email && contact_email_c && contact_address1){
                                    consent_chk.disabled = false
                                }else{
                                    consent_chk.disabled = true
                                }
                            })
                            consent_chk.addEventListener('change', function() {
                                if (this.checked) {
                                    submit_btn.disabled = false;
                                } else {
                                    submit_btn.disabled = true;
                                }
                            });
                        })
                    </script>
                </div>
                <!-- end wp-form -->
            </div>
        </section>
        <section id="pp" class="bg_dc01">
            <div class="container">
                <h3 class="ttlh2_2">プライバシーポリシー</h3>
                <p class="cap">当サイトの運営に際し、お客様のプライバシーを尊重し個⼈情報に対して⼗分な配慮を⾏うとともに、⼤切に保護し、適正な管理を⾏うことに努めております。</p>
                <div class="inner mt25">
                    <h4>個⼈情報の利⽤⽬的</h4>
                    <p>A) お客様のご要望に合わせたサービスをご提供するための各種ご連絡。<br>B) お問い合わせいただいたご質問への回答のご連絡。</p>
                    <ul class="list mt25">
                        <li>公正かつ適正な⼿段で、上記⽬的に必要となる個⼈情報を収集します。</li>
                        <li>要配慮個⼈情報を取得する際は、ご本⼈の同意を得るものとします。</li>
                        <li>取得した個⼈情報・要配慮個⼈情報は、ご本⼈の同意なしに⽬的以外では利⽤しません。</li>
                        <li>情報が漏洩しないよう対策を講じ、従業員だけでなく委託業者も監督します。</li>
                        <li>ご本⼈の同意を得ずに第三者に情報を提供しません。</li>
                        <li>ご本⼈からの求めに応じ情報を開⽰します。</li>
                        <li>公開された個⼈情報が事実と異なる場合、訂正や削除に応じます。</li>
                        <li>個⼈情報の取り扱いに関する苦情に対し、適切・迅速に対処します。</li>
                    </ul>
                    <h4 class="mt25">Googleアナリティクスの使⽤について</h4>
                    <p>当サイトでは、より良いサービスの提供、またユーザビリティの向上のため、Googleアナリティクスを使⽤し、当サイトの利⽤状況などのデータ収集および解析を⾏なっております。
                        その際、「Cookie」を通じて、Googleがお客様のIPアドレスなどの情報を収集する場合がありますが、「Cookie」で収集される情報は個⼈を特定できるものではありません。
                        収集されたデータはGoogleのプライバシーポリシーにおいて管理されます。
                        なお、当サイトのご利⽤をもって、上述の⽅法・⽬的においてGoogleおよび当サイトが⾏うデータ処理に関し、お客様にご承諾いただいたものとみなします。</p>
                    <h4 class="mt25">プライバシーポリシー</h4>
                    <ul>
                        <li class="link-policy"><a class="c_primary" href="https://policies.google.com/privacy?hl=ja" target="_blank">https://policies.google.com/privacy?hl=ja</a></li>
                        <li class="link-policy"><a class="c_primary" href="https://policies.google.com/technologies/partner-sites?hl=ja" target="_blank">https://policies.google.com/technologies/partner-sites?hl=ja</a></li>
                    </ul>
                    <h4 class="mt25">●個⼈情報に関するお問い合わせ窓⼝</h4>
                    <p>株式会社ファインテック<br><a href="tel:03-6270-3031">03-6270-3031</a></p>
                </div>
            </div>
        </section>
    </main>
<?php

get_footer();
