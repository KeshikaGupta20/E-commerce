<%@ Page Title="" Language="C#" MasterPageFile="~/userMasterPage.master" AutoEventWireup="true" CodeFile="women.aspx.cs" Inherits="women" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:Image ID="Image3" runat="server" Height="439px" ImageUrl="~/Major/w.jpg" Width="100%" />
</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <table class="auto-style1" style="border-style: none; height: 1955px;">
        <tr>
            <td style="width: 25%; vertical-align: top;">
                <div style="background-color: #FFFFFF; margin-top:0px; text-align: left;">
                    <div class="auto-style2" style="background-color:black;color:white; height: 32px; font-size: x-large;">
                        <strong>Crack Deals</strong></div>
                    <asp:Image ID="Image1" runat="server" class="img.responsive" Height="293px" ImageUrl="~/minor project/clothimg.gif" Width="342px" />
                    <br />
                    <div style="height: 7px; background-color: #CCCCCC">
                    </div>
                    <div style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; color: #FF0000;background-color:#fcf89a">
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
                                <asp:Image ID="Image13" runat="server" class="img.responsive" Height="200px" ImageUrl="~/minor project/COD.jpg" Width="342px" />
                                <br />
                                <br />
                                <div style="height: 7px; background-color: #CCCCCC">
                                </div>
                                <br /></marquee>
                    </div>
                </div>
                <div style="height: 7px; background-color: #CCCCCC">
                                </div>
                <asp:Image ID="Image4" runat="server" Height="476px" ImageUrl="~/minor project/img27.jpg" Width="339px" />
                <div style="height: 7px; background-color: #CCCCCC">
                                </div>
                <asp:Image ID="Image10" runat="server" Height="498px" ImageUrl="~/minor project/jeff-sheldon-3232-unsplash.jpg" Width="342px" />
                <br /></td>
            <td style="vertical-align: top">
                <div style="height: 30px; background-color: #fee469;color:#000000">
                <marquee direction:"left" behaviour:"scroll"><strong>New season enters with a new collection of stuff , more fashionable , more comfortable , more realiable*</strong></marquee></div>
                <br />
                <h1 class="auto-style2" style="border-bottom-style: solid; background-color: #CCFFCC;">Women's Collection</h1>
                <br /> <div style="background-color: rgba(192, 248, 100, 0.39);border-radius:12px 12px">
                   
                &nbsp;
                    <br />
                    <center>
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text="Please Select Any :"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="28px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="font-weight: 700; border-radius:7px 7px; font-size: medium" Width="203px">
                            <asp:ListItem>--Select Category--</asp:ListItem>
                            <asp:ListItem>Women Casual Wear</asp:ListItem>
                            <asp:ListItem>Women Ethnic Wear</asp:ListItem>
                            <asp:ListItem>Women Summer wear</asp:ListItem>
                            <asp:ListItem>Women Footwear</asp:ListItem>
                    </asp:DropDownList></center>
                    <br />
                    <br />
                    <center><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="#0033CC" BorderStyle="None" CellPadding="4" ForeColor="#333333" GridLines="None" style="font-size: large" Width="775px">
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
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("proid") %>'></asp:TextBox>
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
                            <asp:BoundField DataField="dis" HeaderText="Discount(%)" />
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View</asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" HorizontalAlign="Center" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#66FF99" Font-Bold="True" ForeColor="Black" HorizontalAlign="Center" />
                        <PagerStyle BackColor="#CCFFCC" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Center" />
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
                    <br />
                    <br />
                  
                </table> <div style="background-color:#524f4f; height: 25px;" class="auto-style2">

        <strong><span class="auto-style3">design by - Keshika Gupta</span><span class="auto-style7"> </span></strong><span class="auto-style3"><strong style="text-decoration: underline; color: #3399FF">copyright@2k19</strong></span></div>
                <br /></td>
        </tr>
    </table>
</asp:Content>



