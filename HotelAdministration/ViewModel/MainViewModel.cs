using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using GalaSoft.MvvmLight.Ioc;

namespace HotelAdministration.ViewModel
{
    public class MainViewModel : ViewModelBase
    {
        public ViewModelNavigation navigation = SimpleIoc.Default.GetInstance<ViewModelNavigation>();

        public ViewModelBase _currentView;
        public ViewModelBase CurrentView
        {
            get { return _currentView; }
            set { _currentView = value; RaisePropertyChanged("CurrentView"); }
        }



        private RelayCommand _switchToBewertungenViewCommand;
        public RelayCommand SwitchToBewertungenViewCommand
        {
            get => _switchToBewertungenViewCommand;
            set
            {
                _switchToBewertungenViewCommand = value;
                RaisePropertyChanged("SwitchToBewertungenViewCommand");
            }

        }

        private RelayCommand _switchToBuchungenViewCommand;
        public RelayCommand SwitchToBuchungenViewCommand
        {
            get => _switchToBuchungenViewCommand;
            set
            {
                _switchToBuchungenViewCommand = value;
                RaisePropertyChanged("SwitchToBuchungenViewCommand");
            }

        }

        private RelayCommand _switchToGastViewCommand;
        public RelayCommand SwitchToGastViewCommand
        {
            get => _switchToGastViewCommand;
            set
            {
                _switchToGastViewCommand = value;
                RaisePropertyChanged("SwitchToGastViewCommand");
            }

        }

        private RelayCommand _switchToRechnungViewCommand;
        public RelayCommand SwitchToRechnungViewCommand
        {
            get => _switchToRechnungViewCommand;
            set
            {
                _switchToRechnungViewCommand = value;
                RaisePropertyChanged("SwitchToRechnungViewCommand");
            }

        }

        private RelayCommand _switchToMitarbeiterViewCommand;
        public RelayCommand SwitchToMitarbeiterViewCommand
        {
            get => _switchToMitarbeiterViewCommand;
            set
            {
                _switchToMitarbeiterViewCommand = value;
                RaisePropertyChanged("SwitchToMitarbeiterViewCommand");
            }

        }




        //constructor for MainViewModel
        public MainViewModel()
        {

            SwitchToMitarbeiterViewCommand = new RelayCommand(
                () =>
                {
                    CurrentView = navigation.NavigateTo("Mitarbeiter");
                    RaisePropertyChanged("CurrentView");

                });

            SwitchToBewertungenViewCommand = new RelayCommand(
                () =>
                {
                    CurrentView = navigation.NavigateTo("Bewertungen");
                    RaisePropertyChanged("CurrentView");
                });

            SwitchToBuchungenViewCommand = new RelayCommand(
                () =>
                {
                    CurrentView = navigation.NavigateTo("Buchungen");
                    RaisePropertyChanged("CurrentView");
                });

            SwitchToGastViewCommand = new RelayCommand(
                () =>
                {
                    CurrentView = navigation.NavigateTo("Gast");
                    RaisePropertyChanged("CurrentView");
                });

            SwitchToRechnungViewCommand = new RelayCommand(
                () =>
                {
                    CurrentView = navigation.NavigateTo("Rechnung");
                    RaisePropertyChanged("CurrentView");
                });

            //display the default view when running (overview view in this case)
            CurrentView = navigation.NavigateTo("Buchungen");


        }
    }
}
