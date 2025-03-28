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
								<h1>留言板 PAGE</h1>
								<p>Eagle wind strong, Pengfei wave spring</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- page-title-area end -->
			<!-- blog-area start -->
			<div class="blog-area pad-60">
				<div class="container">
					<div class="row col-md-12" >
						<div class="col-md-10 col-sm-12 col-xs-12 col-md-offset-1">
							<div class="blog-page-main">
								<div class="blog-wrapper" v-for="(item, i) in list" :key="i">
									<div class="blog-content">
										<div class="blog-meta">
											<span class="blog-author">By <a href="#">用户{{item.username}}</a></span>
										</div>
										<p>{{item.content}}</p>
										<p v-if="item.reply">回复：{{item.reply}}</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="blog-pagination">
								<div class="shop-breadcrumb">
									<ul id="paginator"></ul>
								</div>
							</div>
						</div>
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
		<script src="../../assets/js/page/jq-paginator.min.js"></script>
		<script type="text/javascript">
			var app = new Vue({
				el: "#app",
				data: {
					page: 1,
					limit: 12,
					list: []
				},
				async created(){
					var data = await this.getList()
					this.pageFun(data)
				},
				methods: {
					getList(){
						return new Promise((resolve) => {
							httpJson(`messages/list?page=${this.page}&limit=${this.limit}`, "GET", "", (res) => {
								if(res&&res.code==0){
									this.list = res.data.list
									resolve(res.data)
								}
							})
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
