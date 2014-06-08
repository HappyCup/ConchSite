<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<tags:navigation>
	<jsp:attribute name="pagescript">
		<script language="JavaScript" src="js/feedback.js" type="text/javascript" charset="utf-8"></script>
	</jsp:attribute>
	<jsp:attribute name="pagecss">
		<link href="css/feedbackjsp.css" rel="stylesheet" type="text/css">
	</jsp:attribute>
	<jsp:attribute name="pagebody">
	<div id="apDiv24">
  <table width="800" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="100"><div align="left"><strong style="font-size: 15px">反馈内容：</strong></div></td>
      <td rowspan="2"><form id="form2" name="form2" method="post" action="">
        <label for="fankui"></label>
        <textarea name="fankui" cols="45" rows="5" class="fankui" id="fankui"></textarea>
      </form></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
</div>
	<div id="apDiv25">
  <table width="800" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="100"><strong style="font-size: 15px">联系方式：</strong></td>
      <td width="250">
        <label for="QQ" style="vertical-align:middle;">QQ:</label>
        <input name="QQ" style="vertical-align:middle;" type="text" id="QQ"/>
      </td>
      <td width="21"><div align="left"><strong style="font-weight: normal; font-size: 12px">或&nbsp&nbsp</strong></div></td>
      <td width="250">
        <label for="mail">邮箱:</label>
        <input name="mail" type="text" id="mail"/>
      </td>
      <td width="328">&nbsp;</td>
    </tr>
    <tr>
      <td rowspan="2">&nbsp;</td>
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="4" style="font-size: 13px; color: #999;"> 请留下您的联系方式，以便我们尽快帮助您解决问题。海螺承诺您的联系方式将会严格保密，绝不向第三方泄露。 </td>
    </tr>
  </table>
  <table width="800" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="72">&nbsp;</td>
      <td width="303">&nbsp;</td>
      <td width="425">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><div align="center"><img src="image/tijiao.png" width="90" height="40" onclick="javascript:feedback();"/></div></td>
      <td>&nbsp;</td>
    </tr>
  </table>
</div>
	</jsp:attribute>
</tags:navigation>