<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 37%;
        }
        .style5
        {
            height: 69px;
        }
        .style10
        {
            width: 100%;
        }
        .style11
        {
            width: 421px;
            height: 33px;
        }
        .style17
        {
            width: 421px;
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
        .style21
        {
            width: 458px;
            height: 33px;
        }
        .style22
        {
            width: 458px;
            height: 50px;
        }
        .style23
        {
            width: 458px;
            height: 39px;
        }
        .style24
        {
            width: 243px;
            height: 33px;
        }
        .style25
        {
            width: 265px;
        }
        .style26
        {
            width: 9px;
        }
        .style27
        {
            width: 330px;
        }
        .style28
        {
            width: 305px;
            height: 33px;
        }
        .style29
        {
            width: 421px;
            height: 416px;
        }
        .style30
        {
            width: 458px;
            height: 416px;
        }
        .style31
        {
            background-color: #CCFFFF;
        }
        </style>
</head>
<body class="style50">
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
                                ImageUrl="~/Images/Fixed/FixedT2L3SerchBtn.png" onclick="igbSearch_Click"/>
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
            <td class="style5" rowspan="3">
                <img alt="" class="style29" src="Images/Main/MainL1Padding.png" /></td>
            <td class="style5">
                <asp:ImageButton ID="igbCtgFood" runat="server" 
                    ImageUrl="~/Images/Main/MainL2C1.png" onclick="igbCtgFood_Click" />
                <br />
                <asp:ImageButton ID="igbCtgFoodSub" runat="server" 
                    ImageUrl="~/Images/Main/MainL2C1_1(수정).png" Visible="False" 
                    onclick="igbCtgFoodSub_Click" />
                <br />
                <asp:ImageButton ID="igbCtgFoodSub2" runat="server" 
                    ImageUrl="~/Images/Main/MainL2C1_2(수정).png" Visible="False" 
                    onclick="igbCtgFoodSub2_Click" />
            </td>
            <td class="style31" rowspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                    CellPadding="3" ForeColor="Black" GridLines="Vertical" 
                    DataKeyNames="pdNumber" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" Width="855px" 
                    style="font-family: HY강M" CssClass="style31">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="pdNumber" HeaderText="상품번호" 
                            SortExpression="pdNumber" />
                        <asp:BoundField DataField="pdName" HeaderText="상품명" SortExpression="pdName" />
                        <asp:BoundField DataField="pdCost" HeaderText="가격" SortExpression="pdCost" />
                        <asp:BoundField DataField="pdTotal" HeaderText="총수량" SortExpression="pdTotal" />
                        <asp:BoundField DataField="pdRemain" HeaderText="남은수량" 
                            SortExpression="pdRemain" />
                        <asp:BoundField DataField="pdspan" HeaderText="판매기간" SortExpression="pdspan" />
                        <asp:BoundField DataField="scName" HeaderText="판매자" SortExpression="scName" />
                    </Columns>
                    <EmptyDataTemplate>
                        &nbsp;
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:COUPANGDB_BConnectionString %>" 
                    SelectCommand="SELECT     PRODUCT.pdNumber, PRODUCT.pdName, PRODUCT.pdCost, PRODUCT.pdTotal, PRODUCT.pdRemain, PRODUCT.pdspan, SELL_CUSTOMER.scName
FROM         PRODUCT INNER JOIN
                      SELL_CUSTOMER ON PRODUCT.pdscID = SELL_CUSTOMER.scID"></asp:SqlDataSource>
            </td>
            <td class="style5" rowspan="3">
                <img alt="" class="style30" src="Images/Main/MainL3Padding.png" /></td>
        </tr>
        <tr>
            <td class="style5">
                <asp:ImageButton ID="igbCtgCloth" runat="server" 
                    ImageUrl="~/Images/Main/MainL2C2.png" onclick="igbCtgCloth_Click" />
                <br />
                <asp:ImageButton ID="igbCtgClothSub" runat="server" 
                    ImageUrl="~/Images/Main/MainL2C2_1(수정).png" 
                    onclick="igbCtgClothSub_Click" />
                <br />
                <asp:ImageButton ID="igbCtgClothSub2" runat="server" 
                    ImageUrl="~/Images/Main/MainL2C2_2(수정).png" 
                    onclick="igbCtgClothSub2_Click" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:ImageButton ID="igbCtgDigit" runat="server" 
                    ImageUrl="~/Images/Main/MainL2C3.png" onclick="igbCtgDigit_Click" />
                <br />
                <asp:ImageButton ID="igbCtgDigitSub" runat="server" 
                    ImageUrl="~/Images/Main/MainL2C3_1(수정).png" 
                    onclick="igbCtgDigitSub_Click" />
                <br />
                <asp:ImageButton ID="igbCtgDigitSub2" runat="server" 
                    ImageUrl="~/Images/Main/MainL2C3_2(수정).png" 
                    onclick="igbCtgDigitSub2_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
