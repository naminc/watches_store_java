<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/views/includes/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><c:out value="${pageTitle != null ? pageTitle : 'Admin'}"/></title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

  <link rel="stylesheet" href="<c:url value='/admin-assets/libs-bower/bootstrap/dist/css/bootstrap.min.css'/>">
  <link rel="stylesheet" href="<c:url value='/admin-assets/libs-bower/font-awesome/css/font-awesome.min.css'/>">
  <link rel="stylesheet" href="<c:url value='/admin-assets/libs-bower/Ionicons/css/ionicons.min.css'/>">
  <link rel="stylesheet" href="<c:url value='/admin-assets/adminlte/css/AdminLTE.min.css'/>">
  <link rel="stylesheet" href="<c:url value='/admin-assets/adminlte/css/skins/skin-purple.min.css'/>">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <link rel="stylesheet" href="<c:url value='/admin-assets/css/custom.css'/>?v=<%= System.currentTimeMillis() %>">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet" />

</head>
<body class="hold-transition skin-purple sidebar-mini">
<div class="wrapper">
<header class="main-header">
  <a href="<c:url value='/admin'/>" class="logo">
    <span class="logo-mini"><b>A</b>LT</span>
    <span class="logo-lg"><b>Admin</b>Panel</span>
  </a>
  <nav class="navbar navbar-static-top" role="navigation">
    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
      <span class="sr-only">Toggle navigation</span>
    </a>
    <div class="navbar-custom-menu">
      <ul class="nav navbar-nav">
        <!-- Messages -->
<%--        <li class="dropdown messages-menu">--%>
<%--          <a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
<%--            <i class="fa fa-envelope-o"></i>--%>
<%--            <span class="label label-success">4</span>--%>
<%--          </a>--%>
<%--          <ul class="dropdown-menu">--%>
<%--            <li class="header">You have 4 messages</li>--%>
<%--            <li>--%>
<%--              <ul class="menu">--%>
<%--                <li>--%>
<%--                  <a href="#">--%>
<%--                    <div class="pull-left">--%>
<%--                      <img src="<c:url value='/admin-assets/adminlte/img/user2-160x160.jpg'/>" class="img-circle" alt="User Image">--%>
<%--                    </div>--%>
<%--                    <h4>--%>
<%--                      Support Team--%>
<%--                      <small><i class="fa fa-clock-o"></i> 5 mins</small>--%>
<%--                    </h4>--%>
<%--                    <p>Why not buy a new awesome theme?</p>--%>
<%--                  </a>--%>
<%--                </li>--%>
<%--              </ul>--%>
<%--            </li>--%>
<%--            <li class="footer"><a href="#">See All Messages</a></li>--%>
<%--          </ul>--%>
<%--        </li>--%>

<%--        <!-- Notifications -->--%>
<%--        <li class="dropdown notifications-menu">--%>
<%--          <a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
<%--            <i class="fa fa-bell-o"></i>--%>
<%--            <span class="label label-warning">10</span>--%>
<%--          </a>--%>
<%--          <ul class="dropdown-menu">--%>
<%--            <li class="header">You have 10 notifications</li>--%>
<%--            <li>--%>
<%--              <ul class="menu">--%>
<%--                <li>--%>
<%--                  <a href="#">--%>
<%--                    <i class="fa fa-users text-aqua"></i> 5 new members joined today--%>
<%--                  </a>--%>
<%--                </li>--%>
<%--              </ul>--%>
<%--            </li>--%>
<%--            <li class="footer"><a href="#">View all</a></li>--%>
<%--          </ul>--%>
<%--        </li>--%>

<%--        <!-- Tasks -->--%>
<%--        <li class="dropdown tasks-menu">--%>
<%--          <a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
<%--            <i class="fa fa-flag-o"></i>--%>
<%--            <span class="label label-danger">9</span>--%>
<%--          </a>--%>
<%--          <ul class="dropdown-menu">--%>
<%--            <li class="header">You have 9 tasks</li>--%>
<%--            <li>--%>
<%--              <ul class="menu">--%>
<%--                <li>--%>
<%--                  <a href="#">--%>
<%--                    <h3>--%>
<%--                      Design some buttons--%>
<%--                      <small class="pull-right">20%</small>--%>
<%--                    </h3>--%>
<%--                    <div class="progress xs">--%>
<%--                      <div class="progress-bar progress-bar-aqua" style="width: 20%"--%>
<%--                           role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">--%>
<%--                        <span class="sr-only">20% Complete</span>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                  </a>--%>
<%--                </li>--%>
<%--              </ul>--%>
<%--            </li>--%>
<%--            <li class="footer"><a href="#">View all tasks</a></li>--%>
<%--          </ul>--%>
<%--        </li>--%>

        <!-- User Menu -->
        <li class="dropdown user user-menu">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <img src="<c:url value='/admin-assets/adminlte/img/user2-160x160.jpg'/>" class="user-image" alt="User Image">
            <span class="hidden-xs">naminc</span>
          </a>
          <ul class="dropdown-menu">
            <li class="user-header">
              <img src="<c:url value='/admin-assets/adminlte/img/user2-160x160.jpg'/>" class="img-circle" alt="User Image">
              <p>
                naminc
                <small>admin@naminc.dev</small>
              </p>
            </li>
            <li class="user-footer">
              <div class="pull-left">
                <a href="<c:url value='/home'/>" class="btn btn-default btn-flat">Return Home</a>
              </div>
              <div class="pull-right">
                <a href="<c:url value='/logout'/>" class="btn btn-default btn-flat">
                  Logout
                </a>
              </div>
            </li>
          </ul>
        </li>

        <li>
          <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
        </li>
      </ul>
    </div>
  </nav>
</header>
<aside class="main-sidebar">
  <section class="sidebar">
    <%-- User panel (nếu cần) --%>
    <%--
    <div class="user-panel">
        <div class="pull-left image">
            <img src="<c:url value='/admin-assets/adminlte/img/user2-160x160.jpg'/>" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
            <p>${user.fullname}</p>
            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
    </div>

    <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
            <input type="text" name="q" class="form-control" placeholder="Search...">
            <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                    <i class="fa fa-search"></i>
                </button>
            </span>
        </div>
    </form>
    --%>

    <ul class="sidebar-menu" data-widget="tree">
      <li class="header">MENU</li>

      <li class="active">
        <a href="<c:url value='/admin'/>">
          <i class="fa fa-home"></i> <span>Home</span>
        </a>
      </li>

      <%-- <li><a href="#"><i class="fa fa-link"></i> <span>Another Link</span></a></li> --%>

      <li>
        <a href="<c:url value='/admin/settings'/>">
          <i class="fa fa-cogs"></i> <span>System Management</span>
        </a>
      </li>

      <li class="treeview">
        <a href="#">
          <i class="fa fa-dropbox"></i> <span>Products Management</span>
          <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="<c:url value='/admin/categories'/>">Categories</a></li>
          <li><a href="<c:url value='/admin/products'/>">Products</a></li>
        </ul>
      </li>

      <li>
        <a href="<c:url value='/admin/orders'/>">
          <i class="fa fa-shopping-cart"></i> <span>Orders Management</span>
        </a>
      </li>

      <li>
        <a href="<c:url value='/admin/users'/>">
          <i class="fa fa-users"></i> <span>Users Management</span>
        </a>
      </li>
    </ul>
  </section>
</aside>
