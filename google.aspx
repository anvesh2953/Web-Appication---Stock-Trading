<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="google.aspx.cs" Inherits="google" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <link href="https://fonts.googleapis.com/css?family=Alegreya" rel="stylesheet"> 
    <br />
    <asp:Label ID="Label1" style="color:greenyellow;font-size:xx-large;font-size:60px; font-family: 'Alegreya', serif;" runat="server" Text="Visitors"></asp:Label>
    <br />
    <iframe width="600" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/1KaJEboyT828qdaICOU78CtlSbpaJ1lYNFI4h3_r5YTw/pubchart?oid=1527696817&amp;format=interactive"></iframe>
    <link href="https://fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet"> 
    <br />
    <asp:Label ID="Label2" style="color:chocolate;font-size:xx-large;font-size:60px; font-family: 'Poiret One', cursive;" runat="server" Text="Top Pages"></asp:Label>
    <br />
    <iframe width="600" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/1KaJEboyT828qdaICOU78CtlSbpaJ1lYNFI4h3_r5YTw/pubchart?oid=749502783&amp;format=interactive"></iframe>
    <link href="https://fonts.googleapis.com/css?family=Caveat+Brush" rel="stylesheet"> 
    <br />
    <asp:Label ID="Label3" style="color:darkgoldenrod;font-size:xx-large;font-size:60px; font-family: 'Caveat Brush', cursive;" runat="server" Text="Time on Page"></asp:Label>
    <br />
    <iframe width="600" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/1KaJEboyT828qdaICOU78CtlSbpaJ1lYNFI4h3_r5YTw/pubchart?oid=1647362658&amp;format=interactive"></iframe>
</asp:Content>

