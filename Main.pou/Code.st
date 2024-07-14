                            ////////////////////////////////////////////////////////////////
// Zuweisungen              ////////////////////////////////////////////////////////////////

ab_test_0 := ab_test_IN0;
//ab_test_bool := SPS_ROB_1_BOOL_54;

Status_PN_teilnehmer        := PNIO_SYSTEM_BF      ;

rob_int_in_reg_18           := Messwert_PEAK       ;

DO2_16_01 := true; //Relais 28 Klemme A1    
//HMI WebPanel

//test



//Passwort schutz Rezepte
code            := '1234'   ;                                                                                       // code zum entsperren
sperr_code      := '0000'   ;                                                                                       // standard eintrag im Textfeld
freigabe_zeit   := time#120m;
code_eingabe    := EQ(code_text , code );                                                                           // code(string) = ist der erwartete code. zb 1234
TON1(IN         := timer_code_start, PT         := time#120m, Q  => ruecksetz_code, ET => rest_zeit_code);
if code_eingabe  = TRUE then timer_code_start   :=true;   else timer_code_start :=false;  END_IF
if reset_pulse   = true then code_text          := sperr_code;  END_IF                                              // sperr_code(string) ist der code, der nach der zeit(timer_code_start) eingefügt wird
TP1(IN          := ruecksetz_code, PT           := TIME#2s, Q => reset_pulse, ET => rest_zeit_pulse);
rest_zeit_code_hmi := SUB(rest_zeit_code  , freigabe_zeit   );

//Beleuchtung


//if lampe_1_2_hmi = true  then DO1_16_15 := true ;else DO1_16_15 := FALSE ; END_IF // lampen 1 und 2
    
//if lampe_3_4_hmi = true  then DO1_16_16 := true ;else DO1_16_16 := FALSE ; END_IF // Lampen 3 und 4
    
 // NOT HALT emergency // lampen 1 und 2 Roboter1, Roboter2 und Panther STOP
 
  //DI3_16_01 := Test1;
 
 //if DI3_16_01 = TRUE then DO1_16_15 := TRUE ;
     
     //ELSE DO1_16_15 := FALSE ; 
     
 //END_IF 

// TAKT
// variante 1
//TON2(IN :=  NOT takt,    PT := TIME#50ms, Q => Q_takt1, ET => TIME_takt1);
//TON3(IN := Q_takt1, PT := TIME#50ms, Q => takt,    ET => TIME_takt2);

takt_counter := takt_counter + 1;
IF( takt_counter > 3 ) THEN
    takt_counter := 0;
    takt := NOT takt;
    Q_takt1 := NOT takt;
       
END_IF

//takt := NOT( takt );
//Q_takt1 := NOT( takt );


//TON2(IN :=  NOT takt,    PT := TIME#100ms, Q => Q_takt1, ET => TIME_takt1);
//TON3(IN := Q_takt1, PT := TIME#100ms, Q => takt, ET => TIME_takt2);
//TON5(IN := NOT takt3, PT := TIME#1s, Q => Q_takt2 );
//TON6(IN := Q_takt2, PT := TIME#1s, Q => takt3);

// TAKT Variante 2   geht nicht 
//PULSE_GEN1(IN := TRUE, PTH := TIME#100ms, PTL := TIME#100ms, Q => takt, ETH => ETHigh, ETL => ETLow);




// Lüfter
GE_wert_AN      := GE(DEVICE_STATE.BOARD_TEMPERATURE, luefter_start);               // Lüfter START

LT_wert_low     := LT(DEVICE_STATE.BOARD_TEMPERATURE,53 );                         // high bei temp unter 50°C

RS4     (SET    := GE_wert_AN, RESET1 := LT_wert_LOW_flanke, Q1 => DIO1_8_OUT_03);

 
R_TRIG2 (CLK    := LT_wert_low, Q => LT_wert_LOW_flanke);



                            ////////////////////////////////////////////////////////////////
// Messung                  ////////////////////////////////////////////////////////////////


//NOK/OK/NA
  
  // if Differenz_zum_sollwert > toleranz_rund then OK    := false    ; else OK  := true ;    end_if
       
  
   if gr5_ist_zu_ohne_griff = true then NA              := true     ;                       end_if
 

nok                 := NOT(ok)  ;
SPS_ROB_1_BOOL_40   := ok       ;
SPS_ROB_1_BOOL_41   := nok      ;



freigabe_PEAK_wert      := GT(messwert , Messwert_PEAK);  // sollte der MESSWERT größer sein als der PEAK wird gespeichert

IF( start_peak ) THEN
    Messwert_PEAK := Messwert_SOLL;
END_IF

IF( messwert > Messwert_PEAK ) THEN
    Messwert_PEAK := messwert;
END_IF

messwert_LREAL          := TO_LREAL(messwert );

Keyence_real_messwert   := DIV(messwert_LREAL , 100 );

Keyence_leer            := EQ(messwert , 22020096 );

reset_buf               := ROB_1_SPS_BOOL_01 or reset_buf_hmi ;

start_peak              := ROB_1_SPS_BOOL_07;


//Stopp_drehung := EQ(messwert, Messwert_PEAK);
//Stopp_drehung1 := EQ(messwert+1, Messwert_PEAK) OR EQ( messwert+2, Messwert_PEAK);
//Stopp_drehung2 := EQ(messwert+3, Messwert_PEAK) OR EQ( messwert+4, Messwert_PEAK);
//Stopp_drehung3 := EQ(messwert+5, Messwert_PEAK) OR EQ( messwert+6, Messwert_PEAK);
//Stopp_drehung4 := EQ(messwert+7, Messwert_PEAK) OR EQ( messwert+8, Messwert_PEAK);
//Stopp_drehung5 := EQ(messwert-1, Messwert_PEAK) OR EQ( messwert-2, Messwert_PEAK);
//Stopp_drehung6 := EQ(messwert-3, Messwert_PEAK) OR EQ( messwert-4, Messwert_PEAK);
//Stopp_drehung7 := EQ(messwert-5, Messwert_PEAK) OR EQ( messwert-6, Messwert_PEAK);
//Stopp_drehung8 := EQ(messwert-7, Messwert_PEAK) OR EQ( messwert-8, Messwert_PEAK);


// Finde PEAK, wenn der Messwert maximal um 0.04 mm abweicht.
ab_test_0 := Messwert_PEAK - messwert;
IF( LT( Messwert_PEAK - messwert, 4 ) ) THEN
    ab_test_bool := TRUE;
    SPS_ROB_1_BOOL_00 := TRUE;
ELSE
    ab_test_bool := FALSE;
    SPS_ROB_1_BOOL_00 := FALSE;
END_IF

// Fruehe Abbruchbedingung beim Messvorgang
IF( rezept_nr = 4 OR rezept_nr = 8 OR rezept_nr = 9 ) THEN
    IF( GT( messwert, Messwert_SOLL + toleranz_rund + 10 ) ) THEN
        SPS_ROB_1_BOOL_54 := TRUE;
    ELSE
        SPS_ROB_1_BOOL_54 := FALSE;
    END_IF
ELSE
    SPS_ROB_1_BOOL_54 := FALSE;
END_IF

max_wert                := MAX(messwert , Messwert_SOLL );

Freigabe_messung_keyence:= OR(Freigabe_messung_keyence_HMI , ROB_1_SPS_BOOL_00 );
//Beidseitiges Werkstück
If Beidseitig = TRUE THEN
    SPS_ROB_BOOL_47 := True;
    SPS_ROB_1_BOOL_26 := True;
    ELSE
    SPS_ROB_BOOL_47 := FALSE;
    SPS_ROB_1_BOOL_26 := FALSE;
    END_IF

Differenz_zum_sollwert  := SUB(Messwert_PEAK , Messwert_SOLL );
Fahrweg_Presse          := ADD(Differenz_zum_sollwert , Presse_sollwert_fahrt );


//Programm zum MAX Pegel speichern befindet sich im KOP reiter "Mess_Buegel"


                            ////////////////////////////////////////////////////////////////
// Greifer Steuerung        ////////////////////////////////////////////////////////////////




gr1_ist_zu_ohne_griff   := AND(DI1_16_01 , DI1_16_08 )  ;           // Greifer 1  
SPS_ROB_BOOL_7          := gr1_ist_zu_ohne_griff        ;

gr2_ist_zu_ohne_griff   := AND(DI1_16_05 , DI1_16_06 )  ;           // Greifer 2  
SPS_ROB_BOOL_11         := gr2_ist_zu_ohne_griff        ;

gr3_ist_zu_ohne_griff   := AND(DI1_16_09 , DI1_16_10 )  ;           // Greifer 3  
SPS_ROB_BOOL_16         := gr3_ist_zu_ohne_griff        ;

gr4_ist_zu_ohne_griff   := AND(DI1_16_13 , DI1_16_14 )  ;           // Greifer 4  
SPS_ROB_BOOL_21         := gr4_ist_zu_ohne_griff        ;

gr5_ist_zu_ohne_griff   := AND(DI2_16_04 , DI2_16_03 )  ;           // Greifer 5  
SPS_ROB_1_BOOL_42       := gr5_ist_zu_ohne_griff        ;



// Greifer schreiben

    
if	ROB_SPS_BOOL_00	or	gr1_auf_fahren_hmi	then	DO1_16_01	:= 	true	;else 	DO1_16_01	:=	false	;	end_if	   //gr1 auf fahren
    	
if	ROB_SPS_BOOL_01	or	gr1_zu_fahren_hmi	then	DO1_16_02	:= 	true	;else 	DO1_16_02	:=	false	;	end_if	   //gr1 zu fahren


    	
if	ROB_SPS_BOOL_02	or	gr2_auf_fahren_hmi	then	DO1_16_03	:= 	true	;else 	DO1_16_03	:=	false	;	end_if	   //gr2 auf fahren
    	
if	ROB_SPS_BOOL_03	or	gr2_zu_fahren_hmi	then	DO1_16_04	:= 	true	;else 	DO1_16_04	:=	false	;	end_if	   //gr2 zu fahren

   	
    	
if	ROB_SPS_BOOL_04	or	gr3_auf_fahren_hmi	then	DO1_16_05	:= 	true	;else 	DO1_16_05	:=	false	;   end_if	   //gr3 auf fahren
    	
if	ROB_SPS_BOOL_05	or	gr3_zu_fahren_hmi	then	DO1_16_06	:= 	true	;else 	DO1_16_06	:=	false	;	end_if	   //gr3 zu fahren

    	
    	
if	ROB_SPS_BOOL_06	or	gr4_auf_fahren_hmi	then	DO1_16_07	:= 	true	;else 	DO1_16_07	:=	false	;   end_if	   //gr4 auf fahren
    	
if	ROB_SPS_BOOL_07	or	gr4_zu_fahren_hmi	then	DO1_16_08	:= 	true	;else 	DO1_16_08	:=	false	;	end_if	   //gr4 zu fahren

 	    	
    	
if	ROB_1_SPS_BOOL_08	or	gr5_auf_fahren_hmi	then	DO1_16_13	:= 	true	;else 	DO1_16_13	:=	false	;	end_if	   //gr5 auf fahren

if	ROB_1_SPS_BOOL_09	or	gr5_zu_fahren_hmi	then	DO1_16_14	:= 	true	;else 	DO1_16_14	:=	false	;	end_if	   //gr5 zu fahren


   
                        

// Greifer lesen
 
if  AND	(DI1_16_01,	NOT DI1_16_08)		then	gr1_ist_auf	      :=	True	;	else	gr1_ist_auf	     :=	false	;	end_if		//gr1 ist auf	
if 	AND	(DI1_16_01,	NOT DI1_16_08)  	then	SPS_ROB_BOOL_5	  := 	true	;	else	SPS_ROB_BOOL_5	 :=	false	;	end_if			
																	
if 	DI1_16_08	=	True	then	gr1_ist_zu	      :=	True	;	else	gr1_ist_zu	     :=	false	;	end_if		//gr1 ist zu	
if 	DI1_16_08	=	True	then	SPS_ROB_BOOL_6	  := 	true	;	else	SPS_ROB_BOOL_6	 :=	false	;	end_if			
																																	
if  AND	(DI1_16_05,	NOT DI1_16_06)	then	gr2_ist_auf	      :=	True	;	else	gr2_ist_auf	     :=	false	;	end_if		//gr2 ist auf	
if  AND	(DI1_16_05,	NOT DI1_16_06)	then	SPS_ROB_BOOL_9	  := 	true	;	else	SPS_ROB_BOOL_9	 :=	false	;	end_if			
																	
if 	DI1_16_06	=	True	then	gr2_ist_zu	      :=	True	;	else	gr2_ist_zu	     :=	false	;	end_if		//gr2 ist zu	
if 	DI1_16_06	=	True	then	SPS_ROB_BOOL_10	  := 	true	;	else	SPS_ROB_BOOL_10	 :=	false	;	end_if			
																	
if  AND	(DI1_16_09, NOT DI1_16_10)	then	gr3_ist_auf	      :=	True	;	else	gr3_ist_auf	     :=	false	;	end_if		//gr3 ist auf	
if  AND	(DI1_16_09,	NOT DI1_16_10)	then    SPS_ROB_BOOL_14	  := 	true	;	else	SPS_ROB_BOOL_14	 :=	false	;	end_if			
																	
if 	DI1_16_10	=	True	then	gr3_ist_zu	      :=	True	;	else	gr3_ist_zu	     :=	false	;	end_if		//gr3 ist zu	
if 	DI1_16_10	=	True	then	SPS_ROB_BOOL_15	  := 	true	;	else	SPS_ROB_BOOL_15	 :=	false	;	end_if			
																	
if  AND	(DI1_16_13,	NOT DI1_16_14)	then	gr4_ist_auf	      :=	True	;	else	gr4_ist_auf	     :=	false	;	end_if		//gr4 ist auf	
if  AND	(DI1_16_13,	NOT DI1_16_14)	then    SPS_ROB_BOOL_19	  := 	true	;	else	SPS_ROB_BOOL_19	 :=	false	;	end_if			
																	
if 	DI1_16_14	=	True	then	gr4_ist_zu	      :=	True	;	else	gr4_ist_zu	     :=	false	;	end_if		//gr4 ist zu	
if 	DI1_16_14	=	True	then	SPS_ROB_BOOL_20	  := 	true	;	else	SPS_ROB_BOOL_20	 :=	false	;	end_if			
																	
if  AND	(DI2_16_04,	NOT DI2_16_03)	then	gr5_ist_auf	      :=	True	;	else	gr5_ist_auf	     :=	false	;	end_if		//gr5 ist auf	
if  AND	(DI2_16_04,	NOT DI2_16_03)  THEN	SPS_ROB_1_BOOL_38 := 	true	;	else	SPS_ROB_1_BOOL_38:=	false	;	end_if			
																	
if 	DI2_16_03	=	True	then	gr5_ist_zu	      :=	True	;	else	gr5_ist_zu	     :=	false	;	end_if		//gr5 ist zu	
if 	DI2_16_03	=	True	then	SPS_ROB_1_BOOL_39 := 	true	;	else	SPS_ROB_1_BOOL_39:=	false	;	end_if			
                  


                            ////////////////////////////////////////////////////////////////
// Roboter Status           ////////////////////////////////////////////////////////////////


//Beide Roboter init

if Roboter_init THEN
    SPS_ROB_BOOL_1 := True; //Roboter init
    SPS_ROB_1_BOOL_36 := True; //????
       
    
    DO1_16_06 := True; //gr3 zu fahren
    DO1_16_08 := True; //gr4 zu fahren
    DO1_16_14 := True; //gr5 zu fahren
    
    
   

   
    IF gr3_ist_zu THEN
           DO1_16_05 := True; //gr3 auf fahren
    END_IF
    
    IF gr4_ist_zu THEN
          DO1_16_07 := True; //gr4 auf fahren
    END_IF
    
    IF gr5_ist_zu THEN
          DO1_16_13 := True; //gr5 auf fahren
    END_IF
    
    
    
    
   END_IF  
 
  //Roboter1_starten
  
  if Roboter1_starten_hmi THEN
    SPS_ROB_BOOL_3 := TRUE;
    SPS_ROB_BOOL_53 := TRUE;   
    END_IF
 
  //Roboter2_starten
  
  if Roboter2_starten THEN
    SPS_ROB_1_BOOL_43 := TRUE;
    SPS_ROB_1_BOOL_46 := TRUE;  
    END_IF
    
  //Roboter1_pausieren
  
  if Roboter1_pausieren THEN
    SPS_ROB_BOOL_4 := TRUE;  
    END_IF
 
  //Roboter2_pausieren
  
  if Roboter2_pausieren THEN
    SPS_ROB_1_BOOL_45 := TRUE; 
    END_IF
    
    
    
 // Puls zum zurücksetzen des Roboter_init Button 
    TP11(IN := Roboter_init, PT := TIME#5s , Q => Roboter_init) ; 
    TP12(IN := SPS_ROB_BOOL_1, PT := TIME#5s, Q => SPS_ROB_BOOL_1);
    TP13(IN := SPS_ROB_1_BOOL_36, PT := TIME#5s, Q => SPS_ROB_1_BOOL_36);
    
 
 
 // Puls zum zurücksetzen des Roboter_starten SPS_ROB variables   
 
    TP31(IN := SPS_ROB_BOOL_3, PT := TIME#1s, Q => SPS_ROB_BOOL_3);
    TP18(IN := SPS_ROB_1_BOOL_43, PT := TIME#1s, Q => SPS_ROB_1_BOOL_43);
    TP25(IN := SPS_ROB_BOOL_53, PT := TIME#1s, Q => SPS_ROB_BOOL_53);
    TP26(IN := SPS_ROB_1_BOOL_46, PT := TIME#1s, Q => SPS_ROB_1_BOOL_46);
    
 // Puls zum zurücksetzen des Roboter1_starten Button    
    TP27(IN := Roboter1_starten_hmi, PT := TIME#1s, Q => Roboter1_starten_hmi);
    
 // Puls zum zurücksetzen des Roboter2_starten Button  
    TP28(IN := Roboter2_starten, PT := TIME#1s, Q => Roboter2_starten);

    
 // Puls zum zurücksetzen des Roboter_pausieren SPS_ROB variables     
  
    TP20(IN := SPS_ROB_BOOL_4, PT := TIME#1s, Q =>  SPS_ROB_BOOL_4);
    TP21(IN := SPS_ROB_1_BOOL_45, PT := TIME#1s, Q => SPS_ROB_1_BOOL_45);
   
 // Puls zum zurücksetzen des Roboter1_pausieren Button    
 
    TP32(IN := Roboter1_pausieren, PT := TIME#1s, Q => Roboter1_pausieren);
 
 
 // Puls zum zurücksetzen des Roboter2_pausiren Button    
 
    TP33(IN := Roboter2_pausieren, PT := TIME#1s, Q => Roboter2_pausieren);
 

    
// Reset Variables

    //DO1_16_02 := False; //gr1 zu fahren    
    //DO1_16_04 := False; //gr2 zu fahren
    //DO1_16_06 := False; //gr3 zu fahren
    //DO1_16_08 := False; //gr4 zu fahren
    //DO1_16_14 := False; //gr5 zu fahren
    //DO1_16_01 := False; //gr1 auf fahren
    //DO1_16_03 := False; //gr2 auf fahren
    //DO1_16_05 := False; //gr3 auf fahren
    //DO1_16_07 := False; //gr4 auf fahren
    //DO1_16_13 := False; //gr5 auf fahren
    
    
// Roboter IP 200

udtRob.State.Mode := TO_UINT(PdInState[4]);
udtRob.State.PW   := PdInState[16].X0;                  //Power On
udtRob.State.PR   := PdInState[16].X1;                  //Programm running  
udtRob.State.TB   := PdInState[16].X2;                  //Teachbutton pressed
udtRob.State.PB   := PdInState[16].X3;                  //Power button pressed
udtRob.State.SES  := PdInState[28].X5;
udtRob.State.RES  := PdInState[28].X6;

// Roboter IP 201

udtRob1.State.PW   := status_rob_201[16].X0;            //Power On
udtRob1.State.PR   := status_rob_201[16].X1;            //Programm running  
udtRob1.State.TB   := status_rob_201[16].X2;            //Teachbutton pressed
udtRob1.State.PB   := status_rob_201[16].X3;            //Power button pressed
udtRob1.State.SES  := status_rob_201[28].X5;
udtRob1.State.RES  := status_rob_201[28].X6;



                            ////////////////////////////////////////////////////////////////
                            ////////////////////////////////////////////////////////////////
// Sonstiges

   // HMI
   

   if gr1_ist_zu_ohne_griff = true then gr1_ist_zu := false; end_if
   
   if gr1_ist_zu_ohne_griff = true then gr1_ist_auf := false; end_if
   
   
   if gr2_ist_zu_ohne_griff = true then gr2_ist_zu := false; end_if
   
   if gr2_ist_zu_ohne_griff = true then gr2_ist_auf := false; end_if
   
   
   if gr3_ist_zu_ohne_griff = true then gr3_ist_zu := false; end_if
   
   if gr3_ist_zu_ohne_griff = true then gr3_ist_auf := false; end_if
  
   
   if gr4_ist_zu_ohne_griff = true then gr4_ist_zu := false; end_if
   
   if gr4_ist_zu_ohne_griff = true then gr4_ist_auf := false; end_if
 
   
   if gr5_ist_zu_ohne_griff = true then gr5_ist_zu := false; end_if
   
   if gr5_ist_zu_ohne_griff = true then gr5_ist_auf := false; end_if
   
   
                            ////////////////////////////////////////////////////////////////
// Ablauf                   ////////////////////////////////////////////////////////////////

//AUTO_MODE
//COBOT_WARTET_AUF_BELADEN
//PANTHER_WARTET_BELADEN
//COBOT_BELAED
//COBOT_FERTIG_SPANNEN
//DREHTISCH_LINKS_GESPANNT
//DREHTISCH_RECHTS_GESPANNT
//PANTHER_BAUTEIL_FIXIERT
//PANTHER_WARTET_BELADEN
//COBOT_AUS_BEREICH
//COBOT_AUS_BEREICH_ENDE
//PANTHER_ABLAUF
//COBOT_WARTET_AUF_BELADEN
//COBOT_BELAED
//COBOT_FERTIG_SPANNEN
//ABLAUF_BEENDET
//PANTHER_WARTET_ENTLADEN
//PANTHER_ABLAUF
//ABLAUF_BEENDET
//COBOT_ABHOLEN
//COBOT_FERTIG_ABHOLEN
//PANTHER_WARTET_ENTLADEN
//DREHTISCH_RECHTS_ENTSPANNT
//DREHTISCH_LINKS_ENTSPANNT
//COBOT_TEIL_AUSFAHREN
//COBOT_TEIL_FERTIG
//DREHTISCH_LINKS_GESPANNT
//DREHTISCH_RECHTS_GESPANNT
//COBOT_ABHOLEN
//COBOT_FERTIG_ABHOLEN
//COBOT_TEIL_AUSFAHREN
//COBOT_TEIL_FERTIG
//DREHTISCH_RECHTS_ENTSPANNT
//DREHTISCH_LINKS_ENTSPANNT




                            ////////////////////////////////////////////////////////////////
 // Störungen               ////////////////////////////////////////////////////////////////
 
 if gr1_error = TRUE or gr2_error = TRUE or  NOK_Nester_Voll = true or Tuer_Status_1 = true or Tuer_Status_2 = true or Tuer_Status_3 = true or Tuer_Status_4 = true or Tuer_Status_5 = true or Tuer_Status_6 = true or Tuer_Status_7 or Tuer_Status_8 or Tuer_Status_9 or Tuer_Status_10 THEN
     Fehler_modus := TRUE;
     ELSE
     Fehler_modus := FALSE;
     END_IF
 SPS_ROB_BOOL_2 := AND (takt,udtRob.State.PR,gr1_error or gr2_error);
 SPS_ROB_1_BOOL_44 := AND (takt,udtRob1.State.PR,gr1_error or gr2_error);
  

 // Temperatur
Temp_warnung_PLC_HMI        := GE(DEVICE_STATE.BOARD_TEMPERATURE (* IN1 *), 60 (* IN2 *)); // Warnung HIGH TEMPERTURE SPS CPU
 
 
 // Fehler Greifer
gr1_error	:=	DI1_16_03	;	// gr1 fehler
gr2_error	:=	DI1_16_07	;	// gr2 fehler
DO1_16_09	:=	gr1_reset	;	// gr1 neustart
DO1_16_10	:=	gr2_reset	;	// gr2 neustart
RS2(SET := DI1_16_03, RESET1 := DO1_16_09, Q1 => gr1_error);
RS3(SET := DI1_16_07, RESET1 := DO1_16_10, Q1 => gr2_error);
 // Presse
 
 
 // gemeinsame Nester befahren
 
 IF ROB_SPS_BOOL_08  =  TRUE  THEN   //or  ROB_SPS_BOOL_09  =  True  or  ROB_SPS_BOOL_10  =  TRUE  or  ROB_SPS_BOOL_11  =  TRUE THEN           //UR10e belegt die gemeinsamen Nester und UR10e1 muss warten
     SPS_ROB_1_BOOL_37  :=  TRUE;
     ELSE
     SPS_ROB_1_BOOL_37  :=  FALSE;
     END_IF

 IF ROB_1_SPS_BOOL_02  =  True THEN //or  ROB_1_SPS_BOOL_03  =  TRUE  or  ROB_1_SPS_BOOL_04  =  TRUE  or  ROB_1_SPS_BOOL_05  =  TRUE Then   //UR10e1 belegt die gemeinsamen Nester und UR10e muss warten
     SPS_ROB_BOOL_58  :=  TRUE;
     ELSE
     SPS_ROB_BOOL_58  :=  FALSE;
     END_IF
     
Gleichzeitig_belegt := AND(SPS_ROB_1_BOOL_37, SPS_ROB_BOOL_58);

IF(Gleichzeitig_belegt  =  TRUE)  THEN 
     SPS_ROB_BOOL_59 := TRUE; //UR10e belegt die gemeinsamen Nester und UR10e1 muss warten
     ELSE
     SPS_ROB_BOOL_59 := FALSE; //UR10e belegt die gemeinsamen Nester und UR10e1 muss NICHT warten
     END_IF
     


         
//Stückzähler


     
//TP_LTIME1(IN := Reset_Counter01_HMI, PT := TIME#100ms , Q => Reset_Counter01_HMI); //Puls zum zurücksetzen des Reset Buttons  
  


// Reset Counter VARIABLES
SPS_ROB_1_BOOL_32 := FALSE;
SPS_ROB_BOOL_52 := FALSE;

//Reset_Counter := FALSE;       

TP_LTIME12(IN := Reset_Counter, PT := T#100ms, Q => Reset_Counter);

CTU2(CU := ROB1_SPS_BOOL_10, RESET := Reset_Counter, PV := 10000, CV => Current_Value_Counter02_HMI); //Counter für alle Werkstücke innerhalb Toleranz 

CTU3(CU := ROB1_SPS_BOOL_11, RESET := Reset_Counter, PV := 10000, CV => Current_Value_Counter03_HMI); //Counter für alle Werkteile Werkstücke außerhalb Toleranz 

Current_Value_Counter01_HMI := Current_Value_Counter02_HMI + Current_Value_Counter03_HMI ;  //Counter für alle Werkteile  


code_text2_int := STRING_TO_INT(code_text2);
        
//code_text2_bool  := EQ(code_text2_int ,  Teil_fertig_counter);
        
 IF Current_Value_Counter01_HMI = (code_text2_int-1) AND code_text2_int <> 0 AND code_text2_int-1 <> 0 THEN
     
     SPS_ROB_1_BOOL_32 := TRUE;
     //SPS_ROB_BOOL_52 := TRUE;
    
     Reset_Counter := TRUE;
     Current_Value_Counter01_HMI := 0;
     //Current_Value_Counter02_HMI := 0;   
     //Current_Value_Counter03_HMI := 0;
     code_text2 := '0';
     //Reset_Counter := FALSE;
     
 END_IF


//Reset without signal SPS_ROB to the cobots           
IF reset_stückzäler_hmi THEN
    
     Reset_Counter := TRUE;
     Current_Value_Counter01_HMI := 0;
     //code_text2 := '0';
    
    
END_IF
    
    
    
TP_LTIME13(IN := Reset_Counter2, PT := TIME#100ms, Q => Reset_Counter2);

CTU4(CU := ROB_SPS_BOOL_23, RESET := Reset_Counter2, PV := 10000,  CV => Current_Value_Counter2);

 IF  Current_Value_Counter2 = (code_text2_int)-1 AND code_text2_int <> 0 THEN
     
     SPS_ROB_BOOL_52 := TRUE;
     Reset_Counter2 := TRUE;
     code_text2 := '0';
     Current_Value_Counter2 := 0;
     
 END_IF




