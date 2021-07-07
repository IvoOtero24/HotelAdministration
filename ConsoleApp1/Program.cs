using System;
using Oracle.ManagedDataAccess.Client;

namespace ConsoleApp1
{
    class Program
    {
        private static OracleConnectionStringBuilder builder = new OracleConnectionStringBuilder("jdbc:oracle:thin:@infdb.technikum-wien.at:1521:o10");
        static void Main(string[] args)
        {
            builder.UserID = "s21bwi4_wi19b080";
            builder.Password = "00992412Ivo";

            using OracleConnection connection = new OracleConnection(builder.ToString());
            connection.Open();

            using (var cmd = new OracleCommand("SELECT * FROM PERSON", connection))
            {
                var returned = cmd.ExecuteNonQuery();
                returned.ToString();
            }

        }
    }
}
