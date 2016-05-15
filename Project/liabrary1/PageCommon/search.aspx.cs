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

namespace liabrary1.PageCommon
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgSearchbooks_Click(object sender, ImageClickEventArgs e)
        {

        }


        public book   GetbooksRecord(int  Accession_No,int ISBN,string book_titile,string Publication,int Pages,string Edition,float Price,string Rank,string Shelf,string Book_Status,string Author_Name,string category)
        {
              List<book> bookList = new List<book>();


                using (MultiCon mySqlHelper = new MultiCon(ConfigurationManager.ConnectionStrings["liabraryConnectionString9"].ConnectionString))
                {

                    DataTable liabrary = mySqlHelper.GetDataTable(CommandType.StoredProcedure, ProcedureConstant.SPGetAllBooks,
                                                    new ParameterData("piAccession_No", Accession_No),
                                                    new ParameterData("piISBN", ISBN),
                                                    new ParameterData("pibook_titile", book_titile),
                                                    new ParameterData("piPublication", Publication),
                                                    new ParameterData("piPages", Pages),
                                                    new ParameterData("piEdition", Edition),
                                                    new ParameterData("piPrice", Price),
                                                    new ParameterData("piRank", Rank),
                                                     new ParameterData("piShelf", Shelf),
                                                    new ParameterData("piBook_Status", Book_Status),
                                                    new ParameterData("piAuthor_Name", Author_Name)
                                             );



                    if (liabrary.Rows.Count > 0)
                    {
                        foreach (DataRow dr in liabrary.Rows)
                        {
                            liabrary1.Entites.book bookrecord = new liabrary1.Entites.book();

                            bookrecord.Acession_No = Convert.ToInt32(dr["Accession_No"]);
                            bookrecord.ISBN = Convert.ToInt32(dr["ISBN"]);
                            bookrecord.Book_Titile = dr["Book_Titile"].ToString();
                            bookrecord.Publication = dr["Publication"].ToString();
                            bookrecord.Pages =  Convert.ToInt32(dr["Pages"]);
                            bookrecord.Edition=  dr["Edition"].ToString();
                            bookrecord.Price=Convert.ToSingle (dr["Price"]);
                            bookrecord.Rank= dr["Rank"].ToString();
                            bookrecord.Shelf = dr["Shelf"].ToString();
                            bookrecord.Book_Status = dr["Book_Status"].ToString();
                            bookrecord.Author_Name = dr["Author_Name"].ToString();
                           
                        }

                    }
                    return bookList;

            }

            }

    }
}