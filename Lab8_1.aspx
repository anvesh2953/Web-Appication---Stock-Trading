<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Lab8_1.aspx.cs" Inherits="Lab8_1" %>

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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
            <asp:ListItem Value="10.00">Blue Shirt</asp:ListItem>
            <asp:ListItem Value="12.00">Red Shirt</asp:ListItem>
            <asp:ListItem Value="14.00">Green Shirt</asp:ListItem>
            <asp:ListItem Value="16.00">Brown Shirt</asp:ListItem>
            <asp:ListItem Value="18.00">Yellow Shirt</asp:ListItem>
        </asp:CheckBoxList>
    </p>
    <p>
        <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Checkout" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

