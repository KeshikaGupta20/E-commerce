<%@ Page Language="C#" AutoEventWireup="true" CodeFile="c.aspx.cs" Inherits="c" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function myFunction() {
            var x = document.getElementById("myInput");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }

    </script>
    <style type="text/css">
        #myInput {
            width: 198px;
            height: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" Width="202px">
            <Columns>
                <asp:CommandField HeaderText="delete" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopString %>" SelectCommand="SELECT * FROM [cart] WHERE ([userid] = @userid)">
            <SelectParameters>
                <asp:SessionParameter Name="userid" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="userid" HeaderText="userid" />
                <asp:TemplateField HeaderText="proname">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("proname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("proname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="price" HeaderText="price" />
                <asp:TemplateField HeaderText="proid">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("proid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("proid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="quan" HeaderText="quantity" />
                <asp:BoundField DataField="size" HeaderText="size" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Checkout" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="back" />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server">
        </asp:DataList>
        <br />
        <br />
        <!-- Password field -->
Password: <input type="password" value="FakePSW" id="myInput">

<!-- An element to toggle between password visibility -->
        <br />
        <br />
<input type="checkbox" onclick="myFunction()">Show Password
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
