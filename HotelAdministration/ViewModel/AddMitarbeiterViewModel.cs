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
    public class AddMitarbeiterViewModel : ViewModelBase
    {
        public ObservableCollection<Mitarbeiter> Mitarbeiterliste { get; set; }

        public AddMitarbeiterViewModel()
        {
            DbConnection connection = new DbConnection();
            Mitarbeiterliste = connection.GetMitarbeiter();
        }
    }
}
