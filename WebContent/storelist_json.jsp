<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="/struts-tags" prefix="s" %>
[
<s:iterator value="#request.storelist" status="st" id="stl">
	{
		"title": "<s:property  value="#stl.song.sgName"></s:property>",
		"artist": "<s:property  value="#stl.song.singers.toArray()[0].sgrName"/>",
		"mp3": "GetSongData.action?idSong=<s:property  value="#stl.song.idSong"/>"
	},
</s:iterator>
]