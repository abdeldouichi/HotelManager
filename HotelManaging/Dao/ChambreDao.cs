using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HotelManaging.Database;
using HotelManaging.Models;
namespace HotelManaging.Dao
{
    public class ChambreDao
    {
        private mysql_Database db;

        public ChambreDao(mysql_Database db)
        {
            this.db = db;
        }
        public int insert(Chambre chbr)
        {
            return db.insert(chbr.todata(), "chambre"); 
        }
        public List<Chambre> selectAll()
        {
            List<Chambre> list=new List<Chambre>();
            List<string[]> rows=db.select("chambre");
              foreach(string [] row in rows)
            {
                list.Add(new Chambre(row));
            }  
            return list;
         }
         public Chambre selectbyID(int id)
        {
            return new Chambre(db.selectbyId("chambre",id));
        }
        public List<Chambre> select3like(Chambre chbr)
        {
            string roomtype = chbr.Type_chambre;
            string douchetype = chbr.Type_douche;
            string option = chbr.Option_chambre;
            List<Chambre> list = new List<Chambre>();
            List<string[]> rows = db.select3Like("chambre", "type_chambre", roomtype, "type_douche", douchetype, "option_chambre", option);
            foreach (string[] row in rows)
            {
                list.Add(new Chambre(row));
            }
            return list;
        }
        public int update(Chambre chbr)
        {
            return db.update("chambre", chbr.tokeys(), chbr.todata());
        }
        public int delete(int id)
        {
            return db.delete("chambre", id);
        }
    }
}