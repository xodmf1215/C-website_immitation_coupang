using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberJoin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ;
    }
    protected void ImbToMain_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Main.aspx");
    }
    protected void Customerbtn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("CustomerJoin.aspx");
    }
    protected void Sellerbtn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SellerJoin.aspx");
    }
}