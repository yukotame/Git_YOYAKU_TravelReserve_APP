'use strict'
{

  // AOS要素をふわっと
  AOS.init({
    // Effect settings:
  offset: 120,              //発火までの距離 (px)
  delay: 0,                 //発火までの秒数 (ms)
  duration: 2000,           //アニメーション時間 (ms)
  easing: 'ease-out',       //イージングタイプ
  once: false,              //一度のみの発火にする
  mirror: false,
  anchorPlacement: 'top-bottom',//発火位置を細かく設定
  });
}
