<!doctype html>
<html lang="zh-CN">
<head>
<%@ 
	page contentType="text/html;charset=UTF-8" 
%>  
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
if (login != null && login.equals("OK")) { 
	
} 
else { 
	response.sendRedirect("myFamilyTree.jsp"); 
}
%>

</head>

<body>

<%@ include  file="guideWithAccount.jsp"%>


<div class="accountDetail">
	<span style="font-size:36px">我的族谱</span>
    <div style="float:right">
    <form action="logout.jsp" method="post">
    	<input type="hidden" name="kill" value="yes"/>
       <button class="btn btn-primary" type="submit">登出</button>
    </form>
    </div>

   
    
	<hr/>
	<a style="text-decoration:none;color:black" href="viewFamilyTree.jsp">
    <div class="select treeSelect">
    	<span style="font-size:80px;"><%out.print((String)session.getAttribute("lastName"));%>氏</span>
        <hr style="color:grey"/>
    	<a href="editFamilyTree.jsp"><span class="glyphicon glyphicon-pencil"></span>编辑</a> 
       <a href="viewFamilyTree.jsp"><span class="glyphicon glyphicon-resize-full"></span>查看</a>
    </div>
    </a>
</div>


    
</body>
</html>
