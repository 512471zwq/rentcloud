<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Abuilding2.aspx.cs" Inherits="Abuilding2" %>

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
<style type="text/css">
ul, li {
  margin: 0;
  padding: 0;
  list-style: none;
}
#left-side {
  height: 100%;
  width: 15%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -webkit-align-items: center;
	  -ms-flex-align: center;
		  align-items: center;
  -webkit-box-pack: center;
  -webkit-justify-content: center;
	  -ms-flex-pack: center;
		  justify-content: center;
}
#fourth {
  position: absolute;
  height: 700px;
  width: 75%;
  margin-top: -350px;
  opacity: 0;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -webkit-align-items: center;
	  -ms-flex-align: center;
		  align-items: center;
  -webkit-box-pack: center;
  -webkit-justify-content: center;
	  -ms-flex-pack: center;
		  justify-content: center;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
	  -ms-flex-direction: column;
		  flex-direction: column;
}
#left-side ul li {
  padding-top: 10px;
  padding-bottom: 10px;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  line-height: 34px;
  color: rgba(51, 51, 51, 0.5);
  font-weight: 500;
  cursor: pointer;
  -webkit-transition: all .2s ease-out;
		  transition: all .2s ease-out;
}
#left-side ul li:hover {
  color: #333333;
  -webkit-transition: all .2s ease-out;
		  transition: all .2s ease-out;
}
#left-side ul li:hover > .icon {
  fill: #333;
}
#left-side ul li.active {
  color: #333333;
}
#left-side ul li.active:hover > .icon {
  fill: #E74C3C;
}  
.icon {
  position: relative;
  width: 32px;
  height: 32px;
  display: block;
  fill: rgba(51, 51, 51, 0.5);
  margin-right: 20px;
  -webkit-transition: all .2s ease-out;
		  transition: all .2s ease-out;
}

.icon.active {
  fill: #E74C3C;
}

.icon.big {
  width: 64px;
  height: 64px;
  fill: rgba(51, 51, 51, 0.5);
}
#border {
  height: 288px;
  width: 1px;
  background-color: rgba(51, 51, 51, 0.2);
}
#border #line.one {
  width: 5px;
  height: 54px;
  background-color: #E74C3C;
  margin-left: -2px;
  margin-top: 35px;
  -webkit-transition: all .4s ease-in-out;
		  transition: all .4s ease-in-out;
}
#border #line.two {
  width: 5px;
  height: 54px;
  background-color: #E74C3C;
  margin-left: -2px;
  margin-top: 89px;
  -webkit-transition: all .4s ease-in-out;
		  transition: all .4s ease-in-out;
}
#border #line.three {
  width: 5px;
  height: 54px;
  background-color: #E74C3C;
  margin-left: -2px;
  margin-top: 143px;
  -webkit-transition: all .4s ease-in-out;
		  transition: all .4s ease-in-out;
}
#border #line.four {
  width: 5px;
  height: 54px;
  background-color: #E74C3C;
  margin-left: -2px;
  margin-top: 197px;
  -webkit-transition: all .4s ease-in-out;
		  transition: all .4s ease-in-out;
} 
#right-side {
  height: 700px;
  width: 75%;
  overflow: hidden;
}
#right-side #first, #right-side #second, #right-side #third, #right-side #fourth {
  position: absolute;
  height: 700px;
  width: 75%;
  margin-top: -350px;
  opacity: 0;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -webkit-align-items: center;
	  -ms-flex-align: center;
		  align-items: center;
  -webkit-box-pack: center;
  -webkit-justify-content: center;
	  -ms-flex-pack: center;
		  justify-content: center;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
	  -ms-flex-direction: column;
		  flex-direction: column;
}
#right-side #first h1, #right-side #second h1, #right-side #third h1, #right-side #fourth h1 {
  font-weight: 800;
  color: #333;
}
#right-side #first p, #right-side #second p, #right-side #third p, #right-side #fourth p {
  color: #333;
  font-weight: 500;
  padding-left: 30px;
  padding-right: 30px;
}
#right-side #first.active, #right-side #second.active, #right-side #third.active, #right-side #fourth.active {
  margin-top: 0px;
  opacity: 1;	  
} 
</style>

</head>
<body>
    <form id="form1" runat="server">
<svg id="svg-source" height="0" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="position: absolute">
  <g id="credit-card" data-iconmelon="e-commerce icons:c3144b166f93e0f6b73aee04a0a48397">
<path d="M 214.2998 77.09995 C 214.2998 77.09995 227.1998 22.99995 282.5998 9.999949 L 691.4998 9.999949 L 650.3998 118.5999 L 322.8998 118.5999 L 214.2998 77.09995 ZM 718.5998 9.999949 L 677.1998 118.5999 L 677.1998 404.3 L 759.1998 485.7 L 785.7997 459.9999 L 785.7997 77.09995 C 785.6998 77.09995 776.2998 23.39995 718.5998 9.999949 ZM 731.3998 499.9999 L 677.0999 445.7 L 322.8998 445.7 L 268.5998 499.9999 L 731.3998 499.9999 ZM 214.2998 922.9 C 214.2998 922.9 227.1998 976.9999 282.5998 989.9999 L 691.4998 989.9999 L 650.3998 881.4 L 322.8998 881.4 L 214.2998 922.9 ZM 718.5998 989.9999 L 677.1998 881.4 L 677.1998 595.7 L 759.1998 514.2999 L 785.7997 539.9999 L 785.7997 922.9 C 785.6998 922.9 776.2998 976.5999 718.5998 989.9999 ZM 731.3998 499.9999 L 677.0999 554.2999 L 322.8998 554.2999 L 268.5998 499.9999 L 731.3998 499.9999 Z"></path>
  </g>
  <g id="gift" data-iconmelon="e-commerce icons:05fa65d254ada5a9cb5c2f1e8d87f02b">
<path d="M 214.2998 77.09995 C 214.2998 77.09995 227.1998 22.99995 282.5998 9.999949 L 691.4998 9.999949 L 650.3998 118.5999 L 322.8998 118.5999 L 214.2998 77.09995 ZM 718.5998 9.999949 L 677.1998 118.5999 L 677.1998 404.3 L 759.1998 485.7 L 785.7997 459.9999 L 785.7997 77.09995 C 785.6998 77.09995 776.2998 23.39995 718.5998 9.999949 ZM 731.3998 499.9999 L 677.0999 445.7 L 322.8998 445.7 L 268.5998 499.9999 L 731.3998 499.9999 ZM 214.2998 922.9 C 214.2998 922.9 227.1998 976.9999 282.5998 989.9999 L 691.4998 989.9999 L 650.3998 881.4 L 322.8998 881.4 L 214.2998 922.9 ZM 214.2998 894.2999 L 322.8998 853.5999 L 322.8998 595.7 L 241.1998 514.2999 L 214.2998 539.9999 L 214.2998 894.2999 ZM 731.3998 499.9999 L 677.0999 554.2999 L 322.8998 554.2999 L 268.5998 499.9999 L 731.3998 499.9999 Z"></path>
  </g>
  <g id="package" data-iconmelon="e-commerce icons:de2d76203b2448ee25bda0d82fa73c00">
	<path d="M 487.0998 9.999949 L 445.6998 118.5999 L 445.6998 404.3 L 527.6998 485.7 L 554.2998 459.9999 L 554.2998 77.09995 C 554.2998 77.09995 544.8998 23.39995 487.0998 9.999949 ZM 487.0998 989.9999 L 445.6998 881.4 L 445.6998 595.7 L 527.6998 514.2999 L 554.2998 539.9999 L 554.2998 922.9 C 554.2998 922.9 544.8998 976.5999 487.0998 989.9999 z"></path>
  </g>
</svg>
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
			<div class="row">	  
			<div class="col-md-8 col-sm-12 col-xs-12">                     
				<div class="panel panel-default">
				<div class="alert alert-success" >				
				<ol class="breadcrumb" style="padding:0px 0px 0px 0px;background-color:transparent;margin:0px;">
				  <li><a href="#" style="color:#31708f"><strong>华清嘉园</strong></a></li>
				  <li class="active"  > <strong>天宇大厦A座</strong></li>
				</ol> 
				</div>
					<div class="panel-heading" >
						 <a href="#" class="btn btn-info">闲置</a>
										<div class="btn-group">
										  <button class="btn btn-primary">水费</button>
										  <button data-toggle="dropdown" class="btn btn-primary dropdown-toggle"><span class="caret"></span></button>
										  <ul class="dropdown-menu">
											<li><a href="#">今日</a></li>
											<li><a href="#">当月</a></li>
											<li><a href="#">当年</a></li>
											<li class="divider"></li>
											<li><a href="#">欠费</a></li>
										  </ul>
										</div>
										<div class="btn-group">
										  <button class="btn btn-danger">电费</button>
										  <button data-toggle="dropdown" class="btn btn-danger dropdown-toggle"><span class="caret"></span></button>
										  <ul class="dropdown-menu">
											<li><a href="#">今日</a></li>
											<li><a href="#">当月</a></li>
											<li><a href="#">当年</a></li>
											<li class="divider"></li>
											<li><a href="#">欠费</a></li>
										  </ul>
										</div>
                                           <div class="btn-group">
										  <button class="btn btn-warning">物业费</button>
										  <button data-toggle="dropdown" class="btn btn-warning dropdown-toggle"><span class="caret"></span></button>
										  <ul class="dropdown-menu">
											<li><a href="#">Action</a></li>
											<li><a href="#">Another action</a></li>
											<li><a href="#">Something else here</a></li>
											<li class="divider"></li>
											<li><a href="#">Separated link</a></li>
										  </ul>
										</div>
									 
										<div class="btn-group">
										  <button class="btn btn-success">Success</button>
										  <button data-toggle="dropdown" class="btn btn-success dropdown-toggle"><span class="caret"></span></button>
										  <ul class="dropdown-menu">
											<li><a href="#">Action</a></li>
											<li><a href="#">Another action</a></li>
											<li><a href="#">Something else here</a></li>
											<li class="divider"></li>
											<li><a href="#">Separated link</a></li>
										  </ul>
										</div>				
					</div>
			<div class="panel-body">
				<div class="for_btn" id="ditu" style="height: 700px">
					 <div id="left-side"  style="float:left;">
						
                         <ul>
						<li class="choose ">
							<div class="icon ">
							<svg viewBox="0 0 1000 1000">
								<g filter="">
								<use xlink:href="#shopping-cart"></use>
								</g>
							</svg>
							</div>
						</li>
						<li class="pay">
							<div class="icon">
							<svg viewBox="0 0 1000 1000">
								<g filter="">
								<use xlink:href="#credit-card"></use>
								</g>
							</svg>
							</div>
							
						</li>
						<li class="wrap">
							<div class="icon">
							<svg viewBox="0 0 1000 1000">
								<g filter="">
								<use xlink:href="#gift"></use>
								</g>
							</svg>
							</div>
							
						</li>
						<li class="ship active">
							<div class="icon active">
							<svg viewBox="0 0 1000 1000">
								<g filter="">
								<use xlink:href="#package"></use>
								</g>
							</svg>
							</div>
							
						</li>
						</ul>
					</div>
					
					  <!-- <div id="border">
						<div id="line" class="one"></div>
					  </div> -->
					<!-- 右侧 -->
						<div id="right-side" style="float:left;">
						
                            <!--   层 -->	
                            	<div id="third">
                            
                            	</div>
                            <!--   层 -->	
                            	<div id="second">
                            
                            	</div>
                            <!--   层 -->	
                            	<div id="first"  class="active">
                            	
                            	</div>
							
						</div>
					  <!-- <div id="right-side"  style="float:left;"></div> -->	
						
						
						
				</div>
					
					
					<div class="students_star">
						<!-- <p class="cell_list"><span class="lf">姓名：<span class="darks">小明</span></span> <span class="rt">薪资 ：<span class="darks">15k</span></span>
						</p>
						<p class="cell_list"><span>入职：<span class="darks">把酒问青天</span></span>
						</p> -->
						
						<div class="zwjs">
							自我介绍是向别人展示你自我介绍好不好,甚至直接关系到你给别人的第一印象的好坏及以后自我介绍是向别人展示你自我介绍好不好
							
						</div>
						<div class="alert alert-info" >
									<strong>Well done!</strong> You successfully read this important alert message.
								</div>
					</div>
					</div>
				</div>            
			</div>
			
			
			
			<div class="col-md-4 col-sm-12 col-xs-12">                     
				<div class="panel panel-default">
					<!-- <div class="panel-heading">
						基本信息
					</div> -->
					<div class="alert alert-info" >
									<strong>房源基本信息</strong>
								</div>
					<div class="panel-body">
						
					<div class="for_btn">
		<p class="cell_list"><span class="lf">房源ID:<span class="darks">123</span></span></p>	<div style="margin-bottom: 20px">	
		<button class="btn btn-default"><i class=" fa fa-refresh "></i> Update</button>
											<button class="btn btn-primary"><i class="fa fa-edit "></i> Edit</button>
											<button class="btn btn-danger"><i class="fa fa-pencil"></i> Delete</button>
											</div>
						
						 <div class="form-group input-group">
                                            <span class="input-group-addon">房源名称</span>
                                            <input type="text"  id="roomname" class="form-control" placeholder="Username">
                         </div>
						 <div class="form-group input-group">
                                            <span class="input-group-addon">房源编号</span>
                                            <input type="text" id="name" class="form-control" placeholder="Username">
                         </div>
						 <div class="form-group input-group">
                                            <span class="input-group-addon"><span style="margin-right:28px;">楼</span>层</span>
                                            <input type="text" id="roomfloor" class="form-control" placeholder="Username">
                         </div>
						  <div class="form-group input-group">
                                            <span class="input-group-addon"><span style="margin-right:28px;">面</span>积</span>
                                            <input type="text" id="roomareasize" class="form-control" placeholder="Username">
                         </div>
						  
						 
						 
						<div class="form-group">
                              <label>房源类型：</label>
                              <label class="radio-inline">
								  <input type="radio" name="Status_FY" id="Status_ZF" value="option1" >住房
                              </label>
                              <label class="radio-inline">
                                  <input type="radio" name="Status_FY" id="Status_SP" value="option2">商铺
                              </label>
							  <button type='button' onclick='SPchecked()'>
							  <script>
							  //后台取出房源类型后选中相应的房源
							  function SPchecked(){
                                  
							  $("#Status_SP").attr("checked","checked");
							  $("#shopowner").show();$("#houseowner").hide();
							  }
							  function ZFchecked(){
							  $("#Status_ZF").attr("checked","checked");
							  $("#houseowner").show();$("#shopowner").hide();
							  }
							  </script>
							  <script>
							  //填写信息时改变房源类型
							  $('input:radio[name="Status_FY"]').change( function() {
							  if ($("#Status_SP").get(0).checked) {
								$("#shopowner").show();$("#houseowner").hide();}
							  else if($("#Status_ZF").get(0).checked){
								$("#houseowner").show();$("#shopowner").hide();}	})				  
							  </script>
                        </div>
						<div id='shopowner' style="display:none">
						 <div class="form-group input-group">
                                            <span class="input-group-addon"><span style="margin-right:28px;">租</span>户</span>
                                            <input type="text" class="form-control" placeholder="Username">
                         </div>
						 <div class="form-group input-group">
                                            <span class="input-group-addon"><span style="margin-right:28px;">电</span>话</span>
                                            <input type="text" class="form-control" placeholder="Username">
                         </div>
						 <div class="form-group input-group">
                                            <span class="input-group-addon"><span style="margin-right:28px;">地</span>址</span>
                                            <input type="text" class="form-control" placeholder="Username">
                         </div>
						</div>
						
						<div id='houseowner' >
						 <div class="form-group input-group">
                                            <span class="input-group-addon"><span style="margin-right:28px;">户</span>主</span>
                                            <input type="text" class="form-control" placeholder="Username">
                         </div>
						 <div class="form-group input-group">
                                            <span class="input-group-addon"><span style="margin-right:28px;">电</span>话</span>
                                            <input type="text" class="form-control" placeholder="Username">
                         </div>
						 <div class="form-group input-group">
                                            <span class="input-group-addon">备用联系人</span>
                                            <input type="text" class="form-control" placeholder="Username">
                         </div>
						</div>
						
						<div id='chartshow' >
						 <label>数据变化</label>
						<div style="margin-left:20px;margin-top:10px">	
		
								<a href="#" class="btn btn-success btn-sm">success</a>
                    <a href="#" class="btn btn-primary btn-sm">primary</a>
                    <a href="#" class="btn btn-danger btn-sm">danger</a>			
						</div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Username</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
						</div>
					</div>
					<p id="p3">dfdsf</p>
					</div>						
				</div>            
			</div> 
			
			<div class="col-md-4">
                   
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Hover Rows
                        </div>
						<div style="margin-left:20px">	
		
								<a href="#" class="btn btn-success btn-sm">success</a>
                    <a href="#" class="btn btn-primary btn-sm">primary</a>
                    <a href="#" class="btn btn-danger btn-sm">danger</a>			
						</div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Username</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    
                </div>
			
			
			</div>

				  



			

			</div>
		 <!-- /. PAGE INNER  -->
		</div>
	 <!-- /. PAGE WRAPPER  -->
	</div>
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




 <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
       <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>

	       <script type="text/javascript" src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"> </script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts-all-3.js"></script>












<script type="text/javascript">
      var myChart1 = echarts.init(document.getElementById('first'));
      $.get('zuo3C1.json',function(geoJson) {
        echarts.registerMap('fangyuan', geoJson);
      option1 = {
          title: {
            text: '天宇大厦A座1层',
			left:'center'
            
          },
          tooltip: {
            trigger: 'item',
            formatter: '{b}<br/>{c} (p / km2)'
          },
          
          visualMap: {
			pieces:[
			{min:0,max:1.5,label:'已租'},
			{min:1.5,max:3,label:'未租'},],
			 color: ['#d94e5d','#eac736','#50a3ba'],
			left:'center',
			orient:'horizontal'
            },
          series: [{
            //name: 'iphone3',
            type: 'map',
            mapType: 'fangyuan',
			aspectScale: 1,
            itemStyle: {
              normal: {
				areaColor:'orange',//地图颜色
                label: {
                  show: true
                }
              },
              emphasis: {
                  areaColor: 'green',//鼠标划过时颜色
                label: {
                  show: true
                }
              }
            },
            data: [],
          }]
      };
      myChart1.setOption(option1);
      //updatecolor();
      /////ajax获取data值
      //function updatecolor() {
      //    var pd1 = { "name1": 1 };
      //    $.ajax({
      //        type: "post",
      //        url: "getdata.ashx",
      //        data: pd1,
      //        dataType: "text",
      //        success: function (data) {
      //            var varReceiver = jQuery.parseJSON(data);
      //            var varSeries = new Array(varReceiver.Count[0].total);
      //            for (var i = 0; i < varReceiver.Count[0].total; i++)
      //            { varSeries[i] = varReceiver.Rows[i]; }
      //            myChart3.setOption({
      //                title: { text: '抵达了' },
      //                series: [{
      //                    name: '测试',
      //                    data: varSeries
      //                }]
      //            });
      //        },
      //        error: function (XMLHttpRequest, textStatus, errorThrown) {
      //            alert(errorThrown);
      //        }
      //    });
      //}
      myChart1.on("click", showdata);
      });
      window.onresize=myChart1.resize;
    </script>
<script>
    //点击地图，显示地图属性数据
             function showdata(param) {
                 var name = param.name;
                 var pd = { "name": name };
                 $.ajax({
                     type:"post",
                     url: "fangyuan.ashx",
                     data: pd,
                     datatype: "text",
                     success: function (data) {
                         var vardataReceiver = jQuery.parseJSON(data);
                         var floor = vardataReceiver.floor;
                         var name = vardataReceiver.name;
                         var roomname = vardataReceiver.roomname;
                         var areasize = vardataReceiver.areasize;
                         document.getElementById("roomfloor").value = floor;
                         document.getElementById("name").value = name;
                         document.getElementById("roomname").value = roomname;
                         document.getElementById("roomareasize").value = areasize+"平方米";
                     },
                     error: function (err) { alert("错误");}
                 });
               
             }
</script>
<script type="text/javascript">
      var myChart2 = echarts.init(document.getElementById('second'));
      myChart2.showLoading();	//jquery的组件
      $.get('zuo3C2.json',function(geoJson) {

        myChart2.hideLoading();

        echarts.registerMap('HK', geoJson);

        myChart2.setOption(option = {
          title: {
			text: '天宇大厦A座2层',
			left:'center'
          },
          tooltip: {
            trigger: 'item',
            formatter: '{b}<br/>{c} (p / km2)'
          },

 
	

                   visualMap: {
			pieces:[
			{min:0,max:1.5,label:'已租'},
			{min:1.5,max:3,label:'未租'},],
			 color: ['#d94e5d','#eac736','#50a3ba'],
			left:'center',
			orient:'horizontal'
            },
          series: [{
            name: 'iphone3',
            type: 'map',
            mapType: 'HK',
			aspectScale: 1,
            // 自定义扩展图表类型
			
            itemStyle: {
              normal: {
                label: {
                  show: true
                }
              },
              emphasis: {
                label: {
                  show: true
                }
              }
            },
            data: [{
              name: '花地瑪堂區',
              value: 1
            },
            {
              name: '花王堂區',
              value: 2
            },
            {
              name: '望德堂區',
              value: 2
            },
            {
              name: '大堂區',
              value: 1
            },
            {
              name: '風順堂區',
              value: 1
            },
            {
              name: '嘉模堂區',
              value: 2
            },
            {
              name: '路氹填海區',
              value: 1
            },
            {
              name: '聖方濟各堂區',
              value: 2
            }],

          }]
        });
      });
      //myChart.setOption(option,true); //多余的
      window.onresize=myChart1.resize;
    </script> 	
	
	
<script type="text/javascript">
      var myChart3 = echarts.init(document.getElementById('third'));
      myChart3.showLoading();	//jquery的组件
      //$.get('you2E3.json',function(geoJson) {
		$.get('zuo3C3.json',function(geoJson) {
        myChart3.hideLoading();

        echarts.registerMap('HK', geoJson);

        myChart3.setOption(option = {
          title: {
          text: '天宇大厦A座3层',
			left:'center'
          },
          tooltip: {
            trigger: 'item',
            formatter: '{b}<br/>{c} (p / km2)'
          },

 
	

                   visualMap: {
			pieces:[
			{min:0,max:1.5,label:'已租'},
			{min:1.5,max:3,label:'未租'},],
			 color: ['#d94e5d','#eac736','#50a3ba'],
			left:'center',
			orient:'horizontal'
            },
          series: [{
            name: 'iphone3',
            type: 'map',
            mapType: 'HK',
			aspectScale: 1,
            // 自定义扩展图表类型
			
            itemStyle: {
              normal: {
                label: {
                  show: true
                }
              },
              emphasis: {
                label: {
                  show: true
                }
              }
            },
            data: [{
              name: '花地瑪堂區',
              value: 1
            },
            {
              name: '花王堂區',
              value: 2
            },
            {
              name: '望德堂區',
              value: 2
            },
            {
              name: '大堂區',
              value: 1
            },
            {
              name: '風順堂區',
              value: 1
            },
            {
              name: '嘉模堂區',
              value: 2
            },
            {
              name: '路氹填海區',
              value: 1
            },
            {
              name: '聖方濟各堂區',
              value: 2
            }],

          }]
        });
      });
      //myChart.setOption(option,true); //多余的
      
    </script>	

	
<script>
$('.ship').click(function () {
	
	$('.pay').removeClass('active');
	$('.wrap').removeClass('active');
	$('.ship').removeClass('active');
	$('.pay > .icon').removeClass('active');
	$('.wrap > .icon').removeClass('active');
	$('.ship > .icon').removeClass('active');
	$('#line').addClass('one');
	$('#line').removeClass('two');
	$('#line').removeClass('three');
	$('#line').removeClass('four');
});
$('.wrap').click(function () {
	$('.pay').addClass('active');
	$('.pay > .icon').addClass('active');
	
	$('.wrap').removeClass('active');
	$('.ship').removeClass('active');
	
	$('.wrap > .icon').removeClass('active');
	$('.ship > .icon').removeClass('active');
	$('#line').addClass('two');
	$('#line').removeClass('one');
	$('#line').removeClass('three');
	$('#line').removeClass('four');
});
$('.pay').click(function () {
	$('.wrap').addClass('active');
	$('.wrap > .icon').addClass('active');
	$('.pay').removeClass('active');
	
	$('.ship').removeClass('active');
	$('.pay > .icon').removeClass('active');
	
	$('.ship > .icon').removeClass('active');
	$('#line').addClass('three');
	$('#line').removeClass('two');
	$('#line').removeClass('one');
	$('#line').removeClass('four');
});





$('.ship').click(function () {
	$('#first').addClass('active');
	$('#second').removeClass('active');
	$('#third').removeClass('active');

});
$('.wrap').click(function () {
	$('#first').removeClass('active');
	$('#second').addClass('active');
	$('#third').removeClass('active');

});
$('.pay').click(function () {
	$('#first').removeClass('active');
	$('#second').removeClass('active');
	$('#third').addClass('active');
	
});
</script> 
   
    </form>
</body>
</html>
