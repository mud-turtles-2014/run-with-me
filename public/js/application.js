$(document).ready(function() {
  $('.open-create-run').hide();

  $('.btn-upload').click(function(event) {
    event.preventDefault();

    // $(this.parentNode).toggleClass('open');
    // is line 7 necessary?
    $(this).siblings('.open-create-run').toggle();
  });

  // $.ajax ({
  //   type: "POST",
  //   url: "/user/:id/run/create",
  //   data: {time: time_text, location: location_text},
  //   dataType: "JSON"
  // });.done(function(response) {
  //     console.log(response)
  // });

});
