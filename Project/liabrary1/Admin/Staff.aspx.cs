using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Text;

namespace liabrary1.Admin
{
    public partial class Staff : System.Web.UI.Page
    {
        //GridView gv = new GridView();

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack)
            //{
            //    gv.DataSource = Datatable();
            //    gv.DataBind();
            //    gv.Visible = true;
            //    GridView1.Controls.Add(gv);
            //}
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    //         private DataTable Datatable()
    //{
    //    DataTable datatable = new DataTable();

    //    datatable.Columns.Add("Staff_Id", typeof(int));
    //    datatable.Columns.Add("first_name", typeof(string));
    //    datatable.Columns.Add("middle_name", typeof(string));
    //    datatable.Columns.Add("last_name", typeof(string));
    //    datatable.Columns.Add("designation", typeof(string));
    //    datatable.Columns.Add("DOB", typeof(DateTime));
    //    datatable.Columns.Add("gender", typeof(string));


    //    return datatable; 
    //}

    //         private void AddNewRow(int Staff_Id, string first_name, string middle_name, string last_name, string designation, DateTime DOB, string gender, DataTable table)
    //{
    //    DataRow row = table.NewRow();
    //    row["Staff_Id"] = Staff_Id;
    //    row["first_name"] = first_name;
    //    row["middle_name"] = middle_name;
    //    row["last_name"] = last_name;
    //    row["designation"] = designation;
    //    row["gender"] = gender;
       
    //    table.Rows.Add(row);
    //}


    ////private string GetURL(string website, string url)
    ////{
    ////    return "<a href=\"" + url + "\">" + website + "</a>";
    ////}  

        }
    }

