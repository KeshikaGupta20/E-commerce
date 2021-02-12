<%@ Page Title="" Language="C#" MasterPageFile="~/my account.master" AutoEventWireup="true" CodeFile="change passuser.aspx.cs" Inherits="change_passuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 33%;
            border: 1px solid #000000;
            background-color: #003399;
            margin-left: 403px;
        }
        .auto-style2 {
            height: 50px;
        }
        .auto-style3 {
            text-align: center;
            width: 166px;
        }
        .auto-style4 {
            height: 50px;
            text-align: center;
            width: 166px;
        }
        .auto-style5 {
            width: 166px;
        }
        .auto-style6 {
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style7 {
            width: 166px;
            height: 55px;
        }
        .auto-style8 {
            height: 55px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div style="border-radius:10px 10px; background-color:rgba(202, 235, 254, 0.50);height:650px;width:1310px;margin-top:5px; margin-left:30px;background-image:url('minor project/bg1.jpg');background-repeat:no-repeat;background-size:100% 800px;height:700px">
       
        
        <br />
        <br />
        <br />
        <center><table align="center" class="auto-style1" style="border-radius:10px 10px;opacity:0.8">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="New Password" CssClass="auto-style6"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="27px" TextMode="Password" Width="215px" MaxLength="8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Re-type Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="26px" TextMode="Password" Width="215px" MaxLength="8"></asp:TextBox>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="*Password Mismatch" ForeColor="Yellow"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="34px" style="font-weight: 700; background-color: #FFFF99" Text="Check" Width="75px" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Height="34px" style="font-weight: 700; background-color: #CCFFFF" Text="Change" Width="94px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table></center>
       
    </div>
        </asp:Content>



<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
        <div style="height:60px;width:1335px;margin-left:0px;background-color:#807f7f;border-radius:10px 10px">
        <%--<div style="height:100px;width:100px;border-radius:100%  100%;background-color:#C0C0C0; float:left"> </div>--%>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="White" Text="Change Password"></asp:Label>
    </div>
</asp:Content>




