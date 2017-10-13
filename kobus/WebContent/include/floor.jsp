<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반연습</title>
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

		if (id == "4F")
		{
			document.getElementById("floor_img2").src  = "http://www.exterminal.co.kr/images/n_floor04-new-2.jpg";
		}
		else{
			document.getElementById("floor_img2").src  =  img;
		}

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
<body>
      <ul style="width:1000px; position:relative; text-align:left; margin:0 auto; ">

            <input type="hidden" id="click_img" />
            <input type="hidden" id="click_img2" />
            <li style="text-align: left; width:208px; border-bottom: #464646 solid 2px;">

                  <a href="javascript:open_image('http://www.exterminal.co.kr/images/floor10.jpg','http://www.exterminal.co.kr/images/floor_10_h.jpg','10F','finfo11');"  id="../images/floor_10.jpg"  title="FLOOR 10" onMouseOut="MM_swapImgRestore('10F')" onMouseOver="MM_swapImage('10F','','http://www.exterminal.co.kr/images/floor_10_h.jpg',1)"><img src="http://www.exterminal.co.kr/images/floor_10.jpg"  id="10F"  name="../images/floor_10.jpg">
                   </a>
                             
                  
                  <a href="javascript:open_image('http://www.exterminal.co.kr/images/floor09.jpg','http://www.exterminal.co.kr/images/floor_09_h.jpg','9F','finfo10');" id="../images/floor09.jpg" 
                  onMouseOut="MM_swapImgRestore('9F')" onMouseOver="MM_swapImage('9F','','http://www.exterminal.co.kr/images/floor_09_h.jpg',1)"><img src="http://www.exterminal.co.kr/images/floor_09.jpg"  id="9F" name="../images/floor_09.jpg">
                   </a>
                           
                  
                  <a href="javascript:open_image('http://www.exterminal.co.kr/images/floor08.jpg','http://www.exterminal.co.kr/images/floor_08_h.jpg','8F','finfo9');" id="../images/floor_08.jpg" title="FLOOR 8" onMouseOut="MM_swapImgRestore('8F')" onMouseOver="MM_swapImage('8F','','http://www.exterminal.co.kr/images/floor_08_h.jpg',1)"><img src="http://www.exterminal.co.kr/images/floor_08.jpg"  id="8F" name="../images/floor_08.jpg">                                    
                  </a>
                 
                  <a href="javascript:open_image('http://www.exterminal.co.kr/images/floor07.jpg','http://www.exterminal.co.kr/images/floor_07_h.jpg','7F','finfo8');" id="../images/floor_07.jpg"  title="FLOOR 7" onMouseOut="MM_swapImgRestore('7F')" onMouseOver="MM_swapImage('7F','','http://www.exterminal.co.kr/images/floor_07_h.jpg',1)"><img src="http://www.exterminal.co.kr/images/floor_07.jpg"  id="7F" name="../images/floor_07.jpg">  
                  </a>
                        
                  
                  <a href="javascript:open_image('http://www.exterminal.co.kr/images/floor06.jpg','http://www.exterminal.co.kr/images/floor_06_h.jpg','6F','finfo7');" id="../images/floor_06.jpg" title="FLOOR 6" onMouseOut="MM_swapImgRestore('6F')" onMouseOver="MM_swapImage('6F','','http://www.exterminal.co.kr/images/floor_06_h.jpg',1)"><img src="http://www.exterminal.co.kr/images/floor_06.jpg"  id="6F" name="../images/floor_06.jpg"></a>   

                
                  <span href="javascript:open_image('http://www.exterminal.co.kr/images/floor05.jpg','http://www.exterminal.co.kr/images/floor_05_h.jpg','5F','finfo6');"  id="../images/floor_05.jpg" title="FLOOR 5" onMouseOut="MM_swapImgRestore('5F')" onMouseOver="MM_swapImage('5F','','http://www.exterminal.co.kr/images/floor_05_h.jpg',1)"><img src="http://www.exterminal.co.kr/images/floor_05.jpg"  id="5F" name="../images/floor_05.jpg"></span>   
                  
          
                
                  <a href="javascript:open_image('http://www.exterminal.co.kr/images/n_floor04-new-1.jpg','http://www.exterminal.co.kr/images/n_floor_04_h.jpg','4F','finfo5');"    id="../images/n_floor_04.jpg"  title="FLOOR 4" onMouseOut="MM_swapImgRestore('4F')" onMouseOver="MM_swapImage('4F','','http://www.exterminal.co.kr/images/n_floor_04_h.jpg',1)"><img src="http://www.exterminal.co.kr/images/n_floor_04.jpg"  id="4F" name="../images/n_floor_04.jpg"></a>
                  
                  <a href="javascript:open_image('http://www.exterminal.co.kr/images/floor03.jpg','http://www.exterminal.co.kr/images/floor_03_h.jpg','3F','finfo4');" id="../images/floor_03.jpg" title="FLOOR 3" onMouseOut="MM_swapImgRestore('3F')" onMouseOver="MM_swapImage('3F','','http://www.exterminal.co.kr/images/floor_03_h.jpg',1)"><img src="http://www.exterminal.co.kr/images/floor_03.jpg"  id="3F"name="../images/floor_03.jpg" ></a>
                      
                  <a href="javascript:open_image('http://www.exterminal.co.kr/images/n_floor02.jpg','http://www.exterminal.co.kr/images/n_floor_02_h.jpg','2F','finfo3');"  id="../images/n_floor_02.jpg" title="FLOOR 2" onMouseOut="MM_swapImgRestore('2F')" onMouseOver="MM_swapImage('2F','','http://www.exterminal.co.kr/images/n_floor_02_h.jpg',1)"><img src="http://www.exterminal.co.kr/images/n_floor_02.jpg"  id="2F" name="../images/n_floor_02.jpg"></a>   
                                      
                  <a href="javascript:open_image('http://www.exterminal.co.kr/images/n_floor011.jpg','http://www.exterminal.co.kr/images/floor_01_h.jpg','1F','finfo2');"   id="../images/floor_01.jpg" onMouseOut="MM_swapImgRestore('1F')" onMouseOver="MM_swapImage('1F','','http://www.exterminal.co.kr/images/floor_01_h.jpg',1)"><img src="http://www.exterminal.co.kr/images/floor_01.jpg"  id="1F" name="../images/floor_01.jpg"></a>   
                 
                 

                  <a href="javascript:open_image('http://www.exterminal.co.kr/images/n_floorb01.jpg','http://www.exterminal.co.kr/images/floor_b1_h.jpg','B1','finfo1');"  id="../images/floor_b1.jpg" onMouseOut="MM_swapImgRestore('B1')" onMouseOver="MM_swapImage('B1','','http://www.exterminal.co.kr/images/floor_b1_h.jpg',1)"><img src="http://www.exterminal.co.kr/images/floor_b1.jpg"  id="B1" name="../images/floor_b1.jpg"></a>
             

            </li>
            
            <li id="image_open" style="width:695px; float:right; text-align:right; margin:0; padding:0; top:40px; position:absolute; ">
            <ul class="slider">
              <li>
                <img src="http://www.exterminal.co.kr/images/floor09.jpg" usemap="#floor_imgMap" id="floor_img" border="0">
              </li>
            </ul> 
            
                <!-- slide_img �대옒�ㅻ줈 �щ씪�대뱶 �쒖뼱 -->
             
				<div id="floor_imgMap">

				</div>
            </li>

            <script>
                /**
                 * --------------------------------
                 * 痢듬퀎 �덈궡 �щ씪�대뱶
                 * --------------------------------
                 */
                
               (function($, parent){
                  function SlideShowImg(window){
                    this.$window  = null;
                    this.$img     = null;
                    this.$imgLeng = null;
                    this.id       = -1;
                    this.index    = -1;
                    this.init(window);
                    this.initEvent();
                  };

                  SlideShowImg.prototype.init = function(window) {
                    this.$window  = $(window);
                    console.log(this.$window);
                    this.$img     = $('.slide_img');
                    this.$imgLeng = this.$img.length;
                    this.$img.css({
                      'position': 'absolute',
                      'top' : 0,
                      'left' : 69,
                      'opacity' : 0,
                    });

                    this.$img.eq(0).css({
                      'opacity' : 1
                    });

                  };

                  SlideShowImg.prototype.initEvent = function() {
                    var that = this;
                    this.$window.ready(function(){
                      that.syncIndex();
                    });
                  };

                  SlideShowImg.prototype.syncIndex = function() {
                    var that = this;
                    if (this.id == -1) {
                      setInterval(function(){
                        that.index++;
                        if (that.index >= that.$imgLeng) {
                          that.index = 0;
                        };
                        that.fadeImg(that.index);
                      }, 3000);
                    };
                  };

                  SlideShowImg.prototype.fadeImg = function(i) {
										if (document.getElementById("click_img").value == "4F")
										{
											this.$img.stop().animate({
												'opacity': 0
											}, 400);
											this.$img.eq(i).stop().animate({
												'opacity' : 1
											}, 400);
										}
										else{
											this.$img.eq().stop();
										}
                  };

                  $.fn.slideShowImg = function(){
                    this.each(function(index){
                      var slideShowImg = new SlideShowImg(parent);
                    });
                    return this;
                  }

                  $('body').slideShowImg();


                })(jQuery, parent);

            </script>

      
      </ul>
</body>
</html>