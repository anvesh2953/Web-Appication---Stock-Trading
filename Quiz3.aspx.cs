using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Quiz3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Label1.Text = TextBox1.Text+" "+TextBox2.Text;
        
    }

    

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Label2.Text = "The abbrevation for "+DropDownList1.SelectedItem.Text+" is "+DropDownList1.SelectedItem.Value;
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(DropDownList2.SelectedItem.Text=="Go Away")
        {
            Image1.Visible = false;
        }
        else
        {
            Image1.Visible = true;
        }
    }
}