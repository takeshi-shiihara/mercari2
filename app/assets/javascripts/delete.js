$(function(){
  $("#delete-btn").on('click', function() {
    $('.modal').fadeIn();
    return false;
  });
  $(".modal-btn-cansel").on('click', function() {
    $('.modal').fadeOut();
    return false;
  });
});