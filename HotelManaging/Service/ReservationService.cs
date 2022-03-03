using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HotelManaging.Models;
using HotelManaging.Dao;

namespace HotelManaging.Service
{
    public class ReservationService
    {
        private ReservationDao dao;
        public ReservationService(ReservationDao dao)
        {
            this.dao = dao;
        }
        public int add(Reservation rsrv)
        {
            return dao.insert(rsrv);
        }
        public List<Reservation> getAll()
        {
            return dao.selectAll();
        }
        public Reservation get(int id)
        {
            return dao.selectbyID(id);
        }
        public int remove(int id)
        {
            return dao.delete(id);
        }
        public int alter(Reservation rsrv)
        {
            return dao.update(rsrv);
        }
    }
}