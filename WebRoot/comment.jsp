<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'comment.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link id="bs-css" href="static/css/bootstrap-cerulean.css"
	rel="stylesheet">
<style type="text/css">
body {
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}
</style>
<link href="static/css/bootstrap-responsive.css" rel="stylesheet">
<link href="static/css/charisma-app.css" rel="stylesheet">
<link href="static/css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
<link href='static/css/fullcalendar.css' rel='stylesheet'>
<link href='static/css/fullcalendar.print.css' rel='stylesheet'
	media='print'>
<link href='static/css/chosen.css' rel='stylesheet'>
<link href='static/css/uniform.default.css' rel='stylesheet'>
<link href='static/css/colorbox.css' rel='stylesheet'>
<link href='static/css/jquery.cleditor.css' rel='stylesheet'>
<link href='static/css/jquery.noty.css' rel='stylesheet'>
<link href='static/css/noty_theme_default.css' rel='stylesheet'>
<link href='static/css/elfinder.min.css' rel='stylesheet'>
<link href='static/css/elfinder.theme.css' rel='stylesheet'>
<link href='static/css/jquery.iphone.toggle.css' rel='stylesheet'>
<link href='static/css/opa-icons.css' rel='stylesheet'>
<link href='static/css/uploadify.css' rel='stylesheet'>
<link rel="shortcut icon" href="static/img/favicon.ico">
<style type="text/css">
.box-content {
	text-align: center;
}
.box-content>a{
	float: right;
}

caption {
	font-size: 36px;
	height: 40px;
	line-height: 40px;
}
</style>
</head>

<body>
	<div class="box-content">
		<a href="index.jsp">返回新闻列表页</a>
		<table
			class="table table-striped table-bordered bootstrap-datatable datatable">
			<caption>新闻列表</caption>
			<thead>
				<tr>
					<th>评论编号</th>
					<th>评论内容</th>
					<th>评论人</th>
					<th>评论时间</th>
				</tr>
				<c:forEach var="comment" items="${comments}" varStatus="status">
					<tr>
					<td>${comment.id}</td>
					<td class="center">${comment.content}</td>
					<td class="center">${comment.author}</td>
					<td class="center"><span class="label label-success"><fmt:formatDate value="${comment.createdate}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
					</td>
				</tr>
				</c:forEach>
				
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>

	<script src="static/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript">
		jQuery.noConflict();
	</script>
	<script src="static/js/jquery-ui-1.8.21.custom.min.js"></script>
	<script src="static/js/bootstrap-transition.js"></script>
	<script src="static/js/bootstrap-alert.js"></script>
	<script src="static/js/bootstrap-modal.js"></script>
	<script src="static/js/bootstrap-dropdown.js"></script>
	<script src="static/js/bootstrap-scrollspy.js"></script>
	<script src="static/js/bootstrap-tab.js"></script>
	<script src="static/js/bootstrap-tooltip.js"></script>
	<script src="static/js/bootstrap-popover.js"></script>
	<script src="static/js/bootstrap-button.js"></script>
	<script src="static/js/bootstrap-collapse.js"></script>
	<script src="static/js/bootstrap-carousel.js"></script>
	<script src="static/js/bootstrap-typeahead.js"></script>
	<script src="static/js/bootstrap-tour.js"></script>
	<script src="static/js/jquery.cookie.js"></script>
	<script src='static/js/fullcalendar.min.js'></script>
	<script src='static/js/jquery.dataTables.min.js'></script>
	<script src="static/js/excanvas.js"></script>
	<script src="static/js/jquery.flot.min.js"></script>
	<script src="static/js/jquery.flot.pie.min.js"></script>
	<script src="static/js/jquery.flot.stack.js"></script>
	<script src="static/js/jquery.flot.resize.min.js"></script>
	<script src="static/js/jquery.chosen.min.js"></script>
	<script src="static/js/jquery.uniform.min.js"></script>
	<script src="static/js/jquery.colorbox.min.js"></script>
	<script src="static/js/jquery.cleditor.min.js"></script>
	<script src="static/js/jquery.noty.js"></script>
	<script src="static/js/jquery.elfinder.min.js"></script>
	<script src="static/js/jquery.raty.min.js"></script>
	<script src="static/js/jquery.autogrow-textarea.js"></script>
	<script src="static/js/jquery.history.js"></script>
</body>
</html>
