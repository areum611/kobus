<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>서울고속버스터미널 - 한층 편안하고 빠른 세상으로</title>
<link rel="stylesheet" type="text/css" href="http://www.exterminal.co.kr/common/css/main.css"  /><!-- 공통으로 사용 하는 CSS -->
<link rel="shortcut icon" href="http://www.exterminal.co.kr/images/icon.ico" />
<SCRIPT type="text/javascript" src="http://www.exterminal.co.kr/common/js/jquery-1.7.1.min.js" charset="utf-8"></SCRIPT>
<script type="text/javascript" language="javascript" src="http://www.exterminal.co.kr/common/js/jquery.js"></script>
</head>

<body>
<script language='javascript'>
	function floor_result(gubun)
		{
			if (gubun=='1')
				{
					document.getElementById('floor').src='/include/floor.asp?floornum='
				}
			if (gubun=='2')
				{
					document.getElementById('floor').src='/include/floor_sub.asp?floornum='
				}
		}
</script>
<div id="wrap">  


<!--header start-->
<link rel="stylesheet" type="text/css" href="http://www.exterminal.co.kr/include/css/header.css"  />

<div id="header"  style="border-top:10px solid #fff;">
    <div class="clear"></div> 

<script type="text/javascript" src="http://www.exterminal.co.kr/include/js/jquery.min.js"></script>
<script type="text/javascript" src="http://www.exterminal.co.kr/include/js/header.js"></script>
  </div>      
    <div class="clear"></div>  	 
          <div  style="width:100%; border-bottom:42px solid #362f2d; margin-top:-240px;">
          </div>   

</div>
<!--header end-->
 
     <div class="clear"></div> 

     <div id="sub">
            <div id="s_title">FLOOR GUIDE<br><br>
            <img src="http://www.exterminal.co.kr/images/sub_floor_title.jpg">
            </div>              
                <li style="padding:0px; margin-top:5px; height:770px;">
								
                <iframe src="../include/floor.jsp?floornum=" width="1000px" height="710px" scrolling="no" frameborder="0" style=" background-color:#c2c2c2;" id="floor">
								
                </iframe>   
                </li>
            
              <div class="clear"></div>                           
                                               
     </div>


     <div class="clear"></div>
</body>
</html>