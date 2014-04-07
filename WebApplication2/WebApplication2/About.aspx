<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="WebApplication2.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
       Visualisations of MovieLens Dataset
    </h2>
    <p>
        <table width="100%">
        <tr><td><img src="../Images/plot1.png" width=400px height=400px/></td><td> <img src="../Images/plot2.png" width=400px height=400px/></td></tr>
       <tr><td><img src="../Images/plot3.png" width=400px height=500px/></td><td> <img src="../Images/plot4.png" width=400px height=400px/></td></tr>
        
        </table>
    </p>
    <h2>
       Visualisations of Jester Jokes Dataset
    </h2>
    <p>
        <table width="100%">
        <tr><td><img src="../Images/jester1.png" width=400px height=400px/></td><td> <img src="../Images/jester2.png" width=400px height=400px/></td></tr>
       <tr><td><img src="../Images/jester3.png" width=400px height=500px/></td><td> <img src="../Images/jester4.png" width=400px height=400px/></td></tr>
        
        </table>
    </p>
</asp:Content>
