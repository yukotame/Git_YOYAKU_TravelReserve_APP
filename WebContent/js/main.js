
'use strict';

{

var count = 3;
var current = 1;
var next = 2;
var interval = 8000;
var timer;
var currentNum = 1;

let n1 = 0;  
let n2 = 0;
let n3 = 0;
const imgs = ["img1" , "img2" , "img3"];

var currentImg;
var nextImg;
var hideImg;


document.getElementById("img1").classList.add('start');
document.getElementById("img2").classList.add('next');
document.getElementById("img3").classList.add('hide');
timer = setInterval(slideTimer , interval);

function slideTimer(){
  imgs.forEach(img =>{
    if(document.getElementById(img).classList.contains('current')){
      document.getElementById(img).classList.remove('current');
    }else if(document.getElementById(img).classList.contains('next')){
        document.getElementById(img).classList.remove('next');
    }else if(document.getElementById(img).classList.contains('hide')){
      document.getElementById(img).classList.remove('hide');
    }else if(document.getElementById(img).classList.contains('start')){
      document.getElementById(img).classList.remove('start');
    }
  });

   currentImg = imgs[0];
   nextImg = imgs[1];
   hideImg = imgs[2];
  
  document.getElementById(currentImg).classList.add('current');
  document.getElementById(nextImg).classList.add('next');
  document.getElementById(hideImg).classList.add('hide'); 
    
  imgs.push(imgs.shift());
 
}




}