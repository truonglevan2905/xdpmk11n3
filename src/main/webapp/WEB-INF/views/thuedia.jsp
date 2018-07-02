<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Thuê đĩa</title>
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
  width:1200px;;
 height:500px;
 margin-left:70px;
 background-color:white;	
 border-top:5px solid #E8E8E8;
 


}



/* Set a style for all buttons */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}


/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
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
.modal1 {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 600px;
    top: 0px;
	
    width: 750px; /* Full width */
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
.khung{

float:left;
border:1px solid black;
width:220px;
height:250px;
margin-top:15px;
margin-left:15px;
}
.hinh{

 width:197px;
 height:100px;
 margin-left:10px;
 margin-right:10px;
}
.pagination {
padding: 20px;
margin-bottom: 20px;
}
 
.page {
    display: inline-block;
    color: #717171;
    padding: 0px 9px;
    margin-right: 1px;
    border-radius: 3px;
    border: solid 1px #c0c0c0;
    background: #e9e9e9;
    font-size:15px;
    text-decoration: none;
}
 
.page:hover, .page.gradient:hover {
    background: #595959;
    box-shadow: inset 0px 0px 8px rgba(0,0,0, .5), 0px 1px 0px rgba(255,255,255, .8);
    text-shadow: 0px 0px 3px rgba(0,0,0, .5);
    color: #f0f0f0;
}
 
.page.active {
    border: none;
    background: #616161;
    box-shadow: inset 0px 0px 8px rgba(0,0,0, .5), 0px 1px 0px rgba(255,255,255, .8);
    color: #f0f0f0;
    text-shadow: 0px 0px 3px rgba(0,0,0, .5);
}
#btn:hover,#btn:hover{




cursor: pointer;

}

</style>
<script>
function dds1(){

document.getElementById("id01").style.display='block';



}
function dds(){

document.getElementById("id02").style.display='block';



}
function sad(){

document.getElementById('id01').style.display='none';
var ans=confirm("Bạn có muốn thanh toán không?");
var as=processconfirm(ans);
alert(as);

}
 function processconfirm(answer){
	    var result="";
		if(answer){
			
		 result="thanh cong";
		  
		   location.href="trangchu.html";
		}
		else{
		  result="Khoong thanh cong";
		}
		return result;
	   
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
<h2 style="margin-left:40px;">THUÊ BĂNG ĐĨA</h2>
<span style="margin-left:120px;font-family:Arial;font-size:20px;">NHẬP MÃ ID KHÁCH HÀNG:</span>
<input type="text" placeholder="NHẬP MÃ ID KHÁCH HÀNG" style="height:30px;margin-bottom:5px;width:300px;border-bottom:5px solid green;" />
<button type="submit" onclick="dds1()"><img src="images/check.png" style="height:30px;position:relative;top:5px;"/>KIỂM TRA</button>
	
<div class="lo" style="border-radius:5px;border-top-color:orange;">

<div style="margin-bottom:60px;float:left;">
<h2>DANH SÁCH BĂNG ĐĨA PHIM</h2>
<div class="khung">
<img src="images/4.jpg"/ class="hinh"><br/>
<span>Tên băng đĩa:</span><br/>
<span>Tiêu đề:</span><br/>
<span>Thời gian thuê:</span><br>
<span>Giá:</span><br/>
<span>Mô tả:</span><br>
<span><a href="#" onclick="dds()">Báo cáo trạng thái đĩa</a></span><br/>
<input type="submit" value="Thuê" id="btn" style="margin-left:20px;margin-top:0px;width:180px;height:30px;color:white;background-color:green;"/>
</div>
<div class="khung">


</div>
<div class="khung">


</div>
<div class="khung">


</div>
<div class="khung">


</div>
<div class="khung">


</div>
<div class="khung">


</div>
<div class="khung">


</div>
<div class="khung">


</div>
<div class="khung">


</div>
<div class="khung">


</div>

</div>

<div style="margin-top:20px;float:left;">
<div><h2>DANH SÁCH BĂNG ĐĨA TRÒ CHƠI</h2>
 

</div>
 

<div class="khung">


</div>
<div class="khung">


</div>
<div class="khung">


</div>

</div>






</div>

<br><br/><br/>
<div id="id01" class="modal1">
  
  <form class="modal-content animate" action="/action_page.php">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Tắt">&times;</span>
      <h3>THÔNG TIN KHÁCH HÀNG</h3>
    </div>

    <div class="container">
     <table border="1px" width="100%">

<tr>

<th>TÊN KHÁCH HÀNG</th>
<th>THỜI GIAN THUÊ</th>
<th>THỜI GIAN TRẢ</th>
<th>SỐ LƯỢNG TRỄ HẠN</th>
<th>PHÍ TRỄ HẠN</th>



</tr>

<tr>
<td>Hoàng Minh Thien</td>
<td>323232323</td>
<td>Nam</td>
<td>0969289643</td>
<td>dsds</td>



</tr>


</table>
      
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="sad()" class="cancelbtn">Cancel</button>
	 
    
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<div id="id02" class="modal1">
  
  <form class="modal-content animate" action="/action_page.php">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      <h3>BÁO CÁO TRANG THÁI ĐĨA </h3>
    </div>

    <div class="container">
     <table border="1px" width="100%">

<tr>
<th>
TÊN TIÊU ĐỀ</th>
<th>TÊN KHÁCH HÀNG</th>
<th>THỜI GIAN THUÊ</th>
<th>THỜI GIAN TRẢ</th>

<th>TÌNH TRẠNG</th>


</tr>

<tr>
<td>Hoàng Minh Thien</td>
<td>323232323</td>
<td>Nam</td>
<td>0969289643</td>
<td>dsds</td>



</tr>


</table>
      
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
    
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</div>



</body>


</html>