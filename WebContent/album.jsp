<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>海螺音乐</title>
<link href="css/login.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="js/play.js" type="text/javascript"></script>
<link href="css/comheader.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="js/common.js" type="text/javascript"></script>
<link href="css/search.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="js/search.js" type="text/javascript"></script>
<script language="JavaScript" src="js/albumpage.js" type="text/javascript"></script>

<script language="JavaScript"  type="text/javascript">
document.onreadystatechange = function () {   
    if(document.readyState=="complete") {          
    	getAlbumpage("all",1);
     }   
 };
</script>

<style type="text/css">
#apDiv24 {
	position:relative;
	width:900px;
	height:750px;
	z-index:1;
	margin-right: auto;
	margin-left: auto;
	top: -30px;
	color: #000;
	background-color: #FFFFFF;
	border: 1px solid #CCC;
}
#apDiv25 {
	position:absolute;
	width:180px;
	height:700px;
	z-index:1;
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-right-style: solid;
	border-top-color: #CCC;
	border-right-color: #CCC;
	border-bottom-color: #CCC;
	border-left-color: #CCC;
	top: 10px;
}

#apDiv26 {
	position:absolute;
	width:700px;
	height:743px;
	z-index:2;
	left: 200px;
}
#apDiv27 {
	position:absolute;
	width:150px;
	height:150px;
	z-index:1;
	left: 20px;
	top: 20px;
}
#apDiv28 {
	position:absolute;
	width:150px;
	height:150px;
	z-index:2;
	left: 190px;
	top: 20px;
}
#apDiv29 {
	position:absolute;
	width:150px;
	height:150px;
	z-index:3;
	left: 360px;
	top: 20px;
}
#apDiv30 {
	position:absolute;
	width:150px;
	height:150px;
	z-index:4;
	left: 530px;
	top: 20px;
}
#apDiv31 {
	position:absolute;
	width:680px;
	height:50px;
	z-index:5;
	left: 10px;
	top: 180px;
}
#apDiv32 {
	position:absolute;
	width:150px;
	height:150px;
	z-index:6;
	left: 20px;
	top: 250px;
}
#apDiv33 {
	position:absolute;
	width:680px;
	height:50px;
	z-index:7;
	left: 10px;
	top: 410px;
}
#apDiv34 {
	position:absolute;
	width:150px;
	height:150px;
	z-index:8;
	left: 190px;
	top: 250px;
}
#apDiv35 {
	position:absolute;
	width:150px;
	height:150px;
	z-index:9;
	left: 360px;
	top: 250px;
}
#apDiv36 {
	position:absolute;
	width:150px;
	height:150px;
	z-index:10;
	left: 530px;
	top: 250px;
}
#apDiv37 {
	position:absolute;
	width:150px;
	height:150px;
	z-index:11;
	left: 20px;
	top: 480px;
}
#apDiv38 {
	position:absolute;
	width:150px;
	height:150px;
	z-index:12;
	left: 190px;
	top: 480px;
}
#apDiv39 {
	position:absolute;
	width:150px;
	height:150px;
	z-index:13;
	left: 360px;
	top: 480px;
}
#apDiv40 {
	position:absolute;
	width:150px;
	height:150px;
	z-index:1;
	left: 177px;
	top: 10px;
}
#apDiv41 {
	position:absolute;
	width:150px;
	height:150px;
	z-index:14;
	left: 530px;
	top: 480px;
}
#apDiv42 {
	position:absolute;
	width:680px;
	height:50px;
	z-index:15;
	top: 640px;
	left: 10px;
}
#apDiv43 {
	position:absolute;
	width:700px;
	height:30px;
	z-index:16;
	bottom: 0px;
	background-color: #FFFFFF;
}
#zhuan1 {
	position:absolute;
	width:150px;
	height:210px;
	z-index:17;
	left: 20px;
	top: 20px;
}
#zhuan2 {
	position:absolute;
	width:150px;
	height:210px;
	z-index:17;
	left: 190px;
	top: 20px;
}
#zhuan3 {
	position:absolute;
	width:150px;
	height:210px;
	z-index:17;
	left: 360px;
	top: 20px;
}
#zhuan4 {
	position:absolute;
	width:150px;
	height:210px;
	z-index:17;
	left: 530px;
	top: 20px;
}
#zhuan5 {
	position:absolute;
	width:150px;
	height:210px;
	z-index:17;
	left: 20px;
	top: 250px;
}
#zhuan6 {
	position:absolute;
	width:150px;
	height:210px;
	z-index:17;
	left: 190px;
	top: 250px;
}
#zhuan7 {
	position:absolute;
	width:150px;
	height:210px;
	z-index:17;
	left: 360px;
	top: 250px;
}
#zhuan8 {
	position:absolute;
	width:150px;
	height:210px;
	z-index:17;
	left: 530px;
	top: 250px;
}
#zhuan9 {
	position:absolute;
	width:150px;
	height:210px;
	z-index:17;
	left: 20px;
	top: 480px;
}
#zhuan10 {
	position:absolute;
	width:150px;
	height:210px;
	z-index:17;
	left: 190px;
	top: 480px;
}
#zhuan11 {
	position:absolute;
	width:150px;
	height:210px;
	z-index:17;
	left: 360px;
	top: 480px;
}
#zhuan12 {
	position:absolute;
	width:150px;
	height:210px;
	z-index:17;
	left: 534px;
	top: 480px;
}
#zhuan13 {
	position:absolute;
	width:150px;
	height:210px;
	z-index:17;
	left: 360px;
	top: 71px;
}
</style>
</head>
<body
	onload="MM_preloadImages('image/yueku2.png','image/mv2.png','image/zixun2.png','image/meinv2.png','image/yinyue2.png','image/changpin2.png','image/kefu2.png','image/yonghu2.png','image/1_2.jpg','image/2-2.jpg','image/3-2.jpg')">
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
  <div id="apDiv25">
    <table width="180" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <th scope="col">&nbsp; <div align="left"></div></th>
      </tr>
      <tr>
        <td><div align="left"><a href="album.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image12','','image/paihang/quan2.jpg',1)"><img src="image/paihang/quan1.jpg" name="Image12" width="180" height="30" border="0" id="Image12" /></a></div></td>
      </tr>
      <tr>
        <td>&nbsp;
        <div align="left"></div></td>
      </tr>
      <tr>
        <td><div align="left"><a href="javascript:getAlbumpage('cn',1)" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image13','','image/paihang/hua2.jpg',1)"><img src="image/paihang/hua1.jpg" name="Image13" width="180" height="30" border="0" id="Image13" /></a></div></td>
      </tr>
      <tr>
        <td><div align="center"><a href="javascript:getAlbumpage('eu',1)" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image14','','image/paihang/ou2.jpg',1)"><img src="image/paihang/ou1.jpg" name="Image14" width="180" height="30" border="0" id="Image14" /></a></div></td>
      </tr>
      <tr>
        <td><div align="center"><a href="javascript:getAlbumpage('jk',1)" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image15','','image/paihang/ri2.jpg',1)"><img src="image/paihang/ri1.jpg" name="Image15" width="180" height="30" border="0" id="Image15" /></a></div></td>
      </tr>
      <tr>
        <td><div align="center">&nbsp;</div></td>
      </tr>
      <tr>
        <td><div align="center"></div></td>
      </tr>
    </table>
  </div>
  <div id="albumpage">
  </div>
</div></div>
	
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