<!doctype html>
<html>
<head>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.regex.*"%>
<%@ include file="conn.jsp"%> 
<% 
	String login = (String)session.getAttribute("login");
	String userName = (String)session.getAttribute("userName");
	if (login != null && login.equals("OK")) { 
	
	} 
	else { 
		response.sendRedirect("myFamilyTree.jsp"); 
	}



	String ad = (String)request.getParameter("add");
	String dele = (String)request.getParameter("dele");
//删除功能
	
	int z = 0;
	int j = 0;
	int user = (int)session.getAttribute("id");
	
	String[] s = dele.split(","); 
	
		for(z=0;z<s.length;z++){
			if(s[z]!=""){
				j = Integer.parseInt(s[z]);
			}
			Class.forName(ClassForName);
			Connection con = DriverManager.getConnection(SERVANDDB,USER,PWD);
			Statement statement=con.createStatement();
			statement.executeUpdate("DELETE FROM familyMember WHERE id='"+j+"'");
			con.close();
			
		}
	
//添加功能
	int a =  Integer.parseInt(ad);
	int x = 0;
	String name = null;
	String generation = null;
	for(x=1;x<=a;x++){
		name = (String)request.getParameter("name"+x);
		if(a==1&&name.equals("")){
		}else{
			name = (String)request.getParameter("name"+x);
			generation = (String)request.getParameter("generation"+x);
			Class.forName(ClassForName);
			Connection con = DriverManager.getConnection(SERVANDDB,USER,PWD);
			Statement statement=con.createStatement();
			statement.executeUpdate("INSERT INTO familyMember (name,generation,user) VALUES ('"+name+"', '"+generation+"','"+user+"')");
			con.close();
		}
	}
	
	response.sendRedirect("viewFamilyTree.jsp");
%>  








<meta charset="UTF-8">
<title>Untitled Document</title>
</head>

<body>
</body>
</html>
