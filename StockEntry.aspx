<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="StockEntry.aspx.cs" Inherits="StockEntry" %>

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
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Stock ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Stock ID" HeaderText="Stock ID" InsertVisible="False" ReadOnly="True" SortExpression="Stock ID" />
            <asp:BoundField DataField="Stock Name" HeaderText="Stock Name" SortExpression="Stock Name" />
            <asp:BoundField DataField="Unit Price" HeaderText="Unit Price" SortExpression="Unit Price" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:2016_675_z1782619ConnectionString %>" DeleteCommand="DELETE FROM [Stocks] WHERE [Stock ID] = @original_Stock_ID AND [Stock Name] = @original_Stock_Name AND (([Unit Price] = @original_Unit_Price) OR ([Unit Price] IS NULL AND @original_Unit_Price IS NULL))" InsertCommand="INSERT INTO [Stocks] ([Stock Name], [Unit Price]) VALUES (@Stock_Name, @Unit_Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Stocks]" UpdateCommand="UPDATE [Stocks] SET [Stock Name] = @Stock_Name, [Unit Price] = @Unit_Price WHERE [Stock ID] = @original_Stock_ID AND [Stock Name] = @original_Stock_Name AND (([Unit Price] = @original_Unit_Price) OR ([Unit Price] IS NULL AND @original_Unit_Price IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Stock_ID" Type="Int32" />
            <asp:Parameter Name="original_Stock_Name" Type="String" />
            <asp:Parameter Name="original_Unit_Price" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Stock_Name" Type="String" />
            <asp:Parameter Name="Unit_Price" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Stock_Name" Type="String" />
            <asp:Parameter Name="Unit_Price" Type="Int32" />
            <asp:Parameter Name="original_Stock_ID" Type="Int32" />
            <asp:Parameter Name="original_Stock_Name" Type="String" />
            <asp:Parameter Name="original_Unit_Price" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>

