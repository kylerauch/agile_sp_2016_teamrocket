$(document).ready(function() {
  var cycleCards = null;
  
    $('.stopCyclingThroughCards').css({
      display: 'none'
    });
  
  $('.cycleThroughCards').click(function(){
    clearInterval(cycleCards);
    cycleCards = null;
    cycleCards = setInterval(function(){ 
      $('#myCarousel').carousel('next');
    }, 6000);
    $('.cycleThroughCards').css({
      color: '#0000FF'
    });
    $('.cycleThroughCardsFast').css({
      color: '#FF0000'
    });
    $('.cycleThroughCardsSlow').css({
      color: '#FF0000'
    });
    $('.stopCyclingThroughCards').css({
      display: 'inline'
    });
  });
  
  $('.cycleThroughCardsFast').click(function(){
    clearInterval(cycleCards);
    cycleCards = null;
    cycleCards = setInterval(function(){ 
      $('#myCarousel').carousel('next');
    }, 3000);
    $('.cycleThroughCardsFast').css({
      color: '#0000FF'
    });
    $('.cycleThroughCards').css({
      color: '#FF0000'
    });
    $('.cycleThroughCardsSlow').css({
      color: '#FF0000'
    });
    $('.stopCyclingThroughCards').css({
      display: 'inline'
    });
  });
  
  $('.cycleThroughCardsSlow').click(function(){
    clearInterval(cycleCards);
    cycleCards = null;
    cycleCards = setInterval(function(){ 
      $('#myCarousel').carousel('next');
    }, 10000);
    $('.cycleThroughCardsSlow').css({
      color: '#0000FF'
    });
    $('.cycleThroughCardsFast').css({
      color: '#FF0000'
    });
    $('.cycleThroughCards').css({
      color: '#FF0000'
    });
    $('.stopCyclingThroughCards').css({
      display: 'inline'
    });
  });
   
  $('.stopCyclingThroughCards').click(function(){
    clearInterval(cycleCards);
    cycleCards = null;
    $('.cycleThroughCardsSlow').css({
      color: '#FF0000'
    });
    $('.cycleThroughCardsFast').css({
      color: '#FF0000'
    });
    $('.cycleThroughCards').css({
      color: '#FF0000'
    });
    $('.stopCyclingThroughCards').css({
      display: 'none'
    });
  });
});
