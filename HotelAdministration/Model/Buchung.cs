using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelAdministration.Model
{
    public class Buchung
    { 
        public Buchung(string buchungsID, DateTime buchungsDatum, string personID, string vorname, string nachname, double buchungspreis, 
            DateTime checkInTime, DateTime checkOutTime, string zimmerArt, int zimmerNr)
        {
            this.BuchungsID = buchungsID;
            this.BuchungsDatum = buchungsDatum.ToShortDateString();
            this.PersonID = personID;
            this.Vorname = vorname;
            this.Nachname = nachname;
            this.Buchungspreis = buchungspreis;
            this.CheckInTime = checkInTime;
            this.CheckOuTime = checkOutTime;
            this.ZimmerArt = zimmerArt;
            this.ZimmerNr = zimmerNr;
        }

        public string BuchungsID { get; private set; }
        public string BuchungsDatum { get; private set; }
        public string PersonID { get; private set; }
        public string Vorname { get; private set; }
        public string Nachname { get; private set; }
        public double Buchungspreis { get; private set; }
        public DateTime CheckInTime { get; private set; }
        public DateTime CheckOuTime { get; private set; }
        public string ZimmerArt { get; private set; }
        public int ZimmerNr { get; private set; }
    }
}
