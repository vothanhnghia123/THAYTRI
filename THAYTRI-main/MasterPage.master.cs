using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
            if (Session["Username"] != null)
        {
            phAnonymous.Visible = false; // Ẩn cái Đăng nhập đi
            phLoggedIn.Visible = true;   // Hiện cái Chào admin lên
            lblUsername.Text = Session["Username"].ToString(); // Gán tên vào Label
        }
        else
        {
            phAnonymous.Visible = true;
            phLoggedIn.Visible = false;
        }
            if (!IsPostBack)
            {
                LoadLinhVuc();
            }
    }
    void LoadLinhVuc()
    {
        string str = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
        Server.MapPath("~/Data/BanSach.mdb");

        OleDbConnection cn = new OleDbConnection(str);
        cn.Open();

        string sql = "SELECT * FROM LinhVuc";

        OleDbDataAdapter da = new OleDbDataAdapter(sql, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);

        rpLinhVuc.DataSource = dt;
        rpLinhVuc.DataBind();

        cn.Close();
    }
    public DataTable GetTheLoai(string maLV)
    {
        string str = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
        Server.MapPath("~/Data/BanSach.mdb");

        OleDbConnection cn = new OleDbConnection(str);
        cn.Open();

        string sql = "SELECT * FROM TheLoai WHERE MaLinhVuc='" + maLV + "'";

        OleDbDataAdapter da = new OleDbDataAdapter(sql, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);

        cn.Close();

        return dt;
    }
    protected void rpLinhVuc_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item ||
            e.Item.ItemType == ListItemType.AlternatingItem)
        {
            DataRowView row = (DataRowView)e.Item.DataItem;

            string maLV = row["MaLinhVuc"].ToString();

            Repeater rpTheLoai = (Repeater)e.Item.FindControl("rpTheLoai");

            rpTheLoai.DataSource = GetTheLoai(maLV);
            rpTheLoai.DataBind();
        }
    }
    // Code cho nút Đăng xuất
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Remove("Username"); // Xóa tên
        Session.Remove("Role");     // Xóa quyền
        Response.Redirect("~/TrangChu.aspx"); // Đá về trang chủ
    }

    protected void btTIMKIEM_Click(object sender, EventArgs e)
    {
        string tukhoa = txtTIMKIEM.Text;
        Response.Redirect("timkiem.aspx?q=" + tukhoa);
    }
}
