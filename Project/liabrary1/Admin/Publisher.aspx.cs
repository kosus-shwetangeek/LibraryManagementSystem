using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kosus.DataAccess.MySql;
using System.Configuration;
using System.Data;
using liabrary1.Entites;
using System.IO;
namespace liabrary1.Admin
{
    public partial class Publisher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        public book GetPublisherRecord(int Publication_ID,string Publisher_Name,string Publication_Country)
        {
            List<book> publicationList = new List<book>();


            using (MultiCon mySqlHelper = new MultiCon(ConfigurationManager.ConnectionStrings["liabraryConnectionString9"].ConnectionString))
            {

                DataTable liabrary = mySqlHelper.GetDataTable(CommandType.StoredProcedure, ProcedureConstant.SPGetAllBooks,
                                                new ParameterData("piPublication_ID",Publication_ID),
                                                new ParameterData("piPublisher_Name", Publisher_Name),
                                                new ParameterData("piPublication_Country", Publication_Country));



                if (liabrary.Rows.Count > 0)
                {
                    foreach (DataRow dr in liabrary.Rows)
                    {
                        liabrary1.Entites.publication publicationrecord = new liabrary1.Entites.publication();

                        publicationrecord.Publication_Id = Convert.ToInt32(dr["Publication_ID"]);
                        publicationrecord.Publication_Name = dr["Publisher_Name"].ToString(); ;
                        publicationrecord.Publication_Country = dr["Publication_Country"].ToString();
                       
                    }

                }
                return publicationList;

            }

        }



    }
}