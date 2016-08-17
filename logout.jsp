 <%
	session.removeAttribute("username");
	session.removeAttribute("type");
	response.sendRedirect("index.jsp");
 %>