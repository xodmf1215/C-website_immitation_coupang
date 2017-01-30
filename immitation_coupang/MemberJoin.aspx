<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberJoin.aspx.cs" Inherits="MemberJoin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style23
        {
            width: 650px;
            height: 60px;
        }
        .style24
        {
            width: 1123px;
            height: 60px;
        }
        .style27
        {
            width: 481px;
            height: 36px;
        }
        .style29
        {
            background-color: #F1F1F1;
        }
        .style30
        {
            background-color: #F1F1F1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style29">
                <img alt="" class="style23" src="Images/CustomerJoin/_JoinUpLeft.png" /></td>
                <td class="style29" colspan="2">
                <asp:ImageButton ID="ImbToMain" runat="server" 
                    ImageUrl="~/Images/CustomerJoin/_JoinToMain.png" onclick="ImbToMain_Click" />
                </td>
                <td class="style29" colspan="3">
                <img alt="" class="style24" src="Images/CustomerJoin/_JoinUpRight.png" /></td>
            </tr>
            <tr>
                <td class="style30">
                    &nbsp;</td>
                <td class="style30">
                    &nbsp;</td>
                <td class="style30" colspan="4">
                    <img class="style27" src="Images/MemberJoin/Memberad.png" /></td>
            </tr>
            <tr>
                <td class="style29">
                    &nbsp;</td>
                <td class="style29" colspan="2">
                    &nbsp;</td>
                <td class="style29">
                    &nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="style29">
                    <asp:ImageButton ID="Customerbtn" runat="server" 
                        ImageUrl="~/Images/MemberJoin/customerbtn.png" onclick="Customerbtn_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="Sellerbtn" runat="server" 
                        ImageUrl="~/Images/MemberJoin/Sellerbtn.png" onclick="Sellerbtn_Click" />
                </td>
                <td class="style29">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style29">
                    &nbsp;</td>
                <td class="style29" colspan="2">
                    &nbsp;</td>
                <td class="style29" colspan="3">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
