<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Check</title>

</head>
<body>
<%
	String login = (String)session.getAttribute("login");
	String userName = (String)session.getAttribute("userName");
	String kill = (String)request.getParameter("kill");
	if(kill!=null&&kill.equals("yes")){
		session.invalidate();
	}
	response.sendRedirect("index.jsp");
%>
<a href="index.jsp">族谱</a>
</body>
</html>
