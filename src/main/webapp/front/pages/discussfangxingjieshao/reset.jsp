<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Login || Richman</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="shortcut icon" type="image/x-icon" href="../../assets/img/favicon.ico">
        <!-- Place favicon.ico in the root directory -->


		<!-- all css here -->
		<!-- bootstrap v3.3.6 css -->
        <link rel="stylesheet" href="../../assets/css/original/bootstrap.min.css">
		<!-- animate css -->
        <link rel="stylesheet" href="../../assets/css/original/animate.css">
		<!-- jquery-ui.min css -->
        <link rel="stylesheet" href="../../assets/css/original/jquery-ui.min.css">
		<!-- meanmenu css -->
        <link rel="stylesheet" href="../../assets/css/original/meanmenu.min.css">
		<!-- owl.carousel css -->
        <link rel="stylesheet" href="../../assets/css/original/owl.carousel.css">
		<!-- font-awesome css -->
        <link rel="stylesheet" href="../../assets/css/original/font-awesome.min.css">
		<!-- style css -->
		<link rel="stylesheet" href="../../assets/css/original/style.css">
		<!-- responsive css -->
        <link rel="stylesheet" href="../../assets/css/original/responsive.css">
		<!-- modernizr js -->
        <script src="../../assets/js/relys/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
		<div id="app">
			<!-- page-title-area start -->
			<div class="page-title-area">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="title-heading text-center">
								<h1>忘记密码 PAGE</h1>
								<p>Ambition does not stand, there is nothing to do</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- page-title-area end -->
			<!-- login-area start -->
			<div class="login-area">
				<div class="container">
					<div class="row">
						<div class="col-md-3"></div>
						<div class="col-md-6">
							<div class="login-content login-margin">
								<h2 class="login-title">重置密码</h2>
								<p>Reset your own Unicase account.</p>
								<div class="form">
									<label>账号</label>
									<input v-model="username" type="text" />
									<label>原密码</label>
									<input v-model="oldpassword" type="password" />
									<label>新密码</label>
									<input v-model="mima" type="password" />
									<div class="login-lost">
										<span class="forgot-login">
											<a href="javascript:onPageTap('../login/login.jsp')">登录</a>
										</span>
									</div>
									<button class="login-sub" @click="userReset">重置</button>
								</div>
							</div>
						</div>
						<div class="col-md-3"></div>
					</div>
				</div>
			</div>
			<!-- login-area end -->
		</div>

		<!-- all js here -->
		<!-- jquery latest version -->
        <script src="../../assets/js/relys/jquery-1.12.0.min.js"></script>
		<!-- bootstrap js -->
        <script src="../../assets/js/relys/bootstrap.min.js"></script>
		<!-- owl.carousel js -->
        <script src="../../assets/js/relys/owl.carousel.min.js"></script>
		<!-- meanmenu js -->
        <script src="../../assets/js/relys/jquery.meanmenu.js"></script>
		<!-- jquery-ui js -->
        <script src="../../assets/js/relys/jquery-ui.min.js"></script>
		<!-- wow js -->
        <script src="../../assets/js/relys/wow.min.js"></script>
		<!-- plugins js -->
        <script src="../../assets/js/relys/plugins.js"></script>
		<!-- main js -->
        <script src="../../assets/js/relys/main.js"></script>
		<script src="../../assets/js/vue.js"></script>
		<script src="../../assets/js/api/api.js"></script>
		<script src="../../assets/js/api/defaultuser.js"></script>
		<script type="text/javascript">
			var app = new Vue({
				el: "#app",
				data: {
					username: "",
					oldpassword: "",
					mima: "",
					user: {
						id: "",
						refid: "",
						content: "",
						userid: "",
					}
				},
				created(){
					session("discussfangxingjieshao", (res) => {
						if(res&&res.code==0){
							for(var key in res.data){
								this.user[key] = res.data[key]
							}
						}
					})
				},
				methods: {
					userReset(){
						this.user.mima = this.mima
						updateUser('discussfangxingjieshao', this.user, function(res) {
							if(res&&res.code==0){
								alert("密码修改成功")
								window.location.href = '../login/login.jsp'
							}
						})
					}
				}
			})
			function onPageTap(url) {
				console.log(url)
				window.location.href = url;
			}
		</script>
    </body>
</html>
