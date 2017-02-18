<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="HD.aspx.cs" Inherits="HD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <table class="nav-justified" style="background-color: #808000">
        <tr>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" CssClass="h1" Text="Anvesh's Help Desk System"></asp:Label>
                <asp:SqlDataSource ID="SqlOS" runat="server" ConnectionString="<%$ ConnectionStrings:2016_675_z1782619ConnectionString %>" SelectCommand="SELECT [Name] FROM [OS]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlFF" runat="server" ConnectionString="<%$ ConnectionStrings:2016_675_z1782619ConnectionString %>" SelectCommand="SELECT [Name] FROM [FormFactor]"></asp:SqlDataSource>
                <asp:Image ID="Image1" runat="server" ImageUrl="http://www.ihelpupc.com/working/computer-repair-now.jpg" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" CssClass="h3" Text="User Information"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" CssClass="h3" Text="System Information"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" CssClass="h3" Text="Problem Information"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 92px">
                <table class="nav-justified">
                    <tr>
                        <td>First Name</td>
                        <td>
                            <asp:TextBox ID="tbUserFirst" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbUserFirst" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter First Name</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td>
                            <asp:TextBox ID="tbUserLast" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbUserLast" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter Last name</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Phone </td>
                        <td>
                            <asp:TextBox ID="tbUserPhone" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbUserPhone" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter Phone</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <asp:TextBox ID="tbUserEmail" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbUserEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter Email</asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbUserEmail" ErrorMessage="Incorrect Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="height: 92px">
                <table class="nav-justified">
                    <tr>
                        <td>System Name</td>
                        <td>
                            <asp:TextBox ID="tbSysName" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbSysName" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter System Name</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>IP Address</td>
                        <td>
                            <asp:TextBox ID="tbIP" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbIP" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter IP Address</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 21px">Operating System</td>
                        <td style="height: 21px">
                            <asp:DropDownList ID="ddOS" runat="server" DataSourceID="SqlOS" DataTextField="Name" DataValueField="Name">
                                <asp:ListItem>Windows XP</asp:ListItem>
                                <asp:ListItem>Windows 7</asp:ListItem>
                                <asp:ListItem>Windows 8</asp:ListItem>
                                <asp:ListItem>MAC OSX Snow Leopard</asp:ListItem>
                                <asp:ListItem>MAC OSX Mavericks</asp:ListItem>
                                <asp:ListItem>Linux Ubuntu</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Form Factor</td>
                        <td>
                            <asp:RadioButtonList ID="rbFF" runat="server" RepeatDirection="Horizontal" DataSourceID="SqlFF" DataTextField="Name" DataValueField="Name">
                                <asp:ListItem Selected="True">Desktop</asp:ListItem>
                                <asp:ListItem>Laptop</asp:ListItem>
                                <asp:ListItem>Tablet</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="rbFF" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Select a Form Factor</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="height: 92px">
                <table class="nav-justified">
                    <tr>
                        <td>Problem Description</td>
                        <td>
                            <asp:TextBox ID="tbProblem" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbProblem" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter Problem Description</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Priority</td>
                        <td>
                            <asp:RadioButtonList ID="rbPriority" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>1 hr</asp:ListItem>
                                <asp:ListItem>4 hr</asp:ListItem>
                                <asp:ListItem>8 hr</asp:ListItem>
                                <asp:ListItem Selected="True">24 hr</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 21px; text-align: center">
                <asp:Button ID="btnCreate" runat="server" CssClass="btn-warning active" OnClick="btnCreate_Click" Text="Create Ticket" />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:TextBox ID="tbTicket" runat="server" Height="300px" TextMode="MultiLine" Visible="False" Width="95%" OnTextChanged="tbTicket_TextChanged"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
</asp:Content>

