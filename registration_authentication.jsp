<%@ page import="java.sql.*" %>

<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/google","root","");
		Statement st = con.createStatement();
		String sql = " select user_type_id from user where username='"+request.getParameter("username")+"' and password='"+request.getParameter("password")+"'";
		
		ResultSet rs = st.executeQuery(sql);
    	if(rs.next())
		{
			//out.println("COrrect");
			session.setAttribute("username",request.getParameter("username"));
			session.setAttribute("type",rs.getString("user_type_id"));
			response.sendRedirect("index.jsp");
		}		
		else
		{
			//out.println("Wrong");
			
			response.sendRedirect("index1.jsp");
			
		}
		
%>
