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

<div class="mainContent">
<h1>家谱</h1>
<hr>
<p class="lead">家谱：又称族谱、宗谱等。是一种以表谱形式，记载一个家族的世系繁衍及重要人物事迹的书。皇帝的家谱称玉牒，如新朝玉牒、皇宋玉牒。它以记载父系家族世系、人物为中心，由正史中的帝王本纪及王侯列传、年表等演变而来。家谱是一种特殊的文献，就其内容而言，是中国五千年文明史中具有平民特色的文献，记载的是同宗共祖血缘集团世系人物和事迹等方面情况的历史图籍。家谱属珍贵的人文资料，对于历史学、民俗学、人口学、社会学和经济学的深入研究，均有其不可替代的独特功能。
</p>
<br>
<h1>基本含义</h1>
<hr>
家谱，又称族谱、家乘、祖谱、谱牒、宗谱等，是记载某个姓氏家
傅氏家谱
傅氏家谱
族子孙世系传承之书，具有区分家族成员血缘关系亲疏远近的作用，是中国封建宗法制度的产物。随着历史的发展，家谱由官修变为私修，所录内容不断丰富，其作用也不断增加和变化。如今，家谱同各姓氏的郡望、堂号一样，不仅为区别姓氏源流，可作为数典认祖、研究历史、地理、社会、民俗等参考资料，它还是姓氏文化的重要组成部分。家谱是中国特有的文化遗产，在汉族有悠久的历史，后来在民族融合中。逐渐在各民族中开始出现家谱。家谱是中华民族的三大文献（国史，地志，家谱）之一，属珍贵的人文资料，对于历史学、民俗学、人口学、社会学和经济学的深入研究，均有其不可替代的独特功能。



基本含义编辑
家谱，又称族谱、家乘、祖谱、谱牒、宗谱等，是记载某个姓氏家
傅氏家谱
傅氏家谱
族子孙世系传承之书，具有区分家族成员血缘关系亲疏远近的作用，是中国封建宗法制度的产物。随着历史的发展，家谱由官修变为私修，所录内容不断丰富，其作用也不断增加和变化。如今，家谱同各姓氏的郡望、堂号一样，不仅为区别姓氏源流，可作为数典认祖、研究历史、地理、社会、民俗等参考资料，它还是姓氏文化的重要组成部分。家谱是中国特有的文化遗产，在汉族有悠久的历史，后来在民族融合中。逐渐在各民族中开始出现家谱。家谱是中华民族的三大文献（国史，地志，家谱）之一，属珍贵的人文资料，对于历史学、民俗学、人口学、社会学和经济学的深入研究，均有其不可替代的独特功能。

</div>
<script>$(function () 
      { $("[data-toggle='popover']").popover();
      });
</script> 
</body>
</html>
