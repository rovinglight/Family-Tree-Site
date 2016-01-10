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
<script>
	var count = 2;
</script>
<% 
String login = (String)session.getAttribute("login");
String userName = (String)session.getAttribute("userName");
if (login != null && login.equals("OK")) { 
	
} 
else { 
	response.setHeader("Refresh","0;URL=myFamilyTree.jsp"); 
}
%>

</head>

<body>
<%@ include  file="guideWithAccount.jsp"%> 
<div class="goBack">
	<a class="goBackButton" href="javascript:history.go(-1);" ><span class="glyphicon glyphicon-arrow-left"></span></a>
</div>
<div class="editMain">
<form id="myList" class="form-inline" action="doEdit.jsp">
<button type="submit" class="btn btn-warning">输完了点这儿保存</button><br/><hr/>
  <div class="form-group">
    <label for="name">姓名</label>
    <input type="text" class="form-control" name="name1" placeholder="张三">
  </div>
  <div class="form-group">
    <label for="generation">辈份</label>
    <input type="text" class="form-control" name="generation1" placeholder="1">
  </div>
  <input id="ad" name="add" type="hidden" value="1">
  <input id="de" name="dele" type="hidden" value="">
</form>
<br/>
<a href="#" onClick="add()"><span class="glyphicon glyphicon-plus"></span>添加成员</a>
<hr/>
<div style='border-left:3px solid #d2322d;font-size:20px;padding-left:5%;'>
	辈份 <span class='glyphicon glyphicon-hand-right'></span> 名字
</div><br/>
<%
	int id = (int)session.getAttribute("id");
	Class.forName(ClassForName);
	Connection con = DriverManager.getConnection(SERVANDDB,USER,PWD);

	Statement statement=con.createStatement();

	ResultSet rst=statement.executeQuery("select * from familyMember where user='"+id+"'");
	while(rst.next()){
		String name = rst.getString("name");
		int generation = rst.getInt("generation"); 
		int count = rst.getInt("id");
		out.print("<div style='border-left:3px solid #d2322d;font-size:20px;padding-left:5%;'>"+generation+" <span class='glyphicon glyphicon-hand-right'></span> "+name+"<a onClick='dele("+count+")' href='#'><span id='dele"+count+"'><span class='glyphicon glyphicon-trash'></span><span id='1'>删除</span></a></span></div><br/>");
	}
%>
</div>
    
<script>$(function () 
      { $("[data-toggle='popover']").popover();
      });
</script>     
</body>
</html>
