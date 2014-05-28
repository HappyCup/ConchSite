function createXmlGttpRequest(){
    if(window.ActiveXObject){//IE
        return new ActiveXObject("Microsoft.XMLHTTP");
    }else if(window.XMLHttpRequest){
        return new XMLHttpRequest();
    }
}
var xmlHttpRequest;

var mailReg=new RegExp("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$");
var qqReg=new RegExp("[1-9][0-9]{4,}");

function check_contact(qq,mail){
	var warn1="邮箱格式错误",warn2="QQ号格式错误";
	var qqtest=true,mailtest=true;
	var result="";
	if(mail.length>0 &&!mailReg.test(mail)){
		result+=warn1;
		mailtest=false;
	}
	if(qq.length>0 && !qqReg.test(qq)){
		result+="<br/>"+warn2;
		qqtest=false;
	}
	if(!qqtest || !mailtest){
		warning(result);
		return false;
	}
	return true;
}

function feedback(){
	var fb_content=document.getElementById("fankui").value;
	var qq=document.getElementById("QQ").value;
	var mail=document.getElementById("mail").value;
	if(fb_content.length<1){
		warning("反馈内容不能为空");
		return;
	}
	if(qq.length<1 && mail.length<1){
		warning("请留下您的联系方式");
		return;
	}
	if(!check_contact(qq,mail))
		return;
	during("正在提交....");
	var content="fbContent="+fb_content+"&contactInfo="+"QQ:"+qq+"\n  mailbox:"+mail;
	xmlHttpRequest=createXmlGttpRequest();
	xmlHttpRequest.open("POST","feedback.action",true);
	xmlHttpRequest.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xmlHttpRequest.send(content);
	xmlHttpRequest.onreadystatechange=function(){
		if(xmlHttpRequest.readyState==4){
			if(xmlHttpRequest.status=200){
				document.getElementById("fankui").value="";
				document.getElementById("QQ").value="";
				document.getElementById("mail").value="";
				delwarn("shadow","warntext");
				warning("谢谢您的反馈，我们将竭力做得更好");
			}
		}
	};
}

function warning(text){
	var poup=document.createElement("div");
	poup.setAttribute("id","shadow");
//	poup.id="shadow";
	poup.setAttribute("style","display: block;position: absolute;left: 0px;top: 0px;width: 1349px;height: 2471px;opacity: 0.6;background-color: black;z-index: 100;");
	var warntext=document.createElement("div");
	warntext.setAttribute("id","warntext");;
	warntext.setAttribute("style","position: fixed;width:368px;height:194px;"+
					"background-attachment: scroll;z-index:101;padding-top: 50px;margin-top: -158px;margin-left: -220px;background-color: #FFF;left: 50%;top: 50%;");
	var html="<table width='350' border='0'><tr><td style='text-align:center;color:red'><h2>"+text+"</h2></td></tr>";
	html+="<tr><td>&nbsp</td></tr><tr><td style='text-align:center'><input type='button' onclick='delwarn(\"shadow\",\"warntext\")' value='关闭' /></td></tr></table>";
	warntext.innerHTML=html;
	document.body.appendChild(poup);
	document.body.appendChild(warntext);
}
function delwarn(id1,id2){
	var shadow=document.getElementById(id1);
	var warn=document.getElementById(id2);
	shadow.parentNode.removeChild(shadow); 
	warn.parentNode.removeChild(warn); 
}

function during(text){
	var poup=document.createElement("div");
	poup.setAttribute("id","shadow");
	poup.setAttribute("style","display: block;position: absolute;left: 0px;top: 0px;width: 1349px;height: 2471px;opacity: 0.6;background-color: black;z-index: 100;");
	var warntext=document.createElement("div");
	warntext.setAttribute("id","warntext");;
	warntext.setAttribute("style","position: fixed;width:368px;height:194px;"+
					"background-attachment: scroll;z-index:101;padding-top: 50px;margin-top: -158px;margin-left: -220px;background-color: #FFF;left: 50%;top: 50%;");
	var html="<table width='350' border='0'><tr><td style='text-align:center;'><h2>"+text+"</h2></td></tr>";
	html+="<tr><td>&nbsp</td></tr><tr><td style='text-align:center'><img src='image/ajax-loader.gif'/></td></tr></table>";
	warntext.innerHTML=html;
	document.body.appendChild(poup);;
	document.body.appendChild(warntext);
}