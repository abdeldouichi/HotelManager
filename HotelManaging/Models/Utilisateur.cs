using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HotelManaging.Models
{
    public class Utilisateur
    {
        private int id;
        private string login;
        private string pass;
       

        public Utilisateur(string []rows)
        {
            this.id = int.Parse(rows[0]);
            this.login = rows[1];
            this.pass = rows[2];
        }

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public string Login
        {
            get { return login; }
            set { login = value; }
        }
        public string Pass
        {
            get { return pass; }
            set { pass = value; }
        }

        public string [] todata()
        {
            string[] data = new string[3];
            data[0] = ""+this.id;
            data[1] = this.login;
            data[2] = this.pass;
            return data;
        }
        
    }
}