using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CashBuy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["radio1"] = RadioButtonList1.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        TextBox2.Text = "";
        TextBox3.Text = "";

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Session["Variable2"] = TextBox2.Text;
        Session["Variable3"] = TextBox3.Text;
        Response.Redirect("OrderSummary.aspx");
    }

    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["radio2"] = RadioButtonList2.Text;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = DropDownList1.SelectedItem.Value;
        Session["Variable1"] = DropDownList1.SelectedItem.Text;
        Session["Variable4"] = DropDownList1.SelectedItem.Value;

    }
}