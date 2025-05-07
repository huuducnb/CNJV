<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Kiểm tra các cạnh của tam giác</h2>
    <form method="post">
        Nhập số nguyên a: <input type="text" name="a" required><br><br>
        Nhập số nguyên b: <input type="text" name="b" required><br><br>
        Nhập số nguyên c: <input type="text" name="c" required><br><br>
        <input type="submit" value="Enter">
    </form>
    
    <%
    	String A = request.getParameter("a");
    	String B = request.getParameter("b");
    	String C = request.getParameter("a");
    	
    	if (A != null && B != null & C != null) {
    		try {
    			int a = Integer.parseInt(A);
    			int b = Integer.parseInt(B);
    			int c = Integer.parseInt(C);
    			
    			if (a <= 0 || b <= 0 || c <= 0) {
    				out.println("<p style='color:red'>Cạnh phải là số dương</p>");
    			} else if(a + b > c && a + c > b && b + c > a) {
    				out.println("<p style='color:green'>Ba cạnh tạo thành 1 tam giác</p>");
    			} else {
    				out.println("<p style='color:orange'>Ba cạnh không tạo thành 1 tam giác</p>");
    			}
    			
    		} catch(Exception e) {
    			out.print("<p style='color:yellow'>Vui lòng nhập số nguyên hợp lệ!</p>");
    		}
    	}
    %>
</body>
</html>