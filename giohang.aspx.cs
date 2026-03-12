using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

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
}