using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Mypage : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!SessionExist("Email"))
        {
            Response.Redirect("Login.aspx");
        }
        LoadFixed();
       
        string sql;

        sql = "                         SELECT      BUY_INFO.biDate, PRODUCT.pdName, BUY_INFO.biCost   ";
        sql = sql + "                   FROM         BUY_INFO INNER JOIN PRODUCT ON BUY_INFO.bipdNumber = PRODUCT.pdNumber    ";
        sql = sql + string.Format("     WHERE     (BUY_INFO.bibcEmail = '{0}')  ", Session["Email"].ToString());

        SqlDataSource1.SelectCommand = sql;
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();

        GridView1.Visible = true;

    }
    public void LoadFixed()
    {
        if (SessionExist("Email"))
        {
            //로그인 상태
            lblName.Text = Session["Name"].ToString() + "님";
            igbLogin.ImageUrl = "~/images/Fixed/FixedT1L3Logout.png";
        }
        else
        {
            lblName.Text = "";
            igbLogin.ImageUrl = "~/images/Fixed/FixedT1L3Login.png";
        }
    }
    private bool SessionExist(string SessionValue)
    {
        int i = 0;
        IEnumerator SessionList = Session.GetEnumerator();

        while (i < Session.Count)
        {
            SessionList.MoveNext();
            if (SessionList.Current.ToString() == SessionValue)
                return true;
        }

        return false;
    }
    protected void igbLogin_Click(object sender, ImageClickEventArgs e)
    {
        if (SessionExist("Email"))
        {
            Session.Clear();
            Response.Redirect("Main.aspx");
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
        //COUPANGDB_BConnectionString
    }

    protected void imbOrder_Click(object sender, ImageClickEventArgs e)
    {
        string sql;

        sql = "                         SELECT      BUY_INFO.biDate, PRODUCT.pdName, BUY_INFO.biCost   ";
        sql = sql + "                   FROM         BUY_INFO INNER JOIN PRODUCT ON BUY_INFO.bipdNumber = PRODUCT.pdNumber    ";
        sql = sql + string.Format("     WHERE     (BUY_INFO.bibcEmail = '{0}')  ", Session["Email"].ToString());

        SqlDataSource1.SelectCommand = sql;
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();

        GridView1.Visible = true;

    }
    protected void igbToMain_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Main.aspx");
    }

    protected void imgMemberModification_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("MemberModification.aspx");
    }
    protected void ibgFixFood1_Click(object sender, ImageClickEventArgs e)
    {
        Session["Category"] = 1;
        Response.Redirect("Main.aspx");
    }
    protected void ibgFixFood2_Click(object sender, ImageClickEventArgs e)
    {
        Session["Category"] = 2;
        Response.Redirect("Main.aspx");
    }
    protected void ibgFixCloth1_Click(object sender, ImageClickEventArgs e)
    {
        Session["Category"] = 3;
        Response.Redirect("Main.aspx");
    }
    protected void ibgFixCloth2_Click(object sender, ImageClickEventArgs e)
    {
        Session["Category"] = 4;
        Response.Redirect("Main.aspx");
    }
    protected void ibgFixDigit1_Click(object sender, ImageClickEventArgs e)
    {
        Session["Category"] = 5;
        Response.Redirect("Main.aspx");
    }
    protected void ibgFixDigit2_Click(object sender, ImageClickEventArgs e)
    {
        Session["Category"] = 6;
        Response.Redirect("Main.aspx");
    }

    protected void igbSearch_Click(object sender, ImageClickEventArgs e)
    {
        Session["Searchindex"] = txtSearch.Text.ToString();
        Response.Redirect("Main.aspx");
    }
}