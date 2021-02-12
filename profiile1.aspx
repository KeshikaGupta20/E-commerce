<%@ Page Title="" Language="C#" MasterPageFile="~/my account.master" AutoEventWireup="true" CodeFile="profiile1.aspx.cs" Inherits="profiile1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div style="border-radius:10px 10px; background-color:rgba(202, 235, 254, 0.50);height:650px;width:1310px;margin-top:5px; margin-left:30px;background-image:url('minor project/bg.jpg');background-repeat:no-repeat;background-size:100% 800px;height:700px">
        <br />
        <br />
        <br />
        <br />     
          <center><asp:FormView ID="FormView1" runat="server" DataKeyNames="emailid" DataSourceID="SqlDataSource1" HeaderText="Profile" Height="331px" style="font-size: x-large; margin-top: 0px; background-color: #FFFF99;" Width="263px" CellPadding="4" ForeColor="#333333">
                    <EditItemTemplate>
                        userid:
                        <asp:TextBox ID="useridTextBox" runat="server" Text='<%# Bind("userid") %>' />
                        <br />
                        firstname:
                        <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                        <br />
                        lastname:
                        <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                        <br />
                        address:
                        <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                        <br />
                        pincode:
                        <asp:TextBox ID="pincodeTextBox" runat="server" Text='<%# Bind("pincode") %>' />
                        <br />
                        contactno:
                        <asp:TextBox ID="contactnoTextBox" runat="server" Text='<%# Bind("contactno") %>' />
                        <br />
                        emailid:
                        <asp:Label ID="emailidLabel1" runat="server" Text='<%# Eval("emailid") %>' />
                        <br />
                        dob:
                        <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
                        <br />
                        gender:
                        <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                        <br />
                        sq:
                        <asp:TextBox ID="sqTextBox" runat="server" Text='<%# Bind("sq") %>' />
                        <br />
                        sa:
                        <asp:TextBox ID="saTextBox" runat="server" Text='<%# Bind("sa") %>' />
                        <br />
                        password:
                        <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BorderStyle="Solid" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Height="40px" HorizontalAlign="Center" />
                    <InsertItemTemplate>
                        userid:
                        <asp:TextBox ID="useridTextBox" runat="server" Text='<%# Bind("userid") %>' />
                        <br />
                        firstname:
                        <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                        <br />
                        lastname:
                        <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                        <br />
                        address:
                        <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                        <br />
                        pincode:
                        <asp:TextBox ID="pincodeTextBox" runat="server" Text='<%# Bind("pincode") %>' />
                        <br />
                        contactno:
                        <asp:TextBox ID="contactnoTextBox" runat="server" Text='<%# Bind("contactno") %>' />
                        <br />
                        emailid:
                        <asp:TextBox ID="emailidTextBox" runat="server" Text='<%# Bind("emailid") %>' />
                        <br />
                        dob:
                        <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
                        <br />
                        gender:
                        <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                        <br />
                        sq:
                        <asp:TextBox ID="sqTextBox" runat="server" Text='<%# Bind("sq") %>' />
                        <br />
                        sa:
                        <asp:TextBox ID="saTextBox" runat="server" Text='<%# Bind("sa") %>' />
                        <br />
                        password:
                        <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        userid:
                        <asp:Label ID="useridLabel" runat="server" Text='<%# Bind("userid") %>' />
                        <br />
                        firstname:
                        <asp:Label ID="firstnameLabel" runat="server" Text='<%# Bind("firstname") %>' />
                        <br />
                        lastname:
                        <asp:Label ID="lastnameLabel" runat="server" Text='<%# Bind("lastname") %>' />
                        <br />
                        address:
                        <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                        <br />
                        pincode:
                        <asp:Label ID="pincodeLabel" runat="server" Text='<%# Bind("pincode") %>' />
                        <br />
                        contactno:
                        <asp:Label ID="contactnoLabel" runat="server" Text='<%# Bind("contactno") %>' />
                        <br />
                        emailid:
                        <asp:Label ID="emailidLabel" runat="server" Text='<%# Eval("emailid") %>' />
                        <br />
                        dob:
                        <asp:Label ID="dobLabel" runat="server" Text='<%# Bind("dob") %>' />
                        <br />
                        gender:
                        <asp:Label ID="genderLabel" runat="server" Text='<%# Bind("gender") %>' />
                        <br />
                        sq:
                        <asp:Label ID="sqLabel" runat="server" Text='<%# Bind("sq") %>' />
                        <br />
                        sa:
                        <asp:Label ID="saLabel" runat="server" Text='<%# Bind("sa") %>' />
                        <br />
                        password:
                        <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("password") %>' />
                        <br />

                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />

                    </ItemTemplate>
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BorderStyle="Solid" BackColor="#CCFFFF" BorderWidth="1px" Font-Size="Large" ForeColor="#333333" HorizontalAlign="Center" />
                </asp:FormView></center> 
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopString %>" SelectCommand="SELECT [userid], [firstname], [lastname], [address], [pincode], [contactno], [emailid], [dob], [gender], [sq], [sa], [password] FROM [register] WHERE ([emailid] = @emailid)"
                    UpdateCommand="update  register set firstname=@firstname,lastname=@lastname,address=@address,pincode=@pincode,contactno=@contactno,dob=@dob,gender=@gender,password=@password,sq=@sq,sa=@sa where emailid=@emailid "
                    >
                    <SelectParameters>
                        <asp:SessionParameter Name="emailid" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
</div>
        </asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
        <div style="height:60px;width:1335px;margin-left:0px;background-color:#807f7f;border-radius:10px 10px">
        <%--<div style="height:100px;width:100px;border-radius:100%  100%;background-color:#C0C0C0; float:left"> </div>--%>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="White" Text="Edit Profile"></asp:Label>
    </div>
</asp:Content>



