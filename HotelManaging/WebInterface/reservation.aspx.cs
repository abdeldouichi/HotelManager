using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HotelManaging.Models;
using HotelManaging.Service;
using HotelManaging.Dao;
using HotelManaging.Database;
namespace HotelManaging.WebInterface
{
    public partial class reservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string[] rowch =new string[4];
            string[] rowd = new string[3];
            ///chanbre lost
            rowch[0] = "_";
            rowch[1] = "Single";
            rowch[2] = "Double";
            rowch[3] = "Suite";
            ///douche

            rowd[0] = "_";
            rowd[1] = "Interne";
            rowd[2] = "Commun";
            string type_chambre = rowch[int.Parse(roomtype.Value)];
            string type_douche = rowd[int.Parse(typedouche.Value)];
            string options = "";
            if (clim.Checked) options = "Full";
            else if (conx.Checked) options = "Medium";
            else options = "Less";
             
            Chambre chbr=new Chambre(11, type_chambre, type_douche, options);

            string[] data = new string[7];
            data[0] = "0";
            data[1] = date.Value;
            data[2] = nbjour.Text;
            data[3]= "0";
            
            Reservation rv = new Reservation(data, chbr);

            ReservationService service = 
                new ReservationService(new ReservationDao(new mysql_Database()));
            if (service.add(rv)!=0)
            {
                Response.Redirect("validation_reservation.html");
            }
            Response.Redirect("404.html");
        }
    }
}