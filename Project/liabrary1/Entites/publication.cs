using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace liabrary1.Entites
{
    public class publication
    {

        private int publication_Id;
        private string publication_Name;
        private string publication_Country;
        public int Publication_Id
        {
            get { return publication_Id; }
            set { publication_Id = value; }
        
        }
        public string Publication_Name
        {
            get { return publication_Name; }
            set { publication_Name = value; }

        }
        public string Publication_Country
        {
            get { return publication_Country; }
            set { publication_Country = value; }

        }
    }
} 