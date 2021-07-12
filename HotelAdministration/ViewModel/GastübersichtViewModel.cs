using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using HotelAdministration.Model;

namespace HotelAdministration.ViewModel
{
    public class GastübersichtViewModel : ViewModelBase
    {

        public ObservableCollection<Gast> DisplayGaeste { get; set; }
        public ObservableCollection<Gast> Gaeste { get; set; }
        public ObservableCollection<Gast> LoyalCustomers { get; set; }
        public int AnzahlGaeste { get; set; }

        public RelayCommand FilterAlleGaesteCommand { get; set; }
        public RelayCommand FilterLoyaleGaesteCommand { get; set; }


        public GastübersichtViewModel()
        {
            DbConnection connection = new DbConnection();
            Gaeste = connection.GetGaeste();
            RaisePropertyChanged("Gaeste");

            DisplayGaeste = Gaeste;
            RaisePropertyChanged("DisplayGaeste");

            AnzahlGaeste = connection.GetAnzahlGaeste();
            RaisePropertyChanged("AnzahlGaeste");

            LoyalCustomers = connection.GetLoyaleGaeste();
            RaisePropertyChanged("LoyalCustomers");

            FilterAlleGaesteCommand = new RelayCommand(() =>
            {
                DisplayGaeste = Gaeste;
                RaisePropertyChanged("DisplayGaeste");
            });

            FilterLoyaleGaesteCommand = new RelayCommand(() =>
            {
                DisplayGaeste = LoyalCustomers;
                RaisePropertyChanged("DisplayGaeste");
            });

        }
    }
}
