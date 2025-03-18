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
			.shop-area {
				padding-bottom: 0;
			}

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

			.product-img img {
				width: 100%;
				object-fit: cover;
			}
			.sidebar-menu li {
				cursor: default;
			}
			.sidebar-menu li:hover {
				color: #FE4847;
			}
			.sidebar-menu li.active {
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
								<h1>房型介绍列表 PAGE</h1>
								<p>Eagle wind strong, Pengfei wave spring</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- page-title-area end -->
			<!-- shop-area start -->
			<div class="shop-area shop-full">
				<div class="container">
					<div class="row">
						<!-- left-sidebar start -->
						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
							<!-- widget-categories start -->
							<aside class="widget widget-categories">
								<h3 class="sidebar-title" style="margin-bottom: 20px">客房类型</h3>
								<ul class="sidebar-menu">
									<li :class="curkefangleixinggroupidx==-1?'active':''" @click="listkefangleixingGroupTap('','-1')">全部</li>
									<li :class="curkefangleixinggroupidx==idx?'active':''" v-for="(item, idx) in kefangleixinggrouplist" :key="idx" @click="listkefangleixingGroupTap(item, idx)">{{item}}</li>
								</ul>
							</aside>
						</div>
						<!-- left-sidebar end -->
						<div :class="group?'col-md-9 col-sm-12 col-xs-12':'col-md-12 col-sm-12 col-xs-12'" >

							<div style="display: flex;justify-content: flex-end;">
							</div>
							<div class="shop-content">
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active" id="home">
										<div class="row" style="display: flex;flex-wrap: wrap;">
											<!-- single-product start -->
											<div class="single-product-box col-md-3 col-sm-4" v-for="(item, i) in list" :key="i" @click="onPageTap(`./detail.jsp?id=${item.id}`)">
												<div class="single-product">
													<div class="product-img" v-if="item.kefangzhaopian">
														<img :style="{height:group?'200px':'300px'}" :src="item.kefangzhaopian.split(',')[0]" alt="" />
													</div>
														<h3>{{item.biaoti}}</h3>
													</div>
												</div>
											</div>
											<!-- single-product end -->
										</div>
									</div>
								</div>
								<div class="shop-breadcrumb" id="pagechange"></div>

								<div class="clear"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- shop-area end -->
		</div>
		<!-- jquery latest version -->
		<script src="../../assets/js/relys/jquery-1.12.0.min.js"></script>
		<!-- pagechange js -->
		<script src="../../assets/js/page/page_common.js"></script>
		<!-- vue js -->
		<script src="../../assets/js/api/api.js"></script>
		<script src="../../assets/js/api/tplist.js"></script>
		<script src="../../assets/js/vue.min.js"></script>
		<script src="../../assets/js/relys/utils.js"></script>
		<script type="text/javascript">
			// 初始化 分页
			var page_s1 = createPage('#pagechange');
			var app = new Vue({
				el: "#app",
				data: {
					group: false,
					curkefangleixinggroupidx: '-1',
					kefangleixinggrouplist: [],
					first: true,
					list: [],
					page: {
						page: 1,
						limit: 16,
						total: 0
					},
					searchname: '',
					searchval: '',
				},
				methods: {
					onPageTap(url) {
						window.location.href = url;
					},
					getList(searchname, searchval) {
						return new Promise((resolve) => {
							goodsList('fangxingjieshao',this.page.page, this.page.limit, searchname, searchval, (res) => {
								if (res.code == 0) {
									this.$nextTick(() => {
										this.list = res.data.list
										this.page.total = res.data.total
										var that = this
										// 设置分页
										setPage(page_s1, {
											pageTotal: that.page.total, // 数据总条数   
											pageSize: that.page.limit, // 每页显示条数
											pageCurrent: that.page.page, //  当前页
											maxBtnNum: 5, // 最多按钮个数  （最少5个）
											change: function(e) { // 页数变化回调函数（返回当前页码）
												$('#pagechange').html(e)
												that.page.page = e
												that.getList(that.searchname, that.searchval)
											},
										})
										resolve(res.data)
									})
								}
							})
						})
					},
					listkefangleixingGroupTap(item, index){
						this.curkefangleixinggroupidx = index
						var searchname = 'kefangleixing'
						if(item){
							this.searchname = searchname
							this.searchval = item
						}else{
							this.searchname = ''
							this.searchval = ''
						}
						console.log(this.searchname, this.searchval)
						this.getList(this.searchname, this.searchval)
					},
				},
				async created() {
					var search = getParam('search')
					var searchname = 'biaoti'

					if(search){
						this.searchname = searchname
						this.searchval = search
					}
					this.getList(this.searchname, this.searchval)
					this.group = true
					getOption("kefangleibie", "kefangleixing", (data) => {
						if (data && data.code === 0) {
							this.kefangleixinggrouplist = data.data;
						}
					})  
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
