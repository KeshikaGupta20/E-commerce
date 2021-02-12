
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sign in.aspx.cs" Inherits="sign_in" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

   <script type="text/javascript">

       function myFunction()
       {
            var x = document.getElementById("TextBox2");
            if (x.type == "password")
            {
                x.type = "text";
            }
            else
            {
                x.type = "password";
            }
        }
    </script>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            width: 91%;
            border: 1px solid #006600;
            background-color: #C0C0C0;
            height: 274px;
        }
        .auto-style6 {
            background-color: #FFFFFF;
            text-align: left;
        }
        .auto-style8 {
            font-size: xx-large;
        }
    .auto-style9 {
        font-size: large;
            font-weight: 700;
        }
        .text {
            border-left:0px solid white;
            border-right:0px solid white;
            border-top:0px solid white;
            border-bottom:1px solid black;
           
        }

        .auto-style10 {
            text-decoration: underline;
            color: #FFFFFF;
        }
        .auto-style11 {
            color: #FFFFFF;
        }
        .auto-style12 {
            text-align: center;
        }

    </style>
   
</asp:Content>
 
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
            <table class="auto-style1" style="border-style: none; height: 671px;">
                <tr>
                    <td style="width: 25%; vertical-align: top;">
                        <div>

                            <asp:Image ID="Image2" runat="server" Height="313px" ImageUrl="~/minor project/deal1.jpg" Width="311px" />

                        </div>
                        <div>
                            <asp:Image ID="Image1" runat="server" Height="313px" ImageUrl="~/minor project/clothimg.gif" Width="310px" />
                            <br />
                            <br />
                            <br />
                        </div>
                    </td>
                    <td style="vertical-align: top">
                        <div class="auto-style2">
                            <div class="auto-style2">
                            <br />
                           

                            </div>
                            
                                    <br />
                            <asp:Label ID="Label8" runat="server" Font-Size="X-Large" ForeColor="Red" style="text-decoration: underline; font-style: italic" Text="Please login here to visit our site"></asp:Label>
                            <br />
                            
                                    <br />
                                    <fieldset style="height:440px;width:330px;margin-left:330px;border-radius:8px 8px"><legend style=" text-align:center;margin-left:10px" class="auto-style8"><strong style=" text-align: center;height:40px;width:20px;border-radius:100% 100%">Login</strong></legend>
                                        <br />
                                    <table align="center" class="auto-style4" style="border-style: none; background-color: #FFFFFF; text-decoration: none;">
                                        <tr>
                                            <td style="text-align: left;" class="auto-style6">
&nbsp;<asp:Label ID="Label7" runat="server" Text="Select Login type" CssClass="auto-style9"></asp:Label>
                                                <span class="auto-style9">&nbsp;
                                                </span>
                                                <br />
                                                <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="185px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="text">
                                                    <asp:ListItem>--Select Any--</asp:ListItem>
                                                    <asp:ListItem>User</asp:ListItem>
                                                    <asp:ListItem>Admin</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" EnableClientScript="False" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <br />
                                                <br />
                                                <asp:Label ID="Label1" runat="server" Text="User id" style="text-align: left; font-size: large; font-weight: 700;"></asp:Label>&nbsp;<span class="fa fa-user" style="font-size:24px"></span><br />
                                                <asp:TextBox ID="TextBox1"  runat="server" Width="266px" Height="27px" TextMode="Email" CssClass="text" placeholder=" Enter Userid"></asp:TextBox>
                                                <br />
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="*Invalid Email ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">
                                                <asp:Label ID="Label4" runat="server" Text="Password" style="font-size: large; font-weight: 700;"></asp:Label>&nbsp;<span class="fa fa-lock" style="font-size:24px"></span><br />
                                                <asp:TextBox ID="TextBox2" runat="server" Width="266px" Height="27px" type="password" MaxLength="8" CssClass="text" placeholder=" Enter Password" TextMode="Password"></asp:TextBox>
                                            <%--<span class="fa fa-eye" style="font-size:20px"></span>--%></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">
                                               <%-- <input type="checkbox" onclick="myFunction()">Show Password--%>&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="*Range(5-8)Characters" ForeColor="Red" MaximumValue="8" MinimumValue="5"></asp:RangeValidator>
&nbsp;&nbsp; <asp:Label ID="Label5" runat="server" Visible="False" style="color: #FF0000"></asp:Label>
                                                </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">
                                                &nbsp;
                                                <asp:Button ID="Button3" runat="server" BackColor="#66FFCC" Height="31px" style="font-weight: 700; font-size: medium; color: #000000; background-color: #99CCFF;border-radius:4px 4px; margin-left: 0px;" Text="Login" Width="279px" OnClick="Button3_Click1" />
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Forget Password?</asp:LinkButton>
                                                &nbsp;<br />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">
                                                <asp:Label ID="Label3" runat="server" Text="New User ?"></asp:Label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/add account.aspx">Register here</asp:HyperLink>
                                                <br />
                                            </td>
                                        </tr>
                                    </table></fieldset>
                                    
                        </div>
                       
                       
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top; background-color: #999999;" class="auto-style12" colspan="2">
                       
                        <span class="auto-style11">Design by - Keshika Gupta </span><span class="auto-style10">copyright@2k18</span></td>
                </tr>
            </table>
        </asp:Content>


