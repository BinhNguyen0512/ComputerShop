<%@ page   pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Profile</title>
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
			
			
			div.profile select{
				width: 100%;
				padding: 10px 15px;
				margin: 2px 0;
				display: inline-block;
				border: 1px solid #ccc;
				border-radius: 4px;
				box-sizing: border-box;
			}
			</style>
	</head>
	<body>
		<div class = "profile">
			<form:form action="profileNV.htm" modelAttribute="NHANVIEN" method="POST">
				
				
				
				<div>
					<h1 style="margin-left: 120px">Đăng Ký Nhân Viên</h1>
					<label>Email</label>
					 <input name="email" />
				</div>
				
				<p style="color: red">
					${message1}
				</p>
				
				<p style="color: red">
					${message4}
				</p>

				<div>
					<label>Password</label>
					 <input type="password" name="password1" />
				</div>
				
				<p style="color: red">
					${message2}
				</p>
					
				<div>
					<label>Confirm Password</label>
					 <input type="password" name="password2" />
				</div>
				
				<p style="color: red">
					${message3}
				</p>


				<div>			
					<label>Họ và Tên</label>
					<form:input path="tenNV" />
				</div>


				
				<form:errors  path="tenNV" style = "color: red"/>
				
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
				
				<form:select path="gioiTinh">
					<option value = "Nam">Nam</option>
					<option value = "Nữ">Nữ</option>
				</form:select>
				
				<p style="color: red">
					${message}
				</p>
				
				<form:button >Đăng Ký</form:button>
				
			</form:form>
		</div>
	</body>
</html>