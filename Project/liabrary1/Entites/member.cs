using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace liabrary1.Entites
{
    public class member
    {
        private int sr;
        private string  member_Id;
        private string type;
        private string ref_Id;
        public int Sr
        {
            get { return sr; }
            set { sr = value; }
        }

      
        public string Member_Id
        {
            get { return member_Id; }
            set { member_Id = value; }
        }
        public string Type
        {
            get { return type; }
            set { type = value; }
        }
        public string ref_Id_
        {
            get { return ref_Id_; }
            set { ref_Id_ = value; }
        }

    } 
}   