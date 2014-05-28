<%@ page language="java" contentType="text/xml; charset=utf-8" pageEncoding="UTF-8"%> 
<%@ page import="org.tool.Pager"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<div id="apDiv26">
<table width="680" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <th width="50" height="25" scope="col"><a href="#">全部</a></th>
        <th width="15" scope="col"><a href="#">A</a></th>
        <th width="15" scope="col"><a href="#">B</a></th>
        <th width="15" scope="col"><a href="#">C</a></th>
        <th width="15" scope="col"><a href="#">D</a></th>
        <th width="15" scope="col"><a href="#">E</a></th>
        <th width="15" scope="col"><a href="#">F</a></th>
        <th width="15" scope="col"><a href="#">G</a></th>
        <th width="15" scope="col"><a href="#">H</a></th>
        <th width="15" scope="col"><a href="#">I</a></th>
        <th width="15" scope="col"><a href="#">J</a></th>
        <th width="15" scope="col"><a href="#">K</a></th>
        <th width="15" scope="col"><a href="#">L</a></th>
        <th width="15" scope="col"><a href="#">M</a></th>
        <th width="15" scope="col"><a href="#">N</a></th>
        <th width="15" scope="col"><a href="#">O</a></th>
        <th width="15" scope="col"><a href="#">P</a></th>
        <th width="15" scope="col"><a href="#">Q</a></th>
        <th width="15" scope="col"><a href="#">R</a></th>
        <th width="15" scope="col"><a href="#">S</a></th>
        <th width="15" scope="col"><a href="#">T</a></th>
        <th width="15" scope="col"><a href="#">U</a></th>
        <th width="15" scope="col"><a href="#">V</a></th>
        <th width="15" scope="col"><a href="#">W</a></th>
        <th width="15" scope="col"><a href="#">X</a></th>
        <th width="15" scope="col"><a href="#">Y</a></th>
        <th width="15" scope="col"><a href="#">Z</a></th>
        <th width="45" scope="col">&nbsp;</th>
        <th width="165" scope="col"><form action="" method="post" name="form2" class="form2" id="form2">
          <label for="singer_name"></label>
          <div align="left">
            <input name="singer_name" type="text" class="search_singer" id="singer_name" onclick="MM_setTextOfTextfield('singer_name','','')" value="搜歌手" />
         &nbsp; <a href="#"><img src="image/search.png" width="24" height="21" align="top" /></a></div>
        </form></th>
        <th width="30" scope="col">&nbsp;</th>
      </tr>
    </table>
  </div>
	<s:set name="pager" value="#request.pager"></s:set>
	<div id="apDiv27">
    <table width="650" border="0" cellspacing="0" cellpadding="0">
    <tr>
    	<s:iterator value="#request.singerpage" status="st" id="singer">
    	<s:if test="#st.getIndex()<5">
    	<s:set name="top+%{#st.getIndex()}" value="singer"></s:set>
        <td><div align="center"><img src="SingerImg.action?idSinger=<s:property value="#singer.idSinger"/>" width="80" height="80" /></div></td>
        </s:if>
        </s:iterator>
      </tr>
      <tr>
      	<s:iterator value="#request.singerpage" status="st" id="singer">
    	<s:if test="#st.getIndex()<5">
        <td><div align="center"><a herf="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>" target="_blank" class="zzzzzzzzzz"><s:property value="#singer.sgrName"/></a></div></td>
        </s:if>
        </s:iterator>
      </tr>
    </table>
  </div>
  <div id="apDiv28">
    <table width="650" border="0" cellpadding="0" cellspacing="0" id="singers" style="color: #666;">
      <tr>
    	<s:iterator value="#request.singerpage" status="st" id="singer">
    	<s:if test="#st.getIndex()>4 && #st.getIndex()<9">
    	<td width="25" height="25" class="singers"><div align="center"><s:property value="#st.getIndex+1"/></div></td>
        <td height="25" class="singers"><a herf="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>" target="_blank" class="zzzzzzzzzz"><s:property value="#singer.sgrName"/></a></td>
        <s:if test="#st.getIndex()!=8">
        <td width="25" height="25">&nbsp;</td>
        </s:if>
    	</s:if>
    	</s:iterator>
      </tr>
      <tr>
      	<s:iterator value="#request.singerpage" status="st" id="singer">
    	<s:if test="#st.getIndex()>8 && #st.getIndex()<13">
    	<td width="25" height="25"><div align="center"><s:property value="#st.getIndex+1"/></div></td>
        <td height="25"><a herf="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>" target="_blank" class="zzzzzzzzzz"><s:property value="#singer.sgrName"/></a></td>
        <s:if test="#st.getIndex()!=8">
        <td width="25" height="25">&nbsp;</td>
        </s:if>
    	</s:if>
    	</s:iterator>
      </tr>
      <tr>
      	<s:iterator value="#request.singerpage" status="st" id="singer">
    	<s:if test="#st.getIndex()>12 && #st.getIndex()<17">
    	<td width="25" height="25" class="singers"><div align="center"><s:property value="#st.getIndex+1"/></div></td>
        <td height="25" class="singers"><a herf="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>" target="_blank" class="zzzzzzzzzz"><s:property value="#singer.sgrName"/></a></td>
        <s:if test="#st.getIndex()!=8">
        <td width="25" height="25">&nbsp;</td>
        </s:if>
    	</s:if>
    	</s:iterator>
      </tr>
      <tr>
      	<s:iterator value="#request.singerpage" status="st" id="singer">
    	<s:if test="#st.getIndex()>16 && #st.getIndex()<21">
    	<td width="25" height="25"><div align="center"><s:property value="#st.getIndex+1"/></div></td>
        <td height="25" ><a herf="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>" target="_blank" class="zzzzzzzzzz"><s:property value="#singer.sgrName"/></a></td>
        <s:if test="#st.getIndex()!=8">
        <td width="25" height="25">&nbsp;</td>
        </s:if>
    	</s:if>
    	</s:iterator>
      </tr>
    </table>
  </div>
  <div id="apDiv29">
    <table width="300" border="0" cellspacing="0" cellpadding="0">
      <tr style="font-size: 13px">
      		<s:set name="pager" value="#request.pager"></s:set>
      		<s:set name="area" value="#parameters.area"></s:set>
      		<s:set name="type" value="#parameters.type"></s:set>
      		<td width="50"><div align="center">共<s:property value="#pager.getTotalPage()"/>页</div></td>
      		<s:if test="#pager.hasFirst"> 	
				<td width="50"><div align="center"><a href="#" onclick='javascript:getpage("<s:property value="#area"/>","<s:property value="#type"/>",1)'>首页</a></div></td>
			</s:if>
			<s:if test="#pager.hasPre">
				<td width="50"><div align="center"><a href="#" onclick='javascript:getpage("<s:property value="#area"/>","<s:property value="#type"/>",<s:property value="#pager.getPageNow()-1"/>)'>上一页</a></div></td>
			</s:if>
			<%-- 页标生成算法  --%>
			<%
				Pager pager=(Pager)request.getAttribute("pager");
				String area=(String)request.getParameter("area");
				String type=(String)request.getParameter("type");
				int pageNow=pager.getPageNow();
				int totalpage=pager.getTotalPage();
				if(totalpage<6){
					for(int i=1;i<=totalpage;i++){
						if(i==pageNow)
							out.println("<td width='20'><div align='center'><a href='#' style='color:red' onclick=\"javascript:getpage('"+area+"','"+type+"',"+i+")\">" +i+ "</a></div></td>");
						else
							out.println("<td width='20'><div align='center'><a href='#' onclick=\"javascript:getpage('"+area+"','"+type+"',"+i+")\">"+i+"</a></div></td>");
					}
				}
				else if(pageNow>3){
					out.println("<td width='20'><div align='center'><a href='#' onclick=\"javascript:getpage('"+area+"','"+type+"',"+(pageNow-2)+")\">"+(pageNow-2)+"</a></div></td>");
					out.println("<td width='20'><div align='center'><a href='#' onclick=\"javascript:getpage('"+area+"','"+type+"',"+(pageNow-1)+")\">"+(pageNow-1)+"</a></div></td>");
					out.println("<td width='20'><div align='center'><a href='#'  style='color:red' onclick='javascript:getpage('"+area+"','"+type+"',"+(pageNow)+")'>"+(pageNow)+"</a></div></td>");
					if((pageNow+1)<totalpage)
						out.println("<td width='20'><div align='center'><a href='#' onclick=\"javascript:getpage('"+area+"','"+type+"',"+(pageNow+1)+")\">"+(pageNow+1)+"</a></div></td>");
					if((pageNow+2)<totalpage)
						out.println("<td width='20'><div align='center'><a href='#' onclick=\"javascript:getpage('"+area+"','"+type+"',"+(pageNow+2)+")\">"+(pageNow+2)+"</a></div></td>");
				}
				else{
					for(int i=1;i<=5;i++){
						if(i==pageNow)
							out.println("<td width='20'><div align='center' ><a href='#' style='color:red' onclick=\"javascript:getpage('"+area+"','"+type+"',"+i+")\">"+i+"</a></div></td>");
						else
							out.println("<td width='20'><div align='center'><a href='#' onclick=\"javascript:getpage('"+area+"','"+type+"',"+i+")\">"+i+"</a></div></td>");
					}
				}
			%>
			<s:if test="#pager.hasNext">
				<td width="50"><div align="center"><a href="#" onclick='javascript:getpage("<s:property value="#area"/>","<s:property value="#type"/>",<s:property value="#pager.getPageNow()+1"/>)'>下一页</a></div></td>
			</s:if>
			<s:if test="#pager.hasLast">
				<td width="50"><div align="center"><a href="#" onclick='javascript:getpage("<s:property value="#area"/>","<s:property value="#type"/>",<s:property value="#pager.getTotalPage()"/>)'>尾页</a></div></td>
			</s:if>
      </tr>
    </table>
  </div>
