using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class MypageSeller : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSearch.Attributes["onkeypress"] = "if (event.keyCode==13){" + Page.GetPostBackEventReference(igbSearch) + "; return false;}";
        txtSpan.Attributes["onkeypress"] = "if (event.keyCode==13){" + Page.GetPostBackEventReference(btnRegister) + "; return false;}";
        ddlCategory.Attributes["onkeypress"] = "if (event.keyCode==13){" + Page.GetPostBackEventReference(btnRegister) + "; return false;}";

        if (!SessionExist("Email"))
            Response.Redirect("Main.aspx");
        LoadFixed();
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
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        
        string sql;
        string[] sqlResult; //SQL문 실행 결과를 저장할 배열

        if (txtName.Text == "")
        {
            lblMSG.Text = "상품명을 입력하시오";
            return;
        }
        if (txtCost.Text == "")
        {
            lblMSG.Text = "가격을 입력하시오";
            return;
        }
        if (txtTotal.Text == "")
        {
            lblMSG.Text = "수량을 입력하시오";
            return;
        }
        if (txtSpan.Text == "")
        {
            lblMSG.Text = "판매기간을 입력하시오";
            return;
        }
        //////////////////PRODUCT 갯수 세기
        sql = "       SELECT     Count (pdNumber)  ";
        sql = sql + " FROM         PRODUCT  ";

        OleDbSqlServerQueryReader RecordData1 = new OleDbSqlServerQueryReader(sql , 1);
        sqlResult = RecordData1.RunQueryRow();

        /////////////////pdName 만들기
        int a= Convert.ToInt16(sqlResult[0])+1;
        int cnt=0,tmp;
        string pdNumber;
        tmp = a;
        while (a >= 1)
        {
            a = a / 10;
            cnt++;
        }
        pdNumber="P";
        for (int i = 1; i <= 4-cnt; i++)
        {
            pdNumber = pdNumber + "0";
        }
        pdNumber = pdNumber + tmp.ToString();

        sql = " INSERT INTO [COUPANGDB_B].[dbo].[PRODUCT] ";
        sql = sql + " ([pdNumber],[pdName],[pdCost],[pdTotal],[pdRemain],[pdspan],[pdctNumber],[pdscID]) ";
        sql = sql + " VALUES ";
        sql = sql + string.Format(" ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}') ",pdNumber , txtName.Text, txtCost.Text, txtTotal.Text, txtTotal.Text, txtSpan.Text, Convert.ToInt16(ddlCategory.SelectedValue), Session["Email"].ToString());
        
        OleDbSqlServerQueryRun RecordData2 = new OleDbSqlServerQueryRun(sql);
        RecordData2.RunNonQuery();
        
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

    protected void btnAccount_Click(object sender, EventArgs e)
    {
        string sql;

        sql = "                         SELECT     pdName, (pdTotal - pdRemain) * pdCost AS Expr1, pdRemain   ";
        sql = sql + "                   FROM         PRODUCT ";
        sql = sql + string.Format("     WHERE     (pdscID = '{0}')  ", Session["Email"].ToString());
        
        SqlDataSource1.SelectCommand = sql;
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();

        GridView1.Visible = true;
    }
    protected void btnpdUpdate_Click(object sender, EventArgs e)
    {

    }
    protected void ibgFixFood1_Click(object sender, ImageClickEventArgs e)
    {
        Session["Category"] = 1;    //DB의 카테고리 번호와 통일성
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
    protected void igbMyPage_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("MypageSeller.aspx");
    }
}