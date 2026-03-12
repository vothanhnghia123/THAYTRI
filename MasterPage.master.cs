using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
            if (Session["Username"] != null)
        {
            phAnonymous.Visible = false; // Ẩn cái Đăng nhập đi
            phLoggedIn.Visible = true;   // Hiện cái Chào admin lên
            lblUsername.Text = Session["Username"].ToString(); // Gán tên vào Label
        }
        else
        {
            phAnonymous.Visible = true;
            phLoggedIn.Visible = false;
        }
    }

    // Code cho nút Đăng xuất
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Remove("Username"); // Xóa tên
        Session.Remove("Role");     // Xóa quyền
        Response.Redirect("~/TrangChu.aspx"); // Đá về trang chủ
    }

    protected void btTIMKIEM_Click(object sender, EventArgs e)
    {
        string tukhoa = txtTIMKIEM.Text;
        Response.Redirect("timkiem.aspx?q=" + tukhoa);
    }
}
