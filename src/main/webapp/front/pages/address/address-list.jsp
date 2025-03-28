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
			
			.product-add-to-cart{
				display: flex;
				flex-flow: column;
				align-items: center;
				justify-content: center;
				width: auto!important;
			}

			.product-add-to-cart button, .add-btn button {
				padding: 0 30px;
				line-height: 40px;
				background-color: #252525;
				text-align: center;
				border: 0;
				color: #fff;
				display: block;
			}

			.product-add-to-cart button:first-of-type {
				margin-bottom: 10px;
			}

			.product-add-to-cart button:last-of-type {
				margin-bottom: 0px;
			}

			.product-add-to-cart button:hover, .add-btn button:hover {
				background-color: #fe4847;
			}

			.product-stock-status span {
				cursor: default;
			}

			.add-btn{
				width: 100%;
				display: flex;
				justify-content: center;
			}
			.add-btn button{
				line-height: 50px;
				padding: 0 50px;
				margin-top: 50px;
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
								<h1>我的地址 PAGE</h1>
								<p>Eagle wind strong, Pengfei wave spring</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- wishlist-area start -->
			<div class="wishlist-area">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="wishlist-content">
								<div class="wishlist-table table-responsive">
									<table>
										<thead>
											<tr>
												<th class="product-price"><span class="nobr"> 联系人 </span></th>
												<th class="product-price"><span class="nobr"> 手机号码 </span></th>
												<th class="product-name"><span class="nobr">收货地址</span></th>
												<th class="product-price"><span class="nobr">默认地址</span></th>
												<th class="product-add-to-cart"><span class="nobr">操作</span></th>
											</tr>
										</thead>
										<tbody>
											<tr v-for="item in list" :key="item.id">
												<td class="product-price"><span class="amount">{{item.name}}</span></td>
												<td class="product-price"><span class="amount">{{item.phone}}</span></td>
												<td class="product-name"><span class="amount">{{item.address}}</span></td>
												<td class="product-stock-status">
													<span class="wishlist-in-stock" v-if="item.isdefault=='是'">默认</span>
													<span v-else>/</span>
												</td>
												<td class="product-add-to-cart">
													<button @click="window.location.href=`./address-edit.jsp?id=${item.id}`">编辑</button>
													<button @click="onDeleteTap(item)">删除</button>
												</td>
											</tr>
										</tbody>
									</table>
									<div style="display: flex;width: 100%;justify-content: center;margin-top: 50px;">
										<div id="pagechange"></div>
									</div>
									<div class="add-btn">
										<button @click="window.location.href='./address-edit.jsp'">新增地址</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- wishlist-area end -->
		</div>
	</body>
	<!-- jquery latest version -->
	<script src="../../assets/js/relys/jquery-1.12.0.min.js"></script>
	<!-- vue js -->
	<script src="../../assets/js/vue.min.js"></script>
	<script src="../../assets/js/api/api.js"></script>
	<!-- 相关接口 -->
	<script src="../../assets/js/api/shop-address.js"></script>
	<script src="../../assets/js/page/page_common.js"></script>
	<script type="text/javascript">
		var page_s1 = createPage('#pagechange');
		var app = new Vue({
			el: '#app',
			data: {
				list: [],
				showFlag: false,
				page: 1,
				limit: 6,
				total: 0
			},
			created() {
				this.pageList()
			},
			methods: {
				pageList() {
					var _this = this;
					addressList(this.page, this.limit, function(res) {
						_this.list = res.data.list
						_this.total = res.data.total
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
					})
				},
				onDeleteTap(data) {
					var _this = this;
					var r = confirm("是否删除");
					if (r == true) {
						addressDelete([data.id], function(res) {
							alert('地址删除成功')
							_this.pageList();
						})
					}
				},
				onAddTap() {
					window.parent.location.href = './shop-address-detail.jsp'
				},
				onUpdateTap(item) {
					window.parent.location.href = './shop-address-detail.jsp?id=' + item.id
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
