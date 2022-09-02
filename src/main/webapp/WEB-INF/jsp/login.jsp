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
    <title>Login Page</title>
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

<body>

<main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="#" class="logo d-flex align-items-center w-auto">
                  <img src="${path}/NiceAdmin/assets/img/logo.png" alt="">
                  <span class="d-none d-lg-block">NiceAdmin</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">로그인</h5>
                    <p class="text-center small">아이디와 비밀번호를 입력하세요</p>
                  </div>

                  <form class="row g-3 needs-validation" action="${path}/login" novalidate>

                    <div class="col-12">
                      <label for="yourID" class="form-label">아이디</label>
                      <div class="input-group has-validation">
                      	<input type="text" name="id" class="form-control" id="yourID" required>
                        <div class="invalid-feedback">아이디를 입력하세요</div>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">비밀번호</label>
                      <input type="password" name="passwd" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">비밀번호를 입력하세요</div>
                    </div>

                    <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe">
                        <label class="form-check-label" for="rememberMe">아이디 저장</label>
                      </div>
                    </div>
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="button" id="loginBtn">로그인</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">회원이 아니신가요? <a href="${path}/signupPage">회원가입</a></p>
                    </div>
                  </form>

                </div>
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->
<script>
$(document).ready(function(){
    $("#loginBtn").click(function(){
    	loginCk()
    })
});
function loginCk(){
    if($("[name=id]").val()==""){
    	alert("아이디를 입력해주세요")
    	$("[name=id]").focus()
		return;
    }
    if($("[name=passwd]").val()==""){
    	alert("비밀번호를 입력해주세요")
    	$("[name=passwd]").focus()
		return;
    }
    $("form").submit();
}
var isUser = "${isUser}"
if(isUser == "Y"){
    location.href="${path}/noticePage"
}
if(isUser == "N"){
    alert("아이디, 비밀번호를 확인해주세요.")
    location.href="${path}/loginPage"
}
</script>
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
</body>
</html>