<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
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
	<link rel="shortcut icon" href="static/img/favicon.ico">
	<style type="text/css">
		.box-content{
			text-align: center;
		}
		.box-content>label{
			font-size: 20px;
		}
		.box-content>label>*{
			margin: 0px;
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
	<label>搜索：<input type="search" id="search"/><a href="javascript:void(0)" id="btnSearch">确定</a></label>
	
		<table
			class="table table-striped table-bordered bootstrap-datatable datatable">
			<caption>新闻列表</caption>
			<thead>
				<tr>
					<th>新闻编号</th>
					<th>新闻标题</th>
					<th>新闻摘要</th>
					<th>作者</th>
					<th>创建时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>
	
	<input type="hidden" id="detailId">

	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>确认</h3>
		</div>
		<div class="modal-body">
			<p>您确认要删除它以及评论吗？</p>
		</div>
		<div class="modal-footer">
			<a href="javascript:void(0);" class="btn" data-dismiss="modal">取消</a> <a href="javascript:void(0);"
				class="btn btn-primary">确定</a>
		</div>
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
	<script type="text/javascript">
		jQuery(document).ready(function($){
			function initDetail(){
				$.ajax({
					"url":"detail?flag=init",
					"type":"GET",
					"dataType":"json",
					"success":processDetailList
				});
			}
			function processDetailList(data){
				if(data==null){
					return;
				}
				$("tbody").empty();
				for(var i=0;i<data.length;i++){
					$("tbody").append("<tr><td>"+data[i].id
					+"</td><td class='center'>"+data[i].title
					+"</td><td class='center'>"+data[i].summary
					+"</td><td class='center'>"+data[i].author
					+"</td><td class='center'><span class='label label-success'>"+data[i].createdate
					+"</span></td><td class='center'><a class='btn btn-success' href='comment?flag=getComments&id="+data[i].id+"'>"
					+" <i class='icon-zoom-in icon-white'></i> 查看评论 </a>"
					+"<a class='btn btn-info' href='addComment.jsp?id="+data[i].id+"'> <i class='icon-edit icon-white'></i>"
					+"评论 </a> <a class='btn btn-danger btn-del'data-toggle='modal' data-target='#myModal' href='javascript:void(0);'>"
					+" <i class='icon-trash icon-white'></i> 删除 </a></td></tr>");
				}
			}
			initDetail();
			$("tbody").on("click",".btn-del",function(){
				var detailId = $(this).parents("tbody").find("tr:nth-of-type(1)>td:nth-of-type(1)").text();
				$("#detailId").val(detailId);
			});
			$(".btn-primary").click(function(){
				var $id = $("#detailId").val();
				$.ajax({
					"url":"detail?flag=del&id="+$id,
					"type":"GET",
					"dataType":"json",
					"success":processDetailList
				});
				$("#myModal").modal("hide");
			});
			
			$("#btnSearch").click(function(){
				var title = $("#search").val();
				$.ajax({
					"url":"detail",
					"type":"GET",
					"data":"flag=search&title="+title,
					"dataType":"json",
					"contentType":"application/x-www-form-urlencoded;charset=utf-8",
					"success":processDetailList
				});
				$("#search").val("");
			});
		});
	
	</script>
</body>
</html>
