<%@ page  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>insert Product</title>
		<style>

			div.product{
			 border-radius: 5px;
			 background-color: #f2f2f2;
			 padding: 20px;
			 width: 500px;
			 margin-left:500px;
			}
			div.product input{
			  width: 100%;
			  padding: 12px 20px;
			  margin: 8px 0;
			  box-sizing: border-box;
			}
			div.product button{
		      margin-left: 100px;
			   width: 100%;
			  background-color: #4CAF50;
			  color: white;
			  padding: 14px 20px;
			  margin: 8px 0;
			  border: none;
			  border-radius: 4px;
			  cursor: pointer; 
			}
			</style>
	</head>
	<body>
	
		<div class="product"> 
			<form:form action="update.htm" modelAttribute="SANPHAM" method="POST">
				<div>
					<h1 style="margin-left: 120px">Thêm sản phẩm</h1>
					<label>Mã Sản Phẩm</label>
					<form:input path="maSP" value="${maSP}" readonly="true" />
				</div>
				<div>
					<label>Tên Sản Phẩm</label>
					<form:input path="tenSP" />
				</div>
				<div>
					<label>Số Lượng</label>
					<form:input path="soLuong" />
				</div>
				
				<div>
					<label>Thương Hiệu</label>
					<form:input path="thuongHieu" />
				</div>
				
				<div>
					<label>Mã Loại</label>
					<input name="maLoai"/> 
				</div>
				
				
				<div>
					<label>Đơn giá</label>
					  <form:input path="donGia"/> 
				</div>
				
				<div>Link ảnh:</div>
	            	<input type="file" name="hinhAnh"/><br>
				
				<form:button>Thêm</form:button>
			</form:form>
		</div>
	</body>
</html>