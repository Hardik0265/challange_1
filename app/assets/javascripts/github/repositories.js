$(document).on('turbolinks:load', function() {
  $('.repo-list').on('click',function(){
    var repo_id = $(this).data('id');
    $.ajax({
      url: "/github/repositories/"+repo_id,
      type: "get",
      success: function(data) {
        $('.repo-details').html(data.html);
      },
      error: function(data) {}
    });
  });
});
