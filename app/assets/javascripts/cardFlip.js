$(document).ready(function () {
  var randomCard;
  var currentCard;
  var cycleCards;
  
  //Click "back" to see back of card
  $('.flashCardFront').click(function(){
    $('.flashCardFront').css({
      display: 'none'
    }),
    $('.flashCardBack').css({
      display: 'flex'
    });
  });
  
  //Click "front" to see front of card
  $('.flashCardBack').click(function(){
    $('.flashCardFront').css({
      display: 'flex'
    }),
    $('.flashCardBack').css({
      display: 'none'
    });
  });
  
  //draw a random card from the deck
  // need to fix this
  /*$('.drawRandomCard').click(function(){
    currentCard = randomCard;
    randomCard = Math.floor((Math.random() * $('.item').length) + 1);
    while (randomCard == currentCard) {
      randomCard = Math.floor((Math.random() * $('.item').length) + 1);
    }
    $('#myCarousel').carousel(randomCard).fadeIn(3000);
  });
  */
  
  //cycle through cards
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
      color: '#C60000'
    });
    $('.cycleThroughCardsSlow').css({
      color: '#C60000'
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
      color: '#C60000'
    });
    $('.cycleThroughCardsSlow').css({
      color: '#C60000'
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
      color: '#C60000'
    });
    $('.cycleThroughCards').css({
      color: '#C60000'
    });
    $('.stopCyclingThroughCards').css({
      display: 'inline'
    });
  });
   
  $('.stopCyclingThroughCards').click(function(){
    clearInterval(cycleCards);
    cycleCards = null;
    $('.cycleThroughCardsSlow').css({
      color: '#C60000'
    });
    $('.cycleThroughCardsFast').css({
      color: '#C60000'
    });
    $('.cycleThroughCards').css({
      color: '#C60000'
    });
    $('.stopCyclingThroughCards').css({
      display: 'none'
    });
  });
  
  $('.carousel-inner').hammer().on('swipeleft', function(){
		$(this).carousel('next'); 
	});
	
	$('.carousel-inner').hammer().on('swiperight', function(){
		$(this).carousel('prev'); 
  });
});
