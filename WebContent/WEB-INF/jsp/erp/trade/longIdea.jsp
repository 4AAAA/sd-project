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

<!-- jsp文件头和头部 -->
<%@ include file="../../system/index/top.jsp"%>

</head>
<body class="no-skin">

	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container">
		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<div class="main-content-inner">
				<div class="page-content">
					<div class="hr hr-18 dotted hr-double"></div>
					<div class="row">
						<div class="col-xs-12">


							
							
							
					


<div id="main" style="width: 1000px;height:400px;"></div>									
							
					
							
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
	<!-- ace scripts -->
	<script src="static/ace/js/ace/ace.js"></script>
	<script type="text/javascript">
		$(top.hangge());
	</script>
	<script src="plugins/echarts.min.js"></script>
	<script type="text/javascript" src="static/ace/js/jquery.js"></script>
	    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
        	    title: {
        	        text: '双边协商策略'
        	    },
        	    tooltip: {
        	        trigger: 'axis'
        	    },
        	    legend: {
        	        x: 'center',
        	        data:['电厂','煤加','政策引导','降水量','蒸发量']
        	    },
        	    radar: [
        	        {
        	            indicator: [
        	                {text: '设备', max: 100},
        	                {text: '实际投产', max: 100},
        	                {text: '效率', max: 100},
        	                {text: '有用功', max: 100}
        	            ],
        	            center: ['25%','40%'],
        	            radius: 80
        	        },
        	        {
        	            indicator: [
        	                {text: '机组1', max: 100},
        	                {text: '机组2', max: 100},
        	                {text: '煤价', max: 100},
        	                {text: '装机容量', max: 100},
        	                {text: '实际产能', max: 100}
        	            ],
        	            radius: 80,
        	            center: ['50%','60%'],
        	        },
        	        {
        	            indicator: (function (){
        	                var res = [];
        	                for (var i = 1; i <= 12; i++) {
        	                    res.push({text:i+'月',max:100});
        	                }
        	                return res;
        	            })(),
        	            center: ['75%','40%'],
        	            radius: 80
        	        }
        	    ],
        	    series: [
        	        {
        	            type: 'radar',
        	             tooltip: {
        	                trigger: 'item'
        	            },
        	            itemStyle: {normal: {areaStyle: {type: 'default'}}},
        	            data: [
        	                {
        	                    value: [60,73,85,40],
        	                    name: '某软件'
        	                }
        	            ]
        	        },
        	        {
        	            type: 'radar',
        	            radarIndex: 1,
        	            data: [
        	                {
        	                    value: [85, 90, 90, 95, 95],
        	                    name: '某主食手机'
        	                },
        	                {
        	                    value: [95, 80, 95, 90, 93],
        	                    name: '某水果手机'
        	                }
        	            ]
        	        },
        	        {
        	            type: 'radar',
        	            radarIndex: 2,
        	            itemStyle: {normal: {areaStyle: {type: 'default'}}},
        	            data: [
        	                {
        	                    name: '降水量',
        	                    value: [2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 75.6, 82.2, 48.7, 18.8, 6.0, 2.3],
        	                },
        	                {
        	                    name:'蒸发量',
        	                    value:[2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 35.6, 62.2, 32.6, 20.0, 6.4, 3.3]
        	                }
        	            ]
        	        }
        	    ]
        	};


        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>

</body>
</html>