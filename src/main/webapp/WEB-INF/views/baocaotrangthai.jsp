<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>Báo cáo về trạng thái đĩa</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
 background-color:#F8F8FF;

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
		.menucap1>li>.menucap2 li a:hover{
	
	color:white;
	
	}


.lo{
  width:1230px;;
 height:130px;
 margin-left:30px;
 background-color:white;	
 border-top:5px solid #E8E8E8;
 


}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}


.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}


.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 800px;
    top: 0px;
	
    width: 500px; /* Full width */
    height: 500px; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}

</style>
<script>
function dds(){

document.getElementById("id01").style.display='block';



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
	
<h2 style="margin-left:40px;">THUÊ ĐĨA</h2>
	
<div class="lo" style="border-radius:5px;border-top-color:orange;">









</div>

</div>
<div id="footer"></div>


</body>


</html>