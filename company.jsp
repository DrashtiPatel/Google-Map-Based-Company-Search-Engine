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

<footer id="footer">
<div class="container">
<h1>Registration Page</h1>
<form action="company_submit.jsp">
	
	
    <h1>Add Company Details:</h1>
	<table>
	<tr>
	<td>Compnany name:</td>
	<td><input type="text" name="cname"/></td>
	</tr>
	<tr>
	<td>Compnany address:</td><td><textarea  cols="30" rows="3" name="cadd"></textarea></td>
	</tr>
	<tr>
	<td>Contact No:</td><td><input type="text" name="cno"/></td>
	</tr>
	<tr>
	<td>Number of employees:</td><td><input type="text" name="nemp"/></td>
	</tr>
	<tr>
	<td>Products Name:</td><td><input type="text" name="pname"/></td>
	</tr>
	<tr>
	<td>Number of products:</td><td><input type="text" name="np"/></td>
	</tr>
	<tr>
	<td>Company Email-id:</td><td><input type="text" name="cei"/></td>
	</tr>
	<tr>
	<td>Company Turnover:</td><td><input type="text" name="ct"/></td>
	</tr>
	<tr>
	<td>Established In:</td><td><input type="text" name="ei"/></td>
	</tr>
	<tr>
	<td>Number of vacancy:</td><td><input type="text" name="nov"/></td>
	</tr>
	<tr>
	<td>Number of branches:</td><td><input type="text" name="nob"/></td>
	</tr>
	
	<tr>
	<td><button>Submit</button></td>
	</tr>
	</table>
</form>
</div> 
<jsp:include page="footerMenu.jsp"></jsp:include>
</footer> 
<div id="mobile-menu">
<span class="menu-content"></span>
</div> 
</div> 
 

</body>

</html>