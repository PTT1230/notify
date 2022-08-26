// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

window.onload = function() {
  const spinner = document.getElementById('loading');
  // Add .loaded to .loading
  spinner.classList.add('loaded');
}

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