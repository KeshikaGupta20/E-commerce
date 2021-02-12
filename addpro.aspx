<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.master" AutoEventWireup="true" CodeFile="addpro.aspx.cs" Inherits="addpro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 60%;
            float: left;
            border: 1px solid #006600;
            margin-left: 389px;
            background-color: #000000;
        }
        .auto-style3 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style4 {
            text-align: center;
            width: 175px;
        }
        .auto-style6 {
            background-color: #CCCCCC;
        }
        .auto-style7 {
        }
        .auto-style8 {
        }
        .auto-style9 {
            width: 175px;
            text-align: right;
        }
        .auto-style11 {
            width: 175px;
            text-align: right;
            height: 40px;
        }
        .auto-style12 {
            height: 40px;
        }
        .auto-style13 {
            font-weight: bold;
        }
        .auto-style14 {
            width: 175px;
            text-align: right;
            height: 41px;
        }
        .auto-style15 {
            height: 41px;
        }
        .auto-style16 {
            color: #66FFFF;
        }
        </style>
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
            <%--<div style="background-color:black;height:7px"></div>--%>
            <div style="background-image:url('minor project/adwd.jpg'); background-repeat:no-repeat;background-size:100% 900px; height: 800px;">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label11" runat="server" style="font-size: xx-large; font-weight: 700; text-decoration: underline" Text="Add Product"></asp:Label>
                <table align="center" class="auto-style2" style="opacity:0.8; margin-top: 0px; color: #FFFFFF;border-radius:8px 8px;opacity:0.7;border:1px solid black">
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label5" runat="server" style="font-size: large" Text="Category" CssClass="auto-style13"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="141px">
                                <asp:ListItem>--Select Any--</asp:ListItem>
                                <asp:ListItem>Men Casual</asp:ListItem>
                                <asp:ListItem>Men Ethnic</asp:ListItem>
                                <asp:ListItem>Men Summer wear</asp:ListItem>
                                <asp:ListItem>Men Footwear</asp:ListItem>
                                <asp:ListItem>Women Casual</asp:ListItem>
                                <asp:ListItem>Women Ethnic</asp:ListItem>
                                <asp:ListItem>Women Summer wear</asp:ListItem>
                                <asp:ListItem>Women Footwear</asp:ListItem>
                                <asp:ListItem>Kid boy</asp:ListItem>
                                <asp:ListItem>Kid girl</asp:ListItem>
                                <asp:ListItem>Home Appliances</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" EnableClientScript="False" ErrorMessage="*Select Category" ForeColor="Red" InitialValue="--Select Any--"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label7" runat="server" Text="Product ID" CssClass="auto-style13"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" EnableClientScript="False" ErrorMessage="*Product ID required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" EnableClientScript="False" ErrorMessage="*Invalid productID" ForeColor="#FF6600" style="color: #FF9933" ValidationExpression=" ^(0|[1-9]\d*)$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Font-Size="Large" Text="Product Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="200px" placeholder="Enter Product Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="*Product name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="*Invalid Name" ForeColor="#FF9933" ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Font-Size="Large" Text="Quantity"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="200px" placeholder="Enter quantity"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="*Quantity cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="*Range(5-30)" ForeColor="#FF9933" ValidationExpression="&quot;^.{5,30}$&quot;"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Font-Size="Large" Text="Price"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="200px" placeholder="Enter product price"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="*Price is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="*Invalid Price" ForeColor="#FF6600" style="color: #FF9933" ValidationExpression="&quot;^\d+&quot;"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label8" runat="server" style="font-size: large" Text="Size" CssClass="auto-style13"></asp:Label>
                        </td>
                        <td>
                            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" Width="237px" style="text-align: left">
                                <asp:ListItem>S</asp:ListItem>
                                <asp:ListItem>M</asp:ListItem>
                                <asp:ListItem>L</asp:ListItem>
                                <asp:ListItem>XL</asp:ListItem>
                                <asp:ListItem>XXL</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                  
                    <tr>
                        
                        <td class="auto-style11">
                            </td>
                        <td class="auto-style12">
                            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Click here" style="background-color: #CCFF99" />
                            <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="200px" Placeholder="Select from Checkbox"></asp:TextBox>
                            &nbsp;</td>
                        <td class="auto-style12">
                            &nbsp;</td>
                    </tr>
                  
                    <tr>
                        
                        <td class="auto-style9">
                            <asp:Label ID="Label9" runat="server" style="font-size: large" Text="Discount" CssClass="auto-style13"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Height="26px" Width="41px"></asp:TextBox>
                            <asp:Label ID="Label10" runat="server" Text="%"></asp:Label>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox6" EnableClientScript="False" ErrorMessage="*discount between 10 -50 precent" ForeColor="Red" MaximumValue="50" MinimumValue="10"></asp:RangeValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label6" runat="server" style="text-align: center; font-size: large" Text=" Upload Image" CssClass="auto-style13"></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <asp:FileUpload ID="FileUpload1" runat="server" Height="23px" Width="200px" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="FileUpload1" EnableClientScript="False" ErrorMessage="*Image is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style15">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style16">*Please check your entries before adding product</span></strong></td>
                        <td class="auto-style8">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" BorderColor="Gray" Height="29px" style="font-size: medium; background-color: #FFFFFF" Text="Check Entries" Width="112px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Height="29px" style="font-size: medium" Text="Add" Width="77px" BorderColor="Gray" OnClick="Button1_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Height="29px" style="font-size: medium" Text="Reset" Width="72px" BorderColor="Gray" OnClick="Button2_Click" />
                            &nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>

                        <td>&nbsp;</td>

                    </tr>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </table>
               
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
                
                </div><tr><td style="vertical-align: top; background-color: #CCCCCC;" class="auto-style2" colspan="2"><span class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> <a href="mailto:Copyrights@2K18"><span class="auto-style6">Copyrights@2018</span></a><span class="auto-style6"> - by Keshika Gupta</td>&nbsp;  
<td></td><td></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <td></td></tr></span></asp:Content>



