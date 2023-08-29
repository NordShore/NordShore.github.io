<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="NordShore.Web_Pages.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NordShore: About Us</title>
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

            <!-- About Us Image -->
            <asp:Image ImageUrl="~/Images/AboutUsImage.png" runat="server" class="image" Style="left: 0.03vw"/>

            <!-- Image Containers -->
            <div class="imageCover"></div>

            <!-- Text Container -->
            <div class="aboutUsCover" style="left: 0.5vw"></div>
            <div class="aboutUsCover" style="left: 50.5vw"></div>

            <!-- Sub-Titles -->
            <asp:Label Text="NordShore E-commerce" runat="server" class="aboutSubTitle" Style="left: 10vw;" />
            <asp:Label Text="NordShore Development" runat="server" class="aboutSubTitle" Style="left: 60vw;" />

            <!-- E-commerce Text -->
            <asp:Label Text="Our team at NordShore has worked hard to try and help our consumers. We have managed to develop many sites powered by trusted E-commerce domains such as Shopify and Amazon so that you can shop comforted that everything you do is safe. We've even personilsed these shops so that you get the NordShore Experience!!!" runat="server" class="aboutSubText"/>
            <asp:Label Text="We have crafted each domain to follow three main targets: Quality, Service and Friendliness. We believe in these targets as we know how they make you enjoy your experience and without these we can't work the best we possibly could. This is why we offer different rewards for our users such as discounts. " runat="server" class="aboutSubTextOne"/>
            <asp:Label Text="If you click the corresponding buttons below, it will open up a seperate link to our external sites. Happy shopping!!!" runat="server" class="aboutSubTextTwo"/>

            <!-- Development Text -->
            <asp:Label Text="Hey there, drag the background image into your search bar and search for relating images..." runat="server" class="aboutSubText" Style="left: 50.4vw"/>
            <asp:Label Text="You couldn't find any couldn't you. That's because our developers use AI to make beautiful images which will make our websites more appealing to you. In fact we use AI in more aspects as it is the latest endeavour in human technology (so why shouldn't we use it)." runat="server" class="aboutSubTextOneB" Style="left: 50.4vw"/>
            <asp:Label Text="Now when we say we work with Indie developers to make the best possible services, what do we mean. Well NordShore as well as its external sites and games have been made by Indie developers. SO as you have been using this site, you have had a taste of what our partnered developers could offer." runat="server" class="aboutSubTextTwoB" Style="left: 50.4vw;"/>
            <asp:Label Text="Now check out what has been offered below by clicking the button!!!" runat="server" class="aboutSubTextThreeB" Style="left: 50.4vw;"/>

            <!-- Container Buttons -->
            <asp:Button ID="shopNow" OnClick="shopNow_Click" Text="Shop Now!" runat="server" class="containerButtons" Style="left: 17vw"/>
            <asp:Button ID="development" OnClick="development_Click" Text="Use Now!" runat="server" class="containerButtons" Style="left: 69vw"/>

            <!-- Version -->
            <asp:Label Text="V1.0.0" runat="server" class="version" />
        </div>
    </form>
</body>
</html>