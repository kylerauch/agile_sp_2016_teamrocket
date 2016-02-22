$(document).ready(function() {
  var cycleCards = null;
  
    $('.stopCyclingThroughCards').css({
      display: 'none'
    });
  
  $('.cycleThroughCards').click(function(){
    cycleCards = setInterval(function(){ 
      $('#myCarousel').carousel('next');
    }, 500);
    $('.cycleThroughCards').css({
      display: 'none'
    });
    $('.stopCyclingThroughCards').css({
      display: 'inline'
    });
  });
   
  $('.stopCyclingThroughCards').click(function(){
    clearInterval(cycleCards);
    cycleCards = null;
    $('.cycleThroughCards').css({
      display: 'inline'
    }),
    $('.stopCyclingThroughCards').css({
      display: 'none'
    });
  });
});
