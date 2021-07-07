using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Oracle.ManagedDataAccess.Client;

namespace HotelAdministration.Model
{
    public class DbConnection
    {
        private OracleConnectionStringBuilder builder = new OracleConnectionStringBuilder("jdbc:oracle:thin:@infdb.technikum-wien.at:1521:o10");
        public DbConnection()
        {
            builder.UserID = "s21bwi4_wi19b080";
            builder.Password = "00992412Ivo";

            using OracleConnection connection = new OracleConnection(builder.ToString());
            connection.Open();
        }
    }
}
