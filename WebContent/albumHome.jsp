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

<style type="text/css">
.xinggeban {
	font-size: 25px;
	color: #000;
}
.gengduo {
	font-size: 12px;
	color: #000;
	font-weight: normal;
}
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
	height:850px;
	z-index:2;
	left: 190px;
	top: 10px;
	border: 1px solid #CCC;
}
#apDiv27 {
	position:absolute;
	width:153px;
	height:153px;
	z-index:1;
	left: 20px;
	top: 20px;
	border: 1px outset #CCC;
}
#apDiv28 {
	position:absolute;
	width:300px;
	height:150px;
	z-index:2;
	left: 190px;
	top: 20px;
}
#apDiv29 {
	position:absolute;
	width:700px;
	height:541px;
	z-index:3;
	top: 220px;
}
#apDiv30 {
	position:absolute;
	width:700px;
	height:30px;
	z-index:4;
	left: 0px;
	top: 190px;
	font-size: 16px;
	background-color: #EBEBEB;
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
  	<s:set name="album" value="#request.album"></s:set>
  	<div id="apDiv26">
    <div id="apDiv27"><img src="AlbumImg.action?idAlbum=<s:property value="#album.idAlbum"/>" width="150" height="150" hspace="1" vspace="1" /></div>
    <div id="apDiv28">
      <table width="300" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th width="115" class="xinggeban" scope="col"><div align="left"><s:property value="#album.abName"/></div></th>
          <th width="185" scope="col">&nbsp;</th>
        </tr>
      </table>
      <table width="500" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th colspan="3" class="gengduo" scope="col">&nbsp;</th>
        </tr>
        <tr>
          <td width="50"><span class="gengduo">歌手：</span></td>
          <td width="430"><span class="gengduo"><a href="singerHome.action?idSinger=<s:property value="#album.singer.idSinger"/>" target="_blank"><s:property value="#album.singer.sgrName"/></a></span></td>
          <td width="20">&nbsp;</td>
        </tr>
        <tr>
          <td><span class="gengduo">地域：</span></td>
          <td><span class="gengduo"><s:property value="#album.singer.sgrArea"/></span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td width="50"><span class="gengduo">简介：</span></td>
          <td width="430"><span class="gengduo"><s:property value="#album.abAbstact"/></span></td>
          <td width="20">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="3">&nbsp;</td>
        </tr>
      </table>
    </div>
    <div id="apDiv29">
      <table width="700" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th width="30" height="30" bgcolor="#F6F6F6" scope="col"><form id="form2" name="form2" method="post" action="">
            <input type="checkbox" name="checkbox" id="checkbox" />
            <label for="checkbox"></label>
          </form></th>
          <th width="120" bgcolor="#F6F6F6" scope="col"><form id="form3" name="form3" method="post" action="">
            <input type="submit" name="button" id="button" value="播放选中歌曲" />
          </form></th>
          <th width="120" bgcolor="#F6F6F6" scope="col"><form id="form4" name="form4" method="post" action="">
            <input type="submit" name="button2" id="button2" value="添加到播放列表" />
          </form></th>
          <th bgcolor="#F6F6F6" scope="col">&nbsp;</th>
          <th width="116" bgcolor="#F6F6F6" scope="col">&nbsp;</th>
          <th width="121" bgcolor="#F6F6F6" scope="col">&nbsp;</th>
        </tr>
      </table>
      <table width="700" border="0" cellspacing="0" cellpadding="0">
      <s:iterator value="#album.singer.songs" status="st" id="song">
        <s:if test="#st.Odd">
  			<tr >
  		</s:if>
  		<s:else>
  			<tr bgcolor="#EEF7FF">
  		</s:else>
          <th width="30" height="30" scope="col"><form id="form6" name="form6" method="post" action="">
            <div align="center">
              <input type="checkbox" name="checkbox3" id="checkbox3" />
            </div>
            <label for="checkbox3"></label>
          </form></th>
          <td width="30" style="color: #666; font-size: 14px;" scope="col"><div align="center"><s:property value="#st.getIndex()+1"/></div></td>
          <td scope="col"><a title="<s:property value="#song.sgName"/>" onclick="#" href="javascript:void(0);"><s:property value="#song.sgName"/> </a></td>
          <th width="30" scope="col"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image1','','image/1_2.jpg',1)"><img src="image/1_1.jpg" alt="" name="Image1" width="20" height="20" border="0" id="Image1" 
          		onclick="javascript:onplay('<s:property value="#song.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#song.idSong"/>');"/></a></th>
          <th width="30" scope="col"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image111','','image/2-2.jpg',1)"><img src="image/2-1.jpg" alt="" name="Image111" width="20" height="20" border="0" id="Image111" 
          		onclick="javascript:onadd('<s:property value="#song.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#song.idSong"/>');"/></a></th>
          <th width="30" scope="col"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image121','','image/3-2.jpg',1)"><img src="image/3-1.jpg" alt="" name="Image121" width="20" height="20" border="0" id="Image121" 
          		onclick="javascript:ondownload('<s:property value="#song.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#song.idSong"/>');"/></a></th>
        </tr>
        </s:iterator>
        
       
      </table>
      <table width="700" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th width="30" height="30" scope="col"><form id="form20" name="form2" method="post" action="">
            <input type="checkbox" name="checkbox17" id="checkbox17" />
            <label for="checkbox17"></label>
          </form></th>
          <th width="120" scope="col"><form id="form21" name="form3" method="post" action="">
            <input type="submit" name="button3" id="button3" value="播放选中歌曲" />
          </form></th>
          <th width="120" scope="col"><form id="form22" name="form4" method="post" action="">
            <input type="submit" name="button3" id="button4" value="添加到播放列表" />
          </form></th>
          <th scope="col">&nbsp;</th>
          <th width="116" scope="col">&nbsp;</th>
          <th width="121" scope="col">&nbsp;</th>
        </tr>
      </table>
      <table width="700" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th width="359" height="30" bgcolor="#F6F6F6" scope="col">&nbsp;</th>
          <th width="341" bgcolor="#F6F6F6" scope="col">&nbsp;</th>
        </tr>
      </table>
    </div>
    <div id="apDiv30">
      <table width="200" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th height="30" scope="col"><div align="right" >
            <div align="center" style="font-size: 15px;color:#000">全部歌曲</div>
          </div></th>
        </tr>
      </table>
    </div>
  </div>
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