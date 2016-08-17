
<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/google","root","");
		Statement st1 = con1.createStatement();
		String sql1 = "select * from company;";
	    //out.println(sql);
		
    	ResultSet rs1 = st1.executeQuery(sql1);
    	while(rs1.next()){
		%>
		<table border=1>
		<tr>
		<td><b>UserName</b></td>
		<td>
		<%
			out.println(rs1.getString("username"));
			
		%>
		</td>
		</tr>
		<tr>
		<td><b>company name</b></td>
		<td>
		<%
			
			out.println(rs1.getString("company_name"));
		
			
	
		%></td>
		</tr>
		<tr>
		<td><b>company Address</b></td>
		<td>
		<%
			
			out.println(rs1.getString("company_address"));	
		

		
		%></td>
		</tr>
		<tr>
		<td><b>no of employees</b></td>
		<td>
		<%
			
			out.println(rs1.getString("no_emp"));	
		

		
		%></td>
		</tr>
		<tr>
		<td><b>no of vacancy</b></td>
		<td>
		<%
			
			out.println(rs1.getString("no_vacancy"));	
		

		
		%></td>
		</tr>
		<tr>
		<td><b>contact no</b></td>
		<td>
		<%
			
			out.println(rs1.getString("contact_no"));	
		

		
		%></td>
		</tr>
		<tr>
		<td><b>no of branches</b></td>
		<td>
		<%
			
			out.println(rs1.getString("no_branches"));	
		

		
		%></td>
		</tr>
		<tr>
		<td><b>established in</b></td>
		<td>
		<%
			
			out.println(rs1.getString("established_in"));	
		

		
		%></td>
		</tr>
		<tr>
		<td><b>no of products</b></td>
		<td>
		<%
			
			out.println(rs1.getString("no_product"));	
		

		
		%></td>
		</tr>
		<tr>
		<td><b>company turnover</b></td>
		<td>
		<%
			
			out.println(rs1.getString("company_turnover"));	
		

		
		%></td>
		</tr>
		<tr>
		<td><b>product names</b></td>
		<td>
		<%
			
			out.println(rs1.getString("product_name"));	
		

		
		%></td>
		</tr>
		<tr>
		<td><b>mail id</b></td>
		<td>
		<%
			
			out.println(rs1.getString("company_mail_id"));	
		

		
		%></td>
</tr>
</table><br/>

<%
}
%>









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
		String sql1 = "select * from branch b1,company c1 where (c1.company_name like '%"+key+"%' or c1.company_address like '%"+key+"%' or b1.branch_name like '%"+key+"%' ) and b1.company_id = c1.comapny_id";
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




</table>
	
	
	
	
	
	
	
</form>




<body>
    <div id="map-canvas" style="width:100%; height:200px;"></div>
	<form method="post" action="company_submit.jsp">
	
	</form>
  </body>
  
  
  
  
  
