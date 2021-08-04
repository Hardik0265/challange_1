$(document).on('turbolinks:load', function() {
  $.ajaxSetup({
    headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
  });
  $('.connect-github').on('click',function(){
    var token = $('#gToken').val();
    $.ajax({
      url: "/github/connectors",
      type: "post",
      data: {token: token},
      success: function(data) {},
      error: function(data) {}
    });
  });
});
