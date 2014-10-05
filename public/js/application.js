$(document).ready(function() {
  $('.open-create-run').hide();

  $('.btn-upload').click(function(event) {
    event.preventDefault();

    // $(this.parentNode).toggleClass('open');
    // is line 7 necessary?
    $(this).siblings('.open-create-run').toggle();
  });

  $('.create-run').submit(function(event){

      $.ajax ({
      type: "POST",
      url: "/user/:id/run/create",
      data: $(this).serialize(),
      dataType: "JSON"
    }).done(function(response) {
        console.log(response)
    });

  });


});
