// change the words in a dword
dword_test.W0 := presse_test1.W1;
dword_test.W1 := presse_test1.W0;

KeyboardsHandler1(KB := udtKeyboard);

//Input von presse

// Aktiver Lage Istwert S-0-0386
dw_lageist1.W0 := w_lageist0;
dw_lageist1.W1 := w_lageist1;

test5 := TO_DINT(dw_lageist1);
lage_istwert := TO_REAL(test5) / 100;

// Geschwindigkeitsistwert Geber 1 S-0-0040
dw_geschwindigkeit_ist.W0 := w_geschwindigeit_ist0;
dw_geschwindigkeit_ist.W1 := w_geschwindigeit_ist1;

test6 := TO_DINT(dw_geschwindigkeit_ist);
geschwindigkeit_istwert := TO_REAL(test6) / 100;


// Diagnose Nummer S-0-0390
dw_diag.W0 := w_diag0;
dw_diag.W1 := w_diag1;

test7 := TO_DINT(dw_diag);

//Output zu presse
code_text12_real := STRING_TO_REAL(code_text12);  //kraft-Grenzwert
//Drehmoment/Kraft 0%-400% (100% sind 
if set_Kraft THEN
    //real_Kraftgrenze_positiv := 14.0;
   // real_Kraftgrenze_positiv_hmi := code_text12_real;
    real_Kraftgrenze_positiv :=  code_text12_real;
    
    END_IF
    int_Kraftgrenze_positiv := TO_INT(real_Kraftgrenze_positiv*100 );
    int_Kraftgrenze_negativ := TO_INT(real_Kraftgrenze_positiv*-100);
    word_Kraftgrenze_positiv := TO_WORD(int_Kraftgrenze_positiv);
    word_Kraftgrenze_negativ := TO_WORD(int_Kraftgrenze_negativ);
// Positioniersollwert S-0-0282
// min -1000 - max 1000

IF set_position2 THEN
   //real_positioniersollwert := real_positioniersollwert_hmi; // real in mm auf hmi
   real_positioniersollwert := 174.0;
   antrieb_freigeben:= FALSE;
   set_position2 := FALSE;
END_IF;


dint_positioniersollwert := TO_DINT(real_positioniersollwert * 100);
dword_positioniersollwert := TO_DWORD(dint_positioniersollwert);
w0_positioniersollwert := dword_positioniersollwert.W0;
w1_positioniersollwert := dword_positioniersollwert.W1;

// Positioniergeschwindigkeit S-0-0259
// min 0 - max 508,33 mm/s
real_positioniergeschwindigkeit := 60.0;
dint_positioniergeschwindigkeit := TO_DINT(real_positioniergeschwindigkeit * 100);
dword_positioniergeschwindigkeit := TO_DWORD(dint_positioniergeschwindigkeit);
w0_positioniergeschwindigkeit := dword_positioniergeschwindigkeit.W0;
w1_positioniergeschwindigkeit := dword_positioniergeschwindigkeit.W1;

// wechselt vom Zustand AB (Antrieb bereit) in den Zustand AF (Antrieb freigegeben)
IF antrieb_freigeben THEN
    steuerwort := 16#A000;
    ELSE
    steuerwort := 16#0000;
END_IF;

// fährt den Antrieb auf den Positioniersollwert real_positioniersollwert
// in einer Schrittkette kann so getoggelt werden: antrieb_verfahren := NOT antrieb_verfahren;
steuerwort.X0 := antrieb_verfahren;
//antrieb_verfahren:=antrieb_verfahren_hmi; //Antrieb verfahren HMI

//Error rauslöschen
IF Fehler_löschen THEN
    steuerwort := 16#A020;
    END_IF

