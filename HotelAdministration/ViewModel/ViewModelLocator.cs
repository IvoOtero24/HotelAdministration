using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GalaSoft.MvvmLight.Ioc;

namespace HotelAdministration.ViewModel
{
    public class ViewModelLocator
    {
        public ViewModelLocator()
        {
            SimpleIoc.Default.Register<MainViewModel>();
            SimpleIoc.Default.Register<AddMitarbeiterViewModel>();
            SimpleIoc.Default.Register<BewertungenViewModel>();
            SimpleIoc.Default.Register<GastübersichtViewModel>();
            SimpleIoc.Default.Register<RechnungenViewModel>();
            SimpleIoc.Default.Register<BuchungsübersichtViewModel>();
            SimpleIoc.Default.Register<ViewModelNavigation>();


        }
        public MainViewModel Main => SimpleIoc.Default.GetInstance<MainViewModel>();
        public AddMitarbeiterViewModel Mitarbeiter => SimpleIoc.Default.GetInstance<AddMitarbeiterViewModel>();
        public GastübersichtViewModel Gast => SimpleIoc.Default.GetInstance<GastübersichtViewModel>();
        public BewertungenViewModel Bewertungen => SimpleIoc.Default.GetInstance<BewertungenViewModel>();
        public BuchungsübersichtViewModel Buchungen => SimpleIoc.Default.GetInstance<BuchungsübersichtViewModel>();
        public RechnungenViewModel Rechnung => SimpleIoc.Default.GetInstance<RechnungenViewModel>();

    }
}
