using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SportsStore.Pages.DemoAjax
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var a = "";
            }
            else
            {
                var b = "";
            }

        }

        [System.Web.Services.WebMethod]
        public static void GetProductById(string id)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            lbl.Text = txt.Text;
        }
    }
}