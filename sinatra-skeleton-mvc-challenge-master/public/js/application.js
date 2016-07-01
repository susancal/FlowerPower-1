$(document).ready(function() {

  var audioElementYeah = document.createElement('audio');
  audioElementYeah.setAttribute('src', 'http://peal.io/download/dh076');
  //audioElement.load()
  $.get();

  var audioElementLogin = document.createElement('audio');
  audioElementLogin.setAttribute('src', 'http://peal.io/download/2t6zk');
  //audioElement.load()
  $.get();

  var audioElementRegister = document.createElement('audio');
  audioElementRegister.setAttribute('src', '/sounds/slurp.mp3');
  //audioElement.load()
  $.get();

  var audioElementHome = document.createElement('audio');
  audioElementHome.setAttribute('src', 'https://d2eopxgp627wep.cloudfront.net/ps/audios/000/000/759/original/youtube.mp3?1441872443');
  //audioElement.load()
  $.get();

  var audioElementStarted = document.createElement('audio');
  audioElementStarted.setAttribute('src', '/sounds/started.mp3');
  //audioElement.load()
  $.get();

  (function blink() {
  $('#slogan').fadeOut(500).fadeIn(500, blink);
})();


// updates cup count, flower image
$("#hydrake-button").on('submit', function(event) {
  event.preventDefault();
  var route = $(this).attr("action");
  var method = $(this).attr("method");
  audioElementYeah.play();
  $.ajax({
    url: route,
    type: method,
    dataType: "JSON"
  })
  .done(function(response) {
    $("#current-count").html(response.count);
    $("#flower-image").attr('src', response.picture);
  if (response.count === "12") {
      audioElementStarted.play();
    }
  })
});

// play hold on we're going home on home button
  $("#going-home").on('click', function(event) {
    event.preventDefault();
    audioElementHome.play();
    var url = $(this).attr("href");
    setTimeout(function() {
      window.location = url;
   }, 3000);
  });

// say yeah on login button
  $("#login").on('click', function(event) {
    audioElementLogin.play();
  });






});
