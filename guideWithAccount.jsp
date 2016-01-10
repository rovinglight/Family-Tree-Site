<%@ page contentType="text/html;charset=UTF-8" %> 
<div class="guide">
	<div style="width:100%;">
		<img src="img/decoration.png"/>
    </div>
	<div class="mainTitle">
    	<h1><b><a class="links" href="index.jsp">Family Tree</a></b></h1>
    </div>
   <font class="guideBar">
    	<a class="links" href="whatIsFamilyTree.jsp">What's Family Tree</a><br/>
    	<a class="links" href="whyWeCreatThis.jsp">Why we creat this</a><br/>
    	<a class="links" href="howToUse.jsp">How to use</a><br/>
       <a class="links" href="myFamilyTree.jsp">My Family Tree</a>
    </font>
    <a href="account.jsp" style="grey">
    <div class="accountDiv select">
    	<img class="accountIcon" src="img/accountIcon.png"  />
       <span style="font-size:24px;margin-left:30px">
       <%
			if(login == null){
				out.print("登录／注册");	
			}else{
				out.print(userName);
			}
		%>
       <span class="glyphicon glyphicon-chevron-right"></span>
       </span>
    </div>
    </a>
	<div class="footer">
    	Copyright © 2015 
     	   <button type="button" class="btn btn-danger" title="队员"  
      data-container="body" data-toggle="popover" data-placement="top" 
      data-content="陈宏辉｜塗家瑜｜刘映华">
      三个学生的课程设计 别点我噢～
   </button>    
   </div>
</div> 
    
<script>$(function () 
      { $("[data-toggle='popover']").popover();
      });
</script> 