<html>
<head>

<%
String redir_url = "" + request.getParameter("redir");

String username = "" + session.getAttribute("username");
if (username == null || "null".equals(username)) {
	// User isn't logged in.
	redir_url = "/wireframe.jsp?do=guest_user&redir=" + redir_url;
}


%>

<script type="text/javascript">	
function is_iphone()
{
  var agent=navigator.userAgent.toLowerCase();
  return (agent.indexOf('iphone')!=-1);
  //return true;
}

function fc_redirect() 
{
  if (is_iphone()) {
    window.location='/civclientlauncher?action=new'
  } else {
    window.location='<%= redir_url %>'
  }
}
</script>
</head>

<body onload="fc_redirect();" text="#ffffff" bgcolor="#000000">

<center>


<br><br>
<h2>Please wait while Freeciv.net is loading...</h2>

<%
String ua = "" + request.getHeader("User-Agent");
boolean isOpera = ( ua != null && ua.indexOf( "Opera" ) != -1 );
if (!isOpera) {
%>
  <img src="/tileset/freeciv-web-tileset-1.png" width="1" height="1">
  <img src="/tileset/freeciv-web-tileset-2.png" width="1" height="1">

<% } else { %>
    <jsp:include page="tiles/freeciv-web-tileset-small-preload.html" flush="false"/>
<% } %>
</center>


</body>
</html>