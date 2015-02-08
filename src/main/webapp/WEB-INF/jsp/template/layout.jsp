<%--
  Created by IntelliJ IDEA.
  User: psn14020
  Date: 2015-01-23
  Time: 오전 8:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html lang="en" class="no-js">
<!--[if lt IE 7]><html lang="en" class="no-js ie6"><![endif]-->
<!--[if IE 7]><html lang="en" class="no-js ie7"><![endif]-->
<!--[if IE 8]><html lang="en" class="no-js ie8"><![endif]-->
<!--[if gt IE 8]><!-->
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>Agency - Start Bootstrap Theme</title>
  <link rel="shortcut icon" href="/resources/img/favicon.png">
  <link rel="stylesheet" href="/resources/css/jquery-ui.min.css">
  <link rel="stylesheet" href="/resources/css/bootstrap.css">
  <link rel="stylesheet" href="/resources/css/animate.css">
  <link rel="stylesheet" href="/resources/css/font-awesome.min.css">
  <link rel="stylesheet" href="/resources/css/slick.css">
  <link rel="stylesheet" href="/resources/js/rs-plugin/css/settings.css">
  <link rel="stylesheet" href="/resources/css/berry.css">
    <style>
        .ui-datepicker-year {
            color:black;
        }
        .ui-datepicker-month {
            color:black;
        }
    </style>
  <script type="text/javascript" src="/resources/js/modernizr.custom.32033.js"></script>
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
  <script src="/resources/js/jquery-1.11.1.min.js"></script>
  <script src="/resources/js/jquery-ui.min.js"></script>
  <script src="/resources/js/bootstrap.min.js"></script>
  <script src="/resources/js/slick.min.js"></script>
  <script src="/resources/js/placeholdem.min.js"></script>
  <script src="/resources/js/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
  <script src="/resources/js/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
  <script src="/resources/js/waypoints.min.js"></script>
  <script src="/resources/js/scripts.js"></script>
  <style>
    .modal-content {
      border: 1px solid #cc6698;
      opacity: 0.9;
    }

    .ui-widget-header {
      border: 1px solid #cc6698;
      background: #cc6698 50% 50% repeat-x;
      color: white;
      font-weight: bold;
    }

    .ui-state-default, .ui-widget-content .ui-state-default, .ui-widget-header .ui-state-default {
      border: 1px solid white;
      background: #cc6698 50% 50% repeat-x;
      font-weight: normal;
      color: white;
    }

    .label-top {
      margin-top:20px;
    }
  </style>
  <title></title>
</head>
<body id="page-top" class="index">
  <tiles:insertAttribute name="modal"/>
  <tiles:insertAttribute name="header"/>
  <tiles:insertAttribute name="body"/>
  <tiles:insertAttribute name="footer"/>
  <script>
    $(document).ready(function() {
      appMaster.preLoader();
    });
  </script>
</body>
</html>
