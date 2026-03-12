using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class trangchitiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCart_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        DataListItem item = (DataListItem)btn.NamingContainer;

        Label lblMaSach = (Label)item.FindControl("lblMaSach");
        Label lblTenSach = (Label)item.FindControl("lblTenSach");
        Label lblGiaRaw = (Label)item.FindControl("lblGiaRaw");
        Image imgSach = (Image)item.FindControl("imgSach");

        DataTable giohang;

        if (Session["giohang"] == null)
        {
            giohang = new DataTable();

            giohang.Columns.Add("MaSach");
            giohang.Columns.Add("TenSach");
            giohang.Columns.Add("GiaBan", typeof(double));
            giohang.Columns.Add("HinhAnh");
            giohang.Columns.Add("SoLuong", typeof(int));

            Session["giohang"] = giohang;
        }

        giohang = (DataTable)Session["giohang"];

        string masach = lblMaSach.Text;

        foreach (DataRow r in giohang.Rows)
        {
            if (r["MaSach"].ToString() == masach)
            {
                r["SoLuong"] = Convert.ToInt32(r["SoLuong"]) + 1;
                Session["giohang"] = giohang;
                ClientScript.RegisterStartupScript(this.GetType(), "tb", "showThongBao();", true);
                return;
            }
        }

        DataRow row = giohang.NewRow();

        row["MaSach"] = lblMaSach.Text;
        row["TenSach"] = lblTenSach.Text;
        row["GiaBan"] = Convert.ToDouble(lblGiaRaw.Text);
        row["HinhAnh"] = imgSach.ImageUrl;
        row["SoLuong"] = 1;

        giohang.Rows.Add(row);

        Session["giohang"] = giohang;

        ClientScript.RegisterStartupScript(this.GetType(), "tb", "showThongBao();", true);
    }
}