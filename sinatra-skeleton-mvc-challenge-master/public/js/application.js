$(document).ready(function() {

$("#hydrake-button").on('submit', function(event) {
  event.preventDefault();
  var route = $(this).attr("action");
  console.log(route);
  var method = $(this).attr("method");
  console.log(method);
  $.ajax({
    url: route,
    type: method
  })
  .done(function(response) {
    console.log(response);
    $("#flower").html(response);
  })



});











});
