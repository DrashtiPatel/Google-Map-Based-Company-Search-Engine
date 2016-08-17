<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
<jsp:include page="head.jsp"></jsp:include>
</head> 
<body>
<div id="wrap">
<header id="header">
<jsp:include page="topbar.jsp"></jsp:include>
<jsp:include page="mainheader.jsp"></jsp:include>
</header> 
<form>
<table border=1>
<tr>
<td><h1>UserName</h1></td>
<td><h1>Feedback</h1></td>
<td><h1>EmailAddress</h1></td>
</tr>

<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/google","root","");
		Statement st = con.createStatement();
		String sql = "select * from submit;";
	    //out.println(sql);
		
    	ResultSet rs = st.executeQuery(sql);
    	while(rs.next()){
		%><tr>
		<td>
		<%
			out.println(rs.getString("username"));
			
		%>
		</td>
		<td>
		<%
			
			out.println(rs.getString("feedback"));
		
			
	
		%></td>
		<td>
		<%
			
			out.println(rs.getString("user_email_id"));	
		

		
		%></td>
</tr>
<%
}
%>
</table>

</form>
<footer id="footer">
<div class="container">

<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
</div> 
<jsp:include page="footerMenu.jsp"></jsp:include>
</footer> 
<div id="mobile-menu">
<span class="menu-content"></span>
</div> 
</div> 
 

</body>

</html>