<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<tags:navigation>
	<jsp:attribute name="pagecss">
		<link href="css/share_areajsp.css" rel="stylesheet" type="text/css" />
	</jsp:attribute>
	<jsp:attribute name="pagebody">
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
                <td height="20" scope="col"><a href="javascript:;" onclick="javascript:onmusicplay('<s:property value="#stl.song.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#stl.song.idSong"/>');"
                 style="font-size: 15px; font-weight: bold;"><s:property value="#stl.song.sgName"/></a></td>
                </tr>
              <tr>
                <td style="color: #333" scope="col"> <span style="font-size: 15px; font-weight: bold;">演唱者:<a href="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>"><s:property value="#singer.sgrName"/></a></span></td>
                </tr>
              <tr>
                <th scope="col"><div align="right" style="margin-right:80px"><a href="javascript:;" onclick="javascript:onmusicplay('<s:property value="#stl.song.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#stl.song.idSong"/>');"
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
</div>
	</jsp:attribute>
</tags:navigation>