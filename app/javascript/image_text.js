$(function () {
  $('img').hover(function() {
    $(this).next('p').show();
  }, function(){
    $(this).next('p').hide();
  });
});