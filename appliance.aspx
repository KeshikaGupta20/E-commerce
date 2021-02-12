<%@ Page Title="" Language="C#" MasterPageFile="~/userMasterPage.master" AutoEventWireup="true" CodeFile="appliance.aspx.cs" Inherits="appliance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
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
                <div style="height: 7px; background-color: #CCCCCC"></div>
                <asp:Image ID="Image4" runat="server" Height="353px" ImageUrl="~/Major/h1.jpg" Width="353px" />
                <br /></td>
            <td style="vertical-align: top">
                 <div style="height: 30px; background-color:#fee469" class="auto-style8">
                    <marquee direction:"left" behaviour:"scroll"><strong>New season enters with a new collection of stuff , more fashionable , more comfortable , more realiable*</strong></marquee></div>
 
                <br />
                <h1  style="border-bottom-style: solid; background-color: #FFA851; text-align:center">Home Appliances</h1>
              <br />  <div style="background-color: #FFFF99; border-radius:12px 12px">
                    <br />
                    <br />
                    <br />
                    <br />
                    <center><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="5" Width="780px" Height="187px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:ImageField DataImageUrlField="image" HeaderText="Product Image">
                                <ControlStyle BorderColor="Black" BorderStyle="Outset" Height="130px" Width="110px" />
                                <FooterStyle HorizontalAlign="Center" />
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:ImageField>
                            <asp:TemplateField HeaderText="Product ID">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("proid") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("proid") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="proname" HeaderText="Product Name">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="category" HeaderText="Category">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View </asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#33CCFF" Font-Bold="True" ForeColor="Black" />
                        <HeaderStyle BackColor="#33CCFF" Font-Bold="True" ForeColor="Black" HorizontalAlign="Center" Font-Size="Large" Wrap="True" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView></center>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
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
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
            <div>
              <asp:Image ID="Image5" runat="server" Height="439px"  Width="100%" ImageUrl="~/Major/h2.jpg" />
            </div>
        </asp:Content>


