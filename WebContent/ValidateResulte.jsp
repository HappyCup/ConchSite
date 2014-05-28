<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/xml; charset=utf-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="/struts-tags" prefix="s" %>
<re>
<resultID>
<s:property value="valiResult"/>
</resultID>
<result>1</result>
<username>
<s:property value="#session.user.usName"/>
</username>
</re>