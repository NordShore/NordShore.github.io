<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="NordShore.Web_Pages.ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NordShore: Reset Password</title>
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
            <asp:Image ImageUrl="~/Images/SignUp.png" runat="server" class="image" Style="left: 0.03vw"/>

            <!-- Image Containers -->
            <div class="imageCover"></div>

            <!-- Text Container -->
            <div style="position: absolute; left: 31.5vw; top: 13vh; width: 34vw; height: 80vh; background-size: 34vw 80vh; background-color: aliceblue; opacity: 0.6; border-radius: 20px;"></div>

            <!-- Sub-Titles -->
            <asp:Label Text="Reset Password" runat="server" class="newsTitle" Style="left: 41vw; color: darkblue; top: 14vh" />

            <!-- Sub-Text -->
            <asp:Label ID="usernameVisability" runat="server" class="subText" Text="" style="text-align:center; top: 30vh; left: 32.5vw; color: black;"></asp:Label>

            <!-- Text Boxes -->
            <asp:TextBox ID="password" placeholder="Enter a Password" TextMode="Password" runat="server" class="textBox" Style="top: 37vh; left: 38vw;" />
            <asp:TextBox ID="validatePass" placeholder="Re-enter your Password" TextMode="Password" runat="server" class="textBox" Style="top: 44vh; left: 38vw;" />
            <asp:TextBox ID="codeValidate" placeholder="Enter the code you recieved from us" runat="server" class="textBox" Style="top: 52vh; left: 38vw;" />

            <!-- Validate Boxes -->
            <asp:Label ID="validatePassword" Text="" class="validate" style="top: 41.8vh;" runat="server" />
            <asp:Label ID="validateConfirmation" Text="" class="validate" style="top: 49.5vh; left: 42.5vw" runat="server" />
            <asp:Label ID="validateCode" Text="" class="validate" style="top: 58vh; left: 42.4vw" runat="server" />

            <!-- Buttons -->
            <asp:Button ID="resetAcc" OnClick="resetAcc_Click" Text="Reset Password" runat="server" class="containerButtons" style="left: 42vw; top: 63vh"/>

            <!-- Version -->
            <asp:Label Text="V1.0.0" runat="server" class="version" />
        </div>
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [login]" /> 
</body>
</html>