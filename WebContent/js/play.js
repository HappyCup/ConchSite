//function getPlayPage(){
//	var playpage=window.open("","playpage");
//	if(playpage.location.href == "about:blank")
//		playpage=window.open("../playPage/playPage.htm","playpage");
//	return playpage;
//}
//var __sto = setInterval;     
//window.setInterval = function(callback,timeout,param)
//{
//    var args = Array.prototype.slice.call(arguments,2);
//    var _cb = function()
//    {
//        callback.apply(null,args);
//    };
//    
//    __sto(_cb,timeout);
//};


var playpage;
function onmusicplay(sgname,sgrName,sgID){
	var addAndplay=function addAndplay(){
		playpage.myPlaylist.add({
			title:sgname,
			artist:sgrName,
			mp3:"GetSongData.action?idSong="+sgID
		});
		playpage.myPlaylist.play(-1);
	};
	playpage=window.open("","playpage");
	if(playpage.location.href == "about:blank"){
		playpage=window.open("playPage/playPage.htm","playpage");
		setTimeout(addAndplay,1000);
//		window.setInterval(onplay, 1000,sgname,sgrName,sgID);
		//playpage.onload=function(){playpage.alert("load ok");};
	}else{
		addAndplay();
	}
	
	playpage.focus();
};
function onadd(sgname,sgrName,sgID){
	var addAndplay=function addAndplay(){
		playpage.myPlaylist.add({
			title:sgname,
			artist:sgrName,
			mp3:"GetSongData.action?idSong="+sgID
		});
	};
	playpage=window.open("","playpage");
	if(playpage.location.href == "about:blank"){
		playpage=window.open("playPage/playPage.htm","playpage");
		setTimeout(addAndplay,1000);
	}else{
		addAndplay();
	}
	
	playpage.focus();
};
function ondownload(sgname,sgrName,sgID){
	var url="islogin.action";
	xmlHttpRequest=createXmlGttpRequest();
	xmlHttpRequest.onreadystatechange=function(){respondHandle(sgname,sgrName,sgID);};
	xmlHttpRequest.open("GET",url,true);
	xmlHttpRequest.send(null);
}

function respondHandle(sgname,sgrName,sgID){
	if(xmlHttpRequest.readyState==4){
		if(xmlHttpRequest.status=200){
			var xmlDoc=xmlHttpRequest.responseXML;
			var result=xmlDoc.getElementsByTagName("resultID")[0].childNodes[0].nodeValue;
			result=parseInt(result);
			if(result==1){
				MM_showHideLayers('apDiv6','','show','KgPopupLoginBox','','show');
				document.getElementById("KgPopupLoginNoticeArea").getElementsByTagName("span").item(0).innerHTML="请先登录或注册";
				document.getElementById("KgPopupLoginNoticeArea").style.visibility='visible';
			}
			else{
				var url="DownLoad.action?idSong="+sgID+"&sgName="+sgname+"&sgrName="+sgrName;
				download_file(url);
			}
		}
	}
}
function download_file(url)
{
if(typeof(download_file.iframe)== "undefined")
{
   var iframe = document.createElement("iframe");
   download_file.iframe = iframe;
   document.body.appendChild(download_file.iframe); 
}
// alert(download_file.iframe);
download_file.iframe.src = url;
download_file.iframe.style.display = "none";
}