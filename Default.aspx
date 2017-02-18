<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Anvesh Muttavarapu</h1>
        <p class="text-success">OMIS 675</p>
        <p class="lead">
            <img alt="" src="IMG/index.jpg" style="width: 300px; height: 168px" /></p>
        <p><a href="About.aspx" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
        <p>
            <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="Get Geo" PostBackUrl="https://omisapps.niu.edu/Z1782619/Geo.aspx" />
        &nbsp;&nbsp;&nbsp;
        </p>
        <p>
            <asp:Button ID="Button2" class="btn btn-warning" runat="server" Height="35px" Text="Video" PostBackUrl="https://omisapps.niu.edu/Z1782619/Video.aspx" />
        </p>
        <p>
            &nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4">
        </div>
        <div class="col-md-4">
        </div>
    </div>
</asp:Content>
