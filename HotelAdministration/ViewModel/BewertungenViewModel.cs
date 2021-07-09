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
    public class BewertungenViewModel : ViewModelBase
    {
        public ObservableCollection<Bewertung> Bewertungen { get; set; }

        public BewertungenViewModel()
        {
            DbConnection connection = new DbConnection();
            Bewertungen = connection.GetBewertungen();
        }
    }
}
