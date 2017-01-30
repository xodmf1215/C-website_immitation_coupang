using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSearch.Attributes["onkeypress"] = "if (event.keyCode==13){" + Page.GetPostBackEventReference(igbSearch) + "; return false;}";
        LoadFixed();
        igbCtgFood.Visible = true; igbCtgFoodSub.Visible = false; igbCtgFoodSub2.Visible = false;
        igbCtgCloth.Visible = true; igbCtgClothSub.Visible = false; igbCtgClothSub2.Visible = false;
        igbCtgDigit.Visible = true; igbCtgDigitSub.Visible = false; igbCtgDigitSub2.Visible = false;


        if (!IsPostBack)//새로 들어온거
        {
            if (SessionExist("Searchindex"))
            {
                string sql;

                sql = "                         SELECT     PRODUCT.pdNumber, PRODUCT.pdName, PRODUCT.pdCost, PRODUCT.pdTotal, PRODUCT.pdRemain, PRODUCT.pdspan, SELL_CUSTOMER.scName   ";
                sql = sql + "                    FROM         PRODUCT INNER JOIN SELL_CUSTOMER ON PRODUCT.pdscID = SELL_CUSTOMER.scID    ";
                sql = sql + string.Format("     WHERE     (PRODUCT.pdName LIKE '%{0}%')  ", Session["Searchindex"].ToString());

                SqlDataSource1.SelectCommand = sql;
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();

                GridView1.Visible = true;
                Session.Remove("Searchindex");
                Session.Remove("Category");
            }
            if (SessionExist("Category"))
            {
                CategoryBinding((int)Session["Category"]);
                Session.Remove("Searchindex");
                Session.Remove("Category");
            }
            else
            {
                GridView1.Visible = true;
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
            
        }
        else//postback 으로 들어온거
        {
            
        }
    }
    public void CategoryBinding(int ctg)
    {
        string sql;
        sql = "                         SELECT     PRODUCT.pdNumber, PRODUCT.pdName, PRODUCT.pdCost, PRODUCT.pdTotal, PRODUCT.pdRemain, PRODUCT.pdspan, SELL_CUSTOMER.scName   ";
        sql = sql + "                    FROM         PRODUCT INNER JOIN SELL_CUSTOMER ON PRODUCT.pdscID = SELL_CUSTOMER.scID    ";
        sql = sql + string.Format("     WHERE     (PRODUCT.pdctNumber = '{0}') ", ctg);

        SqlDataSource1.SelectCommand = sql;
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
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
            i++;
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
    protected void igbMyPage_Click(object sender, ImageClickEventArgs e)
    {
        if(Session["Role"].ToString() == "Customer")
            Response.Redirect("MyPage.aspx");
        if (Session["Role"].ToString() == "Seller")
            Response.Redirect("MypageSeller.aspx");
    }
    protected void igbSearch_Click(object sender, ImageClickEventArgs e)
    {
        string sql;

        sql = "                         SELECT     PRODUCT.pdNumber, PRODUCT.pdName, PRODUCT.pdCost, PRODUCT.pdTotal, PRODUCT.pdRemain, PRODUCT.pdspan, SELL_CUSTOMER.scName   ";
        sql = sql+ "                    FROM         PRODUCT INNER JOIN SELL_CUSTOMER ON PRODUCT.pdscID = SELL_CUSTOMER.scID    ";
        sql = sql + string.Format("     WHERE     (PRODUCT.pdName LIKE '%{0}%')  ", txtSearch.Text);

        SqlDataSource1.SelectCommand = sql;
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();

        GridView1.Visible = true;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["pdNumber"] = GridView1.SelectedValue.ToString();
        Response.Redirect("product.aspx");
    }
    protected void igbToMain_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Main.aspx");
    }
    protected void igbCtgFood_Click(object sender, ImageClickEventArgs e)
    {
        igbCtgFood.Visible = true;
        igbCtgFoodSub.Visible = true;
        igbCtgFoodSub2.Visible = true;
    }
    protected void igbCtgCloth_Click(object sender, ImageClickEventArgs e)
    {
        igbCtgCloth.Visible = true;
        igbCtgClothSub.Visible = true;
        igbCtgClothSub2.Visible = true;
    }
    protected void igbCtgDigit_Click(object sender, ImageClickEventArgs e)
    {
        igbCtgDigit.Visible = true;
        igbCtgDigitSub.Visible = true;
        igbCtgDigitSub2.Visible = true;
    }
    protected void igbCtgFoodSub_Click(object sender, ImageClickEventArgs e)
    {
        CategoryBinding(1);
    }
    protected void igbCtgFoodSub2_Click(object sender, ImageClickEventArgs e)
    {
        CategoryBinding(2);
    }
    protected void igbCtgClothSub_Click(object sender, ImageClickEventArgs e)
    {
        CategoryBinding(3);
    }
    protected void igbCtgClothSub2_Click(object sender, ImageClickEventArgs e)
    {
        CategoryBinding(4);
    }
    protected void igbCtgDigitSub_Click(object sender, ImageClickEventArgs e)
    {
        CategoryBinding(5);
    }
    protected void igbCtgDigitSub2_Click(object sender, ImageClickEventArgs e)
    {
        CategoryBinding(6);
    }
    protected void ibgFixFood1_Click(object sender, ImageClickEventArgs e)
    {
        CategoryBinding(1);
    }
    protected void ibgFixFood2_Click(object sender, ImageClickEventArgs e)
    {
        CategoryBinding(2);
    }
    protected void ibgFixCloth1_Click(object sender, ImageClickEventArgs e)
    {
        CategoryBinding(3);
    }
    protected void ibgFixCloth2_Click(object sender, ImageClickEventArgs e)
    {
        CategoryBinding(4);
    }
    protected void ibgFixDigit1_Click(object sender, ImageClickEventArgs e)
    {
        CategoryBinding(5);
    }
    protected void ibgFixDigit2_Click(object sender, ImageClickEventArgs e)
    {
        CategoryBinding(6);
    }
}