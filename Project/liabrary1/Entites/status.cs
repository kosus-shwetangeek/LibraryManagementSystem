using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace liabrary1.Entites
{
    public class status
    {

        private int issue_id;
        private DateTime issue_date;
        private DateTime return_date;
        private string delay_days;
        private float fine;

        public int Issue_Id
        {
            get { return issue_id; }
            set { issue_id = value; }
        }
        public DateTime Issue_date
        {
            get { return issue_date; }
            set { issue_date = value; }
        
        }
        public DateTime Return_date
        {
            get { return return_date; }
            set { return_date = value; }
        }
        public string Delay_days
        {
            get { return delay_days; }
            set { delay_days = value; }
        
        }
        public float Fine
        {
            get { return fine; }
            set { fine = value; }
        }
    }
}