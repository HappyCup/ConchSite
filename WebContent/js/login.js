
function createXmlGttpRequest(){
    if(window.ActiveXObject){//IE
        return new ActiveXObject("Microsoft.XMLHTTP");
    }else if(window.XMLHttpRequest){
        return new XMLHttpRequest();
    }
}
var xmlHttpRequest;

function onlogin(){
	var name=document.getElementById("KgPopupUserName").value;
	var passwd=document.getElementById("KgPopupUserPwd").value;
	if(name.length<1||passwd.length<1){
		document.getElementById("KgPopupLoginNoticeArea").getElementsByTagName("span").item(0).innerHTML="用户名或密码不能为空";
		document.getElementById("KgPopupLoginNoticeArea").style.visibility='visible';
	}
	else{
		var content="username="+name+"&userpasswd="+passwd;
		xmlHttpRequest=createXmlGttpRequest();
		xmlHttpRequest.onreadystatechange=LoginVaildteHandle;
		xmlHttpRequest.open("POST","login.action",true);
		xmlHttpRequest.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		xmlHttpRequest.send(content);
	}
}
function LoginVaildteHandle(){
	if(xmlHttpRequest.readyState==4){
		if(xmlHttpRequest.status=200){
//			alert(xmlHttpRequest.responseText);
			try{
				var xmlDoc=xmlHttpRequest.responseXML;
				var result=xmlDoc.getElementsByTagName("resultID")[0].childNodes[0].nodeValue;
				result=parseInt(result);
				if(result==1){
//					alert(result);
					document.getElementById("KgPopupLoginNoticeArea").getElementsByTagName("span").item(0).innerHTML="用户名或密码错误";
					document.getElementById("KgPopupLoginNoticeArea").style.visibility='visible';
				}
				else{
					MM_showHideLayers('KgPopupLoginBox','','hide','apDiv6','','hide','KgPopupLoginNoticeArea','','hide');
					var name=xmlDoc.getElementsByTagName("username")[0].childNodes[0].nodeValue;
					document.getElementById("login_area1").innerHTML=[
					                                                  '<div class="login logined" id="lng" style="vertical-align: middle; ">'+
					                                                  		'<a class="pic" hidefocus="true" target="_blank" href="#">'+
					                                                  		'<img id="myheadpic" src="http://localhost:8081/ConchSite/GetImg.action" width="32" height="32" />'+
					                                                  		'</a></div>'];
					document.getElementById("login_area2").innerHTML=['<a hidefocus="true" id="mynickname" target="_blank" href="#" class="blue">'+name+
					                                                  		'</a>'];
					document.getElementById("login_area3").innerHTML='<a hidefocus="true" href="logout.action" class="logout">退出登录</a>';
				}
			}catch(error){
//				alert(xmlHttpRequest.responseText);
				//location.replace(xmlHttpRequest.responseText);
				location.href="http://localhost:8081/ConchSite/hailuo.jsp";
			}
		}
	}
}