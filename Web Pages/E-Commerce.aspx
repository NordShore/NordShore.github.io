<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="E-Commerce.aspx.cs" Inherits="NordShore.Web_Pages.E_Commerce" %>

<!DOCTYPE html>

<head runat="server">
    <title>NordShore: E-Commerce</title>
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
            <div class="aboutUsCover" style="left: 27vw"></div>

            <!-- Sub-Titles -->
            <asp:Label Text="NordShore E-Commerce" runat="server" class="aboutSubTitle" Style="left: 36vw;" />

            <!-- E-commerce Text -->
            <asp:Label Text="Below are the different sites where we sell our NordShore products from. We made sure to use trusted sites such as Amazon so that we can build up trust with our consumers. Happy Shopping!!!" runat="server" class="aboutSubText" style="left: 56.5vh"/>
            <asp:Label Text="Amazon" runat="server" class="aboutSubText" style="left: 72vh; top: 37.7vh "/>

            <!-- Container Buttons -->
            <asp:Button ID="amazon" OnClick="amazon_Click" runat="server" class="amazonButton"/>

            <!-- Version -->
            <asp:Label Text="V1.0.0" runat="server" class="version" />
        </div>
    </form>
</body>