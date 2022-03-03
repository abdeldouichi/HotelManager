using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HotelManaging.Dao;
using HotelManaging.Models;
using HotelManaging.Database;
namespace HotelManaging.Service
{   
    public class RestaurationService
    {
        private RestaurationDao dao;
        public RestaurationService(RestaurationDao dao)
        {
            this.dao = dao;
        }
        public int add(Restauration resto)
        {
            return dao.insert(resto);
        }
        public List<Restauration> getAll()
        {
            return dao.selectAll();
        }
        public Restauration get(int id)
        {
            return dao.selectbyID(id);
        }
        public int remove(int id)
        {
            return dao.delete(id);
        }
        public int alter(Restauration resto)
        {
            return dao.update(resto);
        }
        
    }
}