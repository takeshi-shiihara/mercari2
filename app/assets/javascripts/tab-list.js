
$(function() {
  $('li.tab').on('click', function() {
    $('li.tab').removeClass("action-btn");
    $(this).addClass('action-btn');
    $('ul.content').removeClass("non-list");
    $($(this).attr("href")).addClass("non-list");
  });
});


$(function() {
  $('li.tab-buy').on('click', function() {
    $('li.tab-buy').removeClass("action-btn");
    $(this).addClass('action-btn');
    $('ul.content-buy').removeClass("non-list");
    $($(this).attr("href")).addClass("non-list");
  });
});