using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Dangnhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DN_1_Click(object sender, EventArgs e)
    {

    }
    protected void btnDN_Click(object sender, EventArgs e)
    {
        string strconn = "Provider = Microsoft.Jet.OLEDB.4.0;";
        strconn += "Data Source=" + Server.MapPath("~/Data/BanSach.mdb");
        OleDbConnection dbconn = new OleDbConnection(strconn);
        string strquery = "Select * from Taikhoan";
        OleDbDataAdapter adap = new OleDbDataAdapter(strquery, dbconn);
        DataTable dt = new DataTable();
        adap.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            if (txtUse.Text == dr["Use"].ToString() && txtPass.Text == dr["Pass"].ToString())
            {
                // 1. Lưu thông tin vào Session để dùng cho các trang sau
                Session["Username"] = dr["Use"].ToString();
                Session["Role"] = dr["Role"].ToString().Trim().ToLower(); // Trim để xóa khoảng trắng thừa

                // 2. Lấy giá trị quyền ra để kiểm tra
                string quyen = Session["Role"].ToString();

                if (quyen == "admin")
                {
                    // Nếu là admin -> Chuyển vào trang quản lý
                    Response.Redirect("~/QUANLY/QuanLy.aspx", false);
                }
                else
                {
                    // Nếu là người dùng thường -> Chuyển đến trang dành cho user (ví dụ: TrangChu.aspx)
                    Response.Redirect("~/TrangChu.aspx", false);
                }

                Context.ApplicationInstance.CompleteRequest();
                return;
            }

        }
    }
}