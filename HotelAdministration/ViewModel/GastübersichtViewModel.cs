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
    public class GastübersichtViewModel : ViewModelBase
    {
        public ObservableCollection<Gast> Gaeste { get; set; }

        public GastübersichtViewModel()
        {
            DbConnection connection = new DbConnection();
            Gaeste = connection.GetGaeste();
        }
    }
}
