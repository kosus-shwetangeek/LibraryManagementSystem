using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace liabrary1.Entites
{
    public class staff
    {

        private int staff_Id;
        private string first_name;
        private string middle_name;
        private string last_name;
        private DateTime dob;
        private string gender;
        public int Staff_Id
        {
            get { return staff_Id; }
            set { staff_Id = value; }
        }
        public string First_name
        {
            get { return first_name; }
            set { first_name = value; }
        }
        public string Middle_name
        {
            get { return middle_name; }
            set {middle_name = value; }
        }
        public string Last_name
        {
            get { return last_name; }
            set { last_name = value; }
        }
        public DateTime DOB
        {
            get { return dob; }
            set { dob = value; }
        }
        public string  Gender
        {
            get { return gender; }
            set { gender = value; }
        }
    }
} 