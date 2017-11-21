<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
					
					<form action="bidding/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="REMARKS_ID" id="REMARKS_ID" value="${pd.REMARKS_ID}"/>
						<input type="hidden" name="CONTRACTNAME" id="CONTRACTNAME" value="${pd.CONTRACTNAME}" maxlength="100" placeholder="这里输入套餐名称" title="套餐名称" style="width:98%;"/>
						<input type="hidden" name="TYPE" id="TYPE" value="${pd.TYPE}" maxlength="100" placeholder="这里输入项目" title="项目" style="width:98%;"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">客户名称:</td>
								<td><input type="text" name="REMARKS" id="REMARKS" value="${pd.REMARKS}" maxlength="100" placeholder="这里输入客户名称" title="备注" style="width:98%;"/></td>							
							    <td style="width:75px;text-align: right;padding-top: 13px;">签约总量:</td>
								<td><input type="text" name="COUNT" id="COUNT" value="${pd.COUNT}" maxlength="100" placeholder="签约总量" title="1月" style="width:98%;"/></td>							
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">1月:</td>
								<td><input type="text" name="ONE" id="ONE" value="${pd.ONE}" maxlength="100" placeholder="分解1月电量" title="1月" style="width:98%;"/></td>							
								<td style="width:75px;text-align: right;padding-top: 13px;">2月:</td>
								<td><input type="text" name="TWO" id="TWO" value="${pd.TWO}" maxlength="100" placeholder="分解2月电量" title="2月" style="width:98%;"/></td>							
							</tr>
							
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">3月:</td>
								<td><input type="text" name="THREE" id="THREE" value="${pd.THREE}" maxlength="100" placeholder="分解3月电量" title="3月" style="width:98%;"/></td>							
								<td style="width:75px;text-align: right;padding-top: 13px;">4月:</td>
								<td><input type="text" name="FOUR" id="FOUR" value="${pd.FOUR}" maxlength="100" placeholder="分解4月电量" title="4月" style="width:98%;"/></td>							
							</tr>
						
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">5月:</td>
								<td><input type="text" name="FIVE" id="FIVE" value="${pd.FIVE}" maxlength="100" placeholder="分解5月电量" title="5月" style="width:98%;"/></td>							
								<td style="width:75px;text-align: right;padding-top: 13px;">6月:</td>
								<td><input type="text" name="SIX" id="SIX" value="${pd.SIX}" maxlength="100" placeholder="分解6月电量" title="6月" style="width:98%;"/></td>							
							</tr>
					
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">7月:</td>
								<td><input type="text" name="SEVEN" id="SEVEN" value="${pd.SEVEN}" maxlength="100" placeholder="分解7月电量" title="7月" style="width:98%;"/></td>							
								<td style="width:75px;text-align: right;padding-top: 13px;">8月:</td>
								<td><input type="text" name="EIGHT" id="EIGHT" value="${pd.EIGHT}" maxlength="100" placeholder="分解8月电量" title="8月" style="width:98%;"/></td>							
							</tr>
					
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">9月:</td>
								<td><input type="text" name="NINE" id="NINE" value="${pd.NINE}" maxlength="100" placeholder="分解9月电量" title="9月" style="width:98%;"/></td>							
								<td style="width:75px;text-align: right;padding-top: 13px;">10月:</td>
								<td><input type="text" name="TEN" id="TEN" value="${pd.TEN}" maxlength="100" placeholder="分解10月电量" title="10月" style="width:98%;"/></td>							
							</tr>
				
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">11月:</td>
								<td><input type="text" name="ELEVEN" id="ELEVEN" value="${pd.ELEVEN}" maxlength="100" placeholder="分解11月电量" title="3月" style="width:98%;"/></td>							
								<td style="width:75px;text-align: right;padding-top: 13px;">12月:</td>
								<td><input type="text" name="TWELVE" id="TWELVE" value="${pd.TWELVE}" maxlength="100" placeholder="分解12月电量" title="3月" style="width:98%;"/></td>							
							</tr>
					
						
							<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
									<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
								</td>
							</tr>
						</table>
						</div>
						<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
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
</div>
<!-- /.main-container -->


	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		//保存
		function save(){
			if($("#REMARKS").val()==""){
				$("#REMARKS").tips({
					side:3,
		            msg:'请输入备注',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#REMARKS").focus();
			return false;
			}
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		</script>
</body>
</html>