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

<style type="text/css">
#apDiv24 {
	position:relative;
	width:900px;
	height:900px;
	z-index:1;
	margin-right: auto;
	margin-left: auto;
	top: -30px;
	color: #000;
}

#fenxiang {
	position:absolute;
	width:700px;
	height:600px;
	z-index:1;
	left: 1px;
	top: 1px;
	border: 2px solid #BFE1FF;
}
a:visited {
	color: #333;
}
a:hover {
	color: #333;
}
a:active {
	color: #333;
}
.fen_div {
	position:relative;
	width:700px;
	height:195px;
	z-index:10;
	background-image: url(image/bg.jpg);
	border-bottom-width: 2px;
	border-bottom-style: dotted;
	border-bottom-color: #CCC;
}
.fen {
	position:absolute;
	width:60px;
	height:60px;
	z-index:1;
	top: 20px;
	left: 20px;
}
.apDiv26 {
	position:absolute;
	width:560px;
	height:130px;
	z-index:2;
	left: 110px;
	top: 40px;
	border: 3px solid #CCE8FB;
}
.fen_top {
	position:absolute;
	width:500px;
	height:30px;
	z-index:3;
	left: 110px;
	top: 10px;
}
.fen1_time {
	position:absolute;
	width:400px;
	height:30px;
	z-index:5;
	left: 10px;
	top: 170px;
	color: #999;
	font-size: 13px;
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
  <div id="fenxiang">
  <ul style="list-style-type:none; margin-left:-40px; margin-top:0px;">
  <s:iterator value="#request.allsharelist" status="st" id="stl">
  <s:if test="#st.getIndex()<15">
  <s:set name="singer" value="#stl.song.singers.toArray()[0]"></s:set>
  <s:set name="album" value="#stl.song.album"></s:set>
  	<li class="fen_li">
    <div class="fen_div">
      <div class="fen"><img src="GetUserImg.action?=<s:property value="#stl.user.usName"/>" width="60" height="60" /></div>
      <div class="apDiv26">
        <table width="560" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="560" height="130"><table width="560" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <th width="20" rowspan="3" scope="col">&nbsp;</th>
                <s:if test="%{#album!=null}">
                <th width="100" height="100" rowspan="3" scope="col"><img src="AlbumImg.action?idAlbum=<s:property value="#album.idAlbum"/>" width="100" height="100" /></th>
                </s:if>
                <s:else>
                <th width="100" height="100" rowspan="3" scope="col"><img src="image/C360_2011-11-10 17-28-53.jpg" width="100" height="100" /></th>
                </s:else>
                <th width="20" rowspan="3" scope="col">&nbsp;</th>
                <td height="20" scope="col"><a href="javascript:;" onclick="javascript:onplay('<s:property value="#stl.song.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#stl.song.idSong"/>');"
                 style="font-size: 15px; font-weight: bold;"><s:property value="#stl.song.sgName"/></a></td>
                </tr>
              <tr>
                <td style="color: #333" scope="col"> <span style="font-size: 15px; font-weight: bold;">演唱者:<a href="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>"><s:property value="#singer.sgrName"/></a></span></td>
                </tr>
              <tr>
                <th scope="col"><div align="right" style="margin-right:80px"><a href="javascript:;" onclick="javascript:onplay('<s:property value="#stl.song.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#stl.song.idSong"/>');"
                		onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image16','','image/menu/play.png',1)"><img src="image/menu/play2.png" name="Image16" width="50" height="50" border="0" id="Image16" /></a></div></th>
                </tr>
              </table></td>
          </tr>
        </table>
      </div>
      <div class="fen_top">
        <table width="500" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <th width="100" height="30" style="color: #9DA3FF; font-size: 15px;" scope="col"><div align="left"><s:property value="#stl.user.usName"/></div></th>
            <th scope="col"><div align="left" style="color: #000"> 分享歌曲//<s:property value="#stl.shareCont"/></div></th>
          </tr>
        </table>
      </div>
      <div class="fen1_time">
              <table width="300" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="30" scope="col" style="color: #999;font-size: 13px;"><s:property value="#stl.stTime"/> </td>
                </tr>
              </table>
            </div>
    </div>
  </li>
   </s:if>
  </s:iterator>
</ul>

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