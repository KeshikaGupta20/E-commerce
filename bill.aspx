<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="bill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 89%;
            height: 840px;
            border: 1px solid #006600;
            background-color: #FFFFFF;
        }
        .auto-style2 {
            height: 88px;
        }
        .auto-style3 {
            width: 100%;
            height: 79px;
            border: 1px solid #006600;
            background-color: #FFFFFF;
        }
        .auto-style4 {
            width: 446px;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            color: #FF0000;
            font-weight: 700;
        }
        .auto-style6 {
            background-color: #FFFFFF;
        }
        .auto-style7 {
            height: 132px;
        }
        .auto-style8 {
            height: 237px;
        }
        .auto-style9 {
            height: 103px;
        }
        .auto-style10 {
            font-size: large;
            height: 38px;
        }
        .auto-style11 {
            font-weight: bold;
        }
        .auto-style12 {
            height: 68px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server" Text="ORDER BILL" style="font-size: xx-large; text-decoration: underline;"></asp:Label>


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="font-size: medium">Back</asp:LinkButton>


        <br />
        <br />


        <br />
        <asp:Panel ID="Panel1" runat="server" style="margin-left: 190px" Width="819px">
            <table class="auto-style1" style="border-style: double; border-width: 1px;">
                <tr>
                    <td style="text-align: center; background-color: #CCCCCC;" class="auto-style10"><strong>Retail Invoice</strong></td>
                </tr>
                <tr>
                    <td class="auto-style2">Order ID :
                        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style5"></asp:Label>
                        <br />
                        <br />
                        Order Date :
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style5"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <table class="auto-style3" style="border-color: #FFFFFF; border-style: none;">
                            <tr>
                                <td class="auto-style4"><strong>Buyer Addresss</strong>:
                                    <asp:Label ID="Label7" runat="server" Text="Label" style="color: #0000FF" CssClass="auto-style11"></asp:Label>
                                    &nbsp;<br />
                                    <asp:Label ID="Label4" runat="server" Text="Label" style="color: #0000FF" CssClass="auto-style11"></asp:Label>
                                </td>
                                <td class="auto-style6"><strong>Seller Address : </strong>
                                    <br />
                                    <asp:Label ID="Label5" runat="server" Text="Keshika Gupta , Adarsh Nagar Sitapur" ForeColor="#0033CC" CssClass="auto-style11"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="814px" Height="209px">
                            <Columns>
                                <asp:BoundField DataField="userid" HeaderText="User ID" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="prooid" HeaderText="Product ID" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="prooname" HeaderText="Product Name" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="pricee" HeaderText="Price" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="quann" HeaderText="Quantity" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="sizee" HeaderText="Size" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>Grand Total :
                        <asp:Label ID="Label6" runat="server" style="color: #0000FF" Text="Label"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <strong>Delivery :</strong> The Product will be deliver to the customer within 7 days of purchase.<br />
                        <br />
                        <strong>Declaration :</strong> We declare that this invoice shows the acutal price of the goods described inclusive of taxes and that of particulars are true and correct.<br /> Incase you find selling price on this invoice to be more that MRP mentioned on product , Please inform on our Email address&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" style="text-decoration: underline; color: #0000FF">keshikagupta066@gmail.com</asp:HyperLink>
                        <br />
                        <br />
                        THIS IS A COMPUTER GENERATED INVOICE BILL AND DOES NOT REQUIRED SIGNATURE<br />
                        <br />
                    </td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
