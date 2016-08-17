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

<h1>&nbsp &nbsp &nbsp Feedback :</h1>
<form action="submit_feedback.jsp" method="post">
<table>
<tr>
<td>&nbsp &nbsp &nbsp &nbsp Enter User Name :</td>
<td>&nbsp &nbsp &nbsp <input type="text" name="username"/></td>
</tr>
<tr>
<td>&nbsp &nbsp &nbsp &nbsp Give your feedback here :</td>
<td>&nbsp &nbsp &nbsp <input type="text" name="feedback"/></td>
</tr>
<tr>
<td>&nbsp &nbsp &nbsp &nbsp Enter Email-Address :</td>
<td>&nbsp &nbsp &nbsp <input type="text" name="user_email_id"/></td>
</tr>
<tr>
<td>&nbsp &nbsp &nbsp <input type=submit value="submit"/></td>
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