$(document).on('ready page:load', function () {
  ;$(function() {
    //Click "back" to see back of card
    $('#flashCardFront').click(function(){
      $('#flashCardFront').css({
        display: 'none'
      }),
      $('#flashCardBack').css({
        display: 'table-cell'
      })
    })
    //Click "front" to see front of card
    $('#flashCardBack').click(function(){
      $('#flashCardFront').css({
        display: 'table-cell'
      }),
      $('#flashCardBack').css({
        display: 'none'
      })
    })
  })
});
