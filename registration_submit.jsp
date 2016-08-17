<%@ page import="java.sql.*" %>
<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/google","root","");
		Statement st = con.createStatement();
		String sql = "insert into user values('"+request.getParameter("username")+"','"+request.getParameter("password")+"','"+request.getParameter("fn")+"','"+request.getParameter("ln")+"','"+request.getParameter("email")+"',"+request.getParameter("utid")+");";
	
		st.executeUpdate(sql);
    	response.sendRedirect("index.jsp");
		
%>
