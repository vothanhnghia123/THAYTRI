using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class sanpham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string matl = Request.QueryString["matl"];
            string malv = Request.QueryString["malv"];

            if (matl != null)
            {
                LoadSachTheoTheLoai(matl);
            }
            else if (malv != null)
            {
                LoadSachTheoLinhVuc(malv);
            }
        }
    }
    void LoadSachTheoTheLoai(string matl)
    {
        OleDbConnection cn = new OleDbConnection(
        "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
        Server.MapPath("~/Data/BanSach.mdb"));

        cn.Open();

        string sql = "SELECT * FROM Sach WHERE MaTheLoai=@matl";

        OleDbCommand cmd = new OleDbCommand(sql, cn);
        cmd.Parameters.AddWithValue("@matl", matl);

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        DataList1.DataSource = dt;
        DataList1.DataBind();

        cn.Close();
    }
    void LoadSachTheoLinhVuc(string malv)
    {
        OleDbConnection cn = new OleDbConnection(
        "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
        Server.MapPath("~/Data/BanSach.mdb"));

        cn.Open();

        string sql = "SELECT Sach.* FROM Sach INNER JOIN TheLoai ON Sach.MaTheLoai = TheLoai.MaTheLoai WHERE TheLoai.MaLinhVuc=@malv";

        OleDbCommand cmd = new OleDbCommand(sql, cn);
        cmd.Parameters.AddWithValue("@malv", malv);

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        DataList1.DataSource = dt;
        DataList1.DataBind();

        cn.Close();
    }
}