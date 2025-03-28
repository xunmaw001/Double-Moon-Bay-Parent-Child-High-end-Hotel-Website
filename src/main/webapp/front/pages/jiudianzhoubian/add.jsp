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
					<h3>酒店周边填写</h3>
					<div>
						<div class="layui-form-item">
							<label class="layui-form-label">景点名称</label>
							<div class="layui-input-block">
							  <input v-model="detail.jingdianmingcheng" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入景点名称" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">请选择景点类型</label>
							<div class="layui-input-block">
								<select id="jingdianleixing" name="interest" lay-filter="jingdianleixing">
									<option :value="item" v-for="(item,index) in jingdianleixingOptions">{{item}}</option>
								</select>
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">景点封面</label>
							<div class="layui-input-block">
								<button type="button" class="layui-btn" id="jingdianfengmianupload-img" v-if="!detail.jingdianfengmian">上传图片</button>
								<div class="layui-upload-list" v-if="detail.jingdianfengmian">
									<img class="layui-upload-img" id="jingdianfengmianimg-temp" :src="detail.jingdianfengmian?detail.jingdianfengmian.split(',')[0]:''">
									<p id="demoText"></p>
								</div>
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">开放时间</label>
							<div class="layui-input-block">
							  <input v-model="detail.kaifangshijian" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入开放时间" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">景点地址</label>
							<div class="layui-input-block">
							  <input v-model="detail.jingdiandizhi" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入景点地址" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item layui-form-text">
						    <label class="layui-form-label">景点介绍</label>
						    <div class="layui-input-block">
						      <textarea id="text-editor"  style="display: none;"></textarea>
						    </div>
						</div>
					</div>
					<button style="margin-bottom: 20px;" type="button" id="btn-confirm" class="btn btn-default">确定编辑</button>
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
						jingdianmingcheng: "",
						jingdianleixing: "",
						jingdianfengmian: "",
						kaifangshijian: "",
						jingdiandizhi: "",
						jingdianjieshao: "",
						thumbsupnum: "",
						crazilynum: "",
					},
					jingdianleixingOptions: [],
				},
				computed: {
				},
				updated() {
					layui.form.render('select','layform');
				},
				async created() {
					var id = getParam('id')
					var tablename = getParam('tablename')
					this.crosstable = tablename
					if(tablename){
						var cross = JSON.parse(localStorage.getItem("crossObj"))
						this.crosstableobj = cross
						for(var key in cross){
							if("jingdianmingcheng" == key){
								this.detail[key] = cross[key]
							}
							if("jingdianleixing" == key){
								this.detail[key] = cross[key]
							}
							if("jingdianfengmian" == key){
								this.detail[key] = cross[key]
							}
							if("kaifangshijian" == key){
								this.detail[key] = cross[key]
							}
							if("jingdiandizhi" == key){
								this.detail[key] = cross[key]
							}
							if("jingdianjieshao" == key){
								this.detail[key] = cross[key]
							}
							if("thumbsupnum" == key){
								this.detail[key] = cross[key]
							}
							if("crazilynum" == key){
								this.detail[key] = cross[key]
							}
						}
																																																																																																											}else if(id){
						await this.getDetail(id, tablename)
					}
					

					this.jingdianleixingOptions = "亲子,山水,人文,海滨,休闲,森林,湖泊,综合,其他".split(',')
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
						addFun("jiudianzhoubian", this.detail, (res) => {
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






				layui.use('upload', function(){
					var $ = layui.jquery
					,upload = layui.upload;
					//普通图片上传
					var uploadInst = upload.render({
						elem: '#jingdianfengmianupload-img'
						,url: baseurl+"file/upload" //改成您自己的上传接口
						,headers: {
							Token: getStorage("Token")
						}
						,before: function(obj){
						  //预读本地文件示例，不支持ie8
						  obj.preview(function(index, file, result){
							$('#jingdianfengmianimg-temp').attr('src', result); //图片链接（base64）
						  });
						}
						,done: function(res){
						  //如果上传失败
						  if(res.code > 0){
							return layer.msg('上传失败');
						  }else{
							  app.detail.jingdianfengmian = baseurl+"/upload/"+res.file
							  return layer.msg('上传成功');
						  }
						  //上传成功
						}
					})
				});










				layui.use('layedit', function(){
				  var layedit = layui.layedit;
				  layedit.set({
					  uploadImage: {
						url: baseurl+"file/upload" //接口url
						,headers: {
							Token: getStorage("Token")
						}
						,type: 'post' //默认post
					  }
					});
				  var index = layedit.build('text-editor'); //建立编辑器
				  $("#btn-confirm").on("click", function(){
						app.detail.jingdianjieshao = layedit.getContent(index)
						alert("编辑成功")
				  })
				});
				layui.use(['form','layedit'], function(){
					var form = layui.form,
						layedit = layui.layedit,
						$ = layui.jquery,
						layer = layui.layer;
				        
					form.on('select(jingdianleixing)', function(data){
						app.detail.jingdianleixing = data.value
					});
				});
			});
		</script>
	</body>
</html>
