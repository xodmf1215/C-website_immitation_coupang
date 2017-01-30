using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadFixed();
        if (!SessionExist("pdNumber"))
        {
            Response.Redirect("Main.aspx");
        }
        else
            LoadProductInformation();
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
    public void LoadProductInformation()
    {
        //DB에서 상품정보 불러오기
        string sql,sql2; //SQL문
        string[] sqlResult; //SQL문 실행 결과를 저장할 배열

        sql = "       SELECT        pdName, pdCost, pdRemain, pdspan ";
        sql = sql + " FROM          PRODUCT ";
        sql = sql + string.Format(" WHERE     (pdNumber = '{0}') ", Session["pdNumber"].ToString());  // 변수가 들어올 경우에는 {0} , {1} 해주고 뒤에 들어갈 변수를 표시해준다.

        OleDbSqlServerQueryReader RecordData = new OleDbSqlServerQueryReader(sql, 4);
        sqlResult = RecordData.RunQueryCol();

        if (RecordData.ResultExist)
        {
            lblProductName.Text = sqlResult[0];
            lblPrice.Text = sqlResult[1];
            lblCount.Text = sqlResult[2] + " 개";
            lblSellDate.Text = sqlResult[3];
        }
        sql2 = "        SELECT     qaNumber, qaQue, qaAns ";
        sql2 = sql2 + " FROM  QNA ";
        sql2 = sql2 + string.Format(" WHERE    (qapdNumber = '{0}') ", Session["pdNumber"].ToString());

        SqlDataSource1.SelectCommand = sql2;
        ListView1.DataSource = SqlDataSource1;
        ListView1.DataBind();

        ListView1.Visible = true;
          
        sql2 = "        SELECT opName ";
        sql2 = sql2 + " FROM [OPTION] ";
        sql2 = sql2 + string.Format(" WHERE (oppdNumber = '{0}') ", Session["pdNumber"].ToString());
        SqlDataSource2.SelectCommand = sql2;
        ddlOption.DataSource = SqlDataSource2;
        ddlOption.DataValueField = "opName";
        ddlOption.DataTextField = "opName";
        ddlOption.DataBind();
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
    protected void igbPurchase_Click(object sender, ImageClickEventArgs e)
    {
        string sql;
        string[] sqlResult2;
        //////////////////BUYINFO 갯수 세기
        sql = "       SELECT     Count (biNumber)  ";
        sql = sql + " FROM         BUY_INFO  ";

        OleDbSqlServerQueryReader RecordData1 = new OleDbSqlServerQueryReader(sql , 1);
        sqlResult2 = RecordData1.RunQueryRow();

        /////////////////biNumber 만들기
        int a= Convert.ToInt32(sqlResult2[0])+1;
        int cnt=0,tmp;
        string biNumber;
        tmp = a;
        while (a >= 1)
        {
            a = a / 10;
            cnt++;
        }
        biNumber="B";
        for (int i = 1; i <= 4-cnt; i++)
        {
            biNumber = biNumber + "0";
        }
        biNumber = biNumber + tmp.ToString();

        ////////////////BUY_INFO테이블 삽입
        int orderNum=Convert.ToInt32(txtOrderNum.Text);
        sql = " INSERT INTO [COUPANGDB_B].[dbo].[BUY_INFO] ";
        sql = sql + " ([biNumber], [bibcEmail], [bipdNumber], [biAmount], [biDate], [biCost]) ";
        sql = sql + " VALUES ";
        sql = sql + string.Format(" ('{0}','{1}','{2}',{3}, CONVERT(DATETIME, '{4}', 102),{5}) ", biNumber, Session["Email"].ToString(), Session["pdNumber"].ToString(), orderNum, DateTime.Now.ToShortDateString(), orderNum * Convert.ToInt32(lblPrice.Text));

        OleDbSqlServerQueryRun RecordData = new OleDbSqlServerQueryRun(sql);
        RecordData.RunNonQuery();

        ///////////////PRODUCT테이블 업데이트
        sql = "       UPDATE [COUPANGDB_B].[dbo].[PRODUCT] ";
        sql = sql + string.Format(" SET [pdRemain] = ( SELECT pdRemain FROM PRODUCT WHERE pdNumber='{0}' ) - {1}", Session["pdNumber"].ToString(),orderNum);
        sql = sql + string.Format(" WHERE pdNumber='{0}'    ",Session["pdNumber"].ToString());

        OleDbSqlServerQueryRun RecordData2 = new OleDbSqlServerQueryRun(sql);
        RecordData2.RunNonQuery();
    }

    protected void igbToMain_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Main.aspx");
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
    protected void igbMyPage_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["Role"].ToString() == "Customer")
            Response.Redirect("MyPage.aspx");
        if (Session["Role"].ToString() == "Seller")
            Response.Redirect("MypageSeller.aspx");
    }
}