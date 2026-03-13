using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class QUANLY_xoalinhvuc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"];

        string str = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="
        + Server.MapPath("~/Data/BanSach.mdb");

        OleDbConnection conn = new OleDbConnection(str);
        conn.Open();

        string sql = "DELETE FROM LinhVuc WHERE MaLinhVuc=@id";

        OleDbCommand cmd = new OleDbCommand(sql, conn);
        cmd.Parameters.AddWithValue("@id", id);

        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Redirect("themlinhvuc.aspx");
    }

}