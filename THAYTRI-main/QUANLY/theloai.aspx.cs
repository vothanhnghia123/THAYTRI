using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class QUANLY_theloai : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadDL();
        LoadLinhVuc();
    }
    public void LuuThongTin()
    {
        string strl = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="
        + Server.MapPath("~/Data/BanSach.mdb");

        OleDbConnection cn = new OleDbConnection(strl);
        cn.Open();

        string sqlAdd = "INSERT INTO TheLoai (MaTheLoai, TenTheLoai, MaLinhVuc) VALUES ('"
        + txtMTL.Text + "','" + txtTenTL.Text + "','" + ddlLinhVuc.SelectedValue + "')";

        OleDbCommand cmd = new OleDbCommand(sqlAdd, cn);
        cmd.ExecuteNonQuery();

        cn.Close();
    }
    public void LoadDL()
    {
        string strl = "Provider = Microsoft.jet.OLEDB.4.0; data source =" + Server.MapPath("~/Data/BanSach.mdb");
        OleDbConnection cn = new OleDbConnection(strl);
        cn.Open();
        string sql = "Select * From TheLoai";
        OleDbDataAdapter oda = new OleDbDataAdapter(sql, cn);
        DataTable dt = new DataTable();
        oda.Fill(dt);
        GridView_TL.DataSource = dt;
        GridView_TL.DataBind();
    }
    public void LoadLinhVuc()
    {
        string str = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="
        + Server.MapPath("~/Data/BanSach.mdb");

        OleDbConnection cn = new OleDbConnection(str);
        cn.Open();

        string sql = "SELECT * FROM LinhVuc";

        OleDbDataAdapter da = new OleDbDataAdapter(sql, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);

        ddlLinhVuc.DataSource = dt;
        ddlLinhVuc.DataTextField = "TenLinhVuc";   // hiển thị
        ddlLinhVuc.DataValueField = "MaLinhVuc";   // giá trị
        ddlLinhVuc.DataBind();

        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        LuuThongTin();
        Response.Write("<script> alert ('Lưu thông tin thành công ')</script>");
        LoadDL();
    }
}