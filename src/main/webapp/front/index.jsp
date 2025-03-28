<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html>
	<head>
		<title>双月湾亲子高端酒店网站</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
		<!-- Place favicon.ico in the root directory -->

		<!-- all css here -->
		<!-- bootstrap v3.3.6 css -->
		<link rel="stylesheet" href="assets/css/original/bootstrap.min.css">
		<!-- animate css -->
		<link rel="stylesheet" href="assets/css/original/animate.css">
		<!-- jquery-ui.min css -->
		<link rel="stylesheet" href="assets/css/original/jquery-ui.min.css">
		<!-- meanmenu css -->
		<link rel="stylesheet" href="assets/css/original/meanmenu.min.css">
		<!-- owl.carousel css -->
		<link rel="stylesheet" href="assets/css/original/owl.carousel.css">
		<!-- slick slider css -->
		<link rel="stylesheet" href="assets/css/original/slick.css">
		<!-- font-awesome css -->
		<link rel="stylesheet" href="assets/css/original/font-awesome.min.css">
		<!-- style css -->
		<link rel="stylesheet" href="assets/css/original/style.css">
		<link rel="stylesheet" href="assets/css/index.css">
		<!-- responsive css -->
		<link rel="stylesheet" href="assets/css/original/responsive.css">
		<!-- modernizr js -->
		<script src="assets/js/relys/modernizr-2.8.3.min.js"></script>
		<style type="text/css">
			html, body {
		        height: 100%;
		        overflow: auto;
		        margin: 0;
		    }

		    html {
		        overflow: scroll;
		    }

			.main-menu ul li a {
				font-size: 18px;
			}
		</style>
	</head>
	<body>
		<!-- header start -->
		<header id="app">
			<!-- header-bottom-area start -->
			<div id="sticker" class="header-bottom-area">
				<div class="container">
					<div class="inner-container">
						<div class="row">
							<div class="col-md-2 col-sm-4 col-xs-6">
								<div class="logo">
									<div style="line-height: 3.85rem;"></div>
								</div>
							</div>
							<div class="col-md-8 hidden-xs hidden-sm">
								<div class="main-menu">
									<nav>
										<ul v-if="navs">
											<li v-for="(item, i) in navs" :key="i">
												<a :href="`javascript:onPageClick('${item.url}')`" v-if="item.yanzheng&&hstoken">{{item.name}}</a>
												<a href="javascript:onPageClick('./pages/login/login.jsp')" v-if="item.yanzheng&&!hstoken">登录</a>
												<a :href="`javascript:onPageClick('${item.url}')`" v-if="!item.yanzheng&&!item.window">{{item.name}}</a>
												<a :href="`${item.url}`" target="view_window" v-if="!item.yanzheng&&item.window">{{item.name}}</a>
												<ul v-if="item.children.length>0&&hstoken">
													<li v-for="(ele, idx) in item.children" :key="idx"><a :href="`javascript:onPageClick('${ele.url}')`">{{ele.name}}</a></li>
												</ul>
											</li>
										</ul>
									</nav>
								</div>
							</div>
							<div class="col-md-2 col-sm-8 col-xs-6 header-right">
								<div class="my-cart">
									<div class="total-cart">
										<a @click.prevent="onKefuTap">
											<img style="width: 27px;height: 28px;cursor: pointer;" src="assets/img/kefu/kefuicon.png" alt="" />
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- header-bottom-area end -->
			<!-- mobile-menu-area start -->
			<div class="mobile-menu-area visible-xs visible-sm">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="mobile-menu">
								<nav id="dropdown">
									<ul>
										<li v-for="(item, i) in navs" :key="i">
											<a :href="`javascript:onPageClick('${item.url}')`" v-if="item.yanzheng&&hstoken">{{item.name}}</a>
											<a href="javascript:onPageClick('./pages/login/login.jsp')" v-if="item.yanzheng&&!hstoken">登录</a>
											<a :href="`javascript:onPageClick('${item.url}')`" v-if="!item.yanzheng&&!item.window">{{item.name}}</a>
											<a :href="`${item.url}`" target="view_window" v-if="!item.yanzheng&&item.window">{{item.name}}</a>
											<ul v-if="item.children.length>0">
												<li v-for="(ele, idx) in item.children" :key="idx"><a :href="`javascript:onPageClick('${ele.url}')`">{{ele.name}}</a></li>
											</ul>
										</li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- mobile-menu-area end -->
			<!-- kefu-area start -->
			<div class="kefu-area" v-if="kefu">
				<div class="top-bar">
				  <div class="user-info">
				    <div class="user-head">
				      <img src="assets/img/kefu/2.png">
				    </div>
				    <div class="name">在线客服</div>
				    <div class="status online"></div>
				  </div>
				  <div class="buttons" @click="onkefuColoseTap">
				    <div class="call">关闭</div>
				  </div>
				</div>
				<div class="messages" id="messages">
				  <ul>
					  <li v-for="item in kefuList">
						  <div class="message" v-if="item.reply">
						    <div class="user-head">
						      <img src="assets/img/kefu/2.png">
						    </div>
						    <div class="content">{{item.reply}}</div>
						  </div>
						  <div class="message fromme" v-if="item.ask">
						    <div class="user-head">
						      <img src="assets/img/kefu/1.png">
						    </div>
						    <div class="content">{{item.ask}}</div>
						  </div>
					  </li>
				  </ul>
				<div class="bottom-bar">
				  <textarea v-model="kefuask" class="msg-input" placeholder="发送信息"></textarea>
				  <div class="send-button" @click="kefuaddTap">
				    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
				         viewBox="0 0 512.076 512.076" style="enable-background:new 0 0 512.076 512.076;" xml:space="preserve">
				      <g>
				        <path d="M509.532,34.999c-2.292-2.233-5.678-2.924-8.658-1.764L5.213,225.734c-2.946,1.144-4.967,3.883-5.192,7.034
				                 c-0.225,3.151,1.386,6.149,4.138,7.7l102.719,57.875l35.651,174.259c0.222,1.232,0.723,2.379,1.442,3.364
				                 c0.072,0.099,0.131,0.175,0.191,0.251c1.256,1.571,3.037,2.668,5.113,3c0.265,0.042,0.531,0.072,0.795,0.088
				                 c0.171,0.011,0.341,0.016,0.511,0.016c1.559,0,3.036-0.445,4.295-1.228c0.426-0.264,0.831-0.569,1.207-0.915
				                 c0.117-0.108,0.219-0.205,0.318-0.306l77.323-77.52c3.186-3.195,3.18-8.369-0.015-11.555c-3.198-3.188-8.368-3.18-11.555,0.015
				                 l-60.739,60.894l13.124-112.394l185.495,101.814c1.868,1.02,3.944,1.239,5.846,0.78c0.209-0.051,0.4-0.105,0.589-0.166
				                 c1.878-0.609,3.526-1.877,4.574-3.697c0.053-0.094,0.1-0.179,0.146-0.264c0.212-0.404,0.382-0.8,0.517-1.202L511.521,43.608
				                 C512.6,40.596,511.824,37.23,509.532,34.999z M27.232,234.712L432.364,77.371l-318.521,206.14L27.232,234.712z M162.72,316.936
				                 c-0.764,0.613-1.429,1.374-1.949,2.267c-0.068,0.117-0.132,0.235-0.194,0.354c-0.496,0.959-0.784,1.972-0.879,2.986L148.365,419.6
				                 l-25.107-122.718l275.105-178.042L162.72,316.936z M359.507,419.195l-177.284-97.307L485.928,66.574L359.507,419.195z"/>
				      </g>
				    </svg>
				  </div>
				</div>
			</div>
			<!-- kefu-area end -->
		</header>
		<!-- header end -->
		<iframe src="pages/home/shop-home.jsp" frameborder="0" scrolling="no" id="main" onload="this.height=0" style="margin-bottom: 90px;"></iframe>
		<!-- footer start -->
		<footer>
			<!-- footer-bottom-area start -->
			<div class="footer-bottom-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<div class="copyright">
								<p>Copyright © <a href="#">jiulin</a>. All Rights Reserved</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- footer-bottom-area end -->
		</footer>
		<!-- footer end -->
		<!-- all js here -->
		<!-- jquery latest version -->
		<script src="assets/js/relys/jquery-1.12.0.min.js"></script>
		<!-- bootstrap js -->
		<script src="assets/js/relys/bootstrap.min.js"></script>
		<!-- owl.carousel js -->
		<script src="assets/js/relys/owl.carousel.min.js"></script>
		<!-- meanmenu js -->
		<script src="assets/js/relys/jquery.meanmenu.js"></script>
		<!-- jquery-ui js -->
		<script src="assets/js/relys/jquery-ui.min.js"></script>
		<!-- wow js -->
		<script src="assets/js/relys/wow.min.js"></script>
		<!-- plugins js -->
		<script src="assets/js/relys/plugins.js"></script>
		<script src="assets/js/vue.js"></script>
		<script src="assets/js/api/api.js"></script>
		<script src="assets/js/api/defaultuser.js"></script>
		<script src="assets/js/api/shop-cart.js"></script>
		<script src="assets/js/api/tplist.js"></script>
		<script type="text/javascript">
			var app = new Vue({
				el: "#app",
				data: {
					hstoken: false,
					kefu: false,
					kefuList: [],
					kefuask: "",
					navs: [
						{
							name: '首页',
							url: './pages/home/shop-home.jsp',
							children: []
						},
						{
							name: '客房信息模块'.split('模块')[0],
							url: './pages/kefangxinxi/list.jsp',
							children: [
							]
						},
						{
							name: '亲子活动模块'.split('模块')[0],
							url: './pages/qinzihuodong/list.jsp',
							children: [
							]
						},
						
						{
							name: '酒店周边模块'.split('模块')[0],
							url: './pages/jiudianzhoubian/list.jsp',
							children: [
							]
						},
						{
							name: '留言板',
							url: "pages/blog/blog-list.jsp",
							children: []
						},
						{
							name: '个人中心',
							url: './pages/personal/personal.jsp',
							yanzheng: true,
							children: [
								{
									name: '我的收藏',
									url: './pages/storeup/list.jsp'
								},
							]
						}
					]
				},
				created() {
							var obj = [
								{
									menuname: "客房信息列表".split('列表')[0],
									menutable: "kefangxinxi",
									buttons: [
										"查看",
										"预定",
									]
								},
								{
									menuname: "亲子活动列表".split('列表')[0],
									menutable: "qinzihuodong",
									buttons: [
										"查看",
										"购买",
									]
								},
								{
									menuname: "房型介绍列表".split('列表')[0],
									menutable: "fangxingjieshao",
									buttons: [
										"查看",
									]
								},
								{
									menuname: "酒店周边列表".split('列表')[0],
									menutable: "jiudianzhoubian",
									buttons: [
										"查看",
									]
								},
							]
					localStorage.setItem("daohangmenus", JSON.stringify(obj))
					var obj2 = {
						yonghu: [
							{
								menuname: "客房预订列表".split('列表')[0],
								menutable: "kefangyuding",
								buttons: [
									"查看",
									"支付",
								]
							},
							{
								menuname: "门票预定列表".split('列表')[0],
								menutable: "menpiaoyuding",
								buttons: [
									"查看",
									"支付",
								]
							},
							{
								menuname: "收藏列表".split('列表')[0],
								menutable: "storeup",
								buttons: [
									"查看",
									"删除",
								]
							},
						],
					}
					localStorage.setItem("frontRoleMenus", JSON.stringify(obj2))
					this.navs.push({
						name: '后台管理',
						url: adminurl+"login",
						window: true,
						children: []
					})
				},
				methods: {
					onPageClick(url) {
						$('.search-inside').fadeOut();
						$('#main').attr('src', url);
					},
					onKefuTap(){
						if(!this.hstoken){
							this.onPageClick("pages/login/login.jsp")
							return
						}
						this.kefu = true
						$("body").css("overflow-y", "hidden")
						this.kefuListTap()
					},
					onkefuColoseTap(){
						this.kefu = false
						$("body").css("overflow-y", "auto")
						window.clearInterval(this.kefuinterval)
					},
					kefuListTap(){
						this.kefuinterval = setInterval(() => {
							kefuList((res) => {
								this.kefuList = res.data.list
							})
						}, 1000)
					},
					kefuaddTap(){
						kefuAdd({
								ask: this.kefuask,
								userid: localStorage.getItem('userid')
							}, (res) => {
							if(res&&res.code){
								this.kefuListTap()
							}
						})
					},
				}
			})
			setInterval(function() {
				var token = localStorage.getItem("Token")
				app.hstoken = token ? true : false
			}, 1000)
			
			//获取子页面的高度
			function reinitIframe() {
				var childPageH = $('#main').contents().find('#app').height();
				$('#main').height(childPageH);
			}
			window.setInterval("reinitIframe()", 200);

			function onPageClick(url) {
				$('#main').attr('src', url);
			}
		</script>
		<script src="assets/js/relys/main.js"></script>
	</body>
</html>
