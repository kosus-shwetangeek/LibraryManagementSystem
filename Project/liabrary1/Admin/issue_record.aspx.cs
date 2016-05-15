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
    public partial class issue_record : System.Web.UI.Page
    {
        // List<issue_record> issueRecordList;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //{
            //    SqlDataSource1.InsertParameters["AccessionNo"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("txtacess")).Text;
            //    SqlDataSource1.InsertParameters["Book_Name"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("bookname")).Text;
            //    SqlDataSource1.InsertParameters["issue_date"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("issue_date")).Text;

            //    SqlDataSource1.InsertParameters["return_date"].
            //        DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("returndt")).Text;
            //    SqlDataSource1.InsertParameters["member_Id"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("mem_Id")).Text;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             //GetIssueRecord(issue_id,acession_No,book_name,issue_date,return_date,member_Id);

        }




        // public issue_record  GetIssueRecord(int issue_Id, int acession_No, string book_name, DateTime issue_date, DateTime return_date,int  member_Id)
        //{
        //      List<issue_record> issueRecordList = new List<issue_record>();


        //        using (MultiCon mySqlHelper = new MultiCon(ConfigurationManager.ConnectionStrings["liabraryConnectionString9"].ConnectionString))
        //        {

        //            DataTable liabrary = mySqlHelper.GetDataTable(CommandType.StoredProcedure, ProcedureConstant.SPAddUpdateDelissue_record,
        //                                            new ParameterData("piissue_Id", issue_Id),
        //                                            new ParameterData("piAcession_No", acession_No),
        //                                            new ParameterData("pibook_name", book_name),
        //                                            new ParameterData("piissue_date", issue_date),
        //                                            new ParameterData("pireturn_date", return_date),
        //                                            new ParameterData("pimember_Id", member_Id));



        //            if (liabrary.Rows.Count > 0)
        //            {
        //                foreach (DataRow dr in liabrary.Rows)
        //                {
        //                    liabrary1.Entites.issue_record issuerecord = new liabrary1.Entites.issue_record();

        //                    issuerecord.Issue_Id = Convert.ToInt32(dr["issue_ID"]);
        //                    issuerecord.Acession_No = dr["acession_No"].ToString(); ;
        //                    issuerecord.Book_Name = dr["Book_Name"].ToString();
        //                    issuerecord.Issue_Date = Convert.ToDateTime(dr["issue_Date"]);
        //                    issuerecord.Return_Date = Convert.ToDateTime(dr["Return_Date"]);
        //                    issuerecord.Member_Id = Convert.ToInt32(dr["member_ID"]);

        //                   // break;
        //                }

        //            }
        //          // return issueRecordList;

        //  }

          

       





        //protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    //SqlDataSource1.InsertParameters["AccessionNo"].DefaultValue =((TextBox)GridView2.FooterRow.FindControl("txtacess")).Text;
        //    //SqlDataSource1.InsertParameters["Book_Name"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("bookname")).Text;
        //    //SqlDataSource1.InsertParameters["issue_date"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("issuedt")).Text;

        //    //SqlDataSource1.InsertParameters["return_date"].
        //    //    DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("returndt")).Text;
        //    //SqlDataSource1.InsertParameters["member_Id"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("memberid")).Text;

        //}
}
}