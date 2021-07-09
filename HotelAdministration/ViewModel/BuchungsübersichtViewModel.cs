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
    public class BuchungsübersichtViewModel : ViewModelBase
    {
        public ObservableCollection<Buchung> Buchungen { get; set; }

        public BuchungsübersichtViewModel()
        {
            DbConnection connection = new DbConnection();
            Buchungen = connection.GetBuchungen();
        }
    }
}
