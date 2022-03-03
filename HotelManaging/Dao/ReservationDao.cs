using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HotelManaging.Database;
using HotelManaging.Models;
using HotelManaging.Service;

namespace HotelManaging.Dao
{
    public class ReservationDao
    {
        private mysql_Database db;

        public ReservationDao(mysql_Database db)
        {
            this.db = db;
        }
        public int insert(Reservation rsrv)
        {
            ChambreService roomservice
                =new ChambreService(new ChambreDao(new mysql_Database()));
            Reservation rv = rsrv;
            Chambre chbr = rv.Chbr;
            List<Chambre>  chbrs=roomservice.FindRoom(chbr);
            if (chbrs != null)
            {
                foreach (Chambre row in chbrs) chbr = row;
                return db.insert(rv.todata(), "reservation");
            }
            return 0;
        }
        public List<Reservation> selectAll()
        {
            List<Reservation> list = new List<Reservation>();
            List<string[]> rows = db.select("reservation");
            foreach (string[] row in rows)
            {
               // list.Add(new Reservation(row));
            }
            return list;
        }
        public Reservation selectbyID(int id)
        {
            //return new Reservation(db.selectbyId("reservation", id));
            return null;
        }

        public int update(Reservation rsrv)
        {
            return db.update("reservation", rsrv.tokeys(), rsrv.todata());
        }
        public int delete(int id)
        {
            return db.delete("reservation", id);
        }
    }
}