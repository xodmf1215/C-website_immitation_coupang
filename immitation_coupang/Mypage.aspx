<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mypage.aspx.cs" Inherits="Mypage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style10
        {
            width: 100%;
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
            width: 152px;
            height: 121px;
        }
        .style30
        {
            width: 148px;
            height: 36px;
        }
        .style31
        {
            height: 20px;
        }
        .style32
        {
            width: 150px;
            height: 32px;
        }
        .style33
        {
            width: 829px;
            height: 81px;
        }
        .style34
        {
            width: 148px;
            height: 158px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                                ImageUrl="~/Images/Fixed/FixedT1L5Mypage.png"  />
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
                    ImageUrl="~/Images/Fixed/FixedT2L2ToMain.png" onclick="igbToMain_Click" />
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
    <table class="style10">
        <tr>
            <td>
                <img alt="" class="style29" src="Images/MyPage/mypage_mycoupang.png" /></td>
            <td>
              &nbsp;</td>
        </tr>
        <tr>
            <td>
                <img alt="" class="style30" src="Images/MyPage/mypage_imfo.png" /></td>
            <td rowspan="4">
                <img alt="" class="style33" src="Images/MyPage/mypage_orderbig.png" /></td>
        </tr>
        <tr>
            <td class="style31">
                <asp:ImageButton ID="imgMemberModification" runat="server" 
                    ImageUrl="~/Images/MyPage/mypage_MemberModification.png" 
                    onclick="imgMemberModification_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <img alt="" class="style32" src="Images/MyPage/mypage_shopping.png" /></td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="imbOrder" runat="server" 
                    ImageUrl="~/Images/MyPage/mypage_order.png" onclick="imbOrder_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <img alt="" class="style34" src="Images/MyPage/mypage_left.png" /></td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="font-family: HY강M" 
                    >
                    <Columns>
                        <asp:BoundField DataField="biDate" HeaderText="구매일" SortExpression="biDate" />
                        <asp:BoundField DataField="pdName" HeaderText="상품명" SortExpression="pdName" />
                        <asp:BoundField DataField="biCost" HeaderText="가격" SortExpression="biCost" />
                    </Columns>
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:COUPANGDB_BConnectionString3 %>" 
                    SelectCommand="SELECT BUY_INFO.biDate, PRODUCT.pdName, BUY_INFO.biCost FROM BUY_INFO INNER JOIN PRODUCT ON BUY_INFO.bipdNumber = PRODUCT.pdNumber">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
