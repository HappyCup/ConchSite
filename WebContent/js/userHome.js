var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1", {defaultTab:1});
  jQuery(function($){

    // Create variables (in this scope) to hold the API and image size
    var jcrop_api,
        boundx,
        boundy,

        // Grab some information about the preview pane
        $preview = $('#preview-pane'),
        $pcnt = $('#preview-pane .preview-container'),
        $pimg = $('#preview-pane .preview-container img'),

        xsize = $pcnt.width(),
        ysize = $pcnt.height();
    var imagecut_x,
	    imagecut_y,
	    imagecut_w,
	    imagecut_h;
    console.log('init',[xsize,ysize]);
	function resetjcrop(){
    $('#target').Jcrop({
      onChange: updatePreview,
      onSelect: updatePreview,
      aspectRatio: xsize / ysize,
	  setSelect: [ 60, 70, 200, 200 ]
    },function(){
      // Use the API to get the real image size
      var bounds = this.getBounds();
      boundx = bounds[0];
      boundy = bounds[1];
      // Store the API in the jcrop_api variable
      jcrop_api = this;

      // Move the preview into the jcrop container for css positioning
      $preview.appendTo(jcrop_api.ui.holder);
    });}
	resetjcrop();
    function updatePreview(c)
    {
      if (parseInt(c.w) > 0)
      {
        var rx = xsize / c.w;
        var ry = ysize / c.h;
        
        imagecut_x= Math.round(c.x);
        imagecut_y=Math.round(c.y);
        imagecut_w=Math.round(c.w);
        imagecut_h=Math.round(c.h);
        
        $pimg.css({
          width: Math.round(rx * boundx) + 'px',
          height: Math.round(ry * boundy) + 'px',
          marginLeft: '-' + Math.round(rx * c.x) + 'px',
          marginTop: '-' + Math.round(ry * c.y) + 'px'
        });
      }
    };

  
  
  var reader;
  t = document.getElementById('target');
  p = document.getElementById('Preview');
  var divtd = document.getElementById('Errors');
  var file;
function fileSelect(e) {
    e = e || window.event;
     
    var files = e.target.files;  //FileList Objects     
    var ireg = /image\/.*/i;
        
    
    for(var i = 0, f; f = files[i]; i++) {
        if(!f.type.match(ireg)) {
            //���ô�����Ϣ
            //var ul = document.createElement('ul');
            //ul.innerHTML = '<li style="color:red; fontsize=8px;">' + f.name +'����ͼƬ�ļ�.</li>';
             var warning='<span style="color:red; fontsize=8px;">' + f.name +'不是图片文件.</span>';
            //divtd.appendChild(ul);
             divtd.innerHTML=warning;
            continue;
        }
         var s=document.getElementById("picsubmit");
		 s.style.display="block";
        reader=new FileReader();
        //var api = $.Jcrop("#target");
        reader.onload = (function(file) {
            return function(e) {
                //var span = document.createElement('span');
                //span.innerHTML = '<img class="thumb" src="'+ this.result +'" alt="'+ file.name +'" />';
				//alert(this.result);
				p.src=this.result;
				p.alt=file.name;
				t.src=this.result;
				t.alt=file.name;
				//jcrop_api.setImage(this.result);
				jcrop_api.destroy();
				resetjcrop();
            };
        })(f);
        //��ȡ�ļ�����
        reader.readAsDataURL(f);
        file=f;
    }
}

	var xmlHttpRequest;
     function onpicsubmit(){
    	 during("正在提交....");
    	 xmlHttpRequest=new XMLHttpRequest();
    	 if(xmlHttpRequest.upload){
//    		 xmlHttpRequest.upload.addEventListener("progress", showUploadProgress, true);
    		 xmlHttpRequest.onreadystatechange=uploadHandle;
    		 //start upload
             var uploadURL="updateAvator.action";
             xmlHttpRequest.open("post", uploadURL, true);
             var formData = new FormData();
             formData.append("picfile", file);
             formData.append("img_x", imagecut_x);
             formData.append("img_y", imagecut_y);
             formData.append("img_w", imagecut_w);
             formData.append("img_h", imagecut_h);
             xmlHttpRequest.send(formData);
         }
//    	 xmlHttpRequest.open( "POST", "updateAvator。action?picfile='asd'"); 
//    	 xmlHttpRequest.overrideMimeType("application/octet-stream"); 
//    	 xmlHttpRequest.sendAsBinary(reader.result); 
//    	 during("正在提交....");
//    	 xmlHttpRequest.onreadystatechange = function() { 
//		 if (xmlHttpRequest.readyState == 4) { 
//		 if (xmlHttpRequest.status == 200) { 
//		 	console.log("upload complete"); 
//		 	console.log("response: " + xhr.responseText); 
//		 	delwarn("shadow","warntext");
//			warning("修改成功");
//			onpiccancel();
//		 } 
//		 }
//		 };
	 }
	 function uploadHandle(){
		 if (xmlHttpRequest.readyState == 4) { 
			 if (xmlHttpRequest.status == 200) { 
				 delwarn("shadow","warntext");
				 warning("修改成功");
				 onpiccancel();
//				 alert(xmlHttpRequest.responseText);
			 }
		 }
	 }
	 
	 function onpiccancel(){
		 //alert("canceled");
		 var s=document.getElementById("picsubmit");
		 jcrop_api.destroy();
		 s.style.display="none";
//		 window.navigate(location);
		 location.reload();
	 }
if(window.File && window.FileList && window.FileReader && window.Blob) {
    document.getElementById('Files').addEventListener('change', fileSelect, false);
	document.getElementById('picsubmitbut').addEventListener('click', onpicsubmit, false);
	document.getElementById('piccancelbut').addEventListener('click', onpiccancel, false);
} else {
	//var ul = document.createElement('ul');
	//ul.innerHTML = '<li style="color:red; fontsize=8px;">' + '����������֧��File Api' +'</li>';
	//divtd.appendChild(ul);
	divtd.innerHTML= '<span style="color:red; fontsize=8px;">' + '您的浏览器不支持File Api' +'</sapn>';
    //document.write('����������֧��File Api');
}
});
  
  $(document).ready(function(){
	  $("#updatepass").click(function(){
		 var ori_pass=$("#textfield2").val();
		 var new_pass=$("#textfield3").val();
		 var rep_pass=$("#textfield4").val();
		 if(ori_pass.length<1){
			 $("#textfield1").html("*原密码为空!");
			 $("#textfield1").css("color","red");
//			 alert("原密码为空!");
			 return;
		 }
		 if(new_pass.length<1||new_pass!=rep_pass){
			 $("#textfield1").html("*两次密码不一致!");
			 $("#textfield1").css("color","red");
//			 alert("两次密码不一致!"+rep_pass+"!"+new_pass);
			 return;
		 }
		 $.post("updatePasswd.action",
				 {
			 		userpasswd:ori_pass,
			 		newpasswd:new_pass
			 
				 },
				 function(data,status){
					var res=$(data).find("resultID").text();
					if(res==1){
						$("#textfield1").html("*原密码错误!");
						$("#textfield1").css("color","red");
						alert("原密码错误");
					}
					else{
						$("#textfield1").html("修改成功!");
						$("#textfield1").css("color","green");
						$("#textfield2").val("");
						$("#textfield3").val("");
						$("#textfield4").val("");
//						alert("修改成功");
					}
				 });
	  });
  });