<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
		<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
		</script>
		<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
		<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	  	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
		
</head>
<body>
	<div class="wrapper compact-wrapper">
		<%@ include file="../../static/mainHeader.jsp"%>
		<!-- Sidebar -->
		<%@ include file="../../static/sidebar.jsp"%>
		<div class="main-panel">
			<div class="content">
				<div class="page-inner">
					<div class="page-header">
						<ul class="breadcrumbs">
							<li class="nav-home">
								<a href="#">
									<i class="flaticon-home"></i>
								</a>
							</li>
							<li class="separator">
								<i class="flaticon-right-arrow"></i>
							</li>
							<li class="nav-item">
								<a href="#">客房预订</a>
							</li>
						</ul>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title"></div>
								</div>
								<div class="card-body">
									<div class="row">
										<div class="col-md-6 col-lg-4">
										<form id="addOrUpdateForm" method="post">
										<input id="updateId" name="id" type="hidden">
																					<div class="form-group">
																								<label>客房类型</label>
																								
																								<input id="kefangleixing" v-model="ruleForm.kefangleixing" readonly>
																							</div>
											
																					<div class="form-group">
																								<label>客房类别</label>
																								
																								<input id="kefangleibie" v-model="ruleForm.kefangleibie" readonly>
																							</div>
											
																					<div class="form-group">
																								<label>门市价</label>
																								
																								<input id="menshijia" v-model="ruleForm.menshijia" readonly>
																							</div>
											
																					<div class="form-group">
																								<label>剩余房间</label>
																								
																								<input id="shengyufangjian" v-model="ruleForm.shengyufangjian" readonly>
																							</div>
											
																					<div class="form-group">
																								<label>预定数量</label>
																								
																								<input id="yudingshuliang" v-model="ruleForm.yudingshuliang" readonly>
																							</div>
											
																					<div class="form-group">
																								<label>入住天数</label>
																								
																								<input id="ruzhutianshu" v-model="ruleForm.ruzhutianshu" readonly>
																							</div>
											
																					<div class="form-group">
																								<label>入住日期</label>
																								
																								<input id="ruzhuriqi" v-model="ruleForm.ruzhuriqi" readonly>
																							</div>
											
																					<div class="form-group">
																								<label>实付金额</label>
																								
																								<input id="shifujine" v-model="ruleForm.shifujine" readonly>
																							</div>
											
																					<div class="form-group">
																								<label>用户名</label>
																								
																								<input id="yonghuming" v-model="ruleForm.yonghuming" readonly>
																							</div>
											
																					<div class="form-group">
																								<label>姓名</label>
																								
																								<input id="xingming" v-model="ruleForm.xingming" readonly>
																							</div>
											
																					<div class="form-group">
																								<label>联系电话</label>
																								
																								<input id="lianxidianhua" v-model="ruleForm.lianxidianhua" readonly>
																							</div>
											
																					<div class="form-group">
																								<label>预定时间</label>
																								
																								<input id="yudingshijian" v-model="ruleForm.yudingshijian" readonly>
																							</div>
											
																					<div class="form-group">
																								<label>是否审核</label>
																								
																								<input id="sfsh" v-model="ruleForm.sfsh" readonly>
																							</div>
											
																					<div class="form-group">
												
																																				
																								
																							</div>
											
																					<div class="form-group">
																								<label>是否支付</label>
																								
																								<input id="ispay" v-model="ruleForm.ispay" readonly>
																							</div>
											
										
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													<div class="form-group">
												<label>审核回复</label>
												<script id="shhfEditor" type="text/plain" style="width:800px;height:230px;"></script>
												<script type="text/javascript">
												    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
												   //相见文档配置属于你自己的编译器
												 var shhfUe = UE.getEditor('shhfEditor', {
													toolbars: [
														[
															'undo', //撤销
															'bold', //加粗
															'redo', //重做
															'underline', //下划线
															'horizontal', //分隔线
															'inserttitle', //插入标题
															'cleardoc', //清空文档
															'fontfamily', //字体
															'fontsize', //字号
															'paragraph', //段落格式
															'inserttable', //插入表格
															'justifyleft', //居左对齐
															'justifyright', //居右对齐
															'justifycenter', //居中对
															'justifyjustify', //两端对齐
															'forecolor', //字体颜色
															'fullscreen', //全屏
															'edittip ', //编辑提示
															'customstyle', //自定义标题
															 ]
														]
													});
												</script>
												<input type="hidden" id="shhf-input">
											</div>
																																																																																</form>
										</div>
									</div>
								</div>
								<div class="card-action">
									<button id="exitBtn" type="button">返回</button>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Custom template | don't include it in your project! -->
		<!-- End Custom template -->
	</div>
	<!--   Core JS Files   -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/core/jquery.3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/core/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/core/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.form.js"></script>
	<!-- jQuery UI -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
	
	<!-- jQuery Scrollbar -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
	<!-- Atlantis JS -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/atlantis.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/assets/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/assets/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/assets/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/assets/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<!-- Atlantis DEMO methods, don't include it in your project! -->
	<!--<script src="${pageContext.request.contextPath}/resources/assets/js/setting-demo2.js"></script> -->
	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   

		var tableName = "kefangyuding";
		var pageType = "info";
		var updateId = "";


		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "kefangyuding/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});


		// 填充富文本框
		function setContent(){
																																																																																								if(ruleForm.shhf != null && ruleForm.shhf != 'null' && ruleForm.shhf != ''){
					var shhfMes = '' + ruleForm.shhf;
					var shhfUeditor = UE.getEditor('shhfEditor');
					shhfUeditor.ready(function() {
						shhfUeditor.setContent(shhfMes);
						shhfUeditor.setDisabled('fullscreen');
					});
				}
														}  

		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				$("#submitBtn").addClass("修改");
				$.ajax({ 
	                type: "GET",
	                url: baseUrl + "kefangyuding/info/" + id,
	                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
	                success: function(res){           
	                	if(res.code == 0){
	                		ruleForm = res.data
							showImg();
							setContent();	
							setMediaUrl();		
							setDownloadBtn();
			    		}else if(res.code ==401){
			    			 <%@ include file="../../static/toLogin.jsp"%>	
			    		}else{
							 alert(res.msg);
						}
	                },
	            });
			}else{
				$("#submitBtn").addClass("新增");
			}
		}
		//图片显示
		function showImg(){
																																																																																																														}		
		function exit(){
			window.sessionStorage.removeItem("id");
			window.location.href = "list.jsp";
		}		
		// 下载
		function download(fileName){
			var url = baseUrl+'file/download?fileName='+fileName;
			window.open(url);
		}		
		//设置下载
		function setDownloadBtn(){
																																																																																																														}		
		//设置音视频播放链接
		function setMediaUrl(){
																																																																																																														}
		//打开新窗口播放媒体
		function mediaPlay(url){
			//var url = baseUrl + "upload/" + fileName;
			window.open(url);
		}
		// 用户登出
        <%@ include file="../../static/logout.jsp"%>
		$(document).ready(function() { 
			$('#projectName').html(projectName)
			setMenu();
			//设置左上角系统名
			if(projectName.length >14){
				$('.logo-header h2').html(projectName.substring(0,13)+'..')
			}else{
				$('.logo-header h2').html(projectName)
			}
			//设置右上角用户名
			$('.user-box .u-text h4').html(window.sessionStorage.getItem('username'))
			<%@ include file="../../static/color.js"%>
			<%@ include file="../../static/style.jsp"%>
			$('#exitBtn').on('click', function(e) {
			    e.preventDefault();
				exit();
			});
			getDetails();
			<%@ include file="../../static/myInfo.js"%>
		});
	</script>
</body>
</html>