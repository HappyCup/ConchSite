<!DOCTYPE HTML>
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
<title>海螺音乐</title>

<script src="js/SpryTabbedPanels.js" type="text/javascript"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.Jcrop.min.js"></script>
<link rel="stylesheet" href="css/jquery.Jcrop.css" type="text/css" />
<link href="css/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />

<style type="text/css">
#user_apDiv24 {
	position:relative;
	width:900px;
	height:500px;
	z-index:1;
	margin-right: auto;
	margin-left: auto;
	top: -30px;
	background-color: #FFFFFF;
	border: 1px none #CCC;
}
#apDiv24 {
	position:absolute;
	width:200px;
	height:400px;
	z-index:1;
	background-color: #EAEAFD;
	border: 1px solid #CCC;
	top: 00px;
}
#apDiv25 {
	position:relative;
	width:150px;
	height:150px;
	z-index:1;
	top: 20px;
	margin-right: auto;
	margin-left: auto;
}
#apDiv26 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:2;
	top: 180px;
}
#apDiv27 {
	position:absolute;
	width:650px;
	height:350px;
	z-index:2;
	left: 210px;
	top: 0px;
}
#apDiv28 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:10;
}
#apDiv29 {
	position:absolute;
	width:200px;
	height:250px;
	z-index:10;
	left: 420px;
	top: 217px;
	border-left-style: dashed;
	border-left-width: thin;
	border-left-color: #CCC;
}
#apDiv30 {
	position:relative;
	width:150px;
	height:150px;
	z-index:1;
	margin: auto;
	top: 20px;
	//border: 1px solid #CCC;
}
#apDiv31 {
	position:absolute;
	width:374px;
	height:251px;
	z-index:10;
	left: 68px;
	top: 28px;
}
#picsubmit {
	z-index: 11;
	position: absolute;
	left: 193px;
	top: 525px;
	display: none;
}
.picbutton {
	width: 100px;
	height: 40px;
}
#preview-pane {
  display: block;
  position: absolute;
  z-index: 2000;
  top: 70px;
  right: -240px;
  padding: 6px;
	border: 1px rgba(0,0,0,.4) solid;
	background-color: white;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
	-webkit-box-shadow: 1px 1px 5px 2px rgba(0, 0, 0, 0.2);
	-moz-box-shadow: 1px 1px 5px 2px rgba(0, 0, 0, 0.2);
	box-shadow: 1px 1px 5px 2px rgba(0, 0, 0, 0.2);
}

#preview-pane .preview-container {
  width: 150px;
  height: 150px;
  overflow: hidden;
}
input.inputclass{background-color:#FFFFFF;
cursor:pointer;
height:29px;
*filter: alpha(opacity=0);
-moz-opacity:0.0;
opacity:0.0; 
width:79px;
}
div.topdiv{
background:url(image/1.png);
cursor:pointer;
overflow:hidden;
padding-left:0;
width:80px;  
height:29px;  
}
.fen_top2 {
	position:absolute;
	width:560px;
	height:110px;
	z-index:4;
	left: 10px;
	top: 30px;
}
.fen1_time {
	position:absolute;
	width:400px;
	height:30px;
	z-index:5;
	left: 10px;
	top: 140px;
	color: #999;
	font-size: 13px;
}
.dongtai1 {
	position:relative;
	width:600px;
	height:170px;
	z-index:10;
	top: 5;
	left: 10px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #CCC;
	background-image: url(image/bg.jpg);
}
.fen_top1 {
	position:absolute;
	width:500px;
	height:30px;
	z-index:3;
	left: 10px;
}
ul,li{
	list-style: none;
	padding: 0;
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
<div id="user_apDiv24">
  <div id="apDiv24">
    <div id="apDiv25"><img src="GetImg.action" width="150" height="150" /></div>
    <div id="apDiv26">
      <table width="200" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><div align="center" style="color: #03015F; font-weight: bold;"><s:property value="#user.usName" /></div></td>
        </tr>
        <tr>
          <td><div align="center"></div></td>
        </tr>
        <tr>
          <td><div align="center"></div></td>
        </tr>
        <tr>
          <td><div align="center"></div></td>
        </tr>
      </table>
    </div>
  </div>
  <div id="apDiv27">
    <div id="TabbedPanels1" class="TabbedPanels">
      <ul class="TabbedPanelsTabGroup">
        <li class="TabbedPanelsTab" tabindex="0">修改头像</li>
        <li class="TabbedPanelsTab" tabindex="0">我的动态</li>
<li class="TabbedPanelsTab" tabindex="0">修改密码</li>
      </ul>
      <div class="TabbedPanelsContentGroup">
        <div class="TabbedPanelsContent">
          <div id="apDiv29">
            <table width="200" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <th colspan="3" scope="col">&nbsp;</th>
              </tr>
              <tr>
                <td width="25" scope="col">&nbsp;</td>
                <td width="150" scope="col">当前头像</td>
                <td width="25" scope="col">&nbsp;</td>
              </tr>
            </table>
            <div id="apDiv30">
             <div id="preview-pane">
    				<div class="preview-container">
      					<img src="image/C360_2011-11-10 17-28-53.jpg" class="jcrop-preview" alt="Preview" id="Preview" />
    				</div>
  			</div>
            </div>
          </div>
          <div id="apDiv31">
            <table width="300" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td scope="col">&nbsp;</td>
              </tr>
              <tr>
                <td scope="col">设置新头像</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="25" style="font-size: 13px; color: #666;"> 1.使用真实照片，展示自我风采</span></td>
              </tr>
              <tr>
                <td height="25" style="font-size: 13px; color: #666;">2.支持jpg、gif、png或bm格式</span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>
                	<div class="topdiv">
                    	<input type="file" id="Files" name="files[]" value="ss" accept="image/*" multiple="" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image15','','image/2.png',1)" class="inputclass" ></input>
                    </div></td>
              </tr>
              <tr>
                <td id="Errors">&nbsp;</td>
              </tr>
              <tr>
                <td><img src="image/C360_2011-11-10 17-28-53.jpg" width="300" height="300" style="overflow:hidden;" id="target"/></td>
              </tr>
            </table>
          </div>
          <div align="center" id="picsubmit">
            <table width="230" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <th colspan="3" scope="col">&nbsp;</th>
              </tr>
              <tr>
                <td width="100" scope="col"><button value="保存" id="picsubmitbut" class="picbutton">保存</button></td>
                <td width="30" scope="col">&nbsp;</td>
                <td width="100" scope="col"><button value="取消" id="piccancelbut" class="picbutton">取消</button></td>
              </tr>
              <tr>
                <th colspan="3" scope="col">&nbsp;</th>
              </tr>
            </table>
          </div>
        </div>
        <div class="TabbedPanelsContent">
        <s:if test="%{#session.user==null}">
        	请先登录或注册( ⊙o⊙ )
        </s:if>
        <s:else>
        <s:set name="user" value="#session.user"></s:set>
        <s:action name="userMotion" executeResult="false" namespace="/"> </s:action>
        <ul>
        <s:iterator value="#request.usremoslist" status="st" id="stl">
        <s:set name="singer" value="#stl.song.singers.toArray()[0]"></s:set>
  		<s:set name="album" value="#stl.song.album"></s:set>
        <li>
          <div class="dongtai1">
            <div class="fen_top1">
              <table width="500" border="0" cellspacing="0" cellpadding="0">
                <tr>
                <s:if test="#stl.relation=='share'">
                  <th width="180" height="30" scope="col"><div align="left" style="color: #000"> 分享歌曲 //<s:property value="#stl.shareCont"/></div></th>
                 </s:if>
                 <s:else>
                 <th width="180" height="30" scope="col"><div align="left" style="color: #000"> 收藏歌曲 </div></th>
                 </s:else>
                </tr>
              </table>
            </div>
            <div class="fen_top2">
              <table width="560" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="560" height="110"><table width="560" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <th width="20" rowspan="3" scope="col">&nbsp;</th>
                      <s:if test="%{#album!=null}">
		                <th width="100" height="100" rowspan="3" scope="col"><img src="AlbumImg.action?idAlbum=<s:property value="#album.idAlbum"/>" width="100" height="100" /></th>
		                </s:if>
		                <s:else>
		                <th width="100" height="100" rowspan="3" scope="col"><img src="image/C360_2011-11-10 17-28-53.jpg" width="100" height="100" /></th>
		                </s:else>
                      <th width="20" rowspan="3" scope="col">&nbsp;</th>
                      <td scope="col"><div align="left">
                  	<a href="javascript:;" onclick="javascript:onplay('<s:property value="#stl.song.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#stl.song.idSong"/>');"
                   				title="<s:property value="#stl.song.sgName"/>" target="_blank" style="color: #03F"><s:property value="#stl.song.sgName"/></a></div></td>
                    </tr>
                    <tr>
                      <td style="color: #333" scope="col"> <span style="font-size: 15px; font-weight: bold;">演唱者:
                      		<a href="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>"><s:property value="#singer.sgrName"/></a></span></td>
                    </tr>
                    <tr>
                      <td scope="col">&nbsp;</td>
                    </tr>
                  </table></td>
                </tr>
              </table>
            </div>
            <div class="fen1_time">
              <table width="300" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="30" scope="col"><s:property value="#stl.stTime"/> </td>
                </tr>
              </table>
            </div>
          </div>
          </li>
          </s:iterator>
         </ul>
         </s:else>
         </div>
<div class="TabbedPanelsContent">
          <table width="600" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="138" scope="col"><div align="right">&nbsp;</div>
              <td width="462" scope="col"></td></tr>
              <tr>
              <td scope="col"><div align="right">&nbsp;</div>              
              <td width="462" scope="col" id="textfield1"></td>                       
            </tr>
            <tr>
              <td scope="col"><div align="right">原密码 ：                                      </div>              
              <td width="462" scope="col"><input name="textfield2" type="password" class="form4" id="textfield2" />                            
            </tr>
            <tr>
              <td><div align="right"></div></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><div align="right">新密码&nbsp;：</div></td>
              <td><input name="textfield3" type="password" class="form4" id="textfield3" /></td>
            </tr>
            <tr>
              <td><div align="right"></div></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><div align="right">确认新密码 ：</div></td>
              <td><input name="textfield4" type="password" class="form4" id="textfield4" /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><img src="image/tijiao.png" style="cursor: pointer;" width="90" height="40" id="updatepass"/></td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
<script src="js/userHome.js" type="text/javascript"></script>
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