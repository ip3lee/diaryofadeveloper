using System;
using System.Web.UI;

namespace ModalPopupExtendarWithPostback
{
    public partial class _Default : Page
    {
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = GetMessage("DropDownList1", DropDownList1.SelectedValue);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = GetMessage("Button2", string.Empty);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Text = GetMessage("Button3", string.Empty);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = GetMessage("Button1", string.Empty);
        }

        private static string GetMessage(string actionName, string selectedValue)
        {
            switch (actionName)
            {
                case "Button1":
                    return "Popup was called";
                case "Button2":
                    return "Cancel was called";
                case "Button3":
                    return "Save was called";
                case "DropDownList1":
                    return selectedValue;
                default:
                    return "Unknown action name";
            }
        }
    }
}
