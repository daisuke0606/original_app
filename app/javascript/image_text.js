$(function () {
  $('img').hover(function() {
    $(this).next('.test').show();
  }, function(){
    $(this).next('.test').hide();
  });
});