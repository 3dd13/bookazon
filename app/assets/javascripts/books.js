// dom ready shortcut
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
    });

    return false;
  });
  
  $('.form-comment').submit(function(){
    var commentForm = $(this);
    var btnSubmit = $('input[type=submit]', commentForm);
    var textArea = $('#comment_content', commentForm);
    var valuesToSubmit = $(this).serialize();
    
    btnSubmit.prop('disabled', true);
    btnSubmit.val('Submitting...');
    
    // add new comment in client first
    var commentRow = '<tr>';
    commentRow += '<td>' + textArea.val() + '</td>';
    commentRow += '<td>' + 'YOU' + '</td>';
    commentRow += '</tr>';
    $('#table_comments > tbody:last').append(commentRow);
    
    $.ajax({
      url: commentForm.attr('action'),
      method: "Post",
      data: valuesToSubmit,
      dataType: "JSON"
    }).success(function(result){
      console.log("Submit message success!");
      btnSubmit.prop('disabled', false);
      btnSubmit.val('Create Comment');
      textArea.val('');
    }).error(function(data){
      alert("ERROR: " + data.status);
      console.error("ERROR: ", data);
      btnSubmit.prop('disabled', false);
      btnSubmit.val('Create Comment');
    });
    
    return false; // prevent normal flow
  });
});