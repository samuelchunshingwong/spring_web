<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #googleMap {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
</head>
<body>

<h1>My First Google Map</h1>

<div id="googleMap" ></div>

<script>
function myMap() {
	var center = {lat:22.28552, lng:114.15769};
	
var marker = [];

var map = new google.maps.Map(document.getElementById('googleMap'), {
          zoom: 11,
          center: center
        });
		
    /////for (var i = 0; i < loc.length; i++) {
    	<c:forEach var="map" items="${mapList}">
        
          marker[<c:out value="${map.mid}"/>] = new google.maps.Marker({
          position: {lat:<c:out value="${map.lat}"/>,lng:<c:out value="${map.lng}"/>},//myLatLng[i],
          //icon: 'http://maps.google.com/mapfiles/ms/icons/blue.png',
          map: map,
          title: "<c:out value="${map.loc_name}"/>"
        });
		
		
		
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
		/////}
		//for (var x = 0; x < marker.length; x++) {
		//marker[x].addListener('click', function() {
         // infowindow.open(map, marker[x]);
        //});
		//}
//var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJDjRaYdwPBQPtsF6Ot2QuT-fR42Dg7Mg&callback=myMap"></script>

</body>
</html>