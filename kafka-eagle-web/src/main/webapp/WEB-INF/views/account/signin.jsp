<%@page import="org.smartloli.kafka.eagle.common.util.KConstants"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Login - 慢病大数据平台</title>
	<meta name="description" content="">
	<link rel="shortcut icon" href="/ke/media/img/ke_login4-ico.png" />
	<link rel="stylesheet" href="/ke/media/css/public/account/main.css">
</head>

<body>
<div class="login-page" style="background-color: #132a3a">
	<div class="row">
		<div class="col-lg-4 col-lg-offset-4">
			<img class="user-avatar" src="/ke/media/img/ke_login4.png"
				 width="180px">

			<h1>慢病大数据平台</h1>

			<form role="form" action="/ke/account/signin/action/" method="post"
				  onsubmit="return contextFormValid();return false;">
				<div class="form-content">
					<div class="form-group">
						<input class="form-control input-underline input-lg" id="usr"
							   ng-model="name" name="username" placeholder="Account"
							   autocomplete="off" type="text">
					</div>
					<div class="form-group">
						<input class="form-control input-underline input-lg" id="pwd"
							   name="password" placeholder="Password" name="pwd" type="text">
						<input type="hidden" id="ref_url" name="ref_url" type="text">
					</div>
					<div class="form-group">
						<div id="alert_mssage" style="display: none"
							 class="alert alert-danger"></div>
						${error_msg}
					</div>
				</div>
				<button id="submit" class="btn rounded-btn" routerlink=""style="background-color: #10406b">
					Signin</button>
			</form>
		</div>
	</div>
</div>
</body>
<jsp:include page="../public/script.jsp">
	<jsp:param value="main/account/signin.js" name="loader" />
</jsp:include>
<script type="text/javascript">
	function contextFormValid() {
		var url = window.location.href;
		var ref_url = "";
		var username = $("#usr").val();
		var password = $("#pwd").val();
		if (url.indexOf("?") > -1) {
			ref_url = url.split("?")[1];
		}
		if (ref_url.length == 0) {
			ref_url = "/";
		}
		$("#ref_url").val(ref_url);
		if (username.length == 0 || password.length == 0) {
			$("#alert_mssage").text("Account or password is not null.").show();
			setTimeout(function() {
				$("#alert_mssage").hide()
			}, 3000);
			return false;
		}

		return true;
	}
</script>
</html>