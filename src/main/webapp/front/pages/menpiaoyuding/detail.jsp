<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
﻿<!doctype html>
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
			.product-tabs{
				margin-bottom: 0;
			}
			.shop-area{
				padding-bottom: 0;
			}
			.single-pro-tab-content img{
				width: 380px;
				height: 380px;
			}
			.single-pro-tab-content img{
				object-fit: cover;
			}
			.single-product-tab li{
				padding-top: 20%;
				overflow: hidden;
				box-sizing: border-box;
				position: relative;
			}
			.single-product-tab li img{
				height: 100%;
				position: absolute;
				top: 0;
				left: 0;
				object-fit: cover;
			}
			.product-page-desc img{
				width: 100%;
				height: auto;
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
								<h1>门票预定详情 PAGE</h1>
								<p>Eagle wind strong, Pengfei wave spring</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- page-title-area end -->
			<!-- shop-area start -->
			<div class="shop-area">
				<div class="container" v-if="detail">
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div class="row">
								<div class="col-md-5 col-sm-5 col-xs-12" v-if="swiperList.length>0">
									<div class="single-pro-tab-content">
										<div class="tab-content">
											<div role="tabpanel" class="tab-pane active" id="home"><img class="zoom" :src="curImg" alt="" /></div>
										</div>
										<ul class="single-product-tab" role="tablist" v-if="swiperList.length>1">
											<li role="presentation" class="active" v-for="(item, i) in swiperList"><img :src="item" alt="" @click="curImg=item"/></li>
										</ul>
									</div>
								</div>
								<div class="col-md-7 col-sm-7 col-xs-12 shop-list shop-details">
									<div class="product-content">
										<div class="price">
											<span>用户名：{{detail.yonghuming}}</span>
										</div>
										<div class="price">
											<span>姓名：{{detail.xingming}}</span>
										</div>
										<div class="price">
											<span>活动名称：{{detail.huodongmingcheng}}</span>
										</div>
										<div class="price">
											<span>活动类型：{{detail.huodongleixing}}</span>
										</div>
										<div class="price">
											<span>门票价格：{{detail.menpiaojiage}}</span>
										</div>
										<div class="price">
											<span>开始时间：{{detail.kaishishijian}}</span>
										</div>
										<div class="price">
											<span>结束时间：{{detail.jieshushijian}}</span>
										</div>
										<div class="price">
											<span>参加人数：{{detail.canjiarenshu}}</span>
										</div>
										<div class="price">
											<span>实付金额：{{detail.shifujine}}</span>
										</div>
										<div class="price">
											<span>是否支付：{{detail.ispay}}</span>
										</div>
										<!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.</p> -->
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 col-sm-12">
									<div class="product-tabs">
											<div>
											  <!-- Nav tabs -->
											  <ul class="pro-details-tab" role="tablist">
											  </ul>
											  <!-- Tab panes -->
											  <div class="tab-content">
											  </div>
											</div>
										</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- shop-area end -->
		</div>
		<!-- jquery latest version -->
		<script src="../../assets/js/relys/jquery-1.12.0.min.js"></script>
		<script src="../../assets/jquery-ui.js"></script>
		<!-- vue js -->
		<script src="../../assets/js/vue.min.js"></script>
		<script src="../../assets/js/api/api.js"></script>
		<script src="../../assets/js/api/tplist.js"></script>
		<script src="../../assets/js/api/shop-cart.js"></script>
		<script src="../../assets/js/api/defaultuser.js"></script>
		<script src="../../assets/js/relys/utils.js"></script>
		<div id="script"></div>
		<script type="text/javascript">
			var app = new Vue({
				el: "#app",
				data: {
					id: "",
					buynum: 1,
					detail: null,
					swiperList: [],
					curImg: '',
					buttons: [],
					count: 0,
					inter: null
				},
				computed: {
					SecondToDate: function() {
						var time = this.count;
						if (null != time && "" != time) {
							if (time > 60 && time < 60 * 60) {
								time =
									parseInt(time / 60.0) +
									"分钟" +
									parseInt((parseFloat(time / 60.0) - parseInt(time / 60.0)) * 60) +
									"秒";
							} else if (time >= 60 * 60 && time < 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else if (time >= 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0 / 24) +
									"天" +
									parseInt(
										(parseFloat(time / 3600.0 / 24) - parseInt(time / 3600.0 / 24)) *
										24
									) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else {
								time = parseInt(time) + "秒";
							}
						}
						return time;
					}
				},
				async created() {
					var frontmenus = JSON.parse(localStorage.getItem("daohangmenus"))
					if(typeof frontmenus == "object"){
						frontmenus.forEach(item => {
							if(item.menutable == "menpiaoyuding"){
								this.buttons = item.buttons
							}
						})
					}
					var id = getParam('id')
					this.id = id
					await this.getDetail(id)
				},
				destroyed: function() {
					window.clearInterval(this.inter);
				},
				methods: {
					download(file){
					  window.open(file)
					},
					buynumDec(){
						if(this.buynum!=1){
							this.buynum--
						}
					},
					buynumInc(){
						this.buynum++
					},
					getSession(){
						return new Promise((resolve) => {
							var tablename = localStorage.getItem("sessionTable")
							session(`${tablename}`, (data) => {
								if(data&&data.code==0){
									resolve(data.data)
								}
							})
						})
					},
					addCart(){
						var _this = this;
						console.log(localStorage.getItem(`cart${this.detail.id}`));
						if (localStorage.getItem(`cart${this.detail.id}`)) {
							alert('该商品已添加到购物车')
							return
						}
						cartSave({
							tablename: 'menpiaoyuding',
							goodid: this.detail.id,
							picture: this.swiperList[0],
							buynumber: this.buynum,
							price: this.detail.price,
							userid: localStorage.getItem("userid"),
							discountprice: this.detail.price
						}, function(res) {
							localStorage.setItem(`cart${_this.detail.id}`, true);
							alert('添加到购物车成功')
						});
					},
					onBuyTap() {
						let orderGoods = [];
						// 跳转到下单页面,需要购买的数据保存在缓存
						localStorage.setItem('orderGoods', JSON.stringify([{
							tablename: 'menpiaoyuding',
							goodid: this.detail.id,
							picture: this.swiperList[0],
							buynumber: this.buynum,
							price: this.detail.price,
							userid: localStorage.getItem("userid"),
							discountprice: this.detail.price
						}]))
						// 跳转到支付页面
						window.location.href = '../order/confirm-order.jsp';
					},
					
					getDetail(id){
						return new Promise((resolve) => {
							goodsInfo('menpiaoyuding',id, (res) => {
								var scripts = [
									"../../assets/js/relys/main.js"
								]
								this.detail = res.data
								this.$nextTick(() => {
									var _this = this;
									
									// scripts.forEach(ele => {
									// 	var new_element = document.createElement("script");
									// 	new_element.setAttribute("type", "text/javascript");
									// 	new_element.setAttribute("src", ele); // 在这里引入了a.js
									// 	$('#script').append(new_element);
									// })
									resolve(res)
								})
							})
						})
					},
				}
			})
		</script>

		<!-- all js here -->
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
