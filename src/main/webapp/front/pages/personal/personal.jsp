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
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- modernizr js -->
		<script src="../../assets/js/relys/modernizr-2.8.3.min.js"></script>
		<style type="text/css">
			.recharge-box {
				display: flex !important;
			}

			.recharge-btn {
				font-weight: 500 !important;
				color: #444 !important;
				font-size: 12px !important;
				margin-left: 10px;
			}

			.recharge-btn:hover {
				color: #FE4847 !important;
			}

			.update-btn {
				font-size: 15px !important;
				color: #444 !important;
				margin-left: 10px;
				font-weight: 500 !important;
			}

			.update-btn:hover {
				color: #FE4847 !important;
			}

			.logout-btn {
				height: 40px;
				margin-top: 15px;
				padding: 3px 40px;
				color: #fff;
				background-color: #FE4847;
				border: 0;
			}

			.avator {
				width: 100px;
				height: 100px;
				border-radius: 50%;
				border: 1px solid #EEEEEE;
				margin: 20px 0;
			}
			.contact-form button{
				border: 1px solid #e3e3e3;
				line-height: 45px;
				padding: 0 30px;
				background-color: #fff;
			},
			.atavar-btn {
				display: inline-block;
				margin-left: 20px!important;
			}
			.atavar-btn:hover{
				color: #FE4847;
			}
			.pay-type-box{
				clear: both;
				margin-top: 20px;
			}
			.pay-type-box ul{
					display: flex;
					flex-wrap: wrap;
					justify-content: space-between;
					padding: 0 15px;
			}
			.pay-type-box ul li {
				width: 30%;
				border: 1px solid #CCCCCC;
				padding: 20px;
				box-sizing: border-box;
				height: 90px;
				display: flex;
				justify-content: space-between;
				align-items: center;
				margin-bottom: 20px;
			}
			.pay-type-box ul li input{
				margin-right: 10px;
			}
			.pay-type-box ul li .radio-box span.active{
				font-weight: 600;
				color: #444;
			}
			.pay-type-box ul li img{
				width: auto;
				height: 100%;
			}
			.layui-form-label{
				padding: 0!important;
				width: auto!important;
				line-height: 45px;
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
								<h1>个人中心 PAGE</h1>
								<p>Eagle wind strong, Pengfei wave spring</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- page-title-area end -->
			<!-- contact-area start -->
			<div class="contact-area pad-60" v-if="'yonghu'==usertable">
				<div class="container">
					<div class="row">
						<div class="col-md-4">
							<div class="contact-info">
								<div class="message-title">
									<h1>个人信息<label class="update-btn" v-if="formType=='recharge'" @click="updateFormType('updateuser')">(信息修改)</label></h1>
								</div>
								<div class="single-contact">
									<div class="avator-box">
										<label>个人照片</label>
										<img class="avator" :src="yonghuuser.gerenzhaopian?yonghuuser.gerenzhaopian:'../../assets/img/blog/4.jpg'">
									</div>
									<p style="display: flex;">
										<label style="margin-right: 20px;">姓名</label>
										{{yonghuuser.xingming}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">性别</label>
										{{yonghuuser.xingbie}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">联系电话</label>
										{{yonghuuser.lianxidianhua}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">电子邮箱</label>
										{{yonghuuser.dianziyouxiang}}
									</p>

									<p style="display: flex;">
										<label style="margin-right: 20px;">身份证号</label>
										{{yonghuuser.shenfenzhenghao}}
									</p>

								</div>
								<a :href="`${houtaiurl}`" target="view_window" style="display: block;">
									<button class="logout-btn" @click="myhoutai">我的后台</button>
								</a>
								<button style="display: block;" class="logout-btn" @click="logout">退出登录</button>
								<button style="display: block;" class="logout-btn" @click="resetPass('../yonghu/reset.jsp')">重置密码</button>
							</div>
						</div>
						<div class="col-md-8">
							<div class="contact-form" v-if="formType=='updateuser'">
								<div class="message-title">
									<h1>信息修改</h1>
								</div>
								<div class="row layui-form" lay-filter="layform">
									<div class="input-filed">
										<div class="col-md-12">
											<label>个人照片：</label>
											<img @click="onAvatorTap('gerenzhaopian')" class="avator" :src="yonghuuser.gerenzhaopian?yonghuuser.gerenzhaopian:'../../assets/img/blog/4.jpg'">
											<label class="atavar-btn" @click="onAvatorTap('gerenzhaopian')" style="margin-left: 20px;">更换个人照片</label>
											<input type="file" ref="fileInput" accept="image/*" @change="getFile" style="display: none">
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">姓名</label>
												<div class="layui-input-block">
													<input v-model="yonghuform.xingming" type="text" name="" placeholder="请输入姓名" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">性别</label>
												<div class="layui-input-block">
													<select :value="yonghuform.xingbie" style="height: 45px;width:100px;" lay-filter="yonghuxingbie" id="yonghuxingbie" name="interest">
														<option :value="item" v-for="(item,index) in yonghuxingbieOptions">{{item}}</option>
													</select>
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">联系电话</label>
												<div class="layui-input-block">
													<input v-model="yonghuform.lianxidianhua" type="text" name="" placeholder="请输入联系电话" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">电子邮箱</label>
												<div class="layui-input-block">
													<input v-model="yonghuform.dianziyouxiang" type="text" name="" placeholder="请输入电子邮箱" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="layui-form-item">
												<label class="layui-form-label">身份证号</label>
												<div class="layui-input-block">
													<input v-model="yonghuform.shenfenzhenghao" type="text" name="" placeholder="请输入身份证号" autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="contact-textarea">
											<button @click="onUpdateTap">修改</button>
										</div>
									</div>
								</div>
							</div>
							<div class="contact-form" v-if="formType=='recharge'">
								<div class="message-title">
									<h1>余额充值</h1>
								</div>
								<div class="row">
									<div class="input-filed">
										<div class="col-md-12">
											<input name="name" v-model="num" type="number" placeholder="充值额度" />
										</div>
									</div>
									<div class="pay-type-box">
										<ul>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="微信支付" v-model="paytype" />
													<span :class="paytype=='微信支付'">微信支付</span>
												</div>
												<img src="../../assets/img/iconpay/wx.png">
											</li>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="支付宝支付" v-model="paytype" />
												</div>
												<img src="../../assets/img/iconpay/zfb.png">
											</li>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="建设银行" v-model="paytype" />
												</div>
												<img src="../../assets/img/iconpay/js.png">
											</li>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="交通银行" v-model="paytype" />
												</div>
												<img src="../../assets/img/iconpay/jt.png">
											</li>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="中国邮政" v-model="paytype" />
												</div>
												<img src="../../assets/img/iconpay/yz.png">
											</li>
											<li>
												<div class="radio-box">
													<input type="radio" name="" id="" value="中国银行" v-model="paytype" />
												</div>
												<img src="../../assets/img/iconpay/zg.png">
											</li>
										</ul>
									</div>
									<div class="col-md-12">
										<div class="contact-textarea">
											<button @click="onRechargeTap">充值</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- contact-area end -->
		</div>
		<!-- jquery latest version -->
		<script src="../../assets/js/relys/jquery-1.12.0.min.js"></script>
		<script src="../../layui/layui.js"></script>
		<!-- vue.js -->
		<script src="../../assets/js/vue.js"></script>
		<!-- 网络请求 -->
		<script src="../../assets/js/api/api.js"></script>
		<!-- 用户相关 -->
		<script src="../../assets/js/api/tplist.js"></script>
		<script src="../../assets/js/api/defaultuser.js"></script>
		<script src="../../assets/js/relys/storage.js"></script>
		<script src="../../assets/js/validate.js"></script>
		<script type="text/javascript">
			var app = new Vue({
				el: "#app",
				data: {
					houtaiurl: "",
					imgTemp: '',
					formType: 'updateuser',
					pictureKey: "",
					yonghuuser: {
						id: "",
						yonghuming: "",
						mima: "",
						xingming: "",
						xingbie: "",
						lianxidianhua: "",
						dianziyouxiang: "",
						shenfenzhenghao: "",
						gerenzhaopian: "",
					},
					yonghuform: {
						id: "",
						yonghuming: "",
						mima: "",
						xingming: "",
						xingbie: "",
						lianxidianhua: "",
						dianziyouxiang: "",
						shenfenzhenghao: "",
						gerenzhaopian: "",
					},
					num: null,
					usertable: "yonghu",
					paytype: "",
					yonghuxingbieOptions: [],
				},
				created() {
					this.yonghuxingbieOptions = "男,女".split(',')
					var usertable = getStorage("sessionTable")
					if(usertable=="users"||usertable=="user" ){
						window.location.href = '../login/login.jsp'
					}
					this.usertable = usertable
					this.getUser()
				},
				updated() {
					layui.form.render('select','layform');
				},
				methods: {
					myhoutai(){
						this.houtaiurl = adminurl
					},
					getUser(){
						var _this = this;
						session(`${this.usertable}`, function(res) {
							for(var key in res.data){
								_this[`${_this.usertable}user`][key] = res.data[key]
								_this[`${_this.usertable}form`][key] = res.data[key]
							}
						});
					},
					logout(){
						localStorage.removeItem('Token')
						localStorage.removeItem("sessionTable") 
						window.location.href = '../login/login.jsp'
					},
					resetPass(url){
						window.location.href = url
					},
					updateFormType(type) {
						this.formType = type
					},
					onUpdateTap() {
						if(this.usertable=="yonghu"){
						}
						if(this.usertable=="kefangleibie"){
						}
						if(this.usertable=="kefangxinxi"){
						}
						if(this.usertable=="zengjiafangyuan"){
						}
						if(this.usertable=="jianshaofangyuan"){
						}
						if(this.usertable=="kefangyuding"){
						}
						if(this.usertable=="shebeixinxi"){
						}
						if(this.usertable=="qinzihuodong"){
						}
						if(this.usertable=="menpiaoyuding"){
						}
						if(this.usertable=="fangxingjieshao"){
						}
						if(this.usertable=="jiudianzhoubian"){
						}
						if(this.usertable=="jiudiancaiwu"){
						}
						if(this.usertable=="chat"){
						}
						if(this.usertable=="storeup"){
						}
						if(this.usertable=="news"){
						}
						if(this.usertable=="messages"){
						}
						if(this.usertable=="discusskefangxinxi"){
						}
						if(this.usertable=="discussqinzihuodong"){
						}
						if(this.usertable=="discussfangxingjieshao"){
						}
						if(this.usertable=="discussjiudianzhoubian"){
						}
						if(this.usertable=="yonghu"){
							if(!isMobile(this[`${this.usertable}form`].lianxidianhua)){
								alert(`联系电话应输入电话格式`);
								return
							}
							if(!isEmail(this[`${this.usertable}form`].dianziyouxiang)){
								alert(`电子邮箱应输入邮件格式`);
								return
							}
							if(!checkIdCard(this[`${this.usertable}form`].shenfenzhenghao)){
								alert(`身份证号应输入身份证格式`);
								return
							}
						}
						updateUser(`${this.usertable}`, this[`${this.usertable}form`], (res) => {
							this.getUser()
							alert('修改成功');
						})
					},
					onAvatorTap(pictureKey) {
						this.pictureKey = pictureKey
						console.log(this.pictureKey)
						this.$refs.fileInput.click()
					},
					//第三步: 文件选择后, 后在页面上显示出来    转base64位的操作
					getFile(event) {
						var _this = this;
						const files = event.target.files
						let filename = files[0].name //只有一个文件
						if (filename.lastIndexOf('.') <= 0) {
							return alert("请上传一个有效的文件") //判断图片是否有效
						}
						upload(files[0], function(res) {
							console.log(res.file)
							_this[`${_this.usertable}user`][`${_this.pictureKey}`] = baseurl + 'upload/' + res.file
							_this[`${_this.usertable}form`][`${_this.pictureKey}`] = baseurl + 'upload/' + res.file
						})
					},
					onRechargeTap() {
						var _this = this;
						if (!this.num) {
							alert("请输入充值金额");
							return
						}
						if(!this.paytype){
							alert("请选择充值方式")
							return
						}
						var money = parseInt(_this[`${this.usertable}user`].money?_this[`${this.usertable}user`].money:0) +  parseFloat(this.num);
						this[`${this.usertable}form`].money = money
						updateUser(`${this.usertable}`, this[`${this.usertable}form`], (res) => {
							this.getUser()
							alert('充值成功');
						})
					}
				}
			})
			$(function(){
				layui.use('laydate', function(){
					var laydate = layui.laydate;
				});

				layui.use(['form','layedit'], function(){
					var form = layui.form,
						layedit = layui.layedit,
						$ = layui.jquery,
						layer = layui.layer;
					form.on('select(yonghuxingbie)', function(data){
						app[`${app.usertable}form`].xingbie = data.value
					});
				});

			});
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
