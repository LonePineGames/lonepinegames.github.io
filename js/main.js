
function $(className) {
  return document.getElementsByClassName(className).item(0);
}

window.addEventListener('load', function() {

  $("new-cities-link").addEventListener('click', function() {
    $("index").style.display = "none";
    $("new-cities").style.display = "block";
    window.scrollTo(0, 0);
  });

  $("back-to-index").addEventListener('click', function() {
    $("new-cities").style.display = "none";
    $("index").style.display = "block";
    window.scrollTo(0, 0);
  });

});
