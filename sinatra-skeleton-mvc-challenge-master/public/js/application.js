$(document).ready(function() {

  (function blink() {
  $('#slogan').fadeOut(500).fadeIn(500, blink);
})();

$("#hydrake-button").on('submit', function(event) {
  event.preventDefault();
  var route = $(this).attr("action");
  console.log(route);
  var method = $(this).attr("method");
  console.log(method);
  $.ajax({
    url: route,
    type: method,
    dataType: "JSON"
  })
  .done(function(response) {
    console.log(response.picture);
    console.log(response.count);
    $("#current-count").html(response.count);
    $("#flower-image").attr('src', response.picture);
    // console.log(response.count);
    // $("#current-count").hide();
    // $("#current-count").html(response.count);
    // $("#current-count").show();
    // $("#flower-to-remove").remove();
    // $("#flower").html(response);
  })



});











});
