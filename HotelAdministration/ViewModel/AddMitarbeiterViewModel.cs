using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics.Contracts;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using HotelAdministration.Model;
using Microsoft.IdentityModel.Protocols.OpenIdConnect;

namespace HotelAdministration.ViewModel
{
    public class AddMitarbeiterViewModel : ViewModelBase
    {
        public ObservableCollection<Mitarbeiter> Mitarbeiterliste { get; set; }
        private Mitarbeiter _selectedMitarbeiter;

        public Mitarbeiter SelectedMitarbeiter
        {
            get { return _selectedMitarbeiter; }
            set
            {
                _selectedMitarbeiter = value; 
                RaisePropertyChanged("SelectedMitarbeiter");
            }
        }


        private RelayCommand _mitarbeiterDeleteCommand;

        public RelayCommand MitarbeiterDeleteCommand
        {
            get { return _mitarbeiterDeleteCommand; }
            set
            {
                _mitarbeiterDeleteCommand = value; 
                RaisePropertyChanged("MitarbeiterDeleteCommand");
            }
        }



        private RelayCommand _mitarbeiterAddCommand;

        public RelayCommand MitarbeiterAddCommand
        {
            get { return _mitarbeiterAddCommand; }
            set
            {
                _mitarbeiterAddCommand = value; 
                RaisePropertyChanged("MitarbeiterAddCommand");
            }
        }



        #region AddMitarbeiter
        private string _email;

        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }

        private string _telNummer;

        public string TelNummer
        {
            get { return _telNummer; }
            set { _telNummer = value; }
        }

        private string _vorname;
        public string Vorname
        {
            get { return _vorname; }
            set
            {
                _vorname = value;
                RaisePropertyChanged("Vorname");
                MitarbeiterAddCommand.RaiseCanExecuteChanged();

            }
        }

        private string _nachname;
        public string Nachname
        {
            get { return _nachname; }
            set
            {
                _nachname = value;
                RaisePropertyChanged("Nachname");
                MitarbeiterAddCommand.RaiseCanExecuteChanged();

            }
        }
        private DateTime _gebDatum;
        public DateTime GebDatum
        {
            get { return _gebDatum; }
            set
            {
                _gebDatum = value;
                RaisePropertyChanged("GebDatum");

            }
        }

        private long _svn;
        public long SVN
        {
            get { return _svn; }
            set
            {
                _svn = value;
                RaisePropertyChanged("SVN");

            }
        }

        private int _gehaltsstufe;
        public int Gehaltsstufe
        {
            get { return _gehaltsstufe; }
            set
            {
                _gehaltsstufe = value;
                RaisePropertyChanged("Gehaltsstufe");

            }
        }

        private string _strasse;
        public string Strasse
        {
            get { return _strasse; }
            set
            {
                _strasse = value;
                RaisePropertyChanged("Strasse");

            }
        }

        private int _hausNr;
        public int HausNr
        {
            get { return _hausNr; }
            set { _hausNr = value; }
        }

        private int _tuerNr;
        public int TuerNr
        {
            get { return _tuerNr; }
            set { _tuerNr = value; }
        }

        private int _plz;
        public int PLZ
        {
            get { return _plz; }
            set
            {
                _plz = value; 
                RaisePropertyChanged("PLZ");
            }
        }

        private string _ort;
        public string Ort
        {
            get { return _ort; }
            set
            {
                _ort = value;
                RaisePropertyChanged("Ort");

            }
        }

        private string _land;
        public string Land
        {
            get { return _land; }
            set
            {
                _land = value;
                RaisePropertyChanged("Land");

            }
        }

        private long _kontoNr;

        public long KontoNr
        {
            get { return _kontoNr; }
            set { _kontoNr = value; }
        }

        private string _iban;

        public string IBAN
        {
            get { return _iban; }
            set { _iban = value; }
        }

        private string _bankname;

        public string BankName
        {
            get { return _bankname; }
            set { _bankname = value; }
        }

        private string _abteilung;

        public string Abteilung
        {
            get { return _abteilung; }
            set { _abteilung = value; }
        }

        

        #endregion

        public AddMitarbeiterViewModel()
        {
            DbConnection connection = new DbConnection();
            Mitarbeiterliste = connection.GetMitarbeiter();

            MitarbeiterDeleteCommand = new RelayCommand(
                () =>
                {
                    connection.DeleteMitarbeiter(SelectedMitarbeiter.PersonID);

                });

            MitarbeiterAddCommand = new RelayCommand(
                () =>
                {
                    connection.InsertMitarbeiter(Vorname, Nachname, GebDatum, SVN, Gehaltsstufe, Email, TelNummer, 
                        Strasse, HausNr, TuerNr, PLZ, Ort, Land, KontoNr, IBAN, BankName, Abteilung);
                }, () => Vorname != null && Nachname != null);

        }
    }
}
