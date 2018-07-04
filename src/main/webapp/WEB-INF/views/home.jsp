<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<table>
	<tr>
		<td>Mã tiêu đề</td>
		<td>Tên tiêu đề</td>
		<td>Loại</td>
		<td>Mô tả</td>
		<td>Thời gian thuê</td>
		<td>Giá</td>
	</tr>
	<c:forEach var="td" items="${lst }">
		<tr>
			<td><c:out value="${td.maTieuDe }"></c:out></td>
			<td><c:out value="${td.tenTieuDe }"></c:out></td>
			<td><c:out value="${td.loaiDia }"></c:out></td>
			<td><c:out value="${td.moTa }"></c:out></td>
			<td><c:out value="${td.thoiGianThue }"></c:out></td>
			<td><c:out value="${td.giaThue }"></c:out></td>
		</tr>
	</c:forEach>
</table>

<a href="form">Add title</a>
</body>
</html>
