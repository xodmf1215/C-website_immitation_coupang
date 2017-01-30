using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadFixed();
       if (SessionExist("Email"))
        {
            if (!IsPostBack)
                MemberInformationLoad();
        }
        else
            Response.Redirect("Login.aspx");
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
    public void MemberInformationLoad()
    {

        string sql; //SQL문
        string[] sqlResult; //SQL문 실행 결과를 저장할 배열


        sql = "       SELECT     bcEmail, bcName, bcPw, bcTel ";
        sql = sql + " FROM         BUY_CUSTOMER ";
        sql = sql + string.Format(" WHERE     (bcEmail = '{0}') ",Session["Email"].ToString());

        OleDbSqlServerQueryReader RecordData = new OleDbSqlServerQueryReader(sql, 5);
        sqlResult = RecordData.RunQueryCol();

        if (RecordData.ResultExist)
        {
            txtEmail.Text = sqlResult[0];
            txtName.Text = sqlResult[1];
            txtTel.Text = sqlResult[3];
        }
        else
            lblMSG.Text = "개인정보 로드 실패! 다시 시도하세요";

        //DB에서 ID, PW 체크
        
    }
    protected void btnModification_Click(object sender, EventArgs e)
    {

        string sql;

        if (txtEmail.Text == "")
        {
            lblMSG.Text = "Email을 입력하시오";
            return;
        }
        if (txtTel.Text == "")
        {
            lblMSG.Text = "전화번호를 입력하시오";
            return;
        }
        if (txtPW2.Text.Length > 0)
        {
            if (txtPW2.Text != txtPW3.Text)
            {
                lblMSG.Text = "패스워드가 다릅니다";
                return;
            }
        }

        sql = "       UPDATE [COUPANGDB_B].[dbo].[BUY_CUSTOMER] ";
        sql = sql + string.Format(" SET [bcName] = '{0}', ", txtName.Text);
        
        if (txtPW2.Text.Length > 0)
            sql = sql + string.Format("     [bcPw] = '{0}', ", txtPW2.Text);
        sql = sql + string.Format("     [bcEmail] = '{0}',[bcTel] = '{1}' ", txtEmail.Text, txtTel.Text);
        sql = sql + string.Format(" WHERE bcEmail = '{0}'", Session["Email"].ToString());

        OleDbSqlServerQueryRun RecordData2 = new OleDbSqlServerQueryRun(sql);
        RecordData2.RunNonQuery();

        if (RecordData2.ChangeRecordCount > 0)
        {
            lblMSG.Text = "수정 성공";
        }
        else
        {
            lblMSG.Text = "수정 실패";
        }
    }


    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mypage.aspx");
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

    protected void igbToMain_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Main.aspx");
    }
    protected void igbMyPage_Click(object sender, ImageClickEventArgs e)
    {
        if (SessionExist("Email"))
        {
            Response.Redirect("Mypage.aspx");
        }
    }

    protected void igbLogin_Click(object sender, ImageClickEventArgs e)
    {
        if (SessionExist("Email"))
        {
            Session.Clear();
            Response.Redirect("Main.aspx");
        }
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