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
								<a href="${pageContext.request.contextPath}/index.jsp">
									<i class="flaticon-home"></i>
								</a>
							</li>
							<li class="separator">
								<i class="flaticon-right-arrow"></i>
							</li>
							<li class="nav-item">
								<a href="${pageContext.request.contextPath}/jsp/modules/kefangyuding/list.jsp">客房预订</a>
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
												
												<input id="kefangleixing" name="kefangleixing" class="form-control" placeholder="客房类型">
												</div>	
											<div class="form-group">
												<label>客房类别</label>
												
												<input id="kefangleibie" name="kefangleibie" class="form-control" placeholder="客房类别">
												</div>	
											<div class="form-group">
												<label>门市价</label>
												
												<input id="menshijia" name="menshijia" class="form-control" onchange="calculation()">
												</div>	
											<div class="form-group">
												<label>剩余房间</label>
												
												<input id="shengyufangjian" name="shengyufangjian" class="form-control" placeholder="剩余房间">
												</div>	
											<div class="form-group">
												<label>预定数量</label>
												
												<input id="yudingshuliang" name="yudingshuliang" class="form-control" onchange="calculation()">
												</div>	
											<div class="form-group">
												<label>入住天数</label>
												
												<input id="ruzhutianshu" name="ruzhutianshu" class="form-control" onchange="calculation()">
												</div>	
											<div class="form-group">
												<label>入住日期</label>
												
												<div id="ruzhuriqiDate" class="input-append date form_datetime">
													<input id="ruzhuriqi-input" name="ruzhuriqi" size="15" type="text" readonly>
													<span class="add-on"><i class="icon-remove"></i></span>
													<span class="add-on"><i class="icon-calendar"></i></span>
												</div>
											</div>	
											<div class="form-group">
												<label>实付金额</label>
												
												<input id="shifujine" name="shifujine" class="form-control" placeholder="实付金额">
												</div>	
											<div class="form-group">
												<label>用户名</label>
												
												<input id="yonghuming" name="yonghuming" class="form-control" placeholder="用户名">
												</div>	
											<div class="form-group">
												<label>姓名</label>
												
												<input id="xingming" name="xingming" class="form-control" placeholder="姓名">
												</div>	
											<div class="form-group">
												<label>联系电话</label>
												
												<input id="lianxidianhua" name="lianxidianhua" class="form-control" placeholder="联系电话">
												</div>	
											<div class="form-group">
												<label>预定时间</label>
												
												<div id="yudingshijianDate" class="input-append date form_datetime">
													<input id="yudingshijian-input" name="yudingshijian" size="20" type="text" readonly>
													<span class="add-on"><i class="icon-remove"></i></span>
													<span class="add-on"><i class="icon-calendar"></i></span>
												</div>
											</div>	
											<div class="form-group">
												
											</div>	
											<div class="form-group">
												
											</div>	
											<div class="form-group">
												
											</div>	

																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						</form>
										</div>
									</div>
								</div>
								<div class="card-action">
									<button id="submitBtn" type="button" class="btn btn-success">提交</button>
									<button class="btn btn-danger">取消</button>
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
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};
																																																																													
					      				      				      				      				      				      				      				      				      				      				      				      				      				      				      	
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
		// 文件上传
		function upload(){
																																																																																																														}  
		// 表单提交
		function submit() {
			if(validform() ==true && compare() == true){
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				//console.log('json : ',json);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{				
					urlParam = 'save';
					successMes = '添加成功';
				}
				httpJson("kefangyuding/"+urlParam,"POST",data,(res)=>{
					if(res.code == 0){
						window.sessionStorage.removeItem('id');	
						let flag = true;
																																																																																																																																																																																																															if(flag){
							alert(successMes);
						}					
						if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == true){
							window.sessionStorage.removeItem('onlyme');
							window.location.href="${pageContext.request.contextPath}/index.jsp";
						}else{
							window.location.href="list.jsp";
						}
					}
				});
			}else{
				alert("表单未填完整或有错误");
			}
		}
		// 填充富文本框
		function setContent(){
																																																																																															}  
		// 获取富文本框内容
		function getContent(){
																																																																																															}
		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
					           				       			 	           										    kefangleibie: {
														},
						       			 	           										    menshijia: {
														},
						       			 	           										    shengyufangjian: {
														},
						       			 	           										    yudingshuliang: {
															digits: true,
														},
						       			 	           										    ruzhutianshu: {
															digits: true,
														},
						       			 	           										    ruzhuriqi: {
														},
						       			 	           										    shifujine: {
														},
						       			 	           										    yonghuming: {
														},
						       			 	           										    xingming: {
														},
						       			 	           										    lianxidianhua: {
														},
						       			 	           										    yudingshijian: {
														},
						       			 	           										    sfsh: {
														},
						       			 	           										    shhf: {
														},
						       			 	           										    ispay: {
														},
						       			 					},
				messages: {
																													kefangleibie: {
														},
																								menshijia: {
														},
																								shengyufangjian: {
														},
																								yudingshuliang: {
															digits: "请输入整数",
														},
																								ruzhutianshu: {
															digits: "请输入整数",
														},
																								ruzhuriqi: {
														},
																								shifujine: {
														},
																								yonghuming: {
														},
																								xingming: {
														},
																								lianxidianhua: {
														},
																								yudingshijian: {
														},
																								sfsh: {
														},
																								shhf: {
														},
																								ispay: {
														},
															}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
			jQuery.validator.addMethod("isIdCardNo", function(value, element) {
				return this.optional(element) || idCardNoUtil.checkIdCardNo(value);
			}, "请正确输入您的身份证号码");
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				$("#submitBtn").addClass("修改");
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("kefangyuding/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
																																																																																																																																																																																																																					//注册表单验证
						$(validform());
					}
				});
			}else{
																																																																																																																																																		 		fill()
								//注册表单验证
				$(validform());
			}
		}
		// 下拉框选项回显
		function setSelectOption(){
																																																																																																														}
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
							
											
											
											
											
											
											
											
											
											
											
											
											
											
											
										
		}
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
																																																					$("#ruzhuriqiDate").datetimepicker({ 
					minView: "month",
					autoclose: true,
					format:'yyyy-mm-dd',
					language:'zh-CN',
				});
																																											$("#yudingshijianDate").datetimepicker({ 
					autoclose: true,
					format:'yyyy-mm-dd hh:ii:ss',
					minuteStep:1,
					language:'zh-CN',
				});
																												
		}

		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;
																																																																																																if($("#menshijia").val() != null && $("#menshijia").val() != ""){
								if(x == 0 && flag < 2){
									x = (x+1) * parseFloat($("#menshijia").val());
									flag++;
								}else{
									x = x * parseFloat($("#menshijia").val());
									flag++;
								}
							}
																																			if($("#yudingshuliang").val() != null && $("#yudingshuliang").val() != ""){
								if(x == 0 && flag < 2){
									x = (x+1) * parseFloat($("#yudingshuliang").val());
									flag++;
								}else{
									x = x * parseFloat($("#yudingshuliang").val());
									flag++;
								}
							}
																								if($("#ruzhutianshu").val() != null && $("#ruzhutianshu").val() != ""){
								if(x == 0 && flag < 2){
									x = (x+1) * parseFloat($("#ruzhutianshu").val());
									flag++;
								}else{
									x = x * parseFloat($("#ruzhutianshu").val());
									flag++;
								}
							}
																																																																																																																			if(flag < 2){
						$("#shifujine").val(0);
					}else{
						$("#shifujine").val(x);
					}				
																																																										}
		function calculationSE(colName){
			//单列求和接口
			http("kefangyuding"+colName,"GET",{
				tableName: "kefangyuding",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}

		function calculationPre(){
			//进入该页面就填充"单列求和"的列
																																																																																																														}
			//新增时填充字段
			function fill(){

				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
															if(res.data !=null && res.data.yonghuming != null && res.data.yonghuming != ''){
							$('#yonghuming').val(res.data.yonghuming)
						}
								if(res.data !=null && res.data.xingming != null && res.data.xingming != ''){
							$('#xingming').val(res.data.xingming)
						}
								if(res.data !=null && res.data.lianxidianhua != null && res.data.lianxidianhua != ''){
							$('#lianxidianhua').val(res.data.lianxidianhua)
						}
											$(validform());
					}
				});
							
			}	
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
												$("#kefangleixing").val(ruleForm.kefangleixing);	
																$("#kefangleibie").val(ruleForm.kefangleibie);	
																$("#menshijia").val(ruleForm.menshijia);	
																$("#shengyufangjian").val(ruleForm.shengyufangjian);	
																$("#yudingshuliang").val(ruleForm.yudingshuliang);	
																$("#ruzhutianshu").val(ruleForm.ruzhutianshu);	
																$("#ruzhuriqi-input").val(ruleForm.ruzhuriqi);
																$("#shifujine").val(ruleForm.shifujine);	
																$("#yonghuming").val(ruleForm.yonghuming);	
																$("#xingming").val(ruleForm.xingming);	
																$("#lianxidianhua").val(ruleForm.lianxidianhua);	
																$("#yudingshijian-input").val(ruleForm.yudingshijian);
											
																				$("#shhf").val(ruleForm.shhf);	
																$("#ispay").val(ruleForm.ispay);	
									}
		//图片显示
		function showImg(){
																																																																																																														}		
       //跨表

        //跨表
        function crossTable(){
            crossTableName = window.sessionStorage.getItem('crossTableName');
			crossTableId = window.sessionStorage.getItem('crossTableId');
            if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
				http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
					if(res.code == 0){
						crossRuleForm = res.data;
						$('#updateId').val(crossTableId);
												if(res.data != null && res.data != '' && res.data.kefangleixing != null && res.data.kefangleixing != ''){

															$("#kefangleixing").val(res.data.kefangleixing);
													}
												if(res.data != null && res.data != '' && res.data.kefangleibie != null && res.data.kefangleibie != ''){

															$("#kefangleibie").val(res.data.kefangleibie);
													}
												if(res.data != null && res.data != '' && res.data.menshijia != null && res.data.menshijia != ''){

															$("#menshijia").val(res.data.menshijia);
													}
												if(res.data != null && res.data != '' && res.data.shengyufangjian != null && res.data.shengyufangjian != ''){

															$("#shengyufangjian").val(res.data.shengyufangjian);
													}
												if(res.data != null && res.data != '' && res.data.yudingshuliang != null && res.data.yudingshuliang != ''){

															$("#yudingshuliang").val(res.data.yudingshuliang);
													}
												if(res.data != null && res.data != '' && res.data.ruzhutianshu != null && res.data.ruzhutianshu != ''){

															$("#ruzhutianshu").val(res.data.ruzhutianshu);
													}
												if(res.data != null && res.data != '' && res.data.ruzhuriqi != null && res.data.ruzhuriqi != ''){

															$("#ruzhuriqi-input").val(res.data.ruzhuriqi);
								$('#ruzhuriqiFileName').val(res.data.ruzhuriqi)
													}
												if(res.data != null && res.data != '' && res.data.shifujine != null && res.data.shifujine != ''){

															$("#shifujine").val(res.data.shifujine);
													}
												if(res.data != null && res.data != '' && res.data.yonghuming != null && res.data.yonghuming != ''){

															$("#yonghuming").val(res.data.yonghuming);
													}
												if(res.data != null && res.data != '' && res.data.xingming != null && res.data.xingming != ''){

															$("#xingming").val(res.data.xingming);
													}
												if(res.data != null && res.data != '' && res.data.lianxidianhua != null && res.data.lianxidianhua != ''){

															$("#lianxidianhua").val(res.data.lianxidianhua);
													}
												if(res.data != null && res.data != '' && res.data.yudingshijian != null && res.data.yudingshijian != ''){

															$("#yudingshijian-input").val(res.data.yudingshijian);
								$('#yudingshijianFileName').val(res.data.yudingshijian)
													}
												if(res.data != null && res.data != '' && res.data.sfsh != null && res.data.sfsh != ''){

							
																				}
												if(res.data != null && res.data != '' && res.data.shhf != null && res.data.shhf != ''){

															$("#shhf").val(res.data.shhf);
													}
												if(res.data != null && res.data != '' && res.data.ispay != null && res.data.ispay != ''){

															$("#ispay").val(res.data.ispay);
													}
											}
				});  
            }
            window.sessionStorage.removeItem('crossTableName');
			window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
																																																																																																																																																																														},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
																																																																																																															return true;
		}
		function readonly(){
			if(window.sessionStorage.getItem('role') != '管理员'){
				$('#jifen').attr('readonly','readonly');
				$('#money').attr('readonly','readonly');
			}
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
																																																																																																if(largerVal !=null && smallerVal != null){
				if(largerVal<=smallerVal){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}		

		// 用户登出
        <%@ include file="../../static/logout.jsp"%>

		$(document).ready(function() { 
			$('#projectName').html(projectName)
			//设置导航栏菜单
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
			//初始化日期插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});	
			<%@ include file="../../static/myInfo.js"%>
			readonly();
		});
	</script>
</body>
</html>