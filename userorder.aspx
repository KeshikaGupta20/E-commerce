<%@ Page Title="" Language="C#" MasterPageFile="~/my account.master" AutoEventWireup="true" CodeFile="userorder.aspx.cs" Inherits="userorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #FF0000;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
            <div style="border-radius:10px 10px; background-color:rgba(202, 235, 254, 0.50);height:720px;width:1303px; margin-top:5px; margin-left:30px;background-image:url('Major/website-background-design.jpg');background-repeat:no-repeat;background-size:100% 800px;height:700px" class="auto-style1">
                <br />
&nbsp;&nbsp;&nbsp;
                <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" style="font-size: large; font-weight: 700" Text="Please Select Any :"></asp:Label>
                &nbsp;
                <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" CssClass="auto-style2" GroupName="a" OnCheckedChanged="RadioButton1_CheckedChanged" style="font-weight: 700" Text="Order Address" />
&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" CssClass="auto-style2" GroupName="a" OnCheckedChanged="RadioButton2_CheckedChanged" style="font-weight: 700" Text="Order Details" />
                <br />
                <br />
                <br />
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <asp:Label ID="Label1" runat="server" style="font-size: x-large" Text="Order Address"></asp:Label>
                        <br />
                        <br />
                      <center> <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="1076px" AutoGenerateColumns="False" Height="151px">
                          <Columns>
                              <asp:TemplateField HeaderText="Order ID">
                                  <EditItemTemplate>
                                      <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("orderid") %>'></asp:TextBox>
                                  </EditItemTemplate>
                                  <ItemTemplate>
                                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("orderid") %>'></asp:Label>
                                  </ItemTemplate>
                              </asp:TemplateField>
                              <asp:BoundField DataField="userid" HeaderText="User ID" />
                              <asp:BoundField DataField="custname" HeaderText="Customer Name" />
                              <asp:BoundField DataField="phn" HeaderText="Phone No" />
                              <asp:BoundField DataField="address" HeaderText="Address" />
                              <asp:BoundField DataField="pay" HeaderText="Payment" />
                              <asp:BoundField DataField="date" HeaderText="Date" />
                              <asp:TemplateField>
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Bill</asp:LinkButton>
                                  </ItemTemplate>
                              </asp:TemplateField>
                          </Columns>
                          <FooterStyle BackColor="White" ForeColor="#000066" />
                          <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                          <RowStyle ForeColor="#000066" />
                          <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                          <SortedAscendingCellStyle BackColor="#F1F1F1" />
                          <SortedAscendingHeaderStyle BackColor="#007DBB" />
                          <SortedDescendingCellStyle BackColor="#CAC9C9" />
                          <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView></center> 
                        <br />
                        <br />
                        <br />
                    </asp:View>
                    <br />
                    <asp:View ID="View2" runat="server">
                        <asp:Label ID="Label2" runat="server" style="font-size: x-large" Text="Order Details"></asp:Label>
                        <br />
                        <br />
                       <center> <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="1082px" AutoGenerateColumns="False" Height="166px">
                            <Columns>
                                <asp:BoundField DataField="orderid" HeaderText="Order ID" />
                                <asp:BoundField DataField="userid" HeaderText="User ID" />
                                <asp:BoundField DataField="prooid" HeaderText="Product ID" />
                                <asp:BoundField DataField="prooname" HeaderText="Product Name" />
                                <asp:BoundField DataField="Pricee" HeaderText="Price" />
                                <asp:BoundField DataField="sizee" HeaderText="Size" />
                                <asp:BoundField DataField="quann" HeaderText="Quantity" />
                                <asp:BoundField DataField="date" HeaderText="Date" />
                                <asp:BoundField DataField="status" HeaderText="Status" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                           <br />
                           <br />
                        </center>
                        <br />
                    </asp:View>
                    <br />
                    <br />
                    <br />
                </asp:MultiView>
    </div>
        </asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
        <div style="height:60px;width:1335px;margin-left:0px;background-color:#807f7f;border-radius:10px 10px">
        <%--<div style="height:100px;width:100px;border-radius:100%  100%;background-color:#C0C0C0; float:left"> </div>--%>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" style="font-size: xx-large; color: #FFFFFF; font-weight: 700; text-decoration: underline" Text="Order Summary"></asp:Label>
    </div>
</asp:Content>



