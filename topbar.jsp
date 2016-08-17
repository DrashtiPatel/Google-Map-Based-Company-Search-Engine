<div id="topbar">
<div class="container">
<div class="row">
<div id="callus" class="col-md-6 col-sm-6">
<div class="clearfix hidden-xs">
<span><i class="fa icon-left"></i>
<%
if(session.getAttribute("username")==null)
{
		out.print("<a href='#logmod'>Login / Sign Up</a>");
		
}
else
{
	out.print("Hi, "+session.getAttribute("username")+"&nbsp;&nbsp;&nbsp;&nbsp;<a href='logout.jsp'>Logout</a>");
}
%></span>
</div>
</div> 
<div id="social" class="col-md-6 col-sm-6 hidden-xs">
<ul class="social bottom-0 list-unstyled clearfix">
<li class="facebook"><a href="#" data-placement="bottom" data-toggle="tooltip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
<li class="twitter"><a href="module3.jsp" data-placement="bottom" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
<li class="googleplus"><a href="#" data-placement="bottom" data-toggle="tooltip" title="Google Plus"><i class="fa fa-google-plus"></i></a></li>
<li class="pinterest"><a href="#" data-placement="bottom" data-toggle="tooltip" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
<li class="linkedin"><a href="#" data-placement="bottom" data-toggle="tooltip" title="LinkedIn"><i class="fa fa-linkedin"></i></a></li>
</ul>
</div> 
</div> 
</div> 
</div> 