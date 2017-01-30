<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MypageSeller.aspx.cs" Inherits="MypageSeller" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 1884px;
            height: 48px;
        }
        .style3
        {
            height: 20px;
        }
        .style4
        {
            width: 311px;
            height: 39px;
        }
        .style5
        {
            height: 29px;
            background-color: #FFFFCC;
        }
        .style6
        {
            height: 29px;
            width: 101px;
            background-color: #FFFFCC;
        }
        .style10
        {
            width: 100%;
            height: 41px;
        }
        .style11
        {
            width: 421px;
            height: 33px;
        }
        .style25
        {
            width: 265px;
        }
        .style24
        {
            width: 243px;
            height: 33px;
        }
        .style28
        {
            width: 305px;
            height: 33px;
        }
        .style21
        {
            width: 458px;
            height: 33px;
        }
        .style17
        {
            width: 421px;
            height: 50px;
        }
        .style27
        {
            width: 330px;
        }
        .style26
        {
            width: 9px;
        }
        .style22
        {
            width: 458px;
            height: 50px;
        }
        .style19
        {
            width: 421px;
            height: 39px;
        }
        .style20
        {
            width: 150px;
            height: 39px;
        }
        .style23
        {
            width: 458px;
            height: 39px;
        }
        .style29
        {
            font-family: HY강M;
        }
        .style30
        {
            height: 20px;
            text-align: right;
        }
        .style31
        {
            text-align: right;
        }
        .style32
        {
            background-color: #FFFFCC;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table cellpadding="0" cellspacing="0" class="style10">
        <tr>
            <td bgcolor="#F0F0F0">
                <img alt="" class="style11" src="Images/Fixed/FixedT1L1Padding.png" /></td>
            <td bgcolor="#F0F0F0" class="style25">
                <img alt="" class="style24" src="Images/Fixed/FixedT1L2_.png" /></td>
            <td bgcolor="#F0F0F0" colspan="3">
                <table class="style10">
                    <tr>
                        <td>
                            <img alt="" class="style28" src="Images/Fixed/FixedT1L2-3.png" /></td>
                        <td>
                            <asp:ImageButton ID="igbLogin" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedT1L3Login.png" onclick="igbLogin_Click"  />
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
                                ImageUrl="~/Images/Fixed/FixedT1L5Mypage.png" onclick="igbMyPage_Click"  />
                        </td>
                        <td>
                            <asp:ImageButton ID="igbBasket" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedT1L6Cart.png" />
                        </td>
                    </tr>
                </table>
            </td>
            <td bgcolor="#F0F0F0">
                <img alt="" class="style21" src="Images/Fixed/FixedT1L7Padding_.png" /></td>
        </tr>
        <tr>
            <td bgcolor="#EAEDF1">
                <img alt="" class="style17" src="Images/Fixed/FixedT2L1Padding.png" /></td>
            <td bgcolor="#F0F0F0" class="style25">
                <asp:ImageButton ID="igbToMain" runat="server" 
                    ImageUrl="~/Images/Fixed/FixedT2L2ToMain.png"  />
            </td>
            <td bgcolor="#F0F0F0">
                <table class="style10">
                    <tr>
                        <td class="style27">
                            <asp:TextBox ID="txtSearch" runat="server" Height="32px" Width="618px"></asp:TextBox>
                        </td>
                        <td class="style26">
                            <asp:ImageButton ID="igbSearch" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedT2L3SerchBtn.png" 
                                onclick="igbSearch_Click" />
                        </td>
                    </tr>
                </table>
            </td>
            <td bgcolor="#F0F0F0" colspan="3">
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
                                ImageUrl="~/Images/Fixed/FixedCtg1-1(1).png" onclick="ibgFixFood1_Click" />
                            <asp:ImageButton ID="ibgFixFood2" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedCtg1-2(1).png" onclick="ibgFixFood2_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblCatCloth" runat="server" 
                                style="font-family: HY동녘M; font-size: x-large;" Text="의류"></asp:Label>
                            <asp:ImageButton ID="ibgFixCloth1" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedCtg2-1(1).png" 
                                onclick="ibgFixCloth1_Click" />
                            <asp:ImageButton ID="ibgFixCloth2" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedCtg2-2(1).png" 
                                onclick="ibgFixCloth2_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblCatDigit" runat="server" 
                                style="font-size: x-large; font-family: HY동녘M" Text="가전"></asp:Label>
                            <asp:ImageButton ID="ibgFixDigit1" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedCtg3-1(1).png" 
                                onclick="ibgFixDigit1_Click" />
                            <asp:ImageButton ID="ibgFixDigit2" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedCtg3-2(2).png" 
                                onclick="ibgFixDigit2_Click" />
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
                <td colspan="3">
                    <img alt="" class="style2" src="Images/MyPage/mypage_seller_top.png" /></td>
            </tr>
            <tr>
                <td class="style5">
                    <img alt="" class="style4" src="Images/MyPage/mypageseller_top2.png" /><asp:Label 
                        ID="lblMSG" runat="server" style="font-family: HY강M; color: #FF0000"></asp:Label>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Button ID="btnAccount" runat="server" onclick="btnAccount_Click" 
                        Text="판매 결산" style="font-family: HY그래픽" />
                </td>
            </tr>
            <tr>
                <td class="style32">
                    <table class="style1">
                        <tr>
                            <td class="style30">
                                <asp:Label ID="lblpdName" runat="server" Text="상품명" CssClass="style29"></asp:Label>
                            </td>
                            <td class="style3">
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style31">
                                <asp:Label ID="lblCost" runat="server" Text="가격" CssClass="style29"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCost" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style31">
                                <asp:Label ID="lblTotal" runat="server" Text="총 수량" CssClass="style29"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style31">
                                <asp:Label ID="lblspan" runat="server" Text="판매기간" CssClass="style29"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtSpan" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="lblctNumber" runat="server" Text="카테고리 분류" CssClass="style29"></asp:Label>
                            </td>
                            <td class="style3">
                                <asp:DropDownList ID="ddlCategory" runat="server">
                                    <asp:ListItem Value="1">식품-맛집</asp:ListItem>
                                    <asp:ListItem Value="2">식품-가공식품</asp:ListItem>
                                    <asp:ListItem Value="3">의류-여성의류</asp:ListItem>
                                    <asp:ListItem Value="4">의류-남성의류</asp:ListItem>
                                    <asp:ListItem Value="5">가전-생활가전</asp:ListItem>
                                    <asp:ListItem Value="6">가전-자동차용품</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button ID="btnRegister" runat="server" onclick="btnRegister_Click" 
                                    Text="상품 등록" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td colspan="2" class="style32">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        style="font-family: HY강M" CssClass="style32" 
                        >
                        <Columns>
                            <asp:BoundField DataField="pdName" HeaderText="상품명" SortExpression="pdName" />
                            <asp:BoundField DataField="Expr1" HeaderText="총 판매금액" ReadOnly="True" 
                                SortExpression="Expr1" />
                            <asp:BoundField DataField="pdRemain" HeaderText="남은 수량" 
                                SortExpression="pdRemain" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:COUPANGDB_BConnectionString2 %>" SelectCommand="SELECT     pdName, (pdTotal - pdRemain) * pdCost AS Expr1, pdRemain
FROM         PRODUCT">
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
