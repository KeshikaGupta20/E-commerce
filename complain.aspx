<%@ Page Title="" Language="C#" MasterPageFile="~/my account.master" AutoEventWireup="true" CodeFile="complain.aspx.cs" Inherits="complain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 40%;
            border: 1px solid #FFFFFF;
            background-color: #000000;
        color: #FFFFFF;
    }
    .auto-style3 {
        height: 51px;
    }
    .auto-style4 {
        font-weight: bold;
        font-size: large;
    }
    .auto-style5 {
        width: 148px;
    }
    .auto-style6 {
        height: 44px;
        width: 148px;
        text-align: center;
    }
    .auto-style7 {
        height: 51px;
        width: 148px;
        text-align: center;
    }
    .auto-style8 {
        width: 148px;
        text-align: center;
    }
        .auto-style9 {
            width: 148px;
            height: 47px;
        }
        .auto-style10 {
            height: 47px;
        }
        .auto-style11 {
            height: 44px;
        }
        .auto-style12 {
            width: 148px;
            height: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
            <div style="border-radius:10px 10px; background-color:rgba(202, 235, 254, 0.50);height:650px;width:1310px;margin-top:5px; margin-left:30px;background-image:url('minor project/bg1.jpg');background-repeat:no-repeat;background-size:100% 800px;height:700px">
               <br />
                <br /> <table align="center" class="auto-style1" style="opacity:0.6;border-radius:10px 10px; height: 362px;">
                    <tr>
                        <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label6" runat="server" style="font-weight: 700; font-size: large; text-align: center" Text="Date"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:Label ID="Label7" runat="server" style="font-weight: 700; font-size: large; color: #CCFFFF" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Email ID"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:Label ID="Label5" runat="server" style="font-weight: 700; font-size: large; color: #CCFFFF" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Subject"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="305px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="*Only Characters" ForeColor="Red" style="color: #FFFF00" ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Content"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="159px" TextMode="MultiLine" Width="304px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" EnableViewState="False" ErrorMessage="*Spcl Characters not allow" style="color: #FFFF00" ValidationExpression="^[a-zA-Z0-9\-_]*$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" Height="39px" style="font-weight: 700; background-color: #00FF99" Text="Check Entries" Width="100px" />
                            &nbsp;</td>
                        <td class="auto-style10">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" BackColor="#FF9933" Height="39px" style="font-weight: 700; background-color: #FF3300;" Text="Send" Width="104px" OnClick="Button1_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Height="39px" OnClick="Button2_Click" style="font-weight: 700; background-color: #FFFF66" Text="View Feedback" Width="136px" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <center><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="emailid" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" Height="165px" Visible="False" Width="819px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="emailid" HeaderText="emailid" ReadOnly="True" SortExpression="emailid" />
                        <asp:BoundField DataField="sub" HeaderText="sub" SortExpression="sub" />
                        <asp:BoundField DataField="content" HeaderText="content" SortExpression="content" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="40px" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ShopString %>" SelectCommand="SELECT * FROM [complain] WHERE ([emailid] = @emailid)">
                        <SelectParameters>
                            <asp:SessionParameter Name="emailid" SessionField="user" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ShopString %>" SelectCommand="SELECT * FROM [complain]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopString %>" SelectCommand="SELECT * FROM [complain]"></asp:SqlDataSource>
                </center>
            </div>
        </asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
        <div style="height:60px;width:1335px;margin-left:0px;background-color:#807f7f;border-radius:10px 10px">
        <%--<div style="height:100px;width:100px;border-radius:100%  100%;background-color:#C0C0C0; float:left"> </div>--%>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="White" Text="Feedback"></asp:Label>
    </div>
</asp:Content>



