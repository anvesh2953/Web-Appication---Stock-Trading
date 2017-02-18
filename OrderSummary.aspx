<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="OrderSummary.aspx.cs" Inherits="OrderSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
</p>
<p>
    &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    Order Summary</p>
<p>
    Account:
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
<p>
    Action:
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</p>
<p>
    Stock:
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
</p>
<p>
    Quantity:
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
</p>
<p>
    Order Type:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
</p>
<p>
    Order Validity:
    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
</p>
<p>
    Limit Price:<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
</p>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Proceed" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
</p>
<p>
    &nbsp;</p>
</asp:Content>

