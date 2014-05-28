<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/registe.css" rel="stylesheet" type="text/css" />
<link href="css/login.css" rel="stylesheet" type="text/css">
<link href="css/comheader.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="js/common.js" type="text/javascript"></script>
<link href="css/search.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="js/search.js" type="text/javascript"></script>
<title>海螺音乐</title>

</head>

<body onload="MM_preloadImages('image/menu/tuijian2.jpg','image/menu/paihangban2.jpg','image/menu/geshou2.jpg','image/menu/zhuanji2.jpg','image/menu/sbtt2.jpg','image/menu/fxl2.jpg','image/menu/kefu2.png','image/menu/yonghu2.png','image/paihang/rihan2.jpg','image/paihang/oumei2.jpg','image/paihang/neidi2.jpg','image/1_2.png','image/2-2.png','image/3-2.png')">
<div id="menu">
		<table width="900" border="0" cellspacing="0">
			<tr>
				<th width="235" rowspan="2" scope="row"><img src="image/logo.jpg" width="222" height="89" /></th>
				<th width="68" rowspan="2" scope="row">&nbsp;</th>
				<th height="27" colspan="2" scope="row">&nbsp;</th>
				<th width="47" rowspan="2" scope="row">&nbsp;</th>
				<th width="32" height="27" scope="row"></th>
				<th width="95" height="27" scope="row"></th>
				<th width="138" scope="row"></th>
			</tr>
			<tr>
				<th colspan="2" scope="row">
					<form id="form1" name="form1" >
						<p class="from">
							<input type="text" style="display:none">
							<label for="search"></label>
							<input name="search" type="text" class="text1" id="search"
								onclick="MM_setTextOfTextfield('search','','')" onkeypress="if(event.keyCode==13){onsearchbutton();}"
								value="搜歌手、歌曲" />
							<input name="find" type="button" class="button1" id="find" onclick="onsearchbutton()"
								value=" " />
						</p>
					</form>
				</th>
				<s:set name="user" value="#session['user']"></s:set>
				<s:if test="%{#user==null}">
					<th width="32" height="32" scope="row" id="login_area1"></th>
					<th width="95" height="32" scope="row" id="login_area2">
						<a href="hailuo_registe.jsp">新用户注册</a>
					</th>
					<th width="138" scope="row" id="login_area3">
						<a href="#"
							onclick="MM_showHideLayers('apDiv6','','show','KgPopupLoginBox','','show')">立即登录</a>
					</th>
				</s:if>
				<s:else>
					<th width="32" height="32" scope="row" id="login_area1">
					<div class="login logined" id="lng" style="vertical-align: middle; ">
						<a class="pic" hidefocus="true" target="_blank" href="#">
							<img id="myheadpic"
								src="http://localhost:8081/ConchSite/GetImg.action" width="32"
								height="32" />
						</a>
						</div>
						</th>
					<th width="95" scope="row" align="left" id="login_area2">
						<a hidefocus="true" id="mynickname" target="_blank" href="#"
							class="blue">
							<s:property value="#user.usName" />
						</a>
					</th>
					<th width="138" scope="row" id="login_area3">
						<a hidefocus="true" href="logout.action" class="logout">退出登录</a>
					</th>
				</s:else>
			</tr>
		</table>
		<table width="900" border="0" cellspacing="0" cellpadding="0">
		  <tr>
		    <th width="90" height="30" scope="row"><a href="hailuo.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image116','','image/menu/tuijian2.jpg',1)"><img src="image/menu/tuijian1.jpg" name="Image116" width="90" height="40" border="0" id="Image116" /></a></th>
		    <td width="90" height="30"><a href="ranklist.action?area=cn" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image108','','image/menu/paihangban2.jpg',1)"><img src="image/menu/paihangban1.jpg" name="Image108" width="90" height="40" border="0" id="Image108" /></a></td>
		    <td width="90" height="30"><a href="singer.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image109','','image/menu/geshou2.jpg',1)"><img src="image/menu/geshou1.jpg" name="Image109" width="90" height="40" border="0" id="Image109" /></a></td>
		    <td width="90" height="30"><a href="album.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image110','','image/menu/zhuanji2.jpg',1)"><img src="image/menu/zhuanji1.jpg" name="Image110" width="90" height="40" border="0" id="Image110" /></a></td>
		    <td width="90" height="30"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image113','','image/menu/sbtt2.jpg',1)"><img src="image/menu/sbtt1.jpg" name="Image113" width="90" height="40" border="0" id="Image113" /></a></td>
		    <td width="90" height="30"><a href="shareArea.action" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image114','','image/menu/fxl2.jpg',1)"><img src="image/menu/fxl1.jpg" name="Image114" width="90" height="40" border="0" id="Image114" /></a></td>
		    <td width="90" height="30"><img src="image/menu/null.png" width="90" height="40" /></td>
		    <td width="90" height="30"><img src="image/menu/null.png" width="90" height="40" /></td>
		    <td width="90" height="30"><a href="userHome.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image117','','image/menu/yonghu2.png',1)"><img src="image/menu/yonghu1.png" name="Image117" width="90" height="40" border="0" id="Image117" /></a></td>
		    <td width="90" height="30"><a href="feedback.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image115','','image/menu/kefu2.png',1)"><img src="image/menu/kefu1.png" name="Image115" width="90" height="40" border="0" id="Image115" /></a></td>
		  </tr>
		</table>
	</div>
	<p>&nbsp;</p>
	<div id="apDiv6"></div>
	<p>&nbsp;</p>
	<div id="searchpage">
	<div id="apDiv24">
  <div class="rg_ct">
  	<div class="rg_ct_hd">
    	<span></span>
    </div>
    <div class="rg_ct_fm">
    	<form id="uRegForm" method="post">
        	<table class="hl_lgn_reg_tb" width="100%">                
            	<tbody><tr>
                	<td width="100" align="right"><label for="uUsername" class="hl_lgn_reg_tb_tl"><span class="red">*</span> 用户名：</label></td>
                    <td align="left">
                    	<div class="hl_lgn_textbox_area hl_lgn_textbox_username">
                       		<div class="hl_lgn_textbox"><input id="uUsername" name="username" maxlength="20" type="text" class="hl_lgn_textbox_ipt"></div>
                        	<div class="hl_lgn_tips" id="Username_alter"><i class="hl_lgn_tips_icon"></i><span class="hl_lgn_tips_txt">请输入4到20位字符，首位不能为数字</span></div>
                        </div>
                    </td></tr>
               	
                 <tr>
                 	<td align="right"><label for="uEmail" class="hl_lgn_reg_tb_tl"><span class="red"> </span> 邮箱：</label></td>
                    	<td align="left">
                        	<div class="hl_lgn_textbox_area hl_lgn_textbox_email">
                                        <div class="hl_lgn_textbox"><input id="uEmail" name="email" maxlength="30" type="text" class="hl_lgn_textbox_ipt"></div>
                                        <div class="hl_lgn_tips" id="uEmail_alter"><i class="hl_lgn_tips_icon"></i><span class="hl_lgn_tips_txt">请输入您的常用邮箱，将用作密保邮箱</span></div>
                            </div>
                       	</td>
               	</tr>
               	<tr>
                	<td align="right" valign="top"><label for="uPassword" class="hl_lgn_reg_tb_tl"><span class="red">*</span> 密码：</label></td>
                    	<td align="left">
                        	<div class="hl_lgn_textbox_area hl_lgn_textbox_password">
                            	<div class="hl_lgn_textbox"><input id="uPassword" maxlength="16" name="password" type="password" class="hl_lgn_textbox_ipt"></div>
                                <div class="hl_lgn_tips" id="uPassword_alter"><i class="hl_lgn_tips_icon"></i><span class="hl_lgn_tips_txt">请输入6-16位的数字、字母或符号。</span></div>
                                <div class="hl_lgn_psw_strong" id="uPasswordStrong">
                                            <div class="hl_lgn_psw_txt">密码强度:弱</div>
                                            <div class="hl_lgn_psw_strong_cnt">
                                            	<span class="bg"></span>
                                            	<span class="line1"></span>
                                            	<span class="line2"></span></div>
                                            <div class="hl_lgn_psw_txt">强</div>
                                </div>
                        	</div>
                      	</td>
               	</tr>
                <tr>
                    	<td align="right"><label for="uRepassword" class="hl_lgn_reg_tb_tl"><span class="red">*</span> 确认密码：</label></td>
                        <td align="left">
                        	<div class="hl_lgn_textbox_area hl_lgn_textbox_repassword">
                            	<div class="hl_lgn_textbox"><input id="uRepassword" maxlength="16" name="repassword" type="password" class="hl_lgn_textbox_ipt"></div>
                                <div class="hl_lgn_tips" id="uRepassword_alter"><i class="hl_lgn_tips_icon"></i><span class="hl_lgn_tips_txt">再次输入密码</span></div>
                           	</div>
                      	</td>
           		</tr>
                <tr>
                		<td align="right"><label for="uCode" class="hl_lgn_reg_tb_tl"><span class="red">*</span> 验证码：</label></td>
                        <td align="left">
                        	<div class="hl_lgn_textbox_area hl_lgn_textbox_code">
                            	<div class="hl_lgn_textbox"><input id="uCode" name="code" maxlength="6" type="text" class="hl_lgn_textbox_ipt"></div>
                                <div class="hl_lgn_tips"><i class="hl_lgn_tips_icon"></i><span class="hl_lgn_tips_txt"></span></div>
                                <div class="hl_lgn_code_area"><img id="ucheckimg" title="看不清，换一张" style="cursor: hand;padding-top:3px;" onclick="getVerifyCodeImg(this)" src="http://www.kugou.com/newuc/user/verifycode/t=1365844393031"></div>
                                <a onclick="getVerifyCodeImg(document.getElementById('ucheckimg'))" class="hl_lgn_changeone">换一张</a>
                          	</div>
                       	</td>
            	</tr>
              	<tr>
                		<td class="hl_lgn_changeone"></td>
                  <td align="left"><label><input id="uReaded" type="checkbox" name="readed" checked="checked" class="hl_lgn_checkbox"> 我已经认真阅读并同意 <a href="javascript:showClause();">《海螺服务条款》</a></label></td>
               	</tr>
               	<tr>
               			<td></td>
               			<td align="left"><input type="button" name="uSubmit" class="hl_lgn_reg_btn" value="立即注册" id="uSubmitBtn"></td>
               	</tr>
 			</tbody></table>
      	</form>
    </div>
  </div>
</div>
</div>
<script language="JavaScript" src="js/registe.js" type="text/javascript"></script>

<%-- 登录界面 --%>
	<script language="JavaScript" src="js/login.js" type="text/javascript"></script>
<div class="kg_popup kg_popup_login" id="KgPopupLoginBox" style="display: block; z-index: 10001; left: 50%; margin-left: -220px; top: 50%; margin-top: -158px; ">
	<div class="kg_popup_ct">
    	<a href="javascript:;" class="kg_popup_close" id="KgPopupLoginCloseBtn" onclick="MM_showHideLayers('KgPopupLoginBox','','hide','apDiv6','','hide','KgPopupLoginNoticeArea','','hide')" title="关闭"></a>
    <div class="kg_popup_hd">
    	<h4 class="kg_popup_hd_tl">登录海螺音乐</h4>
        <div class="kg_popup_hd_l"></div>
        <div class="kg_popup_hd_r"></div></div>
    <div class="kg_popup_bd">
    	<div class="kg_popup_notice kg_popup_notice_warn" id="KgPopupLoginNoticeArea" style="visibility: hidden; ">
        	<i class="kg_popup_notice_icon"></i>
            <span class="kg_popup_notice_txt">帐号或密码错误</span></div>
        <form id="KgPopupLoginForm">
        	<div class="kg_popup_txt_area">
            	<div class="kg_popup_txt_box kg_popup_txt_box_username">
                	<label class="kg_popup_txt_tl" for="KgPopupUserName">帐号：</label>
                    <input id="KgPopupUserName" name="UserName" type="text" class="kg_popup_txt_ipt" ></div></div>
                <div class="kg_popup_txt_area">
                	<div class="kg_popup_txt_box kg_popup_txt_box_password">
                    	<label class="kg_popup_txt_tl" for="KgPopupUserPwd">密码：</label>
                    	<input id="KgPopupUserPwd" name="UserPwd" type="password" class="kg_popup_txt_ipt"></div></div>
                 <div class="kg_popup_tool_area kg_popup_bottom10">
                 	<div class="kg_popup_tool_lt">
                    	<input class="kg_popup_checkbox" type="checkbox" name="autoLogin" id="autoLogin" checked="">
                        	<label for="autoLogin">下次自动登录</label></div>
                            <div class="kg_popup_tool_rt">
                            <a href="#" class="kg_popup_forget_pwd">忘记密码？</a>
                            <a href="#" class="kg_popup_now_reg">立即注册</a></div></div>
                 <div class="kg_popup_tool_area">
                 <div class="kg_popup_tool_rt">
                 	<input type="button" class="kg_popup_login_btn" id="KgPopupLoginBtn" value="登录" onclick="onlogin()"/></div></div></form>
     </div></div></div>

</body>
</html>

