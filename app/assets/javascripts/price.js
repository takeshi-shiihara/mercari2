$(function() {
 $('#calculation').keyup(function(e) {
  e.preventDefault();
    var num = $(this).val();
    $('.comission__right').text("¥"+num/10);
    $('.profit__right').text("¥"+num*0.9);
  });
});


