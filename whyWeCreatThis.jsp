<!doctype html>
<html lang="zh-CN">
<head>
<%@ page contentType="text/html;charset=UTF-8" %>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" href="style.css" rel="stylesheet">
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<title>族谱啦｜全宇宙最靠谱的族谱记录网站</title>

<%
	   		String login = (String)session.getAttribute("login");
			String userName = (String)session.getAttribute("userName");
%>

</head>

<body>

<%@ include  file="guideWithAccount.jsp"%>

    
</body>
</html>
