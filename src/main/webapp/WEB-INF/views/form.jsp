<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="submit" method="POST" >
		<table>
			<tr>
				<td>Mã tiêu đề</td>
				<td>
					<input name="maTieuDe">
				</td>
			</tr>
			<tr>
				<td>Tên tiêu đề</td>
				<td>
					<input name="tenTieuDe">
				</td>
			</tr>
			<tr>
				<td>Loại đĩa</td>
				<td>
					<input name="loaiDia">
				</td>
			</tr>
			<tr>
				<td>Mô tả</td>
				<td>
					<input name="moTa">
				</td>
			</tr>
			<tr>
				<td>Thời gian thuê</td>
				<td>
					<input name="thoiGianThue">
				</td>
			</tr>
			<tr>
				<td>Giá thuê</td>
				<td>
					<input name="giaThue">
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<button type="submit">Submit</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>