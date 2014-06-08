<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<tags:navigation>
	<jsp:attribute name="pagecss">
		<link href="css/registe.css" rel="stylesheet" type="text/css" />
	</jsp:attribute>
	<jsp:attribute name="pagebody">
<div id="apDiv24">
			<div class="rg_ct">
				<div class="rg_ct_hd">
					<span></span>
				</div>
				<div class="rg_ct_fm">
					<form id="uRegForm" name="uRegForm" method="post" action="Registe.action" onsubmit="return checkID()">
						<table class="hl_lgn_reg_tb" width="100%">
							<tbody>
								<tr>
									<td width="100" align="right"><label for="uUsername"
										class="hl_lgn_reg_tb_tl"><span class="red">*</span>
											用户名：</label></td>
									<td align="left">
										<div class="hl_lgn_textbox_area hl_lgn_textbox_username">
											<div class="hl_lgn_textbox">
												<input id="uUsername" name="username" maxlength="20"
													type="text" class="hl_lgn_textbox_ipt">
											</div>
											<div class="hl_lgn_tips" id="Username_alter">
												<i class="hl_lgn_tips_icon"></i><span
													class="hl_lgn_tips_txt">请输入4到20位字符，首位不能为数字</span>
											</div>
										</div>
									</td>
								</tr>

								<tr>
									<td align="right"><label for="uEmail"
										class="hl_lgn_reg_tb_tl"><span class="red"> </span>
											邮箱：</label></td>
									<td align="left">
										<div class="hl_lgn_textbox_area hl_lgn_textbox_email">
											<div class="hl_lgn_textbox">
												<input id="uEmail" name="useremail" maxlength="30" type="text"
													class="hl_lgn_textbox_ipt">
											</div>
											<div class="hl_lgn_tips" id="uEmail_alter">
												<i class="hl_lgn_tips_icon"></i><span
													class="hl_lgn_tips_txt">请输入您的常用邮箱，将用作密保邮箱</span>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top"><label for="uPassword"
										class="hl_lgn_reg_tb_tl"><span class="red">*</span>
											密码：</label></td>
									<td align="left">
										<div class="hl_lgn_textbox_area hl_lgn_textbox_password">
											<div class="hl_lgn_textbox">
												<input id="uPassword" maxlength="16" name="userpasswd"
													type="password" class="hl_lgn_textbox_ipt">
											</div>
											<div class="hl_lgn_tips" id="uPassword_alter">
												<i class="hl_lgn_tips_icon"></i><span
													class="hl_lgn_tips_txt">请输入6-16位的数字、字母或符号。</span>
											</div>
											<div class="hl_lgn_psw_strong" id="uPasswordStrong">
												<div class="hl_lgn_psw_txt">密码强度:弱</div>
												<div class="hl_lgn_psw_strong_cnt">
													<span class="bg"></span> <span class="line1"></span> <span
														class="line2"></span>
												</div>
												<div class="hl_lgn_psw_txt">强</div>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td align="right"><label for="uRepassword"
										class="hl_lgn_reg_tb_tl"><span class="red">*</span>
											确认密码：</label></td>
									<td align="left">
										<div class="hl_lgn_textbox_area hl_lgn_textbox_repassword">
											<div class="hl_lgn_textbox">
												<input id="uRepassword" maxlength="16" name="repassword"
													type="password" class="hl_lgn_textbox_ipt">
											</div>
											<div class="hl_lgn_tips" id="uRepassword_alter">
												<i class="hl_lgn_tips_icon"></i><span
													class="hl_lgn_tips_txt">再次输入密码</span>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td align="right"><label for="uCode"
										class="hl_lgn_reg_tb_tl"><span class="red">*</span>
											验证码：</label></td>
									<td align="left">
										<div class="hl_lgn_textbox_area hl_lgn_textbox_code">
											<div class="hl_lgn_textbox">
												<input id="uCode" name="code" maxlength="6" type="text"
													class="hl_lgn_textbox_ipt">
											</div>
											<div class="hl_lgn_tips">
												<i class="hl_lgn_tips_icon"></i><span
													class="hl_lgn_tips_txt"></span>
											</div>
											<div class="hl_lgn_code_area">
												<img id="ucheckimg" title="看不清，换一张"
													style="cursor: hand; padding-top: 3px;"
													onclick="getVerifyCodeImg(this)"
													src="http://www.kugou.com/newuc/user/verifycode/t=1365844393031">
											</div>
											<a
												onclick="getVerifyCodeImg(document.getElementById('ucheckimg'))"
												class="hl_lgn_changeone">换一张</a>
										</div>
									</td>
								</tr>
								<tr>
									<td class="hl_lgn_changeone"></td>
									<td align="left"><label><input id="uReaded"
											type="checkbox" name="readed" checked="checked"
											class="hl_lgn_checkbox"> 我已经认真阅读并同意 <a
											href="javascript:showClause();">《海螺服务条款》</a></label></td>
								</tr>
								<tr>
									<td></td>
									<td align="left"><input type="submit" name="uSubmit"
										class="hl_lgn_reg_btn" value="立即注册" id="uSubmitBtn"></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>
		<script language="JavaScript" src="js/registe.js" type="text/javascript"></script>
	</jsp:attribute>
</tags:navigation>