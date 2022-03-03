using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HotelManaging.Models
{
    public class Reservation
    {
        private int id;
        private Client clt;
        private Chambre chbr;
        private Restauration rst;
        private string date_sejour;
        private int nb_jour;
        private int validation;
     
        public Reservation(string [] rows,Client client,Chambre chambre, Restauration rst)
        {
            this.clt = client;
            this.chbr = chambre;
            this.rst = rst;
            this.id = int.Parse(rows[0]);
            this.date_sejour = rows[1];
            this.nb_jour = int.Parse(rows[2]);
            this.validation = int.Parse(rows[3]);
        }
        public Reservation(string[] rows, Restauration rst, Client client)
        {
            this.clt = client;
            this.rst = rst;
            this.id = int.Parse(rows[0]);
            this.date_sejour = rows[1];
            this.nb_jour = int.Parse(rows[2]);
            this.validation = int.Parse(rows[3]);
        }
        public Reservation(string[] rows, Chambre chambre)
        {
            this.chbr = chambre;
            this.id = int.Parse(rows[0]);
            this.date_sejour = rows[1];
            this.nb_jour = int.Parse(rows[2]);
            this.validation = int.Parse(rows[3]);
        }
        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        public HotelManaging.Models.Client Clt
        {
            get { return clt; }
            set { clt = value; }
        }
        public HotelManaging.Models.Chambre Chbr
            {
                get { return chbr; }
                set { chbr = value; }
            }

        public HotelManaging.Models.Restauration Rst
        {
            get { return rst; }
            set { rst = value; }
        }

        public string Date_sejour
        { 
            get { return date_sejour; }
            set { date_sejour = value; }
        }
        public int Nb_jour
        {
            get { return nb_jour; }
            set { nb_jour = value; }
        }
        public int Validation
            {
                get { return validation; }
                set { validation = value; }
            }
        public string[] todata()
        {
            string[] data = new string[7];
            data[0] = ""+this.id;
            if (clt != null) data[1] = "" + this.clt.Id;
            else data[1] = "" + 1;
            if (chbr != null) data[2] = "" + this.chbr.Id;
            else data[2] = "" + 11;
            if (rst != null) data[3] = "" + this.rst.Id;
            else data[3] = "" + 0;
            data[4] = "" + this.date_sejour;
            data[5] = "" + this.nb_jour;
            if (rst != null) data[6] = "" + this.validation;
            else data[6] = "" + 0;
            return data;
        }
        public string[] tokeys()
        {
            string[] data = new string[7];
            data[0] = "id";
            data[1] = "id_user";
            data[2] = "id_room";
            data[3] = "id_reso";
            data[4] = "date_sejour";
            data[5] = "nb_jour";
            data[6] = "validation";
            return data;
        }
    }
    
}