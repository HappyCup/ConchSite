<%@ page language="java" contentType="text/xml; charset=utf-8" pageEncoding="UTF-8"%> 
<%@ page import="org.tool.Pager"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<s:set name="pager" value="#request.pager"></s:set>
<div id="apDiv26">
    <div id="apDiv43">
      <table width="700" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th width="359" height="30" bgcolor="#FFFFFF" scope="col">&nbsp;</th>
          <th width="341" bgcolor="#FFFFFF" scope="col"><table width="300" border="0" cellspacing="0" cellpadding="0">
            <tr style="font-size: 13px">
              <s:set name="pager" value="#request.pager"></s:set>
      		<s:set name="area" value="#parameters.area"></s:set>
      		<td width="50"><div align="center">共<s:property value="#pager.getTotalPage()"/>页</div></td>
      		<s:if test="#pager.hasFirst"> 	
				<td width="50"><div align="center"><a href="#" onclick='javascript:getAlbumpage("<s:property value="#area"/>",1)'>首页</a></div></td>
			</s:if>
			<s:if test="#pager.hasPre">
				<td width="50"><div align="center"><a href="#" onclick='javascript:getAlbumpage("<s:property value="#area"/>",<s:property value="#pager.getPageNow()-1"/>)'>上一页</a></div></td>
			</s:if>
			<%-- 页标生成算法  --%>
			<%
				Pager pager=(Pager)request.getAttribute("pager");
				String area=(String)request.getParameter("area");
				int pageNow=pager.getPageNow();
				int totalpage=pager.getTotalPage();
				if(totalpage<6){
					for(int i=1;i<=totalpage;i++){
						if(i==pageNow)
							out.println("<td width='20'><div align='center'><a href='#' style='color:red' onclick=\"javascript:getAlbumpage('"+area+"','"+i+")\">" +i+ "</a></div></td>");
						else
							out.println("<td width='20'><div align='center'><a href='#' onclick=\"javascript:getAlbumpage('"+area+"','"+i+")\">"+i+"</a></div></td>");
					}
				}
				else if(pageNow>3){
					out.println("<td width='20'><div align='center'><a href='#' onclick=\"javascript:getAlbumpage('"+area+"','"+(pageNow-2)+")\">"+(pageNow-2)+"</a></div></td>");
					out.println("<td width='20'><div align='center'><a href='#' onclick=\"javascript:getAlbumpage('"+area+"','"+(pageNow-1)+")\">"+(pageNow-1)+"</a></div></td>");
					out.println("<td width='20'><div align='center'><a href='#'  style='color:red' onclick='javascript:getAlbumpage('"+area+"','"+(pageNow)+")'>"+(pageNow)+"</a></div></td>");
					if((pageNow+1)<totalpage)
						out.println("<td width='20'><div align='center'><a href='#' onclick=\"javascript:getAlbumpage('"+area+"','"+(pageNow+1)+")\">"+(pageNow+1)+"</a></div></td>");
					if((pageNow+2)<totalpage)
						out.println("<td width='20'><div align='center'><a href='#' onclick=\"javascript:getAlbumpage('"+area+"','"+(pageNow+2)+")\">"+(pageNow+2)+"</a></div></td>");
				}
				else{
					for(int i=1;i<=5;i++){
						if(i==pageNow)
							out.println("<td width='20'><div align='center' ><a href='#' style='color:red' onclick=\"javascript:getAlbumpage('"+area+"','"+i+")\">"+i+"</a></div></td>");
						else
							out.println("<td width='20'><div align='center'><a href='#' onclick=\"javascript:getAlbumpage('"+area+"','"+i+")\">"+i+"</a></div></td>");
					}
				}
			%>
			<s:if test="#pager.hasNext">
				<td width="50"><div align="center"><a href="#" onclick='javascript:getAlbumpage("<s:property value="#area"/>",<s:property value="#pager.getPageNow()+1"/>)'>下一页</a></div></td>
			</s:if>
			<s:if test="#pager.hasLast">
				<td width="50"><div align="center"><a href="#" onclick='javascript:getAlbumpage("<s:property value="#area"/>",<s:property value="#pager.getTotalPage()"/>)'>尾页</a></div></td>
			</s:if>
            </tr>
          </table></th>
        </tr>
      </table>
    </div>
    <s:iterator value="#request.albumpage" status="st" id="album">
    <s:if test="#st.getIndex()<5">
    <s:set name="singer" value="#album.singer"></s:set>
    <div id="zhuan<s:property value="#st.getIndex()+1"/>">
      <table width="150" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th height="150" scope="col"><a href="albumHome.action?idAlbum=<s:property value="#album.idAlbum"/>"><img src="AlbumImg.action?idAlbum=<s:property value="#album.idAlbum"/>" width="150" height="150" /></a></th>
        </tr>
        <tr>
          <td height="30"><div align="center"><span style="color: #333; font-size: 14px; font-weight: bold;"><a href="albumHome.action?idAlbum=<s:property value="#album.idAlbum"/>"><s:property value="#album.abName"/></a></span></div></td>
        </tr>
        <tr>
          <td height="25"><div align="center" style="font-size: 13px"><a herf="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>" target="_blank"><s:property value="#singer.sgrName"/></a></div></td>
        </tr>
      </table>
    </div>
    </s:if>
    </s:iterator>
  </div>