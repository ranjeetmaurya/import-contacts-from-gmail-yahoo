
function render_email_clients(){
  // $.ajax({
  //   type: "POST",
  //   url: $('#render_email_clients').attr('action'), //sumbits it to the given url of the form
  //   dataType: "html" 
  // }).success(function(data){
  // 	jQuery.facebox(data);
  // });
  jQuery.facebox($('#email_contacts').html());
  $('#email_contacts').hide();
}



$(function() { 
  var theTable = $('table#emails')

  theTable.find("tbody > tr").find("td:eq(1)").mousedown(function(){
    $(this).prev().find(":checkbox").click()
  });

  $("#filter").keyup(function() {
    $.uiTableFilter( theTable, this.value );
  })

  $('#filter-form').submit(function(){
    theTable.find("tbody > tr:visible > td:eq(1)").mousedown();
    return false;
  }).focus(); //Give focus to input field
});  


function invite_friends(){
  var email_ids = []
  $('input[id="email_checkbox"]:checked').each( function(){
    email_ids.push(this.value);
  });

  $.ajax({
    type: "POST",
    data: {'email_ids': email_ids},
    url: "/contacts/invite_friends",
    dataType: "html" 
  }).success(function(data){
  });
}
