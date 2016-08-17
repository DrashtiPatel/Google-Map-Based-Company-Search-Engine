<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Simple markers</title>
    <style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
    <script>
function initialize() {
  var myLatlng = new google.maps.LatLng(-25.363882,131.044922);
  var mapOptions = {
    zoom: 4,
    center: myLatlng
  }
  var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

  var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: 'Hello World!',
	  draggable: true
  });
  google.maps.event.addListener(marker, 'dragend', function()  {
    document.getElementById("lat").value=(marker.getPosition().lat());
    document.getElementById("lng").value=(marker.getPosition().lng());
  });
}

google.maps.event.addDomListener(window, 'load', initialize);

    </script>
  </head>
  <body>
    <div id="map-canvas" style="width:100%; height:200px;"></div>
	<form method="post" action="company_submit.jsp">
	<h1>Set company Location:</h1>
	<table>
	<tr>
    <td>Latitude</td><td><input readonly="readonly" id="lat" name="text"/></td>
	<td></td>
    <td>Langitude</td><td><input readonly="readonly" id="lng" name="text1"/></td>
	</tr>
	</table>
	
    <h1>Add Company Details:</h1>
	<table>
	<tr>
	<td>Compnany name:</td>
	<td><input type="text" name="cname"/></td>
	</tr>
	<tr>
	<td>Compnany address:</td><td><textarea  cols="30" rows="3" name="cadd"></textarea></td>
	</tr>
	<tr>
	<td>Contact No:</td><td><input type="text" name="cno"/></td>
	</tr>
	<tr>
	<td>Number of employees:</td><td><input type="text" name="nemp"/></td>
	</tr>
	<tr>
	<td>Products Name:</td><td><input type="text" name="pname"/></td>
	</tr>
	<tr>
	<td>Number of products:</td><td><input type="text" name="np"/></td>
	</tr>
	<tr>
	<td>Company Email-id:</td><td><input type="text" name="cei"/></td>
	</tr>
	<tr>
	<td>Company Turnover:</td><td><input type="text" name="ct"/></td>
	</tr>
	<tr>
	<td>Established In:</td><td><input type="text" name="ei"/></td>
	</tr>
	<tr>
	<td>Number of vacancy:</td><td><input type="text" name="nov"/></td>
	</tr>
	<tr>
	<td>Number of branches:</td><td><input type="text" name="nob"/></td>
	</tr>
	</table>
	<h1>Branch Details:</h1>
	<table>
	<tr>
	<td>BranchID:</td><td><input type="text" name="bid"/></td>
	</tr>
	<tr>
	<td>BranchName:</td><td><input type="text" name="bname"/></td>
	</tr>
	<tr>
	<td>BranchAddress:</td><td><textarea  cols="30" rows="3" name="badd"></textarea></td>
	</tr>
	<tr>
	<td>Branch Phone No:</td><td><input type="text" name="bph"/></td>
	</tr>
	<tr>
	<td><button>Submit</button></td>
	</tr>
	</table>
	</form>
  </body>
</html>