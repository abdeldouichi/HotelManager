using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HotelManaging.Models
{
    public class Client : Utilisateur
    {

         
        private string nom;
        private string cin;
        private string tel;       
        private string sexe;
        private List<Reservation> listrsrv;

        public Client(string[] rows, string[] extendedrows, List<Reservation> rsrv):base(rows)
        {
            this.nom = extendedrows[1];
            this.cin = extendedrows[2];
            this.tel = extendedrows[3];
            this.sexe= extendedrows[4];
            this.listrsrv = rsrv;
        }
        public string Nom
        {
            get { return nom; }
            set { nom = value; }
        }
        public string Cin
        {
            get { return cin; }
            set { cin = value; }
        }
        public string Tel
        {
            get { return tel; }
            set { tel = value; }
        }
        public string Sexe
        {
            get { return sexe; }
            set { sexe = value; }
        }
        public string [] todatas()
        {
            string [] data = new string[4];
              data[0] = base.todata()[0];
              data[1] = base.todata()[1];
              data[2] = base.todata()[2];
              data[3] = "Client";
            return data;
        }
        public string[] toextended_data()
        {
            string[] data = new string[5];
            data[0] = base.todata()[0];
            data[1] = this.nom;
            data[2] = this.cin;
            data[3] = this.tel;
            data[4] = this.sexe;
            return data;
        }
        public string[] tokeys()
        {
            string[] data = new string[4];
            data[0] = "id";
            data[1] = "login";
            data[2] = "pass";
            data[3] = "type_util";
            return data;
        }
        public string[] tooextended_keys()
        {
            string[] data = new string[5];
            data[0] = "id";
            data[1] = "nom";
            data[2] = "cin";
            data[3] = "tel";
            data[4] = "sexe";
            return data;
        }
    }
}