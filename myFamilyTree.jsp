<!doctype html>
<html lang="zh-CN">
<head>
<%@ page contentType="text/html;charset=UTF-8" %>  
<%@ include file="conn.jsp"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" href="style.css" rel="stylesheet">
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="FamilyTree.js"></script>
<title>族谱啦｜全宇宙最靠谱的族谱记录网站</title>

<% 
String login = (String)session.getAttribute("login");
String userName = (String)session.getAttribute("userName");
if (login != null && login.equals("OK")) { 
	response.setHeader("Refresh","0;URL=account.jsp"); 
} 
%>

</head>

<body>

<%@ include  file="guideWithAccount.jsp"%>

<div class="mainContent">

	<blockquote>
	  <p>What we are doing is to provide a place for you to leave something to your descendant,maybe for yourself.</p>
	  <footer>Family Tree</footer>
	</blockquote>
	<div class="login">
    	
        <h1 style=" margin-left:20px;">用户登录</h1>
        
        <% 
	if (request.getParameter("userName") != null &&request.getParameter("password") != null) { 
		userName = request.getParameter("userName");
		String password = request.getParameter("password");
			//session.setMaxInactiveInterval(25200);
		
		Class.forName(ClassForName);
		Connection con = DriverManager.getConnection(SERVANDDB,USER,PWD);

		Statement statement=con.createStatement();

		ResultSet rst=statement.executeQuery("select * from userInfo where userName='"+userName+"' and pwd='"+password+"' ");

		if (rst.next()) { 
			int id = rst.getInt("id");
			String lastName = rst.getString("lastName");
			session.setAttribute("lastName",lastName);
			session.setAttribute("id",id);
			session.setAttribute("userName",userName);
			session.setAttribute("login", "OK");
			response.sendRedirect("account.jsp");
		}else { 
			out.print("<span style='color:red;margin-left:1.5em;'>登录错误，请输入正确账号密码</span>"); 
		} 
		con.close();
	}
%>

        
        <hr>
    
    <form action="myFamilyTree.jsp" method="post" class="form-horizontal" role="form">
   <div class="form-group">
      <label for="firstname" class="col-sm-2 control-label">用户</label>
      <div class="col-sm-10">
         <input type="text" class="form-control" name="userName" 
            placeholder="请输入用户名">
      </div>
   </div>
   <div class="form-group">
      <label for="lastname" class="col-sm-2 control-label">密码</label>
      <div class="col-sm-10">
         <input type="text" class="form-control" name="password" 
            placeholder="请输入密码">
      </div>
   </div>
   <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
         <div class="checkbox">
            <label>
               <input name="remember" type="radio">
               请记住我7天
            </label>
         </div>
      </div>
   </div>
   <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
         <button type="submit" class="btn btn-warning" onClick="check()">输完了点这儿登录</button>
         <a href="register.jsp" class="btn btn-danger">没有账号点这里注册</a>
      </div>
   </div>
</form>
</div>

</div>
<script>$(function () 
      { $("[data-toggle='popover']").popover();
      });
</script>



 
</body>
</html>
