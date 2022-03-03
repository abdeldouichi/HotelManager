using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HotelManaging.Models
{
    public class Recette:Reservation
    {
        private double recete;
       
        private string date_paiement;
        public Recette(string []rows, Client client, Chambre chambre,Restauration rst, string[] extendedrows) : base(rows, client, chambre,rst)
        {
            this.recete = double.Parse(extendedrows[1]);
            this.date_paiement = extendedrows[2];

        }


        public string Date_paiement
        {
            get { return date_paiement; }
            set { date_paiement = value; }
        }
        public void addto_recette(double somme)
        {
            this.recete += somme;
        }
        public double Recete
        {
            get { return recete; }
            set { recete = value; }
        }

        public string [] toextendeddata()
        {
            string[] data =new string[3];
            data[0] = ""+base.Id;
            data[1] = "" + this.recete;
            data[2] = this.date_paiement;
            return data;
        }
        public string[] toextended_keys()
        {
            string[] data = new string[3];
            data[0] = "id";
            data[1] = "recette";
            data[2] = "date_paiement";
            return data;
        }
    }
}