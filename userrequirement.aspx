<%@ Page Title="" Language="C#" MasterPageFile="~/my account.master" AutoEventWireup="true" CodeFile="userrequirement.aspx.cs" Inherits="userrequirement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 31%;
            border: 1px solid #006600;
            background-color: #009999;
            color: #FFFFFF;
        }
        .auto-style4 {
            text-align: center;
            width: 139px;
            height: 39px;
        }
        .auto-style5 {
            height: 39px;
        }
        .auto-style6 {
            text-align: center;
            width: 139px;
            height: 40px;
        }
        .auto-style7 {
            height: 40px;
        }
        .auto-style8 {
            width: 139px;
            height: 32px;
        }
        .auto-style9 {
            height: 32px;
        }
        .auto-style10 {
            height: 60px;
        }
        .auto-style11 {
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
            <div style="
                border-radius:10px 10px; background-color:rgba(202, 235, 254, 0.50);height:650px;width:100%;margin-top:5px; margin-left:30px;background-image:url('Major/f.jpg');background-repeat:no-repeat;background-size:100% 800px;height:700px">
                <br />
                <br />
                <table align="center" class="auto-style1" style="border-radius:8px 8px;opacity:0.8">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" Text="User ID" CssClass="auto-style11"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="Label4" runat="server" Text="Label" style="color: #CCFFFF; font-weight: 700; background-color: #009999"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label6" runat="server" style="font-weight: 700" Text="Date"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="Label7" runat="server" style="color: #CCFFFF; font-weight: 700" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>

                        <td class="auto-style6">
                            <asp:Label ID="Label2" runat="server" Text="Product ID" CssClass="auto-style11"></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox1" runat="server" Width="110px" Height="26px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="*Required" ForeColor="Red" style="color: #FFFF00"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="*Invalid Product ID" ForeColor="Lime" ValidationExpression="^(0|[1-9]\d*)$"></asp:RegularExpressionValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label3" runat="server" Text="Size Required" CssClass="auto-style11"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="TextBox2" runat="server" Width="110px" Height="26px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="*Required" ForeColor="Red" style="color: #FFFF00"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="*Invalid Entry" ForeColor="Lime" ValidationExpression="^[a-zA-Z0-9\-_]*$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8"></td>
                        <td class="auto-style9"></td>
                    </tr>
                    <tr>
                        <td class="auto-style10" colspan="2">&nbsp; &nbsp;
                            <asp:Button ID="Button3" runat="server" Height="32px" style="font-weight: 700; background-color: #00FF99" Text="Check Entries" Width="99px" />
&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:Button ID="Button1" runat="server" Text="Send" Width="81px" Height="32px" OnClick="Button1_Click" style="font-weight: 700; background-color: #FF9933" />
&nbsp;&nbsp; &nbsp;
                            <asp:Button ID="Button2" runat="server" Text="View Request" Width="116px" Height="32px" style="font-weight: 700; background-color: #FFFF99" OnClick="Button2_Click" />
                            <br />
                        </td>
                    </tr>
                </table>
                <br />

                <br />
                <br />
                <br />
               <center> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="714px">
                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:BoundField DataField="userid" HeaderText="User ID">
                       <ItemStyle HorizontalAlign="Center" />
                       </asp:BoundField>
                       <asp:TemplateField HeaderText="Product ID">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("productid") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label1" runat="server" Text='<%# Bind("productid") %>'></asp:Label>
                           </ItemTemplate>
                           <ItemStyle HorizontalAlign="Center" />
                       </asp:TemplateField>
                       <asp:BoundField DataField="size" HeaderText="Size Require">
                       <ItemStyle HorizontalAlign="Center" />
                       </asp:BoundField>
                       <asp:BoundField DataField="status" HeaderText="Status">
                       <ItemStyle HorizontalAlign="Center" />
                       </asp:BoundField>
                       <asp:BoundField DataField="date" HeaderText="Date" />
                   </Columns>
                   <EditRowStyle BackColor="#7C6F57" />
                   <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                   <HeaderStyle BackColor="#009999" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="White" />
                   <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                   <SortedAscendingCellStyle BackColor="#F8FAFA" />
                   <SortedAscendingHeaderStyle BackColor="#246B61" />
                   <SortedDescendingCellStyle BackColor="#D4DFE1" />
                   <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView></center>

            </div>
        </asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
        <div style="height:60px;width:1335px;margin-left:0px;background-color:#807f7f;border-radius:10px 10px">
        <%--<div style="height:100px;width:100px;border-radius:100%  100%;background-color:#C0C0C0; float:left"> </div>--%>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" style="font-size: xx-large; color: #FFFFFF; text-decoration: underline; font-weight: 700;" Text="User Requirement"></asp:Label>
    </div>
</asp:Content>



