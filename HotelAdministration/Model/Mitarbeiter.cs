using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelAdministration.Model
{
    public class Mitarbeiter
    {
        public Mitarbeiter(int personID, string vorname, string nachname, DateTime gebDatum, long svn, double gehalt, string strasse, int hausNr, int tuerNr, Int64 plz, string ort, string land)
        {
            this.PersonID = personID;
            this.Vorname = vorname;
            this.Nachname = nachname;
            this.GebDatum = gebDatum.ToShortDateString();
            this.SVN = svn;
            this.Gehalt = gehalt;
            this.Adresse = strasse + ", " + hausNr.ToString() + ", TürNr " + tuerNr.ToString();
            this.PLZ = plz;
            this.Ort = ort;
            this.Land = land;
        }

        public int PersonID { get; private set; }
        public string Vorname { get; private set; }
        public string Nachname { get; private set; }
        public string GebDatum { get; private set; }
        public long SVN { get; private set; }
        public double Gehalt { get; private set; }
        public string Adresse { get; private set; }
        public Int64 PLZ { get; private set; }
        public string Ort { get; private set; }
        public string Land { get; private set; }

    }
}
