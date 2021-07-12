/*********************************************************************
/**
/** Trigger: t_io_waren_view
/** Type: instead of 
/** Type Extension: 
/** Developer: Group 3
/** Description: 
The purpose of this view is to INSERT a new ware, instead of INSERTing INTO the view, we will check IF the warenart exists or not.
If existed, then we take the WarenArtID and use it to INSERT INTO ware. If not, create a new WarenArt with the highest WarenArtID +1;
The WarenID of new ware will be the biggest WarenID +1 ; 
Exception: IF the ware exists already then an exception will be raised. 
/**
/*********************************************************************




CREATE OR REPLACE VIEW Waren_view AS
SELECT WarenName, WarenArtName, EinzelPreis 
FROM Ware
LEFT JOIN WarenArt USING (WarenArtID)
ORDER BY WarenName ASC;

CREATE OR REPLACE TRIGGER t_io_waren_view
INSTEAD OF INSERT ON Waren_view
FOR EACH ROW
DECLARE
  check_waren_art NUMBER;
   check_ware NUMBER;
  warenart_id WarenArt.WarenArtID%type;
  waren_id Ware.WarenID%type;
 BEGIN
--check IF the kbz exists
  SELECT COUNT (*)INTO check_waren_art FROM WarenArt WHERE WarenArtName = :new.WarenArtName;
   SELECT COUNT (*)INTO check_ware FROM Ware WHERE WarenName = :new.WarenName;
-- IF existed 
 IF check_waren_art != 0 THEN
  SELECT WarenArtID INTO warenart_id FROM WarenArt WHERE WarenArtName = :new.WarenArtName;
  IF check_ware !=0 THEN
   raise_application_error(-20201, 'Ware existiert schon.');
  ELSE
 SELECT max(WarenID) INTO waren_id FROM Ware;
 INSERT INTO Ware VALUES (waren_id+1,:new.WarenName,:new.Einzelpreis,warenart_id);
 END IF;
 ELSE
   SELECT max(WarenArtID) INTO warenart_id FROM WarenArt;
    INSERT INTO WarenArt VALUES (warenart_id+1,:new.WarenArtName);
   IF check_ware !=0 THEN
   raise_application_error(-20201, 'Ware existiert schon.');
  ELSE
   SELECT max(WarenID) INTO waren_id FROM Ware;
 INSERT INTO Ware VALUES (waren_id+1,:new.WarenName,:new.Einzelpreis,warenart_id+1);
 END IF;
  END IF;
  
END;
/
INSERT INTO Waren_view values ('ABC','Zimmerartikel', 1);
DELETE FROM Ware WHERE Warenid = 32;

SELECT * FROM Waren_view;
SELECT * FROM Ware;
SELECT * FROM WarenArt;
