<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<tags:navigation>
	<jsp:attribute name="pagecss">
	<link href="css/hailuojsp.css" rel="stylesheet" type="text/css">
	</jsp:attribute>
	<jsp:attribute name="pagebody">
	<div id="main">
		<div id="apDiv9">
			<table width="900" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th width="114" height="29" class="xinggeban" scope="row">
						<strong>新歌榜</strong>
					</th>
					<td width="157">&nbsp;</td>
					<td width="47" class="gengduo">
						<a href="#"
							style="color: #682996; font-size: 12px; font-weight: bold;">更多&gt;&gt;</a>
					</td>
					<td width="24" class="gengduo">&nbsp;</td>
					<td width="118" class="gengduo">
						<span class="xinggeban">
							<strong>热歌榜</strong>
						</span>
					</td>
					<td width="118" class="gengduo">&nbsp;</td>
					<td width="65" class="gengduo">
						<a href="#"
							style="color: #682996; font-size: 12px; font-weight: bold;">更多&gt;&gt;</a>
					</td>
					<td width="12" class="gengduo">&nbsp;</td>
					<td width="160" class="xinggeban">
						<strong>歌手榜</strong>
					</td>
					<td width="32" class="gengduo">&nbsp;</td>
					<td width="53" class="gengduo">
						<a href="#"
							style="color: #682996; font-size: 12px; font-weight: bold;">更多&gt;&gt;</a>
					</td>
				</tr>
			</table>
			<%-- 调用action生成榜单数据--%>
			<s:action name="GetHotSongsAction" executeResult="false"
					namespace="/"> </s:action>
			<s:action name="GetNewSongsAction" executeResult="false"
					namespace="/"> </s:action>
			<s:action name="SingerRank" executeResult="false" namespace="/"> </s:action>
			
			<table width="903" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th width="320" scope="row">
						<table width="320" border="0" cellpadding="0" cellspacing="0"
								class="music_ban">
							<tr>
								<th width="30" height="19" scope="row">&nbsp;</th>
								<td width="150">&nbsp;</td>
								<td width="75">&nbsp;</td>
								<td colspan="3">&nbsp;</td>
							</tr>
							<s:iterator value="#request.newsongs" status="st" id="column">
							<s:if test="#st.getIndex()<14">							
							<tr>
								<s:if test="#st.getIndex()==0">
									<th height="30" scope="row"><img src="image/lj2.jpg"
													alt="" width="30" height="30" /></th>
											</s:if>
								<s:elseif test="#st.getIndex()==1">
									<th height="30" scope="row"><img src="image/lj22.jpg"
													alt="" width="30" height="30" /></th>
											</s:elseif>
								<s:elseif test="#st.getIndex()==2">
									<th height="30" scope="row"><img src="image/lj3.jpg"
													alt="" width="30" height="30" /></th>
											</s:elseif>
								<s:else>
									<th class="nusic_num" scope="row"><s:property
														value="#st.getIndex()+1" /></th>
											</s:else>
								<td class="zzzzzzzzzz" sizcache="3977" sizset="29">
									<div align="left">
										<a id="newtop_checkboxmc_15"
											title="<s:property value="#column.sgName"/>"
											onclick="javascript:onmusicplay('<s:property value="#column.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#column.idSong"/>');"
											href="javascript:void(0);" name="batchlistenm">
												<s:property	value="#column.sgName" />
										</a>
									</div>
								</td>
								<s:set name="singer" value="#column.singers.toArray()[0]"></s:set>
								<td class="zzzzzzzzzz" sizcache="3977" sizset="30">
									<a title="<s:property value="#singer.sgrName"/>"
												href="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>"
												target="_blank">
													<s:property	value="#singer.sgrName" />
									</a>
								</td>
								<td width="20">
									<a href="javascript:;" onmouseout="MM_swapImgRestore()"
												onmouseover="MM_swapImage('Image1','','image/1_2.jpg',1)"
												onclick="javascript:onmusicplay('<s:property value="#column.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#column.idSong"/>');">
										<img src="image/1_1.jpg" alt="" name="Image1" width="20"
													height="20" border="0" id="Image1" />
									</a>
								</td>
								<td width="20">
									<a href="javascript:;" onmouseout="MM_swapImgRestore()"
												onmouseover="MM_swapImage('Image111','','image/2-2.jpg',1)"
												onclick="javascript:onadd('<s:property value="#column.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#column.idSong"/>');">
										<img src="image/2-1.jpg" alt="" name="Image111" width="20"
													height="20" border="0" id="Image111" />
									</a>
								</td>
								<td>
									<a href="#" onmouseout="MM_swapImgRestore()"
												onmouseover="MM_swapImage('Image121','','image/3-2.jpg',1)"
												onclick="javascript:ondownload('<s:property value="#column.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#column.idSong"/>');">
										<img src="image/3-1.jpg" alt="" name="Image121" width="20"
													height="20" border="0" id="Image121" />
									</a>
								</td>
							</tr>
							</s:if>
							</s:iterator>
						</table>
					</th>

					<th width="4" scope="row">&nbsp;</th>
					<td width="320">
						<table width="320" border="0" cellpadding="0" cellspacing="0"
								class="music_ban">
							<tr>
								<th width="33" height="19" scope="row">&nbsp;</th>
								<td width="135">&nbsp;</td>
								<td width="74">&nbsp;</td>
								<td colspan="3">&nbsp;</td>
							</tr>
							<s:iterator value="#request.hotsongs" status="st" id="column">
							<s:if test="#st.getIndex()<14">
							<tr>
								<s:if test="#st.getIndex()==0">
									<th height="30" scope="row"><img src="image/lj2.jpg"
													alt="" width="30" height="30" /></th>
											</s:if>
								<s:elseif test="#st.getIndex()==1">
									<th height="30" scope="row"><img src="image/lj22.jpg"
													alt="" width="30" height="30" /></th>
											</s:elseif>
								<s:elseif test="#st.getIndex()==2">
									<th height="30" scope="row"><img src="image/lj3.jpg"
													alt="" width="30" height="30" /></th>
											</s:elseif>
								<s:else>
								<th class="nusic_num" scope="row"><s:property
														value="#st.getIndex()+1" /></th>
											</s:else>
								<td class="zzzzzzzzzz" sizcache="3977" sizset="29">
									<a id="newtop_checkboxmc_"
												title="<s:property value="#column.sgName"/>"
												onclick="javascript:onmusicplay('<s:property value="#column.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#column.idSong"/>');"
												href="javascript:void(0);" name="batchlistenm">
													<s:property	value="#column.sgName" />
									</a>
								</td>
								<s:set name="singer" value="#column.singers.toArray()[0]"></s:set>
								<td class="zzzzzzzzzz" sizcache="3977" sizset="30">
									<a title="<s:property value="#singer.sgrName"/>"
												href="singerHome.action?idSinger=<s:property value="#singer.idSinger"/>"
												target="_blank">
													<s:property	value="#singer.sgrName" />
									</a>
								</td>
								<td width="21">
									<a href="#" onmouseout="MM_swapImgRestore()"
												onmouseover="MM_swapImage('Image112','','image/1_2.jpg',1)"
												onclick="javascript:onmusicplay('<s:property value="#column.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#column.idSong"/>');">
										<img src="image/1_1.jpg" alt="" name="Image112" width="20"
													height="20" border="0" id="Image112" />
									</a>
								</td>
								<td width="21">
									<a href="#" onmouseout="MM_swapImgRestore()"
												onmouseover="MM_swapImage('Image122','','image/2-2.jpg',1)"
												onclick="javascript:onadd('<s:property value="#column.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#column.idSong"/>');">
										<img src="image/2-1.jpg" alt="" name="Image122" width="20"
													height="20" border="0" id="Image122" />
									</a>
								</td>
								<td width="29">
									<a href="#" onmouseout="MM_swapImgRestore()"
												onmouseover="MM_swapImage('Image132','','image/3-2.jpg',1)"
												onclick="javascript:ondownload('<s:property value="#column.sgName"/>','<s:property value="#singer.sgrName"/>','<s:property value="#column.idSong"/>');">
										<img src="image/3-1.jpg" alt="" name="Image132" width="20"
													height="20" border="0" id="Image132" />
									</a>
								</td>
							</tr>
							</s:if>
							</s:iterator>
						</table>
					</td>
					
	<%-- 歌手榜 ----------------------------------------------------------%>
					<td width="259">
						<table width="249" height="431" border="0" cellpadding="0"
								cellspacing="0">
							<tr>
								<th width="30" height="19" scope="row">&nbsp;</th>
								<td width="80">&nbsp;</td>
								<td width="6">&nbsp;</td>
								<td colspan="3">&nbsp;</td>
							</tr>
							<s:iterator value="#request.singerRank" status="st" id="column">
							<s:if test="#st.getIndex()<20">
							<s:if test="#st.getIndex()==0">
							   <tr>
							   	<s:set name="singertop1" value="column"></s:set>
								<th height="61" scope="row">
									<img src="image/lj2.jpg" alt="" width="30" height="30" />
								</th>
								<td height="80" sizcache="3977" sizset="29">
								<a
										href="singerHome.action?idSinger=<s:property value="#singertop1.idSinger"/>"
										target="_blank">
									<img
													src="SingerImg.action?idSinger=<s:property value="#singertop1.idSinger"/>"
													alt="<s:property value="#singertop1.sgrName"/>" width="80"
													height="80" />
								</a>
								</td>
								<td rowspan="3" sizcache="3977" sizset="30">&nbsp;</td>
							
										</s:if>
							<s:elseif test="#st.getIndex()==1">
								<s:set name="singertop2" value="column"></s:set>
								<td width="30">
									<img src="image/lj22.jpg" alt="" width="30" height="30" />
								</td>
								<td width="80">
								<a
										href="singerHome.action?idSinger=<s:property value="#singertop2.idSinger"/>"
										target="_blank">
									<img
												src="SingerImg.action?idSinger=<s:property value="#singertop2.idSinger"/>"
												alt="<s:property value="#singertop2.sgrName"/>" width="80"
												height="80" />
								</a>
								</td>
								<td width="23">&nbsp;</td>
							   </tr>
							   <tr>
								<th height="9" scope="row">&nbsp;</th>
								<td height="9" class="zzzzzzzzzz" sizcache="3977" sizset="29">
									<div align="center">
										<a
															href="singerHome.action?idSinger=<s:property value="#singertop1.idSinger"/>"
															target="_blank"><s:property
																value="#singertop1.sgrName" /></a>
									</div>
								</td>
								<td width="30">&nbsp;</td>
								<td>
									<div align="center">
										<a
															href="singerHome.action?idSinger=<s:property value="#singertop2.idSinger"/>"
															target="_blank" class="zzzzzzzzzz"><s:property
																value="#singertop2.sgrName" /></a>
									</div>
								</td>
								<td>&nbsp;</td>
								</tr>
								<tr>
								<th height="10" scope="row">&nbsp;</th>
								<td height="10" sizcache="3977" sizset="29">&nbsp;</td>
								<td width="30">&nbsp;</td>
								<td colspan="2">&nbsp;</td>
								</tr>
							</s:elseif>
							<s:elseif test="#st.getIndex()==2">
								<s:set name="singertop3" value="column"></s:set>
								<tr>
								<th height="6" scope="row">
									<img src="image/lj3.jpg" alt="" width="30" height="30" />
								</th>
								<td sizcache="4009" sizset="32">
								<a
										href="singerHome.action?idSinger=<s:property value="#singertop3.idSinger"/>"
										target="_blank">
									<img
													src="SingerImg.action?idSinger=<s:property value="#singertop3.idSinger"/>"
													alt="<s:property value="#singertop3.sgrName"/>" width="80"
													height="80" />
								</a>
								</td>
								<td rowspan="3" sizcache="4009" sizset="33">&nbsp;</td>
							
										</s:elseif>
							<s:elseif test="#st.getIndex()==3">
								<s:set name="singertop4" value="column"></s:set>
								<td>
									<img src="image/lj4.jpg" alt="" width="30" height="30" />
								</td>
								<td>
								<a
										href="singerHome.action?idSinger=<s:property value="#singertop4.idSinger"/>"
										target="_blank">
									<img
												src="SingerImg.action?idSinger=<s:property value="#singertop4.idSinger"/>"
												alt="<s:property value="#singertop4.sgrName"/>" width="80"
												height="80" />
								</a>
								</td>
								<td>&nbsp;</td>
							    </tr>
							    <tr class="zzzzzzzzzz">
								<th height="5" scope="row">&nbsp;</th>
								<td sizcache="4009" sizset="32">
									<div align="center">
										<a
															href="singerHome.action?idSinger=<s:property value="#singertop3.idSinger"/>"
															target="_blank"><s:property
																value="#singertop3.sgrName" /></a>
									</div>
								</td>
								<td>&nbsp;</td>
								<td>
									<div align="center">
										<a
															href="singerHome.action?idSinger=<s:property value="#singertop4.idSinger"/>"
															target="_blank"><s:property
																value="#singertop4.sgrName" /></a>
									</div>
								</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th height="19" scope="row">&nbsp;</th>
								<td height="19" sizcache="4009" sizset="32">&nbsp;</td>
								<td>&nbsp;</td>
								<td colspan="2">&nbsp;</td>
							</tr>
							</s:elseif>
							<s:else>
								<s:if test="#st.isOdd()">
								<tr>
								<th height="22" class="nusic_num" scope="row"><s:property
															value="#st.getIndex()+1" /></th>
								<td class="zzzzzzzzzz" sizcache="4013" sizset="35">
									<a
														href="singerHome.action?idSinger=<s:property value="#column.idSinger"/>"
														target="_blank"><s:property value="#column.sgrName" /></a>
								</td>
								
											</s:if>
								<s:else>
								<td class="zzzzzzzzzz" sizcache="4013" sizset="36">&nbsp;</td>
								<td class="nusic_num"><s:property value="#st.getIndex()+1" /></td>
								<td colspan="2" class="zzzzzzzzzz">
									<a
													href="singerHome.action?idSinger=<s:property value="#column.idSinger"/>"
													target="_blank"><s:property value="#column.sgrName" /></a>
								</td>
								</tr>
								</s:else>
							</s:else>
							</s:if>
							</s:iterator>
						</table>
					</td>
				</tr>
			</table>
		</div>
		
		
		<%---其他热门歌手----------------------------------------------%>
		<div id="apDiv11">
			<div id="apDiv12">
				<table width="860" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<th width="114" scope="row">热门歌手</th>
						<td width="680">&nbsp;</td>
						<td width="66" class="gengduo">
							<a href="#"
								style="color: #682996; font-size: 12px; font-weight: bold;">更多&gt;&gt;</a>
						</td>
					</tr>
				</table>
				<table width="860" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<th height="23" colspan="13" scope="row">&nbsp;</th>
					</tr>
					<tr>
						<s:iterator value="#request.singerRank" status="st" id="column">
						<s:if test="#st.getIndex()>19&&#st.getIndex()<27">
						<th width="110" scope="row">
							<a
										href="singerHome.action?idSinger=<s:property value="#column.idSinger"/> "
										target="_blank">
								<img
											src="SingerImg.action?idSinger=<s:property value="#column.idSinger"/>"
											width="110" height="110" />
							</a>
							<div id="apDiv14">
							<a
										href="singerHome.action?idSinger=<s:property value="#column.idSinger"/> "
										target="_blank">
											<s:property value="#column.sgrName" />
							</a>
							</div>
						</th>
						<th width="15" scope="row">&nbsp;</th>
						</s:if>
						</s:iterator>
					</tr>
				</table>
				<table width="860" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<s:iterator value="#request.singerRank" status="st" id="column">
						<s:if test="#st.getIndex()>26&&#st.getIndex()<31">
						<th width="70" height="30" scope="row">
							<div align="left">
								<a
												href="singerHome.action?idSinger=<s:property value="#column.idSinger"/>"
												target="_blank"><s:property value="#column.sgrName" /></a>
							</div>
						</th>
						</s:if>
						</s:iterator>
						
						<th height="30" scope="row">
							<div align="left"></div>
						</th>
						
						<s:iterator value="#request.singerRank" status="st" id="column">
						<s:if test="#st.getIndex()>30&&#st.getIndex()<34">
						<th width="70" height="30" scope="row">
							<div align="left">
								<a
												href="singerHome.action?idSinger=<s:property value="#column.idSinger"/>"
												target="_blank"><s:property value="#column.sgrName" /></a>
							</div>
						</th>
						</s:if>
						</s:iterator>
						
						<th height="30" scope="row">
							<div align="left"></div>
						</th>
						
						<s:iterator value="#request.singerRank" status="st" id="column">
						<s:if test="#st.getIndex()>33&&#st.getIndex()<38">
						<th width="70" height="30" scope="row">
							<div align="left">
								<a
												href="singerHome.action?idSinger=<s:property value="#column.idSinger"/>"
												target="_blank"><s:property value="#column.sgrName" /></a>
							</div>
						</th>
						</s:if>
						</s:iterator>
					</tr>
					<tr>
						<s:iterator value="#request.singerRank" status="st" id="column">
						<s:if test="#st.getIndex()>37&&#st.getIndex()<42">
						<th width="70" height="30" scope="row">
							<div align="left">
								<a
												href="singerHome.action?idSinger=<s:property value="#column.idSinger"/>"
												target="_blank"><s:property value="#column.sgrName" /></a>
							</div>
						</th>
						</s:if>
						</s:iterator>
						<th height="30" scope="row">
							<div align="left"></div>
						</th>
						
						<s:iterator value="#request.singerRank" status="st" id="column">
						<s:if test="#st.getIndex()>41&&#st.getIndex()<45">
						<th width="70" height="30" scope="row">
							<div align="left">
								<a
												href="singerHome.action?idSinger=<s:property value="#column.idSinger"/>"
												target="_blank"><s:property value="#column.sgrName" /></a>
							</div>
						</th>
						</s:if>
						</s:iterator>
						
						<th height="30" scope="row">
							<div align="left"></div>
						</th>
						<s:iterator value="#request.singerRank" status="st" id="column">
						<s:if test="#st.getIndex()>44&&#st.getIndex()<49">
						<th width="70" height="30" scope="row">
							<div align="left">
								<a
												href="singerHome.action?idSinger=<s:property value="#column.idSinger"/>"
												target="_blank"><s:property value="#column.sgrName" /></a>
							</div>
						</th>
						</s:if>
						</s:iterator>
					</tr>
				</table>
			</div>
			<div id="apDiv22">
				<table width="900" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<th width="52" height="30" scope="row">华语</th>
						<td width="17">▶</td>
						<td width="60"><a href="#">男歌手</a></td>
						<td width="60"><a href="#">女歌手</a></td>
						<td width="60"><a href="#">乐队组合</a></td>
						<td>&nbsp;</td>
						<th width="52">欧美</th>
						<td width="16">▶</td>
						<td width="60"><a href="#">男歌手</a></td>
						<td width="60"><a href="#">女歌手</a></td>
						<td width="60"><a href="#">乐队组合</a>
						</td>
						<td>&nbsp;</td>
						<th width="105">日韩</th>
						<td width="16">▶</td>
						<td width="60"><a href="#">男歌手</a></td>
						<td width="60"><a href="#">女歌手</a></td>
						<td width="60"><a href="#">乐队组合</a>
					
						</tr>
				</table>
			</div>
		</div>
	</div>
	</jsp:attribute>
</tags:navigation>