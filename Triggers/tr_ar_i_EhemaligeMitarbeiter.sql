/*********************************************************************
/**
/** Trigger: tr_ar_i_EhemaligeMitarbeiter
/** Type: after row
/** Type Extension: delete
/** Developer: Group 3
/** Description: Wenn ein/e MitarbeiterIn nicht mehr beim Hotel arbeitet, soll man ihn/sie von der Tabelle „Personal“ löschen. 
/**              Dann soll er/sie zu der Tabelle „EhemaligeMitarbeter“ verschoben werden, damit die anderen Daten von ihm/ihr, 
/**              z.B. die Rechnungen, die er/sie ausgestellt hat, nicht gelöscht werden müssen und später noch gefunden werden können. 
/**              Und in der Tabelle soll dokumentiert werden, wann der Mitarbeiter das Hotel verlassen hat.
/**
/*********************************************************************


set serveroutput on;
/


CREATE OR REPLACE TRIGGER tr_ar_i_EhemaligeMitarbeiter
AFTER DELETE ON personal
REFERENCING OLD OLDI
FOR EACH ROW
BEGIN
  --DELETE FROM person WHERE PERSON.PERSONID= :OLDI.PERSONID;
  --DELETE FROM bankinformation WHERE bankinformation.kontoid= :OLDI.kontoid;
  --DELETE FROM rechnung WHERE Rechnung.AusstellerkontoID= :OLDI.kontoID OR Rechnung.EmpfaengerkontoID= :OLDI.kontoID ;
  INSERT INTO  EhemaligeMitarbeiter (PersonID,	GehaltsstufeID,	KontoID, AbteilungsID, Austrittsdatum) 
     VALUES (:OLDI.PERSONID, :OLDI.GEHALTSSTUFEID, :OLDI.KONTOID, :OLDI.ABTEILUNGSID, to_date(sysdate));
END;
/


DELETE FROM PERSONAL WHERE PERSONID=1;



commit;

ROLLBACK;
