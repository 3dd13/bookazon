$(function() {
  $('.btn-delete-book').click(function() {
    if (!confirm("Are you sure")) {
      return false;
    }
    
    var deleteButton = $(this);
    
    // Asycronize call
    $.ajax({
      url: $(this).attr('href'),
      method: "Delete",
      dataType: "JSON"
    }).success(function(result){
      deleteButton.parents('tr').remove();
    }).error(function(data){
      alert("ERROR: " + data.status);
      console.error("ERROR: ", data);
    })

    return false;
  });
});