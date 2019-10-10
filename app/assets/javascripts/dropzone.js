$(function() {
  //disable auto discover
  Dropzone.autoDiscover = false;

  $(".item__upload__box").dropzone({
    maxFilesize: 1,
    addRemoveLinks: true
  });
});