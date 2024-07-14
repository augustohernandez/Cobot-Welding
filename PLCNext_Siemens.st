//Takt

//TON2(IN :=  NOT takt,    PT := TIME#100ms, Q => Q_takt1, ET => TIME_takt1);
//TON3(IN := Q_takt1, PT := TIME#100ms, Q => takt, ET => TIME_takt2);
//Neues_programm := FALSE;
takt2_counter := takt2_counter + 1;
IF( takt2_counter >= 10 ) THEN
    takt2_counter := 0;
    takt2 := NOT takt2;
END_IF

//TON7(IN := NOT takt2, PT := TIME#100ms, Q => Q_takt2);
//TON8(IN := Q_takt2, PT := TIME#100ms, Q => takt2);

//Arraybelegung
Array_senden[0]:=Heartbeat_cobot_Byte;      //Int_to_Byte
Heartbeat_cobot:= takt2;
Array_senden[2].%X0:=Cobot_wartet_auf_beladen;
Array_senden[2].%X1:=Cobot_belaed;
Array_senden[2].%X2:=Cobot_fertig_spannen;
Array_senden[2].%X3:=Cobot_aus_bereich;
Array_senden[2].%X4:=Cobot_aus_bereich_ende;
Array_senden[2].%X5:=Cobot_abholen;
Array_senden[2].%X6:=Cobot_fertig_abholen;
Array_senden[2].%X7:=Cobot_teil_ausfahren; 
Array_senden[3].%X0:=Cobot_teil_fertig;

Array_senden[3].%X1:= Emergency_stop; // Normally TRUE
// Große Tür
Safety_Schutztüre_ist_geschlossen := DI1_16_16;
Array_senden[3].%X2:= Safety_Schutztüre_ist_geschlossen; // Normally FALSE (wenn geschlossen TRUE)
Array_senden[3].%X3:= Safety_Gas; // Normally TRUE 
Array_senden[3].%X4:= Neues_programm;

Array_senden[4]:=Warnning_code_Byte;   //Int_to_Byte
Array_senden[6]:=Error_code_Byte;      //Int_to_Byte
Array_senden[8]:=Rezeptur_Nr_Byte;     //Int_to_Byte

TP2(IN := Cobot_wartet_auf_beladen, PT := TIME#1s, Q => Cobot_wartet_auf_beladen);
TP3(IN := Cobot_belaed, PT := TIME#1s, Q => Cobot_belaed);
TP4(IN := Cobot_fertig_spannen, PT := TIME#1s, Q => Cobot_fertig_spannen);
TP5(IN := Cobot_aus_bereich, PT := TIME#1s, Q => Cobot_aus_bereich);
TP6(IN := Cobot_abholen, PT := TIME#1s, Q =>Cobot_abholen);
TP7(IN := Cobot_fertig_abholen, PT := TIME#1s, Q => Cobot_fertig_abholen);
TP8(IN := Cobot_teil_ausfahren, PT := TIME#1s, Q => Cobot_teil_ausfahren);
TP9(IN := Cobot_teil_fertig, PT := TIME#1s, Q => Cobot_teil_fertig);
TP10(IN := Cobot_aus_bereich_ende, PT := TIME#1s, Q => Cobot_aus_bereich_ende);
TP29(IN := Neues_programm, PT := TIME#1s, Q => Neues_programm);
//Warning_Code_Panther := TO_INT(Warning_code_Panther_Byte (* IN *));

Heartbeat_panther_Byte:=Array_lesen[0]; // Byte_to_Int

Auto_mode:=Array_lesen[2].%X0;
Panther_warten_beladen:=Array_lesen[2].%X1;
Dreh_tisch_links_gespannt:=Array_lesen[2].%X2;
Dreh_tisch_rechts_gespannt:=Array_lesen[2].%X3;
Panther_bauteil_fixiert:=Array_lesen[2].%X4;
Panther_ablauf:=Array_lesen[2].%X5;
Ablauf_beendet:=Array_lesen[2].%X6;
Panther_wartet_entladen:=Array_lesen[2].%X7;
Dreh_tisch_links_entspannt:=Array_lesen[3].%X0;
Dreh_tisch_rechts_entspannt:=Array_lesen[3].%X1;
Emergency_stop_1:=Array_lesen[3].%X2;
Schutztüre_ist_geschlossen := Array_lesen[3].%X3;

Warning_code_Panther_Byte:=Array_lesen[4];    //Byte_to_Int

Error_code_Panther_Byte:=Array_lesen[6];   //Byte_to_Int
    

//Der Status der Cobot1(Ur10e/Rob)-Variablen muss dem Panther Cobot1_SPS-Phoenix_SPS-Panther mitgeteilt werden

//Der Status der Panther-Variable Cobot1_SPS-Phoenix_SPS-Panther muss an Cobot1(Ur10e/Rob) kommuniziert werden


//FINITE STATE MACHINE Panther-SPS-Cobot1(ROB)

    

CASE iState OF
    
    0: // State 0 
   
    // Reset COBOT VARIABLES
    
    Cobot_wartet_auf_beladen := FALSE;
    Cobot_belaed := FALSE;
    Cobot_fertig_spannen := FALSE;
    Cobot_aus_bereich := FALSE;
    Cobot_aus_bereich_ende := FALSE;
    Cobot_abholen := FALSE;
    Cobot_fertig_abholen := FALSE;
    Cobot_teil_ausfahren := FALSE; 
    Cobot_teil_fertig := FALSE;
    
    // Reset PANTHER VARIABLE Panther_warten_beladen
    SPS_ROB_BOOL_61 := FALSE;
    
    //Reset VARIABLES Dreh_tisch_links_gespannt/Dreh_tisch_rechts_gespannt
    SPS_ROB_BOOL_62 := FALSE;
    SPS_ROB_BOOL_63 := FALSE;
    
    // Reset VARIABLE Panther_bauteil_fixiert
    SPS_ROB_BOOL_0 := FALSE;
    
     // Reset VARIABLE Panther_ablauf
    SPS_ROB_BOOL_8 := FALSE;
    
    // Reset VARIABLE Ablauf_beendet
    SPS_ROB_BOOL_12 := FALSE;
    
     // Restart Panther_wartet_entladen
    SPS_ROB_BOOL_55 := FALSE;
    
    // Reset Dreh_tisch_links_entspannt/Dreh_tisch_rechts_entspannt
    SPS_ROB_BOOL_56 := FALSE;
    SPS_ROB_BOOL_57 := FALSE;
    
    
    
    
    IF ROB_SPS_BOOL_21 = FALSE OR DI1_16_02 = FALSE  THEN 
        Emergency_stop := FALSE ;
    ELSE 
        Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN 
        SPS_ROB_BOOL_48 := FALSE;
        //IF Not SPS_ROB_BOOL_48 AND Not takt THEN
            //Rote_Ampel := TRUE;
            //Grüne_Ampel := FALSE;
        //END_IF
    ELSE 
        SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE


    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Start_FSM := FALSE; // Switch off Start_FSM command
    ELSIF 
    DI1_16_02 AND Emergency_stop_1 AND Emergency_stop AND Auto_mode THEN
    Start_FSM := TRUE; // If there is NO an error requested then Switch on Start_FSM
    END_IF
    
    IF Start_FSM THEN // If Start_FSM command is active 
        iState := 10; // Transition to State 10
    END_IF
    
    10: // State 10: Panther_warten_beladen: TRUE: Panther ist bereit, das nächste Bauteil zu schweißen
    
     
    
    IF ROB_SPS_BOOL_21 = FALSE OR DI1_16_02 = FALSE  THEN 
        Emergency_stop := FALSE;
    ELSE 
        Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN SPS_ROB_BOOL_48 := FALSE;
    ELSE SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE


    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop OR Not Auto_mode THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Abort := TRUE; // Return to State 0
    iState := 0; // Transition to State 10
    ELSE
    Abort := FALSE; // Go ahead
    END_IF
      
    
    IF Panther_warten_beladen = TRUE AND Not Abort THEN 
        SPS_ROB_BOOL_61 := TRUE;  
        iState := 20; // Transition to State 20
    ELSE 
        SPS_ROB_BOOL_61 := FALSE; 
    
    END_IF 
    
    20: // State 20: Cobot_wartet_auf_beladen: TRUE: der Cobot hat die Schweißteile gegriffen und wartet auf die Beladung des Panthers
    
    // Reset PANTHER VARIABLE Panther_warten_beladen
    //SPS_ROB_BOOL_61 := FALSE;
    
    IF ROB_SPS_BOOL_21 = FALSE  THEN Emergency_stop := FALSE;
    ELSE Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN SPS_ROB_BOOL_48 := FALSE;
    ELSE SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE


    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop OR Not Auto_mode THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Abort := TRUE; // Return to State 0
    iState := 0; // Transition to State 10
    ELSE
    Abort := FALSE; // Go ahead
    END_IF
    
    IF ROB_SPS_BOOL_12 = TRUE AND Not Abort THEN 
        Cobot_wartet_auf_beladen := TRUE;
        iState := 30; // Transition to State 30 
    ELSE 
        Cobot_wartet_auf_beladen := FALSE; 
    END_IF
    
    30: // State 30: Cobot_belaed: TRUE: Cobot bewegt sich zim Panther um die Teile abzugeben
    
    IF ROB_SPS_BOOL_21 = FALSE  THEN Emergency_stop := FALSE;
    ELSE Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN SPS_ROB_BOOL_48 := FALSE;
    ELSE SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE

    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop OR Not Auto_mode THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Abort := TRUE; // Return to State 0
    iState := 0; // Transition to State 10
    ELSE
    Abort := FALSE; // Go ahead
    END_IF
    
    IF ROB_SPS_BOOL_13 = TRUE AND Not Abort THEN 
        Cobot_belaed := TRUE;
        iState := 40; // Transition to State 40 
    ELSE 
        Cobot_belaed := FALSE; 
    END_IF 
    
    40: // State 40: Cobot_fertig_spannen: TRUE: Cobot hat die Spannposition der Teile erreicht
    
    IF ROB_SPS_BOOL_21 = FALSE  THEN Emergency_stop := FALSE;
    ELSE Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN SPS_ROB_BOOL_48 := FALSE;
    ELSE SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE
    
    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop OR Not Auto_mode THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Abort := TRUE; // Return to State 0
    iState := 0; // Transition to State 10
    ELSE
    Abort := FALSE; // Go ahead
    END_IF
    
    IF ROB_SPS_BOOL_14 = TRUE AND Not Abort THEN 
        Cobot_fertig_spannen := TRUE;
        iState := 50; // Transition to State 50 
    ELSE 
        Cobot_fertig_spannen := FALSE; 
    END_IF 
    
    50: // State 50:  Dreh_tisch_links_gespannt/Dreh_tisch_rechts_gespannt: TRUE: linker Drehtisch ist eingefahren und beide Segmente auf der linken   
       // Seite sind gespannt, bei einseitiger Schweißung reicht diese Info/rechter Drehtisch ist eingefahren und beide Segmente auf der rechten Seite sind gespannt

    
    IF ROB_SPS_BOOL_21 = FALSE  THEN Emergency_stop := FALSE;
    ELSE Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN SPS_ROB_BOOL_48 := FALSE;
    ELSE SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE

    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop OR Not Auto_mode THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Abort := TRUE; // Return to State 0
    iState := 0; // Transition to State 10
    ELSE
    Abort := FALSE; // Go ahead
    END_IF
    
    IF Dreh_tisch_links_gespannt = TRUE AND Dreh_tisch_rechts_gespannt = TRUE AND Not Abort AND Beidseitig THEN 
        SPS_ROB_BOOL_62 := TRUE;
        SPS_ROB_BOOL_63 := TRUE;
        iState := 60; // Transition to State 60 
    ELSE 
        SPS_ROB_BOOL_62 := FALSE;
        SPS_ROB_BOOL_63 := FALSE; 
    END_IF 
    
    IF Dreh_tisch_links_gespannt = TRUE AND Dreh_tisch_rechts_gespannt = FALSE AND Not Abort AND Not Beidseitig THEN 
        SPS_ROB_BOOL_62 := TRUE;
        SPS_ROB_BOOL_63 := FALSE;
        iState := 60; // Transition to State 60  
        
      
    END_IF 
    
    60: // State 60: Panther_bauteil_fixiert: TRUE: Cobot kann aus dem Schweißbereich fahren
    
    
    //Reset VARIABLES Dreh_tisch_links_gespannt/Dreh_tisch_rechts_gespannt
    //SPS_ROB_BOOL_62 := FALSE;
    //SPS_ROB_BOOL_63 := FALSE;
        
    IF ROB_SPS_BOOL_21 = FALSE  THEN Emergency_stop := FALSE;
    ELSE Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN SPS_ROB_BOOL_48 := FALSE;
    ELSE SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE

    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop OR Not Auto_mode THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Abort := TRUE; // Return to State 0
    iState := 0; // Transition to State 10
    ELSE
    Abort := FALSE; // Go ahead
    END_IF
    
    IF Panther_bauteil_fixiert = TRUE AND Not Abort THEN 
        SPS_ROB_BOOL_0 := TRUE;
        iState := 70; // Transition to State 70
    ELSE 
        SPS_ROB_BOOL_0 := FALSE; 
    END_IF 
    
    70: // State 70: Cobot_aus_bereich: TRUE: Cobot fährt aus dem Schweißbereich
    
    // Reset VARIABLE Panther_bauteil_fixiert
    //SPS_ROB_BOOL_0 := FALSE;
    
    IF ROB_SPS_BOOL_21 = FALSE  THEN Emergency_stop := FALSE;
    ELSE Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN SPS_ROB_BOOL_48 := FALSE;
    ELSE SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE

    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop OR Not Auto_mode THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Abort := TRUE; // Return to State 0
    iState := 0; // Transition to State 10
    ELSE
    Abort := FALSE; // Go ahead
    END_IF
    
    IF ROB_SPS_BOOL_15 = TRUE AND Not Abort THEN 
        Cobot_aus_bereich := TRUE;
        iState := 80; // Transition to State 80
    ELSE 
        Cobot_aus_bereich := FALSE; 
    END_IF 
   
    
    80: // State 80: Cobot_aus_bereich_ende: TRUE: Cobot hat den Schweißbereich verlassen
    
    IF ROB_SPS_BOOL_21 = FALSE  THEN Emergency_stop := FALSE;
    ELSE Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN SPS_ROB_BOOL_48 := FALSE;
    ELSE SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE

    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop OR Not Auto_mode THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Abort := TRUE; // Return to State 0
    iState := 0; // Transition to State 10
    ELSE
    Abort := FALSE; // Go ahead
    END_IF
    
    IF ROB_SPS_BOOL_16 = TRUE AND Not Abort THEN 
        Cobot_aus_bereich_ende := TRUE;
        iState := 90; // Transition to State 90
    ELSE 
        Cobot_aus_bereich_ende := FALSE; 
    END_IF 
 
    
    90: // State 90: Panther_ablauf: TRUE: Am Panther läuft der Schweßprozess
    
    IF ROB_SPS_BOOL_21 = FALSE  THEN Emergency_stop := FALSE;
    ELSE Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN SPS_ROB_BOOL_48 := FALSE;
    ELSE SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE

    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop OR Not Auto_mode THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Abort := TRUE; // Return to State 0
    iState := 0; // Transition to State 10
    ELSE
    Abort := FALSE; // Go ahead
    END_IF
    
    IF Panther_ablauf = TRUE AND Not Abort THEN 
        SPS_ROB_BOOL_8 := TRUE;
        iState := 100; // Transition to State 100
    ELSE 
        SPS_ROB_BOOL_8 := FALSE; 
    END_IF

    100: // State 100:  Ablauf_beendet: TRUE: nur Wahr, wenn das Programm komplett ohne Störung abgelaufen
    
    
    // Reset VARIABLE Panther_ablauf
    //SPS_ROB_BOOL_8 := FALSE;
    
   
    IF ROB_SPS_BOOL_21 = FALSE  THEN Emergency_stop := FALSE;
    ELSE Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN SPS_ROB_BOOL_48 := FALSE;
    ELSE SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE

    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop OR Not Auto_mode THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Abort := TRUE; // Return to State 0
    iState := 0; // Transition to State 10
    ELSE
    Abort := FALSE; // Go ahead
    END_IF
    
    IF Ablauf_beendet = TRUE  AND Not Abort THEN 
        SPS_ROB_BOOL_12 := TRUE;
        iState := 110; // Transition to State 110
    ELSE 
        SPS_ROB_BOOL_12 := FALSE; 
    END_IF 
    
    110: // State 110: Panther_wartet_entladen: TRUE: Cobot kann das fertige Teil abholen
    
    // Reset VARIABLE Ablauf_beendet
    //SPS_ROB_BOOL_12 := FALSE;
    
    IF ROB_SPS_BOOL_21 = FALSE  THEN Emergency_stop := FALSE;
    ELSE Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN SPS_ROB_BOOL_48 := FALSE;
    ELSE SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE

    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop OR Not Auto_mode THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Abort := TRUE; // Return to State 0
    iState := 0; // Transition to State 10
    ELSE
    Abort := FALSE; // Go ahead
    END_IF
    
    IF Panther_wartet_entladen = TRUE AND Not Abort THEN 
        SPS_ROB_BOOL_55 := TRUE;
        iState := 120; // Transition to State 120
    ELSE  
        SPS_ROB_BOOL_55 := FALSE; 
    END_IF 
    
    120: // State 120: Cobot_abholen: TRUE: Cobot bewegt sich zum Panther um die Teile abzuholen
    
    // Restart Panther_wartet_entladen
    //SPS_ROB_BOOL_55 := FALSE; 
    
    IF ROB_SPS_BOOL_21 = FALSE  THEN Emergency_stop := FALSE;
    ELSE Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN SPS_ROB_BOOL_48 := FALSE;
    ELSE SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE

    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop OR Not Auto_mode THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Abort := TRUE; // Return to State 0
    iState := 0; // Transition to State 10
    ELSE
    Abort := FALSE; // Go ahead
    END_IF
    
    IF ROB_SPS_BOOL_17 = TRUE AND Not Abort THEN 
        Cobot_abholen := TRUE;
        iState := 130; // Transition to State 130
    ELSE 
        Cobot_abholen := FALSE; 
    END_IF 
    
    130: // State 130: Cobot_fertig_abholen: TRUE: Cobot hat die Teile nach dem Schweißen gegriffen und Spanndorne lösen und fahren zurück
    
    IF ROB_SPS_BOOL_21 = FALSE  THEN Emergency_stop := FALSE;
    ELSE Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN SPS_ROB_BOOL_48 := FALSE;
    ELSE SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE
    
    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop OR Not Auto_mode THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Abort := TRUE; // Return to State 0
    iState := 0; // Transition to State 10
    ELSE
    Abort := FALSE; // Go ahead
    END_IF
    
    IF ROB_SPS_BOOL_18 = TRUE AND Not Abort THEN 
        Cobot_fertig_abholen := TRUE;
        iState := 140; // Transition to State 140
    ELSE 
        Cobot_fertig_abholen := FALSE; 
    END_IF 

    140: // State 140: Dreh_tisch_links_entspannt/Dreh_tisch_rechts_entspannt: TRUE: beide Segmente sind entspannt und linke Drehtisch ist ausgefahren, 
        // bei einseitiger Schweißung reicht diese Info/beide Segmente sind entspannt und recht Drehtisch ist ausgefahren
    
    IF ROB_SPS_BOOL_21 = FALSE  THEN Emergency_stop := FALSE;
    ELSE Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN SPS_ROB_BOOL_48 := FALSE;
    ELSE SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE

    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop OR Not Auto_mode THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Abort := TRUE; // Return to State 0
    iState := 0; // Transition to State 10
    ELSE
    Abort := FALSE; // Go ahead
    END_IF
    
    IF  Dreh_tisch_links_entspannt = TRUE AND Dreh_tisch_rechts_entspannt = TRUE AND Not Abort AND Beidseitig THEN 
        SPS_ROB_BOOL_56 := TRUE;
        SPS_ROB_BOOL_57 := TRUE;
        iState := 150; // Transition to State 150 
    ELSE 
        SPS_ROB_BOOL_56 := FALSE;
        SPS_ROB_BOOL_57 := FALSE;
         
    END_IF 

    IF Dreh_tisch_links_entspannt = TRUE AND Not Abort AND Not Beidseitig THEN 
        SPS_ROB_BOOL_56 := TRUE;
        SPS_ROB_BOOL_57 := FALSE;
        iState := 150; // Transition to State 150 
    END_IF 
    
    150: // State 150: Cobot_teil_ausfahren: TRUE: Cobot holt das fertige Schweißteil aus der Anlage und bewegt sich zur Endsposition 
    
    // Reset Dreh_tisch_links_entspannt/Dreh_tisch_rechts_entspannt
    //SPS_ROB_BOOL_56 := FALSE;
    //SPS_ROB_BOOL_57 := FALSE;
    
    
    IF ROB_SPS_BOOL_21 = FALSE  THEN Emergency_stop := FALSE;
    ELSE Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN SPS_ROB_BOOL_48 := FALSE;
    ELSE SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE

    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop OR Not Auto_mode THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Abort := TRUE; // Return to State 0
    iState := 0; // Transition to State 10
    ELSE
    Abort := FALSE; // Go ahead
    END_IF
    
    IF ROB_SPS_BOOL_19 = TRUE AND Not Abort THEN 
        Cobot_teil_ausfahren := TRUE;
        iState := 160; // Transition to State 160
    ELSE 
        Cobot_teil_ausfahren := FALSE; 
    END_IF 
    
    160: // State 160: Cobot_teil_fertig: TRUE: Cobot hat das fertige Teil abgeliefert, Endposition erreicht
    
    IF ROB_SPS_BOOL_21 = FALSE  THEN Emergency_stop := FALSE;
    ELSE Emergency_stop := TRUE; 
    END_IF //FALSE: Not-Halt bei Cobot1 (Kollision):Normally TRUE

    IF Emergency_stop_1 = FALSE THEN SPS_ROB_BOOL_48 := FALSE;
    ELSE SPS_ROB_BOOL_48 := TRUE; 
    END_IF //FALSE: Not-Halt bei Schweißmaschine: Normally TRUE

    IF Not DI1_16_02 OR Not Emergency_stop_1 OR Not Emergency_stop OR Not Auto_mode THEN  // If there is an error requested (DI1_16_02 = NOT HALT: Normally True)
    Abort := TRUE; // Return to State 0
    iState := 0; // Transition to State 10
    ELSE
    Abort := FALSE; // Go ahead
    END_IF
    
    IF ROB_SPS_BOOL_20 = TRUE AND Not Abort THEN
        
        Cobot_teil_fertig := TRUE;   
        
         // Reset PANTHER VARIABLE Panther_warten_beladen
        SPS_ROB_BOOL_61 := FALSE;
    
       //Reset VARIABLES Dreh_tisch_links_gespannt/Dreh_tisch_rechts_gespannt
       SPS_ROB_BOOL_62 := FALSE;
       SPS_ROB_BOOL_63 := FALSE;
    
       // Reset VARIABLE Panther_bauteil_fixiert
       SPS_ROB_BOOL_0 := FALSE;
    
       // Reset VARIABLE Panther_ablauf
       SPS_ROB_BOOL_8 := FALSE;
    
       // Reset VARIABLE Ablauf_beendet
       SPS_ROB_BOOL_12 := FALSE;
    
       // Restart Panther_wartet_entladen
       SPS_ROB_BOOL_55 := FALSE;
    
       // Reset Dreh_tisch_links_entspannt/Dreh_tisch_rechts_entspannt
       SPS_ROB_BOOL_56 := FALSE;
       SPS_ROB_BOOL_57 := FALSE;
       
        iState := 0; // Return to State 0 for the 1/2 Greifer LOOP
    ELSE 
        Cobot_teil_fertig := FALSE; 
    END_IF 
    
END_CASE





