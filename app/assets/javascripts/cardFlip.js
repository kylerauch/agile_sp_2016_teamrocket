$(document).on('ready page:load', function () {
  ;$(function() {
    //Click "back" to see back of card
    $('#flipCardToBack').click(function(){
      $('#flashCardFront').css({
        display: 'none'
      }),
      $('#flashCardBack').css({
        display: 'block'
      })
    })
    //Click "front" to see front of card
    $('#flipCardToFront').click(function(){
      $('#flashCardFront').css({
        display: 'block'
      }),
      $('#flashCardBack').css({
        display: 'none'
      })
    })
  })
});