using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HotelManaging.Models;
using HotelManaging.Dao;

namespace HotelManaging.Service
{
    public class ChambreService
    {
        private ChambreDao dao;
        public ChambreService(ChambreDao dao)
        {
            this.dao = dao;
        }
        public int add(Chambre chbr)
        {
            return dao.insert(chbr);
        }
        public List<Chambre> getAll()
        {
            return dao.selectAll();
        }
        public Chambre get(int id)
        {
            return dao.selectbyID(id);
        }
        public int remove(int id)
        {
            return dao.delete(id);
        }
        public int alter(Chambre chbr)
        {
            return dao.update(chbr);
        }
        public List<Chambre> FindRoom(Chambre chbr)
        {
            return dao.select3like(chbr);
        }
    }
}