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
		<link rel="stylesheet" href="../../assets/css/original/bootstrap.min.css">
		<!-- font-awesome css -->
		<link rel="stylesheet" href="../../assets/css/original/font-awesome.min.css">
		<!-- style css -->
		<link rel="stylesheet" href="../../assets/css/original/style.css">
		<!-- modernizr js -->
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<style type="text/css">
			.layui-form-label{
				width: 100px;
			}
			.form-box{
				padding-top: 90px;
				padding-bottom: 20px;
				width: 100%;
				background-color: #f8f8f8;
				display: flex;
				justify-content: center;
				align-items: center;
			}
			.form-box .form-content{
				width: 50%;
				height: auto;
				background: #FFF;
				padding: 40px 10%;
				position: relative;
			}
			.form-box .form-content .close-btn{
				position: absolute;
				width: auto!important;
				padding: 10px;
				background: #CCCCCC!important;
				color: #444;
				top: 40px;
				right: 10%;
			}
			.form-box .form-content .close-btn:hover{
				width: auto!important;
				padding: 10px;
				background: #CCCCCC!important;
			}
			.form-box .form-content h3{
				width: 100%;
				text-align: center;
				margin-bottom: 40px;
			}
			.form-box .form-content .input-item{
				margin-bottom: 20px;
				display: flex;
			}
			.form-box .form-content .input-item input{
				height: 50px;
				line-height: 50px;
				flex: 1;
			}
			.form-box .form-content .input-item .input-name{
				padding: 0;
				width: 100px;
				height: 50px;
				line-height: 50px;
			}
			.form-box .form-content .input-item img{
				width: 150px;
				height: 150px;
				border-radius: 10px;
				margin-left: 20px;
				object-fit: cover;
			}
			.form-box .form-content button{
				background: #FE4847;
				color: #fff;
				border: 0;
				width: 100%;
			}
			.form-box .form-content button:hover {
			    background: #292929;
			    color: #fff;
			}
			.layui-upload-img{
				width: 100px;
				height: 100px;
				object-fit: cover;
			}
		</style>
	</head>
	<body>
		<div id="app">
			<div class="form-box layui-form" lay-filter="layform">
				<div class="form-control form-content">
					<h3>减少房源填写</h3>
					<div>
						<div class="layui-form-item">
							<label class="layui-form-label">客房编号</label>
							<div class="layui-input-block">
							  <input v-model="detail.kefangbianhao" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入客房编号" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">客房类型</label>
							<div class="layui-input-block">
							  <input v-model="detail.kefangleixing" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入客房类型" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">剩余房间</label>
							<div class="layui-input-block">
							  <input v-model="detail.shengyufangjian" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入剩余房间" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">登记日期</label>
							<div class="layui-input-block">
								<input type="text" name="" placeholder="请输入登记日期" autocomplete="off" class="layui-input" id="dengjiriqi">
							</div>
						</div>
					</div>
					<button type="button" class="btn btn-default" @click="onConfirmTap">提交</button>
				</div>
			</div>
		</div>
		<!-- jquery latest version -->
		<script src="../../assets/js/relys/jquery-1.12.0.min.js"></script>
		<!-- all js here -->
		<!-- bootstrap js -->
		<script src="../../assets/js/relys/bootstrap.min.js"></script>
		<!-- meanmenu js -->
		<script src="../../assets/js/relys/jquery.meanmenu.js"></script>
		<!-- jquery-ui js -->
		<script src="../../assets/js/relys/jquery-ui.min.js"></script>
		<script src="../../assets/jquery-ui.js"></script>
		
		<!-- vue js -->
		<script src="../../assets/js/vue.min.js"></script>
		<script src="../../assets/js/api/api.js"></script>
		<script src="../../assets/js/api/tplist.js"></script>
		<script src="../../assets/js/api/defaultuser.js"></script>
		<script src="../../assets/js/relys/utils.js"></script>
		<script src="../../assets/js/relys/storage.js"></script>
		<script src="../../layui/layui.js"></script>
		<script src="../../assets/js/validate.js"></script>


		<script type="text/javascript">
			var app = new Vue({
				el: "#app",
				data: {
					crosstable: "",
					crosstableobj: {},
					detail: {
						kefangbianhao: "",
						kefangleixing: "",
						shengyufangjian: "",
						dengjiriqi: "",
					},
				},
				computed: {
				},
				updated() {
				},
				async created() {
					var id = getParam('id')
					var tablename = getParam('tablename')
					this.crosstable = tablename
					if(tablename){
						var cross = JSON.parse(localStorage.getItem("crossObj"))
						this.crosstableobj = cross
						for(var key in cross){
							if("kefangbianhao" == key){
								this.detail[key] = cross[key]
							}
							if("kefangleixing" == key){
								this.detail[key] = cross[key]
							}
							if("shengyufangjian" == key){
								this.detail[key] = cross[key]
							}
							if("dengjiriqi" == key){
								this.detail[key] = cross[key]
							}
						}
																																										this.detail.shengyufangjian = 0
																													}else if(id){
						await this.getDetail(id, tablename)
					}
					

				},
				methods: {
					onPageTap(url) {
						window.location.href = url
					},
					updateTap(tablename, data){
						return new Promise((resolve) => {
							updateFun(tablename, data, (res) => {
								if(res&&res.code==0){
									console.log("更新成功")
									resolve(res)
								}
							})
						})
						
					},
					onConfirmTap(){
						// A表列C的值=A表列C的值-B表列C的值
						this.crosstableobj.shengyufangjian = this.crosstableobj.shengyufangjian - this.detail.shengyufangjian
						if(this.crosstableobj.shengyufangjian<0){
							alert("剩余房间不足");
							return
						}
						this.updateTap(this.crosstable, this.crosstableobj)
					if(!isIntNumer(this.detail.shengyufangjian)){
						alert(`剩余房间应输入整数`);
						return
					}
						addFun("jianshaofangyuan", this.detail, (res) => {
							if(res&&res.code==0){
								alert("提交成功")
								window.history.go(-1);
							}
						})
					},


					getDetail(tablename, id) {
						return new Promise((resolve) => {
						goodsInfo(tablename, id, (res) => {
							this.detail = res.data
							resolve(res)
						})
						})
					}
				}
			})
 			$(function(){






				layui.use('laydate', function(){
					var laydate = layui.laydate;
					// 日期选择器
					laydate.render({
						elem: '#dengjiriqi',
						type: 'date',
						done: function(value, date, endDate){
						    console.log(value); //得到日期生成的值，如：2017-08-18
						    app.detail.dengjiriqi = value
						 }
					});
				});


				layui.use(['form','layedit'], function(){
					var form = layui.form,
						layedit = layui.layedit,
						$ = layui.jquery,
						layer = layui.layer;
				        
				});
			});
		</script>
	</body>
</html>
