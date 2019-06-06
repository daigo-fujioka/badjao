$(function(){
  $('.scroll-top-main').on('click', function(){
    $('html,body').animate({scrollTop:$('header').offset().top}, 500, 'swing');
  });
  $('.scroll-top-gallery').on('click',function(){
    $('html,body').animate({scrollTop:0},500,'swing');
  })
  $('.scroll-top').on('click',function(){
    $('html,body').animate({scrollTop:0},500,'swing');
  })
  $('.choice1').on('click', function(){
    $("html,body").animate({scrollTop:$('.tour-island').offset().top}, 800,'swing');
  })
  $('.choice2').on('click',function(){
    $('html,body').animate({scrollTop:$('.tour-uni').offset().top}, 1500,'swing');
  })
  
});