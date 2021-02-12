<%@ Page Title="" Language="C#" MasterPageFile="~/userMasterPage.master" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 81%;
            border: 1px solid #006600;
            background-color: #FFFFFF;
        }
        .auto-style5 {            background-color: #FF9933;
        }
        .auto-style6 {
            width: 147px;
        background-color: #D2D2D2;
    }
        .auto-style7 {
            font-size: large;
            font-weight: 700;
        }
        .auto-style8 {
            font-size: large;
            color: #FF0000;
        }
        .auto-style9 {
            font-size: medium;
        }

        .zoom {
  padding: 50px;
  /*background-color: green;*/
  transition: transform .2s; /* Animation */
  margin: 0 auto;
}

.zoom:hover {
  transform: scale(1.5); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
}
        
* {
  box-sizing: border-box;
}

body {
  font-family: Arial;
  margin: 0 auto; /* Center website 
  max-width: 800px;  Max width 
  padding: 20px;
}

.heading {
  font-size: 25px;
  margin-right: 25px;
}

.fa {
  font-size: 25px;
}

.checked {
  color: orange;
}

 Three column layout 
.side {
  float: left;
  width: 15%;
  margin-top: 10px;
}

.middle {
  float: left;
  width: 70%;
  margin-top: 10px;
}

 Place text to the right 
.right {
  text-align: right;
}

 Clear floats after the columns 
.row:after {
  content: "";
  display: table;
  clear: both;
}

 The bar container 
.bar-container {
  width: 100%;
  background-color: #f1f1f1;
  text-align: center;
  color: white;
}

 Individual bars 
.bar-5 {width: 60%; height: 18px; background-color: #4CAF50;}
.bar-4 {width: 30%; height: 18px; background-color: #2196F3;}
.bar-3 {width: 10%; height: 18px; background-color: #00bcd4;}
.bar-2 {width: 4%; height: 18px; background-color: #ff9800;}
.bar-1 {width: 15%; height: 18px; background-color: #f44336;}

 Responsive layout - make the columns stack on top of each other instead of next to each other 
@media (max-width: 800px) {
  .side, .middle {
    width: 100%;
  }
   Hide the right column on small screens 
  .right {
    display: none;
  }
}*/

    }
        .auto-style12 {
            text-align: center;
            width: 197px;
        }
        .auto-style13 {
            color: #FF0000;
            font-weight: bold;
        }

    .auto-style14 {
        color: #FF0000;
    }

        .auto-style15 {
            font-size: x-large;
        }

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <table class="auto-style1" style="border-style: none">
        <tr>
            <td style="width: 25%; vertical-align: top;">
                <br /><br />
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
                <div style="height: 603px" >
                   
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server">back</asp:LinkButton>
                    <br /><br />
                    <table align="center" class="auto-style4" style="border-radius:9px 9px;height:450px;width:694px">
                        <tr>
                            <td class="auto-style5" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label16" runat="server" style="font-size: xx-large; text-align: center;" Text="Product Details"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6" rowspan="12" style="width: 45%">
                                <br />
                                <asp:Image ID="Image6" class="zoom" runat="server" Height="377px" Width="313px" />
                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:Label ID="Label4" runat="server" Text="Category" CssClass="auto-style7"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:Label ID="Label10" runat="server" Text="Label" CssClass="auto-style13"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:Label ID="Label5" runat="server" Text="Product ID" CssClass="auto-style7"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:Label ID="Label12" runat="server" Text="Label" CssClass="auto-style13"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:Label ID="Label6" runat="server" Text="Product Name" CssClass="auto-style7"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:Label ID="Label13" runat="server" Text="Label" CssClass="auto-style13"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:Label ID="Label19" runat="server" style="font-weight: 700; font-size: large" Text="Price"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label15" runat="server" Text="Label" CssClass="auto-style8" Font-Overline="False" Font-Strikeout="True"></asp:Label>
                                <span class="auto-style14"><strong>/-&nbsp;</strong></span>&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:Label ID="Label7" runat="server" Text="Discount" CssClass="auto-style7"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label20" runat="server" style="color: #FF0000; font-weight: 700" Text="Label"></asp:Label>
                                <span class="auto-style14"><strong>%</strong></span></td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:Label ID="Label21" runat="server" style="font-weight: 700; font-size: large" Text="Pay"></asp:Label>
                            </td>
                            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label18" runat="server" Text="Label" style="color: #FF0000; font-weight: 700"></asp:Label>
                                <span class="auto-style14"><strong>/-</strong></span></td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:Label ID="Label8" runat="server" Text="Quantity" CssClass="auto-style7"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style9" Height="20px" TextMode="Number" Width="82px"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:Label ID="Label9" runat="server" Text="Size Avaliable" CssClass="auto-style7"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:Label ID="Label17" runat="server" Text="Label" style="color: #FF0000; font-weight: 700"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:Label ID="Label11" runat="server" Text="Size" CssClass="auto-style7"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style9" Height="20px" Width="110px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;<asp:Button ID="Button1" runat="server" Height="38px" Text="Add to cart" Width="98px" style="font-size: large; background-color: #FFCC00" OnClick="Button1_Click" />
                                &nbsp; &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Height="38px" Text="Wish list" Width="97px" style="font-size: large; background-color: #FF9933" OnClick="Button2_Click" />
                            &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button3" runat="server" Height="38px" OnClick="Button3_Click" style="font-size: large; background-color: #66FF99" Text="Buy now" Width="86px" />
                            </td>
                        </tr>
                        <br />
                    </table>
                    <br />
                </div>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style14"><span class="auto-style15">&nbsp;&nbsp; *</span>You no need to enter quantity and size while adding to wishlist<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style15">*</span>Quantity and Size need to enter while Adding to cart</span><br class="auto-style14" />
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
                <br />
                <br />
                <br />
                <br /></td>
        </tr>
    </table>
</asp:Content>


