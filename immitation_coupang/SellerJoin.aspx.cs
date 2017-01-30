using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SellerJoin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ;
    }
    protected void btnSelJoin_Click(object sender, ImageClickEventArgs e)
    {
        string sql;
        string[] sqlResult; // SQL문 실행 결과를 저장할 배열

        if (txtID.Text == "")
        {
            lblMSG.Text = "아이디를 입력하시오";
            return;
        }
        if (txtPW1.Text == "")
        {
            lblMSG.Text = "비밀번호를 입력하시오";
            return;
        }
        if (txtPW2.Text == "")
        {
            lblMSG.Text = "비밀번호 확인을 입력하시오";
            return;
        }
        if (txtAddr.Text == "")
        {
            lblMSG.Text = "주소를 입력하시오";
            return;
        }
        if (txtPW1.Text != txtPW2.Text)
        {
            lblMSG.Text = "패스워드가 다릅니다";
            return;
        }

        sql = "       SELECT     scID ";
        sql = sql + " FROM         SELL_CUSTOMER ";
        sql = sql + string.Format(" WHERE     (scID = '{0}') ", txtID.Text);  // 변수가 들어올 경우에는 {0} , {1} 해주고 뒤에 들어갈 변수를 표시해준다.

        OleDbSqlServerQueryReader RecordData1 = new OleDbSqlServerQueryReader(sql, 1);
        sqlResult = RecordData1.RunQueryCol();

        if (RecordData1.ResultExist)
        {
            lblMSG.Text = "중복된 아이디입니다";
            return;
        }

        sql = " INSERT INTO [COUPANGDB_B].[dbo].[SELL_CUSTOMER] ";
        sql = sql + " ([scID],[scName],[scPw],[scAddr]) ";
        sql = sql + " VALUES ";
        sql = sql + string.Format(" ('{0}','{1}','{2}','{3}') ", txtID.Text, txtName.Text, txtPW1.Text, txtAddr.Text);

        OleDbSqlServerQueryRun RecordData2 = new OleDbSqlServerQueryRun(sql);
        RecordData2.RunNonQuery();

        if (RecordData2.ChangeRecordCount > 0)
            lblMSG.Text = "가입 성공";
        else
            lblMSG.Text = "가입 실패";
    }
    protected void btnSelCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Main.aspx");
    }
    protected void ImbToMain_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Main.aspx");
    }
}