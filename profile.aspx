<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" href="G:\dotnet\css\bootsrap.min.css" />
    <link rel="stylesheet" type="text/css" href="G:\dotnet\css\bootsrap-theme.min.css" />
    <link rel="stylesheet" type="text/css" href="G:\dotnet\css\hover.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome-4.7.0\css\font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome-4.7.0\css\font-awesome.min.css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <script type="text/javascript" src="G:\dotnet\js\jquery.js"></script>
     <script type="text/javascript" src="G:\dotnet\js\bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 33%;
            border: 1px solid #006600;
            background-color: #000000;
        }
        .auto-style2 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style3 {
            text-align: center;
        }
          /* Style the links inside the sidenav */
#mySidenav a {
  position: absolute; /* Position them relative to the browser window */
  left: -135px; /* Position them outside of the screen */
  transition: 0.3s; /* Add transition on hover */
  padding: 15px; /* 15px padding */
  width: 140px; /* Set a specific width */
  text-decoration: none; /* Remove underline */
  font-size: 20px; /* Increase font size */
  color: white; /* White text color */
  border-radius: 0 5px 5px 0; /* Rounded corners on the top right and bottom right side */
  height:20px;
}

#mySidenav a:hover {
  left: 0; /* On mouse-over, make the elements appear as they should */
}

/* The about link: 20px from the top with a green background */
#about {
  top: 72px;
  background-color:  #1fa514;
}

#blog {
  top: 132px;
  background-color: #2196F3; /* Blue */
}

#projects {
  top: 192px;
  background-color: #f44336; /* Red */
}

#contact {
  top: 252px;
  background-color: #555 /* Light Black */
}
            #pass {
                top:312px;
                background-color:#f5a323;
            }

        #c { 
            margin-left:0px;
        }

        #c:hover {
            background-color:#0c63ff;
        }

        #hm {
                top:372px;
                background-color:#6c4cdc;
            }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div   style="height:60px;width:1340px;margin-left:0px;background-color:#807f7f;border-radius:10px 10px" id="c">
            <%-- <div style="height:100px;width:100px;border-radius:100% 100%;background-color:#C0C0C0; float:left"> --%>
                <%-- <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl="~/Major/u3.png" Width="120px" />--%>
     
             <%--</div>--%>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             <asp:Label ID="Label14" runat="server" Enabled="False" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="White" Text="Edit Profile" style="color: #FFFFFF"></asp:Label>
    
        </div>
         <div id="mySidenav" class="sidenav">
  <a href="view profile.aspx" id="about"><span class="fa fa-user" style="font-size:20px"></span>View Profile</a>
  <a href="profile.aspx" id="blog"><span class="fa fa-edit" style="font-size:20px"></span>Edit Profile</a>
  <a href="#" id="projects"><span class="fa fa-list" style="font-size:20px"></span>My Order</a>
  <a href="#" id="contact"><span class="fa fa-dollar" style="font-size:20px"></span>My Payment</a>
  <a href="change passuser.aspx" id="pass"><span class="fa fa-lock" style="font-size:20px"></span>Change Pass</a>
             <a href="homeuser.aspx" id="hm"><span class="fa fa-home" style="font-size:20px"></span>Home</a>
</div> 

    <div style="border-radius:10px 10px; /*background-color:rgba(202, 235, 254, 0.50);*/ height:650px;width:1310px;margin-top:5px;margin-left:30px ;background-image:url('minor project/bg.jpg');background-repeat:no-repeat;background-size:100% 800px;height:700px">
        <center style="height: 128px"> <asp:Image ID="Image1" runat="server" Height="142px" ImageUrl="~/Major/u.png" Width="161px" style="text-align: center" /></center>
        &nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<table align="center" class="auto-style1" style="opacity:0.8; margin-left: 432px; color: #FFFFFF;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="First Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Last Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style2" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style2" Text="Pincode"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="24px" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style2" Text="Contact no"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="24px" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style2" Text="User id"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style2" Text="DOB"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Height="24px" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style2" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="104px">
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label9" runat="server" CssClass="auto-style2" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Height="24px" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label10" runat="server" CssClass="auto-style2" Text="Retype Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Height="24px" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label11" runat="server" CssClass="auto-style2" Text="Security Question"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>--Select Any--</asp:ListItem>
                        <asp:ListItem>Your nick name?</asp:ListItem>
                        <asp:ListItem>Your blood group?</asp:ListItem>
                        <asp:ListItem>Your Fav food?</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label12" runat="server" CssClass="auto-style2" Text="Security Answer"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Height="24px" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#009900" BorderColor="#666666" style="font-size: medium;border-radius:5px 5px" Text="Update" Width="100px" OnClick="Button1_Click1" BorderStyle="None" ForeColor="White" Height="31px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#FF9900" BorderColor="#666666" style="font-size: medium;border-radius:5px 5px" Text="Back" Width="100px" OnClick="Button2_Click" BorderStyle="None" ForeColor="White" Height="31px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
