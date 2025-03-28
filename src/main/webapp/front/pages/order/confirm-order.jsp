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
			.product-thumbnail img {
				width: 130px;
				height: 130px;
				object-fit: cover;
			}
			.wc-proceed-to-checkout{
				display: flex;
				justify-content: flex-end;
			}
			.wc-proceed-to-checkout button {
				padding: 0 30px;
				line-height: 45px;
				background-color: #252525;
				text-align: center;
				border: 0;
				color: #fff;
				margin-top: 40px;
			}

			.wc-proceed-to-checkout button:hover {
				background-color: #fe4847;
			}
			.table-content ul li{
				line-height: 30px;
				color: #444;
			}
			.table-content:first-of-type{
				margin-bottom: 50px;
			}
			.table-content h3{
				border-bottom: 1px solid #e5e5e5;
				color: #222;
				font-size: 26px;
				margin: 0 20px;
				padding-bottom: 10px;
				text-transform: uppercase;
				width: 100%;
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
								<h1>确认订单 PAGE</h1>
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
							<div class="table-content" v-if="!xuanzuo">
								<h3>地址列表</h3>
								<ul style="list-style: none;margin-top: 20px;">
									<li v-for="item in addressList">
										<input type="radio" v-model="address" :value="item.address" name="address" />
										{{item.name}} {{item.phone}} {{item.address}}
									</li>
								</ul>
								<div class="address-btn-box">
									<button style="margin-top:20px;padding: 10px;background-color: #FE4847;color: #fff;border: 0;" @click="onPageTap('../address/address-edit.jsp')">新增收货地址</button>
								</div>
							</div>
							<div class="table-content" style="margin-bottom: 40px;">
								<h3>下单列表</h3>
								<table style="margin: 0;">
									<thead>
										<tr>
											<th class="product-thumbnail">商品</th>
											<th class="product-name">名称</th>
											<th class="product-price">价格</th>
											<th class="product-quantity">数量</th>
											<th class="product-subtotal">总价</th>
										</tr>
									</thead>
									<tbody>
										<tr v-for="(item, i) in orderGoods" :key="i">
											<td class="product-thumbnail"><a href="#"><img :src="item.picture" alt="" /></a></td>
											<td class="product-name"><a href="#">{{item.goodname}}</a></td>
											<td v-if="type==2" class="product-price"><span class="amount">{{item.price}} 积分</span></td>
											<td v-else class="product-price"><span class="amount">{{item.price}} RMB</span></td>
											<td class="product-quantity">
												<input type="number" :value="item.buynumber" readonly="readonly" />
											</td>
											<td v-if="type==2" class="product-subtotal">{{item.price*item.buynumber}} 积分</td>
											<td v-else class="product-subtotal">{{item.price*item.buynumber}} RMB</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="col-md-4 col-sm-5 col-xs-12" style="float: right;margin-bottom: 40px;">
										<div class="cart_totals">
											<table>
												<tbody>
													<tr class="order-total">
														<th>总价</th>
														<td>
															<strong v-if="type==2"><span class="amount">{{totalPrice}} 积分</span></strong>
															<strong v-else><span class="amount">{{totalPrice}} RMB</span></strong>
														</td>
													</tr>
												</tbody>
											</table>
											<div style="clear: both;"></div>
										</div>
									</div>
									<div class="wc-proceed-to-checkout" style="clear: both;">
										<button v-if="type==2" type="button" @click="onOrderTap">立即兑换</button>
										<button v-else type="button" @click="onOrderTap">立即支付</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- cart-main-area end -->
		</div>
		<!-- jquery latest version -->
		<script src="../../assets/js/relys/jquery-1.12.0.min.js"></script>
		<!-- vue.js -->
		<script src="../../assets/js/vue.js"></script>
		<!-- 异步请求 -->
		<script src="../../assets/js/api/api.js"></script>
		<!-- 工具类 -->
		<script src="../../assets/js/relys/utils.js"></script>
		<!-- 用户接口 -->
		<script src="../../assets/js/api/defaultuser.js"></script>
		<!-- 购物车 -->
		<script src="../../assets/js/api/shop-cart.js"></script>
		<!-- 地址接口 -->
		<script src="../../assets/js/api/shop-address.js"></script>
		<!-- 订单接口 -->
		<script src="../../assets/js/api/order.js"></script>
		<script src="../../assets/js/relys/utils.js"></script>
		<script src="../../assets/js/api/tplist.js"></script>
		<script type="text/javascript">
			var app = new Vue({
				el: '#app',
				data: {
					orderGoods: [],
					totalPrice: 0,
					addressList: [],
					user: {},
					address: '',
					tablename: "",
					xuanzuo: "",
					type: 0
				},
				created() {
					var tablename = getParam('tablename')
					var xuanzuo = getParam('xuanzuo')
					var type = getParam('type')
					// 积分兑换
					if(type==2){
						this.type = 2;
					}
					this.tablename = tablename?tablename:""
					this.xuanzuo = xuanzuo?xuanzuo:0
					var _this = this;
					var orderGoods = JSON.parse(localStorage.getItem('orderGoods'));
					this.orderGoods = orderGoods;
					var totalPrice = 0;
					for (var i = 0; i < orderGoods.length; i++) {
						totalPrice += parseFloat(orderGoods[i].price) * parseFloat(orderGoods[i].buynumber);
					}
					this.totalPrice = totalPrice;
					addressList(1, 100, function(res) {
						_this.addressList = res.data.list
					});
					var user = localStorage.getItem("sessionTable")
					session(`${user}`, function(res) {
						_this.user = res.data
					});
				},
				methods: {
					onPageTap(url){
						window.location.href = url
					},
					onOrderTap() {
						let _this = this;
						var msg = ""
						var status = ""
						if (!_this.address&&!this.xuanzuo) {
							alert('请选择收货地址');
							return
						}
						if (_this.type!=2 && _this.user.money < _this.totalPrice) {
							msg = "账户余额不足，请移步个人中心充值"
							status = "未支付"
						}else if(_this.type==2 && (_this.user.jifen < _this.totalPrice) ){
							alert('账户积分不足，兑换失败');
							return
						}else{
							msg = "支付成功"
							status = "已支付"
							if(_this.type==2){
								_this.user.jifen = _this.user.jifen - _this.totalPrice;
							}else{
								_this.user.money = _this.user.money - _this.totalPrice;
								if(_this.user.jifen||_this.user.jifen==0){
									_this.user.jifen = _this.user.jifen +  _this.totalPrice;
								}
							}
							var user = localStorage.getItem("sessionTable")
							updateUser(`${user}`, _this.user, function() {});
						}
						
						for (let i = 0; i < _this.orderGoods.length; i++) {
							updateUser(`${user}`, _this.user, function() {});
							ordersSave({
								orderid: genTradeNo(),
								tablename: _this.orderGoods[i].tablename,
								userid: _this.user.id,
								goodid: _this.orderGoods[i].goodid,
								goodname: _this.orderGoods[i].goodname,
								picture: _this.orderGoods[i].picture,
								buynumber: _this.orderGoods[i].buynumber,
								discountprice: _this.orderGoods[i].price,
								price: _this.orderGoods[i].price,
								total: _this.orderGoods[i].price * _this.orderGoods[i].buynumber,
								discounttotal: _this.orderGoods[i].price * _this.orderGoods[i].buynumber,
								type: 1,
								address: _this.address,
								status: status
							}, function(res) {
								if(_this.xuanzuo){
									var data = JSON.parse(localStorage.getItem("xuanzuo"))
									data.selected = data.oldSelected + "," + data.selected;
									updateFun(`${_this.tablename}`, data, (res)=>{
										if(res.code==0){
											alert(`${msg}`);
											window.location.href = '../order/order-list.jsp'
										}
									 })
								}else{
									if (_this.orderGoods[i].id) {
										localStorage.removeItem(`cart${_this.orderGoods[i].goodid}`)
										cartDelete([_this.orderGoods[i].id], function(res) {
											if(i==_this.orderGoods.length-1){
												alert(`${msg}`);
												window.location.href = '../order/order-list.jsp'
											}
										})
										// 库存减少
										goodsInfo(_this.orderGoods[i].tablename,_this.orderGoods[i].goodid,function(res){
											res.data.alllimittimes = res.data.alllimittimes - _this.orderGoods[i].buynumber;
											// 更新库存信息
											updateFun(_this.orderGoods[i].tablename, res.data, function(res){});
										})
									}else{
										if(i==_this.orderGoods.length-1){
											alert(`${msg}`);
											window.location.href = '../order/order-list.jsp'
										}
									}
								}
							});
						}
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
	</body>
</html>
