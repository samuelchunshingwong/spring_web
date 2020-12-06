<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Covid19 Map</title>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      .form-control {
    width:500px;
}
    </style>
    <style>
   #wrapper { position: relative; }
   #over_map { position: absolute; top: 10px; left: 10px; z-index: 99; }
</style>
</head>
<body>

<div id="over_map">
<br><br><br>
No. of locations with confirmed<br>case in the past 14 days: <br><b><span id="count"></span></b>
</div>
<input
      id="pac-input"
      class="form-control "
      type="text"
      placeholder="Search Box"
      
    />
<div id="map" ></div>

<script>
function myMap() {
	var center = {lat:22.28552, lng:114.15769};
	
var marker = [];

var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 11,
          center: center,
          mapTypeControl: false
        });

	var count = 0;
    /////for (var i = 0; i < loc.length; i++) {
    	<c:forEach var="map" items="${mapList}">
    	count += 1;
    	<c:set var="res" value="${map.res}" scope="request"></c:set>
    	//<c:set var="res" scope="session" value="1"/>
    		<c:if test="${res == 1}">
          marker[<c:out value="${map.mid}"/>] = new google.maps.Marker({
          position: {lat:<c:out value="${map.lat}"/>,lng:<c:out value="${map.lng}"/>},//myLatLng[i],
          icon: 'http://maps.google.com/mapfiles/ms/icons/yellow.png',
          map: map,
          title: "<c:out value="${map.loc_name}"/>"
        });
          </c:if>
          
          <c:if test="${res == 0}">
          marker[<c:out value="${map.mid}"/>] = new google.maps.Marker({
          position: {lat:<c:out value="${map.lat}"/>,lng:<c:out value="${map.lng}"/>},//myLatLng[i],
          //icon: 'http://maps.google.com/mapfiles/ms/icons/blue.png',
          icon: 'http://maps.google.com/mapfiles/ms/icons/red.png',
          map: map,
          title: "<c:out value="${map.loc_name}"/>"
        });
          </c:if>
		
		
		
		var contentString = '<div id="content">'+
     
            '<div id="bodyContent">'+
            '<p>'+'<b>'+"<c:out value="${map.loc_name}"/>"+'</b>' +
            '<p>'+"<c:out value="${map.loc_info}"/>"+'</p>'+
			
            '</div>'+
            '</div>';

        var infowindow = new google.maps.InfoWindow({
          content: contentString
        });
		
		marker[<c:out value="${map.mid}"/>].infowindow = infowindow;

       
        marker[<c:out value="${map.mid}"/>].addListener('click', function() {
          return this.infowindow.open(map, this);
        });
        </c:forEach>
        document.getElementById("count").innerHTML = count;
        
      
		/////}
		//for (var x = 0; x < marker.length; x++) {
		//marker[x].addListener('click', function() {
         // infowindow.open(map, marker[x]);
        //});
		//}
//var map = new google.maps.Map(document.getElementById("map"),mapProp);
//Create the search box and link it to the UI element.
const input = document.getElementById("pac-input");
const searchBox = new google.maps.places.SearchBox(input);
map.controls[google.maps.ControlPosition.TOP_CENTER].push(input);
// Bias the SearchBox results towards current map's viewport.
map.addListener("bounds_changed", () => {
  searchBox.setBounds(map.getBounds());
});
let markers = [];
// Listen for the event fired when the user selects a prediction and retrieve
// more details for that place.
searchBox.addListener("places_changed", () => {
  const places = searchBox.getPlaces();

  if (places.length == 0) {
    return;
  }
  // Clear out the old markers.
  markers.forEach((marker) => {
    marker.setMap(null);
  });
  markers = [];
  // For each place, get the icon, name and location.
  const bounds = new google.maps.LatLngBounds();
  places.forEach((place) => {
    if (!place.geometry) {
      console.log("Returned place contains no geometry");
      return;
    }
    const icon = {
      url: place.icon,
      size: new google.maps.Size(71, 71),
      origin: new google.maps.Point(0, 0),
      anchor: new google.maps.Point(17, 34),
      scaledSize: new google.maps.Size(25, 25),
    };
    // Create a marker for each place.
    markers.push(
      new google.maps.Marker({
        map,
        icon,
        title: place.name,
        position: place.geometry.location,
      })
    );

    if (place.geometry.viewport) {
      // Only geocodes have viewport.
      bounds.union(place.geometry.viewport);
    } else {
      bounds.extend(place.geometry.location);
    }
  });
  map.fitBounds(bounds);
});
}

</script>

<script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJDjRaYdwPBQPtsF6Ot2QuT-fR42Dg7Mg&callback=myMap&libraries=places&v=weekly"
      defer
    ></script>
    
</body>

</html>