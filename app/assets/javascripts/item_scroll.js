
$(function(){
  $(".item-box__main__photo__dots__dot").hover(function(){
    var this_index = ($(this).index())
    var hogeWidth = ( this_index * -300 ) + "px"
    $(".item-box__main__photo__upper__stage").animate({marginLeft:hogeWidth})
    });
  });
