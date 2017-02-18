<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="International.aspx.cs" Inherits="International" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<table class="nav-justified">
    <tr>
        <td class="text-center" colspan="5">&nbsp;TIMES FOR INTERNATIONAL LOCATIONS&nbsp;</td>
    </tr>
    <tr>
        <td colspan="5">
            <asp:Image ID="Image1" runat="server" Height="600px" ImageUrl="~/IMG/WORLD.jpg" Width="100%" />
        </td>
        <td> <!-- start feedwind code --> <script type="text/javascript" src="https://feed.mikle.com/js/fw-loader.js" data-fw-param="?widget_parameter=%7B%22sources%22%3A%5B%7B%22source%22%3A%22http%3A%2F%2Frss.cnn.com%2Frss%2Fmoney_markets.rss%22%2C%22type%22%3A%22RSS%22%7D%5D%2C%22name%22%3A%22%22%2C%22width%22%3A%22300%22%2C%22height%22%3A%22600%22%2C%22height_by_article%22%3A0%2C%22target%22%3A%22_blank%22%2C%22font%22%3A%22Arial%2C%20Helvetica%2C%20sans-serif%22%2C%22title_font_size%22%3A%2216%22%2C%22item_title_font_size%22%3A%2216%22%2C%22item_description_font_size%22%3A%2212%22%2C%22border%22%3A%22on%22%2C%22css_url%22%3A%22%22%2C%22responsive%22%3A%22off%22%2C%22text_direction%22%3A%22left%22%2C%22text_alignment%22%3A%22left%22%2C%22corner%22%3A%22rounded%22%2C%22scroll%22%3A%22on%22%2C%22auto_scroll%22%3A%22on%22%2C%22auto_scroll_direction%22%3A%22up%22%2C%22auto_scroll_step_speed%22%3A%224%22%2C%22auto_scroll_mc_speed%22%3A%2220%22%2C%22sort%22%3A%22new%22%2C%22title%22%3A%22on%22%2C%22title_sentence%22%3A%22Money%20news%22%2C%22title_link%22%3A%22%22%2C%22title_bgcolor%22%3A%22%2355a0ff%22%2C%22title_color%22%3A%22%23505659%22%2C%22title_bgimage%22%3A%22%22%2C%22item_bgcolor%22%3A%22%23ffffff%22%2C%22item_bgimage%22%3A%22%22%2C%22item_title_length%22%3A%2255%22%2C%22item_title_color%22%3A%22%232e7ec8%22%2C%22item_border_bottom%22%3A%22on%22%2C%22item_description%22%3A%22both%22%2C%22item_link%22%3A%22off%22%2C%22item_description_length%22%3A%22100%22%2C%22item_description_color%22%3A%22%23505659%22%2C%22item_date%22%3A%22on%22%2C%22item_date_format%22%3A%22%25b%20%25e%2C%20%25Y%20%25k%3A%25M%22%2C%22item_date_timezone%22%3A%22%22%2C%22item_description_style%22%3A%22thumbnail%22%2C%22item_thumbnail%22%3A%22crop%22%2C%22item_thumbnail_selection%22%3A%22auto%22%2C%22article_num%22%3A%2215%22%2C%22item_player%22%3A%22youtube%22%2C%22keyword_inc%22%3A%22%22%2C%22keyword_exc%22%3A%22%22%7D"></script> <!-- end feedwind code --> </td>
    </tr>
    <tr>
        <td>HYDERABAD</td>
        <td>DEKALB</td>
        <td>NEWYORK</td>
        <td>JAKARTA</td>
        <td>SINGAPORE</td>
    </tr>
    <tr>
        <td>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="TZ1" runat="server" Text="TZ1" style="text-align: center"></asp:Label>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
            </asp:UpdatePanel>
        </td>
        <td>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:Label ID="TZ2" runat="server" Text="TZ2"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td>
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <asp:Label ID="TZ3" runat="server" Text="TZ3"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td>
            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                <ContentTemplate>
                    <asp:Label ID="TZ4" runat="server" Text="TZ4"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td>
            <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                <ContentTemplate>
                    <asp:Label ID="TZ5" runat="server" Text="TZ5"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
    </tr>
</table>
<br />
<br />
<asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
</asp:Timer>
<br />
<br />
</asp:Content>

