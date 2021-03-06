$(document).ready(function() {

   var onPlaceChanged = function() {
    console.log("Place changed");
    }

  function initializeAutocomplete(id) {
    var element = document.getElementById(id);
    if (element) {
      var autocomplete = new google.maps.places.Autocomplete(element, { types: ['geocode'] });
      google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    }
  }



  google.maps.event.addDomListener(window, 'load', function() {
    initializeAutocomplete('user_input_autocomplete_address');
  });

  google.maps.event.addDomListener(window, 'load', function() {
    initializeAutocomplete('user_input_autocomplete_locality');
  });

  
});