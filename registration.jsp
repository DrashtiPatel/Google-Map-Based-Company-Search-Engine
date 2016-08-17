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


  <h1>Registration Page</h1>
<form action="registration_submit.jsp">
<table>
<tr>
<td>	Username:<input type="text" name="username"/></td>
</tr>
<tr>
	<td>Password: <input type="password" name="password"/></td>
</tr>
<tr>
<td>First Name:<input type="text" name="fn"/></td>
</tr>
<tr>
	<td>last Name:<input type="text" name="ln"/></td>
	</tr>
	<tr>
	<td>	email: <input type="email" name="email"/></td>
	</tr>
	<tr>
	<td>Register as: <select name="utid">
				<option value="2">Company Owner</option>
				<option  value="3">User</option>
			</select></td>
	</tr>
	<tr>
	<td>
	<button>Submit</button></td>
	</tr>
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