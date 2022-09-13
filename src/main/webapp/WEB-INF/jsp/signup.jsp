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
    <title>Sign Up Page</title>
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
                    <h5 class="card-title text-center pb-0 fs-4">회원 가입</h5>
                    <p class="text-center small">회원 가입에 필요한 정보를 입력하세요</p>
                  </div>

                  <form class="row g-3 needs-validation" action="${path}/signup" novalidate>
                    <div class="col-12">
                      <label for="yourID" class="form-label">아이디</label>
                      <input type="text" name="id" class="form-control" id="yourID" required>
                      <div class="invalid-feedback">아이디를 입력하세요</div>
                      	<div class="text-end">
                        	<span class="text-end">중복체크를 해주세요</span>
                        	<input type="button" class="btn btn-outline-secondary btn-sm" id="duplCkBtn" value="중복체크"><br>
                   		</div>
                    </div>

                  	<div class="col-12">
                      <label for="yourPassword" class="form-label">비밀번호</label>
                      <input type="password" name="passwd" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">비밀번호를 입력하세요</div>
                    </div>

                    <div class="col-12">
                      <label for="yourName" class="form-label">이름</label>
                      <input type="text" name="name" class="form-control" id="yourName" required>
                      <div class="invalid-feedback">이름을 입력하세요</div>
                    </div>

                    <div class="col-12">
                      <label for="yourNickName" class="form-label">닉네임</label>
                      <input type="text" name="nickname" class="form-control" id="yourNickName" required>
                      <div class="invalid-feedback">닉네임을 입력하세요</div>
                    </div>

                    <div class="col-12">
                      <label for="yourEmail" class="form-label">이메일</label>
                      <input type="email" name="email" class="form-control" id="yourEmail" required>
                      <div class="invalid-feedback">이메일을 입력하세요</div>
                    </div>

                    <div class="col-12">
	                    <label for="yourAuth1" class="form-label">권한</label>
	                    <div class="input-group has-validation">
	                    <div class="col-6">
	                    	<div class="form-check">
		                      <input class="form-check-input" type="radio" name="auth" id="yourAuth1" value="user" checked>
		                      <label class="form-check-label" for="yourAuth1">
		                        일반사용자
		                      </label>
		                    </div>
		                </div>
		                <div class="col-6">
		                    <div class="form-check">
		                      <input class="form-check-input" type="radio" name="auth" id="yourAuth2" value="manager">
		                      <label class="form-check-label" for="yourAuth2">
		                        관리자
		                      </label>
		                    </div>
	                    </div>
	                    </div>
                    </div>
                  </form>
                    <div class="col-12">
                        <label for="yourType" class="form-label">개발직군</label>
                        <select name="type" class="form-control" id="yourType" text-align="center">
                            <option>--select--</option>
                            <option value="front-end">front-end</option>
                            <option value="back-end">back-end</option>
                            <option value="server">server</option>
                    </div>
                  <form>
                  </form>
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="button" id="signUpBtn">회원 가입</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">이미 회원이신가요? <a href="pages-login.html">로그인</a></p>
                    </div>


                </div>
              </div>

            </div>
          </div>
        </div>

      </section>
    </div>
  </main><!-- End #main -->
  
<script>
var idck = false
console.log(idck)
$(document).ready(function(){
    $("#duplCkBtn").click(function(){
        var id = $("#yourID").val()
        if(id == ""){
            alert("아이디를 입력해주세요")
            $("#yourID").focus()
            return;
        }else{
            $.ajax({
                url:"${path}/idCheck",
                data:"id="+id,
                dataType:"json",
                async:false,
                success:function(data){
                    if(data=="0"){
                        $("span").text("사용가능한 아이디입니다.").css("color", "green")
                        idck = true
                    }else{
                        $("span").text("이미 사용중인 아이디입니다.").css("color", "red")
                        $("#yourID").val("")
                        $("#yourID").focus()
                        return;
                    }
                }
            })
        }
    })
    $("#signUpBtn").click(function(){
        if(idck){
            console.log(idck)
            $("form").submit()
        }else{
            alert("아이디 중복체크를 해주세요")
            $("#yourID").focus()
            return;
        }
    })
});

var isSignUp = "${isSignUp}"
if(isSignUp == "Y"){
    alert("회원등록이 완료되었습니다.")
    location.href = "${path}/loginPage"
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