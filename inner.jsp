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
<form action="viewmarker.jsp" method="post">
<table>
<tr>
<td>
type your keyword here:<input type="text" name="key"></td>
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