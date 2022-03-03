using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HotelManaging.Models;
using HotelManaging.Database;
namespace HotelManaging.Dao
{
    public class RestaurationDao
    {
        private mysql_Database db;

        public RestaurationDao(mysql_Database db)
        {
            this.db = db;
        }
        public int insert(Restauration resto)
        {
            return db.insert(resto.todata(), "restauration");
        }
        public List<Restauration> selectAll()
        {
            List<Restauration> list = new List<Restauration>();
            List<string[]> rows = db.select("restauration");
            foreach (string[] row in rows)
            {
                list.Add(new Restauration(row));
            }
            return list;
        }
        public Restauration selectbyID(int id)
        {
            return new Restauration(db.selectbyId("restauration", id));
        }
        public int update(Restauration resto)
        {
            return db.update("restauration", resto.tokeys(), resto.todata());
        }
        public int delete(int id)
        {
            return db.delete("restauration", id);
        }
    }
}