using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelAdministration.Model
{
    public class Bewertung
    {
        public Bewertung(string personId, string bewertungsId, string bewertungskommentar, string buchungsId, int bewertungScore)
        {
            PersonId = personId;
            BewertungsId = bewertungsId;
            Bewertungskommentar = bewertungskommentar;
            BuchungsId = buchungsId;
            BewertungScore = bewertungScore;
        }

        public string PersonId { get; private set; }
        public string BewertungsId { get; private set; }
        public string Bewertungskommentar { get; private set; }
        public string BuchungsId { get; private set; }
        public int BewertungScore { get; private set; }
    }
}
