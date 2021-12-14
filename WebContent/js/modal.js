'use strict';

{
  const open = document.getElementById('open');
  const close = document.getElementById('close');
  const modal = document.getElementById('modal');
  const mask = document.getElementById('mask');
  $('#mask').hide();
  $('#modal').hide();

  open.addEventListener('click' , ()=>{
    $('#mask').fadeIn(2000);
    $('#modal').fadeIn(2000);
    // modal.classList.remove('hidden');
    // mask.classList.remove('hidden');
  })

  close.addEventListener('click' , ()=>{
    // modal.classList.add('hidden');
    // mask.classList.add('hidden');
    $('#mask').fadeOut();
    $('#modal').fadeOut();
  })

  mask.addEventListener('click' , ()=>{
    // modal.classList.add('hidden');
    // mask.classList.add('hidden');
    close.click();
  })


 // カレンダー

  flatpickr('#myCal', {
    dateFormat : 'Y-m-d-D',
    minDate: "today" ,
    mode: "range",
  });


}