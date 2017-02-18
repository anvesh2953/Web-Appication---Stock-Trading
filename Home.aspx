<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" ForeColor="#009900" Text="Kuber Investments"></asp:Label>
    </p>
<p>
    &nbsp;<asp:Label ID="Label2" runat="server" ForeColor="#CC0000" Text="Mission Statement"></asp:Label>
    </p>
<p>
    To empower individual to take care of their financial lives, free from high costs and conflits of traditional brokerage firm.</p>
<p>
    &nbsp;</p>
    <p>
        View Competitors:</p>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="URL" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:2016_675_z1782619ConnectionString %>" SelectCommand="SELECT * FROM [Websites1]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Entry.aspx">Add Websites</asp:HyperLink>
    </p>
<p>
    Want to buy stocks of your favorite companies??&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CashBuy.aspx">Click here</asp:HyperLink>
</p>
<p>
    &nbsp;</p>
</asp:Content>

