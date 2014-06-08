<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<tags:navigation>
	<jsp:attribute name="pagescript">
		<script language="JavaScript" src="js/singerpage.js" type="text/javascript"></script>
	</jsp:attribute>
	<jsp:attribute name="pagecss">
		<link href="css/singerHomejsp.css" rel="stylesheet" type="text/css" />
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
  <div id="apDiv26">
  
  <s:set name="singer" value="#request.singer"></s:set>
  <s:set name="pager" value="#request.pager"></s:set>
  <s:set name="pagestart" value="#pager.getPageNow()*15"></s:set>
  
    <div id="apDiv27"><img src="SingerImg.action?idSinger=<s:property value="#singer.idSinger"/>" width="150" height="150" hspace="1" vspace="1" align="middle" /></div>
    <div id="apDiv28">
      <table width="300" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th width="200" class="xinggeban" scope="col"><div align="left"><s:property value="#singer.sgrName"/></div></th>
          <th width="100" scope="col">&nbsp;</th>
        </tr>
      </table>
      <table width="500" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th colspan="3" class="gengduo" scope="col">&nbsp;</th>
        </tr>
        <tr>
          <td width="50"><span class="gengduo">地域：</span></td>
          <td width="450"><span class="gengduo"><s:property value="#singer.sgrArea"/></span></td>
        </tr>
        <tr>
          <td width="50"><span class="gengduo">&nbsp;</span></td>
          <td width="450"><span class="gengduo">&nbsp;</span></td>
        </tr>
        <tr>
          <td width="50"><span class="gengduo">简介：</span></td>
          <td width="450"><span class="gengduo">&nbsp;&nbsp;&nbsp;<s:property value="#singer.sgrAbstract"/></span></td>
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
      <s:iterator value="#singer.songs" status="st" id="song">
      <s:if test="#st.getIndex()<#pagestart && #st.getIndex()>=#pagestart-15">
      	<tr>
          <th width="30" height="30" scope="col"><form id="form5" name="form5" method="post" action="">
            <div align="center">
              <input type="checkbox" name="checkbox2" id="checkbox2" />
            </div>
            <label for="checkbox2"></label>
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
      </s:if>
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
          <th width="341" bgcolor="#F6F6F6" scope="col"><table width="300" border="0" cellspacing="0" cellpadding="0">
            <tr style="font-size: 13px">
              <s:if test="#pager.hasFirst"> 
              <td width="50" ><div align="center"><a href="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>&pageNow=1" style="color: #682996;font-weight: bold;">首页</a></div></td>
              </s:if>
              <s:if test="#pager.hasPre">
              <td width="50"><div align="center"><a href="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>&pageNow=<s:property value="#pager.getPageNow()-1"/>" style="color: #682996;font-weight: bold;">上一页</a></div></td>
              </s:if>
              <s:if test="#pager.hasNext">
              <td width="50"><div align="center"><a href="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>&pageNow=<s:property value="#pager.getPageNow()+1"/>" style="color: #682996;font-weight: bold;">下一页</a></div></td>
              </s:if>
              <s:if test="#pager.hasLast">
              <td width="50"><div align="center"><a href="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>&pageNow=<s:property value="#pager.getTotalPage()"/>" style="color: #682996;font-weight: bold;">尾页</a></div></td>
              </s:if>
              </tr>
          </table></th>
        </tr>
      </table>
      
    </div>
    <div id="apDiv30">
      <table width="200" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th width="80" height="30" scope="col"><div align="right" style="font-size: 15px"><s:property value="#singer.sgrName"/></div></th>
          <th width="108" height="30" scope="col"><div align="left" style="font-size: 15px">的热门歌曲</div></th>
        </tr>
      </table>
    </div>
    <div id="apDiv31">
      <table width="700" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th width="70" height="30" bgcolor="#E8E8E8" scope="col"><div align="right" style="font-size: 15px"><s:property value="#singer.sgrName"/></div></th>
          <th width="572" bgcolor="#E8E8E8" scope="col"><div align="left" style="font-size: 15px">的热门专辑</div></th>
          <td width="58" bgcolor="#E8E8E8" scope="col"><a href="#" style="color: #682996;font-size: 12px;font-weight: bold;">更多&gt;&gt;</a></td>
        </tr>
      </table>
      <div id="apDiv32">
        <div id="apDiv33"><img src="image/素材/454c79ffe8fce8f4e62ac7beb4381470.jpg" width="120" height="120" hspace="1" vspace="1" /></div>
        <div id="apDiv44">
          <table width="150" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <th scope="col">&nbsp;</th>
              <th height="30" scope="col">光辉岁月</th>
              <th scope="col">&nbsp;</th>
            </tr>
          </table>
        </div>
        <div id="apDiv43">
          <table width="150" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <th scope="col">&nbsp;</th>
              <th height="30" scope="col">光辉岁月</th>
              <th scope="col">&nbsp;</th>
            </tr>
          </table>
        </div>
<div id="apDiv42"><img src="image/素材/454c79ffe8fce8f4e62ac7beb4381470.jpg" alt="" width="120" height="120" hspace="1" vspace="1" /></div>
<div id="apDiv41"><img src="image/素材/454c79ffe8fce8f4e62ac7beb4381470.jpg" alt="" width="120" height="120" hspace="1" vspace="1" /></div>
<div id="apDiv39"><img src="image/素材/454c79ffe8fce8f4e62ac7beb4381470.jpg" alt="" width="120" height="120" hspace="1" vspace="1" /></div>
        <div id="apDiv35">
          <table width="150" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <th scope="col">&nbsp;</th>
              <th height="30" scope="col">光辉岁月</th>
              <th scope="col">&nbsp;</th>
            </tr>
          </table>
        </div>
        <div id="apDiv40">
          <table width="150" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <th scope="col">&nbsp;</th>
              <th height="30" scope="col">光辉岁月</th>
              <th scope="col">&nbsp;</th>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
	</jsp:attribute>
</tags:navigation>