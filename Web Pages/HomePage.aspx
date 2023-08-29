<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="NordShore.Web_Pages.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NordShore: Home Page</title>

    <link href="../CSS/Style.css"  rel="stylesheet" />
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

            <!-- Home Page Image -->
            <asp:Image ImageUrl="~/Images/HomePage Intro Photo.png" runat="server" class="image"/>

            <!-- Image Containers -->
            <div class="imageCover"></div>

            <!-- Text Container -->
            <div class="textCover" style="left: 0.5vw;"></div>
            <div class="textCover" style="left: 35.5vw;"></div>
            <div class="textCover" style="left: 69.5vw;"></div>

            <!-- Sub-Titles -->
            <asp:Label Text="NordShore E-commerce" runat="server" CssClass="subTitle" Style="left: 6.5vw;" />
            <asp:Label Text="Why Sign-Up?" runat="server" CssClass="subTitle" Style="left: 45vw;" />
            <asp:Label Text="NordShore Development" runat="server" CssClass="subTitle" Style="left: 75vw;" />

            <!-- Sub-Text -->
            <asp:Label Text="Tired of looking for high-quality products for a reasonable cost? Why not try NordShores Official E-commerce Sites where you can shop for the best products at the lowest cost! Click the link below to learn more about where you can shop!" runat="server" class="subText"/>
            <asp:Label Text="By signing up to recieve emails from us, you can find that you will be able to earn discounts official NordShore products as well as being able to earn a chance to recieve early-access to some NordShore apps! Click the link to find out more!" runat="server" class="subText" Style="left: 35.6vw"/>
            <asp:Label Text="NordShore Development is an Indie developer scheme where developers of any talent publish their apps in partnership with us so that you can use brand new apps from a developer who truly cares. Click the link to check it out!" runat="server" class="subText" Style="left: 69.4vw"/>

            <!-- Container Buttons -->
            <asp:Button ID="shopNow" OnClick="shopNow_Click" Text="Shop Now!" runat="server" class="containerButtons" Style="left: 9.5vw"/>
            <asp:Button ID="subscribe" Text="Subscribe!" runat="server" OnClick="subscribe_Click" class="containerButtons" Style="left: 43.5vw"/>
            <asp:Button ID="development" OnClick="development_Click" Text="Find out more?" runat="server" class="containerButtons" Style="left: 78.5vw"/>

            <!-- Version -->
            <asp:Label Text="V1.0.0" runat="server" class="version" />
        </div>
    </form>
</body>
</html>