using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GalaSoft.MvvmLight;
using HotelAdministration.Model;

namespace HotelAdministration.ViewModel
{
    public class RechnungenViewModel : ViewModelBase
    {
        public ObservableCollection<Rechnung> Rechnungen { get; set; }

        public RechnungenViewModel()
        {
            DbConnection connection = new DbConnection();
            Rechnungen = connection.GetRechnungen();
        }
    }
}
