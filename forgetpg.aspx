<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetpg.aspx.cs" Inherits="forgetpg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 33%;
            border: 1px solid #006600;
            background-color: #CCCCCC;
        }
    </style>
</head>
<body style="background-image:url('minor project/forgett.jpg');background-repeat:no-repeat;background-size:100% 700px">
    <form id="form1" runat="server">
    <div>
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
        <table align="center" class="auto-style1" >
            <tr>
                <td style="backface-visibility:visible"><strong>User id</strong></td>
                <td style="backface-visibility:visible">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="backface-visibility:visible"><strong>Security Question</strong> </td>
                <td style="backface-visibility:visible">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="backface-visibility:visible"><strong>Security Answer</strong></td>
                <td style="backface-visibility:visible">
                    <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="169px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="backface-visibility:visible">&nbsp;</td>
                <td style="backface-visibility:visible">&nbsp;</td>
            </tr>
            <tr>
                <td style="backface-visibility:visible" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Submit" OnClick="Button1_Click" style="color: #000000; background-color: #FFFFCC" Height="30px" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="backface-visibility:visible" colspan="2">
                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <br />
                        &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" Text="New Password"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="169px" TextMode="Password"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Red" Text="Re-type Password"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server" Height="24px" Width="169px" TextMode="Password"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Update" OnClick="Button2_Click" style="background-color: #FFFFCC" Height="30px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Cancel" style="background-color: #FFFFCC" Height="30px" />
                        <br />
                    </asp:Panel>
                </td>
            </tr>
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
