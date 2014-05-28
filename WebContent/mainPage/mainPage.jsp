<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<script type="text/javascript" src="mainPage.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>海螺音乐网</title>
<link href="main.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<s:set name="user" value="#session['user']"></s:set>
	<s:if test="%{#user==null}">
		<div class="login" id="lng">
			<a href="#" title="新用户注册" hidefocus="true" target="_blank">新用户注册</a>　
	 		<a href="#" onclick="" title="立即登录" hidefocus="true">立即登录</a>
		</div>
	</s:if>
	<s:else>
		<div class="login logined" id="lng">
			<a class="pic" hidefocus="true" target="_blank" href="#">
				<img id="myheadpic" src="http://localhost:8081/ConchSite/GetImg.action" width="32" height="32"/></a>
		    <a hidefocus="true" id="mynickname" target="_blank" href="#" class="blue"><s:property value="#user.usName"/></a> 
		    <a hidefocus="true" href="#" class="logout">退出登录</a>
		</div>
	</s:else>
	<s:action name="MageSongDataAction" executeResult="false" namespace="/"> </s:action>
<div class="style_box">
  <div class="styleImg_box"></div>
  <div class="styleTable_box">
  <table class="songs_table">
  		<s:iterator value="#attr.sort_cn" status="rowstatus" id="column">
    	<tr>
        	<th><input type="checkbox" class="sCheckBox" checked="checked"/></th>
            <td colspan="2">
            	<a href="javascript:;" id="#" class="sName play" ><s:property value="#column.value.sgName"/></a><b>-</b>
                <span class="uName"><a href="#" target="_blank" ><s:property value="#column.key.sgrName"/></a></span>
             </td>
             <td class="fct">
             	<a href="javascript:onplay('<s:property value="#column.value.sgName"/>','<s:property value="#column.key.sgrName"/>','<s:property value="#column.value.idSong"/>');" class="play"></a>
             	<a href="javascript:onadd('<s:property value="#column.value.sgName"/>','<s:property value="#column.key.sgrName"/>','<s:property value="#column.value.idSong"/>');" class="add"></a>
                <a href="javascript:;" class="download"></a>
             </td>
        </tr>
        </s:iterator>
    </table>
  </div>
</div>
</body>
</html>