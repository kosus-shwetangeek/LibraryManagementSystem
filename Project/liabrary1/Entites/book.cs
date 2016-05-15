using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace liabrary1.Entites
{
    public class book
    {
        private int acession_No;
        private int iSBN;
        private string book_Titile;
        private string publication;
        private int pages;
        private string edition;
        private float price;
        private string rank;
        private string shelf;
        private string book_Status;
       // private int author_Id;
        private string category;
        private string author_Name;
       // private string book_Status;
        public int Acession_No
        {
            get { return acession_No; }
            set { acession_No = value; }
        }

        public int ISBN
        {

            get { return iSBN; }
            set { iSBN = value; }
        }
        public string  Book_Titile
        {

            get { return book_Titile; }
            set { book_Titile = value; }
        }
        public string Publication
        {

            get { return publication; }
            set { publication = value; }
        }
        public int Pages
        {

            get { return pages; }
            set { pages = value; }
        }
        public string Edition
        {

            get { return edition; }
            set {edition = value; }
        }
        public float Price
        {
            get { return price; }
            set { price = value; }
        
        }
        public string Rank
        {

            get { return rank; }
            set { rank = value; }
        }
        public string Shelf
        {

            get { return shelf; }
            set { shelf = value; }
        }
        public string Book_Status
        {

            get { return book_Status; }
            set { book_Status= value; }
        }
        public string Author_Name
        {

            get { return author_Name; }
            set { author_Name = value; }
        }
        public string Category
        {

            get { return category; }
            set { category = value; }
        }
    }
}