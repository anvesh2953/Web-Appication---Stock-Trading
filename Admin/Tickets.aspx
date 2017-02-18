<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Tickets.aspx.cs" Inherits="Admin_Tickets" %>

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
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Status" DataValueField="Status" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:2016_675_z1782619ConnectionString %>" SelectCommand="SELECT * FROM [STATUS]"></asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="OpenTickets" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
            <asp:BoundField DataField="fName" HeaderText="fName" SortExpression="fName" />
            <asp:BoundField DataField="lName" HeaderText="lName" SortExpression="lName" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="sysName" HeaderText="sysName" SortExpression="sysName" />
            <asp:BoundField DataField="IP" HeaderText="IP" SortExpression="IP" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="ResponseTime" HeaderText="ResponseTime" SortExpression="ResponseTime" />
            <asp:BoundField DataField="ResolutionTime" HeaderText="ResolutionTime" SortExpression="ResolutionTime" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="OpenTickets" runat="server" ConnectionString="<%$ ConnectionStrings:2016_675_z1782619ConnectionString %>" SelectCommand="SELECT [ID], [CreateDate], [fName], [lName], [Phone], [Email], [sysName], [IP], [Status], [ResponseTime], [ResolutionTime] FROM [Incident] WHERE ([Status] = @Status2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="Status2" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnItemUpdated="FormView1_ItemUpdated">
            <EditItemTemplate>
                ID:
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                CreateDate:
                <asp:TextBox ID="CreateDateTextBox" runat="server" Text='<%# Bind("CreateDate") %>' />
                <br />
                fName:
                <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
                <br />
                lName:
                <asp:TextBox ID="lNameTextBox" runat="server" Text='<%# Bind("lName") %>' />
                <br />
                Phone:
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                sysName:
                <asp:TextBox ID="sysNameTextBox" runat="server" Text='<%# Bind("sysName") %>' />
                <br />
                IP:
                <asp:TextBox ID="IPTextBox" runat="server" Text='<%# Bind("IP") %>' />
                <br />
                OS:
                <asp:TextBox ID="OSTextBox" runat="server" Text='<%# Bind("OS") %>' />
                <br />
                FF:
                <asp:TextBox ID="FFTextBox" runat="server" Text='<%# Bind("FF") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                Status:
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Status" DataValueField="Status" SelectedValue='<%# Bind("Status") %>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:2016_675_z1782619ConnectionString %>" SelectCommand="SELECT * FROM [STATUS]"></asp:SqlDataSource>
                <br />
                ResponseTime:
                <asp:TextBox ID="ResponseTimeTextBox" runat="server" Text='<%# Bind("ResponseTime") %>' />
                <br />
                ResolutionTime:
                <asp:TextBox ID="ResolutionTimeTextBox" runat="server" Text='<%# Bind("ResolutionTime") %>' />
                <br />
                NOTES:
                <asp:TextBox ID="NOTESTextBox" runat="server" Height="118px" Text='<%# Bind("NOTES") %>' TextMode="MultiLine" Width="234px" />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                CreateDate:
                <asp:TextBox ID="CreateDateTextBox" runat="server" Text='<%# Bind("CreateDate") %>' />
                <br />
                fName:
                <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
                <br />
                lName:
                <asp:TextBox ID="lNameTextBox" runat="server" Text='<%# Bind("lName") %>' />
                <br />
                Phone:
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                sysName:
                <asp:TextBox ID="sysNameTextBox" runat="server" Text='<%# Bind("sysName") %>' />
                <br />
                IP:
                <asp:TextBox ID="IPTextBox" runat="server" Text='<%# Bind("IP") %>' />
                <br />
                OS:
                <asp:TextBox ID="OSTextBox" runat="server" Text='<%# Bind("OS") %>' />
                <br />
                FF:
                <asp:TextBox ID="FFTextBox" runat="server" Text='<%# Bind("FF") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                Status:
                <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                <br />
                ResponseTime:
                <asp:TextBox ID="ResponseTimeTextBox" runat="server" Text='<%# Bind("ResponseTime") %>' />
                <br />
                ResolutionTime:
                <asp:TextBox ID="ResolutionTimeTextBox" runat="server" Text='<%# Bind("ResolutionTime") %>' />
                <br />
                NOTES:
                <asp:TextBox ID="NOTESTextBox" runat="server" Text='<%# Bind("NOTES") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                CreateDate:
                <asp:Label ID="CreateDateLabel" runat="server" Text='<%# Bind("CreateDate") %>' />
                <br />
                fName:
                <asp:Label ID="fNameLabel" runat="server" Text='<%# Bind("fName") %>' />
                <br />
                lName:
                <asp:Label ID="lNameLabel" runat="server" Text='<%# Bind("lName") %>' />
                <br />
                Phone:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                sysName:
                <asp:Label ID="sysNameLabel" runat="server" Text='<%# Bind("sysName") %>' />
                <br />
                IP:
                <asp:Label ID="IPLabel" runat="server" Text='<%# Bind("IP") %>' />
                <br />
                OS:
                <asp:Label ID="OSLabel" runat="server" Text='<%# Bind("OS") %>' />
                <br />
                FF:
                <asp:Label ID="FFLabel" runat="server" Text='<%# Bind("FF") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                Status:
                <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
                <br />
                ResponseTime:
                <asp:Label ID="ResponseTimeLabel" runat="server" Text='<%# Bind("ResponseTime") %>' />
                <br />
                ResolutionTime:
                <asp:Label ID="ResolutionTimeLabel" runat="server" Text='<%# Bind("ResolutionTime") %>' />
                <br />
                NOTES:
                <asp:Label ID="NOTESLabel" runat="server" Text='<%# Bind("NOTES") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:2016_675_z1782619ConnectionString %>" DeleteCommand="DELETE FROM [Incident] WHERE [ID] = @original_ID AND [CreateDate] = @original_CreateDate AND [fName] = @original_fName AND [lName] = @original_lName AND [Phone] = @original_Phone AND [Email] = @original_Email AND (([sysName] = @original_sysName) OR ([sysName] IS NULL AND @original_sysName IS NULL)) AND (([IP] = @original_IP) OR ([IP] IS NULL AND @original_IP IS NULL)) AND [OS] = @original_OS AND [FF] = @original_FF AND [Description] = @original_Description AND [Status] = @original_Status AND [ResponseTime] = @original_ResponseTime AND (([ResolutionTime] = @original_ResolutionTime) OR ([ResolutionTime] IS NULL AND @original_ResolutionTime IS NULL)) AND (([NOTES] = @original_NOTES) OR ([NOTES] IS NULL AND @original_NOTES IS NULL))" InsertCommand="INSERT INTO [Incident] ([CreateDate], [fName], [lName], [Phone], [Email], [sysName], [IP], [OS], [FF], [Description], [Status], [ResponseTime], [ResolutionTime], [NOTES]) VALUES (@CreateDate, @fName, @lName, @Phone, @Email, @sysName, @IP, @OS, @FF, @Description, @Status, @ResponseTime, @ResolutionTime, @NOTES)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Incident] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [Incident] SET [CreateDate] = @CreateDate, [fName] = @fName, [lName] = @lName, [Phone] = @Phone, [Email] = @Email, [sysName] = @sysName, [IP] = @IP, [OS] = @OS, [FF] = @FF, [Description] = @Description, [Status] = @Status, [ResponseTime] = @ResponseTime, [ResolutionTime] = @ResolutionTime, [NOTES] = @NOTES WHERE [ID] = @original_ID AND [CreateDate] = @original_CreateDate AND [fName] = @original_fName AND [lName] = @original_lName AND [Phone] = @original_Phone AND [Email] = @original_Email AND (([sysName] = @original_sysName) OR ([sysName] IS NULL AND @original_sysName IS NULL)) AND (([IP] = @original_IP) OR ([IP] IS NULL AND @original_IP IS NULL)) AND [OS] = @original_OS AND [FF] = @original_FF AND [Description] = @original_Description AND [Status] = @original_Status AND [ResponseTime] = @original_ResponseTime AND (([ResolutionTime] = @original_ResolutionTime) OR ([ResolutionTime] IS NULL AND @original_ResolutionTime IS NULL)) AND (([NOTES] = @original_NOTES) OR ([NOTES] IS NULL AND @original_NOTES IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_CreateDate" Type="DateTime" />
                <asp:Parameter Name="original_fName" Type="String" />
                <asp:Parameter Name="original_lName" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_sysName" Type="String" />
                <asp:Parameter Name="original_IP" Type="String" />
                <asp:Parameter Name="original_OS" Type="String" />
                <asp:Parameter Name="original_FF" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_Status" Type="String" />
                <asp:Parameter Name="original_ResponseTime" Type="String" />
                <asp:Parameter Name="original_ResolutionTime" Type="DateTime" />
                <asp:Parameter Name="original_NOTES" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CreateDate" Type="DateTime" />
                <asp:Parameter Name="fName" Type="String" />
                <asp:Parameter Name="lName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="sysName" Type="String" />
                <asp:Parameter Name="IP" Type="String" />
                <asp:Parameter Name="OS" Type="String" />
                <asp:Parameter Name="FF" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="ResponseTime" Type="String" />
                <asp:Parameter Name="ResolutionTime" Type="DateTime" />
                <asp:Parameter Name="NOTES" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="ID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="CreateDate" Type="DateTime" />
                <asp:Parameter Name="fName" Type="String" />
                <asp:Parameter Name="lName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="sysName" Type="String" />
                <asp:Parameter Name="IP" Type="String" />
                <asp:Parameter Name="OS" Type="String" />
                <asp:Parameter Name="FF" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="ResponseTime" Type="String" />
                <asp:Parameter Name="ResolutionTime" Type="DateTime" />
                <asp:Parameter Name="NOTES" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_CreateDate" Type="DateTime" />
                <asp:Parameter Name="original_fName" Type="String" />
                <asp:Parameter Name="original_lName" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_sysName" Type="String" />
                <asp:Parameter Name="original_IP" Type="String" />
                <asp:Parameter Name="original_OS" Type="String" />
                <asp:Parameter Name="original_FF" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_Status" Type="String" />
                <asp:Parameter Name="original_ResponseTime" Type="String" />
                <asp:Parameter Name="original_ResolutionTime" Type="DateTime" />
                <asp:Parameter Name="original_NOTES" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
</asp:Content>

