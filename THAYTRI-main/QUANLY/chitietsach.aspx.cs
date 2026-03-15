using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class QUANLY_chitietsach : System.Web.UI.Page
{
    OleDbConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
       
            conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/Data/BanSach.mdb"));
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    string id = Request.QueryString["id"];

                    string sql = "SELECT * FROM Sach WHERE ID=@id";

                    OleDbCommand cmd = new OleDbCommand(sql, conn);
                    cmd.Parameters.AddWithValue("@id", id);

                    OleDbDataAdapter da = new OleDbDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        lblTenSach.Text = dt.Rows[0]["TenSach"].ToString();
                        lblGia.Text = dt.Rows[0]["GiaBan"].ToString();
                        lblTacGia.Text = dt.Rows[0]["TacGia"].ToString();
                        lblNXB.Text = dt.Rows[0]["NhaXB"].ToString();
                        lblNCC.Text = dt.Rows[0]["NhaCC"].ToString();

                        lblBia.Text = dt.Rows[0]["HinhThucBia"].ToString();
                        lblNamXB.Text = dt.Rows[0]["NamXB"].ToString();
                        lblSoTrang.Text = dt.Rows[0]["SoTrang"].ToString();

                        lblMoTa.Text = dt.Rows[0]["MoTa"].ToString();
                        lblTomTat.Text = dt.Rows[0]["NoiDungTomTat"].ToString();
                        lblChuThich.Text = dt.Rows[0]["ChuThich"].ToString();

                        imgSach.ImageUrl = "~/" + dt.Rows[0]["HinhAnh"].ToString();
                    }
                }
            }
        
    }
}