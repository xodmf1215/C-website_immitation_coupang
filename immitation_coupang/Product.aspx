<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

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
            height: 52px;
            background-color: #FFFFCC;
        }
        .style4
        {
            height: 80px;
            background-color: #FFFFCC;
        }
        .style6
        {
            height: 90px;
            text-align: center;
            background-color: #FFCC99;
        }
        .style7
        {
            height: 67px;
            text-align: center;
            background-color: #99FFCC;
        }
        .style9
        {
            height: 80px;
            text-align: center;
            background-color: #CCFFFF;
        }
        .style10
        {
            height: 52px;
            text-align: right;
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
        .style33
        {
            height: 86px;
            text-align: center;
            background-color: #CCFFFF;
        }
        .style34
        {
            height: 86px;
            background-color: #FFFFCC;
        }
        .style35
        {
            width: 26px;
        }
        .style36
        {
            height: 67px;
            text-align: center;
            width: 102px;
        }
        .style37
        {
            height: 90px;
            text-align: center;
            width: 102px;
        }
        .style38
        {
            font-family: HY강M;
        }
        .style39
        {
            height: 90px;
            text-align: center;
            font-family: HY강M;
            background-color: #FFCC99;
        }
        .style40
        {
            font-family: HY동녘M;
        }
        .style41
        {
            height: 52px;
            text-align: center;
            background-color: #CCFFFF;
        }
        .style42
        {
            height: 86px;
            text-align: center;
            background-color: #FFFFCC;
        }
        .style43
        {
            height: 80px;
            text-align: center;
            background-color: #FFFFCC;
        }
        .style44
        {
            height: 52px;
            text-align: center;
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
                    ImageUrl="~/Images/Fixed/FixedT2L2ToMain.png" onclick="igbToMain_Click"  />
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
                                ImageUrl="~/Images/Fixed/FixedCtg1-1(1).png" 
                                onclick="ibgFixFood1_Click" />
                            <asp:ImageButton ID="ibgFixFood2" runat="server" 
                                ImageUrl="~/Images/Fixed/FixedCtg1-2(1).png" 
                                onclick="ibgFixFood2_Click" />
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
    
    </div>
    <div>
    <table class="style1">
        <tr>
            <td class="style36" colspan="2" bgcolor="#EFF0F0">
                <img alt="" class="style17" src="Images/Fixed/FixedT2L1Padding.png" /></td>
            <td class="style7" colspan="2">
                <asp:Label ID="lblProductName" runat="server" 
                    style="text-align: center; font-family: HY강M;"></asp:Label>
            </td>
            <td class="style7" colspan="2">
            </td>
        </tr>
        <tr>
            <td rowspan="3" style="text-align: center" bgcolor="#F0F0F0" class="style35">
                <img alt="" class="style17" src="Images/Fixed/FixedT2L1Padding.png" /></td>
            <td class="style41" colspan="2">
                <asp:Label ID="Label_Price" runat="server" CssClass="style40" Text="쿠팡가"></asp:Label>
            </td>
            <td class="style44" colspan="2">
                <asp:Label ID="lblPrice" runat="server" style="font-family: HY강M"></asp:Label>
            </td>
            <td class="style3">
                <asp:Label ID="lblOrderNum" runat="server" Text="주문수량" CssClass="style38"></asp:Label>
&nbsp;
                <asp:TextBox ID="txtOrderNum" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9" colspan="2">
                <asp:Label ID="Label_수량" runat="server" CssClass="style40" Text="한정수량"></asp:Label>
            </td>
            <td class="style43" colspan="2">
                <asp:Label ID="lblCount" runat="server" style="font-family: HY강M"></asp:Label>
            </td>
            <td class="style4">
                <asp:Label ID="lblOption" runat="server" Text="옵션" CssClass="style38"></asp:Label>
&nbsp;&nbsp;
                <asp:DropDownList ID="ddlOption" runat="server" style="font-family: HY강M">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:COUPANGDB_BConnectionString5 %>" 
                    SelectCommand="SELECT opName FROM [OPTION] WHERE (oppdNumber = 'P0008')"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style33" colspan="2">
                <asp:Label ID="Label_time" runat="server" CssClass="style40" Text="마감시간"></asp:Label>
            </td>
            <td class="style42" colspan="2">
                <asp:Label ID="lblSellDate" runat="server" style="font-family: HY강M"></asp:Label>
            </td>
            <td class="style34">
                <asp:ImageButton ID="igbPurchase" runat="server" 
                    ImageUrl="~/Images/product/product_buy.png" onclick="igbPurchase_Click"  />
            </td>
        </tr>
        <tr>
            <td class="style37" colspan="2" bgcolor="#EFF0F0">
                <img alt="" class="style17" src="Images/Fixed/FixedT2L1Padding.png" /></td>
            <td class="style39" colspan="2">
                상세정보</td>
            <td class="style6" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
    </div>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="qaNumber" 
        style="text-align: left; font-family: HY강B;">
        <AlternatingItemTemplate>
            <li style="background-color: #FFFFFF; color: #284775;">qaNumber:
                <asp:Label ID="qaNumberLabel" runat="server" Text='<%# Eval("qaNumber") %>' />
                            <br />
                            qaQue:
                <asp:Label ID="qaQueLabel" runat="server" Text='<%# Eval("qaQue") %>' />
                            <br />
                            qaAns:
                <asp:Label ID="qaAnsLabel" runat="server" Text='<%# Eval("qaAns") %>' />
                            <br />
                        </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #999999;">qaNumber:
                <asp:Label ID="qaNumberLabel1" runat="server" Text='<%# Eval("qaNumber") %>' />
                            <br />
                            qaQue:
                <asp:TextBox ID="qaQueTextBox" runat="server" Text='<%# Bind("qaQue") %>' />
                            <br />
                            qaAns:
                <asp:TextBox ID="qaAnsTextBox" runat="server" Text='<%# Bind("qaAns") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="업데이트" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="취소" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            데이터가 반환되지 않았습니다.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">qaNumber:
                <asp:TextBox ID="qaNumberTextBox" runat="server" 
                    Text='<%# Bind("qaNumber") %>' />
                            <br />
                            qaQue:
                <asp:TextBox ID="qaQueTextBox0" runat="server" Text='<%# Bind("qaQue") %>' />
                            <br />
                            qaAns:
                <asp:TextBox ID="qaAnsTextBox0" runat="server" Text='<%# Bind("qaAns") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="삽입" />
                <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" Text="지우기" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
                        <br />
                    </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #E0FFFF; color: #333333;">qaNumber:
                <asp:Label ID="qaNumberLabel2" runat="server" Text='<%# Eval("qaNumber") %>' />
                            <br />
                            qaQue:
                <asp:Label ID="qaQueLabel0" runat="server" Text='<%# Eval("qaQue") %>' />
                            <br />
                            qaAns:
                <asp:Label ID="qaAnsLabel0" runat="server" Text='<%# Eval("qaAns") %>' />
                            <br />
                        </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul ID="itemPlaceholderContainer" runat="server" 
                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
            <div style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #E2DED6; font-weight: bold; color: #333333;">qaNumber:
                <asp:Label ID="qaNumberLabel3" runat="server" Text='<%# Eval("qaNumber") %>' />
                            <br />
                            qaQue:
                <asp:Label ID="qaQueLabel1" runat="server" Text='<%# Eval("qaQue") %>' />
                            <br />
                            qaAns:
                <asp:Label ID="qaAnsLabel1" runat="server" Text='<%# Eval("qaAns") %>' />
                            <br />
                        </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:COUPANGDB_BConnectionString4 %>" 
        SelectCommand="SELECT     qaNumber, qaQue, qaAns
FROM         QnA"></asp:SqlDataSource>
    </form>
</body>
</html>
