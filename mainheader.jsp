<div id="mainheader" class="fixedheader">
<div class="container">
<div class="logo-area">
<h1 class="logo">
<a href="http://templates.everislabs.com/"><img src="images/Google-Maps-picture.jpg" alt="" width="150" height="99"></a>
<b><font face="Comic Sans MS">Google Map Based Company Search Engine</font></b>
</h1>
<span class="descriptions">Site Desc</span>
</div> 
<div class="site-menu right-menu visible-lg visible-md top-5">
<nav>
<ul class="sf-menu bottom-0 list-unstyled clearfix">
<li class="menu-normal current-menu-item">

<a href="index.jsp">Home</a>
</li>
<%
	if(session.getAttribute("type")!=null && (session.getAttribute("type").toString().equals("1")||session.getAttribute("type").toString().equals("2")||session.getAttribute("type").toString().equals("3")))
	{
	}else{
%>
	
<li class="menu-normal">
<a href="">Search</a>
<ul>

<li class="menu-normal"><a href="#logmod">Search as registered user</a></li>
<li class="menu-normal"><a href="guest_user.jsp">Search as guest user</a></li>

</ul>
<%}%>


<%

	if(session.getAttribute("type")!=null && session.getAttribute("type").toString().equals("2"))
	{
%>
	<li class="menu-normal">
<a href="gmap.jsp">Company owner</a>

</li>
<% }else if(session.getAttribute("type")!=null && session.getAttribute("type").toString().equals("1")){
%>
<li class="menu-normal">
<a href="">Admin</a>
<ul>

<li class="menu-normal"><a href="view_company.jsp">view company list</a></li>
<li class="menu-normal"><a href="feedback_view.jsp">view feedback</a></li>
<li class="menu-normal"><a href="change_company.jsp">manage company</a></li>


</ul>
</li>
<%}else if(session.getAttribute("type")!=null && session.getAttribute("type").toString().equals("3")){
%>
<li class="menu-normal">
<a href="registered_user.jsp">search for location</a>

</li>
<%}else{

}%>
</li>
<li class="menu-normal">
<a href="about_us.jsp">About us</a>
</li>

<li class="menu-normal">
<a href="contact_us.jsp">Contact</a>
</li>
<%

	if(session.getAttribute("type")!=null && session.getAttribute("type").toString().equals("1"))
	{
}else{
%>
<li class="menu-normal">
<a href="feedback.jsp">Feedback</a>

</li>

<%}
%>
</ul>
 
</nav>
</div> 
 
<a href="#mobile-menu" class="reponsive-menu visible-xs visible-sm button pull-right color"><i class="fa fa-bars"></i></a>
</div> 
</div> 