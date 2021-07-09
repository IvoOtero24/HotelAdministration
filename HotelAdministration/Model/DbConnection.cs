using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
        private OracleConnectionStringBuilder builder = new OracleConnectionStringBuilder();
        private OracleConnection connection = null;
        public DbConnection()
        {
            builder.DataSource = "(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=infdb.technikum-wien.at)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=o10)))";
            builder.Pooling = true;
            builder.ConnectionTimeout = 5;
            builder.UserID = "s21bwi4_wi19b080";
            builder.Password = "00992412Ivo";

            connection = new OracleConnection(builder.ToString());
            connection.Open();
        }

        public ObservableCollection<Bewertung> GetBewertungen()
        {
            ObservableCollection<Bewertung> bewertungen = new ObservableCollection<Bewertung>();

            using (var cmd = new OracleCommand("SELECT * FROM Kundenbewertung", connection))
            {
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Bewertung toInsert = new Bewertung(reader.GetString(0), reader.GetString(1), reader.GetString(2), reader.GetString(3), reader.GetInt32(4));
                        bewertungen.Add(toInsert);
                    }
                }
            }
            return bewertungen;
        }
        public ObservableCollection<Buchung> GetBuchungen()
        {
            ObservableCollection<Buchung> buchungen = new ObservableCollection<Buchung>();

            using (var cmd = new OracleCommand("SELECT BuchungsID, Buchungsdatum, PersonID, Person.Vorname, Person.Nachname, " +
                                               "Buchungspreis, Zimmerbuchungsdetails.CheckIn, Zimmerbuchungsdetails.CheckOut, Zimmer.ZimmerArt, Zimmer.ZimmerNr " +
                                               "FROM Zimmerbuchung " +
                                               "JOIN Person USING (PersonID) " +
                                               "JOIN Zimmerbuchungsdetails USING (BuchungsID) " +
                                               "JOIN Zimmer USING (ZimmerNr) " 
                    , connection))
            {
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Buchung toInsert = new Buchung(reader.GetString(0), reader.GetDateTime(1), reader.GetString(2), 
                            reader.GetString(3), reader.GetString(4), reader.GetDouble(5), reader.GetDateTime(6),
                            reader.GetDateTime(7), reader.GetString(8), reader.GetInt32(9));
                        buchungen.Add(toInsert);
                    }
                }
            }
            return buchungen;
        }
        public ObservableCollection<Gast> GetGaeste()
        {
            ObservableCollection<Gast> gaeste = new ObservableCollection<Gast>();

            using (var cmd = new OracleCommand("SELECT PersonID, Person.Vorname, Person.Nachname, Person.Geburtsdatum, Land.Bezeichnung" +
                                               "FROM Gast" +
                                               "JOIN Person USING (PersonID)" +
                                               "JOIN Reisepass USING (ReisepassID)" +
                                               "JOIN Land USING (LandID)"
                , connection))
            {
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Gast toInsert = new Gast(reader.GetString(0), reader.GetString(1), reader.GetString(2),
                            reader.GetDateTime(3), reader.GetString(4));
                        gaeste.Add(toInsert);
                    }
                }
            }
            return gaeste;
        }

        public ObservableCollection<Mitarbeiter> GetMitarbeiter()
        {
            ObservableCollection<Mitarbeiter> mitarbeiterliste = new ObservableCollection<Mitarbeiter>();

            using (var cmd = new OracleCommand("SELECT PersonID, Person.Vorname, Person.Nachname, Person.Geburtsdatum, Person.SVN, " +
                                               "Gehaltsstuffe.Gehalt, Adresse.Strasse, Adresse.HausNr, Adresse.TuerNr, Adresse.PLZ, Adresse.Ort, Adresse.Land" +
                                               "FROM Personal" +
                                               "JOIN Person USING (PersonID)" +
                                               "JOIN Gehaltsstuffe USING (GehaltsstuffeID)" +
                                               "JOIN Adresse USING (AdressID)"
                , connection))
            {
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Mitarbeiter toInsert = new Mitarbeiter(reader.GetString(0), reader.GetString(1), reader.GetString(2),
                            reader.GetDateTime(3), reader.GetInt32(4), reader.GetDouble(5), reader.GetString(6), reader.GetInt32(7),
                            reader.GetInt32(8), reader.GetInt32(9), reader.GetString(10), reader.GetString(11));
                        mitarbeiterliste.Add(toInsert);
                    }
                }
            }
            return mitarbeiterliste;
        }
        public ObservableCollection<Rechnung> GetRechnungen()
        {
            ObservableCollection<Rechnung> rechnungen = new ObservableCollection<Rechnung>();

            using (var cmd = new OracleCommand("SELECT RechnungsID, Rechnungssumme, Austellungsdatum, AusstellerkontoID, EmpfaengerkontoID" +
                                               "FROM Rechnung"
                , connection))
            {
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Rechnung toInsert = new Rechnung(reader.GetString(0), reader.GetDouble(1), reader.GetDateTime(2),
                            reader.GetString(3), reader.GetString(4));
                        rechnungen.Add(toInsert);
                    }
                }
            }
            return rechnungen;
        }
    }
}
