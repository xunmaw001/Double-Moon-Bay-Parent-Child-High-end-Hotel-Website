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
								<h1>资讯详情 PAGE</h1>
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
					<div class="row">
						<div class="col-md-10 col-sm-12 col-xs-12 col-md-offset-1">
							<div class="blog-page-main">
								<div class="blog-wrapper">
									<div class="blog-img" v-if="detail.picture">
										<img :src="detail.picture" alt="" />
										<span class="blog-date">order <br /> {{detail.id}}</span>
									</div>
									<div class="blog-content">
										<h3>{{detail.title}}</h3>
										<div v-html="detail.content"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- footer start -->
		</div>
		<!-- vue js -->
		<script src="../../assets/js/relys/jquery-1.12.0.min.js"></script>
		<script src="../../assets/js/vue.min.js"></script>
		<script src="../../assets/js/api/api.js"></script>
		<script src="../../assets/js/api/tplist.js"></script>
		<script src="../../assets/js/relys/utils.js"></script>
		<script type="text/javascript">
			var app = new Vue({
				el: "#app",
				data: {
					detail: {},
					id: "",
					tableName: ""
				},
				created(){
					var id = getParam('id')
					this.id = id
					var tablename = getParam('tablename')
					this.tableName = tablename
					console.log(this.tableName)
					tpDetail(this.tableName, id, (res) => {
						this.detail = res.data
					})
				}
			})
		</script>

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
    </body>
</html>
