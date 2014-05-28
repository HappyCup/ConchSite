<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/login.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="js/play.js" type="text/javascript"></script>
<link href="css/comheader.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="js/common.js" type="text/javascript"></script>
<link href="css/search.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="js/search.js" type="text/javascript"></script>
<script language="JavaScript" src="js/singerpage.js" type="text/javascript"></script>
<title>海螺音乐</title>
<script language="JavaScript"  type="text/javascript">
document.onreadystatechange = function () {   
    if(document.readyState=="complete") {          
         getpage("all","all",1);
     }   
 };
</script>
<style type="text/css">
.search_singer {
	height: 23px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
	width: 100px;
}
.form2 {
	border: 1px solid #CCC;
}
.search2 {
	background-image: url(image/search.png);
	height: 23px;
	width: 23px;
}
.singers {
	background-color: #D9EBFD;
}
#num1 {
	position:absolute;
	width:250px;
	height:400px;
	z-index:1;
	left: 10px;
	top: 10px;
}
#apDiv8 {
	position:absolute;
	width:250px;
	height:400px;
	z-index:1;
	left: 10px;
	top: 10px;
	background-color: #FFFFFF;
}
#apDiv9 {
	position:relative;
	width:900px;
	height:500px;
	z-index:1;
	visibility: visible;
	background-color: #FFF;
	border: 1px solid #E8E8E8;
}
.xinggeban {
	font-size: 25px;
	color: #000;
}
.music_ban {
	border-right-width: 1px;
	border-right-style: solid;
	border-top-color: #EEE;
	border-right-color: #EEE;
	border-bottom-color: #EEE;
	border-left-color: #EEE;
	height: 450px;
}
.nusic_num {
	color: #009;
	font-weight: bold;
}
.zzzzzzzzzz {
	font-weight: normal;
	color: #000;
}
.gengduo {
	font-size: 12px;
	color: #000;
}
#apDiv10 {
	position:relative;
	width:900px;
	height:250px;
	z-index:10;
	margin-right: auto;
	margin-left: auto;
}
#main #apDiv9 table tr td .music_ban tr th .music_ban {
	font-weight: bold;
}
#apDiv11 {
	position:relative;
	width:900px;
	height:290px;
	z-index:1;
	border: 1px none #F0F0F0;
	top: 20px;
}
#main #apDiv9 table tr td {
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
}
#apDiv12 {
	position:relative;
	width:860px;
	height:230px;
	z-index:1;
	top: 20px;
	left: 20px;
}
#main #apDiv11 #apDiv12 table tr th {
	font-size: 15px;
	font-weight: normal;
}
#apDiv13 {
	position:relative;
	width:110px;
	height:20px;
	z-index:3;
	left: 0px;
	top: -20px;
	color: #FFF;
	background-color: #CCC;
}
#apDiv14 {
	position:relative;
	width:110px;
	height:20px;
	z-index:3;
	top: -20px;
	color: #FFF;
	background-color: #999;
	opacity: 0.9;
}
#apDiv15 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:10;
}
#apDiv16 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:10;
}
#apDiv17 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:10;
}
#apDiv18 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:10;
}
#apDiv19 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:10;
}
#apDiv20 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:10;
}
#main #apDiv11 #apDiv12 table {
	font-size: 15px;
	color: #000;
}
#apDiv21 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:4;
}
#apDiv22 {
	position:relative;
	width:900px;
	height:30px;
	z-index:2;
	top: 30px;
	color: #FFF;
	background-color: #EEE;
}
#main #apDiv11 #apDiv22 table tr th {
	color: #682996;
}
#main #apDiv11 #apDiv22 table {
	font-size: 13px;
	color: #000;
}
th {
	font-size: 13px;
	color: #000;
}
#apDiv23 {
	position:relative;
	width:500px;
	height:700px;
	z-index:2;
	top: 100px;
	border: medium none #73327C;
	background-color: #8D53EE;
}
#main #apDiv23 table tr th h2 {
	color: #FFF;
	font-size: 20px;
}
#main #apDiv11 #apDiv12 table tr th strong {
	color: #000;
	font-size: 25px;
}
#apDiv24 {
	position:relative;
	width:900px;
	height:430px;
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
	height:400px;
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
	width:680px;
	height:30px;
	z-index:2;
	left: 200px;
	top: 10px;
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-bottom-style: solid;
	border-top-color: #CCC;
	border-right-color: #CCC;
	border-bottom-color: #CCC;
	border-left-color: #CCC;
}
#apDiv27 {
	position:absolute;
	width:650px;
	height:100px;
	z-index:3;
	left: 200px;
	top: 60px;
}
#apDiv24 #apDiv27 table {
	font-size: 15px;
}
#apDiv28 {
	position:absolute;
	width:650px;
	height:110px;
	z-index:4;
	left: 200px;
	top: 200px;
}
#apDiv29 {
	position:absolute;
	width:300px;
	height:40px;
	z-index:5;
	left: 553px;
	top: 368px;
}
</style>
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
  <div id="apDiv25">
    <table width="180" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <th scope="col">&nbsp; <div align="left"></div></th>
      </tr>
      <tr>
        <td><div align="left"><a href="singer.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image12','','image/singer/quan2.jpg',1)"><img src="image/singer/quan1.jpg" name="Image12" width="180" height="30" border="0" id="Image12" /></a></div></td>
      </tr>
      <tr>
        <td>&nbsp;
        <div align="left"></div></td>
      </tr>
      <tr>
        <td><div align="left"><a href="javascript:getpage('cn','m',1)" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image13','','image/singer/huanan2.jpg',1)"><img src="image/singer/huanan1.jpg" name="Image13" width="180" height="30" border="0" id="Image13" /></a></div></td>
      </tr>
      <tr>
        <td><div align="left"><a href="javascript:getpage('cn','f',1)" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image14','','image/singer/huanv2.jpg',1)"><img src="image/singer/huanv1.jpg" name="Image14" width="180" height="30" border="0" id="Image14" /></a></div></td>
      </tr>
      <tr>
        <td><div align="left"><a href="javascript:getpage('cn','z',1)" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image15','','image/singer/huazu2.jpg',1)"><img src="image/singer/huazu1.jpg" name="Image15" width="180" height="30" border="0" id="Image15" /></a></div></td>
      </tr>
      <tr>
        <td><div align="center">&nbsp;</div></td>
      </tr>
      <tr>
        <td><div align="center"><a href="javascript:getpage('jk','m',1)" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image16','','image/singer/rinan2.jpg',1)"><img src="image/singer/rinan1.jpg" name="Image16" width="180" height="30" border="0" id="Image16" /></a></div></td>
      </tr>
      <tr>
        <td><div align="center"><a href="javascript:getpage('jk','f',1)" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image17','','image/singer/rinv2.jpg',1)"><img src="image/singer/rinv1.jpg" name="Image17" width="180" height="30" border="0" id="Image17" /></a></div></td>
      </tr>
      <tr>
        <td><div align="center"><a href="javascript:getpage('jk','z',1)" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image18','','image/singer/rizu2.jpg',1)"><img src="image/singer/rizu1.jpg" name="Image18" width="180" height="30" border="0" id="Image18" /></a></div></td>
      </tr>
      <tr>
        <td><div align="center">&nbsp;</div></td>
      </tr>
      <tr>
        <td><div align="center"><a href="javascript:getpage('eu','m',1)" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image19','','image/singer/ounan2.jpg',1)"><img src="image/singer/ounan1.jpg" name="Image19" width="180" height="30" border="0" id="Image19" /></a></div></td>
      </tr>
      <tr>
        <td><div align="center"><a href="javascript:getpage('eu','f',1)" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image20','','image/singer/ounv2.jpg',1)"><img src="image/singer/ounv1.jpg" name="Image20" width="180" height="30" border="0" id="Image20" /></a></div></td>
      </tr>
      <tr>
        <td><div align="center"><a href="javascript:getpage('eu','z',1)" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image21','','image/singer/ouzu2.jpg',1)"><img src="image/singer/ouzu1.jpg" name="Image21" width="180" height="30" border="0" id="Image21" /></a></div></td>
      </tr>
    </table>
  </div>
    
  <div id="singerpage">
  </div>
</div>
</div>
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