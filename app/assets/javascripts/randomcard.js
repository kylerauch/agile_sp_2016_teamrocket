var randomCard;
var currentCard;
$(document).ready(function() {
  $('.drawRandomCard').click(function(){
    currentCard = randomCard;
    randomCard = Math.floor((Math.random() * $('.item').length) + 1);
    while (randomCard == currentCard) {
      randomCard = Math.floor((Math.random() * $('.item').length) + 1);
    }
    $('#myCarousel').carousel(randomCard).fadein(3000);
  })
});
