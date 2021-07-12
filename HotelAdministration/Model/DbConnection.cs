using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LiveCharts;
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


        #region Bewertungen Functions
        public ObservableCollection<Bewertung> GetBewertungen()
        {
            ObservableCollection<Bewertung> bewertungen = new ObservableCollection<Bewertung>();

            using (var cmd = new OracleCommand("SELECT person.personid, person.Vorname, person.Nachname, Buchungsdatum, ZimmerArt, ZimmerNr, Bewertungskommentar, Bewertung " +
                                               "FROM Kundenbewertung" +
                                               " JOIN Person ON Person.PersonID = Kundenbewertung.PersonID" +
                                               " JOIN Zimmerbuchung USING(BuchungsID)" +
                                               " JOIN Zimmerbuchungsdetails USING(BuchungsID)" +
                                               " JOIN Zimmer ON Zimmerbuchungsdetails.ZimmerNr = Zimmer.ZimmerNr", connection))
            {
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Bewertung toInsert = new Bewertung(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), 
                                            reader.GetDateTime(3), reader.GetString(4), reader.GetInt32(5),
                                            reader.GetString(6), reader.GetInt32(7));
                        bewertungen.Add(toInsert);
                    }
                }
            }
            return bewertungen;
        }

        public ObservableCollection<Bewertung> GetSchlechteBewertungen()
        {
            ObservableCollection<Bewertung> schlechteBewertungen = new ObservableCollection<Bewertung>();

            using (var cmd = new OracleCommand("SELECT * FROM TABLE (sp_check_schlechste_bew)", connection))
            {
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Bewertung toInsert = new Bewertung(reader.GetInt32(0), reader.GetString(1), reader.GetString(2),
                            reader.GetDateTime(3), reader.GetString(4), reader.GetInt32(5),
                            reader.GetString(6), reader.GetInt32(7));
                        schlechteBewertungen.Add(toInsert);
                    }
                }
            }
            return schlechteBewertungen;
        }
        #endregion

        #region Buchungen Functions
        public ObservableCollection<Buchung> GetBuchungen()
        {
            ObservableCollection<Buchung> buchungen = new ObservableCollection<Buchung>();

            using (var cmd = new OracleCommand("SELECT BuchungsID, Buchungsdatum, PersonID, Person.Vorname, Person.Nachname, " +
                                               "Buchungspreis, Zimmerbuchungsdetails.CheckIn, Zimmerbuchungsdetails.CheckOut, Zimmer.ZimmerArt, Zimmer.ZimmerNr " +
                                               "FROM Zimmerbuchung " +
                                               "JOIN Person USING (PersonID) " +
                                               "JOIN Zimmerbuchungsdetails USING (BuchungsID) " +
                                               "JOIN Zimmer ON Zimmerbuchungsdetails.Zimmernr = Zimmer.Zimmernr"
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
        #endregion

        #region Mitarbeiter Functions
        public ObservableCollection<Mitarbeiter> GetMitarbeiter()
        {
            ObservableCollection<Mitarbeiter> mitarbeiterliste = new ObservableCollection<Mitarbeiter>();

            using (var cmd = new OracleCommand("SELECT PersonID, Person.Vorname, Person.Nachname, Person.Geburtsdatum, Person.SVN, " +
                                               "Gehaltsstufe.Monatsgehalt, Adresse.Strasse, Adresse.HausNr, Adresse.TuerNr, Adresse.PLZ, Adresse.Ort, Land.LandName " +
                                               "FROM Personal " +
                                               "JOIN Person USING (PersonID) " +
                                               "JOIN Gehaltsstufe USING (GehaltsstufeID) " +
                                               "JOIN Adresse USING (AdressID)" +
                                               "JOIN Land USING (LandID)"
                , connection))
            {
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Mitarbeiter toInsert = new Mitarbeiter(reader.GetInt32(0), reader.GetString(1), reader.GetString(2),
                            reader.GetDateTime(3), reader.GetInt64(4), reader.GetDouble(5), reader.GetString(6), reader.GetInt32(7),
                            reader.GetInt32(8), reader.GetInt64(9), reader.GetString(10), reader.GetString(11));
                        
                        mitarbeiterliste.Add(toInsert);
                    }
                }
            }
            return mitarbeiterliste;
        }

        public void InsertMitarbeiter(string vorname, string nachname, DateTime gebDatum, long svn, int gehaltsStufe, string email, string telefon, string strasse, int hausNr, int tuerNr,
            int plz, string ort, string land, long kontonr, string iban,string bankname, string abteilung)
        {
            //speicher momentane LandID, AdressID mit gegebene Bezeichnung (für insert nötig)
            int tmp_landid = 0;
            int tmp_adressid = 0;
            int tmp_personid = 0;
            int tmp_kontoid = 0;
            int tmp_abteilungsid = 0;


            // get korrespondierende LandID 
            using (var cmd0 = new OracleCommand("SELECT LandID FROM Land WHERE Landname = '" + land + "'"
                , connection))
            {
                using (var reader = cmd0.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        tmp_landid = reader.GetInt32(0);
                    }
                }
            }

            // insert into adresse
            using (var cmd1 = new OracleCommand("INSERT INTO Adresse (Strasse, HausNr, TuerNr, PLZ, Ort, LandID) VALUES (" +
                                               strasse + ", " + hausNr + ", " + tuerNr+ ", " + plz + ", " + ort + ", " + tmp_landid + ")", connection))
            {
                cmd1.ExecuteNonQuery();
            }

            // get adressid von neue adresse
            using (var cmd2 = new OracleCommand("SELECT AdressID FROM Adresse WHERE Strasse = '" + strasse + "'"
                , connection))
            {
                using (var reader = cmd2.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        tmp_adressid = reader.GetInt32(0);
                    }
                }
            }

            // insert neue Person
            using (var cmd3 = new OracleCommand("INSERT INTO Person (Vorname, Nachname, SVN, Geburtsdatum, AdressID, Email, Telefon) VALUES (" +
                                               vorname +"," + nachname + "," + svn + "," + gebDatum + "," + tmp_adressid + ","
                                               + email + "," + telefon + ")"
                , connection))
            {
                cmd3.ExecuteNonQuery();
            }

            // get person ID von neue person
            using (var cmd2 = new OracleCommand("SELECT PersonID FROM Person WHERE SVN = " + svn
                , connection))
            {
                using (var reader = cmd2.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        tmp_adressid = reader.GetInt32(0);
                    }
                }
            }

            // insert neue Bankinfos
            using (var cmd2 = new OracleCommand("INSERT INTO Bankinformation (KONTONR, IBAN, BANKNAME, ADRESSID) VALUES (" +
                                                 kontonr + ", " + iban + ", " + bankname + ", " + tmp_adressid + ", " + ")" 
                , connection))
            {
                cmd2.ExecuteNonQuery();
            }

            // get Konto ID von neue person
            using (var cmd2 = new OracleCommand("SELECT KontoID FROM Bankinformation WHERE IBAN = '" + iban + "'"
                , connection))
            {
                using (var reader = cmd2.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        tmp_kontoid = reader.GetInt32(0);
                    }
                }
            }


            // get Abteilungs ID von neue person
            using (var cmd2 = new OracleCommand("SELECT AbteilungsID FROM Abteilung WHERE Beschreibung = '" + abteilung + "'"
                , connection))
            {
                using (var reader = cmd2.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        tmp_abteilungsid = reader.GetInt32(0);
                    }
                }
            }


            // insert endlich into Personal
            using (var cmd2 = new OracleCommand("INSERT INTO Personal (PERSONID, GEHALTSSTUFEID, KONTOID, ABTEILUNGSID) VALUES (" +
                                                tmp_personid + ", " + gehaltsStufe + ", " + tmp_kontoid + ", " + tmp_abteilungsid + ", " + ")"
                , connection))
            {
                cmd2.ExecuteNonQuery();
            }
        }

        public void DeleteMitarbeiter(int toDeleteMitarbeiterID)
        {
            // insert into adresse
            using (var cmd1 = new OracleCommand("DELETE * FROM Personal WHERE PersonID = " + toDeleteMitarbeiterID   ,   connection))
            {
                cmd1.ExecuteNonQuery();
            }

        }
        #endregion

        #region Gast Functions
        public ObservableCollection<Gast> GetGaeste()
        {
            ObservableCollection<Gast> gaeste = new ObservableCollection<Gast>();

            using (var cmd = new OracleCommand("SELECT PersonID, Person.Vorname, Person.Nachname, Person.Geburtsdatum, Land.Landname " +
                                               "FROM Gast " +
                                               "JOIN Person USING (PersonID) " +
                                               "JOIN Reisepass USING (ReisepassID) " +
                                               "JOIN Land USING (LandID) "
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
        
        public int GetAnzahlGaeste()
        {
            int anzahlGaeste = 0;
            
            using (var cmd = new OracleCommand("SELECT COUNT(*) FROM Gast"
                , connection))
            {
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        anzahlGaeste = reader.GetInt32(0);
                    }
                }
            }

            return anzahlGaeste;
        }

        public ObservableCollection<Gast> GetLoyaleGaeste()
        {
            ObservableCollection<Gast> loyaleGaeste = new ObservableCollection<Gast>();

            using (var cmd = new OracleCommand("SELECT * FROM TABLE (sp_check_beste_kunden)"
                , connection))
            {
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Gast toInsert = new Gast(reader.GetString(0), reader.GetString(1), reader.GetString(2),
                            reader.GetDateTime(3), reader.GetString(4));
                        loyaleGaeste.Add(toInsert);
                    }
                }
            }
            return loyaleGaeste;
        }
        #endregion

        #region Rechnungen Functions
        public ObservableCollection<Rechnung> GetRechnungen()
        {
            ObservableCollection<Rechnung> rechnungen = new ObservableCollection<Rechnung>();

            using (var cmd = new OracleCommand("SELECT * FROM TABLE(DeadlineRechnung)"
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
        public ChartValues<double> UmsatzProMonat()
        {
            ChartValues<double> umsatzMonat = new ChartValues<double>();
            using (var cmd = new OracleCommand("SELECT SUM(Rechnungssumme) FROM Rechnung GROUP BY EXTRACT(month FROM Ausstellungsdatum)"
                , connection))
            {
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        umsatzMonat.Add(reader.GetDouble(0));
                    }
                }

            }
            return umsatzMonat;
        }

        public ChartValues<string> GetAusstellungsdatum()
        {
            ChartValues<string> ausstellungsDatumValues = new ChartValues<string>();
            using (var cmd = new OracleCommand("SELECT AVG(EXTRACT(month FROM Ausstellungsdatum)) FROM Rechnung GROUP BY EXTRACT(month FROM Ausstellungsdatum) ORDER BY EXTRACT(month FROM Ausstellungsdatum)"
                , connection))
            {
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        ausstellungsDatumValues.Add(reader.GetString(0));
                    }
                }

            }
            return ausstellungsDatumValues;
        }
        #endregion
    }
}
