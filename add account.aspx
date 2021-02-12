<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add account.aspx.cs" Inherits="add_account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 140%;
            border: 1px solid #006600;
            background-color: #FFFFFF;
        }
        .auto-style3 {
            height: 23px;
            text-align: left;
        }
        .auto-style6 {
            text-align: left;
            width: 150px;
        }
        .auto-style7 {
            height: 23px;
            text-align: left;
            width: 150px;
        }
        .auto-style8 {
            font-weight: bold;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            width: 25%;
            height: 783px;
        }
        .auto-style11 {
            height: 783px;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            font-size: medium;
            text-align: left;
        }
         .text {
            border-left:0px solid white;
            border-right:0px solid white;
            border-top:0px solid white;
            border-bottom:1px solid black;
           
        }
        .auto-style14 {
            color: #CC0000;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
            <table class="auto-style1" style="border-style: none">
                <tr>
                    <td style="vertical-align: top;" class="auto-style10">
                        <div>

                            <asp:Image ID="Image2" runat="server" Height="313px" ImageUrl="~/minor project/deal1.jpg" Width="304px" />

                        </div>
                        <div>
                            <asp:Image ID="Image1" runat="server" Height="313px" ImageUrl="~/minor project/clothimg.gif" Width="305px" />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </div>
                    </td>
                    <td style="vertical-align: top" class="auto-style11">
                        <div >
                            <br />
                            <br />
                           <center> <asp:Label ID="Label14" runat="server" Font-Size="X-Large" ForeColor="Red" style="text-decoration: underline; font-style: italic; text-align: center" Text="Please register yourself before login"></asp:Label></center>
                            <br />
                           <%--<fieldset style="height:600px;width:600px;margin-left:150px"><legend style="text-align:center; font-weight: 700; font-size: xx-large;">Register here</legend>
                               <br />--%>
                            <table align="center" class="auto-style2" style="border-style: none; background-color:#FFFFFF; margin-left:300px;">
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label15" runat="server" Text="ID"></asp:Label>
                                    </td>
                                    <td style="border-style: none; border-width: thin" class="auto-style12">
                                        <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label1" runat="server" Text="First name" style="font-size: large"></asp:Label>
                                    </td>
                                    <td style="border-style: none; border-width: thin" class="auto-style12">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="text" Width="265px" Height="26px" placeholder="Enter first name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="*Invalid First Name" ForeColor="Blue" ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$"></asp:RegularExpressionValidator>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label2" runat="server" Text="Last name" style="font-size: large"></asp:Label>
                                    </td>
                                    <td style="border-style: none; border-width: thin" class="auto-style12">
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="text" Width="265px" Height="26px" placeholder="Enter last name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="*Invalid Last Name" ForeColor="Blue" ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$"></asp:RegularExpressionValidator>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label3" runat="server" Text="Address" style="font-size: large"></asp:Label>
                                    </td>
                                    <td style="border-style: none; border-width: thin" class="auto-style12">
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="text" TextMode="MultiLine" Width="265px" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label5" runat="server" Text="Pincode" style="font-size: large"></asp:Label>
                                    </td>
                                    <td style="border-style: none; border-width: thin" class="auto-style12">
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="text" Width="265px" Height="26px" placeholder="Enter pincode " MaxLength="6"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" EnableClientScript="False" ErrorMessage="*Cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" EnableClientScript="False" ErrorMessage="*Invalid pincode" ForeColor="#3333CC" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label6" runat="server" Text="Contact no" style="font-size: large"></asp:Label>
                                    </td>
                                    <td style="border-style: none; border-width: thin" class="auto-style12">
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="text" Width="265px" Height="26px" placeholder="Enter contact" MaxLength="10"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" EnableClientScript="False" ErrorMessage="*Contact required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" EnableClientScript="False" ErrorMessage="*Invalid number" ForeColor="#3333CC" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label7" runat="server" Text="User id" style="font-size: large"></asp:Label>
                                    </td>
                                    <td style="border-style: none; border-width: thin" class="auto-style12">
                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="text" TextMode="Email" Width="268px" Height="26px" placeholder="Enter email address"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" EnableClientScript="False" ErrorMessage="*Userid required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox7" EnableClientScript="False" ErrorMessage="*Invalid email" ForeColor="#3333CC" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">
                                        <asp:Label ID="Label8" runat="server" Text="DOB"></asp:Label>
                                    </td>
                                    <td class="auto-style3" style="border-style: none; border-width: thin">
                                        <asp:TextBox ID="TextBox8" runat="server" CssClass="text" TextMode="Date" Width="265px" Height="26px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label9" runat="server" Text="Gender" style="font-size: large"></asp:Label>
                                    </td>
                                    <td class="auto-style13" style="border-style: none; border-width: thin">
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="margin-left: 80px" class="auto-style6">
                                        <asp:Label ID="Label10" runat="server" Text="Password" style="font-size: large"></asp:Label>
                                    </td>
                                    <td style="border-style: none; border-width: thin" class="auto-style12">
                                        <asp:TextBox ID="TextBox9" runat="server" CssClass="text" TextMode="Password" Width="265px" Height="26px" placeholder="Enter password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox9" ErrorMessage="*Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="margin-left: 80px" class="auto-style6">
                                        <asp:Label ID="Label11" runat="server" Text="Re-type Password" style="font-size: large"></asp:Label>
                                    </td>
                                    <td style="border-style: none; border-width: thin" class="auto-style12">
                                        <asp:TextBox ID="TextBox10" runat="server" CssClass="text" TextMode="Password" Width="265px" Height="26px" placeholder="Enter re-type password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox10" EnableClientScript="False" ErrorMessage="*Enter re-type password" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox9" ControlToValidate="TextBox10" EnableClientScript="False" ErrorMessage="*password not match" ForeColor="#3333CC"></asp:CompareValidator>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="margin-left: 80px" class="auto-style6">
                                        <asp:Label ID="Label12" runat="server" style="font-size: large" Text="Security Question"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:DropDownList ID="DropDownList2" runat="server" Height="27px" style="margin-left: 0px" class="text">
                                            <asp:ListItem>-- Select Any--</asp:ListItem>
                                            <asp:ListItem>Your Nickname?</asp:ListItem>
                                            <asp:ListItem>Your Father&#39;s Name?</asp:ListItem>
                                            <asp:ListItem>Your Fav Food?</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList2" EnableClientScript="False" ErrorMessage="*Required" ForeColor="Red" InitialValue="-- Select Any--"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="margin-left: 80px" class="auto-style6">
                                        <asp:Label ID="Label13" runat="server" style="font-size: large" Text="Security Answer"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                                        <asp:TextBox ID="TextBox11" runat="server" Height="26px" Width="265px" Cssclass="text" placeholder="Enter valid answer"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox11" EnableClientScript="False" ErrorMessage="*Requried" ForeColor="Red"></asp:RequiredFieldValidator>
                                    &nbsp;
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox11" EnableClientScript="False" ErrorMessage="*Invalid Answer" ForeColor="Blue" ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="margin-left: 80px" class="auto-style6">
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ShopString %>" SelectCommand="SELECT [firstname] FROM [register]"></asp:SqlDataSource>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopString %>" SelectCommand="SELECT * FROM [register]"></asp:SqlDataSource>
                                    </td>
                                    <td style="text-align: left">
                                        <br />
                                        <span class="auto-style14"><strong>*Please check your entries before submitting</strong></span></td>
                                </tr>
                                <tr>
                                    <td style="margin-left: 80px" class="auto-style6">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="firstname" DataValueField="firstname" Visible="False">
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:Button ID="Button3" runat="server" BorderColor="#666666" Height="31px" style="font-size: medium; background-color: #CCCCCC" Text="Check Entries" Width="121px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                        <asp:Button ID="Button1" runat="server" BackColor="#CCFFFF" Font-Bold="False" Text="Submit" Width="94px" Height="31px" style="font-size: medium; background-color: #CCCCCC" OnClick="Button1_Click" CssClass="auto-style8" BorderColor="Gray" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:Button ID="Button2" runat="server" BackColor="#CCCCCC" BorderColor="Gray" Font-Size="Medium" Height="31px" OnClick="Button2_Click" Text="Cancel" Width="94px" />
                               <br />
                           <%-- </fieldset>--%>
                            <br />
                            <br />
                            <br />
                        </div>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top; background-color: #CCCCCC;" class="auto-style9" colspan="2">
                        <a href="mailto:Copyrights@2K18">Copyrights@2018</a> - by Keshika Gupta<br />
                    </td>
                </tr>
            </table>
        </asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
</asp:Content>



