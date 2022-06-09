<%--
  Created by IntelliJ IDEA.
  User: ladszim17
  Date: 2/12/2021
  Time: 07:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page  session="true" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>

    <%

        String title = "FigJam";

        session.setAttribute("page_title",title);
        session.getAttribute("page_title");

        out.print("<title >" + session.getAttribute("page_title") + "</title>\n");


    %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="description" content="#">
    <meta name="keywords"
          content="Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
    <meta name="author" content="#">
<%--    <link rel="stylesheet" type="text/css" href="lib/css/app.css">--%>
<%--    --%>
<%--    <link rel="stylesheet" type="text/css" href="lib/css/font-awesome.min.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="lib/css/font.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="lib/css/sub.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="lib/css/main.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="lib/css/iconfont.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="lib/css/themify-icons.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="lib/css/sub-main/style.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="lib/css/sub-main/jquery.mCustomScrollbar.css">--%>
<%--   --%>
<%--    <link rel="stylesheet" type="text/css" href="lib/css/custom/select2.min.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="lib/css/custom/multi-select.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="lib/css/custom/responsive.bootstrap4.min.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="assets/css/pcoded-horizontal.min.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="lib/css/bootstrap.min.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="lib/css/custom/style.css">--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/main.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/sub.css">


</head>
<body>
<%--<jsp:include page="preloader.jsp"></jsp:include>--%>
<div id="pcoded" class="pcoded">
    <div class="pcoded-overlay-box"></div>
    <div class="pcoded-container navbar-wrapper">
        <jsp:include page="topBar.jsp"></jsp:include>

        <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <jsp:include page="sideNavbar.jsp"></jsp:include>
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">
                                <div class="page-body">
                                    <jsp:include page="dashboard.jsp"></jsp:include>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
