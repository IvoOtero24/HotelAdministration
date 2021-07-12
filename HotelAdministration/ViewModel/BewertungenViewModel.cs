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
    public class BewertungenViewModel : ViewModelBase
    {

        public ObservableCollection<Bewertung> DisplayedBewertungen { get; set; }
        public ObservableCollection<Bewertung> Bewertungen { get; set; }
        public ObservableCollection<Bewertung> SchlechteBewertungen { get; set; }

        public RelayCommand SchlechteBewertungenAnzeigenCommand { get; set; }
        public RelayCommand AlleBewertungenAnzeigenCommand { get; set; }
        

        public BewertungenViewModel()
        {
            DbConnection connection = new DbConnection();

            Bewertungen = connection.GetBewertungen();
            RaisePropertyChanged("Bewertungen");

            DisplayedBewertungen = connection.GetBewertungen();
            RaisePropertyChanged("DisplayedBewertungen");

            SchlechteBewertungen = connection.GetSchlechteBewertungen();
            RaisePropertyChanged("SchlechteBewertungen");


            SchlechteBewertungenAnzeigenCommand = new RelayCommand(
                () =>
                {
                    DisplayedBewertungen = SchlechteBewertungen;
                    RaisePropertyChanged("DisplayedBewertungen");
                });

            AlleBewertungenAnzeigenCommand = new RelayCommand(
                () =>
                {
                    DisplayedBewertungen = Bewertungen;
                    RaisePropertyChanged("DisplayedBewertungen");
                });

        }
    }
}
