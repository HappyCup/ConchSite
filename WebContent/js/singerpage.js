function createXmlGttpRequest(){
    if(window.ActiveXObject){//IE
        return new ActiveXObject("Microsoft.XMLHTTP");
    }else if(window.XMLHttpRequest){
        return new XMLHttpRequest();
    }
}
var xmlHttpRequest;

function getpage(area,type,page){
	var url="getSingerPage.action";
	if(area=="all"&&type=="all")
		url="queryAllSinger.action";
	var content="area="+area+"&type="+type+"&pageNow="+page;
	xmlHttpRequest=createXmlGttpRequest();
	xmlHttpRequest.onreadystatechange=getPageHandle;
	xmlHttpRequest.open("POST",url,true);
	xmlHttpRequest.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xmlHttpRequest.send(content);
}
function getPageHandle(){
	if(xmlHttpRequest.readyState==4){
		if(xmlHttpRequest.status=200){
//			alert(xmlHttpRequest.responseText);
//			var xmlDoc=xmlHttpRequest.responseXML;
//			var result=xmlDoc.getElementsByTagName("root")[0].childNodes[0].nodeValue;
			document.getElementById("singerpage").innerHTML=xmlHttpRequest.responseText;
		}
	}
}

//window.onload=function(){
//	getpage("cn","m",1);
//};