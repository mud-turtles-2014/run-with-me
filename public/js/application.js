$(document).ready(function() {
  $('.create-run').hide();

  $('.btn-upload').click(function(event) {
    event.preventDefault();
    // $('ul.create-run li:nth-child(n)').children().toggle();
    $(this.parentNode).toggleClass('open');
    $(this).siblings('.create-run').toggle();
  });


});
