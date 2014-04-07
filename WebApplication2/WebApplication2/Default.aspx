<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
       KDM HACKATHON
    </h2>
    <p>
       Recommendation System suing MovieLens and Jester Datasets
    </p>
    
    <p>
        
    </p>
    <center><p>
        <asp:TextBox ID="userid" runat="server"></asp:TextBox>
    &nbsp;<asp:Label ID="Label1" runat="server" Text="UserID"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Recommendations" />
    </p>
    <p>
    <font color=green><div id="test" runat="server"></div></font>
    </p></center>
</asp:Content>
