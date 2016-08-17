<%@ page import="java.sql.*" %>
<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/google","root","");
		Statement st = con.createStatement();
		
		
		String sq="select LAST_INSERT_ID() as lid from company;";
		ResultSet rs2 = st.executeQuery(sq);
		rs2.next();
		String lid = rs2.getString("lid");
		
		
		
	    String sql1= "insert into branch values("+lid+",'"+request.getParameter("bname")+"','"+request.getParameter("bid")+"','"+request.getParameter("badd")+"','"+request.getParameter("text")+"','"+request.getParameter("text1")+"','"+request.getParameter("bph")+"');";

		st.executeUpdate(sql1);

		
    	response.sendRedirect("branch.jsp");
		
%>
