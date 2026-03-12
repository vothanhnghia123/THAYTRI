using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class timkiem : System.Web.UI.Page
{
    
     OleDbConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/Data/BanSach.mdb"));
        if (!IsPostBack)
        {
            string tukhoa = Request.QueryString["q"];

            if (!string.IsNullOrEmpty(tukhoa))
            {
                TimSach(tukhoa);
            }
        }
    }
    void TimSach(string tukhoa)
    {
        conn.Open();

        string sql = "SELECT * FROM Sach WHERE TenSach LIKE ?";

        OleDbCommand cmd = new OleDbCommand(sql, conn);
        cmd.Parameters.AddWithValue("@tukhoa", "%" + tukhoa + "%");

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        rptSach.DataSource = dt;
        rptSach.DataBind();

        conn.Close();
    }
}