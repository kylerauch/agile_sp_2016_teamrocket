$(document).on('ready page:load', function () {
  ;$(function() {
    //Click "back" to see back of card
    $('#flashCardFront').click(function(){
      $('#flashCardFront').css({
        display: 'none'
      }),
      $('#flashCardBack').css({
        display: 'block'
      })
    })
    //Click "front" to see front of card
    $('#flashCardBack').click(function(){
      $('#flashCardFront').css({
        display: 'block'
      }),
      $('#flashCardBack').css({
        display: 'none'
      })
    })
  })
});
