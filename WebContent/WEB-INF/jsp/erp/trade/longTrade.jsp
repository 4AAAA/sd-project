<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<!-- 下拉框 -->
<link rel="stylesheet" href="static/ace/css/chosen.css" />
<!-- jsp文件头和头部 -->
<%@ include file="../../system/index/top.jsp"%>
<!-- 日期框 -->
<link rel="stylesheet" href="static/ace/css/datepicker.css" />
</head>
<body class="no-skin">

	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container">
		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<div class="main-content-inner">
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
							
						<!-- 检索  -->
						<form action="intoku/list.do" method="post" name="Form" id="Form">
						<table style="margin-top:5px;">
							<tr>
								<td>
									<div class="nav-search">
										<span class="input-icon">
											<input type="text" placeholder="这里输入关键词" class="nav-search-input" id="nav-search-input" autocomplete="off" name="keywords" value="${pd.keywords }" placeholder="这里输入关键词"/>
											<i class="ace-icon fa fa-search nav-search-icon"></i>
										</span>
									</div>
								</td>
								<td style="padding-left:2px;"><input class="span10 date-picker" name="lastStart" id="lastStart"  value="${pd.lastStart }" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;" placeholder="开始时间" title="开始时间"/></td>
								<td style="padding-left:2px;"><input class="span10 date-picker" name="lastEnd" name="lastEnd"  value="${pd.lastEnd }" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;" placeholder="结束时间" title="结束时间"/></td>
								
								<td style="vertical-align:top;padding-left:2px"><a class="btn btn-light btn-xs" onclick="tosearch();"  title="检索"><i id="nav-search-icon" class="ace-icon fa fa-search bigger-110 nav-search-icon blue"></i></a></td>
							</tr>
						</table>
						<!-- 检索  -->
					
						<table id="simple-table" class="table table-striped table-bordered table-hover" style="margin-top:5px;">	
							<thead>
								<tr>
									<th class="center" style="width:50px;">序号</th>
									<th class="center">客户名称</th>
									<th class="center">套餐名称</th>
									<th class="center">签约总量</th>
									<th class="center">项目</th>
									<th class="center">1月</th>
									<th class="center">2月</th>
									<th class="center">3月</th>
									<th class="center">4月</th>
									<th class="center">5月</th>
									<th class="center">6月</th>
									<th class="center">7月</th>
									<th class="center">8月</th>
									<th class="center">9月</th>
									<th class="center">10月</th>
									<th class="center">11月</th>
									<th class="center">12月</th>
								</tr>
							</thead>
													
							<tbody>
							<!-- 开始循环 -->	
										<tr>
											<td class='center' style="width: 30px;">1</td>
											<td class='center'>辽宁新茂电子科技有限公司</td>
											<td class='center'>保底+分成</td>
											<td class='center'>6000</td>
											<td class='center'>月度双边协商</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
				
										</tr>
								     	<tr>
											<td class='center' style="width: 30px;">2</td>
											<td class='center'>沈阳飞科置业有限公司</td>
											<td class='center'>保底+分成</td>
											<td class='center'>6000</td>
											<td class='center'>月度双边协商</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
											<td class='center'>500</td>
				
										</tr>
							
							</tbody>
						</table>
						<div class="page-header position-relative">
						<table style="width:100%;">
							<tr>
								<td style="vertical-align:top;">
									<a class="btn btn-primary btn-sm" onclick="add();">推送给客户申请</a>
								</td>
								<td style="vertical-align:top;"><div class="pagination" style="float: right;padding-top: 0px;margin-top: 0px;">${page.pageStr}</div></td>
							</tr>
						</table>
						</div>
						</form>
					
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->

		<!-- 返回顶部 -->
		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
			<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>

	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->
	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!-- 删除时确认窗口 -->
	<script src="static/ace/js/bootbox.js"></script>
	<!-- ace scripts -->
	<script src="static/ace/js/ace/ace.js"></script>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
	<script type="text/javascript">
		$(top.hangge());//关闭加载状态
		//检索
		function tosearch(){

		}
		$(function() {
		
			//日期框
			$('.date-picker').datepicker({
				autoclose: true,
				todayHighlight: true
			});
		});
		
		//新增
		function add(){
			alert("是否推送给客户分解本月电量？");
		}
		
	</script>


</body>
</html>