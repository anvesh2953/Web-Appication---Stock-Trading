using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class event_handling : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Image1.ImageUrl = DropDownList1.SelectedItem.Value;
        Label1.Text = DropDownList1.SelectedItem.Text;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}