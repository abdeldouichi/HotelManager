using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelManaging.Database
{
    interface database
    {
        int execSql(string sql);
        List<string[]> execQuery(string query);
        List<string[]> select(string tablename);
        string[] selectbyId(string tablename, int id);
        List<string[]> selectLike(string tablename, string key, string value);
        List<string[]> select2Like(string tablename, string key, string value, string key1, string value1);
        int insert(string []rows, string tablename);
        int lastId(string tablename);
        int update(string tablename, string[] keys, string[] rows);
        int delete(string tablename, int id);   
    }
}
