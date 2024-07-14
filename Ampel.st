// AMPEL 

// Grüne_Ampel := DO2_16_02
// Gelbe_Ampel := DO2_16_03
// Rote_Ampel := DO2_16_04


// Reset Ampel
DO2_16_03 :=  FALSE;  //Gelbe_Ampel reset
DO2_16_04 :=  FALSE;  //Rote_Ampel reset


// Grün_Ampel (nicht Blinken)
// DI1_16_02 = NOT HALT (Normally TRUE) = Not Emergency Button (OFF)
IF udtRob.State.PR = FALSE AND udtRob1.State.PR = FALSE AND DI1_16_02 AND DO2_16_04 = FALSE THEN
    DO2_16_02 := TRUE;
END_IF

// Grün_Ampel (Blinken)
// DI1_16_02 = NOT HALT (Normally TRUE) = Not Emergency Button (OFF)
IF udtRob.State.PR = TRUE OR udtRob1.State.PR = TRUE AND DI1_16_02 AND DO2_16_04 = FALSE THEN
    DO2_16_02 := takt;
END_IF
   
// Gelbe_Ampel (Blinken) 
// DI1_16_02 = NOT HALT (Normally TRUE) = Not Emergency Button (OFF)
IF DI5_16_13 AND DI5_16_14 AND DI5_16_15 AND DI1_16_02 THEN 
    DO2_16_02 := FALSE;    
    DO2_16_03 :=  takt;
END_IF

// Gelbe_Ampel (NICHT Blinken) 
// DI1_16_02 = NOT HALT (Normally TRUE) = Not Emergency Button (OFF)
// DI1_16_16 = Große Tür 
IF DI1_16_16 = FALSE AND DI1_16_02 = TRUE THEN 
    DO2_16_02 := FALSE;    
    DO2_16_03 :=  TRUE;
END_IF

// Rote_Ampel (Blinken)
// DI1_16_02 = NOT HALT (TRUE) = Not Emergency Button (OFF)
IF Not DI1_16_02 OR Not DI2_16_11 THEN
    DO2_16_04 := takt;
    DO2_16_02 := FALSE;    
END_IF

IF Not DI2_16_11 OR  Not DI2_16_13 OR  Not DI2_16_14 THEN
    DO2_16_04 := takt;
    DO2_16_02 := FALSE;
    DO2_16_03 :=  FALSE;
        
END_IF


