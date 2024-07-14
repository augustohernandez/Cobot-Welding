//Warnungen die auf dem HMI Bildschirm aufploppen soll
(*If udtRob.State.PR or udtRob1.State.PR THEN                             //einer der beiden Roboter lässt sein Programm laufen
    roboter_an := True;
    ELSE
    roboter_an := False;
    END_IF*)
    roboter_an := True;
    Warnung_nr:=0;
        
    
    
    
    Tuer_Status_1 := FALSE;
    Tuer_Status_2 := FALSE;
    Tuer_Status_3 := FALSE;
    Tuer_Status_4 := FALSE;
    Tuer_Status_5 := FALSE;
    Tuer_Status_6 := FALSE;
    
    Tuer_Status_7 := FALSE;
    Tuer_Status_8 := FALSE;
    Tuer_Status_9 := FALSE;
    Tuer_Status_10 := FALSE;
    
    NOK_Nester_Voll := FALSE;
    
    IF code_text2 = '0' THEN
        code_tex2_eingabe := FALSE;
        ELSE
        code_tex2_eingabe := TRUE;    
    END_IF
    
    
 
    
If  Schub_door_open[1] AND roboter_an THEN 
    Tuer_Status_1 := TRUE;
    Tuer_Stataus_1_Warnung := TRUE;                         //Schubladentür1
    Warnung_nr:=1;
    END_IF
    
    If Schub_door_open[2] AND roboter_an THEN
    Tuer_Status_2 := TRUE;                                    //Schubladentür2
    Warnung_nr:=2;
    END_IF
    
    If  Schub_door_open[3] AND roboter_an THEN 
    Tuer_Status_3 := TRUE;                                //Schubladentür3
    Warnung_nr:=3;
    END_IF
    
    If  Schub_door_open[4] AND roboter_an THEN
    Tuer_Status_4 := TRUE;                                 //Schubladentür4
    Warnung_nr:=4;
    END_IF
    
    If  Schub_door_open[5] AND roboter_an THEN    
    Tuer_Status_5 := TRUE;                             //Schubladentür5
     Warnung_nr:=5;
    END_IF
    
    If  Schub_door_open[6] AND roboter_an THEN 
    Tuer_Status_6 := TRUE;                                //Schubladentür6
    Warnung_nr:=6;
    END_IF
    
    If DI5_16_13 AND DI5_16_14 AND DI5_16_15 THEN                        //Schublade(Presse) Fehler: Alle NOK nester sind belegt
    Warnung_nr:=7;
    NOK_Nester_Voll := TRUE;
    //SPS_ROB_BOOL_4 := TRUE; // Der Roboter kann im NOK-Nester nicht anhalten, da der Benutzer ihn nicht leeren kann
    //SPS_ROB_1_BOOL_45 := TRUE; // Der Roboter kann im NOK-Nester nicht anhalten, da der Benutzer ihn nicht leeren kann
    END_IF
    
     If DI1_16_03 AND gr1_error THEN                        //Greifer 1 Fehler: 
     Warnung_nr:=8;
     END_IF
    
     If DI1_16_07 AND gr2_error THEN                        //Greifer 2 Fehler: 
     Warnung_nr:=9; 
     END_IF
    
    
    Tuer_Status_7 := DI2_16_12; 
    Tuer_Status_9 := DI2_16_13; 
    Tuer_Status_10 := DI2_16_14; 
    
       
    If DI2_16_11 = FALSE AND roboter_an THEN                       //Sicherheitsrelais7
    Tuer_Status_7 := FALSE;                          
    Warnung_nr:=10;
    END_IF
    
    
    If DI2_16_12 = FALSE AND roboter_an THEN                       //Sicherheitsrelais8
    Tuer_Status_8 := FALSE;                          
    Warnung_nr:=11;
     ELSIF
     DI2_16_12 = TRUE AND roboter_an THEN 
     Tuer_Status_8 := TRUE; 
    END_IF
    
    If DI2_16_13 = FALSE AND roboter_an THEN                       //Sicherheitsrelais9
    Tuer_Status_9 := FALSE;                          
    Warnung_nr:=12;
    END_IF
    
    If DI2_16_14 = FALSE AND roboter_an THEN                       //Sicherheitsrelais10
    Tuer_Status_10 := FALSE;                          
    Warnung_nr:=13;
    END_IF
    
    
    
    
    
    
warnung_text_0 :='keine Warnung vorhanden keine Warnung vorhanden keine Warnung vorhanden';

warnung_text_1 :='Die Schublade Nr.1 wird bearbeitet!';
Lösung_text_1 :='Warten Sie, bis Schublade Nr.1 die Verarbeitung beendet hat...';  
 

warnung_text_2 :='Die Schublade Nr.2 wird bearbeitet!'; 
Lösung_text_2 :='Warten Sie, bis Schublade Nr.2 die Verarbeitung beendet hat... '; 
 

warnung_text_3 :='Die Schublade Nr.3 wird bearbeitet!'; 
Lösung_text_3 :='Warten Sie, bis Schublade Nr.3 die Verarbeitung beendet hat... ';

warnung_text_4 :='Die Schublade Nr.4 wird bearbeitet!'; 
Lösung_text_4 :='Warten Sie, bis Schublade Nr.4 die Verarbeitung beendet hat... ';

warnung_text_5 :='Die Schublade Nr.5 wird bearbeitet!'; 
Lösung_text_5 :='Warten Sie, bis Schublade Nr.5 die Verarbeitung beendet hat... ';

warnung_text_6 :='Die Schublade Nr.6 wird bearbeitet!'; 
Lösung_text_6 :='Warten Sie, bis Schublade Nr.6 die Verarbeitung beendet hat... ';

warnung_text_7 :='Die NOK Schublade ist voll!'; 
Lösung_text_7 :='Leeren Sie die Schublade und erneutes abspielen des Programms ';

warnung_text_8 :='Der Naeherungssensor des Greifers 1 hat etwas erkannt!'; 
Lösung_text_8 :='Druecken Sie die reset gr1 Taste ';

warnung_text_9 :='Der Naeherungssensor des Greifers 2 hat etwas erkannt!'; 
Lösung_text_9 :='Druecken Sie die reset gr2 Taste ';

warnung_text_10 :='Tuer Nummer 7 ist nicht geschlossen!'; 
Lösung_text_10 :='Ueberpruefen Sie, ob das Relaislicht gruen leuchtet';

warnung_text_11 :='Tuer Nummer 8 ist nicht geschlossen oder Sie haben die Taste nicht gedrueckt!'; 
Lösung_text_11 :='Ueberpruefen Sie, ob das Relaislicht gruen leuchtet';

warnung_text_12 :='Tuer Nummer 9 ist nicht geschlossen!'; 
Lösung_text_12 :='Ueberpruefen Sie, ob das Relaislicht gruen leuchtet';

warnung_text_13 :='Tuer Nummer 10 ist nicht geschlossen!'; 
Lösung_text_13 :='Ueberpruefen Sie, ob das Relaislicht gruen leuchtet';
 
CASE Warnung_nr OF
    0 : warnung_global_text := warnung_text_0;
        warnung_Lösung_global_text := Lösung_text_0;
    1 : warnung_global_text := warnung_text_1;
        warnung_Lösung_global_text := Lösung_text_1;
    2 : warnung_global_text := warnung_text_2;
        warnung_Lösung_global_text := Lösung_text_2;
    3 : warnung_global_text := warnung_text_3;
        warnung_Lösung_global_text := Lösung_text_3;
    4 : warnung_global_text := warnung_text_4;
        warnung_Lösung_global_text := Lösung_text_4;
    5 : warnung_global_text := warnung_text_5;
        warnung_Lösung_global_text := Lösung_text_5;
    6 : warnung_global_text := warnung_text_6;
        warnung_Lösung_global_text := Lösung_text_6;
    7 : warnung_global_text := warnung_text_7;
        warnung_Lösung_global_text := Lösung_text_7;
    8 : warnung_global_text := warnung_text_8;
        warnung_Lösung_global_text := Lösung_text_8;
    9 : warnung_global_text := warnung_text_9;
        warnung_Lösung_global_text := Lösung_text_9;
    10 : warnung_global_text := warnung_text_10;
        warnung_Lösung_global_text := Lösung_text_10;  
    11 : warnung_global_text := warnung_text_11;
        warnung_Lösung_global_text := Lösung_text_11;    
    12 : warnung_global_text := warnung_text_12;
        warnung_Lösung_global_text := Lösung_text_12;    
    13 : warnung_global_text := warnung_text_13;
        warnung_Lösung_global_text := Lösung_text_13;
        
        
 END_CASE

