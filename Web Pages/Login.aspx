<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NordShore.Web_Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nordshore: Login</title>
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
            <asp:Image ImageUrl="~/Images/LoginImage.png" runat="server" class="image" Style="left: 0.03vw"/>

            <!-- Image Containers -->
            <div class="imageCover"></div>

            <!-- Text Container -->
            <div style="position: absolute; left: 31.5vw; top: 13vh; width: 34vw; height: 80vh; background-size: 34vw 80vh; background-color: aliceblue; opacity: 0.6; border-radius: 20px;"></div>

            <!-- Sub-Titles -->
            <asp:Label Text="Login" runat="server" class="newsTitle" Style="left: 44.8vw; color: darkblue; top: 14vh" />

            <!-- Text Boxes -->
            <asp:TextBox ID="username" placeholder="Enter a Username" runat="server" class="textBox" Style="top: 29vh; left: 38vw;" />
            <asp:TextBox ID="password" placeholder="Enter a Password" TextMode="Password" runat="server" class="textBox" Style="top: 36vh; left: 38vw;" />

            <!-- Error Labels -->
            <asp:Label ID="errorLabel" Text="" class="validate" style="top: 20vw; left: 36vw" runat="server" />

            <!-- Buttons -->
            <asp:Button ID="loginAccount" OnClick="loginAccount_Click" Text="Login" runat="server" class="containerButtons" style="left: 42vw; top: 44vh"/>
            <asp:Button ID="forgotPass" Text="Forgotten Password?" OnClick="forgotPass_Click" class="forgotten" runat="server"/>

            <!-- Version -->
            <asp:Label Text="V1.0.0" runat="server" class="version" />
        </div>
    </form>
</body>
</html>