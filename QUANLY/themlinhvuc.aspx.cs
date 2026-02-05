using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class QUANLY_themlinhvuc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadDL();
    }
    public void LuuThongTin()
    {
        string strl = "Provider = Microsoft.Jet.OLEDB.4.0; Data Source =" + Server.MapPath("~/Data/BanSach.mdb");
        OleDbConnection cn = new OleDbConnection(strl);
        cn.Open();
        //string sqlAdd = "Insert Into LinhVuc Values('" + txtMLV.Text + " ','" + txtTenLV.Text + "')";
        string sqlAdd = "INSERT INTO LinhVuc (MaLinhVuc, TenLinhVuc) VALUES ('" + txtMLV.Text + "','" + txtTenLV.Text + "')";
        OleDbCommand cmd = new OleDbCommand(sqlAdd, cn);
        cmd.ExecuteNonQuery(); // Thuc thi
        cn.Close();
    }
    public void LoadDL()
    {
        string strl = "Provider = Microsoft.jet.OLEDB.4.0; data source =" + Server.MapPath("~/Data/BanSach.mdb");
        OleDbConnection cn = new OleDbConnection(strl);
        cn.Open();
        string sql = "Select * From LinhVuc";
        OleDbDataAdapter oda = new OleDbDataAdapter(sql, cn);
        DataTable dt = new DataTable();
        oda.Fill(dt);
        GridView_LV.DataSource = dt;
        GridView_LV.DataBind();
    }
    protected void btTHEM_Click(object sender, EventArgs e)
    {
        LuuThongTin();
        Response.Write("<script> alert ('Lưu thông tin thành công ')</script>");
        LoadDL();
    }
}