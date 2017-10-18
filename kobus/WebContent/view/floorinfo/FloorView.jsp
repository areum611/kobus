<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>서울고속버스터미널 - 한층 편안하고 빠른 세상으로</title>
<link rel="stylesheet" type="text/css" href="/kobus/css/floormain.css"  /><!-- 공통으로 사용 하는 CSS -->
<link rel="shortcut icon" href="http://www.exterminal.co.kr/images/icon.ico" />

<SCRIPT type="text/javascript" src="http://www.exterminal.co.kr/common/js/jquery-1.7.1.min.js" charset="utf-8"></SCRIPT>
<script type="text/javascript" language="javascript" src="http://www.exterminal.co.kr/common/js/jquery.js"></script>
<!-- 메뉴바 가져오기 -->
<jsp:include page="/view/MainMenu/header.jsp" flush="true"></jsp:include>
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
            
              <div class="clear"></div>                           
                                               
     </div>
<iframe src="../include/floor.jsp?floornum=" width="1000px" height="500px" scrolling="no" frameborder="0" style=" background-color:#c2c2c2;" id="floor" margin-bottom=100px>
								
                </iframe>   

     <!-- Footer -->
	<footer>
	<div class="footerHeader"></div>
	<div class="container" >
		<div class="col-md-4">
			<h3>또이또이 5조</h3>
			<p>허접들의 사이트에 오신것을 환영합니다</p>
		</div>

		<div class="col-md-4">
			<h3>Our Location</h3>
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3166.234914628765!2d126.87891451512434!3d37.478782479814384!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b61e3044a68bd%3A0x8f21e056c9253c97!2z64yA7ZWc66-86rWtIOyEnOyauO2KueuzhOyLnCDquIjsspzqtawg6rCA7IKw65SU7KeA7YS4MeuhnCAxNTE!5e0!3m2!1sko!2sjo!4v1507779193815"
				width="400" height="300" frameborder="0" style="border: 0"
				allowfullscreen></iframe>
		</div>
		<div class="col-md-4">
			<h3>Tell</h3>
			<ul>
				<li>이아름 : 010-2378-5199</li>
				<li>김민우 : 010-3060-9504</li>
				<li>류정욱 : 010-2741-4067</li>
			</ul>
			<p>집에가고싶다</p>
			<ul class="sm">
				<li><a href="#"><img
						src="https://www.facebook.com/images/fb_icon_325x325.png"
						class="img-responsive"></a></li>
				<li><a href="#"><img
						src="https://lh3.googleusercontent.com/00APBMVQh3yraN704gKCeM63KzeQ-zHUi5wK6E9TjRQ26McyqYBt-zy__4i8GXDAfeys=w300"
						class="img-responsive"></a></li>
				<li><a href="#"><img
						src="http://playbookathlete.com/wp-content/uploads/2016/10/twitter-logo-4.png"
						class="img-responsive"></a></li>
			</ul>
		</div>
	</div>
	</footer>
</body>
</html>