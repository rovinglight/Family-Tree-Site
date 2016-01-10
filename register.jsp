<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>族谱注册</title>

<link rel="stylesheet" href="css/style.css" />

<body>
<div class="login-container">
	<h1>族谱注册</h1>

	<form action="doRegister.jsp" method="post" id="zhuCe">
		<div>
    			<input type="text" name="surname" class="surname" placeholder="姓氏"  autocomplete="on" />
    	</div>
    
        <div>
    			<input type="text" name="username" class="username" placeholder="账号" autocomplete="on"/>
   		</div>
    
    	<div>
    			<input type="password"  name="password" class="password" placeholder="登入密码" oncontextmenu="return false" onpaste="return false"/>
    	</div>
    
    	<div>
				<input type="password" name="confirm_password" class="confirm_password" placeholder="再次输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
    
    	<div>
				<button  type="submit">注 册</button>
   		</div>
    </form>
    
<script src="js/jquery.min.js"></script>
<script src="js/common.js"></script>
<!--背景图片自动更换-->
<script src="js/supersized.3.2.7.min.js"></script>
<script src="js/supersized-init.js"></script>
<!--表单验证-->
<script src="js/jquery.validate.min.js?var1.14.0"></script>

</script>

    
    
</body>
</html>
