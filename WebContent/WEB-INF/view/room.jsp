<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- サイトのタイトル -->
    <title>お部屋 - 石井花壇 | 温海温泉旅館【公式サイト】</title>
    <meta name=”description” content=”日本古来の素材と現代的表現を併せ持つ温泉旅館、石井花壇。伝統的「和」の息づく空間で、至極のひとときをお過ごしください”>
    <meta name=“robots” content=“noindex”>
    <!-- CSS読み込み -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/reset.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/headerfooter.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/room.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/room_responsive.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/flatpickr/dist/flatpickr.min.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <!-- ファビコン -->
    <link rel="icon" type="image/png" href="image/logo02.png">
  </head>

  <body>

    <div class="fv">

      <header>
          <div class="page-header">
            <div class="header-left">
              <a href="InputIndex"><img src="image/sub-header-logo.png" alt="花壇温海温泉旅館ロゴ"></a>
              <div class="pc-menu">
                <ul>
                  <li><a href="InputRoom">お部屋</a></li>
                  <li><a href="InputCook">お料理</a></li>
                  <li><a href="InputSpa">温泉</a></li>
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
            <li><a href="InputRoom">お部屋</a></li>
            <li><a href="InputCook">お料理</a></li>
            <li><a href="InputSpa">温泉</a></li>
          </ul>
        </nav>
      </div>

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

      <div class="big-bg-wrapper">
        <div id="img1" class="big-bg" style="background-image: url(image/oheya-header.png)" data-aos="custom-anime">
          <h1>
            <div class="container">
              <p>お部屋</p>
            </div><!-- /.container -->
          </h1>
        </div>
      </div><!-- /.big-bg-wrapper -->
    </div><!-- /.fv -->


    <main>
      <div class="main-contents">
        <div class="container">
          <!-- パンくずリスト -->
          <div class="breadcrumbs">

            <ul class="List" itemscope itemtype="http://schema.org/BreadcrumbList">
              <li class="List-Item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <a href="InputIndex" itemprop="item" class="List-Item-Link">
                  <span itemprop="name">ホーム</span>
                </a>
                <meta itemprop="position" content="1" />
              </li>
              <li class="List-Item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <a href="InputRoom" itemprop="item" class="List-Item-Link">
                  <span itemprop="name">お部屋</span>
                </a>
                <meta itemprop="position" content="2" />
              </li>
            </ul>
          </div><!-- /.breadcrumbs -->

          <div class="detail-room-description" data-aos="fade-up">
              <p>創業より受け継がれてきた石井花壇の和の造り<br>
                温海の雄大な絶景を堪能していただけるように設計された客室<br>
                ゆるやかに流れ行く時間に身を委ねて</p>
          </div><!-- /.detail-room-description -->

          <div class="detail-room-contents">
           <section class="room-first">
             <div class="room-pic first" data-aos="custom-anime">
               <img src="image/oheya01.jpg" >
             </div><!-- /.room-pic first -->
             <div class="room-contents" data-aos="custom-anime">
               <h3 data-aos="fade-up">温泉付き客室</h3>
               <h4 data-aos="fade-up">温海の源泉かけ流し露天風呂付き客室になります。<br>
                あなただけの上質な安らぎのひとときを。</h4>
                <p data-aos="fade-up">＊部屋数に限りがございます。<br>
                ＊洗い場はないため、お体を先に大浴場でお流しになって頂く必要があります。</p>
             </div><!-- /.room-contents first -->
           </section><!-- /.room-first -->

           <section class="room-second">
             <div class="room-pic second" data-aos="custom-anime">
               <img src="image/oheya02.jpg" >
             </div><!-- /.room-pic second -->
             <div class="room-contents" data-aos="custom-anime">
               <h3 data-aos="fade-up">庭園付き客室</h3>
               <h4 data-aos="fade-up">庭園付きの客室になります。<br>
                 お庭を見ながら、ほっとするひとときをお過ごしください。</h4>
                 <p data-aos="fade-up">＊お庭は複数のお客様と囲む形になります。<br>
                   ＊部屋数に限りがあります。<br>
                   ＊ご希望の方は「お抹茶/500円」をルームサービスさせていただきます。</p>
               </div><!-- /.room-contents second -->
           </section><!-- /.room-second -->

           <section class="room-third">
             <div class="room-pic third" data-aos="custom-anime">
               <img src="image/oheya03.jpg" >
             </div><!-- /.room-pic third -->
             <div class="room-contents" data-aos="custom-anime">
               <h3 data-aos="fade-up">一般客室</h3>
               <h4 data-aos="fade-up"> 最もベーシックな客室になります。伝統の中にモダンさを取り入れた<br>
                 内装となっており、とても過ごしやすくしていただけます。</h4>
                 <p data-aos="fade-up">＊全室お部屋より日本海を望むことができます。</p>
             </div><!-- /.room-contents third -->
             </section><!-- /.room-third -->
          </div><!-- /.detail-room-contents -->
        </div><!-- /.container -->
        </div><!-- /.main-contents -->

      <div class="main-contents2">
        <div class="container">
           <!-- パンくずリスト -->
           <div class="breadcrumbs">

            <ul class="List" itemscope itemtype="http://schema.org/BreadcrumbList">
              <li class="List-Item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <a href="InputIndex" itemprop="item" class="List-Item-Link">
                  <span itemprop="name">ホーム</span>
                </a>
                <meta itemprop="position" content="1" />
              </li>
              <li class="List-Item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <a href="InputRoom" itemprop="item" class="List-Item-Link">
                  <span itemprop="name">お部屋</span>
                </a>
                <meta itemprop="position" content="2" />
              </li>
            </ul>
          </div><!-- /.breadcrumbs -->
          <div class="detail-room-description" data-aos="fade-up">
              <p>創業より受け継がれてきた石井花壇の和の造り<br>
                温海の雄大な絶景を堪能していただけるように設計された客室<br>
                ゆるやかに流れ行く時間に身を委ねて</p>
          </div><!-- /.detail-room-description -->

          <div class="detail-room-contents2">
           <section class="room-first2">
             <div class="room-pic2 first" data-aos="custom-anime">
               <img src="image/oheya01.jpg">
             </div><!-- /.room-pic first -->
             <div class="room-contents2" data-aos="custom-anime">
                <h3 data-aos="fade-up">温泉付き客室</h3>
                <h4 data-aos="fade-up">温海の源泉かけ流し露天風呂付き客室になります。<br>
                  あなただけの上質な安らぎのひとときを。</h4>
                <p data-aos="fade-up">＊部屋数に限りがございます。<br>
                ＊洗い場はないため、お体を先に大浴場でお流しになって頂く必要があります。</p>
              </div><!-- /.room-contents2 -->
           </section><!-- /.room-first -->

           <section class="room-second2">
             <div class="room-pic2 second" data-aos="custom-anime">
               <img src="image/oheya02.jpg">
             </div><!-- /.room-pic second -->
             <div class="room-contents2" data-aos="custom-anime">
                <h3 data-aos="fade-up">庭園付き客室</h3>
                <h4 data-aos="fade-up">庭園付きの客室になります。<br>
                  お庭を見ながら、ほっとするひとときをお過ごしください。</h4>
                <p data-aos="fade-up"> ＊お庭は複数のお客様と囲む形になります。<br>
                  ＊部屋数に限りがあります。<br>
                  ＊ご希望の方は「お抹茶/500円」をルームサービスさせていただきます。</p>
              </div><!-- /.room-contents2 -->
           </section><!-- /.room-second -->

           <section class="room-third2">
             <div class="room-pic2 third" data-aos="custom-anime">
               <img src="image/oheya03.jpg">
             </div><!-- /.room-pic third -->
             <div class="room-contents2" data-aos="custom-anime">
                <h3 data-aos="fade-up">一般客室</h3>
                <h4 data-aos="fade-up">最もベーシックな客室になります。伝統の中にモダンさを取り入れた<br>
                  内装となっており、とても過ごしやすくしていただけます。</h4>
                <p data-aos="fade-up">＊全室お部屋より日本海を望むことができます。</p>
               </div><!-- /.room-contents2 -->
            </section><!-- /.room-third2 -->

          </div><!-- /.detail-room-contents2 -->
        </div><!-- /.container -->
        </div><!-- /.main-contents2 -->
    </main><!-- /main -->

    <footer>
      <div class="footer-contents">
        <ul>
          <li  data-aos="fade-up" data-aos-delay="0"><a href="InputRoom">お部屋</a></li>
          <li  data-aos="fade-up" data-aos-delay="200"><a href="InputCook">お料理</a></li>
          <li  data-aos="fade-up" data-aos-delay="400"><a href="InputSpa">温泉</a></li>
        </ul>
        <div class="footer-logo" data-aos="fade-up"
        >
          <a href="InputIndex"><img src="image/footer-logo.png" alt="アクセス"></a>
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

  <script src="js/main.js"></script>
  <script src="js/anim_aos.js"></script>
  <script src="js/header.js"></script>
  <script src="js/modal.js"></script>
  <script src="js/tab.js"></script>
  <script type="text/javascript" src="js/input-check.js"></script>


  </html>
