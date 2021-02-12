<%@ Page Title="" Language="C#" MasterPageFile="~/userMasterPage.master" AutoEventWireup="true" CodeFile="kid.aspx.cs" Inherits="kid" %>

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
                    <marquee direction="up" behaviour="alternate" style="height: 427px; color:#de0c0c">
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
            <div style="height: 7px; background-color: #CCCCCC">
                </div>
               
                <asp:Image ID="Image6" runat="server" Height="317px" ImageUrl="~/Major/k2.jpg" Width="340px" />
            </td>
       
        <td style="vertical-align: top">
            <div>
                 <div style="height: 30px; background-color:#fee469" class="auto-style8">
                    <marquee direction:"left" behaviour:"scroll"><strong>New season enters with a new collection of stuff , more fashionable , more comfortable , more realiable*</strong></marquee></div>
  </div>
            <br />
                <h1  style="border-bottom-style: solid; background-color: #FFCC99; text-align:center">Kid's Collection</h1>
                <br /><div style="background-color: #FFE0C1; border-radius:12px 12px">




                      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <center><asp:Label ID="Label4" runat="server" ForeColor="Red" style="font-size: large; font-weight: 700;" Text="Please Select Any :"></asp:Label>
                      <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="199px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="font-weight: 700; border-radius:7px 7px; font-size: medium; width:203px">
                          <asp:ListItem>--Select Category--</asp:ListItem>
                          <asp:ListItem>Boy (kid)</asp:ListItem>
                          <asp:ListItem>Girl (kid)</asp:ListItem>
                      </asp:DropDownList>
                      <br />
                      <br />
                      <br />
                      <asp:GridView ID="GridView1" runat="server" Width="742px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                          <AlternatingRowStyle BackColor="White" />
                          <Columns>
                              <asp:ImageField DataImageUrlField="image" HeaderText="Product Image">
                                  <ControlStyle BorderStyle="Outset" Height="130px" Width="110px" />
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
                                      <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View</asp:LinkButton>
                                  </ItemTemplate>
                                  <ItemStyle HorizontalAlign="Center" />
                              </asp:TemplateField>
                          </Columns>
                          <EditRowStyle BackColor="#7C6F57" />
                          <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                          <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                          <RowStyle BackColor="#E3EAEB" />
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




                      </div>
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
            <br /></td>
    </tr>
    <tr>
        <td style="vertical-align: top; background-color: #333333; height:20px" class="auto-style2" colspan="2"><a href="mailto:Copyrights@2K18"><span class="auto-style3">Copyrights@2018</span></a><span class="auto-style3"> - by Keshika Gupta</span><br />
            </td>
    </tr>
</table>
</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
            <div style="height: 487px">
                <asp:Image ID="Image4" runat="server" Height="487px"  Width="100%" ImageUrl="~/Major/k1.jpg" />

                <br />
            </div>
        </asp:Content>



