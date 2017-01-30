<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberModification.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 976px;
            height: 111px;
        }
        .style8
        {
            width: 762px;
            height: 68px;
        }
        .style12
        {
            width: 469px;
            height: 141px;
        }
        .style14
        {
            width: 974px;
            height: 71px;
        }
        .style16
        {
            width: 633px;
            height: 38px;
        }
        .style17
        {
            height: 50px;
            width: 421px;
        }
        .style18
        {
            width: 247px;
            height: 702px;
        }
        .style19
        {
            width: 150px;
            height: 39px;
        }
        .style20
        {
            width: 150px;
            height: 39px;
        }
        .style22
        {
            width: 162px;
            height: 50px;
        }
        .style24
        {
            width: 243px;
            height: 33px;
        }
        .style25
        {
            width: 295px;
            height: 45px;
        }
        .style26
        {
            height: 70px;
        }
        .style27
        {
            width: 158px;
            height: 50px;
        }
        .style28
        {
            width: 305px;
            height: 33px;
        }
        .style10
        {
            width: 100%;
            height: 0px;
        }
        .style11
        {
            width: 421px;
            height: 33px;
        }
        .style21
        {
            width: 458px;
            height: 33px;
        }
        .style23
        {
            width: 458px;
            height: 39px;
        }
        .style34
        {
            height: 36px;
        }
        .style35
        {
            width: 295px;
            height: 36px;
        }
        .style36
        {
            height: 49px;
        }
        .style37
        {
            width: 295px;
            height: 49px;
        }
        .style38
        {
            height: 70px;
            background-color: #FFFFFF;
        }
        .style39
        {
            height: 50px;
            width: 421px;
            text-align: right;
            background-color: #FFFFFF;
        }
        .style41
        {
            height: 39px;
            text-align: right;
            background-color: #FFFFFF;
        }
        .style42
        {
            height: 39px;
        }
        .style43
        {
            text-align: right;
            background-color: #FFFFFF;
        }
        .style44
        {
            font-family: HY울릉도M;
        }
        .style45
        {
            font-family: HY울릉도M;
            text-align: right;
            background-color: #FFFFFF;
        }
        .style46
        {
            width: 247px;
        }
        .style47
        {
            text-align: right;
        }
        .style48
        {
            font-family: HY강M;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    
    <table cellpadding="0" cellspacing="0" class="style10">
        <tr>
            <td bgcolor="#F0F0F0" class="style34">
                <img alt="" class="style11" src="Images/Fixed/FixedT1L1Padding.png" /></td>
            <td bgcolor="#F0F0F0" class="style35">
                <img alt="" class="style24" src="Images/Fixed/FixedT1L2_.png" /></td>
            <td bgcolor="#F0F0F0" colspan="3" >
                <table class="style10">
                    <tr>
                        <td>
                            <img alt="" class="style28" src="Images/Fixed/FixedT1L2-3.png" /></td>
                        <td>
                            <asp:ImageButton ID="igbLogin" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedT1L3Login.png" onclick="igbLogin_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblName" runat="server" 
                                style="font-weight: 700; font-family: HY울릉도M;"></asp:Label>
                        </td>
                        <td>
                            <asp:ImageButton ID="igbCusCenter" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedT1L4CusCenter.png" />
                        </td>
                        <td>
                            <asp:ImageButton ID="igbMyPage" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedT1L5Mypage.png" onclick="igbMyPage_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="igbBasket" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedT1L6Cart.png" />
                        </td>
                    </tr>
                </table>
            </td>
            <td bgcolor="#F0F0F0" >
                <img alt="" class="style21" src="Images/Fixed/FixedT1L7Padding_.png" /></td>
        </tr>
        <tr>
            <td bgcolor="#EAEDF1" class="style36" >
                <img alt="" class="style17" src="Images/Fixed/FixedT2L1Padding.png" /></td>
            <td bgcolor="#F0F0F0" class="style37">
                <asp:ImageButton ID="igbToMain" runat="server" 
                    ImageUrl="~/Images/Fixed/FixedT2L2ToMain.png" onclick="igbToMain_Click" />
            </td>
            <td bgcolor="#F0F0F0" class="style36" >
                <table class="style10">
                    <tr>
                        <td class="style27">
                            <asp:TextBox ID="txtSearch" runat="server" Height="32px" Width="618px"></asp:TextBox>
                        </td>
                        <td class="style26">
                            <asp:ImageButton ID="igbSearch" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedT2L3SerchBtn.png" />
                        </td>
                    </tr>
                </table>
            </td>
            <td bgcolor="#F0F0F0" colspan="3" class="style36" >
                <img alt="" class="style22" src="Images/Fixed/FixedT2L4Padding_.png" /></td>
        </tr>
        <tr>
            <td>
                <img alt="" class="style19" src="Images/Fixed/FixedT3L1Padding.png" /></td>
            <td class="style25">
                <img alt="" class="style20" src="Images/Fixed/FixedT3L2Category.png" /></td>
            <td colspan="2">
                <table class="style10">
                    <tr>
                        <td>
                            <asp:Label ID="lblCatFood" runat="server" Font-Size="XX-Large" 
                                style="font-family: HY동녘M; font-size: x-large;" Text="식품"></asp:Label>
                            <asp:ImageButton ID="ibgFixFood1" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedCtg1-1(1).png" />
                            <asp:ImageButton ID="ibgFixFood2" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedCtg1-2(1).png" />
                        </td>
                        <td>
                            <asp:Label ID="lblCatCloth" runat="server" 
                                style="font-family: HY동녘M; font-size: x-large;" Text="의류"></asp:Label>
                            <asp:ImageButton ID="ibgFixCloth1" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedCtg2-1(1).png" />
                            <asp:ImageButton ID="ibgFixCloth2" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedCtg2-2(1).png" />
                        </td>
                        <td>
                            <asp:Label ID="lblCatDigit" runat="server" 
                                style="font-size: x-large; font-family: HY동녘M" Text="가전"></asp:Label>
                            <asp:ImageButton ID="ibgFixDigit1" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedCtg3-1(1).png" />
                            <asp:ImageButton ID="ibgFixDigit2" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedCtg3-2(2).png" />
                        </td>
                    </tr>
                </table>
            </td>
            <td colspan="2">
                <img alt="" class="style23" src="Images/Fixed/FixedT3L3Padding_.png" /></td>
        </tr>
    </table>
    
        <br />
    
        <table class="style1">
            <tr>
                <td rowspan="10" class="style46">
                    <img alt="" class="style18" 
                        src="Images/MemberModification/Membermodification_side__.png" /></td>
                <td colspan="3">
                    <img alt="" class="style3" 
                        src="Images/MemberModification/Membermodification_center1.png" /></td>
                <td rowspan="10">
                    <img alt="" class="style18" 
                        src="Images/MemberModification/Membermodification_side__.png" /></td>
            </tr>
            <tr>
                <td class="style43">
                    <asp:Label ID="Label_email" runat="server" CssClass="style48" Text="E-mail"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:Button ID="btnEmailCheck" runat="server" Text="중복체크" 
                        style="font-family: HY강M" />
                </td>
                <td>
                    <img alt="" class="style16" 
                        src="Images/MemberModification/Membermodification_center-side.png" /></td>
            </tr>
            <tr>
                <td class="style43">
                    <asp:Label ID="Label_name" runat="server" CssClass="style48" Text="이 름"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <img alt="" class="style16" 
                        src="Images/MemberModification/Membermodification_center-side.png" /></td>
            </tr>
            <tr>
                <td class="style43">
                    <asp:Label ID="Label_phone" runat="server" CssClass="style48" Text="휴대폰 번호"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                </td>
                <td>
                    <img alt="" class="style16" 
                        src="Images/MemberModification/Membermodification_center-side.png" /></td>
            </tr>
            <tr>
                <td class="style45">
                    </td>
                <td colspan="2">
                    <img alt="" class="style8" 
                        src="Images/MemberModification/Membermodification_PW2.png" /></td>
            </tr>
            <tr>
                <td bgcolor="White" class="style47">
                    <asp:Label ID="Label_currPW1" runat="server" CssClass="style48" Text="현재 비밀번호"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPW1" runat="server"></asp:TextBox>
                </td>
                <td rowspan="3">
                    <img alt="" class="style12" 
                        src="Images/MemberModification/Membermodification_PW6.png" /></td>
            </tr>
            <tr>
                <td class="style41">
                    <asp:Label ID="Label_modify" runat="server" CssClass="style48" Text="비밀번호 변경"></asp:Label>
                    <span class="style44">&nbsp;<asp:Label ID="Label_공백" runat="server" 
                        CssClass="style44" Text="    "></asp:Label>
                    </span>
                    <asp:Label ID="Label_PW3" runat="server" CssClass="style48" Text="신규 비밀번호"></asp:Label>
                </td>
                <td class="style42">
                    <asp:TextBox ID="txtPW2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style39">
                    <asp:Label ID="Label_PW2" runat="server" CssClass="style48" Text="비밀번호 다시 입력"></asp:Label>
                </td>
                <td class="style17">
                    <asp:TextBox ID="txtPW3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style38">
                    <img alt="" class="style28" 
                        
                        src="Images/MemberModification/Membermodification_modification_side_.png" /></td>
                <td class="style26">
                    <asp:ImageButton ID="btnModification" runat="server" EnableTheming="True" 
                        
                        
                        ImageUrl="~/Images/MemberModification/Membermodification_modification3.png" 
                        onclick="btnModification_Click" />
                    <asp:Label ID="lblMSG" runat="server" 
                        style="font-family: HY강M; color: #FF0000;"></asp:Label>
                </td>
                <td class="style26">
                    <img alt="" class="style28" 
                        
                        src="Images/MemberModification/Membermodification_modification_side_.png" /></td>
            </tr>
            <tr>
                <td colspan="3">
                    <img alt="" class="style14" 
                        src="Images/MemberModification/Membermodification_center-bottom.png" /></td>
            </tr>
        </table>
    
    
    </form>
</body>
</html>
