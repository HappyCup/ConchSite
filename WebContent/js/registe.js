// JavaScript Document
//创建XMLHttpRequest
function createXmlGttpRequest(){
    if(window.ActiveXObject){//IE浏览器
        return new ActiveXObject("Microsoft.XMLHTTP");
    }else if(window.XMLHttpRequest){//非IE浏览器
        return new XMLHttpRequest();
    }
}
var xmlHttpRequest;
var userNameRight=false;
var usrEmailRight=false;
var userPasswdRight=false;
var valiPasswdRight=false;
document.getElementById ("uUsername").onfocus=function()
{
	userNameRight=false;
	document.getElementById("Username_alter").style.display='inline';
	document.getElementById("Username_alter").className="hl_lgn_tips";
	document.getElementById("Username_alter").getElementsByTagName("span").item(0).innerHTML="请输入4到20位字符，首位不能为数字";
}

document.getElementById ("uUsername").onblur=function()
{
	var s=document.getElementById ("uUsername").value;
	if(s.length>20||s.length<4)
	{
		document.getElementById("Username_alter").className="hl_lgn_tips hl_lgn_tips_error";
	}
	else{
		var url="UserNameValidate.action?username="+s;
		xmlHttpRequest=createXmlGttpRequest();
		xmlHttpRequest.onreadystatechange=nameVaildteHandle;
		xmlHttpRequest.open("GET",url,true);
		xmlHttpRequest.send(null);
		//document.getElementById("Username_alter").className="hl_lgn_tips hl_lgn_tips_success";
	}
}
function nameVaildteHandle(){
	if(xmlHttpRequest.readyState==4){
		if(xmlHttpRequest.status=200){
			var xmlDoc=xmlHttpRequest.responseXML;
			//alert(xmlHttpRequest.responseText);
			//alert("xmlDoc:"+xmlDoc);
			var resultID=xmlDoc.getElementsByTagName("resultID")[0].childNodes[0].nodeValue;
			resultID=parseInt(resultID);
			if(resultID==1){
				document.getElementById("Username_alter").getElementsByTagName("span").item(0).innerHTML="用户名已存在";
				document.getElementById("Username_alter").className="hl_lgn_tips hl_lgn_tips_error";
			}
			else{
				document.getElementById("Username_alter").className="hl_lgn_tips hl_lgn_tips_success";
				userNameRight=true;
			}
		}
	}
}
document.getElementById ("uEmail").onfocus=function()
{
	usrEmailRight=false;
	document.getElementById("uEmail_alter").getElementsByTagName("span").item(0).innerHTML="请输入您的常用邮箱，将作为密保邮箱";
	document.getElementById("uEmail_alter").style.display='inline';
	document.getElementById("uEmail_alter").className="hl_lgn_tips";
}
document.getElementById ("uEmail").onblur=function()
{
	var s=document.getElementById ("uEmail").value;
	var reg=new RegExp("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$");
	if(reg.test(s))
	{
		document.getElementById("uEmail_alter").className="hl_lgn_tips hl_lgn_tips_success";
		usrEmailRight=true;
	}
	else
	{
		document.getElementById("uEmail_alter").className="hl_lgn_tips hl_lgn_tips_error";
		document.getElementById("uEmail_alter").getElementsByTagName("span").item(0).innerHTML="邮箱格式错误";
	}
}

document.getElementById ("uPassword").onfocus=function()
{
	userPasswdRight=false;
	document.getElementById("uPassword_alter").style.display='inline';
	document.getElementById("uPassword_alter").className="hl_lgn_tips";
	//document.getElementById("uPassword_alter").getElementsByTagName("span").item(0).innerHTML="璇疯緭鍏�-16浣嶇殑鏁板瓧銆佸瓧姣嶆垨绗﹀彿銆�
}
document.getElementById ("uPassword").onblur=function()
{
	var s=document.getElementById ("uPassword").value;
	var strength=0;
	if(s.length<6||s.length>16)
	{
		document.getElementById("uPassword_alter").className="hl_lgn_tips hl_lgn_tips_error";
		userPasswdRight=false;
		//document.getElementById("uEmail_alter").getElementsByTagName("span").item(0).innerHTML="閭鏍煎紡閿欒";
	}
	else
	{
		document.getElementById("uPassword_alter").className="hl_lgn_tips hl_lgn_tips_success";
		if(/\d/i.test(s))
		{
         	strength += 1;
        }
        if(/[a-z]/i.test(s)){
            strength += 1;
        }
        if (/[-_]/i.test(s)){
            strength += 1;
        }
		document.getElementById("uPasswordStrong").className="hl_lgn_psw_strong"+" hl_lgn_psw_strong_s"+strength;
	}
}

document.getElementById ("uRepassword").onfocus=function()
{
	userPasswdRight=false;
	document.getElementById("uRepassword_alter").style.display='inline';
	document.getElementById("uRepassword_alter").className="hl_lgn_tips";
	document.getElementById("uRepassword_alter").getElementsByTagName("span").item(0).innerHTML="再一次输入密码";
}
document.getElementById ("uRepassword").onblur=function()
{
	var p1=document.getElementById ("uPassword").value;
	var p2=document.getElementById ("uRepassword").value;
	if(p1==p2&&p1.length!=0)
	{
		document.getElementById("uRepassword_alter").className="hl_lgn_tips hl_lgn_tips_success";
		userPasswdRight=true;
	}
	else
	{
		userPasswdRight=false;
		document.getElementById("uRepassword_alter").className="hl_lgn_tips hl_lgn_tips_error";
		document.getElementById("uRepassword_alter").getElementsByTagName("span").item(0).innerHTML="两次密码不一致";
	}
}

function checkID()
{
//	var form=document.uRegForm;
	if(userNameRight&&usrEmailRight&&userPasswdRight){
		return true;
//		content="username="+document.getElementById ("uUsername").value+
//			"&userpasswd="+document.getElementById ("uPassword").value+
//			"&useremail="+document.getElementById ("uEmail").value;
//		xmlHttpRequest=createXmlGttpRequest();
//		xmlHttpRequest.open("POST","Registe.action",true);
//		xmlHttpRequest.setRequestHeader("Content-type","application/x-www-form-urlencoded");
//		xmlHttpRequest.send(content);
//		xmlHttpRequest.onreadystatechange=function(){
//			if(xmlHttpRequest.readyState==4){
//				if(xmlHttpRequest.status=200){
//					location.replace(xmlHttpRequest.responseText);
//					//location.href="http://localhost:8081/ConchSite/mainPage/mainPage.jsp";
//				}
//			}
//		};
	}
	else{
		return false;
	}
}