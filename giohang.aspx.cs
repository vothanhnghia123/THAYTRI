using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class giohang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HienThiGioHang();

    }
    void HienThiGioHang()
    {
        if (Session["giohang"] != null)
        {
            DataTable giohang = (DataTable)Session["giohang"];

            if (giohang.Rows.Count > 0)
            {
                GridView1.DataSource = giohang;
                GridView1.DataBind();

                double tong = 0;

                foreach (DataRow r in giohang.Rows)
                {
                    double gia = Convert.ToDouble(r["GiaBan"]);
                    int sl = Convert.ToInt32(r["SoLuong"]);

                    tong += gia * sl;
                }

                lblTongTien.Text = tong.ToString("N0") + " VNĐ";
            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();

                lblTongTien.Text = "0 VNĐ";
            }
        }
        else
        {
            lblTongTien.Text = "0 VNĐ";
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable giohang = (DataTable)Session["giohang"];

        giohang.Rows[e.RowIndex].Delete();

        Session["giohang"] = giohang;

        HienThiGioHang(); // cập nhật lại
    }
    protected void btnThanhToan_Click(object sender, EventArgs e)
    {
        if (Session["giohang"] == null)
        {
            Response.Write("<script>alert('Giỏ hàng trống')</script>");
            return;
        }
        OleDbConnection conn = new OleDbConnection(
        "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
        Server.MapPath("~/Data/BanSach.mdb"));

        conn.Open();

        // Lưu khách hàng
        string sqlKH = "INSERT INTO KhachHang(HoTen,SDT,Email,DiaChi) VALUES(?,?,?,?)";

        OleDbCommand cmdKH = new OleDbCommand(sqlKH, conn);
        cmdKH.Parameters.AddWithValue("@HoTen", txtHVT.Text);
        cmdKH.Parameters.AddWithValue("@SDT", txtSDT.Text);
        cmdKH.Parameters.AddWithValue("@Email", txtEmail.Text);
        cmdKH.Parameters.AddWithValue("@DiaChi", txtDiaChi.Text);

        cmdKH.ExecuteNonQuery();


        // Lấy MaKH vừa tạo
        OleDbCommand cmdGetKH = new OleDbCommand("SELECT @@IDENTITY", conn);
        int MaKH = Convert.ToInt32(cmdGetKH.ExecuteScalar());


        // Tổng tiền
        double TongTien = 0;

        DataTable dt = (DataTable)Session["giohang"];

        foreach (DataRow row in dt.Rows)
        {
            TongTien += Convert.ToDouble(row["GiaBan"]) * Convert.ToInt32(row["SoLuong"]);
        }


        // Lưu đơn hàng
        string sqlDon = "INSERT INTO DonHang(MaKH,NgayDat,TongTien,ThanhToan) VALUES(?,?,?,?)";

        OleDbCommand cmdDon = new OleDbCommand(sqlDon, conn);

        cmdDon.Parameters.Add("@MaKH", OleDbType.Integer).Value = MaKH;
        cmdDon.Parameters.Add("@NgayDat", OleDbType.Date).Value = DateTime.Now;
        cmdDon.Parameters.Add("@TongTien", OleDbType.Currency).Value = TongTien;
        cmdDon.Parameters.Add("@ThanhToan", OleDbType.VarChar).Value = ddlThanhToan.SelectedItem.Text;

        cmdDon.ExecuteNonQuery();


        // Lấy MaDon
        OleDbCommand cmdGetDon = new OleDbCommand("SELECT @@IDENTITY", conn);
        int MaDon = Convert.ToInt32(cmdGetDon.ExecuteScalar());


        // Lưu chi tiết đơn hàng
        dt = (DataTable)Session["giohang"];

        foreach (DataRow row in dt.Rows)
        {
            string sqlCT = "INSERT INTO ChiTiet(MaDon,MaSach,SoLuong,Gia) VALUES(?,?,?,?)";

            OleDbCommand cmdCT = new OleDbCommand(sqlCT, conn);

            cmdCT.Parameters.AddWithValue("@p1", MaDon);
            cmdCT.Parameters.AddWithValue("@p2", row["MaSach"].ToString());
            cmdCT.Parameters.AddWithValue("@p3", Convert.ToInt32(row["SoLuong"]));
            cmdCT.Parameters.AddWithValue("@p4", Convert.ToDecimal(row["GiaBan"]));

            cmdCT.ExecuteNonQuery();
        }

        conn.Close();

        // Xóa giỏ hàng
        Session["giohang"] = null;

        Response.Write("<script>alert('Đặt hàng thành công');location='TRANGCHU.aspx'</script>");

    }
}