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
		<!-- pagechange css -->
		<link rel="stylesheet" type="text/css" href="../../assets/css/page/page_common.css" />
		<!-- modernizr js -->
		<script src="../../assets/js/relys/modernizr-2.8.3.min.js"></script>
		<style type="text/css">
			.product-thumbnail img {
				width: 130px;
				height: 130px;
				object-fit: cover;
			}

			.product-add-to-cart button {
				padding: 0 30px;
				line-height: 40px;
				background-color: #252525;
				text-align: center;
				border: 0;
				color: #fff;
			}

			.product-add-to-cart button:first-of-type {
				margin-bottom: 10px;
			}

			.product-add-to-cart button:last-of-type {
				margin-bottom: 0px;
			}

			.product-add-to-cart button:hover {
				background-color: #fe4847;
			}

			.product-name,
			.product-address {
				max-width: 125px;
			}
			.order-tab{
				width: 100%;
				height: 50px;
				display: flex;
				justify-content: center;
				background-color: #222;
			}
			.order-tab li{
				background-color: #222;
				color: #fff;
				font-size: 18px;
				line-height: 50px;
				width: 100px;
				text-align: center;
				cursor: default;
			}
			.order-tab li:hover{
				color: #fe4847;
			}
			.order-tab li.active{
				color: #FE4847;
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
								<h1>我的订单 PAGE</h1>
								<p>Eagle wind strong, Pengfei wave spring</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- wishlist-area start -->
			<div class="wishlist-area" style="padding-bottom: 0;">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="wishlist-content">
								<div class="wishlist-table table-responsive">
									<ul class="order-tab">
										<li :class="ordertype==item?'active':''" v-for="(item, i) in ordertypes" :key="i" @click="orderTypeTap(item)">{{item}}</li>
									</ul>
									<table>
										<thead>
											<tr>
												<th class="product-thumbnail">商品</th>
												<th class="product-name"><span class="nobr">名称</span></th>
												<th class="product-price"><span class="nobr"> 单价 </span></th>
												<th class="product-price"><span class="nobr"> 数量 </span></th>
												<th class="product-price"><span class="nobr"> 总价 </span></th>
												<th class="product-address"><span class="nobr"> 收货地址 </span></th>
												<th class="product-stock-stauts"><span class="nobr"> 状态 </span></th>
												<th class="product-add-to-cart"><span class="nobr">操作</span></th>
											</tr>
										</thead>
										<tbody>
											<tr v-for="item in list" :key="item.id">
												<td class="product-thumbnail"><img :src="item.picture" alt="" /></td>
												<td class="product-name"><span class="amount">{{item.goodname}}</span></td>
												<td class="product-price"><span class="amount">{{item.price}}</span></td>
												<td class="product-price"><span class="amount">{{item.buynumber}}</span></td>
												<td class="product-price"><span class="amount">{{item.total}}</span></td>
												<td class="product-address">
													<span class="amount" v-if="item.address">{{item.address}}</span>
													<span class="amount" v-else>/</span>
												</td>
												<td class="product-stock-status"><span class="wishlist-in-stock">{{item.status}}</span></td>
												<td class="product-add-to-cart">
													<button v-if="item.status=='未支付'" @click="onBuyTap(item)">立即支付</button>
													<button v-if="item.status=='未支付'" @click="onCancelTap(item)">取消订单</button>
													<button v-if="item.status=='已发货'" @click="onConfirmTap(item)">确认收货</button>
													<button v-if="item.status=='已支付'" @click="onRefundTap(item)">退款</button>
													<span v-if="item.status=='已完成'">/</span>
													<span v-if="item.status=='已取消'">/</span>
													<span v-if="item.status=='已退款'">/</span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div style="display: flex;width: 100%;justify-content: center;margin-top: 50px;">
								<div id="pagechange"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- wishlist-area end -->
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
		<!-- 订单接口 -->
		<script src="../../assets/js/api/order.js"></script>
		<!-- pagechange js -->
		<script src="../../assets/js/page/page_common.js"></script>
		<script type="text/javascript">
			var page_s1 = createPage('#pagechange');
			var app = new Vue({
				el: '#app',
				data: {
					list: [],
					page: 1,
					limit: 6,
					total: 0,
					user: {},
					ordertype: '全部',
					ordertypes: ["全部"],
					usertable: ""
				},
				created() {
					this.usertable = localStorage.getItem("sessionTable")
					session(`${this.usertable}`, (res) => {
						this.user = res.data
					});
					this.getOrderTypeTap()
					this.pageList();
				},
				methods: {
					getOrderTypeTap(){
						var frontRoleMenus = JSON.parse(localStorage.getItem("frontRoleMenus"))
						var sessionRole = frontRoleMenus[`${this.usertable}`]
						if(typeof sessionRole == "object"){
							sessionRole.forEach(item => {
								if(item.menutable.split("dingdan")!=-1&&item.menutable!="dingdan"){
									var menuname = item.menuname.split("订单")[0]
									if(menuname=="未支付"){
										this.ordertypes.push("未支付")
									}else if(menuname=="已支付"){
										this.ordertypes.push("已支付")
									}else if(menuname=="已完成"){
										this.ordertypes.push("已完成")
									}else if(menuname=="已取消"){
										this.ordertypes.push("已取消")
									}else if(menuname=="已退款"){
										this.ordertypes.push("已退款")
									}else if(menuname=="已发货"){
										this.ordertypes.push("已发货")
									}
								}
							})
						}
					},
					orderTypeTap(status){
						this.ordertype = status
						this.page = 1
						this.pageList()
					},
					pageList() {
						var _this = this;
						console.log(this.ordertype)
						ordersList(this.page, this.limit, this.ordertype, function(res) {
							_this.list = res.data.list;
							_this.total = res.data.total
							// 设置分页
							setPage(page_s1, {
								pageTotal: _this.total, // 数据总条数   
								pageSize: _this.limit, // 每页显示条数
								pageCurrent: _this.page, //  当前页
								maxBtnNum: 5, // 最多按钮个数  （最少5个）
								change: function(e) { // 页数变化回调函数（返回当前页码）
									$('#pagechange').html(e)
									_this.page = e
									_this.pageList()
								},
							})
						});
					},
					
					onCancelTap(order) {
						var _this = this;
						var r = confirm("是否取消订单");
						if (r == true) {
							order.status = '已取消';
							// 设置订单状态为取消
							ordersUpdate(order, function(res) {
								_this.page = 1;
								_this.pageList();
								alert("订单已取消")
							});
						}
					},
					onRefundTap(order) {
						var _this = this;
						var r = confirm("是否确认退款");
						if (r == true) {
							order.status = '已退款';
							ordersUpdate(order, function(res) {
								_this.page = 1;
								_this.pageList();
								// 退回用户余额
								_this.user.money = _this.user.money + order.total;
								updateUser(`${_this.usertable}`, _this.user, (result) => {
									if(result&&result.code==0){
										alert("退款成功")
									}
								});
							});
						}
					},
					onConfirmTap(order) {
						var _this = this;
						var r = confirm("是否确认收货");
						if (r == true) {
							order.status = '已完成';
							// 设置订单状态为取消
							ordersUpdate(order, function(res) {
								if(res&&res.code==0){
									_this.page = 1;
									_this.pageList();
									alert("确认收货成功")
								}
							});
						}
					},
					onBuyTap(order) {
						var _this = this;
						var r = confirm("是否支付此订单");
						if (r == true) {
							if(_this.user.money<order.total){
								alert('账户余额不足')
								return
							}else{
								order.status = '已支付';
								ordersUpdate(order, function(res) {
									_this.page -= 1;
									_this.pageList();
									_this.user.money = _this.user.money - order.total;
									updateUser(`${_this.usertable}`, _this.user, (result) => {
										if(result&&result.code==0){
											alert("订单支付成功")
										}
									});
								});
							}
						}
					}
				}
			})
		</script>

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
