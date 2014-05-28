function createXmlGttpRequest(){
    if(window.ActiveXObject){//IE
        return new ActiveXObject("Microsoft.XMLHTTP");
    }else if(window.XMLHttpRequest){
        return new XMLHttpRequest();
    }
}
var xmlHttpRequest;

function getAlbumpage(area,page){
	var url="getAlbumPage.action";
	if(area=="all")
		url="queryAllAlbum.action";
	var content="area="+area+"&pageNow="+page;
	xmlHttpRequest=createXmlGttpRequest();
	xmlHttpRequest.onreadystatechange=getAlbumPageHandle;
	xmlHttpRequest.open("POST",url,true);
	xmlHttpRequest.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xmlHttpRequest.send(content);
}
function getAlbumPageHandle(){
	if(xmlHttpRequest.readyState==4){
		if(xmlHttpRequest.status=200){
			document.getElementById("albumpage").innerHTML=xmlHttpRequest.responseText;
		}
	}
}
