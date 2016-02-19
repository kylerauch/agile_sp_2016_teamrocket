$(document).on('ready page:load', function () {
  ;$(function() {
    //Click "back" to see back of card
    $('.flashCardFront').click(function(){
      $('.flashCardFront').css({
        display: 'none'
      }),
      $('.flashCardBack').css({
        display: 'flex'
      })
    })
    //Click "front" to see front of card
    $('.flashCardBack').click(function(){
      $('.flashCardFront').css({
        display: 'flex'
      }),
      $('.flashCardBack').css({
        display: 'none'
      })
    })
  })
});
