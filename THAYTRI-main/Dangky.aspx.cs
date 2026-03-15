using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Dangky : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDK_Click(object sender, EventArgs e)
    {
    
    // 1. Kiểm tra các trường nhập liệu (Sửa ID cho khớp với ASPX)
    if (string.IsNullOrEmpty(txtUse.Text) || string.IsNullOrEmpty(txtPass.Text))
    {
        tbDK.Text = "<b><font color=red>Vui lòng nhập đầy đủ thông tin!</font></b>";
        return;
    }

    try
    {
        // 2. Thiết lập kết nối
        string str = "Provider=Microsoft.Jet.OLEDB.4.0;";
        str += "Data Source=" + Server.MapPath("~/Data/BanSach.mdb");

        using (OleDbConnection cn = new OleDbConnection(str))
        {
            cn.Open();

            // 3. Kiểm tra tên đăng nhập đã tồn tại chưa
            // Lưu ý bọc [Use] trong ngoặc vuông vì 'Use' là từ khóa của Access
            string sqlCheck = "Select * From TaiKhoan Where [Use] = ?";
            OleDbCommand cmdCheck = new OleDbCommand(sqlCheck, cn);
            cmdCheck.Parameters.AddWithValue("?", txtUse.Text);

            OleDbDataAdapter daCheck = new OleDbDataAdapter(cmdCheck);
            DataTable dtCheck = new DataTable();
            daCheck.Fill(dtCheck);

            if (dtCheck.Rows.Count > 0)
            {
                tbDK.Text = "<b><font color=red>Tên đăng nhập đã tồn tại!</font></b>";
                return;
            }

            // 4. Thêm tài khoản mới (Gán Role mặc định là 'user')
            string sqlInsert = "Insert Into TaiKhoan([Use], [Pass], [Role]) Values(?, ?, ?)";
            OleDbCommand cmd = new OleDbCommand(sqlInsert, cn);
            
            cmd.Parameters.AddWithValue("?", txtUse.Text);
            cmd.Parameters.AddWithValue("?", txtPass.Text);
            cmd.Parameters.AddWithValue("?", "user"); // Mặc định là user

            int result = cmd.ExecuteNonQuery();

            if (result > 0)
            {
                tbDK.Text = "<b><font color=green>Đăng ký thành công!</font></b>";
                // Có thể mở dòng dưới để tự chuyển trang khi thành công
                // Response.Redirect("DangNhap.aspx");
            }
            else
            {
                tbDK.Text = "<b><font color=red>Đăng ký thất bại!</font></b>";
            }
        }
    }
    catch (Exception ex)
    {
        tbDK.Text = "<b><font color=red>Lỗi hệ thống: " + ex.Message + "</font></b>";
    }
    }
    
}