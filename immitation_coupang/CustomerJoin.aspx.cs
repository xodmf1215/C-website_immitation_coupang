using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerJoin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ;
    }
    protected void btnCusJoin_Click(object sender, ImageClickEventArgs e)
    {
        string sql;
        string[] sqlResult; //SQL문 실행 결과를 저장할 배열

        if (txtEmail0.Text == "" || txtEmail1.Text == "")
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
        if (txtTel.Text == "")
        {
            lblMSG.Text = "전화번호를 입력하시오";
            return;
        }
        if (txtPW1.Text != txtPW2.Text)
        {
            lblMSG.Text = "패스워드가 다릅니다";
            return;
        }

        sql = "       SELECT     bcEmail ";
        sql = sql + " FROM         BUY_CUSTOMER ";
        sql = sql + string.Format(" WHERE     (bcEmail = '{0}') ", txtEmail0.Text + "@" + txtEmail1.Text);  // 변수가 들어올 경우에는 {0} , {1} 해주고 뒤에 들어갈 변수를 표시해준다.

        OleDbSqlServerQueryReader RecordData1 = new OleDbSqlServerQueryReader(sql, 1);
        sqlResult = RecordData1.RunQueryCol();

        if (RecordData1.ResultExist)
        {
            lblMSG.Text = "중복된 아이디입니다";
            return;
        }

        sql = " INSERT INTO [COUPANGDB_B].[dbo].[BUY_CUSTOMER] ";
        sql = sql + " ([bcEmail],[bcName],[bcPw],[bcAddr],[bcTel],[bcBirth],[bcRank]) ";
        sql = sql + " VALUES ";
        sql = sql + string.Format(" ('{0}','{1}','{2}','{3}','{4}','{5}','3') ", txtEmail0.Text + "@" + txtEmail1.Text, txtName.Text, txtPW1.Text, txtAddr.Text, txtTel.Text, txtBirth.Text);

        OleDbSqlServerQueryRun RecordData2 = new OleDbSqlServerQueryRun(sql);
        RecordData2.RunNonQuery();

        if (RecordData2.ChangeRecordCount > 0)
            lblMSG.Text = "가입 성공";
        else
            lblMSG.Text = "가입 실패";
    }
    protected void btnCusCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void ImbToMain_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Main.aspx");
    }
    protected void EmailAddressList_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtEmail1.Text = EmailAddressList.SelectedValue;
    }
}