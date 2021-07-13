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
  --COMMIT;
END;
/

SELECT * FROM PERSONAL;
SELECT * FROM EhemaligeMitarbeiter;
DELETE FROM EHEMALIGEMITARBEITER WHERE PERSONID=1;

DELETE FROM PERSONAL WHERE PERSONID=1;

SELECT * FROM PERSON;
SELECT * FROM RECHNUNG;

DROP TRIGGER t_AfterDeleteMitarbeiter;

commit;

ROLLBACK;
