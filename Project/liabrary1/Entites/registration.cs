using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace liabrary1.Entites
{
    public class registration
    {
        private string userName;
        private string password;
        private string confirmpassword;
        private string securityquestion;
        private string securityanswere;
        private string email;
        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }
        public string Password
        {
            get { return password; }
            set { password = value; }
        
        
        }

        public string ConfirmPassword
        {
            get { return confirmpassword; }
            set { confirmpassword = value; }


        }

        public string Email
        {
            get { return email; }
            set { email = value; }


        }
        public string SecurityQuestion
        {

            get { return securityquestion; }
            set { securityquestion = value; }

        }
        public string SecurityAnswere
        {

            get { return securityanswere; }
            set { securityanswere = value; }

        }

    }
}