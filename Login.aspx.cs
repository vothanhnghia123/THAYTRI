using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btdangnhap_Click(object sender, EventArgs e)
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
            if ((txtUse.Text) == dr["Use"].ToString() && txtPass.Text ==
            dr["Pass"].ToString())
            {
                //Session["Login"] = true; // Gán giá tr�����������à true 
                Response.Redirect("~/QUANLY/QuanLy.aspx", false);
                return;
            }

        }
        lbl_TB.Text = "</br><font color=red>Sai Uesname and Password vui lòng nhập lại !!!!</font>";
    }
}