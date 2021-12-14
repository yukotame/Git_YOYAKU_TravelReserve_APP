$(function(){

  const tabs = ['#tab1', '#tab2'];
  $('.contents-all div[id = "tab1"]').show();
  $('.contents-all div[id = "tab2"]').hide();

  $('.notice-head a').click(function(){
    const tid = $(this).attr("href");

    for(let i = 0 ; i < 2 ; i++){
      $(tabs[i]).hide();
    }
    $(tid).show();

    $(".active").removeClass("active");
    $(this).addClass("active");
  
    return false;
  });
  
  });