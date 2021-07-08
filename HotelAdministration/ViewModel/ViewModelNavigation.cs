using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Ioc;

namespace HotelAdministration.ViewModel
{
    public class ViewModelNavigation
    {
        private string _currentViewDescription = null;

        public ViewModelBase NavigateTo(string viewDescription)
        {
            return SimpleFactory(viewDescription);
        }


        //Method that returns the chosen ViewModel based on a given string
        private ViewModelBase SimpleFactory(string viewDescription)
        {

            switch (viewDescription)
            {
                case "Mitarbeiter":
                    this._currentViewDescription = viewDescription;
                    return SimpleIoc.Default.GetInstance<AddMitarbeiterViewModel>();

                case "Bewertungen":
                    this._currentViewDescription = viewDescription;
                    return SimpleIoc.Default.GetInstance<BewertungenViewModel>();

                case "Buchungen":
                    this._currentViewDescription = viewDescription;
                    return SimpleIoc.Default.GetInstance<BuchungsübersichtViewModel>();

                case "Gast":
                    this._currentViewDescription = viewDescription;
                    return SimpleIoc.Default.GetInstance<GastübersichtViewModel>();

                case "Rechnung":
                    this._currentViewDescription = viewDescription;
                    return SimpleIoc.Default.GetInstance<RechnungenViewModel>();

                default:
                    return SimpleIoc.Default.GetInstance<AddMitarbeiterViewModel>();
            }


        }
    }
}
