
// <!doctype html>
// <html>
// <head>
// <meta charset="UTF-8">
// <title></title>

// <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
// <script>
// $(function(){
//    // #で始まるアンカーをクリックした場合に処理
//    $('a[href^=#]').click(function() {
//       // スクロールの速度
//       var speed = 400; // ミリ秒
//       // アンカーの値取得
//       var href= $(this).attr("href");
//       // 移動先を取得
//       var target = $(href == "#" || href == "" ? 'html' : href);
//       // 移動先を数値で取得
//       var position = target.offset().top;
//       // スムーススクロール
//       $('body,html').animate({scrollTop:position}, speed, 'swing');
//       return false;
//    });
// });
// </script>

// <style>
// div{width:auto; height:500px;}
// a.button{font-size:12px;}
// </style>

// </head>

// <body>

// <h3><a href="http://kyasper.com/?p=1219">元のページに戻る</a></h3>

// <h2 id="index">目次</h2>
// <ul>
// 	<li><a href="#sec1">section1</a></li>
// 	<li><a href="#sec2">section2</a></li>
// 	<li><a href="#sec3">section3</a></li>
// 	<li><a href="#sec4">section4</a></li>
// 	<li><a href="#sec5">section5</a></li>
// 	<li><a href="sec#6">section6</a></li>
// </ul>

// <div id="sec1">
// 	<h2>section1</h2>
// 	<a class="button" href="#index">▲ 目次にもどる</a>
// </div>

// <div id="sec2">
// 	<h2>section2</h2>
// 	<a class="button" href="#index">▲ 目次にもどる</a>
// </div>

// <div id="sec3">
// 	<h2>section3</h2>
// 	<a class="button" href="#index">▲ 目次にもどる</a>
// </div>

// <div id="sec4">
// 	<h2>section4</h2>
// 	<a class="button" href="#index">▲ 目次にもどる</a>
// </div>

// <div id="sec5">
// 	<h2>section5</h2>
// 	<a class="button" href="#index">▲ 目次にもどる</a>
// </div>

// <div id="sec6">
// 	<h2>section6</h2>
// 	<a class="button" href="#index">▲ 目次にもどる</a>
// </div>

// </body>
// </html>