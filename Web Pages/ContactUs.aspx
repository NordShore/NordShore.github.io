<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="NordShore.Web_Pages.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nordshore: Contact Us</title>
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
            <img src="../Images/ContactImage.png" />
            <!-- The Buttons which will be shown on the Top Row -->
            <asp:Button ID="home" OnClick="home_Click" Text="Home" runat="server" class="topRowButtons" Style="left: 25vw" />
            <asp:Button ID="signUp" OnClick="signUp_Click" Text="Sign-Up" runat="server" class="topRowButtons" Style="left: 90vw" />
            <asp:Button ID="login" OnClick="login_Click" Text="Login" runat="server" class="topRowButtons" Style="left: 80vw" />
            <asp:Button ID="aboutUs" OnClick="aboutUs_Click" Text="About Us" runat="server" class="topRowButtons" Style="left: 45vw" />
            <asp:Button ID="contact" OnClick="contact_Click" Text="Contact Us" runat="server" class="topRowButtons" Style="left: 55vw" />
            <asp:Button ID="news" OnClick="news_Click" Text="News" runat="server" class="topRowButtons" Style="left: 35vw" />

            <!-- Contact Us Image -->
            <asp:Image ImageUrl="~/Images/ContactImage.png" runat="server" class="image" Style="left: 0.03vw"/>

            <!-- Text Container -->
            <div style="position: absolute; left: 31.5vw; top: 13vh; width: 34vw; height: 80vh; background-size: 34vw 80vh; background-color: aliceblue; opacity: 0.6; border-radius: 20px;"></div>

            <!-- Sub-Titles -->
            <asp:Label Text="Contact Us?" runat="server" class="newsTitle" Style="left: 42vw; color: darkblue; top: 14vh" />

            <!-- Sub-Text -->
            <asp:Label Text="If we dont respond after 48 hours please re-email us at business.nordshore@outlook.com" runat="server" class="subText" Style="left: 33.5vw; color: darkblue; top: 20vh" />

            <textarea id="requestInput" name="requestInput" class="textBox" runat="server" style="position:absolute; top: 37vh; left: 38vw; height: 40vh" rows="4" cols="50" placeholder="What would you like to tell us?"></textarea>
            <!-- Text Boxes -->
            <asp:TextBox ID="emailValidation" TextMode="Email" placeholder="What is your Email?" runat="server" class="textBox" Style="top: 30vh; left: 38vw;" />

            <!-- Buttons -->
            <asp:Button ID="contacted" OnClick="contacted_Click" Text="Sumbit Response" runat="server" class="containerButtons" style="left: 42vw; top: 80vh"/>>

            <!-- Error Labels -->
            <asp:Label ID="emailError" Text="" class="validate" style="top: 35vh; left: 43vw" runat="server" />
            <asp:Label ID="textError" Text="" class="validate" style="top: 78vh; left: 42.8vw" runat="server" />

            <!-- Version -->
            <asp:Label Text="V1.0.0" runat="server" class="version" />
        </div>
    </form>
</body>
</html>