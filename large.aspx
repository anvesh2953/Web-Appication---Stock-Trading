<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="large.aspx.cs" Inherits="large" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
        <asp:Image ID="Image1" runat="server" />
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

