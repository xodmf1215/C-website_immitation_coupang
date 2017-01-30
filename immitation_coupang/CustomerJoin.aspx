<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerJoin.aspx.cs" Inherits="CustomerJoin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style6
        {
            width: 11px;
        }
        .style8
        {
            font-size: x-large;
            font-family: HY강B;
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
        .style14
        {
            background-color: #EFEFEF;
        }
        .style16
        {
            width: 650px;
            height: 57px;
        }
        .style17
        {
            width: 595px;
            height: 126px;
        }
        .style18
        {
            width: 594px;
            height: 52px;
        }
        .style19
        {
            width: 595px;
            height: 57px;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td>
                <img alt="" class="style23" src="Images/CustomerJoin/_JoinUpLeft.png" /></td>
            <td bgcolor="#EFEFEF">
                <asp:ImageButton ID="ImbToMain" runat="server" 
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
                        <td>
                            <img alt="" class="style17" src="Images/CustomerJoin/_Join3.PNG" /></td>
                    </tr>
                    <tr>
                        <td>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtEmail0" runat="server" Font-Size="Large" 
                    Width="150px"></asp:TextBox>
            &nbsp;<span class="style8">@</span>
                <asp:TextBox ID="txtEmail1" runat="server" Font-Size="Large" 
                    Width="200px"></asp:TextBox>
            &nbsp;<asp:DropDownList ID="EmailAddressList" runat="server" BackColor="White" 
                                Font-Size="Medium" AutoPostBack="True" 
                                onselectedindexchanged="EmailAddressList_SelectedIndexChanged">
                                <asp:ListItem>직접 입력</asp:ListItem>
                                <asp:ListItem>naver.com</asp:ListItem>
                                <asp:ListItem>hanmail.net</asp:ListItem>
                                <asp:ListItem>gmail.com</asp:ListItem>
                                <asp:ListItem>nate.com</asp:ListItem>
                                <asp:ListItem>hotmail.com</asp:ListItem>
                                <asp:ListItem>lycos.co.kr</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="EmailCheck" runat="server" Font-Size="Small" 
                                Text="이메일 수신 동의" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" class="style18" src="Images/CustomerJoin/_Join4.PNG" /></td>
                    </tr>
                    <tr>
                        <td>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPW1" runat="server" Font-Size="Large" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPW2" runat="server" Font-Size="Large" 
                    Width="200px"></asp:TextBox>
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
                                        &nbsp;&nbsp;&nbsp; 주소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    </td>
                                    <td>
                <asp:TextBox ID="txtAddr" runat="server" Font-Size="Large"></asp:TextBox>
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
                                        &nbsp;&nbsp;&nbsp;&nbsp;전화번호</td>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" class="style1">
                                            <tr>
                                                <td>
                                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtTel" runat="server" Font-Size="Large"></asp:TextBox>
                                                </td>
                                                <td>
                                                    (010-XXXX-XXXX 형식)</td>
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
                                        &nbsp;&nbsp;&nbsp; 생년월일</td>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" class="style1">
                                            <tr>
                                                <td>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtBirth" runat="server" Font-Size="Large"></asp:TextBox>
                                                </td>
                                                <td>
                                                    &nbsp;&nbsp;
                                                    (2000-01-01 형식)</td>
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
                                                    <asp:ImageButton ID="btnCusJoin" runat="server" 
                                                        ImageUrl="~/Images/CustomerJoin/_Join6.PNG" onclick="btnCusJoin_Click" />
                                                </td>
                                                <td style="text-align: left">
&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;<asp:ImageButton ID="btnCusCancel" runat="server" 
                                                        ImageUrl="~/Images/CustomerJoin/_Join7.PNG" onclick="btnCusCancel_Click" />
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
    </form>
    </body>
</html>
