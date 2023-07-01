<?php
/*
Template Name: Agent fda
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

$res1 = originalContactConfirm2('fda');
?>

<style>
    form .form-btn input{
        font-size: 22px;
        padding: 8.6px 15px;
        width: 398px;
    }
</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="<?php bloginfo('template_url') ?>/assets/jp/js/ajaxzip3.js"></script>

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

<!-- end header -->
<main id="main"><!-- main -->
    <div class="main-content full-page">
        <div class="content">
            <figure class="cover">
                <img class="pc" src="<?php bloginfo('template_url') ?>/assets/jp/images/fda/s1_img.jpg" alt="FDA認可取得依頼・ご相談">
                <img class="sp" src="<?php bloginfo('template_url') ?>/assets/jp/images/fda/s1_img_sp.jpg" alt="FDA認可取得依頼・ご相談">
            </figure>
            <div class="post-content">
                <h2 class="ttlh2-post">FDA認可取得とは</h2>
                <p>FDAとはFood and Drug Administrationの略称で、⾷品などを取り締まる政府機関である、保健省医薬品管理局を指します。<br>ベトナムで化粧品や健康⾷品を販売するには、⼀般的にFDAに対して化粧品開示手続きを行う必要があります。<br>FDAから認証を取得することで、商品をベトナムに輸出することができます。<strong>この認証がなければ、ベトナムでの商品の販売が認められません。</strong></p>
                <h2 class="ttlh2-post">FDA認可を受けるためには</h2>
                <p><strong>FDA認可を取得するには、申請者がベトナムの現地法⼈でなければなりません。</strong><br>また、申請時には以下の書類を⽤意する必要があります。</p>
                <div class="bg_f5f5f5 box-txt01 border-1">
                    <ul>
                        <li>全成分表（英⽂INCI名）</li>
                        <li>輸出⽤化粧品製造届の公証</li>
                        <li>ベトナム⼤使館で認証を受けた書類</li>
                    </ul>
                </div>
                <p>通常、FDA認可を取得するためには、ベトナムに現地法⼈を設⽴するか、ベトナムの代行業者を探す必要があります。<br>多くの場合、信頼できるベトナムの業者を⾒つけることが難しいため、⽇本のコンサルティング会社に依頼することになるでしょう。</p>
                <p>また、FDAの認可を得るには、ベトナムの現地法人とFDA申請書類のやりとりを行う必要があります。<br>
必要な書類はメーカー様や製造工場様側で準備していただくことになりますが、その際、海外とのやりとりに苦労されるケースが多く見られます。</p>
                <p><strong>当社のFDA認可取得サービスは、⽇本国内での契約に基づき、メーカー様とステージアジアジャパンの間で⾏われます。</strong><br>ご契約後、ステージアジアジャパンから⼿順書をご提供いたしますので、安心してお任せください。<br>EPAに基づく特定原産地証明書の取得につきましては、別途ご相談ください。</p>
                <h2 class="ttlh2-post">ベトナムでの商品販売まで</h2>
                <div class="mind-map">
                    <div class="inner">
                        <div class="label">
                            <p class="c_5aa7f4"><strong>メーカー様</strong></p>
                            <p class="c_73c9b0"><strong>ステージアジアジャパン</strong></p>
                        </div>
                        <div class="map">
                            <div class="inner-map">
                                <div class="item item1 bg_eff7ff">
                                    <div class="month">
                                        <span>1ヵ月</span>
                                        <span>2ヵ月</span>
                                        <span>3ヵ月</span>
                                        <span>4ヵ月</span>
                                    </div>
                                    <h3 class="txt-vertical bg_3e87d0">申し込み・契約</h3>
                                    <p class="txt txt1 bg_99ccff">お申し込み・全成分表のご提示</p>
                                    <p class="txt txt2 bg_9fe0cd">事前チェック</p>
                                    <p class="txt txt3 bg_99ccff">ご契約・ご入金</p>
                                </div>
                                <div class="item item2 bg_edfffa">
                                    <div class="month">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                    </div>
                                    <h3 class="txt-vertical bg_40ab8c">FDA認可取得</h3>
                                    <p class="txt txt1 bg_99ccff">資料のご用意（ご契約後、手順書をお渡しいたします）</p>
                                    <p class="txt txt2 bg_9fe0cd">FDA申請</p>
                                </div>
                                <div class="item item3 bg_d5f8ff">
                                    <div class="month">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                    </div>
                                    <h3 class="txt-vertical bg_177589">EPA申請</h3>
                                    <p class="txt txt1 bg_99ccff">日本商工会議所への届出・Web登録</p>
                                    <p class="txt txt2 bg_99ccff">書類のご用意</p>
                                    <p class="txt txt3 bg_99ccff">特定原産地証明書 取得</p>
                                    <h3 class="last-ttl txt-vertical bg_0d5362">販売開始</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box-step">
                    <div>全成分表のご提⽰→当社にて事前チェック</div>
                    <div>ご契約・ご⼊⾦</div>
                    <div>FDA認可取得</div>
                    <div>貴社にて特定原産地証明書取得</div>
                    <div>販売開始</div>
                </div>
            </div>
            <section id="sec-form" class="sec-form">
                <h2 class="ttlh2_2 fnt-notoserif text-center">お問い合わせ・ご相談はお気軽にどうぞ</h2>
                <h3 class="ttlh2-post">ご依頼・ご相談フォーム</h3>
                <p>FDA認可取得依頼・ご相談・お問い合わせは、下記フォームからお受けいたします。<br>必ず「<a href="#pp"><strong>プライバシーポリシー</strong></a>」をご⼀読いただき、その内容に同意していただけましたら、下記フォームに必要事項をご⼊⼒の上、「⼊⼒内容確認に進む」ボタンを押してください。</p>

                <!-- wp-form -->
                <div class="form-block">
                    <form method="post" action="?#sec-form" name="form" id="form"  enctype="multipart/form-data">
                        <?php wp_nonce_field( 'aiwave_contact_form', '_aiwave_token1' ); ?>
                        <div class="tbl-contact">
                            <dl class="first">
                                <dt>
                                    <em class="ninni">任意</em>
                                    <span class="ttl text-center">会社名・店舗名</span>
                                </dt>
                                <dd>
                                    <input type="text" name="company" id="company" value="<?php echo !empty($res1['inputs']['company'])?$res1['inputs']['company']:''; ?>" placeholder="例）株式会社ステージアジアジャパン">
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <em class="hissu">必須</em>
                                    <span class="ttl text-center">お名前</span>
                                </dt>
                                <dd>
                                    <input type="text" name="fullname" class="changeF" id="fullname" value="<?php echo !empty($res1['inputs']['fullname'])?$res1['inputs']['fullname']:''; ?>" placeholder="例）⼭⽥ 太郎">
                                    <?php if(!empty($res1['errors']['fullname'])): ?>
                                        <small class="error">※<?php echo $res1['errors']['fullname']; ?></small>
                                    <?php endif; ?>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <em class="ninni">任意</em>
                                    <span class="ttl text-center">フリガナ</span>
                                </dt>
                                <dd>
                                    <input type="text" name="furigana" id="furigana" value="<?php echo !empty($res1['inputs']['furigana'])?$res1['inputs']['furigana']:''; ?>" placeholder="例）ヤマダ タロウ">
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <em class="ninni">任意</em>
                                    <span class="ttl text-center">役職</span>
                                </dt>
                                <dd>
                                    <input type="text" name="director" id="director" value="<?php echo !empty($res1['inputs']['director'])?$res1['inputs']['director']:''; ?>" placeholder="例）代表取締役">
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <em class="ninni">任意</em>
                                    <span class="ttl text-center">電話番号</span>
                                </dt>
                                <dd>
                                    <input type="tel" name="tel" id="tel" maxlength="13" minlength="10" value="<?php echo !empty($res1['inputs']['tel'])?$res1['inputs']['tel']:''; ?>" placeholder="例）03-3263-0219">
                                    <?php if(!empty($res1['errors']['tel'])): ?>
                                        <small class="error">※<?php echo $res1['errors']['tel']; ?></small>
                                    <?php endif; ?>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <em class="hissu">必須</em>
                                    <span class="ttl text-center">メールアドレス</span>
                                </dt>
                                <dd>
                                    <input type="email" name="email" id="mail" class="changeF" value="<?php echo !empty($res1['inputs']['email'])?$res1['inputs']['email']:''; ?>" placeholder="例）abc@sample.jp">
                                    <?php if(!empty($res1['errors']['email'])): ?>
                                        <small class="error">※<?php echo $res1['errors']['email']; ?></small>
                                    <?php endif; ?>
                                    <p class="mt15">確認のため、もう⼀度ご⼊⼒ください。</p>
                                    <input type="email" name="c_email" id="c_email" class="changeF" value="<?php echo !empty($res1['inputs']['c_email'])?$res1['inputs']['c_email']:''; ?>" placeholder="例）abc@sample.jp">
                                    <?php if(!empty($res1['errors']['c_email'])): ?>
                                        <small class="error">※<?php echo $res1['errors']['c_email']; ?></small>
                                    <?php endif; ?>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <em class="ninni">任意</em>
                                    <span class="ttl text-center">住所</span>
                                </dt>
                                <dd>
                                    <span class="p-country-name" style="display:none;">Japan</span>
                                    <div class="zip_code"><span>〒</span><input type="text" id="zip" name="zip" value="<?php echo !empty($res1['inputs']['zip'])?$res1['inputs']['zip']:''; ?>" class="size2 changeF p-postal-code" maxlength="8" placeholder="" onkeyup="AjaxZip3.zip2addr(this,'','state','address');"><span>&nbsp;例）1010061</span></div>
                                    <?php if(!empty($res1['errors']['zip'])): ?>
                                        <small class="error">※<?php echo $res1['errors']['zip']; ?></small>
                                    <?php endif; ?>
                                    <span>都道府県名</span>
                                    <div class="box-select">
                                        <select name="state" class="changeF">
                                            <option selected="" value="">都道府県を選択してください</option>
                                            <optgroup label="北海道・東北地方">
                                                <option value="北海道">北海道</option>
                                                <option value="青森県">青森県</option>
                                                <option value="岩手県">岩手県</option>
                                                <option value="秋田県">秋田県</option>
                                                <option value="宮城県">宮城県</option>
                                                <option value="山形県">山形県</option>
                                                <option value="福島県">福島県</option>
                                            </optgroup>
                                            <optgroup label="関東地方">
                                                <option value="東京都">東京都</option>
                                                <option value="神奈川県">神奈川県</option>
                                                <option value="埼玉県">埼玉県</option>
                                                <option value="千葉県">千葉県</option>
                                                <option value="茨城県">茨城県</option>
                                                <option value="栃木県">栃木県</option>
                                                <option value="群馬県">群馬県</option>
                                            </optgroup>
                                            <optgroup label="甲信越地方">
                                                <option value="山梨県">山梨県</option>
                                                <option value="長野県">長野県</option>
                                                <option value="新潟県">新潟県</option>
                                            </optgroup>
                                            <optgroup label="東海地方">
                                                <option value="静岡県">静岡県</option>
                                                <option value="愛知県">愛知県</option>
                                                <option value="岐阜県">岐阜県</option>
                                                <option value="三重県">三重県</option>
                                            </optgroup>
                                            <optgroup label="北陸地方">
                                                <option value="富山県">富山県</option>
                                                <option value="石川県">石川県</option>
                                                <option value="福井県">福井県</option>
                                            </optgroup>
                                            <optgroup label="近畿地方">
                                                <option value="大阪府">大阪府</option>
                                                <option value="京都府">京都府</option>
                                                <option value="奈良県">奈良県</option>
                                                <option value="滋賀県">滋賀県</option>
                                                <option value="和歌山県">和歌山県</option>
                                                <option value="兵庫県">兵庫県</option>
                                            </optgroup>
                                            <optgroup label="中国地方">
                                                <option value="岡山県">岡山県</option>
                                                <option value="広島県">広島県</option>
                                                <option value="鳥取県">鳥取県</option>
                                                <option value="島根県">島根県</option>
                                                <option value="山口県">山口県</option>
                                            </optgroup>
                                            <optgroup label="四国地方">
                                                <option value="香川県">香川県</option>
                                                <option value="徳島県">徳島県</option>
                                                <option value="愛媛県">愛媛県</option>
                                                <option value="高知県">高知県</option>
                                            </optgroup>
                                            <optgroup label="九州・沖縄地方">
                                                <option value="福岡県">福岡県</option>
                                                <option value="佐賀県">佐賀県</option>
                                                <option value="長崎県">長崎県</option>
                                                <option value="大分県">大分県</option>
                                                <option value="熊本県">熊本県</option>
                                                <option value="宮崎県">宮崎県</option>
                                                <option value="鹿児島県">鹿児島県</option>
                                                <option value="沖縄県">沖縄県</option>
                                            </optgroup>
                                        </select>
                                    </div>
                                    <?php if(!empty($res1['errors']['state'])): ?>
                                        <small class="error">※<?php echo $res1['errors']['state']; ?></small>
                                    <?php endif; ?>
                                    <p class="txt-add1 mt10">市区町村・番地・建物名など</p>
                                    <input type="text" id="address" class="changeF" name="address" value="<?php echo !empty($res1['inputs']['address'])?$res1['inputs']['address']:''; ?>" placeholder="">
                                    <?php if(!empty($res1['errors']['address'])): ?>
                                        <small class="error">※<?php echo $res1['errors']['address']; ?></small>
                                    <?php endif; ?>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <em class="ninni">任意</em>
                                    <span class="ttl text-center">商品リスト添付</span>
                                </dt>
                                <dd class="file-name">
                                    <label>
                                        <input class="file" maxlength="10485760" value="<?php echo !empty($res1['inputs']['product_file'])?$res1['inputs']['product_file']['name']:'選択されていません'; ?>" accept=".pdf, .jpg, .jpeg, .png, .xlsx" onchange="handleFileSelect(event)"  type="file" name="product_file">
                                        <span class="btn-file">ファイルを選択</span>
                                        <span class="btn-file-name"><?php echo !empty($res1['inputs']['product_file'])?$res1['inputs']['product_file']['name']:'選択されていません'; ?></span>
                                    </label>
                                    <p class="file-support mt10"><small>※対応ファイル（PDF、JPEG、PNG、Excel）<br>※ご送付いただきましたら、当社にて事前チェックをいたします。</small></p>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <em class="ninni">任意</em>
                                    <span class="ttl text-center">全成分表添付</span>
                                </dt>
                                <dd class="file-name">
                                    <label>
                                        <input class="file" maxlength="10485760" value="<?php echo !empty($res1['inputs']['ingredients_file'])?$res1['inputs']['ingredients_file']['name']:'選択されていません'; ?>" accept=".pdf, .jpg, .jpeg, .png, .xlsx" onchange="handleFileSelect(event)" type="file" name="ingredients_file">
                                        <span class="btn-file">ファイルを選択</span>
                                        <span class="btn-file-name"><?php echo !empty($res1['inputs']['ingredients_file'])?$res1['inputs']['ingredients_file']['name']:'選択されていません'; ?></span>
                                    </label>
                                    <p class="file-support mt10"><small>※対応ファイル（PDF、JPEG、PNG、Excel）<br>※ご送付いただきましたら、当社にて事前チェックをいたします。</small></p>
                                </dd>
                            </dl>
                            <dl>
                                <dt class="last">
                                    <em class="hissu">必須</em>
                                    <span class="ttl text-center">お問い合わせ内容</span>
                                </dt>
                                <dd>
                                    <textarea name="comment" class="changeF" id="comment" placeholder="お問い合わせ内容の詳細をご入力ください。"><?php echo !empty($res1['inputs']['comment'])?$res1['inputs']['comment']:''; ?></textarea>
                                    <?php if(!empty($res1['errors']['comment'])): ?>
                                        <small class="error">※<?php echo $res1['errors']['comment']; ?></small>
                                    <?php endif; ?>
                                </dd>
                            </dl>
                        </div>
                        <div class="consent_txt">
                            <?php if(!empty($res1['errors']['agreement'])): ?>
                                <div class="error">※<?php echo $res1['errors']['agreement']; ?></div>
                            <?php endif; ?>
                            <label><input type="checkbox" id="consent_check" name="agreement"><a href="#pp" class="c_primary">プライバシーポリシー</a>に同意する<br></label>
                            <p>※ご同意いただけない場合は送信ができません。</p>
                        </div>
                        <div class="form-btn-block">
                            <div class="btn">
                                <div class="form-btn">
                                    <input type="submit" name="Submit" value="⼊⼒内容確認に進む" id="submit_btn">
                                    <input type="hidden" name="action" value="confirm">
                                </div>
                            </div>
                            <!--Button back for comfirm-->
                            <!-- <p class="btn mt20"><a href="#back">前に戻り修正を行う</a></p> -->
                        </div>
                    </form>

                    <script>
                        // Hàm để lấy tên file từ đường dẫn file
                        function getFileName(filePath) {
                            var startIndex = (filePath.indexOf('\\') >= 0 ? filePath.lastIndexOf('\\') : filePath.lastIndexOf('/'));
                            var fileName = filePath.substring(startIndex);
                            if (fileName.indexOf('\\') === 0 || fileName.indexOf('/') === 0) {
                                fileName = fileName.substring(1);
                            }
                            return fileName;
                        }

                        // Hàm xử lý sự kiện khi chọn file
                        function handleFileSelect(event) {
                            var selectedFile = event.target.files[0];
                            var fileName = getFileName(selectedFile.name);
                            $(event.target).parent().find('.btn-file-name').html(fileName)
                        }

                        $(document).ready(function (){
                            const consent_chk = document.getElementById('consent_check');
                            const submit_btn = document.getElementById('submit_btn');
                            // consent_chk.disabled = true;
                            // submit_btn.disabled = true;
                            // consent_chk.checked = false
                            $(".changeF").change(function () {
                                changeInput();
                            })
                            function changeInput(){
                                var fullname = $("input[name=fullname]").val();
                                var contact_email = $("input[name=email]").val();
                                var contact_email_c = $("input[name=c_email]").val();
                                // var zip = $("input[name=zip]").val();
                                // var state = $("select[name=state]").val();
                                // var address = $("select[name=address]").val();
                                var contact_comment = $("textarea[name=comment]").val();
                                console.log(fullname && contact_email && contact_email_c && contact_comment);
                                // if(fullname && contact_email && contact_email_c && contact_comment){
                                //     consent_chk.disabled = false
                                // }else{
                                //     consent_chk.disabled = true
                                // }
                            }
                            changeInput();


                            consent_chk.addEventListener('change', function() {
                                // if (this.checked) {
                                //     submit_btn.disabled = false;
                                // } else {
                                //     submit_btn.disabled = true;
                                // }
                            });
                        })
                    </script>
                </div>
                <!-- end wp-form -->
                <div id="pp">
                    <h3 class="ttlh2-post">プライバシーポリシー</h3>
                    <p class="cap text-center">当サイトの運営に際し、お客様のプライバシーを尊重し個⼈情報に対して⼗分な配慮を⾏うとともに、⼤切に保護し、適正な管理を⾏うことに努めております。</p>
                    <div class="inner mt25">
                        <h4>個⼈情報の利⽤⽬的</h4>
                        <p>a）お客様のご要望に合わせたサービスをご提供するための各種ご連絡。<br>b）お問い合わせいただいたご質問への回答のご連絡。</p>
                        <ul class="list mt25">
                            <li>公正かつ適正な手段で、上記目的に必要となる個人情報を収集します。</li>
                            <li>要配慮個人情報を取得する際は、ご本人の同意を得るものとします。</li>
                            <li>取得した個人情報・要配慮個人情報は、ご本人の同意なしに目的以外では利用しません。</li>
                            <li>情報が漏洩しないよう対策を講じ、従業員だけでなく委託業者も監督します。</li>
                            <li>国内外を問わず、ご本人の同意を得ずに第三者に情報を提供しません。</li>
                            <li>ご本人からの求めに応じ情報を開示します。</li>
                            <li>公開された個人情報が事実と異なる場合、訂正や削除に応じます。</li>
                            <li>個人情報の取り扱いに関する苦情に対し、適切・迅速に対処します。</li>
                            <li>本プライバシーポリシーの適用範囲は本ホームページ内のみとします。</li>
                        </ul>
                        <h4>＜個⼈情報に関するお問い合わせ窓⼝＞</h4>
                        <p>株式会社ステージアジアジャパン<br>
                            info@stageasia.jp</p>
                        <h4 class="mt25">Googleアナリティクスの使用について</h4>
                        <p>当サイトでは、より良いサービスの提供、またユーザビリティの向上のため、Googleアナリティクスを使用し、当サイトの利用状況などのデータ収集及び解析を行っております。その際、「Cookie」を通じて、Googleがお客様のIPアドレスなどの情報を収集する場合がありますが、「Cookie」で収集される情報は個人を特定できるものではありません。<br>収集されたデータはGoogleのプライバシーポリシーにおいて管理されます。<br>なお、当サイトのご利用をもって、上述の方法・目的においてGoogle及び当サイトが行うデータ処理に関し、お客様にご承諾いただいたものとみなします。</p>
                        <h4 class="mt25">Googleのプライバシーポリシー</h4>
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
<?php get_template_part("template-part/global/footer-ja"); ?>

<?php get_footer(); ?>

