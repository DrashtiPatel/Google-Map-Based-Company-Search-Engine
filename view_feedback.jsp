<%@ page import="java.sql.*" %>
<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/google","root","");
		Statement st = con.createStatement();
		String sql = "select * from submit('"+request.getParameter("username")+"','"+request.getParameter("feedback")+"','"+request.getParameter("user_email_id")+"');";
	    //out.println(sql);
		st.executeUpdate(sql);
    	response.sendRedirect("index.jsp");
		
%>
