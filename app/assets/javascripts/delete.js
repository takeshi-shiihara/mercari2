$(function(){
  $("#delete-btn").on('click', function() {
    $('.modal').fadeIn();
  });
  $(".modal-btn-cansel").on('click', function() {
    $('.modal').fadeOut();
  });
});