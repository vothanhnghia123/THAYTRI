using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class QUANLY_sualinhvuc : System.Web.UI.Page
{
    OleDbConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new OleDbConnection(
        "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
        Server.MapPath("~/Data/BanSach.mdb"));

        if (!IsPostBack)
        {
            LoadData();
        }
    }
    void LoadData()
    {
        string id = Request.QueryString["id"];

        conn.Open();

        string sql = "SELECT * FROM LinhVuc WHERE MaLinhVuc=@id";

        OleDbCommand cmd = new OleDbCommand(sql, conn);
        cmd.Parameters.AddWithValue("@id", id);

        OleDbDataReader rd = cmd.ExecuteReader();

        if (rd.Read())
        {
            txtMLV.Text = rd["MaLinhVuc"].ToString();
            txtTenLV.Text = rd["TenLinhVuc"].ToString();
        }

        conn.Close();
    }

    protected void btnSua_Click(object sender, EventArgs e)
    {
        conn.Open();

        string sql = "UPDATE LinhVuc SET TenLinhVuc=@ten WHERE MaLinhVuc=@id";

        OleDbCommand cmd = new OleDbCommand(sql, conn);

        cmd.Parameters.AddWithValue("@ten", txtTenLV.Text);
        cmd.Parameters.AddWithValue("@id", txtMLV.Text);

        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Redirect("themlinhvuc.aspx");
    }
}