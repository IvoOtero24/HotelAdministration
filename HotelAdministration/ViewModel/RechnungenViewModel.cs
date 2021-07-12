using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GalaSoft.MvvmLight;
using HotelAdministration.Model;
using LiveCharts;
using Oracle.ManagedDataAccess.Client;

namespace HotelAdministration.ViewModel
{
    public class RechnungenViewModel : ViewModelBase
    {
        public ObservableCollection<Rechnung> Rechnungen { get; set; }
        public ChartValues<double> UmsatzProMonat { get; set; }
        public ChartValues<double> UmsatzValues { get; set; }
        public ChartValues<string> DatumValues { get; set; }


        public RechnungenViewModel()
        {
            DbConnection connection = new DbConnection();
            Rechnungen = connection.GetRechnungen();

            UmsatzValues = connection.UmsatzProMonat();
            DatumValues = connection.GetAusstellungsdatum();

        }
    }
}
