<%@ Page Title="" Language="C#" MasterPageFile="~/userMasterPage.master" AutoEventWireup="true" CodeFile="men.aspx.cs" Inherits="men" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .auto-style3 {
            text-align: center;
            font-weight: normal;
            font-size: xx-large;
        }
        .auto-style7 {
            width: 25%;
        }
        .gridstyle {
           height:10px;

        }

        .auto-style8 {
            color: #000000;
        }

        </style>
     <script>
         $(window).scroll(function () {
             //set scroll position in session storage
             sessionStorage.scrollPos = $(window).scrollTop();
         });
         var init = function () {
             //return scroll position in session storage
             $(window).scrollTop(sessionStorage.scrollPos || 0)
         };
         window.onload = init;

    </script>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:Image ID="Image3" runat="server" ImageUrl="~/Major/men.jpg" Width="100%" />
</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <table class="auto-style1" style="border-style: none">
        <tr>
            <td style="vertical-align: top;" class="auto-style7">
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
                                <asp:Image ID="Image8" runat="server" class="img.responsive" Height="200px" ImageUrl="~/minor project/COD.jpg" Width="342px" />
                                <br />
                                <br />
                                <div style="height: 7px; background-color: #CCCCCC">
                                </div>
                                <br /></marquee>
                    </div>
                </div>
                <div  style="height: 7px; background-color: #CCCCCC"></div>
                <asp:Image ID="Image4" runat="server" Height="514px" ImageUrl="~/minor project/mariya-georgieva-42318-unsplash.jpg" Width="345px" />
                <div  style="height: 7px; background-color: #CCCCCC"></div>
                <asp:Image ID="Image11" runat="server" Height="578px" ImageUrl="~/minor project/jeff-sheldon-3232-unsplash.jpg" Width="342px" />
                <br /></td>
            <td style="vertical-align: top">
                <div style="height: 30px; background-color:#fee469" class="auto-style8">
                    <marquee direction:"left" behaviour:"scroll"><strong>New season enters with a new collection of stuff , more fashionable , more comfortable , more realiable*</strong></marquee></div>
                
                   
                  <h2 class="auto-style3" style="border-bottom-style: solid; background-color: #CCFFCC;color:black"> <%--<marquee direction:"left" Behaviour:"scroll slide">--%> <strong>Men's Collection</strong><%--</marquee>--%></h2>
                <br />
                <div style="background-color: rgba(153, 204, 255, 0.37);border-radius:12px 12px">
                    <br />
                    <br />
                    <center>
                        <asp:Label ID="Label4" runat="server" style="font-weight: 700; font-size: large" Text="Please Select Any:" ForeColor="Red"></asp:Label>
&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="188px" AutoPostBack="True" style="font-weight: 700; font-size: medium;border-radius:7px 7px">
                        <asp:ListItem>--Select Category--</asp:ListItem>
                        <asp:ListItem>Men Casual Wear</asp:ListItem>
                        <asp:ListItem>Men Ethnic Wear</asp:ListItem>
                        <asp:ListItem>Men Summer Wear</asp:ListItem>
                        <asp:ListItem>Men Footwear</asp:ListItem>
                    </asp:DropDownList></center>
                    <br /> 
                    <br />
                   <center> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="798px" CellPadding="4" ForeColor="Black" GridLines="None" Height="195px" BackColor="#CCFFFF" BorderColor="#0033CC" BorderStyle="None" style="font-size: large" >
                       <AlternatingRowStyle BackColor="White" />
                       <Columns>
                           <asp:ImageField DataImageUrlField="image" HeaderText="Product Image">
                               <ControlStyle Height="130px" Width="110px" BorderColor="Black" BorderStyle="Outset" />
                           </asp:ImageField>
                           <asp:TemplateField HeaderText="Product ID">
                               <EditItemTemplate>
                                   <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("proid") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:Label ID="Label1" runat="server" Text='<%# Bind("proid") %>'></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:BoundField DataField="proname" HeaderText="Product Name" />
                           <asp:BoundField DataField="category" HeaderText="Category" />
                           <asp:BoundField DataField="dis" HeaderText="Discount(%)" />
                           <asp:TemplateField>
                               <EditItemTemplate>
                                   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View </asp:LinkButton>
                               </ItemTemplate>
                           </asp:TemplateField>
                       </Columns>
                       <EditRowStyle BackColor="#CCFFCC" />
                       <FooterStyle BackColor="#99FF99" Font-Bold="True" ForeColor="Black" />
                       <HeaderStyle BackColor="#CC6699" Font-Bold="True" ForeColor="Black" Height="20px" HorizontalAlign="Center" CssClass="gridstyle" />
                       <PagerStyle BackColor="#CCFFCC" ForeColor="White" HorizontalAlign="Center" />
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
                    <br />
                </div>
                <br /></td>
        </tr>
        <tr>
            <td style="vertical-align: top; background-color: #CCCCCC;" class="auto-style2" colspan="2"><a href="mailto:Copyrights@2K18">Copyrights@2018</a> - by Keshika Gupta<br /></td>
        </tr>
    </table>
</asp:Content>



