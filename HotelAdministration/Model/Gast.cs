using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelAdministration.Model
{
    public class Gast
    {
        public Gast(string personID, string vorname, string nachname, DateTime gebDatum, string nationalitaet)
        {
            this.PersonID = personID;
            this.Vorname = vorname;
            this.Nachname = nachname;
            this.Geburtsdatum = gebDatum.ToShortDateString();
            this.Nationalitaet = nationalitaet;
        }
        public string PersonID { get; private set; }
        public string Vorname { get; private set; }
        public string Nachname { get; private set; }
        public string Geburtsdatum { get; private set; }
        public string Nationalitaet { get; private set; }
    }
}
