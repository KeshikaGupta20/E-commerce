<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.master" AutoEventWireup="true" CodeFile="showorder.aspx.cs" Inherits="showorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            color: #FF0000;
            font-weight: bold;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
            <%--<div style="background-color:black;height:7px"></div>--%>
            <div style="background-image:url('Major/shopping-bags2-ss-1920.jpg');background-repeat:no-repeat;background-size:100% 700px" class="auto-style2">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" style="font-size: xx-large; font-weight: 700; text-decoration: underline; color: #CCFFFF" Text="Order Summary"></asp:Label>
&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: large; color: #FFFFFF;" Text="Please Select Any :"></asp:Label>
&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" CssClass="auto-style3" GroupName="b" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Order Addresses" />
&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" CssClass="auto-style3" GroupName="b" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Order Details" />
                <br />
                <br />
                <br />
                
             <center>< <div style="background-color:black;opacity:0.8;width:1000px;margin-left:200px">  <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <br />
                        <br />
                       <center> <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="orderid" DataSourceID="SqlDataSource1" GridLines="Vertical" PageSize="6" style="margin-left: 0px" Width="983px">
                           <AlternatingRowStyle BackColor="#DCDCDC" />
                           <Columns>
                               <asp:BoundField DataField="orderid" HeaderText="orderid" ReadOnly="True" SortExpression="orderid" />
                               <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
                               <asp:BoundField DataField="custname" HeaderText="custname" SortExpression="custname" />
                               <asp:BoundField DataField="phn" HeaderText="phn" SortExpression="phn" />
                               <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                               <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                               <asp:BoundField DataField="pay" HeaderText="pay" SortExpression="pay" />
                               <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                           </Columns>
                           <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                           <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                           <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                           <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                           <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                           <SortedAscendingCellStyle BackColor="#F1F1F1" />
                           <SortedAscendingHeaderStyle BackColor="#0000A9" />
                           <SortedDescendingCellStyle BackColor="#CAC9C9" />
                           <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopString %>" SelectCommand="SELECT * FROM [orderaddress]"></asp:SqlDataSource>
                        </center>
                    </asp:View>
                    <br />
                    <br />
                    <br />
                    <asp:View ID="View2" runat="server">
                        <br />
                        <br />
                       <center> <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Vertical" PageSize="6" style="margin-left: 0px" Width="993px">
                           <AlternatingRowStyle BackColor="#DCDCDC" />
                           <Columns>
                               <asp:BoundField DataField="orderid" HeaderText="orderid" SortExpression="orderid" />
                               <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
                               <asp:BoundField DataField="prooid" HeaderText="prooid" SortExpression="prooid" />
                               <asp:BoundField DataField="prooname" HeaderText="prooname" SortExpression="prooname" />
                               <asp:BoundField DataField="pricee" HeaderText="pricee" SortExpression="pricee" />
                               <asp:BoundField DataField="sizee" HeaderText="sizee" SortExpression="sizee" />
                               <asp:BoundField DataField="quann" HeaderText="quann" SortExpression="quann" />
                               <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                               <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                           </Columns>
                           <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                           <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                           <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                           <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                           <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                           <SortedAscendingCellStyle BackColor="#F1F1F1" />
                           <SortedAscendingHeaderStyle BackColor="#0000A9" />
                           <SortedDescendingCellStyle BackColor="#CAC9C9" />
                           <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ShopString %>" SelectCommand="SELECT * FROM [orderdetails]"></asp:SqlDataSource>
                        </center>
                    </asp:View>
                    <br />
                    <br />
                </asp:MultiView>

                
                <br />
                <br />
                <br /></div>/center>
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
                <td style="vertical-align: top; background-color: #CCCCCC;" class="auto-style2" colspan="2"><a href="mailto:Copyrights@2K18">Copyrights@2018</a> - by Keshika Gupta<br /></td>
            </div>
</asp:Content>


