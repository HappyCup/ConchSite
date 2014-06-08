<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<tags:navigation>
	<jsp:attribute name="pagescript">
		<script src="js/SpryTabbedPanels.js" type="text/javascript"></script>
		<script src="js/jquery.min.js" type="text/javascript"></script>
		<script src="js/jquery.Jcrop.min.js" type="text/javascript"></script>
	</jsp:attribute>
	<jsp:attribute name="pagecss">
		<link href="css/jquery.Jcrop.css" rel="stylesheet" type="text/css" />
		<link href="css/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
		<link href="css/userHomejsp.css" rel="stylesheet" type="text/css" />
	</jsp:attribute>
	<jsp:attribute name="pagebody">
<div id="user_apDiv24">
  <div id="apDiv24">
    <div id="apDiv25"><img src="GetImg.action" width="150" height="150" /></div>
    <div id="apDiv26">
      <table width="200" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><div align="center" style="color: #03015F; font-weight: bold;"><s:property value="#user.usName" /></div></td>
        </tr>
        <tr>
          <td><div align="center"></div></td>
        </tr>
        <tr>
          <td><div align="center"></div></td>
        </tr>
        <tr>
          <td><div align="center"></div></td>
        </tr>
      </table>
    </div>
  </div>
  <div id="apDiv27">
    <div id="TabbedPanels1" class="TabbedPanels">
      <ul class="TabbedPanelsTabGroup">
        <li class="TabbedPanelsTab" tabindex="0">修改头像</li>
        <li class="TabbedPanelsTab" tabindex="0">我的动态</li>
<li class="TabbedPanelsTab" tabindex="0">修改密码</li>
      </ul>
      <div class="TabbedPanelsContentGroup">
        <div class="TabbedPanelsContent">
          <div id="apDiv29">
            <table width="200" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <th colspan="3" scope="col">&nbsp;</th>
              </tr>
              <tr>
                <td width="25" scope="col">&nbsp;</td>
                <td width="150" scope="col">当前头像</td>
                <td width="25" scope="col">&nbsp;</td>
              </tr>
            </table>
            <div id="apDiv30">
             <div id="preview-pane">
    				<div class="preview-container">
      					<img src="image/C360_2011-11-10 17-28-53.jpg" class="jcrop-preview" alt="Preview" id="Preview" />
    				</div>
  			</div>
            </div>
          </div>
          <div id="apDiv31">
            <table width="300" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td scope="col">&nbsp;</td>
              </tr>
              <tr>
                <td scope="col">设置新头像</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="25" style="font-size: 13px; color: #666;"> 1.使用真实照片，展示自我风采</span></td>
              </tr>
              <tr>
                <td height="25" style="font-size: 13px; color: #666;">2.支持jpg、gif、png或bm格式</span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>
                	<div class="topdiv">
                    	<input type="file" id="Files" name="files[]" value="ss" accept="image/*" multiple="" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image15','','image/2.png',1)" class="inputclass" ></input>
                    </div></td>
              </tr>
              <tr>
                <td id="Errors">&nbsp;</td>
              </tr>
              <tr>
                <td><img src="image/C360_2011-11-10 17-28-53.jpg" width="300" height="300" style="overflow:hidden;" id="target"/></td>
              </tr>
            </table>
          </div>
          <div align="center" id="picsubmit">
            <table width="230" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <th colspan="3" scope="col">&nbsp;</th>
              </tr>
              <tr>
                <td width="100" scope="col"><button value="保存" id="picsubmitbut" class="picbutton">保存</button></td>
                <td width="30" scope="col">&nbsp;</td>
                <td width="100" scope="col"><button value="取消" id="piccancelbut" class="picbutton">取消</button></td>
              </tr>
              <tr>
                <th colspan="3" scope="col">&nbsp;</th>
              </tr>
            </table>
          </div>
        </div>
        <div class="TabbedPanelsContent">
        <s:if test="%{#session.user==null}">
        	请先登录或注册( ⊙o⊙ )
        </s:if>
        <s:else>
        <s:set name="user" value="#session.user"></s:set>
        <s:action name="userMotion" executeResult="false" namespace="/"> </s:action>
        <ul>
        <s:iterator value="#request.usremoslist" status="st" id="stl">
        <s:set name="singer" value="#stl.song.singers.toArray()[0]"></s:set>
  		<s:set name="album" value="#stl.song.album"></s:set>
        <li>
          <div class="dongtai1">
            <div class="fen_top1">
              <table width="500" border="0" cellspacing="0" cellpadding="0">
                <tr>
                <s:if test="#stl.relation=='share'">
                  <th width="180" height="30" scope="col"><div align="left" style="color: #000"> 分享歌曲 //<s:property value="#stl.shareCont"/></div></th>
                 </s:if>
                 <s:else>
                 <th width="180" height="30" scope="col"><div align="left" style="color: #000"> 收藏歌曲 </div></th>
                 </s:else>
                </tr>
              </table>
            </div>
            <div class="fen_top2">
              <table width="560" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="560" height="110"><table width="560" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <th width="20" rowspan="3" scope="col">&nbsp;</th>
                      <s:if test="%{#album!=null}">
		                <th width="100" height="100" rowspan="3" scope="col"><img src="AlbumImg.action?idAlbum=<s:property value="#album.idAlbum"/>" width="100" height="100" /></th>
		                </s:if>
		                <s:else>
		                <th width="100" height="100" rowspan="3" scope="col"><img src="image/C360_2011-11-10 17-28-53.jpg" width="100" height="100" /></th>
		                </s:else>
                      <th width="20" rowspan="3" scope="col">&nbsp;</th>
                      <td scope="col"><div align="left">
                  	<a href="javascript:;" onclick="javascript:onmusicplay('<s:property value="#stl.song.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#stl.song.idSong"/>');"
                   				title="<s:property value="#stl.song.sgName"/>" target="_blank" style="color: #03F"><s:property value="#stl.song.sgName"/></a></div></td>
                    </tr>
                    <tr>
                      <td style="color: #333" scope="col"> <span style="font-size: 15px; font-weight: bold;">演唱者:
                      		<a href="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>"><s:property value="#singer.sgrName"/></a></span></td>
                    </tr>
                    <tr>
                      <td scope="col">&nbsp;</td>
                    </tr>
                  </table></td>
                </tr>
              </table>
            </div>
            <div class="fen1_time">
              <table width="300" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="30" scope="col"><s:property value="#stl.stTime"/> </td>
                </tr>
              </table>
            </div>
          </div>
          </li>
          </s:iterator>
         </ul>
         </s:else>
         </div>
<div class="TabbedPanelsContent">
          <table width="600" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="138" scope="col"><div align="right">&nbsp;</div>
              <td width="462" scope="col"></td></tr>
              <tr>
              <td scope="col"><div align="right">&nbsp;</div>              
              <td width="462" scope="col" id="textfield1"></td>                       
            </tr>
            <tr>
              <td scope="col"><div align="right">原密码 ：                                      </div>              
              <td width="462" scope="col"><input name="textfield2" type="password" class="form4" id="textfield2" />                            
            </tr>
            <tr>
              <td><div align="right"></div></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><div align="right">新密码&nbsp;：</div></td>
              <td><input name="textfield3" type="password" class="form4" id="textfield3" /></td>
            </tr>
            <tr>
              <td><div align="right"></div></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><div align="right">确认新密码 ：</div></td>
              <td><input name="textfield4" type="password" class="form4" id="textfield4" /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><img src="image/tijiao.png" style="cursor: pointer;" width="90" height="40" id="updatepass"/></td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="js/userHome.js" type="text/javascript"></script>
	</jsp:attribute>
</tags:navigation>