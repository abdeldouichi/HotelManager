using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
namespace HotelManaging.Database
{
    public class mysql_Database
    {
        private MySqlConnection connection;
        private string server;
        private string database;
        private string uid;
        private string password;

        //Constructor
        public mysql_Database()
        {
            server = "localhost";
            database = "hotelmanaging";
            uid = "root";
            password = "";
            string connectionString
                = "SERVER=" + server + ";" + "DATABASE=" + database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";";

            connection = new MySqlConnection(connectionString);
            OpenConnection();
        }

       
     
       

     
        private bool OpenConnection()
        {
            try
            {
                connection.Open();
                return true;
            }
            catch (MySqlException ex)
            {
                switch (ex.Number)
                {
                    case 0:
                        //"Cannot connect to server.  Contact administrator");
                        break;

                    case 1045:
                        //.Show("Invalid username/password, please try again");
                        break;
                }
                return false;
            }
        }

      
        private int CloseConnection()
        {
            try
            {
                connection.Close();
                return 1;
            }
            catch (MySqlException exc)
            {
                return 0;
            }
        }

        public List<string[]> execQuery(string query)
        {
            MySqlCommand cmd = new MySqlCommand(query, connection);
            MySqlDataReader dataReader = cmd.ExecuteReader();
            List<string[]> rows = new List<string[]>();  
            while (dataReader.Read())
            {
                string[] row = new string[dataReader.FieldCount]; 
                for(int i=0; i< dataReader.FieldCount; i++)
                {
                    row[i] = dataReader.GetString(i);
                }
                rows.Add(row);
            }
            dataReader.Close();
            return rows;
        }

        public int execSql(string sql)
        {
            MySqlCommand cmd = new MySqlCommand(sql, connection);
            return cmd.ExecuteNonQuery();
        }
        public int insert(string[] rows, string tablename)
        {
            string SQL = "INSERT INTO " + tablename + " VALUES('"+rows[0]+ "'";
            for (int i = 1; i < rows.Length; i++) {
                SQL = SQL + ", '" + rows[i] + "'";
            }
            SQL = SQL + ")";
            return execSql(SQL);
        }

        public int lastId(string tablename)
        {
            string Query = "SELECT MAX(id) FROM "+tablename;
            MySqlCommand cmd = new MySqlCommand(Query, connection);
            MySqlDataReader dataReader = cmd.ExecuteReader();
            return dataReader.GetInt16(0);
        }

        public List<string[]> select(string tablename)
        {

            string Query = "SELECT * FROM " + tablename;
            return execQuery(Query);
        }

        public string[] selectbyId(string tablename,int id)
        {
            string Query = "SELECT * FROM "+ tablename + " WHERE id = '"+id+"'";

           return  execQuery(Query)[0];    
               }

        public List<string[]> selectLike(string tablename, string key, string value)
        {
            string Query = "SELECT * FROM " + tablename + " WHERE "+key+" = '" + value + "';";
            return execQuery(Query);
        }

        public List<string[]> select2Like(string tablename, string key, string value, string key1, string value1)
        {
            string Query = "SELECT * FROM " + tablename + " WHERE " + key + " = '" + value + "' and " + key1 + " = '" + value1 + "';";
            return execQuery(Query);
        }
        public List<string[]> select3Like(string tablename, string key1, string value1, string key2, string value2, string key3, string value3)
        {
            string Query = "SELECT * FROM " + tablename + " WHERE " 
                + key1 + " LIKE '" + value1 + "' AND " 
                + key2 + " LIKE '" + value2 + "' AND " 
                + key3 + " LIKE '" + value3 + "' ;";
            System.Diagnostics.Debug.WriteLine(Query);
            return execQuery(Query);
        }

        public int update(string tablename, string[] keys, string[] rows)
        {
            string SQL = "UPDATE " + tablename + " SET '" + keys[1] + "' = '"+rows[1]+"'";
		    int size = rows.Length;
            for (int i = 2; i < size ; i++) {
                SQL = SQL+ ", " + keys[i] + "' = '" + rows[i] + "'";
            }
	    	SQL = SQL+ "WHERE " + keys[0] + "' = '" + rows[0] + "'";
            return execSql(SQL);
        }

        public int delete(string tablename, int id)
        {
            string SQL = "DELETE FROM "+ tablename + " WHERE id = '"+id+"'";
            return execSql(SQL);
        }
    }
}