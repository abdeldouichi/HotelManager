using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HotelManaging.Models
{
    public class Chambre
    {
        private int id;
        private string type_chambre;
        private string type_douche;
        private string option_chambre;
        private double prix;
        private int occupation; //Boolean 1 ou 0
        
        public Chambre(string []rows)
        {
            this.id = int.Parse(rows[0]);
            this.type_chambre = rows[1];
            this.Type_douche = rows[2];
            this.option_chambre = rows[3];
            this.prix = double.Parse(rows[4]);
            if (rows[5] == "true") occupation = 1;
            else occupation = 0;          
        }
        public Chambre(int id,string typechambre,string typedouche, string  option )
        {
            this.id = id;
            this.type_chambre = typechambre;
            this.Type_douche = typedouche;
            this.option_chambre = option;
            prix = 0;
                }
        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        
        public string Type_chambre
        {
            get { return type_chambre; }
            set { type_chambre = value; }
        }
        public string Type_douche
        {
            get { return type_douche; }
            set { type_douche = value; }
        }
        public string Option_chambre
        {
            get { return option_chambre; }
            set { option_chambre = value; }
        }
        public double Prix
        {
            get { return prix; }
            set { prix = value; }
        }
        public int Occupation
        {
            get { return occupation; }
            set { occupation = value; }
        }
        public string [] to_options()
        {
           string s="";
            if (this.option_chambre == "Full") return new string[] { "Connexion Internet", "Climatisation", "TV" };
            if (this.option_chambre == "Medium") return new string[] { "Connexion Internet", "TV" };
            return new string[] {"TV"};
        }
        public string [] todata()
        {
            string[] data=new string[6];
            data[0] = ""+this.id;
            data[1] = this.type_chambre;
            data[2] = this.type_douche;
            data[3] = this.option_chambre;
            data[4] = "" + this.prix;
            data[5] = "" + this.occupation;
            return data;
        }

        public string[] tokeys()
        {
            string[] data = new string[6];
            data[0] = "id";
            data[1] = "type_chambre";
            data[2] = "type_douche";
            data[3] = "option_chambre";
            data[4] = "prix";
            data[5] = "occupation";
            return data;
        }
    }
}