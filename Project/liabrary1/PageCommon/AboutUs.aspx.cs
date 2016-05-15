using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace liabrary1.PageCommon
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetImgUrl();
            }

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            SetImgUrl();
        }
        private void SetImgUrl()
        {
            Random _rand = new Random();
            int i = _rand.Next(1, 14);
            Image1.ImageUrl = "~/PageCommon/Img/" + i.ToString() + ".jpg";
        }
    }
}