
code_text3_real := STRING_TO_REAL(code_text3);    //rezept_nr_1
code_text4_real := STRING_TO_REAL(code_text4);    //rezept_nr_2
code_text5_real := STRING_TO_REAL(code_text5);    //rezept_nr_3
code_text6_real := STRING_TO_REAL(code_text6);    //rezept_nr_4
code_text7_real := STRING_TO_REAL(code_text7);    //rezept_nr_5
code_text8_real := STRING_TO_REAL(code_text8);    //rezept_nr_6
code_text9_real := STRING_TO_REAL(code_text9);    //rezept_nr_7
code_text10_real := STRING_TO_REAL(code_text10);  //rezept_nr_8
code_text11_real := STRING_TO_REAL(code_text11);  //rezept_nr_9

toleranz_rund := STRING_TO_DINT(code_text13);

Messwert_SOLL := STRING_TO_DINT(code_text14);

//real_positioniersollwert := 174.00;


     IF ROB_1_SPS_BOOL_06 = TRUE and rezept_nr = 1 THEN            //Presse start muss im Roboter aktiviert und deaktiviert werden, sonst bleibt er im state:= 0
     state := 0;
     END_IF
     IF ROB_1_SPS_BOOL_06 = TRUE and rezept_nr = 2 THEN            //Presse start muss im Roboter aktiviert und deaktiviert werden, sonst bleibt er im state:= 0
     state := 2;
     END_IF
      IF ROB_1_SPS_BOOL_06 = TRUE and rezept_nr = 3 THEN            //Presse start muss im Roboter aktiviert und deaktiviert werden, sonst bleibt er im state:= 0
     state := 4;
     END_IF
      IF ROB_1_SPS_BOOL_06 = TRUE and rezept_nr = 4 THEN            //Presse start muss im Roboter aktiviert und deaktiviert werden, sonst bleibt er im state:= 0
     state := 6;
     END_IF
      IF ROB_1_SPS_BOOL_06 = TRUE and rezept_nr = 5 THEN            //Presse start muss im Roboter aktiviert und deaktiviert werden, sonst bleibt er im state:= 0
     state := 8;
     END_IF
      IF ROB_1_SPS_BOOL_06 = TRUE and rezept_nr = 6 THEN            //Presse start muss im Roboter aktiviert und deaktiviert werden, sonst bleibt er im state:= 0
     state := 10;
     END_IF
      IF ROB_1_SPS_BOOL_06 = TRUE and rezept_nr = 7 THEN            //Presse start muss im Roboter aktiviert und deaktiviert werden, sonst bleibt er im state:= 0
     state := 12;
     END_IF
      IF ROB_1_SPS_BOOL_06 = TRUE and rezept_nr = 8 THEN            //Presse start muss im Roboter aktiviert und deaktiviert werden, sonst bleibt er im state:= 0
     state := 14;
     END_IF
      IF ROB_1_SPS_BOOL_06 = TRUE and rezept_nr = 9 THEN            //Presse start muss im Roboter aktiviert und deaktiviert werden, sonst bleibt er im state:= 0
     state := 16;
     END_IF
         
     
 IF Presse_reset_hmi = TRUE THEN            //Presse start muss im Roboter aktiviert und deaktiviert werden, sonst bleibt er im state:= 0
     state := 0;
     END_IF
   
// JONAS PRESSE Kalibrierwerte: "64.76", 76.9, 87.25, "103.81", 62.0, 74.47, 85.37, 97.37 und "109.5"
// AUGUSTO PRESSE Kalibrierwerte: "64.97", 76.9, 87.25, "105.4", 62.0, 74.47, 85.37, 97.37 und "110.25"

//real_positioniersollwert_rezept_nr_1 :=  64.00;

//real_positioniersollwert_rezept_nr_2 :=  77.00;

//real_positioniersollwert_rezept_nr_3 :=  87.00;

//real_positioniersollwert_rezept_nr_4 :=  104.00;

//real_positioniersollwert_rezept_nr_5 :=  62.0;

//real_positioniersollwert_rezept_nr_6 :=  74.00;

//real_positioniersollwert_rezept_nr_7 :=  86.00;

//real_positioniersollwert_rezept_nr_8 :=  98.00;

//real_positioniersollwert_rezept_nr_9 :=  108.00;

CASE state OF
    0 : Fehler_löschen := TRUE;
        real_Kraftgrenze_positiv := 14.0 ;
        set_Kraft := True;
        SPS_ROB_1_BOOL_47:= FALSE;//Signal:Presse fertig frei machen zwischen dem ein und ausschalten
        state := 1;
    1 : Fehler_löschen := False;
        set_Kraft := FALSE;
        //real_positioniersollwert := 64.00;
        real_positioniersollwert_rezept_nr_1 := code_text3_real; 
        real_positioniersollwert := real_positioniersollwert_rezept_nr_1;
       
            
        state := 18;
    2 : Fehler_löschen := TRUE;
        real_Kraftgrenze_positiv := 14.0 ;
        set_Kraft := True;
        SPS_ROB_1_BOOL_47:= FALSE;//Signal:Presse fertig frei machen zwischen dem ein  und ausschalten
        state := 3;
    3 : Fehler_löschen := False;
        set_Kraft := FALSE;
        //real_positioniersollwert := 77.00;
        real_positioniersollwert_rezept_nr_2 := code_text4_real; 
        real_positioniersollwert := real_positioniersollwert_rezept_nr_2;
        state := 18;
    4 : Fehler_löschen := TRUE;
        real_Kraftgrenze_positiv := 14.0 ;
        set_Kraft := True;
        SPS_ROB_1_BOOL_47:= FALSE;//Signal:Presse fertig frei machen zwischen dem ein  und ausschalten
        state := 5;
    5 : Fehler_löschen := False;
        set_Kraft := FALSE;
        //real_positioniersollwert := 87.00;
        real_positioniersollwert_rezept_nr_3 := code_text5_real; 
        real_positioniersollwert := real_positioniersollwert_rezept_nr_3;
               
        state := 18;
    6 : Fehler_löschen := TRUE;
        real_Kraftgrenze_positiv := 14.0 ;
        set_Kraft := True;
        SPS_ROB_1_BOOL_47:= FALSE;//Signal:Presse fertig frei machen zwischen dem ein  und ausschalten
        state := 7;
    7 : Fehler_löschen := False;
        set_Kraft := FALSE;
        //real_positioniersollwert := 104.00;
        real_positioniersollwert_rezept_nr_4 := code_text6_real; 
        real_positioniersollwert := real_positioniersollwert_rezept_nr_4;
                         
        state := 18;
    8 : Fehler_löschen := TRUE;
        real_Kraftgrenze_positiv := 14.0 ;
        set_Kraft := True;
        SPS_ROB_1_BOOL_47:= FALSE;//Signal:Presse fertig frei machen zwischen dem ein  und ausschalten
        state := 9;        
    9 : Fehler_löschen := False;
        set_Kraft := FALSE;
        //real_positioniersollwert := 62.00;
        real_positioniersollwert_rezept_nr_5 := code_text7_real; 
        real_positioniersollwert := real_positioniersollwert_rezept_nr_5;
                        
        state := 18;
    10 : Fehler_löschen := TRUE;
        real_Kraftgrenze_positiv := 14.0 ;
        set_Kraft := True;       
        SPS_ROB_1_BOOL_47:= FALSE;//Signal:Presse fertig frei machen zwischen dem ein  und ausschalten
        state := 11;        
    11 : Fehler_löschen := False;
        set_Kraft := FALSE;
        //real_positioniersollwert := 74.00;
        real_positioniersollwert_rezept_nr_6 := code_text8_real; 
        real_positioniersollwert := real_positioniersollwert_rezept_nr_6;
        
        state := 18;
    12 : Fehler_löschen := TRUE;
        real_Kraftgrenze_positiv := 14.0 ;
        set_Kraft := True;
        SPS_ROB_1_BOOL_47:= FALSE;//Signal:Presse fertig frei machen zwischen dem ein  und ausschalten
        state := 13;        
    13 : Fehler_löschen := False;
        set_Kraft := FALSE;
        //real_positioniersollwert := 86.00;
        real_positioniersollwert_rezept_nr_7 := code_text9_real; 
        real_positioniersollwert := real_positioniersollwert_rezept_nr_7;
                 
        state := 18;
    14 : Fehler_löschen := TRUE;
        real_Kraftgrenze_positiv := 14.0 ;
        set_Kraft := True;
        SPS_ROB_1_BOOL_47:= FALSE;//Signal:Presse fertig frei machen zwischen dem ein  und ausschalten
        state := 15;        
    15 : Fehler_löschen := False;
        set_Kraft := FALSE;
        //real_positioniersollwert := 98.00;
        real_positioniersollwert_rezept_nr_8 := code_text10_real; 
        real_positioniersollwert := real_positioniersollwert_rezept_nr_8;
                    
        state := 18;
    16 : Fehler_löschen := TRUE;
        real_Kraftgrenze_positiv := 14.0 ;
        set_Kraft := True;
        SPS_ROB_1_BOOL_47:= FALSE;//Signal:Presse fertig frei machen zwischen dem ein  und ausschalten
        state := 17;
    17 : Fehler_löschen := False;
        set_Kraft := FALSE;
        //real_positioniersollwert := 109.00;
        real_positioniersollwert_rezept_nr_9 := code_text11_real; 
        real_positioniersollwert := real_positioniersollwert_rezept_nr_9;
                 
                   
        state := 18;
    18 : antrieb_freigeben:= TRUE ;      //  Antrieb freigeben
        state := 19;
    19 : antrieb_verfahren := TRUE;      // Antrieb verfahren
        state := 20;
    20 : If real_positioniersollwert = lage_istwert OR real_positioniersollwert = lage_istwert+0.01 THEN // warte bis verfahren
        state := 21;
          END_IF
    21 : real_positioniersollwert := 174.0;// presse öffnen
        antrieb_verfahren:= FALSE ;
        If real_positioniersollwert = lage_istwert OR real_positioniersollwert = lage_istwert+0.01 THEN 
        antrieb_freigeben:= FALSE ;
        state := 22;
        END_IF
    
    22 : SPS_ROB_1_BOOL_47:= TRUE;// werkstück entnehmen, Signal:Presse fertig
       // antrieb_freigeben:= FALSE ;
        
    50: // ERROR
    
        // IF error solved THEN
        // state:= 100;
        // END_IF;
        
    100: // reset
    
    ELSE 
        (* Anweisungen *)
END_CASE


  
 