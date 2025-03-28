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
			.product-thumbnail img{
				width: 130px;
				height: 130px;
				object-fit: cover;
			}
			.product-quantity{
				position: relative;
			}
			.decbtn, .incbtn{
				position: absolute;
				width: 18px;
				height: 18px;
				background: #252525;
				color: #fff;
				text-align: center;
				line-height: 20px;
				cursor: default;
			}
			.decbtn{
				top: 50%;
				left: 50%;
				margin-top: -20px;
				margin-left: 12px;
			}
			.incbtn{
				top: 50%;
				left: 50%;
				margin-top: 1px;
				margin-left: 12px;
			}
			.decbtn:hover, .incbtn:hover{
				background-color: #fe4847;
			}
			.buttons-cart button{
				padding: 0 15px;
				line-height: 40px;
				background-color: #252525;
				text-align: center;
				border: 0;
				color: #fff;
			}
			.buttons-cart button:hover{
				background-color: #fe4847;
			}
			.buttons-cart button:first-of-type{
				margin-right: 10px;
			}
			.wc-proceed-to-checkout button{
				padding: 0 30px;
				line-height: 45px;
				background-color: #252525;
				text-align: center;
				border: 0;
				color: #fff;
				margin-top: 40px;
			}
			.wc-proceed-to-checkout button:hover{
				background-color: #fe4847;
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
								<h1>购物车 PAGE</h1>
								<p>Eagle wind strong, Pengfei wave spring</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- cart-main-area start -->
			<div class="cart-main-area" style="padding-bottom: 0;">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<form action="#">
								<div class="table-content table-responsive">
									<table>
										<thead>
											<tr>
												<th class="product-thumbnail">商品</th>
												<th class="product-name">名称</th>
												<th class="product-price">价格</th>
												<th class="product-quantity">数量</th>
												<th class="product-subtotal">总价</th>
												<th class="product-remove">操作</th>
											</tr>
										</thead>
										<tbody>
											<tr v-for="(item, i) in list" :key="i">
												<td class="product-thumbnail"><a href="#"><img :src="item.picture" alt="" /></a></td>
												<td class="product-name"><a href="#">{{item.goodname}}</a></td>
												<td class="product-price"><span class="amount">{{item.price}} RMB</span></td>
												<td class="product-quantity">
													<input type="number" :value="item.buynumber" readonly="readonly"/>
													<div class="decbtn" @click="onReduceTap(item)">-</div>
													<div class="incbtn" @click="onAddTap(item)">+</div>
												</td>
												<td class="product-subtotal">{{item.price*item.buynumber}} RMB</td>
												<td class="product-remove"><a href="#"><i class="fa fa-times" @click="onDeleteTap(item)"></i></a></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="row">
									<div class="col-md-8 col-sm-7 col-xs-12">
										<div class="buttons-cart">
											<button type="button" @click="window.location.href = '../home/shop-home.jsp';">继续购物</button>
										</div>
									</div>
									<div class="col-md-4 col-sm-5 col-xs-12" v-if="list.length>0">
										<div class="cart_totals">
											<table>
												<tbody>
													<tr class="order-total">
														<th>总价</th>
														<td>
															<strong><span class="amount">{{totalPrice}} RMB</span></strong>
														</td>
													</tr>
												</tbody>
											</table>
											<div style="clear: both;"></div>
											<div class="wc-proceed-to-checkout">
												<button type="button" @click="onOrderTap">立即结算</button>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- cart-main-area end -->
		</div>
    </body>
	<!-- jquery latest version -->
	<script src="../../assets/js/relys/jquery-1.12.0.min.js"></script>
	<!-- vue js -->
	<script src="../../assets/js/vue.min.js"></script>
	<script src="../../assets/js/api/api.js"></script>
	<script src="../../assets/js/api/tplist.js"></script>
	<script src="../../assets/js/api/shop-cart.js"></script>
	<script src="../../assets/js/relys/utils.js"></script>
	<script type="text/javascript">
		var app = new Vue({
			el: "#app",
			data: {
				list: [],
			},
			computed: {
				totalPrice(){
					if(this.list.length>0){
						var price = 0
						this.list.forEach(item => {
							price += item.price*item.buynumber
						})
						return price
					}else{
						return 0
					}
				}
			},
			created() {
				this.pageList()
			},
			methods: {
				pageList() {
					var _this = this;
					cartList(1, 100, function(res) {
						_this.list = res.data.list
					})
				},
				onReduceTap(data) {
					var _this = this;
					if (data.buynumber == 1) {
						cartDelete([data.id], function(res) {
							_this.pageList();
							localStorage.removeItem(`cart${data.goodid}`)
						})
					} else {
						data.buynumber -= 1;
						cartUpdate(data, function(res) {
							_this.pageList();
						})
					}
				},
				onAddTap(data) {
					goodsInfo(data.tablename,data.goodid, (res) => {
						console.log(res.data.onelimittimes)
						console.log(data.buynumber)
						if(res.data.onelimittimes&&data.buynumber>=res.data.onelimittimes&&res.data.onelimittimes>0){
							alert(`每人单次只能购买${res.data.onelimittimes}次`)
							return
						}
						if(res.data.alllimittimes&&res.data.alllimittimes<data.buynumber){
							alert(`商品已售罄`)
							return
						}
						var _this = this;
						data.buynumber += 1;
						cartUpdate(data, function(res) {
							_this.pageList();
						});
					});
				},
				onDeleteTap(data) {
					var _this = this;
					var r = confirm("是否删除");
					if (r == true) {
						cartDelete([data.id], function(res) {
							_this.pageList();
							localStorage.removeItem(`cart${data.goodid}`)
						})
					}
				},
				onOrderTap(data) {
					let orderGoods = [];
					// 1、处理购物车内已选择的订单生成商品
					for (let i = 0; i < this.list.length; i++) {
						orderGoods.push(this.list[i])
					}
					// 跳转到下单页面,需要购买的数据保存在缓存
					localStorage.setItem('orderGoods', JSON.stringify(orderGoods))
					// 跳转到支付页面
					window.location.href = '../order/confirm-order.jsp';
				}
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
</html>
