using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.IO;

public partial class QUANLY_themsach : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadDL();
            cboLinhVuc.DataValueField = "MalinhVuc";
            GetLinhVuc();

            cboTheLoai.DataValueField = "MaTheLoai";
            GetTheLoai();
        }
        
    }
    //Hàm l������������ên cho CboLinhvuc 
    protected void GetLinhVuc()
    {
        string strl = "Provider = Microsoft.jet.OLEDB.4.0; data source =" + Server.MapPath("~/Data/BanSach.mdb");
       using (OleDbConnection cn = new OleDbConnection(strl))
        {
        string sql = "Select * From LinhVuc";
        OleDbDataAdapter oda = new OleDbDataAdapter(sql, cn);
        DataTable dt = new DataTable();
        oda.Fill(dt);
        cboLinhVuc.DataSource = dt;
        cboLinhVuc.DataBind();
        }
    }
    protected void GetTheLoai()
    {
        string strl = "Provider = Microsoft.jet.OLEDB.4.0; data source =" + Server.MapPath("~/Data/BanSach.mdb");
        using( OleDbConnection cn = new OleDbConnection(strl))
        { 
        string sql = "Select * From TheLoai";
        OleDbDataAdapter oda = new OleDbDataAdapter(sql, cn);
        DataTable dt = new DataTable();
        oda.Fill(dt);
        cboTheLoai.DataSource = dt;
        cboTheLoai.DataBind();
        }
    }
     /*protected void SaveFileUpload() 
    { 
       string strFileName; 
        if (FileUpload_ANH.FileName != "") 
        { 
            strFileName = Server.MapPath("~/Images/SANPHAM/" + FileUpload_ANH.FileName); 
            FileUpload_ANH.PostedFile.SaveAs(strFileName); 
        } 
        

    }*/
    protected string SaveFileUpload()
    {
        if (FileUpload_ANH.HasFile)
        {
            string fileName = Path.GetFileName(FileUpload_ANH.FileName);
            string relativePath = "Images/SANPHAM/" + fileName;

            FileUpload_ANH.SaveAs(Server.MapPath("~/" + relativePath));
            return relativePath;
        }
        return "";
    }

    private void SaveInfo(string imgPath)
    {
        string strl = "Provider = Microsoft.jet.OLEDB.4.0; data source =" + Server.MapPath("~/Data/BanSach.mdb");
        OleDbConnection cn = new OleDbConnection(strl);
        cn.Open();

        string sqlAdd = "insert into Sach ";
        sqlAdd += " (MaSach, TenSach, MaTheLoai, MaLinhVuc, MoTa, NoiDungTomTat, NgayNhap,GiaBan, TacGia, HinhAnh, ChuThich, NhaXB, NhaCC, HinhThucBia, NamXB, SoTrang) values('" + txtMaS.Text + "','" + txtTenS.Text + "',";
        sqlAdd += "'" + cboTheLoai.SelectedValue + "',";
        sqlAdd += "'" + cboLinhVuc.SelectedValue + "',";
        sqlAdd += "'" + txtMoTa.Text + "',";
        sqlAdd += "'" + txtNDTT.Text + "'," /*+ DateTime.Now + "',"*/;
        sqlAdd += "#" + DateTime.Now.ToString("MM/dd/yyyy") + "#,";
        //sqlAdd += "'" + decimal.Parse(txtGB.Text) + "',";
        sqlAdd += decimal.Parse(txtGB.Text) + ",";
        //sqlAdd += decimal.Parse(txtGB.Text) + ",";
        sqlAdd += "'" + txtTacGia.Text + "',";
        sqlAdd += "'" + imgPath + "','" + txtChuThich.Text + "',";
        sqlAdd += "'" + txtNXB.Text + "',";
        sqlAdd += "'" + txtNCC.Text + "',";
        sqlAdd += "'" + txtBIA.Text + "',";
        //sqlAdd += "'" + int.Parse(txtNamXB.Text) + "',";
        //sqlAdd += "'" + int.Parse(txtSoT.Text) + "')";
        sqlAdd += int.Parse(txtNamXB.Text) + ",";
        sqlAdd += "'" + txtSoT.Text + "')";


        OleDbCommand cmd = new OleDbCommand(sqlAdd, cn);
        cmd.ExecuteNonQuery(); // Thuc thi
        cn.Close();
    }
    public void LoadDL()
    {
        string strl = "Provider = Microsoft.jet.OLEDB.4.0; data source =" + Server.MapPath("~/Data/BanSach.mdb");
        OleDbConnection cn = new OleDbConnection(strl);
        cn.Open();
        string sql = "Select * From Sach";
        OleDbDataAdapter oda = new OleDbDataAdapter(sql, cn);
        DataTable dt = new DataTable();
        oda.Fill(dt);
        GridView_S.DataSource = dt;
        GridView_S.DataBind();
    }
    private void ClearForm()
    {
        txtMaS.Text = "";
        txtTenS.Text = "";
        txtMoTa.Text = "";
        txtNDTT.Text = "";
        txtGB.Text = "";
        txtTacGia.Text = "";
        txtChuThich.Text = "";
        txtNXB.Text = "";
        txtNCC.Text = "";
        txtBIA.Text = "";
        txtNamXB.Text = "";
        txtSoT.Text = "";

        cboTheLoai.SelectedIndex = 0;
        cboLinhVuc.SelectedIndex = 0;
    }

    protected void btTHEM_Click(object sender, EventArgs e)
    {
        //SaveFileUpload();
        string imgPath = SaveFileUpload();
        SaveInfo(imgPath);
        ClearForm();
        Response.Write("<script> alert ('Lưu thông tin thành công ')</script>");
        LoadDL();
    }
}