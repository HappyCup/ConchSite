<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<tags:navigation>
	<jsp:attribute name="pagecss">
	<link href="css/hailuojsp.css" rel="stylesheet" type="text/css">
	</jsp:attribute>
	<jsp:attribute name="pagebody">
	<%@ include file="home_part_html.jsp" %>
	</jsp:attribute>
</tags:navigation>