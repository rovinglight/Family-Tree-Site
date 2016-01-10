<!doctype html>
<html lang="zh-CN">
<head>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="conn.jsp"%> 
<% 
String login = (String)session.getAttribute("login");
String userName = (String)session.getAttribute("userName");
if (login != null && login.equals("OK")) { 
	
} 
else { 
	response.sendRedirect("myFamilyTree.jsp"); 
}
%>  
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" href="style.css" rel="stylesheet">
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<title>族谱啦｜全宇宙最靠谱的族谱记录网站</title>


</head>

<body>

<%@ include  file="guideWithAccount.jsp"%>
 
<div class="goBack">
	<a class="goBackButton" href="javascript:history.go(-1);" ><span class="glyphicon glyphicon-arrow-left"></span></a>
</div>
<div class="view">
	<h1><%out.print((String)session.getAttribute("lastName"));%>氏</h1><br/>
    <div style="float:right"><a href="editFamilyTree.jsp"><span class="glyphicon glyphicon-pencil"></span>编辑</a></div>
    
	<%
			int id = (int)session.getAttribute("id");
			int i = 0;
		
		Class.forName(ClassForName);
		Connection con = DriverManager.getConnection(SERVANDDB,USER,PWD);

		Statement statement=con.createStatement();

		ResultSet rst=statement.executeQuery("select * from familyMember where user='"+id+"' order by generation");
		
		while(rst.next()){
			int gen = rst.getInt("generation");
			String name = rst.getString("name");
			if(gen!=i){
				i++;
				if(i!=1){
					out.print("</div>");
				}
				String genChinese = null;
				switch(i){
					case 1 :genChinese="一";break;
					case 2 :genChinese="二";break;
					case 3 :genChinese="三";break;
					case 4 :genChinese="四";break;
					case 5 :genChinese="五";break;
					case 6 :genChinese="六";break;
					case 7 :genChinese="七";break;
					case 8 :genChinese="八";break;
					case 9 :genChinese="九";break;
					case 10 :genChinese="十";break;
					default :genChinese=i+"";
				}
				out.print("<hr/><div style='width:100%;height:4.5em;'>");
    			out.print("	<div style='width:2em; float:left;border-right:3px solid #d2322d;line-height:150%;'><p style='font-size:20px;'>第"+genChinese+"世</p></div>");
       			out.print("	<div style='width:1.5em; float:left;'>　</div>");
				out.print("	<div style='width:1.5em; float:left;'>"+name+"</div>");
			}else{
				out.print("	<div style='width:1.5em; float:left;'>"+name+"</div>");
			}
		}
		
		con.close();
	%>
</div>    
   
</body>
</html>

