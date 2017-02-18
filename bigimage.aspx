<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="bigimage.aspx.cs" Inherits="bigimage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
        <asp:Image ID="Image1" runat="server" Height="600px" ImageUrl="~/IMG/Hyderabad.jpg" Width="800px" />
    </p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/event2.aspx">Back</asp:HyperLink>
    </p>
    <script runat="server">
     protected void Page_Load(object sender, EventArgs e)
     {
         if (Session["img"] != null)
         {
             Image1.ImageUrl =Session["img"].ToString();
         }
         Session.Clear();
     }
  </script> 
</asp:Content>

