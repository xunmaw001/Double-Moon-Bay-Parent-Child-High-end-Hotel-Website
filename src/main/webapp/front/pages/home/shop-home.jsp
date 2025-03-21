<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!doctype html>
<html class="no-js" lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<title>boo2</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="shortcut icon" type="image/x-icon" href="../../assets/img/favicon.ico">
		<!-- Place favicon.ico in the root directory -->
		<link rel="stylesheet" href="../../assets/css/original/bootstrap.min.css">
		<!-- animate css -->
		<link rel="stylesheet" href="../../assets/css/original/animate.css">
		<!-- jquery-ui.min css -->
		<link rel="stylesheet" href="../../assets/css/original/jquery-ui.min.css">
		<!-- meanmenu css -->
		<link rel="stylesheet" href="../../assets/css/original/meanmenu.min.css">
		<!-- owl.carousel css -->
		<link rel="stylesheet" href="../../assets/css/original/owl.carousel.css">
		<link rel="stylesheet" href="../../assets/css/original/swiper.min.css"/>
		<!-- slick slider css -->
		<link rel="stylesheet" href="../../assets/css/original/slick.css">
		<!-- font-awesome css -->
		<link rel="stylesheet" href="../../assets/css/original/font-awesome.min.css">
		<!-- style css -->
		<link rel="stylesheet" href="../../assets/css/original/style.css">
		<!-- responsive css -->
		<link rel="stylesheet" href="../../assets/css/original/responsive.css">
		<!-- modernizr js -->
		<script src="../../assets/js/relys/modernizr-2.8.3.min.js"></script>
		<style type="text/css">
			.product-nav li {
				color: #fe4847;
				font-size: 20px;
				font-weight: 600;
				text-transform: capitalize;
				position: relative;
			}

			.product-nav li span {
				color: #444;
				font-size: 20px;
				font-weight: 600;
				margin-left: 20px;
				position: relative;
			}
			.product-nav li span::before {
				background: #666 none repeat scroll 0 0;
				content: "";
				height: 13px;
				position: absolute;
				left: -10px;
				top: 8px;
				width: 2px;
			}
			.product-img img{
				height: 300px;
				object-fit: cover;
			}
			.blog-img img {
			  width: 100%;
			  height: 210px;
			  object-fit: cover;
			}
			.pad-60{
				padding: 0!important;
				margin-top: 50px;
			}
		</style>
	</head>
	<body>
		<div id="app">
			<!-- slider-area start -->
			<div class="swiper-container" style="width: 100%;height: 400px;">
			    <div class="swiper-wrapper">
			        <div class="swiper-slide" v-for="(item,i) in banners"><img :src="item.value" style="width: 100%;height: 100%;object-fit: cover;"/></div>
			    </div>
				<div class="swiper-pagination"></div><!--分页器。如果放置在swiper-container外面，需要自定义样式。-->
				<div class="swiper-button-prev"></div><!--左箭头。如果放置在swiper-container外面，需要自定义样式。-->
				<div class="swiper-button-next"></div><!--右箭头。如果放置在swiper-container外面，需要自定义样式。-->
			</div>
			<!-- slider-area end -->
			<!-- featured-area start -->
			<!-- featured-area end -->
			<!-- latest-blog-area start -->
			<div class="featured-area pad-60">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="product-tab">
								<!-- Nav tabs -->
								<ul class="product-nav" role="tablist">
									<li role="presentation" class="active">客房信息<span @click="onPageTap('../kefangxinxi/list.jsp')">查看更多</span></li>
								</ul>
								<!-- Tab panes -->
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active" id="home">
										<div class="row">
											<div class="kefangxinxi-curosel">
												<!-- single-product start -->										
												<div class="col-md-12" v-for="(item, i) in kefangxinxiList" :key="i" 
												@click="onPageTap(`../kefangxinxi/detail.jsp?id=${item.id}`)"
												>
													<div class="single-product">
														<div class="product-img" v-if="item.kefangzhaopian">
															<img :src="item.kefangzhaopian.split(',')[0]" alt="" />
														</div>
														<div class="product-content">
												<h3 @click="onPageTap(`../kefangxinxi/detail.jsp?id=${item.id}`)">门市价：{{item.menshijia}}</h3>
														</div>
													</div>
												</div>
												<!-- single-product end -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="featured-area pad-60">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="product-tab">
								<!-- Nav tabs -->
								<ul class="product-nav" role="tablist">
									<li role="presentation" class="active">亲子活动<span @click="onPageTap('../qinzihuodong/list.jsp')">查看更多</span></li>
								</ul>
								<!-- Tab panes -->
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active" id="home">
										<div class="row">
											<div class="qinzihuodong-curosel">
												<!-- single-product start -->										
												<div class="col-md-12" v-for="(item, i) in qinzihuodongList" :key="i" 
												@click="onPageTap(`../qinzihuodong/detail.jsp?id=${item.id}`)"
												>
													<div class="single-product">
														<div class="product-img" v-if="item.huodongfengmian">
															<img :src="item.huodongfengmian.split(',')[0]" alt="" />
														</div>
														<div class="product-content">
												<h3 @click="onPageTap(`../qinzihuodong/detail.jsp?id=${item.id}`)">{{item.huodongmingcheng}}</h3>
														</div>
													</div>
												</div>
												<!-- single-product end -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- latest-blog-area start -->
			<div class="latest-blog-area" style="padding: 60px 0;margin-bottom: 90px;">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="section-title white text-center">
								<h2>新闻资讯</h2>
								<img src="../../assets/img/section-title-white.png" alt="" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="blog-curosel">
							<div class="col-md-12" v-for="(item, i) in news" :key="i">
								<div class="blog-wrapper">
									<div class="blog-img">
										<a :href="`javascript: onPageTap('../news/news-detail.jsp?id=${item.id}&tablename=news')`"><img :src="item.picture" alt="" /></a>
										<span class="blog-date">order <br /> {{i+1}}</span>
									</div>
									<div class="blog-content">
										<h3><a :href="`javascript: onPageTap('../news/news-detail.jsp?id=${item.id}&tablename=news')`">{{item.title}}</a></h3>
										<a class="read-more" :href="`javascript: onPageTap('../news/news-detail.jsp?id=${item.id}&tablename=news')`">阅读更多 <i class="fa fa-angle-right"></i> <i class="fa fa-angle-right"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer>
				<div class="footer-subscribe-area" style="padding: 60px 0;">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="subscribe-us text-center">
									<h4>写下你的留言</h4>
									<form @submit.prevent="liuyanTap" action="#">
										<input v-model="liuyan" type="text" placeholder="请输入您的留言">
										<button type="submit">留言</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</footer>
		</div>
		<!-- all js here -->
		<!-- vue js -->
		<!-- jquery latest version -->
		<script src="../../assets/js/relys/jquery-1.12.0.min.js"></script>
		<script src="../../assets/js/relys/jquery.meanmenu.js"></script>
		<script src="../../assets/js/relys/jquery-ui.min.js"></script>
		<script src="../../assets/js/relys/bootstrap.min.js"></script>
		<script src="../../assets/js/relys/owl.carousel.min.js"></script>
		<script src="../../assets/js/relys/swiper.min.js"></script>
		<script src="../../assets/js/relys/wow.min.js"></script>
		<script src="../../assets/js/relys/plugins.js"></script>
		<script src="../../assets/js/vue.js"></script>
		<script src="../../assets/js/api/api.js"></script>
		<script src="../../assets/js/api/shop.js"></script>
		<script src="../../assets/js/api/tplist.js"></script>
		<script src="../../assets/js/api/defaultuser.js"></script>
		<div id="script"></div>
		<script type="text/javascript">
			function mainSlider() {
				var BasicSlider = $('.slider-active');
				BasicSlider.on('init', function (e, slick) {
					var $firstAnimatingElements = $('.single-slider:first-child').find('[data-animation]');
					doAnimations($firstAnimatingElements);
				});
				BasicSlider.on('beforeChange', function (e, slick, currentSlide, nextSlide) {
					var $animatingElements = $('.single-slider[data-slick-index="' + nextSlide + '"]').find('[data-animation]');
					doAnimations($animatingElements);
				});
				BasicSlider.slick({
					autoplay: true,
					autoplaySpeed: 10000,
					dots: true,
					fade: true,
					arrows: false,
					responsive: [
						{ breakpoint: 767, settings: { dots: false, arrows: false } }
					]
				});
			
				function doAnimations(elements) {
					var animationEndEvents = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
					elements.each(function () {
						var $this = $(this);
						var $animationDelay = $this.data('delay');
						var $animationType = 'animated ' + $this.data('animation');
						$this.css({
							'animation-delay': $animationDelay,
							'-webkit-animation-delay': $animationDelay
						});
						$this.addClass($animationType).one(animationEndEvents, function () {
							$this.removeClass($animationType);
						});
					});
				}
			}
			var app = new Vue({
				el: "#app",
				data: {
					banners: [],
					kefangxinxiList: [],
					qinzihuodongList: [],
					news: [],
					liuyan: "",
				},
				methods: {
					onPageTap(url) {
						window.location.href = url;
					},
					liuyanTap(){
						var sessiontable = localStorage.getItem("sessionTable")
						if(!sessiontable){
							alert("您还没登录，请先登录")
							return 
						}
						session(sessiontable, (res) => {
							if(res.code==0){
								var obj = {
									"username": localStorage.getItem("adminName"),
									"content": this.liuyan,
									"userid": localStorage.getItem("userid")
								}
								httpJson("messages/add", "POST", obj, (res) =>  {
									if(res&&res.code==0){
										alert("留言成功")
									}
								})
							}
						})
						
					}
				},
				created(){
					var scripts = [
						'../../assets/js/relys/main.js'
					]
					setTimeout(()=> {
						scripts.forEach(ele => {
							var new_element=document.createElement("script");
							new_element.setAttribute("type","text/javascript");
							new_element.setAttribute("src",ele);// 在这里引入了a.js
							$('#script').append(new_element);
						})
					},500)
					tplist("news", 1, 100, false, false, (res) => {
						this.news = res.data.list
						this.$nextTick(() => {
							$(".blog-curosel").owlCarousel({
							    autoPlay: false,
								  slideSpeed:3000,
								  pagination:false,
								  navigation:true,
							    items : 3,
								  /* transitionStyle : "fade", */    /* [This code for animation ] */
								  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
							    itemsDesktop : [1199,3],
								  itemsDesktopSmall : [980,2],
								  itemsTablet: [768,1],
								  itemsMobile : [479,1],
							});
						})
					})
					
					tpPage( "config",(res) => {
						this.banners = res.data.list
						if(this.banners.length==0){
							this.banners.push({value: "../../assets/img/banner/banner1.jpg"})
						}else{
							this.banners.forEach(item => {
								if(!item.value){
									item.value = "../../assets/img/banner/banner1.jpg"
								}
							})
						}
						console.log(this.banners)
						this.$nextTick(() => {
							var mySwiper = new Swiper ('.swiper-container', {
							    loop: false, // 循环模式选项
							    autoplay: {
									autoplay: true,
							        delay: 3000,
							        stopOnLastSlide: false,
							        disableOnInteraction: true,
							     },
							    // 如果需要前进后退按钮
							    navigation: {
							      nextEl: '.swiper-button-next',
							      prevEl: '.swiper-button-prev',
							    },
								pagination: {
								    el: '.swiper-pagination',
								},
							})   
						})
					})
					
					recommend('kefangxinxi', false, (res) => {
						if (res.code == 0) {
							this.kefangxinxiList = res.data.list
							this.$nextTick(function () { 
								$(".kefangxinxi-curosel").owlCarousel({
								    autoPlay: false,
									  slideSpeed:3000,
									  pagination:false,
									  navigation:true,
								    items : 4,
									  /* transitionStyle : "fade", */    /* [This code for animation ] */
									  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
								    itemsDesktop : [1199,4],
									  itemsDesktopSmall : [980,3],
									  itemsTablet: [767,1],
									  itemsMobile : [479,1],
								});
							})
						}
					})
					recommend('qinzihuodong', false, (res) => {
						if (res.code == 0) {
							this.qinzihuodongList = res.data.list
							this.$nextTick(function () { 
								$(".qinzihuodong-curosel").owlCarousel({
								    autoPlay: false,
									  slideSpeed:3000,
									  pagination:false,
									  navigation:true,
								    items : 4,
									  /* transitionStyle : "fade", */    /* [This code for animation ] */
									  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
								    itemsDesktop : [1199,4],
									  itemsDesktopSmall : [980,3],
									  itemsTablet: [767,1],
									  itemsMobile : [479,1],
								});
							})
						}
					})
				}
			})
			function onPageTap(url){
				window.location.href = url
			}
		</script>
	</body>
</html>
