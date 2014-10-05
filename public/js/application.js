$(document).ready(function() {
  $('.open-create-run').hide();

  $('.btn-upload').click(function(event) {
    event.preventDefault();

    // $(this.parentNode).toggleClass('open');
    // is line 7 necessary?
    $(this).siblings('.open-create-run').toggle();
  });

  $.ajax {

  }

});
