using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HotelManaging.Models
{
    public class Restauration
    {
        private int id;
        private string date_resto;
        private string heure;
        private string choix_menu;
        public Restauration(string [] rows)
        {
            this.id = int.Parse(rows[0]);
            this.date_resto = rows[1];
            this.heure = rows[2];
            this.choix_menu = rows[3];
        }
        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        public string Date_resto
        {
            get { return date_resto; }
            set { date_resto = value; }
        }
        public string Heure
        {
            get { return heure; }
            set { heure = value; }
        }
        public string Choix_menu
        {
            get { return choix_menu; }
            set { choix_menu = value; }
        }

        public string[] todata()
        {
            string[] data = new string[4];
            data[0] = ""+this.id;
            data[1] = this.date_resto;
            data[2] = this.heure;
            data[3] = this.choix_menu;
            return data;
        }
        public string[] tokeys()
        {
            string[] data = new string[4];
            data[0] = "id";
            data[1] = "date_resto";
            data[2] = "heure";
            data[3] = "choix_menu";
            return data;
        }
    }
}