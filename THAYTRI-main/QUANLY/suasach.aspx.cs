using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class suasach : System.Web.UI.Page
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
            LoadSach();
        }
    }
    void LoadSach()
    {
        conn.Open();

        string sql = "SELECT * FROM Sach WHERE ID=@id";

        OleDbCommand cmd = new OleDbCommand(sql, conn);
        cmd.Parameters.AddWithValue("@id", id);

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            txtTenSach.Text = dt.Rows[0]["TenSach"].ToString();
            txtGia.Text = dt.Rows[0]["GiaBan"].ToString();
            txtTacGia.Text = dt.Rows[0]["TacGia"].ToString();
            txtNXB.Text = dt.Rows[0]["NhaXB"].ToString();
            txtNCC.Text = dt.Rows[0]["NhaCC"].ToString();
            txtBia.Text = dt.Rows[0]["HinhThucBia"].ToString();
            txtNamXB.Text = dt.Rows[0]["NamXB"].ToString();
            txtSoTrang.Text = dt.Rows[0]["SoTrang"].ToString();

            imgSach.ImageUrl = "~/" + dt.Rows[0]["HinhAnh"].ToString();

            txtMoTa.Text = dt.Rows[0]["MoTa"].ToString();
            txtTomTat.Text = dt.Rows[0]["NoiDungTomTat"].ToString();
            txtChuThich.Text = dt.Rows[0]["ChuThich"].ToString();
        }

        conn.Close();
    }
    protected void btnSua_Click(object sender, EventArgs e)
    {
        conn.Open();

        string hinhanh = "";

        // Upload ảnh mới
        if (FileUpload_ANH.HasFile)
        {
            string filename = FileUpload_ANH.FileName;

            FileUpload_ANH.SaveAs(
            Server.MapPath("~/Images/SANPHAM/") + filename);

            hinhanh = "Images/SANPHAM/" + filename;
        }

        string sql;

        // Nếu có ảnh mới thì update luôn ảnh
        if (FileUpload_ANH.HasFile)
        {
            sql = @"UPDATE Sach SET
                TenSach=@TenSach,
                GiaBan=@GiaBan,
                TacGia=@TacGia,
                NhaXB=@NXB,
                NhaCC=@NCC,
                HinhThucBia=@Bia,
                NamXB=@NamXB,
                SoTrang=@SoTrang,
                MoTa=@MoTa,
                NoiDungTomTat=@TomTat,
                ChuThich=@ChuThich,
                HinhAnh=@HinhAnh
                WHERE ID=@id";
        }
        else
        {
            sql = @"UPDATE Sach SET
                TenSach=@TenSach,
                GiaBan=@GiaBan,
                TacGia=@TacGia,
                NhaXB=@NXB,
                NhaCC=@NCC,
                HinhThucBia=@Bia,
                NamXB=@NamXB,
                SoTrang=@SoTrang,
                MoTa=@MoTa,
                NoiDungTomTat=@TomTat,
                ChuThich=@ChuThich
                WHERE ID=@id";
        }

        OleDbCommand cmd = new OleDbCommand(sql, conn);

        cmd.Parameters.AddWithValue("@TenSach", txtTenSach.Text);
        cmd.Parameters.AddWithValue("@GiaBan", txtGia.Text);
        cmd.Parameters.AddWithValue("@TacGia", txtTacGia.Text);
        cmd.Parameters.AddWithValue("@NXB", txtNXB.Text);
        cmd.Parameters.AddWithValue("@NCC", txtNCC.Text);
        cmd.Parameters.AddWithValue("@Bia", txtBia.Text);
        cmd.Parameters.AddWithValue("@NamXB", txtNamXB.Text);
        cmd.Parameters.AddWithValue("@SoTrang", txtSoTrang.Text);
        cmd.Parameters.AddWithValue("@MoTa", txtMoTa.Text);
        cmd.Parameters.AddWithValue("@TomTat", txtTomTat.Text);
        cmd.Parameters.AddWithValue("@ChuThich", txtChuThich.Text);

        if (FileUpload_ANH.HasFile)
        {
            cmd.Parameters.AddWithValue("@HinhAnh", hinhanh);
        }

        cmd.Parameters.AddWithValue("@id", id);

        cmd.ExecuteNonQuery();

        conn.Close();

        Response.Redirect("themsach.aspx");
    }
}