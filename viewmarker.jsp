<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

  <head>
  <jsp:include page="head.jsp"></jsp:include>
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
 String sql = "select * from branch b,company c where (c.company_name like '%"+key+"%' or c.company_address like '%"+key+"%' or b.branch_name like '%"+key+"%' ) and c.company_id = b.company_id";
 //out.println(sql);
 ResultSet rs = st.executeQuery(sql);
while(rs.next())
{
 %>new google.maps.LatLng(<%=rs.getString("longitude")%>, <%=rs.getString("latitude")%>),
<%
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
    
	<div id="wrap">
<header id="header">
<jsp:include page="topbar.jsp"></jsp:include>

</header> 
<div id="map-canvas" style="width:100%; height:600px;"></div>
	<br/>
	<br/>
	<br/>
	<h1>Company Details</h1>
	<form>


	<table border=1>
	<tr>
	<td><b>UserName</b></td>
	<td><b>company name</b></td>
	<td><b>company Address</b></td>
	<td><b>no of employee</b></td>
	<td><b>no of vacancy</b></td>
	<td><b>contact no</b></td>
	<td><b>no of branches</b></td>
	<td><b>established in</b></td>
	<td><b>no of products</b></td>
	<td><b>company turnover</b></td>
	<td><b>product names</b></td>
	<td><b>mail id</b></td>
	</tr>

<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/google","root","");
		Statement st1 = con1.createStatement();
		String sql1 = "select * from branch b1,company c1 where (c1.company_name like '%"+key+"%' or c1.company_address like '%"+key+"%' or b1.branch_name like '%"+key+"%' ) and b1.company_id = c1.company_id";
	    //out.println(sql1);
		
    	ResultSet rs1 = st1.executeQuery(sql1);
    	while(rs1.next()){
		%><tr>
		<td>
		<%
			out.println(rs1.getString("username"));
			
		%>
		</td>
		<td>
		<%
			
			out.println(rs1.getString("company_name"));
		
			
	
		%></td>
		<td>
		<%
			
			out.println(rs1.getString("company_address"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs1.getString("no_emp"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs1.getString("no_vacancy"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs1.getString("contact_no"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs1.getString("no_branches"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs1.getString("established_in"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs1.getString("no_product"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs1.getString("company_turnover"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs1.getString("product_name"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs1.getString("company_mail_id"));	
		

		
		%></td>
</tr>
<%
}
%>

</table>

</form>
<br/>
<br/>
<br/>
<footer id="footer">
<div class="container">


</div> 
<jsp:include page="footerMenu.jsp"></jsp:include>
</footer> 
<div id="mobile-menu">
<span class="menu-content"></span>
</div> 
</div> 
 

  </body>
</html>