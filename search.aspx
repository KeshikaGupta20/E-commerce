<%@ Page Title="" Language="C#" MasterPageFile="~/userMasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <br />

    <table class="auto-style1" style="border-style: none">
        <tr>
            <td style="width: 25%; vertical-align: top;">
                <div style="background-color: #FFFFFF; margin-top:0px; text-align: left;">
                    <div class="auto-style2" style="background-color:black;color:white; height: 32px; font-size: x-large;">
                        <strong>Crack Deals</strong></div>
                    <asp:Image ID="Image1" runat="server" class="img.responsive" Height="293px" ImageUrl="~/minor project/clothimg.gif" Width="342px" />
                    <br />
                    <div style="height: 7px; background-color: #CCCCCC">
                    </div>
                    <div style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; color: #FF0000;background-color:#CCFFCC">
                        <br />
                        <marquee direction="up" behaviour="alternate" style="height: 561px;color:#de0c0c">
                                    * <span class="auto-style6">Fashionista gives you the best deals and all latest fashion related products , the product have a favarable quality for all skin type. </span>
                                <br class="auto-style6" />
                                <br />
                                <br />
                                <asp:Image ID="Image2" runat="server" class="img.responsive" Height="200px" ImageUrl="~/minor project/as1.jpg" Width="342px" />
                                <br />
                                <br />
                                <div style="height: 7px; background-color: #CCCCCC">
                                </div>
                                <br />
                                <br />* Online Shopping Fashionista gives you the facility of Cash On Delivery that will asure you about the product delivery.&nbsp;
                                <br />
                                <br />
                                <br />
                                <asp:Image ID="Image3" runat="server" class="img.responsive" Height="200px" ImageUrl="~/minor project/COD.jpg" Width="342px" />
                                <br />
                                <br />
                                <div style="height: 7px; background-color: #CCCCCC">
                                </div>
                                <br /></marquee>
                    </div>
                </div>
                <br /></td>
            <td style="vertical-align: top">
               <br />  <div style="height: 91px; width: 913px">
                   
                    <br />
                    <br />
                   <center><asp:TextBox ID="TextBox2" runat="server" placeholder="       Search by category" style="border-radius:4px 4px; background-color: #F0F0F0" Height="30px" Width="355px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Search" Height="35px" style="font-size: medium;border-radius:4px 4px" OnClick="Button1_Click" />
                       <br />
                    </center>
                    <br />
                </div>
                <br />
                <br />
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                   <center><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="679px">
                       <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                       <Columns>
                           <asp:ImageField DataImageUrlField="image">
                               <ControlStyle Height="130px" Width="100px" />
                           </asp:ImageField>
                           <asp:TemplateField HeaderText="Product ID">
                               <EditItemTemplate>
                                   <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("proid") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:Label ID="Label1" runat="server" Text='<%# Bind("proid") %>'></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:BoundField DataField="proname" HeaderText="Product Name" />
                           <asp:BoundField DataField="category" HeaderText="Category" />
                           <asp:TemplateField>
                               <ItemTemplate>
                                   <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View</asp:LinkButton>
                               </ItemTemplate>
                           </asp:TemplateField>
                       </Columns>
                       <EditRowStyle BackColor="#999999" />
                       <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                       <HeaderStyle BackColor="#993333" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                       <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                       <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                       <SortedAscendingCellStyle BackColor="#E9E7E2" />
                       <SortedAscendingHeaderStyle BackColor="#506C8C" />
                       <SortedDescendingCellStyle BackColor="#FFFDF8" />
                       <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView></center> 
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
                <br /></td>
        </tr>
        <tr>
            <td style="vertical-align: top; background-color: #333333; height:20px" class="auto-style2" colspan="2"><a href="mailto:Copyrights@2K18"><span class="auto-style3">Copyrights@2018</span></a><span class="auto-style3"> - by Keshika Gupta</span><br />
                </td>
        </tr>
    </table>
</asp:Content>


