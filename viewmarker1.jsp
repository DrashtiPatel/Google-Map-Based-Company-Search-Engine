<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Marker animations with <code>setTimeout()</code></title>
    <style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
      #panel {
        position: absolute;
        top: 5px;
        left: 50%;
        margin-left: -180px;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
    <script>
// If you're adding a number of markers, you may want to
// drop them on the map consecutively rather than all at once.
// This example shows how to use setTimeout() to space
// your markers' animation.

var berlin = new google.maps.LatLng(52.520816, 13.410186);

var neighborhoods = [ 
new google.maps.LatLng(52.520816, 13.410186),<%
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/google","root","");
 Statement st=con.createStatement();
 String key = request.getParameter("key"); 
 String sql = "select * from branch b,company c where (c.company_name like '%"+key+"%' or c.company_address like '%"+key+"%' or b.branch_name like '%"+key+"%' ) and b.company_id = c.company_id";
 //out.println(sql);
 ResultSet rs = st.executeQuery(sql);
 if(rs.next()){
while(rs.next())
{
 %>new google.maps.LatLng(<%=rs.getString("longitude")%>, <%=rs.getString("latitude")%>),
<%
	}
	}else{
	response.sendRedirect("error.jsp");
	}
	
%>];



var markers = [];
var iterator = 0;

var map;

function initialize() {
  var mapOptions = {
    zoom: 12,
    center: berlin
  };

  map = new google.maps.Map(document.getElementById('map-canvas'),
          mapOptions);
}

function drop() {
  for (var i = 0; i < neighborhoods.length; i++) {
    setTimeout(function() {
      addMarker();
    }, i * 200);
  }
}

function addMarker() {
  markers.push(new google.maps.Marker({
    position: neighborhoods[iterator],
    map: map,
    draggable: false,
    animation: google.maps.Animation.DROP
  }));
  iterator++;
}

google.maps.event.addDomListener(window, 'load', initialize);
drop();
    </script>
  </head>
  <body>
    <div id="map-canvas"></div>
	

  </body>
</html>