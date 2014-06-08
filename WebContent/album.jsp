<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<tags:navigation>
	<jsp:attribute name="pagescript">
		<script language="JavaScript" src="js/albumpage.js"
			type="text/javascript"></script>
		<script language="JavaScript" type="text/javascript">
			document.onreadystatechange = function() {
				if (document.readyState == "complete") {
					getAlbumpage("all", 1);
				}
			};
		</script>
	</jsp:attribute>
	<jsp:attribute name="pagecss">
		<link href="css/albumjsp.css" rel="stylesheet" type="text/css">
	</jsp:attribute>
	<jsp:attribute name="pagebody">
	<div id="apDiv24">
  <div id="apDiv25">
    <table width="180" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <th scope="col">&nbsp; <div align="left"></div></th>
      </tr>
      <tr>
        <td><div align="left">
								<a href="album.jsp" onmouseout="MM_swapImgRestore()"
									onmouseover="MM_swapImage('Image12','','image/paihang/quan2.jpg',1)"><img
									src="image/paihang/quan1.jpg" name="Image12" width="180"
									height="30" border="0" id="Image12" /></a>
							</div></td>
      </tr>
      <tr>
        <td>&nbsp;
        <div align="left"></div>
						</td>
      </tr>
      <tr>
        <td><div align="left">
								<a href="javascript:getAlbumpage('cn',1)"
									onmouseout="MM_swapImgRestore()"
									onmouseover="MM_swapImage('Image13','','image/paihang/hua2.jpg',1)"><img
									src="image/paihang/hua1.jpg" name="Image13" width="180"
									height="30" border="0" id="Image13" /></a>
							</div></td>
      </tr>
      <tr>
        <td><div align="center">
								<a href="javascript:getAlbumpage('eu',1)"
									onmouseout="MM_swapImgRestore()"
									onmouseover="MM_swapImage('Image14','','image/paihang/ou2.jpg',1)"><img
									src="image/paihang/ou1.jpg" name="Image14" width="180"
									height="30" border="0" id="Image14" /></a>
							</div></td>
      </tr>
      <tr>
        <td><div align="center">
								<a href="javascript:getAlbumpage('jk',1)"
									onmouseout="MM_swapImgRestore()"
									onmouseover="MM_swapImage('Image15','','image/paihang/ri2.jpg',1)"><img
									src="image/paihang/ri1.jpg" name="Image15" width="180"
									height="30" border="0" id="Image15" /></a>
							</div></td>
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
</div>
	</jsp:attribute>
</tags:navigation>