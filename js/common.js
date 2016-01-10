﻿//打开字滑入效果
window.onload = function(){
	$(".connect p").eq(0).animate({"left":"0%"}, 600);
	$(".connect p").eq(1).animate({"left":"0%"}, 400);
};
//jquery.validate表单验证
$(document).ready(function(){
	//注册表单验证
	$("#zhuCe").validate({
		rules:{
			surname:{
				required:true,//必填
				minlength:1, 
				maxlength:32,
				},
			username:{
				required:true,//必填
				minlength:3, //最少3个字符
				maxlength:32,//最多20个字符
			},
			password:{
				required:true,
				minlength:4, 
				maxlength:32,
			},
			confirm_password:{
				required:true,
				minlength:4,
				equalTo:'.password'
			},
		},
		//错误信息提示
		messages:{
			surname:{
				required:"必须填写用户名",
				minlength:"用户名至少为1个字符",
				maxlength:"用户名至多为32个字符",
				remote: "用户名已存在",
			},
			username:{
				required:"必须填写用户名",
				minlength:"用户名至少为4个字符",
				maxlength:"用户名至多为32个字符",
				remote: "用户名已存在",
			},
			password:{
				required:"必须填写密码",
				minlength:"密码至少为4个字符",
				maxlength:"密码至多为32个字符",
			},
			confirm_password:{
				required: "请再次输入密码",
				minlength: "确认密码不能少于3个字符",
				equalTo: "两次输入密码不一致",//与另一个元素相同
			},
		},
	
	});
});
/*function formSubmit(){
    if($("#zhuCe").valid()){
     $("#zhuCe").submit();
 	}else{
		alert("验证失败");	
	}
}*/