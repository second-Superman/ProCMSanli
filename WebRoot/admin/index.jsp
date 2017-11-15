<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Data Tables</title>
  <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<%=basePath %>res/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<%=basePath %>res/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<%=basePath %>res/Ionicons/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="<%=basePath %>res/datatables.net-bs/css/dataTables.bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<%=basePath %>res/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<%=basePath %>res/dist/css/skins/_all-skins.min.css">
  

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header">
        <!-- Logo -->
        <a href="#" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>HZJ</b></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>HZJ</b>管理系统</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li>
                        <a>
                            <i class="fa fa-user-circle-o"></i>&nbsp;管理员：${sessionScope.admin.username }
                        </a>
                    </li>
                    <li>
                        <a>
                            <i class="fa fa-bell-o"></i>&nbsp;2017年9月10日 23:22:34 星期五
                        </a>
                    </li>


                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="<%=basePath %>res/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>管理员操作区域</p>
                    <a><i class="fa fa-circle text-success"></i>在线状态</a>
                </div>
            </div>

            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">新闻信息管理</li>
                <li class="treeview active">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span>新闻类型管理</span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span>新闻管理</span>
                    </a>
                </li>
                <li class="header">管理员信息管理</li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span>管理员密码修改</span>
                    </a>
                </li>
                <li class="header">系统功能</li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span>退出后台</span>
                    </a>
                </li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Data Tables <small>advanced tables</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">Tables</a></li>
					<li class="active">Data tables</li>
				</ol>
			</section>




			<!-- /.content-wrapper -->
			<footer class="main-footer">
				<div class="pull-right hidden-xs">
					<b>HZJ后台信息管理：</b> 1.0
				</div>
				<strong>Copyright &copy; 2014-2026 <a href="#">HZJ系列</a>.
				</strong> All rights reserved.
			</footer>


		</div>
		<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="<%=basePath %>res/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<%=basePath %>res/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="<%=basePath %>res/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<%=basePath %>res/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="<%=basePath %>res/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<%=basePath %>res/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<%=basePath %>res/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<%=basePath %>res/dist/js/demo.js"></script>
</body>
</html>
