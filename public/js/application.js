$(document).ready(function() {
  $('#create-run').hide();

  $('#btn-upload').click(function(event) {
    event.preventDefault();
    $('#create-run').toggle();
  });


});
