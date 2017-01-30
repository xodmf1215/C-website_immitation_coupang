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
        //초기값
        lblIDMSG.Text = "";
        lblPWMSG.Text = "";
        if (!IsPostBack)
        {
            //쿠키값 불러오기
            if (Request.Cookies["CookieEmail"] != null)
                txtEmail.Text = Request.Cookies["CookieEmail"].Value;
        }
    }
    protected void imbLogin_Click1(object sender, ImageClickEventArgs e)
    {

        //DB에서 ID, PW 체크
        string sql; //SQL문
        string[] sqlResult; //SQL문 실행 결과를 저장할 배열
        if (Buyrbtn.Checked.Equals(true))
        {
            sql = "       SELECT     bcPw, bcName ";
            sql = sql + " FROM         BUY_CUSTOMER ";
            sql = sql + string.Format(" WHERE     (bcEmail = '{0}') ", txtEmail.Text);  // 변수가 들어올 경우에는 {0} , {1} 해주고 뒤에 들어갈 변수를 표시해준다.

            OleDbSqlServerQueryReader RecordData = new OleDbSqlServerQueryReader(sql, 2);
            sqlResult = RecordData.RunQueryCol();

            if (RecordData.ResultExist)
            {
                if (txtPW.Text == sqlResult[0])
                {
                    //세션값 저장
                    Session["Email"] = txtEmail.Text;
                    Session["Name"] = sqlResult[1];
                    Session["Role"] = "Customer";

                    //로그인 상태 유지 체크시 ID를 쿠키에 저장
                    HttpCookie ckEmail = new HttpCookie("CookieEmail");
                    DateTime now = DateTime.Now;
                    TimeSpan span = new TimeSpan(7, 0, 0, 0);

                    ckEmail.Value = txtEmail.Text;
                    ckEmail.Expires = now + span;
                    Response.Cookies.Add(ckEmail);

                    //페이지 이동
                    Response.Redirect("Main.aspx");
                }
                else
                    lblPWMSG.Text = " PW가 일치하지 않습니다";
            }
            else
                lblIDMSG.Text = " ID가 존재하지 않습니다";
        }
        else if (Sellrbtn.Checked.Equals(true))
        {
            sql = "       SELECT     scPw, scName ";
            sql = sql + " FROM         SELL_CUSTOMER ";
            sql = sql + string.Format(" WHERE     (scID = '{0}') ", txtEmail.Text);  // 변수가 들어올 경우에는 {0} , {1} 해주고 뒤에 들어갈 변수를 표시해준다.

            OleDbSqlServerQueryReader RecordData = new OleDbSqlServerQueryReader(sql, 2);
            sqlResult = RecordData.RunQueryCol();

            if (RecordData.ResultExist)
            {
                if (txtPW.Text == sqlResult[0])
                {
                    //세션값 저장
                    Session["Email"] = txtEmail.Text;
                    Session["Name"] = sqlResult[1];
                    Session["Role"] = "Seller";

                    //로그인 상태 유지 체크시 ID를 쿠키에 저장
                    HttpCookie ckEmail = new HttpCookie("CookieEmail");
                    DateTime now = DateTime.Now;
                    TimeSpan span = new TimeSpan(7, 0, 0, 0);

                    ckEmail.Value = txtEmail.Text;
                    ckEmail.Expires = now + span;
                    Response.Cookies.Add(ckEmail);

                    //페이지 이동
                    Response.Redirect("Main.aspx");
                }
                else
                    lblPWMSG.Text = " PW가 일치하지 않습니다";
            }
            else
                lblIDMSG.Text = " ID가 존재하지 않습니다";
        }
        else
            lblIDMSG.Text = " 체크 오류입니다 ";
    }
    protected void ImbMemberJoin_Click(object sender, ImageClickEventArgs e)
    {
        //페이지 이동
        Response.Redirect("MemberJoin.aspx");
    }
    protected void txtEmail_TextChanged(object sender, EventArgs e)
    {

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
}