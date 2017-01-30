<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style10
        {
            color: #C0C0C0;
            font-size: small;
            font-family: HY동녘B;
        }
        .style14
        {
            font-size: small;
            font-family: HY동녘B;
        }
        .style31
        {
            text-align: center;
            background-color: #FFFFFF;
        }
        .style33
        {
            text-align: justify;
        }
        .style34
        {
            text-align: center;
            background-color: #FDFDFD;
        }
        .style35
        {
            text-align: center;
            background-color: #EFEFEF;
        }
        .style36
        {
            background-color: #EFEFEF;
        }
        .style38
        {
            text-align: center;
            background-color: #F0F0F0;
        }
        .style39
        {
            background-color: #F0F0F0;
        }
        .style41
        {
            text-align: center;
            background-color: #F1F1F1;
        }
        .style42
        {
            text-align: center;
            height: 3px;
            background-color: #EFEFEF;
        }
        .style43
        {
            text-align: center;
            height: 3px;
            background-color: #F0F0F0;
        }
        .style44
        {
            text-align: center;
            height: 3px;
            background-color: #FFFFFF;
        }
        .style45
        {
            text-align: justify;
            height: 3px;
        }
        .style48
        {
            text-align: center;
            height: 38px;
            background-color: #FFFFFF;
        }
        .style49
        {
            text-align: center;
            height: 38px;
            background-color: #EFEFEF;
        }
        .style50
        {
            text-align: center;
            height: 38px;
            background-color: #F0F0F0;
        }
        .style51
        {
            text-align: center;
            height: 35px;
            background-color: #EFEFEF;
        }
        .style52
        {
            text-align: center;
            height: 35px;
            background-color: #F0F0F0;
        }
        .style54
        {
            width: 1899px;
            height: 81px;
        }
        .style55
        {
            width: 505px;
            height: 31px;
        }
        .style56
        {
            text-align: center;
            background-color: #EFEFEF;
            height: 36px;
        }
        .style57
        {
            text-align: center;
            background-color: #F0F0F0;
            height: 36px;
        }
        .style58
        {
            text-align: center;
            background-color: #FFFFFF;
            height: 36px;
        }
        .style59
        {
            text-align: justify;
            height: 36px;
            background-color: #FDFDFD;
        }
        .style60
        {
            width: 427px;
            height: 333px;
        }
        .style61
        {
            width: 427px;
            height: 117px;
        }
        .style62
        {
            text-align: center;
            background-color: #FDFDFD;
        }
        .style64
        {
            width: 425px;
            height: 55px;
        }
        .style65
        {
            width: 319px;
            height: 36px;
        }
        .style66
        {
            text-align: center;
            background-color: #FDFDFD;
            height: 36px;
        }
        .style67
        {
            width: 1901px;
            height: 339px;
            font-family: HY동녘B;
        }
        .style68
        {
            width: 20px;
            height: 18px;
        }
        .style69
        {
            background-color: #F3F3F3;
        }
        .style70
        {
            text-align: center;
            height: 38px;
            background-color: #F1F1F1;
        }
        .style71
        {
            text-align: center;
            height: 3px;
            background-color: #F1F1F1;
        }
        .style72
        {
            text-align: center;
            background-color: #F1F1F1;
            height: 36px;
        }
        .style73
        {
            text-align: center;
            height: 35px;
            background-color: #F1F1F1;
        }
        .style74
        {
            background-color: #F1F1F1;
        }
        .style75
        {
            width: 428px;
            height: 98px;
        }
        .style76
        {
            width: 430px;
            height: 35px;
        }
        .style77
        {
            font-family: HY나무L;
        }
        .style78
        {
            font-family: HY동녘B;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td colspan="5">
                <img class="style54" src="Images/Login1/Login1.png" /></td>
        </tr>
        <tr>
            <td class="style51" rowspan="2">
                <img class="style55" src="Images/Login1/Login2.png" /></td>
            <td class="style31" rowspan="5">
                <img class="style60" src="Images/Login1/Login3.png" /></td>
            <td class="style52" rowspan="2">
                &nbsp;</td>
            <td class="style34">
                <img class="style75" src="Images/Login1/Login6-1.png" /></td>
            <td class="style73" rowspan="2">
                <img class="style55" src="Images/Login1/Login2.png" /></td>
        </tr>
        <tr>
            <td class="style34" rowspan="6">
                <asp:Panel ID="Loginpanel0" runat="server" DefaultButton="imbLogin">
                    <table cellpadding="0" cellspacing="0" class="style1">
                        <tr>
                            <td class="style34" colspan="3">
                                <strong>
                                <asp:RadioButton ID="Buyrbtn" runat="server" GroupName="LoginGroup" 
                    style="font-family: '맑은 고딕'" Text="구매자" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="Sellrbtn" runat="server" GroupName="LoginGroup" 
                    style="font-family: '맑은 고딕'" Text="판매자" />
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="style34" colspan="3">
                                <img class="style76" src="Images/Login1/Login6-2.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style66">
                                &nbsp; &nbsp;</td>
                            <td class="style59">
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtEmail" runat="server" Font-Size="Large" 
                        ontextchanged="txtEmail_TextChanged" style="height: 24px" 
                    Width="190px"></asp:TextBox>
                                <asp:Label ID="lblIDMSG" runat="server" ForeColor="Red" CssClass="style77"></asp:Label>
                            </td>
                            <td class="style58">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <img class="style64" src="Images/Login1/Login7.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style31">
                            </td>
                            <td class="style33">
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtPW" runat="server" Font-Size="Large" 
                    TextMode="Password" Width="190px"></asp:TextBox>
                                <asp:Label ID="lblPWMSG" runat="server" ForeColor="Red" CssClass="style77"></asp:Label>
                            </td>
                            <td class="style31">
                            </td>
                        </tr>
                        <tr>
                            <td class="style31">
                            </td>
                            <td style="text-align: left">
                                &nbsp;&nbsp;&nbsp;
                                <asp:CheckBox ID="chkIDSave" runat="server" Font-Names="돋움" Font-Size="Small" 
                        Text="로그인 상태 유지" style="text-align: left" CssClass="style77" />
                            </td>
                            <td class="style31">
                            </td>
                        </tr>
                        <tr>
                            <td class="style44">
                            </td>
                            <td class="style45">
                                &nbsp;&nbsp;&nbsp;
                                <img class="style65" src="Images/Login1/Login8-1.PNG" />
                            </td>
                            <td class="style44">
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style56">
                </td>
            <td class="style57">
            </td>
            <td class="style72">
            </td>
        </tr>
        <tr>
            <td class="style36">
                &nbsp;</td>
            <td class="style39">
                <img class="style68" src="Images/Login1/Login11.PNG" /></td>
            <td class="style74">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style35">
                &nbsp;</td>
            <td class="style38">
            </td>
            <td class="style41">
            </td>
        </tr>
        <tr>
            <td class="style35">
                &nbsp;</td>
            <td class="style62" rowspan="2">
                    <asp:ImageButton ID="imbMemberJoin" runat="server" 
                        ImageUrl="~/Images/Login1/Login4.png" onclick="ImbMemberJoin_Click" 
                        style="background-color: #FDFDFD" />
                </td>
            <td class="style38">
            </td>
            <td class="style41">
            </td>
        </tr>
        <tr>
            <td class="style42">
            </td>
            <td class="style43">
            </td>
            <td class="style71">
            </td>
        </tr>
        <tr>
            <td class="style49">
            </td>
            <td class="style62" rowspan="2">
                <img class="style61" src="Images/Login1/Login5.png" /></td>
            <td class="style50">
            </td>
            <td class="style48">
                    <asp:ImageButton ID="imbLogin" runat="server" ImageUrl="~/Images/Login1/Login9.png" 
                        onclick="imbLogin_Click1" />
                </td>
            <td class="style70">
            </td>
        </tr>
        <tr>
            <td class="style35">
                &nbsp;</td>
            <td class="style38">
            </td>
            <td class="style31">
                    <asp:HyperLink ID="hlkIDSearch" runat="server" CssClass="style14" 
                    NavigateUrl="~/Login.aspx">아이디 찾기</asp:HyperLink>
                    <span class="style14">| </span>
                    <asp:HyperLink ID="hlkPWSearch" runat="server" CssClass="style14" 
                    NavigateUrl="~/Login.aspx">비밀번호 찾기</asp:HyperLink>
&nbsp;<span class="style10">아직도 쿠팡 회원이 아니세요?</span>
                    <asp:HyperLink ID="hlkMemberJoin" runat="server" CssClass="style14" 
                        ForeColor="Blue" NavigateUrl="~/MemberJoin.aspx">회원가입</asp:HyperLink>
                    <br class="style78" />
                </td>
            <td class="style41">
            </td>
        </tr>
        <tr>
            <td colspan="5" class="style69">
                <img class="style67" src="Images/Login1/Login10.PNG" /></td>
        </tr>
    </table>
    
    </div>
    <asp:Panel ID="Loginpanel" runat="server" DefaultButton="imbLogin">
    </asp:Panel>
    </form>
</body>
</html>
