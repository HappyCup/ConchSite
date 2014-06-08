<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<tags:navigation>
	<jsp:attribute name="pagescript">
		<script language="JavaScript" src="js/albumpage.js"
			type="text/javascript"></script>
	</jsp:attribute>
	<jsp:attribute name="pagecss">
		<link href="css/albumHomejsp.css" rel="stylesheet" type="text/css">
	</jsp:attribute>
	<jsp:attribute name="pagebody">
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
          		onclick="javascript:onmusicplay('<s:property value="#song.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#song.idSong"/>');"/></a></th>
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
</div>
	</jsp:attribute>
</tags:navigation>