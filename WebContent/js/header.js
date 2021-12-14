$(function() {
  var navPos = $( '.page-header' ).offset().top; // グローバルメニューの位置
var navHeight = $( '.page-header' ).outerHeight(); // グローバルメニューの高さ
$( window ).on( 'scroll', function() {
	if ( $( this ).scrollTop() > navPos ) {
		$( 'body' ).css( 'padding-top', navHeight );
		$( '.page-header' ).addClass( 'm_fixed' );

	} else {
		$( 'body' ).css( 'padding-top', 0 );
		$( '.page-header' ).removeClass( 'm_fixed' );
	}
});
});

'use strict';
{
  const open = document.getElementById('sp-open');
  const overlay =document.querySelector('.overlay');
  const close = document.getElementById('sp-close');

  open.addEventListener('click',()=>{
    overlay.classList.add('show');
    open.classList.add('hide');
  })


  close.addEventListener('click',()=>{
    overlay.classList.remove('show');
    open.classList.remove('hide');
  })

}