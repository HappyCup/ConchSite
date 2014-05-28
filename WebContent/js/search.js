var xmlHttpRequest;


function dosearchf(searchstring,page){
	var content="sch_str="+searchstring+"&pageNow="+page;
	xmlHttpRequest=createXmlGttpRequest();
	xmlHttpRequest.open("POST","search.action",true);
	xmlHttpRequest.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xmlHttpRequest.send(content);
	xmlHttpRequest.onreadystatechange=function(){
		if(xmlHttpRequest.readyState==4){
			if(xmlHttpRequest.status=200){
				document.getElementById("searchpage").innerHTML=xmlHttpRequest.responseText;
			}
		}
	};
}
String.prototype.trim = function() 
{ 
    return this.replace(/(^\s*)|(\s*$)/g, "");

};
function onsearchbutton(){
//	alert("onserach");
	var search_string=document.getElementById ("search").value;
	search_string=search_string.trim();
	if(search_string.length<1){
		document.getElementById("search").value="请输入歌手或歌曲";
		return;
	}
	dosearchf(search_string,1);
}
