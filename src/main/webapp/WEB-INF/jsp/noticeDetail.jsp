<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false"
         import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>공지사항 - ${no_detail.title}</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="${path}/NiceAdmin/assets/img/favicon.png" rel="icon">
    <link href="${path}/NiceAdmin/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="${path}/NiceAdmin/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${path}/NiceAdmin/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="${path}/NiceAdmin/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="${path}/NiceAdmin/assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="${path}/NiceAdmin/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="${path}/NiceAdmin/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="${path}/NiceAdmin/assets/vendor/simple-datatables/style.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="${path}/NiceAdmin/assets/css/style.css" rel="stylesheet">

    <!-- =======================================================
    * Template Name: NiceAdmin - v2.3.1
    * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
</head>
<script src="http://code.jquery.com/jquery-latest.js"></script> 

<style>
    @media (min-width: 1200px) {
        #main,
        #footer {
            margin-left: 0px;
        }
    }

    th{
        font-size: x-large;
    }

    #create_date{
        text-align: right;
        vertical-align: bottom;
        font-size: small;
    }

    #writer{
        text-align: right;
        font-size: small;
    }
</style>
<body>
  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="#" class="logo d-flex align-items-center">
        <img src="${path}/NiceAdmin/assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">NiceAdmin</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="${path}/NiceAdmin/assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">${loginId}</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>${loginId}</h6>
              <span>Web Designer</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-gear"></i>
                <span>Account Settings</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>Need Help?</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

    <main id="main" class="main">
        <div class="card">
            <img src="${path}/img/what-is-coding-1.jpg" width="100%">
        </div>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">공지사항</h5>
                <div class="text-end">
                    <button id="editBtn" class="btn btn-primary btn-sm" type="button" >수정</button>
                    <button id="deleteBtn" class="btn btn-danger btn-sm" type="button" >삭제</button>
                </div>
                <table class="table border-secondary">
                    <tr><th scope="row" colspan="2"></th></tr>
                    <tr>
                        <th scope="row">${no_detail.title}</th>
                        <td id="create_date"><fmt:formatDate value="${no_detail.create_date}" pattern="yyyy-MM-dd"/></td>
                    </tr>
                    <tr>
                        <td colspan="2" id="writer">작성자 : ${no_detail.writer}</td>
                    </tr>
                    <tr height="300">
                        <td colspan="2">${no_detail.content}</td>
                    </tr>
                        <c:if test="${not empty no_detail.file}">
                            <tr>
                                <td colspan="2" onclick="${path}/download?fname=${no_detail.file}">첨부파일 : ${no_detail.file}</td>
                            </tr>
                        </c:if>
                </table>
                <div class="text-center">
                        <button id="listBtn" class="btn btn-outline-secondary btn-sm w-50" type="button" >목록으로</button>
                </div>
            </div>
        </div>
    </main><!-- End #main -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="${path}/NiceAdmin/assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="${path}/NiceAdmin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${path}/NiceAdmin/assets/vendor/chart.js/chart.min.js"></script>
<script src="${path}/NiceAdmin/assets/vendor/echarts/echarts.min.js"></script>
<script src="${path}/NiceAdmin/assets/vendor/quill/quill.min.js"></script>
<script src="${path}/NiceAdmin/assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="${path}/NiceAdmin/assets/vendor/tinymce/tinymce.min.js"></script>
<script src="${path}/NiceAdmin/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="${path}/NiceAdmin/assets/js/main.js"></script>

<script>
    $(document).ready(function(){
        $("#listBtn").click(function(){
            location.href="${path}/noticePage"
        })
        $("#editBtn").click(function(){
            location.href="${path}/noticeEditPage?notice_no=${param.notice_no}"
        })
        $("#deleteBtn").click(function(){
            location.href="${path}/deleteNotice?notice_no=${param.notice_no}"
        })
    });
</script>
</body>

</html>