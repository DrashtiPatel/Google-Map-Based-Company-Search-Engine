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
<h1>Choose action:</h1>
<br/>
<form action="remove.jsp">
	Enter the name of the company name to be removed:
	<input type="text" name="chcname"><br/>
	Enter the field to be removed:
	<input type="text" name="chfield"><br/>
	
	<button>submit</button>
	
</form>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
</div> 
<jsp:include page="footerMenu.jsp"></jsp:include>
</footer> 
<div id="mobile-menu">
<span class="menu-content"></span>
</div> 
</div> 
 

</body>

</html>