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
					<h3>新闻资讯填写</h3>
					<div>
						<div class="layui-form-item">
							<label class="layui-form-label">标题</label>
							<div class="layui-input-block">
							  <input v-model="detail.title" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">图片</label>
							<div class="layui-input-block">
								<button type="button" class="layui-btn" id="pictureupload-img" v-if="!detail.picture">上传图片</button>
								<div class="layui-upload-list" v-if="detail.picture">
									<img class="layui-upload-img" id="pictureimg-temp" :src="detail.picture?detail.picture.split(',')[0]:''">
									<p id="demoText"></p>
								</div>
							</div>
						</div>
						<div class="layui-form-item layui-form-text">
						    <label class="layui-form-label">内容</label>
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
						title: "",
						picture: "",
						content: "",
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
							if("title" == key){
								this.detail[key] = cross[key]
							}
							if("picture" == key){
								this.detail[key] = cross[key]
							}
							if("content" == key){
								this.detail[key] = cross[key]
							}
						}
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
						if(!this.detail.title){
							alert(`标题不能为空`);
							return
						}
						if(!this.detail.picture){
							alert(`图片不能为空`);
							return
						}
						if(!this.detail.content){
							alert(`内容不能为空`);
							return
						}
						addFun("news", this.detail, (res) => {
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
						elem: '#pictureupload-img'
						,url: baseurl+"file/upload" //改成您自己的上传接口
						,headers: {
							Token: getStorage("Token")
						}
						,before: function(obj){
						  //预读本地文件示例，不支持ie8
						  obj.preview(function(index, file, result){
							$('#pictureimg-temp').attr('src', result); //图片链接（base64）
						  });
						}
						,done: function(res){
						  //如果上传失败
						  if(res.code > 0){
							return layer.msg('上传失败');
						  }else{
							  app.detail.picture = baseurl+"/upload/"+res.file
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
						app.detail.content = layedit.getContent(index)
						alert("编辑成功")
				  })
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
