<%@ page language="java" contentType="text/xml; charset=utf-8" pageEncoding="UTF-8"%> 
<%@ page import="org.tool.Pager"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<div id="search_apDiv26">
  <table width="900" border="0" cellspacing="0" cellpadding="0">
    <tr>
    <s:if test="#request.resultsize>0">
    	<th scope="col"><div align="left" style="color: #CCC">共找到<s:property value="#request.resultsize"/>条与 <s:property value="sch_str"/> 相关的信息 <span style="color: #999"></span></div></th>
    </s:if>
    <s:else>
      <th scope="col"><div align="left" style="color: #CCC">抱歉，没有找到与  <s:property value="sch_str"/> 相关的信息。 <span style="color: #999"></span></div></th>
    </s:else>
    </tr>
  </table>
</div>
<s:set name="pager" value="#request.pager"></s:set>
<s:set name="pagestart" value="#pager.getPageNow()*20"></s:set>
<div id="search_apDiv24">
  <table width="900" border="0" cellpadding="0" cellspacing="0" style="">
    <tr>
      <th width="30" height="30" bgcolor="#EEEEEE" scope="col">&nbsp;</th>
      <th width="30" height="30" bgcolor="#EEEEEE" scope="col">&nbsp;</th>
      <th width="400" bgcolor="#EEEEEE" style="font-weight: normal; color: #999;" scope="col"><div align="left">歌名</div></th>
      <th width="150" bgcolor="#EEEEEE" style="color: #999" scope="col"><div align="left"><span class="singer" style="font-weight: normal; color: #CCC">歌手</span></div></th>
      <th bgcolor="#EEEEEE" style="color: #CCC" scope="col"><div align="left" style="font-weight: normal; color: #999">专辑</div></th>
      <th width="30" height="30" bgcolor="#EEEEEE" style="font-weight: normal; color: #999" scope="col"><div align="center">试听</div></th>
      <th width="30" height="30" bgcolor="#EEEEEE" style="font-weight: normal; color: #999" scope="col"><div align="center">收藏</div></th>
      <th width="30" height="30" bgcolor="#EEEEEE" style="font-weight: normal; color: #999" scope="col"><div align="center">下载</div></th>
    </tr>
    <s:iterator value="#request.result" status="st" id="song">
  	<s:if test="#st.getIndex()<#pagestart && #st.getIndex()>=#pagestart-20">
  		<s:set name="singer" value="#song.singers.toArray()[0]"></s:set>
  		<s:set name="album" value="#song.singers.album"></s:set>
  		<s:if test="#st.Odd">
  			<tr >
  		</s:if>
  		<s:else>
  			<tr bgcolor="#EEF7FF">
  		</s:else>
	      <td width="30" height="30" ><div align="center">
	        <input type="checkbox" name="checkbox" id="checkbox" />
	      </div></td>
	      <td width="30" height="30" style="color: #666"><div align="center"><s:property value="#st.getIndex()+1"/></div></td>
	      <td><div align="left"><a title="<s:property value="#song.sgName"/>" onclick=""><s:property value="#song.sgName"/></a></div></td>
	      <td style="font-size: 14px"><div align="left"><a title="<s:property value="#singer.sgrName"/>" href="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>" target="_blank"><s:property value="#singer.sgrName"/></a></div></td>
	      <td><div align="left"><a title="<s:property value="#album.abName"/>" href="#" target="_blank"><s:property value="#album.abName"/></a></div></td>
	      <th width="30" scope="col"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image1','','image/1_2.jpg',1)" onclick="javascript:onmusicplay('<s:property value="#song.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#song.idSong"/>');">
	      		<img src="image/1_1.jpg" alt="" name="Image1" width="20" height="20" border="0" id="Image1" /></a></th>
	      <th width="30" scope="col"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image111','','image/2-2.jpg',1)" onclick="javascript:onadd('<s:property value="#song.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#song.idSong"/>');">
	      		<img src="image/2-1.jpg" alt="" name="Image111" width="20" height="20" border="0" id="Image111" /></a></th>
	      <th width="30" scope="col"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image121','','image/3-2.jpg',1)" onclick="javascript:ondownload('<s:property value="#song.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#song.idSong"/>');">
	      		<img src="image/3-1.jpg" alt="" name="Image121" width="20" height="20" border="0" id="Image121" /></a></th>
    	</tr>
  	</s:if>
  	</s:iterator>
  </table>
  <table width="900" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <th width="30" height="30" bgcolor="#F7F7F7" scope="col"><form id="form20" name="form2" method="post" action="">
        <input type="checkbox" name="checkbox21" id="checkbox21" />
        <label for="checkbox21"></label>
      </form></th>
      <th width="120" bgcolor="#F7F7F7" scope="col"><form id="form21" name="form3" method="post" action="">
        <input type="submit" name="button3" id="button3" value="播放选中歌曲" />
      </form></th>
      <th width="120" bgcolor="#F7F7F7" scope="col"><form id="form22" name="form4" method="post" action="">
        <input type="submit" name="button3" id="button4" value="添加到播放列表" />
      </form></th>
      <th bgcolor="#F7F7F7" scope="col">&nbsp;</th>
      <th width="116" bgcolor="#F7F7F7" scope="col">&nbsp;</th>
      <th width="121" bgcolor="#F7F7F7" scope="col">&nbsp;</th>
    </tr>
  </table>
  <table width="900" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <th width="359" height="30" bgcolor="#EAEAEA" scope="col">&nbsp;</th>
      <th width="341" bgcolor="#EAEAEA" scope="col"><table width="300" border="0" cellspacing="0" cellpadding="0">
        <tr style="font-size: 13px">
          <s:if test="#pager.hasFirst"> 
              <td width="50" ><div align="center"><a href="javascript:void(0)" onclick="dosearchf('<s:property value="sch_str"/>',1)" style="color: #682996;font-weight: bold;">首页</a></div></td>
              </s:if>
              <s:if test="#pager.hasPre">
              <td width="50"><div align="center"><a href="javascript:void(0)" onclick="dosearchf('<s:property value="sch_str"/>',<s:property value="#pager.getPageNow()-1"/>)" style="color: #682996;font-weight: bold;">上一页</a></div></td>
              </s:if>
              <s:if test="#pager.hasNext">
              <td width="50"><div align="center"><a href="javascript:void(0)" onclick="dosearchf('<s:property value="sch_str"/>',<s:property value="#pager.getPageNow()+1"/>)" style="color: #682996;font-weight: bold;">下一页</a></div></td>
              </s:if>
              <s:if test="#pager.hasLast">
              <td width="50"><div align="center"><a href="javascript:void(0)" onclick="dosearchf('<s:property value="sch_str"/>',<s:property value="#pager.getTotalPage()"/>)" style="color: #682996;font-weight: bold;">尾页</a></div></td>
              </s:if>
        </tr>
      </table></th>
    </tr>
  </table>
</div>