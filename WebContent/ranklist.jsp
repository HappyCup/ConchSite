<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<tags:navigation>
	<jsp:attribute name="pagecss">
		<link href="css/ranklistjsp.css" rel="stylesheet" type="text/css" />
	</jsp:attribute>
	<jsp:attribute name="pagebody">
<div id="apDiv24">
  <div id="apDiv25">
    <div id="apDiv26">
      <table width="180" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th scope="col">&nbsp;</th>
          <th scope="col">排行榜</th>
          <th scope="col">&nbsp;</th>
        </tr>
      </table>
    </div>
    <div id="apDiv27">
      <table width="180" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <th scope="col"><a href="ranklist.action?area=cn" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image16','','image/paihang/neidi2.jpg',1)"><img src="image/paihang/neidi1.jpg" name="Image16" width="180" height="30" border="0" id="Image16" /></a></th>
        </tr>
        <tr>
          <td><a href="ranklist.action?area=jk" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image14','','image/paihang/rihan2.jpg',1)"><img src="image/paihang/rihan1.jpg" name="Image14" width="180" height="30" border="0" id="Image14" /></a></td>
        </tr>
        <tr>
          <td><a href="ranklist.action?area=eu" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image15','','image/paihang/oumei2.jpg',1)"><img src="image/paihang/oumei1.jpg" name="Image15" width="180" height="30" border="0" id="Image15" /></a></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
    </div>
  </div>
  <div id="apDiv28">
    <div id="apDiv29">
      <div align="center"><s:property value="area"/>单曲榜</div>
    </div>
    <div id="apDiv30">
      <table width="670" border="0" cellspacing="0" cellpadding="0">
      	<s:iterator value="#request.ranklist" status="st" id="song">
      	<s:if test="#st.getIndex()<20">
      	<s:set name="singer" value="#song.singers.toArray()[0]"></s:set>
        <tr id="<s:property value="#st.getIndex()+1"/>" onmousemove="MM_changeProp('<s:property value="#st.getIndex()+1"/>','','backgroundColor','#E6E7FF','TR')" onmouseout="MM_changeProp('<s:property value="#st.getIndex()+1"/>','','backgroundColor','#FFF','TR')">
          <td width="32"><div align="center"><s:property value="#st.getIndex()+1"/></div></td>
          <td width="377" height="30"><div align="left"><a id="listenA_1" title="<s:property value="#song.sgName"/>" onclick="" href="javascript:void(0);"><s:property value="#song.sgName"/></a><a href="#" title="Call Me Maybe"></a></div></td>
          <td width="170"><div align="left"><a title="<s:property value="#singer.sgrName"/>" href="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>" target="_blank"><s:property value="#singer.sgrName"/></a></div></td>
          <td width="30">
          		<a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image17','','image/1_2.png',1)"><img src="image/1_1.png" name="Image17" width="20" height="20" border="0" id="Image17" 
          			onclick="javascript:onmusicplay('<s:property value="#song.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#song.idSong"/>');"/></a></td>
          <td width="30">
          		<a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image18','','image/2-2.png',1)"><img src="image/2-1.png" name="Image18" width="20" height="20" border="0" id="Image18" 
          		onclick="javascript:onadd('<s:property value="#song.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#song.idSong"/>');"/></a></td>
          <td width="30">
          		<a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image19','','image/3-2.png',1)"><img src="image/3-1.png" name="Image19" width="20" height="20" border="0" id="Image19" 
          		onclick="javascript:ondownload('<s:property value="#song.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#song.idSong"/>');"/></a></td>
        </tr>
        <tr>
          <td><div align="center"></div></td>
          <td><div align="left"></div></td>
          <td><div align="left"></div></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td width="30">&nbsp;</td>
        </tr>
        </s:if>
        </s:iterator>
      </table>
    </div>
  </div>
  </div>
	</jsp:attribute>
</tags:navigation>