<!doctype html>
<html>
<head>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.regex.*"%>
<%@ include file="conn.jsp"%> 
<% 




	String userName = (String)request.getParameter("username");
	String passWordS = (String)request.getParameter("password");
	String lastName = (String)request.getParameter("surname");
	int passWord = Integer.parseInt(passWordS);
	int tree = 1;		
			Class.forName(ClassForName);
			Connection con = DriverManager.getConnection(SERVANDDB,USER,PWD);
			Statement statement=con.createStatement();
			statement.executeUpdate("INSERT INTO userInfo (userName,pwd,trees,lastName) values ('"+userName+"','"+passWord+"','"+tree+"','"+lastName+"')");
			con.close();
	

			response.sendRedirect("myFamilyTree.jsp");
			


%>  








<meta charset="UTF-8">
<title>Untitled Document</title>
</head>

<body>
</body>
</html>
