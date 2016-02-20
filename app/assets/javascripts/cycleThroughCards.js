$(document).ready(function() {
  var cycleCards = null;
  
  $('.cycleThroughCards').click(function(){
    cycleCards = setInterval(function(){ 
      $('#myCarousel').carousel('next');
    }, 500);
    $('.cycleThroughCards').css({
      display: 'none'
    });
    $('.stopCyclingThroughCards').css({
      display: 'block'
    });
  });
   
  $('.stopCyclingThroughCards').click(function(){
    clearInterval(cycleCards);
    cycleCards = null;
    $('.cycleThroughCards').css({
      display: 'block'
    }),
    $('.stopCyclingThroughCards').css({
      display: 'none'
    });
  });
});
