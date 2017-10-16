<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE htm>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>서울고속버스터미널 - 한층 편안하고 빠른 세상으로</title>
<link rel="stylesheet" type="text/css" href="http://www.exterminal.co.kr/common/css/main.css"><!-- 공통으로 사용 하는 CSS -->
<link rel="shortcut icon" href="http://www.exterminal.co.kr/images/icon.ico">
<script type="text/javascript" src="http://www.exterminal.co.kr/common/js/jquery-1.7.1.min.js" charset="utf-8"></script>
<script type="text/javascript" language="javascript" src="http://www.exterminal.co.kr/common/js/jquery.js"></script>

<!-- 부트스트랩 링크 -->
<link rel="stylesheet" href="/kobus/css/bootstrap.min2.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 부트스트랩 끝-->


<style>
body {margin:0;	padding:0px;font:normal 12px /14px Gulim, Arial, Helvetica, sans-serif; color:#555;	border-top:1px solid #ccc;	width: 100%;
	background:#c2c2c2;}
img{border:none;}
ul,li{	margin:0;	padding:0;}
li{	list-style:none;	float:left;	display:inline;	margin-right:10px;	}
.finfo {position:absolute; height:190px; width:600px; float:left; left:290px; top:460px; background:#ebebeb; padding:10px; overflow: auto; }
.finfo ul {float:left; height:185px; border-right:1px solid #666; width:290px; line-height:20px; margin-top:5px;}
.finfo ul li { margin-left:20px; width:250px}
</style>
<script src="http://www.exterminal.co.kr/common/js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">

$(document).ready(
		function(){
			
			MM_swapImage('1F','','http://www.exterminal.co.kr/images/floor_01_h.jpg',1)
			open_image('http://www.exterminal.co.kr/images/n_floor011.jpg','http://www.exterminal.co.kr/images/floor_01_h.jpg','1F','finfo2');
			

});
	


function MM_swapImgRestore(id) { //v3.0

  if ( document.getElementById("click_img").value != id )
	{
		 var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
	}


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

function open_image(img, img2, id, divId)
	{
		var id2 = document.getElementById("click_img").value
		


		if (id2 != '')
			{
				document.getElementById(id2).src = document.getElementById("click_img2").value
				
			}


		document.getElementById("floor_img").src =  img;

// 		if (id == "4F")
// 		{
// 			document.getElementById("floor_img2").src  = "http://www.exterminal.co.kr/images/n_floor04-new-2.jpg";
// 		}
// 		else{
// 			document.getElementById("floor_img2").src  =  img;
// 		}

		document.getElementById(id).src = img2
		document.getElementById("click_img").value =id  
		document.getElementById("click_img2").value =document.getElementById(document.getElementById("click_img").value).name
		

			for (i=1;i<=11;i++)
			{
				if(divId == ("finfo" + i) ){
					document.getElementById("finfo"+i).style.display = "block";
				}
				else
				{
					document.getElementById("finfo"+i).style.display = "none";
				}

			}

	}


</script>

</head>
	<!-- 화면 소개 -->
   <body>
     <div class="clear"></div> 
     
     <div id="sub">
            <div id="s_title">FLOOR GUIDE<br><br>
            <img src="http://www.exterminal.co.kr/images/sub_floor_title.jpg">
            </div>
            
            <ul id="contents" style="background: no-repeat url(http://www.exterminal.co.kr/images/sub_floor_img01.jpg);">
                 <li></li>           
                 
          
                <li style="padding:0px; margin-top:5px; height:770px;">
								
                <iframe src="/kobus/include/floor.jsp?floornum=" width="1000px" height="770px" scrolling="auto" frameborder="0" style=" background-color:#ffffff;" id="floor">
					
								
                </iframe>   
                </li>
            
              <div class="clear"></div>                           
            </ul>                                                   
     </div>


     <div class="clear"></div>

 

</body>
</html>