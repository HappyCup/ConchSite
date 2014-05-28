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
function onplay(sgname,sgrName,sgID){
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
		playpage=window.open("../playPage/playPage.htm","playpage");
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
		playpage=window.open("../playPage/playPage.htm","playpage");
		setTimeout(addAndplay,1000);
	}else{
		addAndplay();
	}
	
	playpage.focus();
};