window.onload = function () {
  var typeFilterElt = document.getElementById("type-filter").elements['type'];

  typeFilterElt.forEach(function(choice) {
    choice.addEventListener("click", function () {
      updatePlanets(choice.value);
    })
  });
}

function updatePlanets (choice) {
  var terrestrialElts = document.getElementsByClassName("terrestrial");
  var giantElts = document.getElementsByClassName("giant");
  if (choice === "Terrestrials") {
    Array.prototype.forEach.call(terrestrialElts, function(planet) {
      planet.style.display = "";
    });
    Array.prototype.forEach.call(giantElts, function(planet) {
      planet.style.display = "none";
    });
  } else if (choice === "Giants") {
    Array.prototype.forEach.call(terrestrialElts, function(planet) {
      planet.style.display = "none";
    });
    Array.prototype.forEach.call(giantElts, function(planet) {
      planet.style.display = "";
    });
  } else {
    Array.prototype.forEach.call(terrestrialElts, function(planet) {
      planet.style.display = "";
    });
    Array.prototype.forEach.call(giantElts, function(planet) {
      planet.style.display = "";
    });
  }
}
