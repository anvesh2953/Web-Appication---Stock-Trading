<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CashBuy.aspx.cs" Inherits="CashBuy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <p style="font-size: x-large">
        &nbsp;</p>
    <p style="font-size: x-large">
        Cash Buy&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    <p style="font-size: x-small; font-weight: 700">
        STOCK&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Stock Name" DataValueField="Unit Price" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;Unit Price:
        <asp:Label ID="Label1" runat="server" Text="100"></asp:Label>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:2016_675_z1782619ConnectionString %>" SelectCommand="SELECT * FROM [Stocks]"></asp:SqlDataSource>
    </p>
    <p style="font-size: x-small; font-weight: 700">
        QUANTITY <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p style="font-size: x-small; font-weight: 700">
        Order Type&nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Height="16px">
            <asp:ListItem>Day</asp:ListItem>
            <asp:ListItem>IOC</asp:ListItem>
            <asp:ListItem>VTC</asp:ListItem>
        </asp:RadioButtonList>
&nbsp;&nbsp;</p>
    <p style="font-size: x-small; font-weight: 700">
        Order Validity <asp:RadioButtonList ID="RadioButtonList2" runat="server" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" RepeatDirection="Horizontal">
            <asp:ListItem>Market</asp:ListItem>
            <asp:ListItem>Limit</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p style="font-size: x-small; font-weight: 700">
        Limit Price <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p style="font-size: x-small; font-weight: 700">
        &nbsp;</p>
    <p style="font-size: x-small; font-weight: 700">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buy now" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear" />
    </p>
<p style="font-size: x-small; font-weight: 700">
        &nbsp;</p>
<p style="font-size: x-small; font-weight: 700">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StockEntry.aspx">Stock Data Entry</asp:HyperLink>
    </p>
</asp:Content>

