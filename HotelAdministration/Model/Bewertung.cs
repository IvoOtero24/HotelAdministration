using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelAdministration.Model
{
    public class Bewertung
    {
        public Bewertung(int personId, string vorname, string nachname, DateTime buchungsdatum, 
                        string zimmerart, int zimmernr, string bewertungskommentar, int bewertungScore)
        {
            PersonId = personId;
            Vorname = vorname;
            Nachname = nachname;
            Buchungsdatum = buchungsdatum.ToShortDateString();
            ZimmerArt = zimmerart;
            ZimmerNr = zimmernr;
            Bewertungskommentar = bewertungskommentar;
            BewertungScore = bewertungScore;
        }

        public int PersonId { get; private set; }
        public string Vorname { get; private set; }
        public string Nachname { get; private set; }
        public string Buchungsdatum { get; private set; }
        public string ZimmerArt { get; private set; }
        public int ZimmerNr { get; private set; }
        public string Bewertungskommentar { get; private set; }
        public int BewertungScore { get; private set; }
    }
}
