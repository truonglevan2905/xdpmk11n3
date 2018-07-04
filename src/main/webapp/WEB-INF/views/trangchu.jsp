<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Trang chủ</title>
<style>
#header{
 width:100%;
 height:130px;
 border:2px solid #E8E8E8;

}
#center{

width:100%;
 height:700px;
 border:2px solid #E8E8E8;

}
#footer{

width:100%;
 height:150px;
 border:2px solid #E8E8E8;
}
   .menucap1{
       background-color:#F00;
	   margin-left:230px;
    }
 
    .menucap1>li{
        float: left;
        margin-right: 1px;
		list-style-type:none;
		
	
    }
     
    .menucap1>li>a{
        color:# CDC1C5;
		font-family:Arial;
		font-style:oblique;
		text-decoration:none;
    }
 
    .menucap1 li{
        position: relative;
	
		margin-top:-16px;
    }
 
    .menucap1 li a{
        padding: 10px;
        line-height: 20px;
        display: inline-block;
    }
	.menucap1 li:hover{
	
	background-color:#FF8C00;
	}
 
    .menucap1 .menucap2{
        display: none;
        position: absolute;
        top: 0;
        left: 100%;
        width: 270px;
      
        padding: 5px 20px;
		list-style-type:none;
    }
     
    .menucap1 li:hover>.menucap2{
        display: block;
    }
 
    .menucap1>li>.menucap2{
        top: 140px;
        left: -70px;;
    }
	
    .menucap1>li>.menucap2 li{
       border:2px solid #E8E8E8;
	   background-color:#CFCFCF;	
	   height:50px;
    }
	.menucap1>li>.menucap2 li a {
	font-size:15px;
	text-decoration:none;
	color:#000000;
	}
	.menucap1>li>.menucap2 li:hover{
	background-color:orange;
	
	}



</style>
<script>
function dds(){





}

</script>
</head>
<body>
<div id="header">
<ul class="menucap1">
<li><a href="thuetra"  style="height:110px;width:100px;" ><img src="resources\images\giaodich.png" style="width:80px;height:70px;"/><b>THUÊ&nbsp;VÀ&nbsp;TRẢ</b></a>

<ul class="menucap2">
<li><a href="thuedia" >THUÊ ĐĨA</a></li>
<li><a href="tradia" >TRẢ ĐĨA</a></li>
<li><a href="tinhtrangdia" >TÌNH TRẠNG ĐĨA</a></li>

</ul>

<li>
<li><a href="khachhang" style="height:110px;width:100px;"><img src="resources\images\khachhang.png"/> <b>KHÁCH&nbsp;HÀNG</b></a>
<ul class="menucap2">
<li><a href="themkh" >THÊM THÔNG TIN KHÁCH HÀNG</a></li>
<li><a href="suakh" >SỬA THÔNG TIN KHÁCH HÀNG</a></li>
<li><a href="xoakh" >XÓA THÔNG TIN KHÁCH HÀNG </a></li>


</ul>

<li>
<li><a href="tuadia" style="height:110px;width:100px;"><img src="resources\images\tuadia.png" style="width:80px;height:70px;margin-top:5px;"/><b>TỰA ĐĨA</b></a></li>
<li> <a href="bangdia" style="height:110px;width:100px;"><img src="resources\images\bangdia.png" style="width:80px;height:70px;margin-top:5px;"/><b>ĐĨA TỒN</b></a>
<ul class="menucap2">
<li><a href="themdia" >THÊM ĐĨA </a></li>
<li><a href="xoadia" >XÓA ĐĨA</a></li>

</ul>

<li>

<li><a href="tratre" style="height:110px;width:100px;"><img src="resources\images\tratre.png"/><b>TRẢ TRỄ</b></a></li>
<li><a href="datdia" style="height:110px;width:100px;"><img src="resources\images\datdia.png"/><b>ĐẶT ĐĨA</b></a></li>
<li><a href="#" style="height:110px;width:100px;"><img src="resources\images\thongke.png"/><b>BÁO CÁO</b></a>
<ul class="menucap2">
<li><a href="baocaokhach" >BÁO CÁO KHÁCH HÀNG</a></li>
<li><a href="baocaotua" >BÁO CÁO TỰA ĐĨA</a></li>
<li><a href="baocaokhachquahan" >BC KHÁCH HÀNG QUÁ HẠN</a></li>
<li><a href="baocaokhachphitre" >BC KHÁCH HÀNG CÓ PHÍ TRỄ HẠN</a></li>

</ul>
</li>
<li><a href="#" style="height:110px;width:100px;"><img src="resources\images\capnhat.png" style="width:80px;height:70px;"/><b>CẬP&nbsp;NHẬT&nbsp;ĐĨA</b></a>

<ul class="menucap2">
<li><a href="capnhatthoigian" >CẬP NHẬT THỜI GIAN THUÊ</a></li>
<li><a href="capnhatgia" >CẬP NHẬT GIÁ THUÊ</a></li>

</ul>
</li>


</ul>


</div>
<div id="center">
<img src="resources/images/1.jpg" style="height:250px;width:1100px;margin-left:90px;margin-top:20px;" id="ha"/>
<script type="text/javascript">
  window.onload = function(){
    setTimeout("switch_Image()", 3000);
  }
  var current = 0;
  var num_image =5;
  function switch_Image(){
  var a=new Array();
  a.push("resources/images/2.jpg");
   a.push("resources/images/3.jpg");
    a.push("resources/images/4.jpg");
	 a.push("resources/images/5.jpg");
	  a.push("resources/images/6.jpg");
	    a.push("resources/images/1.jpg");

 
  
      current++;
      document.getElementById("ha").src =a[current];
     if(current < num_image){
       setTimeout("switch_Image()", 5000);
     }else if(current == num_image){
       current = 0;
       setTimeout("switch_Image()", 5000);
     }
 }
</script>

</div>
<div id="footer"></div>


</body>


</html>
