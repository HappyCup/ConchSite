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
th {
	font-size: 13px;
	color: #FFF;
}
#num1 {
	position: absolute;
	width: 250px;
	height: 400px;
	z-index: 1;
	left: 10px;
	top: 10px;
}

#apDiv8 {
	position: absolute;
	width: 250px;
	height: 400px;
	z-index: 1;
	left: 10px;
	top: 10px;
	background-color: #FFFFFF;
}

#apDiv9 {
	position: relative;
	width: 900px;
	height: 500px;
	z-index: 1;
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

.singer {
	color: #000;
}

.zzzzzzzzzz {
	font-weight: normal;
	font-size: 13px;
	color: #000;
}

.gengduo {
	font-size: 12px;
	color: #000;
}

#apDiv10 {
	position: relative;
	width: 900px;
	height: 250px;
	z-index: 10;
	margin-right: auto;
	margin-left: auto;
}

#main #apDiv9 table tr td .music_ban tr th .music_ban {
	font-weight: bold;
}

#apDiv11 {
	position: relative;
	width: 900px;
	height: 290px;
	z-index: 1;
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
	position: relative;
	width: 860px;
	height: 230px;
	z-index: 1;
	top: 20px;
	left: 20px;
}

#main #apDiv11 #apDiv12 table tr th {
	font-size: 15px;
	font-weight: normal;
}

#apDiv13 {
	position: relative;
	width: 110px;
	height: 20px;
	z-index: 3;
	left: 0px;
	top: -20px;
	color: #FFF;
	background-color: #CCC;
}

#apDiv14 {
	position: relative;
	width: 110px;
	height: 20px;
	z-index: 3;
	top: -20px;
	color: #FFF;
	background-color: #999;
	opacity: 0.9;
}

#apDiv15 {
	position: absolute;
	width: 200px;
	height: 115px;
	z-index: 10;
}

#apDiv16 {
	position: absolute;
	width: 200px;
	height: 115px;
	z-index: 10;
}

#apDiv17 {
	position: absolute;
	width: 200px;
	height: 115px;
	z-index: 10;
}

#apDiv18 {
	position: absolute;
	width: 200px;
	height: 115px;
	z-index: 10;
}

#apDiv19 {
	position: absolute;
	width: 200px;
	height: 115px;
	z-index: 10;
}

#apDiv20 {
	position: absolute;
	width: 200px;
	height: 115px;
	z-index: 10;
}

#main #apDiv11 #apDiv12 table {
	font-size: 15px;
	color: #000;
}

#apDiv21 {
	position: absolute;
	width: 200px;
	height: 115px;
	z-index: 4;
}

#apDiv22 {
	position: relative;
	width: 900px;
	height: 30px;
	z-index: 2;
	top: 60px;
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
	<div id="main">
		<div id="apDiv9">
			<table width="900" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th width="114" height="29" class="xinggeban" scope="row">
						<strong>新歌榜</strong>
					</th>
					<td width="157">&nbsp;</td>
					<td width="47" class="gengduo">
						<a href="#" style="color: #682996;font-size: 12px;font-weight: bold;">更多&gt;&gt;</a>
					</td>
					<td width="24" class="gengduo">&nbsp;</td>
					<td width="118" class="gengduo">
						<span class="xinggeban">
							<strong>热歌榜</strong>
						</span>
					</td>
					<td width="118" class="gengduo">&nbsp;</td>
					<td width="65" class="gengduo">
						<a href="#" style="color: #682996;font-size: 12px;font-weight: bold;">更多&gt;&gt;</a>
					</td>
					<td width="12" class="gengduo">&nbsp;</td>
					<td width="160" class="xinggeban">
						<strong>歌手榜</strong>
					</td>
					<td width="32" class="gengduo">&nbsp;</td>
					<td width="53" class="gengduo">
						<a href="#" style="color: #682996;font-size: 12px;font-weight: bold;">更多&gt;&gt;</a>
					</td>
				</tr>
			</table>
			<%-- 调用action生成榜单数据--%>
			<s:action name="GetHotSongsAction" executeResult="false" namespace="/"> </s:action>
			<s:action name="GetNewSongsAction" executeResult="false" namespace="/"> </s:action>
			<s:action name="SingerRank" executeResult="false" namespace="/"> </s:action>
			
			<table width="903" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th width="320" scope="row">
						<table width="320" border="0" cellpadding="0" cellspacing="0"
							class="music_ban">
							<tr>
								<th width="30" height="19" scope="row">&nbsp;</th>
								<td width="150">&nbsp;</td>
								<td width="75">&nbsp;</td>
								<td colspan="3">&nbsp;</td>
							</tr>
							<s:iterator value="#request.newsongs" status="st" id="column">
							<s:if test="#st.getIndex()<14">							
							<tr>
								<s:if test="#st.getIndex()==0">
									<th height="30" scope="row"><img src="image/lj2.jpg" alt="" width="30" height="30" /></th></s:if>
								<s:elseif test="#st.getIndex()==1">
									<th height="30" scope="row"><img src="image/lj22.jpg" alt="" width="30" height="30"/></th></s:elseif>
								<s:elseif test="#st.getIndex()==2">
									<th height="30" scope="row"><img src="image/lj3.jpg" alt="" width="30" height="30" /></th></s:elseif>
								<s:else>
									<th class="nusic_num" scope="row"><s:property value="#st.getIndex()+1"/></th></s:else>
								<td class="zzzzzzzzzz" sizcache="3977" sizset="29">
									<div align="left">
										<a id="newtop_checkboxmc_15" title="<s:property value="#column.sgName"/>"
											onclick=""
											href="javascript:void(0);" name="batchlistenm"
											s="%BB%C6%D0%A1%E7%FA" t="%B7%C5%D0%C4%B2%BB%CF%C2"><s:property value="#column.sgName"/>
										</a>
									</div>
								</td>
								<s:set name="singer" value="#column.singers.toArray()[0]"></s:set>
								<td class="zzzzzzzzzz" sizcache="3977" sizset="30">
									<a title="<s:property value="#singer.sgrName"/>"
										href="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>"
										target="_blank" uigs="consume=index_newtop_singer_new_1"
										><s:property value="#singer.sgrName"/>
									</a>
								</td>
								<td width="20">
									<a href="javascript:;" onmouseout="MM_swapImgRestore()"
										onmouseover="MM_swapImage('Image1','','image/1_2.jpg',1)"
										onclick="javascript:onplay('<s:property value="#column.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#column.idSong"/>');">
										<img src="image/1_1.jpg" alt="" name="Image1" width="20"
											height="20" border="0" id="Image1" />
									</a>
								</td>
								<td width="20">
									<a href="javascript:;" onmouseout="MM_swapImgRestore()"
										onmouseover="MM_swapImage('Image111','','image/2-2.jpg',1)"
										onclick="javascript:onadd('<s:property value="#column.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#column.idSong"/>');">
										<img src="image/2-1.jpg" alt="" name="Image111" width="20"
											height="20" border="0" id="Image111" />
									</a>
								</td>
								<td>
									<a href="#" onmouseout="MM_swapImgRestore()"
										onmouseover="MM_swapImage('Image121','','image/3-2.jpg',1)"
										onclick="javascript:ondownload('<s:property value="#column.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#column.idSong"/>');">
										<img src="image/3-1.jpg" alt="" name="Image121" width="20"
											height="20" border="0" id="Image121" />
									</a>
								</td>
							</tr>
							</s:if>
							</s:iterator>
						</table>
					</th>

					<th width="4" scope="row">&nbsp;</th>
					<td width="320">
						<table width="320" border="0" cellpadding="0" cellspacing="0"
							class="music_ban">
							<tr>
								<th width="33" height="19" scope="row">&nbsp;</th>
								<td width="135">&nbsp;</td>
								<td width="74">&nbsp;</td>
								<td colspan="3">&nbsp;</td>
							</tr>
							<s:iterator value="#request.hotsongs" status="st" id="column">
							<s:if test="#st.getIndex()<14">				
							<tr>
								<s:if test="#st.getIndex()==0">
									<th height="30" scope="row"><img src="image/lj2.jpg" alt="" width="30" height="30" /></th></s:if>
								<s:elseif test="#st.getIndex()==1">
									<th height="30" scope="row"><img src="image/lj22.jpg" alt="" width="30" height="30"/></th></s:elseif>
								<s:elseif test="#st.getIndex()==2">
									<th height="30" scope="row"><img src="image/lj3.jpg" alt="" width="30" height="30" /></th></s:elseif>
								<s:else>
								<th class="nusic_num" scope="row"><s:property value="#st.getIndex()+1"/></th></s:else>
								<td class="zzzzzzzzzz" sizcache="3977" sizset="29">
									<a id="newtop_checkboxmc_" title="<s:property value="#column.sgName"/>"
										onclick="o2('t=%B7%C5%D0%C4%B2%BB%CF%C2&amp;s=%BB%C6%D0%A1%E7%FA','newtop_checkboxmc_1',0);uigsPB('consume=index_newtop_title_new_1');"
										href="javascript:void(0);" name="batchlistenm"
										><s:property value="#column.sgName"/>
									</a>
								</td>
								<s:set name="singer" value="#column.singers.toArray()[0]"></s:set>
								<td class="zzzzzzzzzz" sizcache="3977" sizset="30">
									<a title="<s:property value="#singer.sgrName"/>"
										href="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>"
										target="_blank" uigs="consume=index_newtop_singer_new_1"
										><s:property value="#singer.sgrName"/>
									</a>
								</td>
								<td width="21">
									<a href="#" onmouseout="MM_swapImgRestore()"
										onmouseover="MM_swapImage('Image112','','image/1_2.jpg',1)"
											onclick="javascript:onplay('<s:property value="#column.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#column.idSong"/>');">
										<img src="image/1_1.jpg" alt="" name="Image112" width="20"
											height="20" border="0" id="Image112" />
									</a>
								</td>
								<td width="21">
									<a href="#" onmouseout="MM_swapImgRestore()"
										onmouseover="MM_swapImage('Image122','','image/2-2.jpg',1)"
											onclick="javascript:onadd('<s:property value="#column.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#column.idSong"/>');">
										<img src="image/2-1.jpg" alt="" name="Image122" width="20"
											height="20" border="0" id="Image122" />
									</a>
								</td>
								<td width="29">
									<a href="#" onmouseout="MM_swapImgRestore()"
										onmouseover="MM_swapImage('Image132','','image/3-2.jpg',1)"
											onclick="javascript:ondownload('<s:property value="#column.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#column.idSong"/>');">
										<img src="image/3-1.jpg" alt="" name="Image132" width="20"
											height="20" border="0" id="Image132" />
									</a>
								</td>
							</tr>
							</s:if>
							</s:iterator>
						</table>
					</td>
					
	<%-- 歌手榜 ----------------------------------------------------------%>
					<td width="259">
						<table width="249" height="431" border="0" cellpadding="0"
							cellspacing="0">
							<tr>
								<th width="30" height="19" scope="row">&nbsp;</th>
								<td width="80">&nbsp;</td>
								<td width="6">&nbsp;</td>
								<td colspan="3">&nbsp;</td>
							</tr>
							<s:iterator value="#request.singerRank" status="st" id="column">
							<s:if test="#st.getIndex()<20">
							<s:if test="#st.getIndex()==0">
							   <tr>
							   	<s:set name="singertop1" value="column"></s:set>
								<th height="61" scope="row">
									<img src="image/lj2.jpg" alt="" width="30" height="30" />
								</th>
								<td height="80" sizcache="3977" sizset="29">
									<img
										src="SingerImg.action?idSinger=<s:property value="#singertop1.idSinger"/>"
										alt="<s:property value="#singertop1.sgrName"/>" width="80" height="80" />
								</td>
								<td rowspan="3" sizcache="3977" sizset="30">&nbsp;</td>
							</s:if>
							<s:elseif test="#st.getIndex()==1">
								<s:set name="singertop2" value="column"></s:set>
								<td width="30">
									<img src="image/lj22.jpg" alt="" width="30" height="30" />
								</td>
								<td width="80">
									<img
										src="SingerImg.action?idSinger=<s:property value="#singertop2.idSinger"/>"
										alt="<s:property value="#singertop2.sgrName"/>" width="80" height="80" />
								</td>
								<td width="23">&nbsp;</td>
							   </tr>
							   <tr>
								<th height="9" scope="row">&nbsp;</th>
								<td height="9" class="zzzzzzzzzz" sizcache="3977" sizset="29">
									<div align="center">
										<a href="singerHome.action?idSinger=<s:property value="#singertop1.idSinger"/>" target="_blank"><s:property value="#singertop1.sgrName"/></a>
									</div>
								</td>
								<td width="30">&nbsp;</td>
								<td>
									<div align="center">
										<a href="singerHome.action?idSinger=<s:property value="#singertop2.idSinger"/>" target="_blank"
											class="zzzzzzzzzz"><s:property value="#singertop2.sgrName"/></a>
									</div>
								</td>
								<td>&nbsp;</td>
								</tr>
								<tr>
								<th height="10" scope="row">&nbsp;</th>
								<td height="10" sizcache="3977" sizset="29">&nbsp;</td>
								<td width="30">&nbsp;</td>
								<td colspan="2">&nbsp;</td>
								</tr>
							</s:elseif>
							<s:elseif test="#st.getIndex()==2">
								<s:set name="singertop3" value="column"></s:set>
								<tr>
								<th height="6" scope="row">
									<img src="image/lj3.jpg" alt="" width="30" height="30" />
								</th>
								<td sizcache="4009" sizset="32">
									<img
										src="SingerImg.action?idSinger=<s:property value="#singertop3.idSinger"/>"
										alt="<s:property value="#singertop3.sgrName"/>" width="80" height="80" />
								</td>
								<td rowspan="3" sizcache="4009" sizset="33">&nbsp;</td>
							</s:elseif>
							<s:elseif test="#st.getIndex()==3">
								<s:set name="singertop4" value="column"></s:set>
								<td>
									<img src="image/lj4.jpg" alt="" width="30" height="30" />
								</td>
								<td>
									<img
										src="SingerImg.action?idSinger=<s:property value="#singertop4.idSinger"/>"
										alt="<s:property value="#singertop4.sgrName"/>" width="80" height="80" />
								</td>
								<td>&nbsp;</td>
							    </tr>
							    <tr class="zzzzzzzzzz">
								<th height="5" scope="row">&nbsp;</th>
								<td sizcache="4009" sizset="32">
									<div align="center">
										<a href="singerHome.action?idSinger=<s:property value="#singertop3.idSinger"/>" target="_blank"><s:property value="#singertop3.sgrName"/></a>
									</div>
								</td>
								<td>&nbsp;</td>
								<td>
									<div align="center">
										<a href="singerHome.action?idSinger=<s:property value="#singertop4.idSinger"/>" target="_blank"><s:property value="#singertop4.sgrName"/></a>
									</div>
								</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th height="19" scope="row">&nbsp;</th>
								<td height="19" sizcache="4009" sizset="32">&nbsp;</td>
								<td>&nbsp;</td>
								<td colspan="2">&nbsp;</td>
							</tr>
							</s:elseif>
							<s:else>
								<s:if test="#st.isOdd()">
								<tr>
								<th height="22" class="nusic_num" scope="row"><s:property value="#st.getIndex()+1"/></th>
								<td class="zzzzzzzzzz" sizcache="4013" sizset="35">
									<a href="singerHome.action?idSinger=<s:property value="#column.idSinger"/>" target="_blank"><s:property value="#column.sgrName"/></a>
								</td>
								</s:if>
								<s:else>
								<td class="zzzzzzzzzz" sizcache="4013" sizset="36">&nbsp;</td>
								<td class="nusic_num"><s:property value="#st.getIndex()+1"/></td>
								<td colspan="2" class="zzzzzzzzzz">
									<a href="singerHome.action?idSinger=<s:property value="#column.idSinger"/>" target="_blank"><s:property value="#column.sgrName"/></a>
								</td>
								</tr>
								</s:else>
							</s:else>
							</s:if>
							</s:iterator>
						</table>
					</td>
				</tr>
			</table>
		</div>
		
		
		<%---其他热门歌手----------------------------------------------%>
		<div id="apDiv11">
			<div id="apDiv12">
				<table width="860" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<th width="114" scope="row">热门歌手</th>
						<td width="680">&nbsp;</td>
						<td width="66" class="gengduo">
							<a href="#" style="color: #682996;font-size: 12px;font-weight: bold;">更多&gt;&gt;</a>
						</td>
					</tr>
				</table>
				<table width="860" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<th height="23" colspan="13" scope="row">&nbsp;</th>
					</tr>
					<tr>
						<s:iterator value="#request.singerRank" status="st" id="column">
						<s:if test="#st.getIndex()>19&&#st.getIndex()<27">
						<th width="110" scope="row">
							<a href="singerHome.action?idSinger=<s:property value="#column.idSinger"/> " target="_blank">
								<img src="SingerImg.action?idSinger=<s:property value="#column.idSinger"/>"
									width="110" height="110" />
							</a>
							<div id="apDiv14"><s:property value="#column.sgrName"/></div>
						</th>
						<th width="15" scope="row">&nbsp;</th>
						</s:if>
						</s:iterator>
					</tr>
				</table>
				<table width="860" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<s:iterator value="#request.singerRank" status="st" id="column">
						<s:if test="#st.getIndex()>26&&#st.getIndex()<31">
						<th width="70" height="30" scope="row">
							<div align="left">
								<a href="singerHome.action?idSinger=<s:property value="#column.idSinger"/>" target="_blank"><s:property value="#column.sgrName"/></a>
							</div>
						</th>
						</s:if>
						</s:iterator>
						
						<th height="30" scope="row">
							<div align="left"></div>
						</th>
						
						<s:iterator value="#request.singerRank" status="st" id="column">
						<s:if test="#st.getIndex()>30&&#st.getIndex()<34">
						<th width="70" height="30" scope="row">
							<div align="left">
								<a href="singerHome.action?idSinger=<s:property value="#column.idSinger"/>" target="_blank"><s:property value="#column.sgrName"/></a>
							</div>
						</th>
						</s:if>
						</s:iterator>
						
						<th height="30" scope="row">
							<div align="left"></div>
						</th>
						
						<s:iterator value="#request.singerRank" status="st" id="column">
						<s:if test="#st.getIndex()>33&&#st.getIndex()<38">
						<th width="70" height="30" scope="row">
							<div align="left">
								<a href="singerHome.action?idSinger=<s:property value="#column.idSinger"/>" target="_blank" ><s:property value="#column.sgrName"/></a>
							</div>
						</th>
						</s:if>
						</s:iterator>
					</tr>
					<tr>
						<s:iterator value="#request.singerRank" status="st" id="column">
						<s:if test="#st.getIndex()>37&&#st.getIndex()<42">
						<th width="70" height="30" scope="row">
							<div align="left">
								<a href="singerHome.action?idSinger=<s:property value="#column.idSinger"/>" target="_blank" ><s:property value="#column.sgrName"/></a>
							</div>
						</th>
						</s:if>
						</s:iterator>
						<th height="30" scope="row">
							<div align="left"></div>
						</th>
						
						<s:iterator value="#request.singerRank" status="st" id="column">
						<s:if test="#st.getIndex()>41&&#st.getIndex()<45">
						<th width="70" height="30" scope="row">
							<div align="left">
								<a href="singerHome.action?idSinger=<s:property value="#column.idSinger"/>" target="_blank" ><s:property value="#column.sgrName"/></a>
							</div>
						</th>
						</s:if>
						</s:iterator>
						
						<th height="30" scope="row">
							<div align="left"></div>
						</th>
						<s:iterator value="#request.singerRank" status="st" id="column">
						<s:if test="#st.getIndex()>44&&#st.getIndex()<49">
						<th width="70" height="30" scope="row">
							<div align="left">
								<a href="singerHome.action?idSinger=<s:property value="#column.idSinger"/>" target="_blank" ><s:property value="#column.sgrName"/></a>
							</div>
						</th>
						</s:if>
						</s:iterator>
					</tr>
				</table>
			</div>
			<div id="apDiv22">
				<table width="900" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<th width="52" height="30" scope="row">华语</th>
						<td width="17">▶</td>
						<td width="60"><a href="#">男歌手</a></td>
						<td width="60"><a href="#">女歌手</a></td>
						<td width="60"><a href="#">乐队组合</a></td>
						<td>&nbsp;</td>
						<th width="52">欧美</th>
						<td width="16">▶</td>
						<td width="60"><a href="#">男歌手</a></td>
						<td width="60"><a href="#">女歌手</a></td>
						<td width="60"><a href="#">乐队组合</a>
						</td>
						<td>&nbsp;</td>
						<th width="105">日韩</th>
						<td width="16">▶</td>
						<td width="60"><a href="#">男歌手</a></td>
						<td width="60"><a href="#">女歌手</a></td>
						<td width="60"><a href="#">乐队组合</a>
					</tr>
				</table>
			</div>
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