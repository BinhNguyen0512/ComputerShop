<%@ page   pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Profile</title>
		<style>

			div.typeProduct{
			 border-radius: 5px;
			 background-color: #f2f2f2;
			 padding: 20px;
			 width: 500px;
			 margin-left:500px;
			}
			div.typeProduct input{
			  width: 100%;
			  padding: 12px 20px;
			  margin: 8px 0;
			  box-sizing: border-box;
			}
			div.typeProduct button{
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
		<div class = "typeProduct">
			<form:form action="update.htm" modelAttribute="LOAISP" method="POST">
				

				<div>
					<h1 style="margin-left: 120px">Cập nhật loại sản phẩm</h1>					
					<label>Mã Loại</label>
					<form:input path="maLoai" value= "${maLoai}" readonly="true"/>

				</div>

				
				<form:errors  path="maLoai" style = "color: red"/>
				
				<div>
					<label>Tên Loại</label>
					<form:input path="tenLoai" />
				</div>
				
			
				<form:errors  path="tenLoai" style = "color: red"/>

				
				<p style="color: red">
					${message}
				</p>
				<form:button >Sửa</form:button>
				
			</form:form>
		</div>
	</body>
</html>