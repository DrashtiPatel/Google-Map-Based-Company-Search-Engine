<%@ page import="java.sql.*" %>
<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/google","root","");
		Statement st = con.createStatement();
		
		st.executeUpdate(" delete from company where company_name='"+request.getParameter("chcname")+"' ");
    	
			 response.sendRedirect("index.jsp");
		
		
		
%>