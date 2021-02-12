<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buyform.aspx.cs" Inherits="buyform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 45%;
            border: 1px solid #006600;
            background-color: #FFFFCC;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            height: 55px;
        }
        .auto-style5 {
            font-weight: normal;
            font-size: xx-large;
        }
        .auto-style6 {
            text-decoration: underline;
        }
        .auto-style7 {
            font-size: large;
            width: 130px;
            text-align: center;
        }
        .auto-style8 {
            width: 130px;
        }
        .auto-style11 {
            color: #CC0000;
            font-weight: 700;
        }
        .auto-style12 {
            font-size: large;
            width: 130px;
            text-align: center;
            height: 44px;
        }
        .auto-style13 {
            height: 44px;
        }
        .auto-style14 {
            color: #FF0000;
            font-size: large;
        }
         .text {
            border-left:0px solid white;
            border-right:0px solid white;
            border-top:0px solid white;
            border-bottom:1px solid black;
            background-color: #FFFFCC;
        }
        .auto-style15 {
            width: 130px;
            height: 36px;
        }
        .auto-style16 {
            height: 36px;
        }
        .auto-style17 {
            height: 31px;
        }
        .auto-style18 {
            color: #CC0000;
            font-size: medium;
        }
    </style>
</head>
<body style="background-image:url('minor project/buy.jpg');background-repeat:no-repeat;background-size:100% 700px">
    <form id="form1" runat="server">
        <p>
            &nbsp;</p>
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2>
        <h2>&nbsp;<strong><span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span class="auto-style6">Shipping Address</span></span></strong></h2>
        <table align="left" class="auto-style1" style="opacity:0.8">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Full Name</td>
                <td>
                    <asp:TextBox ID="name" runat="server" Height="30px" Width="191px" OnTextChanged="TextBox1_TextChanged" CssClass="text" placeholder="Enter name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" EnableClientScript="False" ErrorMessage="*Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Phone no</td>
                <td>
                    <asp:TextBox ID="number" runat="server" Height="30px" Width="191px" CssClass="text" placeholder="Enter phone number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="number" EnableClientScript="False" ErrorMessage="*Phone no is blank" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="number" EnableClientScript="False" ErrorMessage="*Invalid Number" ForeColor="#6600CC" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Pincode</td>
                <td class="auto-style13">
                    <asp:TextBox ID="pin" runat="server" Height="30px" Width="191px" CssClass="text" placeholder="Enter pincode"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pin" EnableClientScript="False" ErrorMessage="*Pincode is blank" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="pin" EnableClientScript="False" ErrorMessage="*Invalid Pincode" ForeColor="#6600CC" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Address</td>
                <td>
                    <asp:TextBox ID="add" runat="server" TextMode="MultiLine" Width="191px" CssClass="text" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="add" EnableClientScript="False" ErrorMessage="*Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style17"><span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Payment&nbsp;&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="Label1" runat="server" Text="COD" CssClass="auto-style11"></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;<span class="auto-style2">Shipping&nbsp;Charges</span></td>
                <td class="auto-style16">&nbsp; <span class="auto-style14"><strong>&nbsp;</strong><asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #CC0000" Text="Free Shipping"></asp:Label>
                    </span></td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;<span class="auto-style18"><strong>*Please check your entries before confirming order</strong></span>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="#CCCCCC" BorderColor="#666666" BorderStyle="Solid" Height="30px" OnClick="Button3_Click" style="font-size: medium" Text="Check Entries" Width="125px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Font-Size="Medium" Height="30px" OnClick="Button1_Click" style="background-color: #CCCCCC" Text="Confirm Order" Width="117px" BorderColor="Gray" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#CCCCCC" Font-Size="Medium" Height="30px" OnClick="Button2_Click" Text="Back" Width="88px" BorderColor="Gray" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
