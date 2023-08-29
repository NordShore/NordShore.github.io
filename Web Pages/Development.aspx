<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Development.aspx.cs" Inherits="NordShore.Web_Pages.Development" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NordShore: Development</title>
    <link href="../CSS/Style.css"  rel="stylesheet" />
    <link href="../CSS/StyleTwo.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Setting up the Background -->
            <div class="topRow"></div>
            <div class="body"></div>

            <!-- The Logo -->
            <asp:Button Text="" runat="server" class="logo" />

            <!-- The Buttons which will be shown on the Top Row -->
            <asp:Button ID="home" OnClick="home_Click" Text="Home" runat="server" class="topRowButtons" Style="left: 25vw" />
            <asp:Button ID="signUp" OnClick="signUp_Click" Text="Sign-Up" runat="server" class="topRowButtons" Style="left: 90vw" />
            <asp:Button ID="login" OnClick="login_Click" Text="Login" runat="server" class="topRowButtons" Style="left: 80vw" />
            <asp:Button ID="aboutUs" OnClick="aboutUs_Click" Text="About Us" runat="server" class="topRowButtons" Style="left: 45vw" />
            <asp:Button ID="contact" OnClick="contact_Click" Text="Contact Us" runat="server" class="topRowButtons" Style="left: 55vw" />
            <asp:Button ID="news" OnClick="news_Click" Text="News" runat="server" class="topRowButtons" Style="left: 35vw" />

            <!-- About Us Image -->
            <asp:Image ImageUrl="~/Images/DevelopmentImage.png" runat="server" class="image" Style="left: 0.03vw"/>

            <!-- Image Containers -->
            <div class="imageCover"></div>

            <!-- Text Container -->
            <div class="aboutUsCover" style="left: 0.5vw"></div>
            <div class="aboutUsCover" style="left: 50.5vw"></div>

            <!-- Sub-Titles -->
            <asp:Label Text="NordShore Developers" runat="server" class="aboutSubTitle" Style="left: 10vw;" />
            <asp:Label Text="NordShore Apps" runat="server" class="aboutSubTitle" Style="left: 63.5vw;" />

            <!-- E-commerce Text -->
            <asp:Label Text="Besides are the different applications which were created by NordShore Indie Developers. When we partner up with each developer we ensure that they have been tailored so that it would benefit you. But what are these expectations?" runat="server" class="aboutSubText"/>
            <asp:Label Text="When we partner up we make sure that they will (at a minimum) carry on developing the app for 6 months but could range based on what sort of app is developed. We also ensure that they will consider each and every opinion in their apps progression so that the application built is bespoke to the consumers needs. Finally we make sure that each app that is made and partnered with us at NordShore will not be excessive when collecting data and will only ask for what it needs (even when you create an account)!!" runat="server" class="aboutSubTextOne" style="top: 40vh"/>
            <asp:Label Text="If you want to partner with us, contact us now!!!" runat="server" class="aboutSubTextTwo" style="top: 76vh"/>

            <!-- Development Text -->
            <asp:Label Text="Below has all the titles of the apps which our developers have created (alongside a link or download button) which you could use for free!!!" runat="server" class="aboutSubText" Style="left: 50.4vw"/>
            <asp:Label Text="If you want to give feedback, contact us today or contact the developer (if they have chosen to make their Email public)!!!" runat="server" class="aboutSubTextThreeB" Style="left: 50.4vw; top: 33vh"/>

            <!-- Container Buttons -->
            <asp:Button ID="contactUs" OnClick="contactUs_Click" Text="Contact Us" runat="server" class="containerButtons" Style="left: 17vw"/>

            <!-- Version -->
            <asp:Label Text="V1.0.0" runat="server" class="version" />
        </div>
    </form>
</body>
</html>