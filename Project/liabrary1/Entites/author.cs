using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace liabrary1.Entites
{
    public class author
    {

        private int author_Id;
        private string auth_FirstName;
        private string auth_MiddleName;
        private string auth_LastName;
        private string gender;

        public int Author_Id
        {
            get { return author_Id; }
            set { author_Id = value; }
        }
        public string Auth_FirstName
        {
            get { return auth_FirstName; }
            set { auth_FirstName = value; }
        }
        public string Auth_MiddleName
        {
            get { return auth_MiddleName; }
            set { auth_MiddleName = value; }
        }
        public string Auth_LastName
        {
            get { return auth_LastName; }
            set { auth_LastName = value; }
        }
        public string Gender
        {
            get { return gender; }
            set { gender = value; }
        }
    } 
} 