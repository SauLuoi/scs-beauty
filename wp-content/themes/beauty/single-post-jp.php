<?php get_header(); ?>
<?php
$tags = get_the_tags();
$cats = get_the_category();
$title = get_the_title();
$feature = get_the_post_thumbnail_url();
$content = get_the_content();
?>
<div class="main-content">
    <div class="content">
        <div class="content-cats">
            <?php
            foreach ($cats as $cat) {
                $cat_name = $cat->name;
                ?>
                <p class="cat"><?php echo $cat_name; ?></p>
            <?php } ?>
        </div>
        <h2 class="ttlh2_2"><?php echo $title; ?></h2>
        <?php
        if (!empty($tags)) {
            ?>
            <div class="tags">
                <?php foreach ($tags as $tag) {
                    $tag_name = $tag->name;
                    $tag_link = get_tag_link($tag->term_id);
                    ?>
                    <a href="<?php echo $tag_link; ?>"># <?php echo $tag_name; ?></a>
                <?php } ?>
            </div>
            <?php
        }
        ?>
        <figure class="cover">
            <img src="<?php echo $feature; ?>" alt="<?php echo $title; ?>">
        </figure>
        <div class="list-content-in-post">
            <h3>目次 [<span class="c_primary">非表示</span>]</h3>
            <a href="#セクションその1">セクションその1</a>
            <a href="#セクションその2">セクションその2</a>
            <a href="#セクションその3">セクションその3</a>
            <div class="sub">
                <a href="#セクション3のサブセクションその1">セクション3のサブセクションその1</a>
                <a href="#セクション3のサブセクションその2">セクション3のサブセクションその2</a>
            </div>
            <a href="#セクションその4">セクションその4</a>
        </div>
        <div class="post-content wysiwyg">
            <h2 id="セクションその1">見出しテキストパターンその1です</h2>
            <h3 id="セクションその2">見出しテキストパターンその2です</h3>
            <p>左寄せテキスト <a href="#">リンクテキストはこのように</a>。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。
            </p>
            <p class="text-center">中央寄せせテキスト<br>テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。
            </p>
            <p class="text-right">右寄せせテキスト<br>テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。テキストが⼊ります。
            </p>
            <h4 id="セクションその3">見出しテキストパターンその3です</h4>
            <h5>見出しテキストパターンその4です</h5>
            <p>htmlの&lt;ol&gt;要素の入力イメージ</p>
            <ol>
                <li>ミカン属（カンキツ属）</li>
                <li>キンカン属</li>
                <li>カラタチ属</li>
            </ol>
            <p>htmlの&lt;ul&gt;要素の入力イメージ</p>
            <ul>
                <li>ミカン属（カンキツ属）</li>
                <li>キンカン属</li>
                <li>カラタチ属</li>
            </ul>
            <p>htmlの&lt;strike&gt;要素の入力イメージ <strike>文字列に取り消し線（水平線）を引きます。</strike></p>
            <p>htmlの&lt;blockquote&gt;要素の入力イメージ</p>
            <blockquote>
                他社メーカーの美⽩化粧⽔を使っていましたが効果が⾒られないので替えようと思い購⼊しました。上品なバラの⾹りがして癒されます。少しとろみがあり乾燥肌にも良さそうです。医薬部外品なので美⽩効果も期待出来そうです。続けてみたいと思います。（購⼊者さん）
            </blockquote>
            <p>htmlの&lt;table&gt;要素の入力イメージ</p>
            <table>
                <thead>
                <tr>
                    <th>thead> ... > th</th>
                    <th>見出し項目名</th>
                    <th>見出し項目名</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th>tboty > ... > th</th>
                    <td>tboty > ... > td</td>
                    <td>通常セル内容</td>
                </tr>
                <tr>
                    <th>キーセル</th>
                    <td>通常セル内容</td>
                    <td>通常セル内容</td>
                </tr>
                <tr>
                    <th>キーセル</th>
                    <td>通常セル内容</td>
                    <td>通常セル内容</td>
                </tr>
                </tbody>
                <caption>table要素がcaption要素を含む場合</caption>
            </table>
            <h6>見出しテキストパターンその5です</h6>
            <div class="clearfix">
                <figure class="pull-left"><img src="<?php bloginfo("template_url"); ?>/assets/vn/images/item/img2.jpg"
                                               alt="見出しテキストパターンその5です">
                </figure>
                <div class="txt pull-right">
                    ←左寄せ画像のイメージ。画像が左にフロートしている場合です。横に入るこのテキストは、画像との間に標準サイズテキスト16pxの2em分、すなわち32pxの余白がある状態です。画像の右側にマージンのスタイルを設定します。
                </div>
            </div>
            <figure class="m-auto table">
                <img src="<?php bloginfo("template_url"); ?>/assets/vn/images/item/img3.jpg" alt="画像がキャプション要素を持つ場合">
                <figcaption>画像がキャプション要素を持つ場合</figcaption>
            </figure>
            <p>↑中央揃え画像のイメージ。text-aign:centerもしくはmarginのX軸を auto にスタイル設定したような状態。キャプションは他の配置でも入る可能性あり。</p>
            <div class="clearfix">
                <div class="pull-left">
                    →右寄せ画像のイメージ。画像が右にフロートしている場合です。横に入るこのテキストは、画像との間に標準サイズテキスト16pxの2em分、すなわち32pxの余白がある状態です。画像の左側にマージンのスタイルを設定します。
                </div>
                <figure class="pull-right"><img src="<?php bloginfo("template_url"); ?>/assets/vn/images/item/img4.jpg"
                                                alt="img4"></figure>
            </div>
            <p>YouTubeのiframe埋込のイメージ</p>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/OIdMkZyhx7E"
                    title="YouTube video player" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    allowfullscreen></iframe>
            <p>Google / Yahooなどの広告バナー挿入イメージ</p>
            <div class="ads clearfix">
                <figure class="pull-left"><img src="<?php bloginfo("template_url"); ?>/assets/vn/images/item/img7.jpg"
                                               alt="ads"></figure>
                <figure class="pull-right"><img src="<?php bloginfo("template_url"); ?>/assets/vn/images/item/img8.jpg"
                                                alt="ads"></figure>
            </div>
        </div>

        <!--        box-info-->
        <?php get_template_part("template-part/part/box-info"); ?>

        <!--        box location-->
        <?php get_template_part("template-part/part/box-location"); ?>

        <!--        box social share-->
        <?php get_template_part("template-part/part/box-social-share"); ?>

        <div class="box-btn-last">
            <?php previous_post_link('%link', __('Prev')); ?>

            <a href="<?php bloginfo('url'); ?>/item" class="back-list">Back to list</a>

            <?php next_post_link('%link', __('next')); ?>
            <!--            <a href="#next" class="next">Next</a>-->
        </div>

        <!--        box recomment-->
        <?php get_template_part("template-part/part/box-recommend"); ?>

    </div>
    <div class="side-bar">
        <div class="button-menu sp">&#8594;</div>
        <?php get_template_part("template-part/global/side-bar"); ?>
    </div>
</div>
<?php get_template_part("template-part/part/sec-instagram"); ?>

<?php get_footer(); ?>
