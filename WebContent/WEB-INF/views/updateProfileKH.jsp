<%@ page  pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Update Profile KH</title>
		<style>

			div.profile{
			 border-radius: 5px;
			 background-color: #f2f2f2;
			 padding: 20px;
			 width: 500px;
			 margin-left:500px;
			}
			div.profile input{
			  width: 100%;
			  padding: 12px 20px;
			  margin: 8px 0;
			  box-sizing: border-box;
			}
			div.profile button{
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
		<div class = "profile">
				<form:form action="updateProfileKH.htm" modelAttribute="KHACHHANG" method="POST">
					
	
					<div>
						<h1 style="margin-left: 120px">Cập nhật thông tin khách hàng</h1>					
									
						<label>Họ và Tên</label>
						<form:input path="tenKH" />
	
					</div>
	
					
					
					<form:errors  path="tenKH" style = "color: red"/>
					
					<div>
						<label>Số Điện Thoại</label>
						<form:input path="sdt" />
					</div>
					
				
					<form:errors  path="sdt" style = "color: red"/>
					
					<div>
						<label>Địa chỉ</label>
						<form:input path="diaChi" />
					</div>
					
				
					<form:errors  path="diaChi" style = "color: red"/>
					
					<p style="color: red">
						${message}
					</p>
					<form:button >Cập Nhập</form:button>
					
				</form:form>
		</div>
	</body>
</html>