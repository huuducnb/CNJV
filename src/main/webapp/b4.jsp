<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bai4</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
        <h2 class="mb-4">Form Đăng Ký</h2>
        <form>
            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control" id="email">
            </div>
            <div class="mb-3">
                <label for="pass" class="form-label">Mật khẩu:</label>
                <input type="password" class="form-control" id="pass">
            </div>
            <div class="mb-3">
                <label for="address" class="form-label">Địa chỉ:</label>
                <input type="text" class="form-control" id="address">
            </div>
            <div class="mb-3">
                <label for="address2" class="form-label">Địa chỉ 2:</label>
                <input type="text" class="form-control" id="address2">
            </div>
            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="city" class="form-label">Thành phố:</label>
                    <input type="text" class="form-control" id="city">
                </div>
                <div class="col-md-4">
                    <label for="state" class="form-label">Tỉnh/Bang:</label>
                    <input type="text" class="form-control" id="state">
                </div>
                <div class="col-md-2">
                    <label for="zip" class="form-label">Zip:</label>
                    <input type="text" class="form-control" id="zip">
                </div>
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="checkme">
                <label class="form-check-label" for="checkme">Check me out</label>
            </div>
            <button type="submit" class="btn btn-primary">Sign in</button>
        </form>
    </div>
</body>
</html>
</body>
</html>