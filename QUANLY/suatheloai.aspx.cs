using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class QUANLY_suatheloai : System.Web.UI.Page
{
    OleDbConnection conn;
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new OleDbConnection(
        "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
        Server.MapPath("~/Data/BanSach.mdb"));

        id = Request.QueryString["id"];

        if (!IsPostBack)
        {
            LoadLinhVuc();
            LoadData();
        }
    }
        void LoadData()
        {
            conn.Open();

            string sql = "SELECT * FROM TheLoai WHERE MaTheLoai=@id";

            OleDbCommand cmd = new OleDbCommand(sql, conn);
            cmd.Parameters.AddWithValue("@id", id);

            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                txtMTL.Text = dt.Rows[0]["MaTheLoai"].ToString();
                txtTenTL.Text = dt.Rows[0]["TenTheLoai"].ToString();
                ddlLinhVuc.SelectedValue = dt.Rows[0]["MaLinhVuc"].ToString();
            }

            conn.Close();
        }
         void LoadLinhVuc()
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
             ddlLinhVuc.DataTextField = "TenLinhVuc";
             ddlLinhVuc.DataValueField = "MaLinhVuc";
             ddlLinhVuc.DataBind();

             cn.Close();
         }
    protected void btnSua_Click(object sender, EventArgs e)
    {
        conn.Open();

        string sql = "UPDATE TheLoai SET TenTheLoai=@TenTL, MaLinhVuc=@MaLV WHERE MaTheLoai=@id";

        OleDbCommand cmd = new OleDbCommand(sql, conn);

        cmd.Parameters.AddWithValue("@TenTL", txtTenTL.Text);
        cmd.Parameters.AddWithValue("@MaLV", ddlLinhVuc.SelectedValue);
        cmd.Parameters.AddWithValue("@id", txtMTL.Text);

        cmd.ExecuteNonQuery();

        conn.Close();

        Response.Redirect("theloai.aspx");
    }

}