<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dangnhap.aspx.cs" Inherits="Dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
        /* Login.css */
body {
    background: #eef2f7;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    font-family: Arial, sans-serif;
}

.auth-container {
    background: #fff;
    width: 380px;
    padding: 40px;
    border-radius: 8px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

h2 {
    text-align: center;
    color: #333;
    margin-bottom: 25px;
}

.input-group {
    margin-bottom: 15px;
}

.input-group label {
    display: block;
    margin-bottom: 5px;
    font-size: 14px;
    font-weight: bold;
}

.input-group input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

.btn {
    width: 100%;
    padding: 12px;
    background: #007bff; /* Màu xanh dương chuyên nghiệp */
    border: none;
    color: #fff;
    font-weight: bold;
    border-radius: 4px;
    cursor: pointer;
}

.btn:hover {
    background: #0056b3;
}

.switch-text {
    margin-top: 15px;
    text-align: center;
    font-size: 13px;
}
    </style>
<body>
    <form id="formLogin" runat="server">
    <div class="auth-container">
        <div class="form-box">
            <h2>Đăng Nhập</h2>
            <div class="input-group">
                <label>Tên đăng nhập</label>
                <asp:TextBox ID="txtUse" runat="server" placeholder="Nhập tên tài khoản"></asp:TextBox>
            </div>
            <div class="input-group">
                <label>Mật khẩu</label>
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" placeholder="Nhập mật khẩu"></asp:TextBox>
            </div>
            
            <asp:Button ID="btnDN" runat="server" OnClick="btnDN_Click" Text="Đăng Nhập" CssClass="btn" />
            
            <p class="switch-text">
                Chưa có tài khoản? <a href="Dangky.aspx">Đăng ký ngay</a>
            </p>
        </div>
    </div>
</form>
</body>
</html>
