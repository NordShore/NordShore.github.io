<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="NordShore.Web_Pages.News" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NordShore: News</title>
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

            <!-- News Image -->
            <asp:Image ImageUrl="~/Images/NewsPhoto.png" runat="server" class="image" Style="left: 0.03vw"/>

            <!-- Image Containers -->
            <div class="imageCover"></div>

            <!-- Text Container -->
            <div style="left: 0.5vw; position: absolute; top: 11vh; width: 30vw; height: 88vh; background-size: 1481px 532px; background-color: black; opacity: 0.4; border-radius: 20px"></div>
            <div class="newsContainer" style="left: 31vw; top: 11vh"></div>
            <div class="newsContainer" style="left: 65.5vw; top: 11vh"></div>
            <div class="newsContainer" style="left: 31vw; top: 55.5vh"></div>
            <div class="newsContainer" style="left: 65.5vw; top: 55.5vh"></div>

            <!-- Sub-Titles -->
            <asp:Label Text="NordShore Monthly News" runat="server" class="newsTitle" Style="left: 2.5vw;" />
            <asp:Label Text="NordShore Week One News" runat="server" class="newsTitle" Style="left: 33.7vw;" />
            <asp:Label Text="NordShore Week Two News" runat="server" class="newsTitle" Style="left: 33.7vw; top: 56vh" />
            <asp:Label Text="NordShore Week Three News" runat="server" class="newsTitle" Style="left: 67.8vw;" />
            <asp:Label Text="NordShore Week Four News" runat="server" class="newsTitle" Style="left: 68.4vw; top: 56vh" />

            <!-- Monthly News Text -->
            <asp:Label Text="NordShores' official website is now live!!! Check out the site which our one man team developed. You can do a lot of different things on this site. Why not make an account where you can recieve emails about our progression with our services and how they will benefit you." runat="server" class="monthNewsText" style="left: 0.5vw; top: 18vh"/>
            <asp:Label Text="If you don't want to make an account with us that's fine on our website we will do news updates with out progression. But what do you miss out? " runat="server" class="monthNewsText" style="left: 0.5vw; top: 40vh"/>
            <asp:Label Text="By not having an Official NordShore account you could lose out on account ownership offers wherever it be deals on our sites such as Amazon or Codes for any of the apps we create." runat="server" class="monthNewsText" style="left: 0.5vw; top: 52.5vh"/>
            <asp:Label Text="We would love to hear suggestions to what we could develop and we would love to hear why you may feel as if making an account wouldn't benefit you. Enjoy using our services!!!" runat="server" class="monthNewsText" style="left: 0.5vw; top: 68vh"/>

            <!-- Weekly News Text -->
            <asp:Label Text="NordShores' official website is now live!!! Check out the site which our one man team developed. You can do a lot of different things on this site. Why not make an account where you can recieve emails about our progression with our services and how they will benefit you." runat="server" class="monthNewsText" style="left: 33.4vw; top: 18vh"/>

            <!-- Version -->
            <asp:Label Text="V1.0.0" runat="server" class="version" />
        </div>
    </form>
</body>
</html>