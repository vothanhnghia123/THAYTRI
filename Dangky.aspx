<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
        /* Register.css */
body {
    background: #f4f9f4; /* Nền hơi xanh lá nhạt */
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
    border-top: 5px solid #28a745; /* Thanh điểm xuyết phía trên */
}

h2 {
    text-align: center;
    color: #28a745;
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

.btn-reg {
    width: 100%;
    padding: 12px;
    background: #28a745; /* Màu xanh lá thân thiện */
    border: none;
    color: #fff;
    font-weight: bold;
    border-radius: 4px;
    cursor: pointer;
}

.btn-reg:hover {
    background: #218838;
}

.switch-text {
    margin-top: 15px;
    text-align: center;
    font-size: 13px;
}
    </style>
<body>
    <form id="formRegister" runat="server">
    <div class="auth-container">
        <div class="form-box">
            <h2>Đăng Ký</h2>
            <div class="input-group">
                <label>Tên đăng nhập</label>
                <asp:TextBox ID="txtUse" runat="server" placeholder="Tên tài khoản mới"></asp:TextBox>
            </div>
            <div class="input-group">
                <label>Mật khẩu</label>
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" placeholder="Mật khẩu"></asp:TextBox>
            </div>

            <asp:Button ID="btnDK" runat="server" OnClick="btnDK_Click" Text="Đăng Ký" CssClass="btn btn-reg" />
            <div style="margin-top: 10px; text-align: center;">
                <asp:Label ID="tbDK" runat="server" Text=""></asp:Label>
            </div>
            <p class="switch-text">
                Đã có tài khoản? <a href="DangNhap.aspx">Quay lại đăng nhập</a>
            </p>
        </div>
    </div>
</form>
</body>
</html>
