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
<h1>Choose action:</h1>
<br/>
<form action="update_building.jsp">
	Enter the name of the building to be changed:
	<input type="text" name="chbname"><br/>
	Enter the field to be changed:
	<input type="text" name="chfield"><br/>
	Enter the new value:
	<input type="text" name="chvalue"><br/>
	<button>submit</button>
	
</form>
<br/>
<br/>
<br/>


<div id="mobile-menu">
<span class="menu-content"></span>
</div> 
</div> 
 

</body>

</html>