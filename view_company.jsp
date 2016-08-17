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
<form action="change_company.jsp">
<table border=1>
<tr>
<td><h1>UserName</h1></td>
<td><h1>company name</h1></td>
<td><h1>company Address</h1></td>
<td><h1>no of employees</h1></td>
<td><h1>no of vacancy</h1></td>
<td><h1>contact no</h1></td>
<td><h1>no of branches</h1></td>
<td><h1>established in</h1></td>
<td><h1>no of products</h1></td>
<td><h1>company turnover</h1></td>
<td><h1>product names</h1></td>
<td><h1>mail id</h1></td>
</tr>

<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/google","root","");
		Statement st = con.createStatement();
		String sql = "select * from company;";
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
			
			out.println(rs.getString("company_name"));
		
			
	
		%></td>
		<td>
		<%
			
			out.println(rs.getString("company_address"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs.getString("no_emp"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs.getString("no_vacancy"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs.getString("contact_no"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs.getString("no_branches"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs.getString("established_in"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs.getString("no_product"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs.getString("company_turnover"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs.getString("product_name"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs.getString("company_mail_id"));	
		

		
		%></td>
</tr>
<%
}
%>

</table>
<br/>
<br/>

<button>Make changes</button>


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