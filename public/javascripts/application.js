$(document).ready(function() {
	initialize();
});

function initialize() {
    var latlng = new google.maps.LatLng(40.44260328858159, -79.94316458702087);
    var myOptions = {
      zoom: 17,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map_canvas"),
        myOptions);
  }