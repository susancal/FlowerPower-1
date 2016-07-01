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
    // console.log(response.count);
    // $("#current-count").hide();
    // $("#current-count").html(response.count);
    // $("#current-count").show();
    $("#flower-to-remove").remove();
    $("#flower").html(response);
  })



});











});
