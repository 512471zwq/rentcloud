<%@ Page Language="C#" AutoEventWireup="true" CodeFile="projects.aspx.cs" Inherits="projects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <!-- Bootstrap Styles-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
 <!-- FontAwesome Styles-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
 <!-- Morris Chart Styles-->
<link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
	<!-- Custom Styles-->
<link href="assets/css/custom-styles.css" rel="stylesheet" />
 <!-- Google Fonts-->
<link href='#css?family=Open+Sans' rel='stylesheet' type='text/css' />





<link rel="stylesheet" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="wrapper">
	<nav class="navbar navbar-default top-navbar" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html"><strong>Marvel</strong></a>
		</div>

		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
					<i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
				<ul class="dropdown-menu dropdown-messages">
					<li>
						<a href="#">
							<div>
								<strong>John Doe</strong>
								<span class="pull-right text-muted">
									<em>Today</em>
								</span>
							</div>
							<div>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</div>
						</a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="#">
							<div>
								<strong>John Smith</strong>
								<span class="pull-right text-muted">
									<em>Yesterday</em>
								</span>
							</div>
							<div>Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...</div>
						</a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="#">
							<div>
								<strong>John Smith</strong>
								<span class="pull-right text-muted">
									<em>Yesterday</em>
								</span>
							</div>
							<div>Lorem Ipsum has been the industry's standard dummy text ever since the...</div>
						</a>
					</li>
					<li class="divider"></li>
					<li>
						<a class="text-center" href="#">
							<strong>Read All Messages</strong>
							<i class="fa fa-angle-right"></i>
						</a>
					</li>
				</ul>
				<!-- /.dropdown-messages -->
			</li>
			<!-- /.dropdown -->
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
					<i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
				<ul class="dropdown-menu dropdown-tasks">
					<li>
						<a href="#">
							<div>
								<p>
									<strong>Task 1</strong>
									<span class="pull-right text-muted">60% Complete</span>
								</p>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
										<span class="sr-only">60% Complete (success)</span>
									</div>
								</div>
							</div>
						</a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="#">
							<div>
								<p>
									<strong>Task 2</strong>
									<span class="pull-right text-muted">28% Complete</span>
								</p>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100" style="width: 28%">
										<span class="sr-only">28% Complete</span>
									</div>
								</div>
							</div>
						</a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="#">
							<div>
								<p>
									<strong>Task 3</strong>
									<span class="pull-right text-muted">60% Complete</span>
								</p>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
										<span class="sr-only">60% Complete (warning)</span>
									</div>
								</div>
							</div>
						</a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="#">
							<div>
								<p>
									<strong>Task 4</strong>
									<span class="pull-right text-muted">85% Complete</span>
								</p>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
										<span class="sr-only">85% Complete (danger)</span>
									</div>
								</div>
							</div>
						</a>
					</li>
					<li class="divider"></li>
					<li>
						<a class="text-center" href="#">
							<strong>See All Tasks</strong>
							<i class="fa fa-angle-right"></i>
						</a>
					</li>
				</ul>
				<!-- /.dropdown-tasks -->
			</li>
			<!-- /.dropdown -->
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
					<i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
				<ul class="dropdown-menu dropdown-alerts">
					<li>
						<a href="#">
							<div>
								<i class="fa fa-comment fa-fw"></i> New Comment
								<span class="pull-right text-muted small">4 min</span>
							</div>
						</a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="#">
							<div>
								<i class="fa fa-twitter fa-fw"></i> 3 New Followers
								<span class="pull-right text-muted small">12 min</span>
							</div>
						</a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="#">
							<div>
								<i class="fa fa-envelope fa-fw"></i> Message Sent
								<span class="pull-right text-muted small">4 min</span>
							</div>
						</a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="#">
							<div>
								<i class="fa fa-tasks fa-fw"></i> New Task
								<span class="pull-right text-muted small">4 min</span>
							</div>
						</a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="#">
							<div>
								<i class="fa fa-upload fa-fw"></i> Server Rebooted
								<span class="pull-right text-muted small">4 min</span>
							</div>
						</a>
					</li>
					<li class="divider"></li>
					<li>
						<a class="text-center" href="#">
							<strong>See All Alerts</strong>
							<i class="fa fa-angle-right"></i>
						</a>
					</li>
				</ul>
				<!-- /.dropdown-alerts -->
			</li>
			<!-- /.dropdown -->
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
					<i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
					</li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
					</li>
					<li class="divider"></li>
					<li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
					</li>
				</ul>
				<!-- /.dropdown-user -->
			</li>
			<!-- /.dropdown -->
		</ul>
	</nav>
	<!--/. NAV TOP  -->
	<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">

				<li>
					<a href="index.html"><i class="fa fa-dashboard"></i> Dashboard</a>
				</li>
				<li>
					<a href="ui-elements.html"><i class="fa fa-desktop"></i> UI Elements</a>
				</li>
				<li>
					<a href="chart.html" class="active-menu"><i class="fa fa-bar-chart-o"></i> Charts</a>
				</li>
				<li>
					<a href="tab-panel.html"><i class="fa fa-qrcode"></i> Tabs & Panels</a>
				</li>
				
				<li>
					<a href="table.html"><i class="fa fa-table"></i> Responsive Tables</a>
				</li>
				<li>
					<a href="form.html"><i class="fa fa-edit"></i> Forms </a>
				</li>


				<li>
					<a href="#"><i class="fa fa-sitemap"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li>
							<a href="#">Second Level Link</a>
						</li>
						<li>
							<a href="#">Second Level Link</a>
						</li>
						<li>
							<a href="#">Second Level Link<span class="fa arrow"></span></a>
							<ul class="nav nav-third-level">
								<li>
									<a href="#">Third Level Link</a>
								</li>
								<li>
									<a href="#">Third Level Link</a>
								</li>
								<li>
									<a href="#">Third Level Link</a>
								</li>

							</ul>

						</li>
					</ul>
				</li>
				<li>
					<a href="empty.html"><i class="fa fa-fw fa-file"></i> Empty Page</a>
				</li>
			</ul>

		</div>

	</nav>
	<!-- /. NAV SIDE  -->
	<div id="page-wrapper">
	  <div class="header"> 
					<h1 class="page-header">
						 Charts <small>Show up your stats</small>
					</h1>
					<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li><a href="#">Charts</a></li>
				  <li class="active">Data</li>
				</ol> 
								
	</div>
		<div id="page-inner"> 
		 
				  
		
			<div class="col-md-4 col-sm-12 col-xs-12">                     
				<div class="panel panel-default">
					<div class="panel-heading">
						项目一
					</div>
					<div class="panel-body">
						<!-- <div id="morris-bar-chart"></div> -->
					<p class="xxgy">华清嘉园</p>
					<p class="say">时间</p>
					<!-- <div class="for_btn" id="container" style="height: 240px"> -->
					<div class="for_btn">
						<img src="img/a4.png" width="100%" >
						<a href="javascript:showproject1()" class="in_page"><img src="images/iconin.png" /></a>
					</div>
					<div class="students_star">
						<p class="cell_list"><span class="lf">名称：<span class="darks">xx商场</span></span> <span class="rt">地址：<span class="darks">xxx街</span></span>
						</p>
						<p class="cell_list"><span>面积：<span class="darks">787878m2</span></span>
						</p>
						<div class="zwjs">
							项目介绍
						</div>
					</div>
					</div>
				</div>            
			</div>
			
			
			
		
			<div class="col-md-4 col-sm-12 col-xs-12">                     
				<div class="panel panel-default">
					<div class="panel-heading">
						项目二
					</div>
					<div class="panel-body">
						<!-- <div id="morris-area-chart"></div> -->
						<p class="xxgy">博雅园</p>
					<p class="say">时间</p>
					<div class="for_btn">
						<img src="img/a3.png" width="100%">
						<a href="chart2.html" class="in_page"><img src="images/iconin.png" /></a>
					</div>
					<div class="students_star">
						<p class="cell_list"><span class="lf">名称：<span class="darks">xx商场</span></span> <span class="rt">地址：<span class="darks">xxx街</span></span>
						</p>
						<p class="cell_list"><span>面积：<span class="darks">787878m2</span></span>
						</p>
						<div class="zwjs">
							项目介绍
						</div>
					</div>
					</div>
				</div>            
			</div>
			
			

			  
			<div class="col-md-4 col-sm-12 col-xs-12">                     
				<div class="panel panel-default">
					<div class="panel-heading">
						项目三
					</div>
					<div class="panel-body">
						<!-- <div id="morris-line-chart"></div> -->
					
					<p class="xxgy">旗舰凯旋</p>
					<p class="say">时间</p>
					<div class="for_btn">
						<img src="img/a1.png" width="100%">
						<a href="#" class="in_page"><img src="images/iconin.png" /></a>
					</div>

					<div class="students_star">
						<p class="cell_list"><span class="lf">名称：<span class="darks">xx商场</span></span> <span class="rt">地址：<span class="darks">xxx街</span></span>
						</p>
						<p class="cell_list"><span>面积：<span class="darks">787878m2</span></span>
						</p>
						<div class="zwjs">
							项目介绍
						</div>
					</div>
				
					</div>
				</div>            
			</div>
			
			
		
			<div class="col-md-4 col-sm-12 col-xs-12">                     
				<div class="panel panel-default">
					<div class="panel-heading">
						项目四
					</div>
					<div class="panel-body">                            
						<!-- <div id="morris-donut-chart"></div> -->
						<p class="xxgy">碧水庄园</p>
					<p class="say">时间</p>
					<div class="for_btn">
						<img src="img/a2.png" width="100%">
						<a href="#" class="in_page"><img src="images/iconin.png" /></a>
					</div>
					<div class="students_star">
						<p class="cell_list"><span class="lf">名称：<span class="darks">xx商场</span></span> <span class="rt">地址：<span class="darks">xxx街</span></span>
						</p>
						<p class="cell_list"><span>面积：<span class="darks">787878m2</span></span>
						</p>
						<div class="zwjs">
							项目介绍
						</div>
					</div>
					</div>
				</div>            
			</div> 
			
		
			<div class="col-md-4 col-sm-12 col-xs-12">                     
				<div class="panel panel-default">
					<div class="panel-heading">
						项目五
					</div>
					<div class="panel-body">                            
						<!-- <div id="morris-donut-chart"></div> -->
						<p class="xxgy">旭风苑</p>
					<p class="say">时间</p>
					<div class="for_btn">
						<img src="img/a5.png" width="100%">
						<a href="#" class="in_page"><img src="images/iconin.png" /></a>
					</div>
					<div class="students_star">
						<p class="cell_list"><span class="lf">名称：<span class="darks">xx商场</span></span> <span class="rt">地址：<span class="darks">xxx街</span></span>
						</p>
						<p class="cell_list"><span>面积：<span class="darks">787878m2</span></span>
						</p>
						<div class="zwjs">
							项目介绍
						</div>
					</div>
					</div>
				</div>            
			</div> 
			
			

			
			

		
			
			
			<!-- <div class="col-md-4 col-sm-12 col-xs-12">                     
				<div class="panel panel-default">
					<div class="panel-heading">
						Donut Chart
					</div>
					<div class="panel-body">                            
						
						<p class="xxgy">项目三</p>

					<div class="deletebtn">
						<img src="img/a5.png" width="100%">
						<a href="#" class="in_page"><img src="images/iconin.png" /></a>
					</div>
					<div class="students_star">
						<p class="cell_list"><span class="lf">名称：<span class="darks">xx商场</span></span> <span class="rt">地址：<span class="darks">xxx街</span></span>
						</p>
					</div>
					</div>
					<button type="button" onclick="hidediv()">hide</button>
					<button type="button" onclick="adddiv()">add</button>
				</div>    
				
			</div>  -->
			
		
	   
	   

	   
			 <!-- /. ROW  -->
			 <footer><p>Copyright &copy; 2016.Company name All rights reserved.</p></footer>
			</div>
		 <!-- /. PAGE INNER  -->
		</div>
	 <!-- /. PAGE WRAPPER  -->
	</div>
 <!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="assets/js/jquery-1.10.2.js"></script>
  <!-- Bootstrap Js -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="assets/js/jquery.metisMenu.js"></script>
 <!-- Morris Chart Js -->
 <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="assets/js/morris/morris.js"></script>
  <!-- Custom Js -->
<script src="assets/js/custom-scripts.js"></script>

<!--  <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script> -->
 <script type="text/javascript" src="echart/echarts.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
       <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>
	   

	   
	   
       <script type="text/javascript">
var dom = document.getElementById("container");
var myChart = echarts.init(dom);
var app = {};
option = null;
app.title = '环形图';

option = {
    tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b}: {c} ({d}%)"
    },
    legend: {
        orient: 'vertical',
        x: 'left',
        data:['直接访问','邮件营销','联盟广告','视频广告','搜索引擎']
    },
    series: [
        {
            name:'访问来源',
            type:'pie',
            radius: ['50%', '70%'],
            avoidLabelOverlap: false,
            label: {
                normal: {
                    show: false,
                    position: 'center'
                },
                emphasis: {
                    show: true,
                    textStyle: {
                        fontSize: '30',
                        fontWeight: 'bold'
                    }
                }
            },
            labelLine: {
                normal: {
                    show: false
                }
            },
            data:[
                {value:335, name:'直接访问'},
                {value:310, name:'邮件营销'},
                {value:234, name:'联盟广告'},
                {value:135, name:'视频广告'},
                {value:1548, name:'搜索引擎'}
            ]
        }
    ]
};
;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}

       </script>

<script>
function showproject1(){
window.location.href = "Abuildings.aspx";
}
</script>
        </div>
    </form>
</body>
</html>
