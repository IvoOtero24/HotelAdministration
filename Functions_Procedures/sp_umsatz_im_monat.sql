/*********************************************************************
/**
/** Procedure sp_umsatzimmonat
/** Out: v_UmsatzImMonat - (berechneter Umsatz)
/** In: v_monat – der Monat für den man den Umsatz berechnet haben will.
/** In: v_jahr – das Jahr für den man den Umsatz berechnet haben will.
/** Developer: Satveer Baraich
/** Description: Ziel diese Prozeduren ist es, den monatlichen Umsatz zu berechnen. 
/** Dies geschieht dadurch, dass die Rechnungsendsummen innerhalb des vorgegebenen 
/** Monates und Jahres addiert werden und dann ausgegeben. 
/**
/*********************************************************************/


set serveroutput on;

/

CREATE OR REPLACE PROCEDURE sp_umsatzimmonat
 (v_monat in Char, v_jahr in Char)
 
AS
 
v_UmsatzImMonat Rechnung.RechnungsSumme%type; 


BEGIN

SELECT SUM (RechnungsSumme)into v_UmsatzImMonat FROM Rechnung where to_char(Ausstellungsdatum, 'MM') = to_char(v_monat) AND to_char(Ausstellungsdatum, 'YY') = to_char(v_jahr);

DBMS_OUTPUT.put_line('Monatsumsatz für das Jahr ' || v_jahr || ' und Monat ' || v_monat || ' lautet: '|| v_UmsatzImMonat); 

END;
/

exec sp_umsatzimmonat('06','21');
