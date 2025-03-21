<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>boo02</title>
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
		<style type="text/css">
			.shop-content .tab-content {
				border: 0;
				margin: 0px;
				padding: 0px;
			    border-bottom: 1px solid #ddd;
			    margin-bottom: 17px;
			    padding-bottom: 30px;
			}
			.shop-breadcrumb {
				clear: both;
			    float: right;
			}
			.post-btn{
				padding: 20px 30px;
				background-color: #FD482C;
				color: #fff;
				border: 0;
			}
			.post-btn:hover{
				background-color: #000000;
			}
		</style>
    </head>
    <body>
		<div id="app">
			<!-- page-title-area start -->
			<div class="page-title-area">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="title-heading text-center">
								<h1>{{type=="my"?"我的帖子":"论坛"}} PAGE</h1>
								<p>Eagle wind strong, Pengfei wave spring</p>
							</div>
							<button class="post-btn" @click="postshow=!postshow">{{!postshow?"发布帖子":"隐藏"}}</button>
						</div>
					</div>
				</div>
			</div>
			<!-- page-title-area end -->
			<!-- blog-area start -->
			<div class="blog-area pad-60">
				<div class="container">
					<div class="row col-md-12" v-if="!postshow">
						<div class="col-md-9 col-sm-12 col-xs-12">
							<div class="blog-page-main">
								<div class="blog-wrapper" v-for="item in list">
									<div class="blog-content">
										<div class="blog-avatar">
											<img src="../../assets/img/author.jpg" >
											<h3 ><a @click.prevent="onPageTap(`./froum-detail.jsp?id=${item.id}`)">{{item.title}}</a></h3>
										</div>
										<div class="blog-meta">
											<span class="blog-author">By <a href="#">用户{{item.username}}</a></span>
										</div>
										<p>{{item.content.substr(0, 40)}} .....</p>
										<a class="read-more" @click.prevent="onPageTap(`./froum-detail.jsp?id=${item.id}`)">查看详情<i class="fa fa-angle-right"></i> <i class="fa fa-angle-right"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row" v-if="!postshow">
						<div class="col-md-12">
							<div class="blog-pagination">
								<div class="shop-breadcrumb">
									<ul id="paginator"></ul>
								</div>
							</div>
						</div>
					</div>
					<div class="comment-respond" v-if="postshow">
						<h3 class="comment-reply-title">发布帖子</h3>
						<form @submit.prevent="addFroum">
							<div class="row">
								<div class="col-md-12 col-sm-12 comment-form-comment">
									<p>帖子标题</p>
									<textarea v-model="title" rows="10" cols="30" id="message"></textarea>
								</div>
								<div class="col-md-12 col-sm-12 comment-form-comment">
									<p>帖子内容</p>
									<textarea v-model="content" rows="10" cols="30" id="message"></textarea>
									<input type="submit" value="发布">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- blog-area end -->
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
		<!-- vue js -->
		<script src="../../assets/js/vue.min.js"></script>
		<script src="../../assets/js/api/api.js"></script>
		<script src="../../assets/js/api/tplist.js"></script>
		<script src="../../assets/js/api/defaultuser.js"></script>
		<script src="../../assets/js/page/jq-paginator.min.js"></script>
		<script src="../../assets/js/relys/utils.js"></script>
		<script type="text/javascript">
			var app = new Vue({
				el: "#app",
				data: {
					page: 1,
					limit: 12,
					list: [],
					title: "",
					content: "",
					postshow: false,
					type: ""
				},
				async created(){
					var type = getParam("type")
					if(type){
						this.type="my"
					}
					var data = await this.getList()
					this.pageFun(data)
				},
				methods: {
					onPageTap(url){
						window.location.href = url
					},
					getsession(){
						return new Promise((resolve) => {
						var usertable = localStorage.getItem("sessionTable")
							session(`${usertable}`, (res) => {
								if(res&&res.code==0){
									var user = res.data
									resolve(user)
								}
							})
						})
					},
					getList(){
						return new Promise(async (resolve) => {
							var url = `forum/flist?page=${this.page}&limit=${this.limit}&parentid=0&isdone=开放&sort=addtime&order=desc`
							if(this.type == "my"){
								url = `forum/page?parentid=0&sort=addtime&order=desc&page=${this.page}&limit=${this.limit}`
							}
							httpJson(url, "GET", "", (res) => {
								if(res&&res.code==0){
									this.list = res.data.list
									resolve(res.data)
								}
							})
						})
					},
					addFroum(){
						var usertable = localStorage.getItem("sessionTable")
						session(`${usertable}`, (res) => {
							if(res&&res.code==0){
								var user = res.data
								var data = {
									"username": localStorage.getItem("adminName"),
									"title": this.title,
									"content": this.content,
									"parentid": 0,
									"isdone": "开放",
									"userid": user.id
								}
								httpJson(`forum/save`, "POST", data, (data) => {
									if(data&&data.code==0){
										alert("发布成功")
										this.postshow = false
										this.getList()
									}else{
										alert("发布失败")
									}
								})
							}else{
								alert("用户信息获取失败")
							}
						})
					},
					pageFun(data){
						var that = this
						$('#paginator').jqPaginator({
							totalPages: data.totalPage,
							visiblePages: 7,
							currentPage: that.page,
							prev: '<li><a href="javascript: pageFun()"><i class="fa fa-angle-left"></i></a></li>',
							next: '<li><a href="javascript: pageFun()"><i class="fa fa-angle-right"></i></a></li>',
							page: `<li class="active"><a href="javascript: pageFun()">{{page}}</a></li>`,
							onPageChange: function(num, type) {
								that.page = num
							}
						});
					}
				}
			})
			function pageFun(){
				app.getList()
			}
		</script>
    </body>
</html>
