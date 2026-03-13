using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class QUANLY_QuanLy : System.Web.UI.Page
{
    OleDbConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new OleDbConnection(
        "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
        Server.MapPath("~/Data/BanSach.mdb"));
        if (!IsPostBack)
        {
            ThongKe();
        }
    }
    void ThongKe()
    {
        conn.Open();

        OleDbCommand cmd1 = new OleDbCommand("SELECT COUNT(*) FROM Sach", conn);
        lblTongSach.Text = cmd1.ExecuteScalar().ToString();

        OleDbCommand cmd2 = new OleDbCommand("SELECT COUNT(*) FROM LinhVuc", conn);
        lblLinhVuc.Text = cmd2.ExecuteScalar().ToString();

        OleDbCommand cmd3 = new OleDbCommand("SELECT COUNT(*) FROM TheLoai", conn);
        lblTheLoai.Text = cmd3.ExecuteScalar().ToString();

        conn.Close();
    }
}