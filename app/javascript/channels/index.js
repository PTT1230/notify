// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.
$(document).ready(function(){
  const spinner = $("div").filter("#loading")
  $(spinner).addClass("loaded")
});

$('#animation').css('visibility','hidden');
$(window).scroll(function(){
 var windowHeight = $(window).height(),
     topWindow = $(window).scrollTop();
 $('#animation').each(function(){
  var targetPosition = $(this).offset().top;
  if(topWindow > targetPosition - windowHeight + 100){
   $(this).addClass("fadeInDown");
  }
 });
});

//メニューバー非表示/表示
$(function () {
  $('.sp_button').on('click', () => {
      $('.user_nav').slideToggle();   
  });
});
