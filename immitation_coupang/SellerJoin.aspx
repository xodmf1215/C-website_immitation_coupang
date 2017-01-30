<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SellerJoin.aspx.cs" Inherits="SellerJoin" %>

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
        .style16
        {
            width: 650px;
            height: 57px;
        }
        .style6
        {
            width: 11px;
        }
        .style18
        {
            width: 594px;
            height: 52px;
        }
        .style14
        {
            background-color: #EFEFEF;
        }
        .style9
        {
            height: 16px;
            background-color: #EFEFEF;
        }
        .style10
        {
            width: 11px;
            height: 16px;
        }
        .style19
        {
            width: 595px;
            height: 57px;
        }
        .style12
        {
            font-family: "맑은 고딕";
            font-size: small;
            height: 17px;
        }
        .style13
        {
            font-family: "맑은 고딕";
            font-weight: bold;
            font-size: small;
        }
        .style25
        {
            width: 556px;
            height: 137px;
        }
        .style26
        {
            height: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td>
                <img alt="" class="style23" src="Images/CustomerJoin/_JoinUpLeft.png" /></td>
            <td bgcolor="#EFEFEF">
                <asp:ImageButton ID="ImbToMain0" runat="server" 
                    ImageUrl="~/Images/CustomerJoin/_JoinToMain.png" 
                    onclick="ImbToMain_Click" />
            </td>
            <td>
                <img alt="" class="style24" src="Images/CustomerJoin/_JoinUpRight.png" /></td>
        </tr>
        <tr>
            <td style="background-color: #EFEFEF">
                <img alt="" class="style16" src="Images/CustomerJoin/_Join2.PNG" /></td>
            <td class="style6">
                <table cellpadding="0" cellspacing="0" class="style1">
                    <tr>
                        <td style="background-color: #FDFDFD">
                            <img class="style25" src="Images/SellerJoin/SellerJoin1.png" /></td>
                    </tr>
                    <tr>
                        <td>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtID" runat="server" Font-Size="Large" 
                    Width="150px"></asp:TextBox>
            &nbsp;
            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" class="style18" src="Images/CustomerJoin/_Join4.PNG" /></td>
                    </tr>
                    <tr>
                        <td>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPW1" runat="server" Font-Size="Large" Width="200px" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPW2" runat="server" Font-Size="Large" 
                    Width="200px" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style14">
                <img alt="" class="style16" src="Images/CustomerJoin/_Join2.PNG" /></td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td class="style10">
                <table cellpadding="0" cellspacing="0" class="style1">
                    <tr>
                        <td>
                            <img alt="" class="style19" src="Images/CustomerJoin/_Join5.PNG" /></td>
                    </tr>
                    <tr>
                        <td class="style12">
                            <table cellpadding="0" cellspacing="0" class="style1">
                                <tr>
                                    <td>
                                        <strong>&nbsp;&nbsp;&nbsp; 이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </strong>
                                    </td>
                                    <td>
                                        <strong>
                <asp:TextBox ID="txtName" runat="server" Font-Size="Large"></asp:TextBox>
                            </strong>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <table cellpadding="0" cellspacing="0" class="style1">
                                <tr>
                                    <td>
                                        &nbsp;&nbsp; 
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <table cellpadding="0" cellspacing="0" class="style1">
                                <tr>
                                    <td>
                                        &nbsp;&nbsp;&nbsp; 주소&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" class="style1">
                                            <tr>
                                                <td>
                                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAddr" runat="server" Font-Size="Large"></asp:TextBox>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <table cellpadding="0" cellspacing="0" class="style1">
                                <tr>
                                    <td>
                                        &nbsp;&nbsp;&nbsp; </td>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" class="style1">
                                            <tr>
                                                <td>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td>
                                                <td>
                                                    &nbsp;&nbsp; </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" class="style1">
                                <tr>
                                    <td style="text-align: center">
                                        <table cellpadding="0" cellspacing="0" class="style1">
                                            <tr>
                                                <td style="text-align: right">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:ImageButton ID="btnSelJoin0" runat="server" 
                                                        ImageUrl="~/Images/CustomerJoin/_Join6.PNG" onclick="btnSelJoin_Click" />
                                                </td>
                                                <td style="text-align: left">
&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;<asp:ImageButton ID="btnSelCancel0" runat="server" 
                                                        ImageUrl="~/Images/CustomerJoin/_Join7.PNG" onclick="btnSelCancel_Click" />
                                                    <asp:Label ID="lblMSG" runat="server" ForeColor="Red"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #EFEFEF">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="style9">
                </td>
        </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
