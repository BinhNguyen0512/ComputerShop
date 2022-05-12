<%
String view  = request.getParameter("view");
if( view.startsWith("ShopMayTinh/admin/")){
pageContext.forward("admin-layout.jsp");
}else if(view.startsWith("ShopMayTinh/user/")){
pageContext.forward("show-layout.jsp");
}else {
pageContext.forward("show-layout.jsp");
}
%>