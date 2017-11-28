<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'addComment.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link id="bs-css" href="static/css/bootstrap-cerulean.css" rel="stylesheet">
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	<link id="bs-css" href="static/css/bootstrap-cerulean.css" rel="stylesheet">
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
	<link href='static/css/fullcalendar.print.css' rel='stylesheet'  media='print'>
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

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- The fav icon -->
	<link rel="shortcut icon" href="static/img/favicon.ico">
	<style type="text/css">
		#typeahead{
			width: 300px;
			height: 30px;
			line-height: 30px;
		}
	</style>
</head>

<body>
	<div class="box-content">
		<form class="form-horizontal" action="comment?flag=add&newsid=<%=request.getParameter("id")%>" method="post">
			<fieldset>
				<legend>增加评论</legend>
				<div class="control-group">
					<label class="control-label" for="textarea2">评论内容</label>
					<div class="controls">
						<textarea class="cleditor" id="textarea2" rows="3" name="content"></textarea>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="typeahead">评论人
					</label>
					<div class="controls">
						<input type="text" class="span6 typeahead" id="typeahead" name="userName"/>
					</div>
				</div>
				<div class="form-actions">
					<button type="submit" class="btn btn-primary">提交</button>
					<button type="reset" class="btn">重置</button>
				</div>
			</fieldset>
		</form>
		
	<script src="static/js/jquery-1.7.2.min.js"></script>
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
	<script src="static/js/jquery.iphone.toggle.js"></script>
	<script src="static/js/jquery.autogrow-textarea.js"></script>
	<script src="static/js/jquery.uploadify-3.1.min.js"></script>
	<script src="static/js/jquery.history.js"></script>
	<script src="static/js/charisma.js"></script>
</body>
</html>
