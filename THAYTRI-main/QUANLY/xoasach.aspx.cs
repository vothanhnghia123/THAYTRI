using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data.OleDb;

public partial class QUANLY_xoasach : System.Web.UI.Page
{
    OleDbConnection conn;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new OleDbConnection(
        "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
        Server.MapPath("~/Data/BanSach.mdb"));

        if (Request.QueryString["id"] != null)
        {
            string id = Request.QueryString["id"];

            conn.Open();

            string sql = "DELETE FROM Sach WHERE ID=@id";

            OleDbCommand cmd = new OleDbCommand(sql, conn);
            cmd.Parameters.AddWithValue("@id", id);

            cmd.ExecuteNonQuery();

            conn.Close();

            Response.Redirect("themsach.aspx");
        }
    }
}