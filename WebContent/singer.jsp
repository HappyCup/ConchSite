<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<tags:navigation>
	<jsp:attribute name="pagescript">
		<script language="JavaScript" src="js/singerpage.js" type="text/javascript"></script>
		<script language="JavaScript"  type="text/javascript">
			document.onreadystatechange = function () {
			    if(document.readyState=="complete") {          
			         getpage("all","all",1);
			     }
			 };
		</script>
	</jsp:attribute>
	<jsp:attribute name="pagecss">
		<link href="css/singerjsp.css" rel="stylesheet" type="text/css" />
	</jsp:attribute>
	<jsp:attribute name="pagebody">
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
	</jsp:attribute>
</tags:navigation>