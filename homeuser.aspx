<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homeuser.aspx.cs" Inherits="homeuser" %>

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

    <style type="text/css">
        ul{
            list-style-type: none;
            margin:0;
            padding:0;
            overflow :hidden;
            background-color: #0066FF;
            color:white;
          
        }
       
        li {
            float: left; 
        }
            
        li a {
            
            display: block;
            color:White;
            text-align:center;
            padding:14px 16px;
            text-decoration:none;
             }
            li a:hover {
                background-color:#c8c3c3;
                color:black;
            }
        .auto-style2 {
            text-align: center;
            font-size: x-large;
        }

        .col {
            background-color:#7c7474;
        }
        .col:hover {
            background-color:#7c7474; 
            opacity:0.5;
        }


        /* The flip box container - set the width and height to whatever you want. We have added the border property to demonstrate that the flip itself goes out of the box on hover (remove perspective if you don't want the 3D effect */
.flip-box {
  background-color: transparent;
  width: 270px;
  height: 380px;
  border: 1px solid #f1f1f1;
  perspective: 1000px; /* Remove this if you don't want the 3D effect */
}

/* This container is needed to position the front and back side */
.flip-box-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

/* Do an horizontal flip when you move the mouse over the flip box container */
.flip-box:hover .flip-box-inner {
  transform: rotateY(180deg);
}

/* Position the front and back side */
.flip-box-front, .flip-box-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

/* Style the front side */
.flip-box-front {
  /*background-image:url('minor project/WC2.png');*/
  color: black;
}

/* Style the back side */
.flip-box-back {
  /*background-image:url('minor project/WC2.png');*/
  color: white;
  transform: rotateY(180deg);
}
 /* Style the navbar */
#navbar {
  overflow: hidden;
  /*background-color: #333;*/
}

/* The sticky class is added to the navbar with JS when it reaches its scroll position */
.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            color: #66CCFF;
            font-size: medium;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            color: #FFFFFF;
            font-size: medium;
        }
        .auto-style7 {
            font-size: medium;
        }
   </style>

    <script>

        // When the user scrolls the page, execute myFunction
        window.onscroll = function () { myFunction() };

        // Get the navbar
        var navbar = document.getElementById("navbar");

        // Get the offset position of the navbar
        var sticky = navbar.offsetTop;

        // Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
        function myFunction() {
            if (window.pageYOffset >= sticky) {
                navbar.classList.add("sticky")
            } else {
                navbar.classList.remove("sticky");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div <%--id="navbar" class="sticky" style="width:1333px"--%>>
     <div  id="navbar" style="background-color:#073ef2; color:white; height:50px">
                <ul >
                    <a href="Default.aspx" style="float:left;font-size:36px;text-decoration:none;color:white;height:50px;width:200px;background-color:black">_Fashionista_</a>
                    <li style="float:right"><a href="cart.aspx">&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"  style="font-size: large; color: #FFFFFF; background-color: #FF0000; border-width:4px; border-radius:100px 100px " BorderColor="Red" BorderStyle="Double" BorderWidth="4px" ></asp:Label>
                        <span class="fa fa-shopping-cart"  style="font-size:25px"></span></a></li>
                        <asp:Label ID="Label3" runat="server" Text="Welcome_" style="font-size:20px; float:left"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="Label" style="font-size:20px; float:left"></asp:Label>
                        <span class="fa fa-search" style="font-size:22px; float:right;margin-top:9px"></span>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="       Search by category" style="width:300px; height:28px;border-radius:4px 4px;float:right;margin-top:9px; background-color: #F0F0F0;"></asp:TextBox>
                </ul>
            </div>
            <nav id="navbar">
                <div class="topnav" id="myTopnav">
                    <ul class="nav navbar-nav" style="background-color:#0066FF; ; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; ">
                        <li ><a href="homeuser.aspx"><span class="fa fa-home" style="font-size:20px"></span>Home</a></li>
                        <li ><a href="men.aspx"><span class="fa fa-male" style="font-size:20px"></span>Men's Wear</a></li>
                        <li ><a href="women.aspx"><span class="fa fa-female" style="font-size:20px"></span>Women's Wear</a></li>
                        <li ><a href="kid.aspx"><span class="fa fa-child" style="font-size:20px"></span>Kid's Wear</a></li>
                        <li ><a href="appliance.aspx"><span class="fa fa-plug" style="font-size:20px"></span>Home Appliances</a></li>
                         <li ><a href="search.aspx"><span class="fa fa-search" style="font-size:20px"></span>Search</a></li>
                        <li ><a href="view profile.aspx"><span class="fa fa-user" style="font-size:20px"></span>My Account</a></li>
                        <li style="float:right"><a href="sign in.aspx"><span class="fa fa-reply" style="font-size:20px"></span>Logout</a></li>
                       <%-- <li style="float:right"><a href="c.aspx"><span class="fa fa-reply" style="font-size:20px"></span>c</a></li>--%>
                    </ul>
                </div>
            </nav>
            </div>
        <asp:Image ID="Image1" runat="server" Width="100%" Height="400px" ImageUrl="~/Major/home.jpg" />
        <center><h2 style="border: thin none #9900FF; background-color: #FF9966; border-radius:6px 6px; height: 32px;" class="auto-style3">Women's Category</h2></center>
        <div>
            <asp:Image ID="Image2" runat="server" Height="49px" ImageUrl="~/Major/special-offer-animated-gif-3.gif" Width="159px" />
        </div>
        <div style="background-color:#f8d795;border-radius:10px 10px"><br /><br />
       <center><div style="height:410px;width:100%">
           <div style="height:410px;width:50%;float:left">
               <div class="col" style="height:410px;width:50%;float:left;background-color:white">
                  <%--1div --%> <div>
        <div class="flip-box" style="margin-left:30px">
           <div class="flip-box-inner">
              <div class="flip-box-front" style="background-image:url('minor project/WC2.png')">
                  <%--<h2>Front Side</h2>--%>
              </div>
           <div class="flip-box-back" style="background-image:url('minor project/WC2.png')">
                 <%-- <h2>Back Side</h2>--%>
              </div>
          </div>
        </div>
        <div style="height:30px;width:270px;background-color:#524f4f;margin-left:30px;color:white" class="auto-style2"><strong style="font-size: large">Women's Casual Wear</strong></div>
            </div>
               </div>
               <div  class="col" style="height:410px;width:50%;float:right;background-color:white">
                 <%-- 2div --%> <div>
        <div class="flip-box" style="margin-left:30px">
           <div class="flip-box-inner">
              <div class="flip-box-front" style="background-image:url('minor project/WE3.png')">
                 <%-- <h2>Front Side</h2>--%>
              </div>
           <div class="flip-box-back" style="background-image:url('minor project/WE3.png')">
                  <%--<h2>Back Side</h2>--%>
              </div>
          </div>
        </div>
        <div style="height:30px;width:270px;background-color:#524f4f;margin-left:30px;color:white" class="auto-style2"><strong style="font-size: large">Women's Ethnic Wear</strong></div>
            </div>
               </div>
           </div>
            <div style="height:410px;width:50%;float:right">
               <div  class="col" style="height:410px;width:50%;float:left;background-color:white">
                   <%--3div--%> <div>
        <div class="flip-box" style="margin-left:30px">
           <div class="flip-box-inner">
              <div class="flip-box-front" style="background-image:url('minor project/WSC2.png')">
              <%--<h2>Front Side</h2>--%>
              </div>
           <div class="flip-box-back" style="background-image:url('minor project/WSC2.png')">
                  <%--<h2>Back Side</h2>--%>
              </div>
          </div>
        </div>
        <div style="height:30px;width:270px;background-color:#524f4f;margin-left:30px;color:white" class="auto-style2"><strong style="font-size: large">Women's Summer Wear</strong></div>
            </div>
               </div>
               <div class="col" style="height:410px;width:50%;float:left;background-color:white">
               <%-- 4div --%>   <div>
        <div class="flip-box" style="margin-left:30px">
           <div class="flip-box-inner">
              <div class="flip-box-front" style="background-image:url('minor project/WC4.png')">
                  <%--<h2>Front Side</h2>--%>
              </div>
           <div class="flip-box-back" style="background-image:url('minor project/WC4.png')">
                  <%--<h2>Back Side</h2>--%>
              </div>
          </div>
        </div>
        <div style="height:30px;width:270px;background-color:#524f4f;margin-left:30px;color:white" class="auto-style2"><strong style="font-size: large">Women's Footwear</strong></div>
            </div>
               </div>
           </div>
        </div></center> 

    <br /><br /></div>
       
        
    </form>
       
        
        <br />
        <br /><center><h2 style="border: thin none #9900CC; background-color: #FF9966; border-radius:6px 6px; height: 32px">Men's Category</h2></center>
       <%-- Men Wear--%><div style="background-color:#f8d795;border-radius:10px 10px"><br /><br />
         <center><div style="height:410px;width:100%">
           <div style="height:410px;width:50%;float:left">
               <div  class="col" style="height:410px;width:50%;float:left;background-color:white">
                  <%--1div --%> <div>
        <div class="flip-box" style="margin-left:30px">
           <div class="flip-box-inner">
              <div class="flip-box-front" style="background-image:url('minor project/MC4.png')">
                  <%--<h2>Front Side</h2>--%>
              </div>
           <div class="flip-box-back" style="background-image:url('minor project/MC4.png')">
                 <%-- <h2>Back Side</h2>--%>
              </div>
          </div>
        </div>
        <div style="height:30px;width:270px;background-color:#524f4f;margin-left:30px;color:white" class="auto-style2"><strong style="font-size: large">Men's Casual Wear</strong></div>
            </div>
               </div>
               <div  class="col" style="height:410px;width:50%;float:right;background-color:white">
                 <%-- 2div --%> <div>
        <div class="flip-box" style="margin-left:30px">
           <div class="flip-box-inner">
              <div class="flip-box-front" style="background-image:url('minor project/ME9.png')">
                 <%-- <h2>Front Side</h2>--%>
              </div>
           <div class="flip-box-back" style="background-image:url('minor project/ME9.png')">
                  <%--<h2>Back Side</h2>--%>
              </div>
          </div>
        </div>
        <div style="height:30px;width:270px;background-color:#524f4f;margin-left:30px;color:white" class="auto-style2"><strong style="font-size: large">Men's Ethnic Wear</strong></div>
            </div>
               </div>
           </div>
            <div style="height:410px;width:50%;float:right">
               <div  class="col" style="height:410px;width:50%;float:left;background-color:white">
                   <%--3div--%> <div>
        <div class="flip-box" style="margin-left:30px">
           <div class="flip-box-inner">
              <div class="flip-box-front" style="background-image:url('minor project/MSC8.png')">
              <%--<h2>Front Side</h2>--%>
              </div>
           <div class="flip-box-back" style="background-image:url('minor project/MSC8.png')">
                  <%--<h2>Back Side</h2>--%>
              </div>
          </div>
        </div>
        <div style="height:30px;width:270px;background-color:#524f4f;margin-left:30px;color:white" class="auto-style2"><strong style="font-size: large">Men's Summer Wear</strong></div>
            </div>
               </div>
               <div  class="col" style="height:410px;width:50%;float:left;background-color:white">
               <%-- 4div --%>   <div>
        <div class="flip-box" style="margin-left:30px">
           <div class="flip-box-inner">
              <div class="flip-box-front" style="background-image:url('minor project/MSC10.png')">
                  <%--<h2>Front Side</h2>--%>
              </div>
           <div class="flip-box-back" style="background-image:url('minor project/MSC10.png')">
                  <%--<h2>Back Side</h2>--%>
              </div>
          </div>
        </div>
        <div style="height:30px;width:270px;background-color:#524f4f;margin-left:30px;color:white" class="auto-style2"><strong style="font-size: large">Men's Footwear</strong></div>
            </div>
               </div>
           </div>
        </div></center> 
           <br /><br /></div>

     <br />
        <br /><center><h2 style="border: thin none #9900CC; background-color: #FF9966; border-radius:6px 6px; height: 32px">Kid's Category</h2></center>
       <%-- Men Wear--%><div style="background-color:#f8d795;border-radius:10px 10px"><br /><br />
         <center><div style="height:410px;width:100%">
           <div style="height:410px;width:50%;float:left">
               <div  class="col" style="height:410px;width:50%;float:left;background-color:white">
                  <%--1div --%> <div>
        <div class="flip-box" style="margin-left:30px">
           <div class="flip-box-inner">
              <div class="flip-box-front" style="background-image:url('minor project/B4.png')">
                  <%--<h2>Front Side</h2>--%>
              </div>
           <div class="flip-box-back" style="background-image:url('minor project/B4.png')">
                 <%-- <h2>Back Side</h2>--%>
              </div>
          </div>
        </div>
        <div style="height:30px;width:270px;background-color:#524f4f;margin-left:30px;color:white" class="auto-style2"><strong style="font-size: large">Kids Wear (boy)</strong></div>
            </div>
               </div>
               <div  class="col" style="height:410px;width:50%;float:right;background-color:white">
                 <%-- 2div --%> <div>
        <div class="flip-box" style="margin-left:30px">
           <div class="flip-box-inner">
              <div class="flip-box-front" style="background-image:url('minor project/G4.png')">
                 <%-- <h2>Front Side</h2>--%>
              </div>
           <div class="flip-box-back" style="background-image:url('minor project/G4.png')">
                  <%--<h2>Back Side</h2>--%>
              </div>
          </div>
        </div>
        <div style="height:30px;width:270px;background-color:#524f4f;margin-left:30px;color:white" class="auto-style2"><strong style="font-size: large">Kid's Wear (Girl)</strong></div>
            </div>
               </div>
           </div>
            <div style="height:410px;width:50%;float:right">
               <div  class="col" style="height:410px;width:50%;float:left;background-color:white">
                   <%--3div--%> <div>
        <div class="flip-box" style="margin-left:30px">
           <div class="flip-box-inner">
              <div class="flip-box-front" style="background-image:url('minor project/jucier.png')">
              <%--<h2>Front Side</h2>--%>
              </div>
           <div class="flip-box-back" style="background-image:url('minor project/jucier.png')">
                  <%--<h2>Back Side</h2>--%>
              </div>
          </div>
        </div>
        <div style="height:30px;width:270px;background-color:#524f4f;margin-left:30px;color:white" class="auto-style2"><strong style="font-size: large">Home Appliances</strong></div>
            </div>
               </div>
               <div  class="col" style="height:410px;width:50%;float:left;background-color:white">
               <%-- 4div --%>   <div>
        <div class="flip-box" style="margin-left:30px">
           <div class="flip-box-inner">
              <div class="flip-box-front" style="background-image:url('minor project/Weight machine.png')">
                  <%--<h2>Front Side</h2>--%>
              </div>
           <div class="flip-box-back" style="background-image:url('minor project/Weight machine.png')">
                  <%--<h2>Back Side</h2>--%>
              </div>
          </div>
        </div>
        <div style="height:30px;width:270px;background-color:#524f4f;margin-left:30px;color:white" class="auto-style2"><strong style="font-size: large">Home Appliances</strong></div>
            </div>
               </div>
           </div>
        </div></center> 
           <br /><br /></div>
    <div><p style="color:red;font-size:20px">
        Here All the Categories displayed are provide to the customer as they show . No kind of mis lead or content will be shown . This fashionista SHOPSITE is 24*7 fro you at your service and please to serve you. We asure you about you details are to be safe and we make sure that all the new updates and benefits will be provided to the customer at there home door . 
        If you are please then make sure you drop your feedback to us that we make more new updates and serve you. Thankyou!! 

         </p>
        <%--Divisions banao purvi yaha pe--%>
       <%--<div>
        <div class="flip-box" style="margin-left:30px">
           <div class="flip-box-inner">
              <div class="flip-box-front" style="background-image:url('minor project/WC2.png')">
                  <h2>Front Side</h2>
              </div>
           <div class="flip-box-back" style="background-image:url('minor project/WC2.png')">
                  <h2>Back Side</h2>
              </div>
          </div>
        </div>
        <div style="height:30px;width:270px;background-color:#524f4f;margin-left:30px;color:white" class="auto-style2"><strong>Women's Casual Wear</strong></div>
            </div>--%>

    </div>
    <div style="background-color:#524f4f; height: 25px;" class="auto-style5">

        <strong><span class="auto-style6">design by - Keshika Gupta</span><span class="auto-style7"> </span></strong><span class="auto-style4"><strong>copyright@2k19</strong></span></div>
</body>
</html>
