function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
function MM_showHideLayers() { //v9.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) 
  with (document) if (getElementById && ((obj=getElementById(args[i]))!=null)) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
function MM_setTextOfTextfield(objId,x,newText) { //v9.0
  with (document){ if (getElementById){
    var obj = getElementById(objId);} if (obj) obj.value = newText;
  }
}
function MM_changeProp(objId,x,theProp,theValue) { //v9.0
	  var obj = null; with (document){ if (getElementById)
	  obj = getElementById(objId); }
	  if (obj){
	    if (theValue == true || theValue == false)
	      eval("obj.style."+theProp+"="+theValue);
	    else eval("obj.style."+theProp+"='"+theValue+"'");
	  }
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
	html+="<tr><td>&nbsp</td></tr><tr><td style='text-align:center'><input type='button' onclick='delwarn(\"shadow\",\"warntext\")' value='¹Ø±Õ' /></td></tr></table>";
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
XMLHttpRequest.prototype.sendAsBinary = function(datastr) {
    console.log("XMLHttpRequest.prototype.sendAsBinary");
    var bb = new WebKitBlobBuilder();
    var data = new ArrayBuffer(1);
    var ui8a = new Uint8Array(data, 0);
    for (var i in datastr) {
        if (datastr.hasOwnProperty(i)) {
            var chr = datastr[i];
            var charcode = chr.charCodeAt(0);
            var lowbyte = (charcode & 0xff);
            ui8a[0] = lowbyte;
            bb.append(data);
        }
    }
    var blob = bb.getBlob();
    this.send(blob);
}