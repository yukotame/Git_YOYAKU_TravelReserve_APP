<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- サイトのタイトル -->
    <title>石井花壇 | 温海温泉旅館【公式サイト】</title>
    <meta name=”description” content=”日本古来の素材と現代的表現を併せ持つ温泉旅館、石井花壇。伝統的「和」の息づく空間で、至極のひとときをお過ごしください”>
    <meta name=“robots” content=“noindex”>
    <!-- CSS読み込み -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/reset.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/headerfooter.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/responsive.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/flatpickr/dist/flatpickr.min.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <!-- ファビコン -->
    <link rel="icon" type="image/png" href="image/logo02.png">

  </head>
  <body>

    <div class="fv">


      <div class="big-bg-wrapper">
        <div id="img1" class="big-bg" style="background-image : url(image/mainbg01.jpg);" ></div>
        <div id="img2" class="big-bg" style="background-image: url(image/mainbg02.jpg)"></div>
        <div id="img3" class="big-bg" style="background-image: url(image/mainbg03.jpg)"></div>
      </div><!-- /.big-bg-wrapper -->

      <section id="modal" >

        <div id="close"><img src="image/close.png" alt="閉じる"></div>
        <div class="modal-wrapper">
          <h2 class="title">宿泊予約</h2>

          <div class="modal-text-wrapper">
            <form action="TravelRegisterServlet" method="post">
              <div class="mName">
                <label for="name">お名前</label>
                <input type="text" id="name" name="your-name"  placeholder=" 例：石井正悟">
              </div>
              <div class="mEmail">
                <label for="e-mail">メールアドレス</label>
                <input type="text" id="e-mail" name="your-e-mail" placeholder=" 例：Example@example.com">
              </div>
              <div class="mPlan">
                <label for="plan" >ご希望プラン（空いているプランのみ表示されます）</label>
                <select name="your-plan" id="plan">
                  <option value="">プランを選択してください</option>
                  <option value="p1">①【期間限定】海辺の四季旬彩、贅沢美味懐石プラン</option>
                  <option value="p2">②平日に優雅に楽しむ、特別宿泊プラン</option>
                  <option value="p3">③絶景貸切露天と個室会席を満喫できるファミリープラン</option>
                </select>
              </div>
              <div class="mDate">
                <label for="date" >日時選択</label>
                <!-- <input type="text" name="datepicker" id="js-datepicker"> -->
                <input type="text" name="datepicker" id="myCal" placeholder=" 日時を選択してください">
              </div>
              <input type="submit" class="button" value="送信" id="SUBMIT">
            </form>
          </div><!-- /.modal-textwrapper -->
        </div><!-- modal-wrapper -->
      </section>

      <div id="mask" class="hidden"></div>

      <h1>
        <div class="container">
          <ul class="fv-title">
            <li><span>頑 張 る 人 の</span></li>
            <li><span>頑 張 ら な い 時 間</span></li>
          </ul>
        </div><!-- /.container -->
      </h1>

      <header>
          <div class="page-header">
            <div class="header-left">
              <a href="index.html"><img src="image/top-header-logo.png" alt="花壇温海温泉旅館ロゴ"></a>
              <div class="pc-menu">
                <ul>
                  <li><a href="room.html">お部屋</a></li>
                  <li><a href="cook.html">お料理</a></li>
                  <li><a href="spa.html">温泉</a></li>
                </ul>
              </div><!-- pc-menu -->
            </div><!-- header-left -->
            <div id="open" class="header-right">
              <img src="image/calender.png" alt="カレンダー">
              <p>宿泊予約</p>
            </div><!-- header-right -->
            <div class="sp-menu">
              <span class="material-icons" id="sp-open">menu</span>
            </div><!-- sp-menu -->
          </div><!-- page-header -->
      </header>

      <div class="overlay">
        <span class="material-icons" id="sp-close">close</span>
        <nav>
          <ul>
            <li><a href="room.html">お部屋</a></li>
            <li><a href="cook.html">お料理</a></li>
            <li><a href="spa.html">温泉</a></li>
          </ul>
        </nav>
      </div>

      <div class="fv-contents">
        <div class="container" data-aos="fade-up">

          <h3>温海温泉の<br></h3>
          <h3>美しさに癒やされて</h3>
          <div class="fv-contents-all" >
            <ul class="fv-contents-first" >
              <li>東北の奥座敷である温海温泉郷<br></li>
              <li>開湯は約1300年前とされ、役小角が<br></li>
              <li>発見したと伝えられます<br></li>
            </ul>
            <ul class="fv-contents-second">
              <li>石井花壇は江戸より続く由緒ある旅館で<br></li>
              <li>クラシックな作りの中に大正ロマンあふれる<br></li>
              <li>内装を残しております<br></li>
            </ul>
            <ul class="fv-contents-third">
              <li>圧倒的癒やしの空間で<br></li>
              <li>頑張る現代人に<br></li>
              <li>頑張らない圧倒的な非日常をご提供します<br></li>
           </ul>
          </div><!-- /.fv-contents-all -->
          <p>石 井 花 壇</p>
        </div><!-- /.container -->
      </div><!-- /.fv-contents -->

      <div class="fv-contents2">
        <div class="container">
          <h3>温 海 温 泉 の <br></h3>
          <h3>美 し さ に 癒 や さ れ て</h3>
          <ul class="fv-contents-first2">
            <li>東 北 の 奥 座 敷 で あ る 温 海 温 泉 郷<br></li>
            <li>開 湯 は 約 1 3 0 0 年 前 と さ れ 、 役 小 角 が<br></li>
            <li>発 見 し た と 伝 え ら れ ま す<br></li>
          </ul>
          <ul class="fv-contents-second2">
            <li>石 井 花 壇 は 江 戸 よ り 続 く 由 緒 あ る 旅 館 で<br></li>
            <li>ク ラ シ ッ ク な 作 り の 中 に 大 正 ロ マ ン あ ふ れ る<br></li>
            <li>内 装 を 残 し て お り ま す<br></li>
          </ul>
          <ul class="fv-contents-third2">
            <li>圧 倒 的 癒 や し の 空 間 で<br></li>
            <li>頑 張 る 現 代 人 に<br></li>
            <li>頑 張 ら な い 圧 倒 的 な 非 日 常 を ご 提 供 し ま す<br></li>
          </ul>
          <p>石 井 花 壇</p>
        </div><!-- /.container -->
      </div><!-- /.fv-contents -->
    </div><!-- /.fv -->


    <main>
     <div class="main-contents">
       <section class="room">
           <div class="room-pic" data-aos="custom-anime">
           </div><!-- /.room-pic -->

           <div class="room-contents" data-aos="fade-up">
             <h3>喧騒から離れた空間<br> 心落ち着く至極のひととき</h3>
             <p>まるで時が止まったかのような、圧倒的な静寂のなかで、<br>
               ひたすらにゆったりと…。<br>
               最高級の「何もしない時間」をお過ごしください。</p>
             <div class="room-btn">
              <a href="room.html">お部屋について</a>
             </div><!-- /.room-btn -->
           </div><!-- /.room-contents -->
       </section><!-- /.room -->

       <section class="cook">
           <div class="cook-pic" data-aos="custom-anime">
           </div><!-- /.cook-pic -->
           <div class="cook-contents" data-aos="fade-up">
             <h3>出迎えるのは<br> 極上の温海料理</h3>
             <p>最も旬の食材を愉しむ、最高の贅沢を<br>
              最高級A5ランクの米沢牛と共に頂く。<br>
              あなたの人生史に残る「極上の感動」を<br>
              お約束します。</p>
             <div class="cook-btn">
              <a href="cook.html">料理について</a>
             </div><!-- /.cook-btn -->
           </div><!-- /.cook-contents -->
       </section><!-- /.cook -->

       <section class="spa">
           <div class="spa-pic" data-aos="custom-anime">
           </div><!-- /.spa-pic -->
           <div class="spa-contents" data-aos="fade-up">
             <h3>疲れ切った身体にやすらぎを<br> 温海の源泉に癒やされて</h3>
             <p>古くは弘法大師の病をも治療したと言われる熱海の泉質。<br>
               現代人の疲弊しきった身体を修復する最高級の湯治場として<br>
                ご活用ください。</p>
             <div class="spa-btn">
              <a href="spa.html">温泉について</a>
             </div><!-- /.spa-btn -->
           </div><!-- /.spa-contents -->
       </section><!-- /.spa -->


     </div><!-- /.main-contents -->
      <div class="plan">
        <div class="container">
          <div class="title">
            <div class="title-img"><img src="image/logo02.png" alt="タイトル"></imgsrc></div><!-- /.title-img -->
            <h3><span>おすすめご宿泊プラン</span></h3>
          </div><!-- title -->
          <div class="plan-contents">
            <div class="plan-content"  data-aos="fade-up" data-aos-delay="600">
                <a href="index.html"><img src="image/recommended01.jpg" alt="プラン写真１"></a>
                <p>朝食付きプラン、日本近海で取れた<br>
                  のどぐろを朝食として…</p>
                <p>最高級と称されるのどぐろ、正式には「アカ<br>
                   ムツ」と呼ばれる魚、味は独特の上品な味わ<br>
                  いで、焼いても煮ても美味</p>
            </div><!-- /.plan-content -->
            <div class="plan-content"  data-aos="fade-up" data-aos-delay="300">
                <a href="index.html"><img src="image/recommended02.jpg" alt="プラン写真２"></a>
                <p>【期間限定】熱海蟹をたっぷりと<br>
                   愉しむプラン。</p>
                <p>温海で水揚げされた蟹は「温海蟹」<br>
                   として知られ、嗜好品として愛されて<br>
                   きました。この宿泊プランでは存分に</p>
            </div><!-- /.plan-content -->
            <div class="plan-content"  data-aos="fade-up" data-aos-delay="0">
                <a href="index.html"><img src="image/recommended03.jpg" alt="プラン写真３"></a>
                <p>【平日限定】贅沢美味懐石プラン。<br>
                   海辺の四季旬彩プラン。</p>
                <p>熱海近海で取れた魚を鮮度そのままに舟盛りに<br>
                   してご提供。生きた味をお楽しみください。</p>
            </div><!-- /.plan-content -->
          </div><!-- plan-contents -->
        </div><!-- container -->
      </div><!-- /.plan -->


      <div class="notice">
        <div class="container">
          <div class="title">
            <div class="title-img"><img src="image/logo02.png" alt="タイトル"></imgsrc></div><!-- /.title-img -->
            <h3><span>お知らせ</span></h3>
          </div><!-- title -->
          <div class="notice-head">
            <ul>
              <li><a href="#tab1" class="active" >営業情報</a></li>
              <li><a href="#tab2">その他</a></li>
            </ul>
          </div><!-- /.notice-head -->

          <div class="contents-all" data-aos="fade-up">
              <div id="tab1"  class="notice-contents">
                <!-- ① -->
                <div class="notice-content">
                  <img src="image/news01.jpg" alt="お知らせ１">

                  <div class="text">
                    <p>2020.12.24</p>
                    <p>年末最後の営業日は27日になります。</p>
                  </div><!-- /.text -->
                </div><!-- /.notice-content -->
                <!-- ② -->
                <div class="notice-content">
                  <img src="image/news02.jpg" alt="お知らせ４">
                  <div class="text">
                  <p>2020.12.24</p>
                  <p>年末最後の営業日のお知らせ</p>
                </div><!-- /.text -->
                </div><!-- /.notice-content -->
                <!-- ③ -->
                <div class="notice-content">
                  <img src="image/news02.jpg" alt="お知らせ２">
                  <div class="text">
                  <p>2020.12.11</p>
                  <p>12.21は臨時休業とさせていただきますので、よろしく<br>
                     お願いします。</p>
                </div><!-- /.text -->
                </div><!-- /.notice-content -->

                <!-- ④ -->
                <div class="notice-content">
                  <img src="image/news01.jpg" alt="お知らせ５">
                  <div class="text">
                  <p>2020.12.24</p>
                  <p>年末最後の営業日のお知らせ</p>
                </div><!-- /.text -->
                </div><!-- /.notice-content -->

                <!-- ⑤ -->
                <div class="notice-content">
                  <img src="image/news01.jpg" alt="お知らせ３">
                  <div class="text">
                  <p>2020.12.01</p>
                  <p>和室の改装を行いますため、12.10はお休み<br>
                     させていただきます。</p>
                </div><!-- /.text -->
                </div><!-- /.notice-content -->

                <!-- ⑥ -->
                <div class="notice-content">
                  <img src="image/news02.jpg" alt="お知らせ６">
                  <div class="text">
                  <p>2020.12.24</p>
                  <p>年末最後の営業日のお知らせ</p>
                </div><!-- /.text -->
                </div><!-- /.notice-content -->
              </div><!-- notice-contents -->
              <div  id="tab2" class="notice-contents">
                <!-- ① -->
                <div class="notice-content">
                 <p>その他その他その他その他その他その他</p>
                </div><!-- /.notice-content -->
              </div><!-- notice-contents -->
          </div><!-- /.contents -->
        </div><!-- container -->
      </div><!-- /.notice -->


      <div class="access">
        <div class="container">
          <div class="title">
            <div class="title-img" data-aos="custom-anime"><img src="image/logo02.png" alt="タイトル"></imgsrc></div><!-- /.title-img -->
            <h3><span>アクセス</span></h3>
          </div><!-- title -->
          <div class="access-contents" data-aos="fade-up">
            <img src="image/acess.jpg" alt="アクセス">
            <div class="access-text">
              <div class="access-add">
                <p>住所</p>
                <p>〒000-0000<br>
                  山形県鶴岡市xxxxxxxxxx</p>
              </div><!-- /.access-add -->
              <div class="access-tel">
                <p>TEL/FAX</p>
                <p>000-0000-0000/00-0000-0000</p>
              </div><!-- /.access-tel -->
              <div class="access-day">
                <p>営業時間</p>
                <p>14:00-23:00</p>
              </div><!-- /.access-day -->
              <p>＊4名以上のご予約の場合は、最寄り駅の「鶴岡駅」より送迎が可能ですので、
                 ご連絡ください。</p>
                </div><!-- /.access-text -->
              </div><!-- access-contents -->
              <div class="access-map" data-aos="fade-up">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24933.858417389387!2d139.5810508551066!3d38.63203904517947!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5f8c6dbd6c03ae15%3A0x10bc5da99bc816ef!2z44CSOTk5LTcyMDUg5bGx5b2i55yM6ba05bKh5biC5rip5rW3!5e0!3m2!1sja!2sjp!4v1629070496975!5m2!1sja!2sjp" width="792" height="592" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
              </div><!-- /.access-map -->
        </div><!-- container -->
      </div><!-- /.access -->
    </main><!-- /main -->


  <footer>
    <div class="footer-contents">
      <ul>
        <li  data-aos="fade-up" data-aos-delay="0"><a href="room.html">お部屋</a></li>
        <li  data-aos="fade-up" data-aos-delay="200"><a href="cook.html">お料理</a></li>
        <li  data-aos="fade-up" data-aos-delay="400"><a href="spa.html">温泉</a></li>
      </ul>
      <div class="footer-logo" data-aos="fade-up"
      >
        <a href="index.html"><img src="image/footer-logo.png" alt="アクセス"></a>
      </div><!-- /.footer-logo -->

      <div class="info" data-aos="fade-up">
              <div class="info-add">
                <p>〒000-0000</p>
                <p>山形県鶴岡市xxxxxxxxxxx</p>
              </div><!-- /.info-add -->
              <div class="info-tel">
                <p>TEL.000-0000-0000</p>
                <p>FAX.00-0000-0000</p>
              </div><!-- /.info-tel -->

      </div><!-- /.info -->

    </div><!-- /.footer-contents -->
    <div class="copy-right">

      <p >Copyright © 石井花壇 All Rights Reserved.</p>
    </div><!-- /.copy-right -->
  </footer>



  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script src="https://unpkg.com/flatpickr"></script>
  <script src="js/jquery-2.1.4.min.js"></script>

  <script src="<%=request.getContextPath() %>/js/main.js"></script>
  <script src="<%=request.getContextPath() %>/js/anim_aos.js"></script>
  <script src="<%=request.getContextPath() %>/js/header.js"></script>
  <script src="<%=request.getContextPath() %>/js/modal.js"></script>
  <script src="<%=request.getContextPath() %>/js/tab.js"></script>
  <script src="<%=request.getContextPath() %>/js/input_check.js"></script>
    <script type="text/javascript" src="js/input-check.js"></script>
  </body>
</html>