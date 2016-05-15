using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace liabrary1.Entites
{
    public class issue_record
    {
        private int issue_Id;
        private string acession_No;
        private string book_Name;
       private DateTime issue_Date;
        private DateTime return_Date;
        private int member_Id;

        public int Issue_Id
        {
            get { return issue_Id; }
            set { issue_Id = value; }
        }

        public string Acession_No
        {
            get { return acession_No; }
            set { acession_No = value; }
        
        }
        public string Book_Name
        {
            get { return book_Name; }
            set { book_Name = value; }
        }

        public DateTime Issue_Date
        {
            get { return issue_Date; }
            set { issue_Date = value; }
        
        }
        public DateTime Return_Date
        {
            get { return return_Date; }
            set { return_Date = value; }
        
        }
        public int Member_Id
        {
            get { return member_Id; }
            set { member_Id = value; }
        }
    }
}