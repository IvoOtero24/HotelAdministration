using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelAdministration.Model
{
    public class Rechnung
    {
        public Rechnung(string rechnungsID, double summe, DateTime ausstellungsDatum, string ausstellerKontoID, string empfaengerKontoID)
        {
            this.RechnungsID = rechnungsID;
            this.Summe = summe;
            this.AustellungsDatum = ausstellungsDatum;
            this.AusstellerKontoID = ausstellerKontoID;
            this.EmpfaengerKontoID = empfaengerKontoID;
        }
        public string RechnungsID { get; private set; }
        public double Summe { get; private set; }
        public DateTime AustellungsDatum { get; private set; }
        public string AusstellerKontoID { get; private set; }
        public string EmpfaengerKontoID { get; private set; }
    }
}
