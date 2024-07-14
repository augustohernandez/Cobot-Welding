
// Türen                    ////////////////////////////////////////////////////////////////
  
  
  
Schub_door_open[1] := DI2_16_05;
Schub_door_open[2] := DI2_16_06;
Schub_door_open[3] := DI2_16_07;
Schub_door_open[4] := DI2_16_08;
Schub_door_open[5] := DI2_16_09;
Schub_door_open[6] := DI2_16_10;



// 3 MANOMETER 
Manometer_1 := DI3_16_02;
Manometer_2 := DI3_16_04;
Manometer_3 := DI3_16_03;


DO2_16_05 := Schub_button_light_on[1] ; //Schub_button_pressed[1];
DO2_16_06 := Schub_button_light_on[2]; //Schub_button_pressed[2];
DO2_16_07 := Schub_button_light_on[3]; //Schub_button_pressed[3];
DO2_16_08 := Schub_button_light_on[4]; //Schub_button_pressed[4];
DO2_16_09 := Schub_button_light_on[5]; //Schub_button_pressed[5];
DO2_16_10 := Schub_button_light_on[6]; //Schub_button_pressed[6];


Tuer_Status_1	:=	Schub_door_open[1]	; //Change Tuer_Status_1 x tuer1_status
Tuer_Status_2	:=	Schub_door_open[2]	;
Tuer_Status_3	:=	Schub_door_open[3]	;
Tuer_Status_4	:=	Schub_door_open[4]	;
Tuer_Status_5	:=	Schub_door_open[5]	;
Tuer_Status_6	:=	Schub_door_open[6]	;
//Tuer_Status_7	:=	DI2_16_11	;
//Tuer_Status_8	:=	DI2_16_12	;
//Tuer_Status_9	:=	DI2_16_13	;
//Tuer_Status_10 :=	DI2_16_14	;


Schub_button_pressed_1 := Schub_button_light_on[1]; //Schub_button_pressed[1];
Schub_button_pressed_2 := Schub_button_light_on[2]; //Schub_button_pressed[2];
Schub_button_pressed_3 := Schub_button_light_on[3]; //Schub_button_pressed[3];
Schub_button_pressed_4 := Schub_button_light_on[4]; //Schub_button_pressed[4];
Schub_button_pressed_5 := Schub_button_light_on[5]; //Schub_button_pressed[5];
Schub_button_pressed_6 := Schub_button_light_on[6]; //Schub_button_pressed[6];



//Schub_status_array : ARRAY[1..6] OF INT; // 0 - drawer is in between, 1 - mid position, 2 - drawer extended towards robot, 3 - drawer extended towards user


Schub_status_array[1] := BOOL_TO_INT( AND(DI5_16_01 = FALSE , DI5_16_02 = TRUE) ) * TYPE_SCHUB_STATUS_TOWARDS_ROBOT
                       + BOOL_TO_INT( AND(DI5_16_01 = TRUE  , DI5_16_02 = TRUE) ) * TYPE_SCHUB_STATUS_MID_POSITION
                       + BOOL_TO_INT( AND(DI5_16_01 = TRUE  , DI5_16_02 = FALSE) ) * TYPE_SCHUB_STATUS_TOWARDS_USER;

Schub_status_array[2] := BOOL_TO_INT( AND(DI5_16_03 = FALSE , DI5_16_04 = TRUE) ) * TYPE_SCHUB_STATUS_TOWARDS_ROBOT 
                       + BOOL_TO_INT( AND(DI5_16_03 = TRUE  , DI5_16_04 = TRUE) ) * TYPE_SCHUB_STATUS_MID_POSITION
                       + BOOL_TO_INT( AND(DI5_16_03 = TRUE  , DI5_16_04 = FALSE) ) * TYPE_SCHUB_STATUS_TOWARDS_USER;

Schub_status_array[3] := BOOL_TO_INT( AND(DI5_16_05 = FALSE , DI5_16_06 = TRUE) ) * TYPE_SCHUB_STATUS_TOWARDS_ROBOT 
                       + BOOL_TO_INT( AND(DI5_16_05 = TRUE  , DI5_16_06 = TRUE) ) * TYPE_SCHUB_STATUS_MID_POSITION
                       + BOOL_TO_INT( AND(DI5_16_05 = TRUE  , DI5_16_06 = FALSE) ) * TYPE_SCHUB_STATUS_TOWARDS_USER;

Schub_status_array[4] := BOOL_TO_INT( AND(DI5_16_07 = FALSE , DI5_16_08 = TRUE) ) * TYPE_SCHUB_STATUS_TOWARDS_ROBOT 
                       + BOOL_TO_INT( AND(DI5_16_07 = TRUE  , DI5_16_08 = TRUE) ) * TYPE_SCHUB_STATUS_MID_POSITION
                       + BOOL_TO_INT( AND(DI5_16_07 = TRUE  , DI5_16_08 = FALSE) ) * TYPE_SCHUB_STATUS_TOWARDS_USER;
                       
Schub_status_array[5] := BOOL_TO_INT( AND(DI6_16_09 = FALSE , DI6_16_10 = TRUE) ) * TYPE_SCHUB_STATUS_TOWARDS_ROBOT 
                       + BOOL_TO_INT( AND(DI6_16_09 = TRUE  , DI6_16_10 = TRUE) ) * TYPE_SCHUB_STATUS_MID_POSITION
                       + BOOL_TO_INT( AND(DI6_16_09 = TRUE  , DI6_16_10 = FALSE) ) * TYPE_SCHUB_STATUS_TOWARDS_USER;

Schub_status_array[6] := BOOL_TO_INT( AND(DI6_16_11 = FALSE , DI6_16_12 = TRUE) ) * TYPE_SCHUB_STATUS_TOWARDS_ROBOT 
                       + BOOL_TO_INT( AND(DI6_16_11 = TRUE  , DI6_16_12 = TRUE) ) * TYPE_SCHUB_STATUS_MID_POSITION
                       + BOOL_TO_INT( AND(DI6_16_11 = TRUE  , DI6_16_12 = FALSE) ) * TYPE_SCHUB_STATUS_TOWARDS_USER;

//SPS_ROB_BOOL_0  := Schub_status_array[1] = TYPE_SCHUB_STATUS_MID_POSITION;// Schubladentür 1 ist in Mittelstellung ( ur10e / 9 / 1 / OUT0 )
//SPS_ROB_BOOL_8  := Schub_status_array[2] = TYPE_SCHUB_STATUS_MID_POSITION;// Schubladentür 2 ist in Mittelstellung ( ur10e / 9 / 1 / OUT8 )
//SPS_ROB_BOOL_12 := Schub_status_array[3] = TYPE_SCHUB_STATUS_MID_POSITION;// Schubladentür 3 ist in Mittelstellung ( ur10e / 9 / 1 / OUT12 )
//SPS_ROB_1_BOOL_48 := Schub_status_array[4] = TYPE_SCHUB_STATUS_MID_POSITION;// Schubladentür 4 ist in Mittelstellung ( ur10e1 / 10 / 1 / OUT16 )
//SPS_ROB_1_BOOL_49 := Schub_status_array[5] = TYPE_SCHUB_STATUS_MID_POSITION;// Schubladentür 5 ist in Mittelstellung ( ur10e1 / 10 / 1 / OUT17 )
//SPS_ROB_1_BOOL_50 := Schub_status_array[6] = TYPE_SCHUB_STATUS_MID_POSITION;// Schubladentür 6 ist in Mittelstellung ( ur10e1 / 10 / 1 / OUT18 )

SPS_ROB_BOOL_13 := Schub_status_array[1] = TYPE_SCHUB_STATUS_TOWARDS_ROBOT; // Schubladentür 1 ist in Roboterstellung ( ur10e / 9 / 1 / OUT13 )
SPS_ROB_BOOL_17 := Schub_status_array[2] = TYPE_SCHUB_STATUS_TOWARDS_ROBOT; // Schubladentür 2 ist in Roboterstellung ( ur10e / 9 / 1 / OUT17 )
SPS_ROB_BOOL_18 := Schub_status_array[3] = TYPE_SCHUB_STATUS_TOWARDS_ROBOT; // Schubladentür 3 ist in Roboterstellung ( ur10e / 9 / 1 / OUT18 )      ????? CHECK
SPS_ROB_1_BOOL_51 := Schub_status_array[4] = TYPE_SCHUB_STATUS_TOWARDS_ROBOT; // Schubladentür 4 ist in Roboterstellung ( ur10e1 / 10 / 1 / OUT19 )
SPS_ROB_1_BOOL_52 := Schub_status_array[5] = TYPE_SCHUB_STATUS_TOWARDS_ROBOT; // Schubladentür 5 ist in Roboterstellung ( ur10e1 / 10 / 1 / OUT20 )
SPS_ROB_1_BOOL_53 := Schub_status_array[6] = TYPE_SCHUB_STATUS_TOWARDS_ROBOT; // Schubladentür 6 ist in Roboterstellung ( ur10e1 / 10 / 1 / OUT21 )
    



//IF( Schubladen_hmi_counter > 3 ) THEN
//   Schubladen_hmi_counter := 0;
//   Schub_button_light_current := NOT( Schub_button_light_current );
//ELSE
//   Schubladen_hmi_counter := Schubladen_hmi_counter + 1;
//END_IF
Schub_button_light_current_counter := Schub_button_light_current_counter + 1;
IF( Schub_button_light_current_counter > 100 ) THEN
    Schub_button_light_current_counter := 0;
    Schub_button_light_current := NOT Schub_button_light_current;
END_IF
    

//TON_Schub_button_light_current( IN := NOT Schub_button_light_current, PT := TIME#300ms, Q => Q_Schub_button_light_current );
//TON_Q_Schub_button_light_current( IN := Q_Schub_button_light_current, PT := TIME#300ms, Q => Schub_button_light_current );

IF Schub_door_open[1] = FALSE THEN 
    Schub_button_light_on[1] := Schub_button_light_current;
END_IF

IF Schub_door_open[2] = FALSE THEN 
    Schub_button_light_on[2] := Schub_button_light_current;
END_IF

IF Schub_door_open[3] = FALSE THEN 
    Schub_button_light_on[3] := Schub_button_light_current;
END_IF

IF Schub_door_open[4] = FALSE THEN 
    Schub_button_light_on[4] := Schub_button_light_current;
END_IF

IF Schub_door_open[5] = FALSE THEN 
    Schub_button_light_on[5] := Schub_button_light_current;
END_IF

IF Schub_door_open[6] = FALSE THEN 
    Schub_button_light_on[6] := Schub_button_light_current;
END_IF


// Schublade gemainsame Nester Not OK

IF DI2_16_12 = TRUE AND DI1_16_02 = TRUE THEN
    DO2_16_11 := TRUE;
    SPS_ROB_1_BOOL_28 := FALSE;
    SPS_ROB_1_BOOL_27 := TRUE;
    ELSE
    DO2_16_11 := Schub_button_light_current;
    SPS_ROB_1_BOOL_28 := TRUE;
    SPS_ROB_1_BOOL_27 := FALSE;
        
        
END_IF



//RESET ALL BOOLEANS VARIABLES

SPS_ROB_BOOL_49 := FALSE;
SPS_ROB_BOOL_50 := FALSE;
SPS_ROB_BOOL_51 := FALSE;
SPS_ROB_1_BOOL_48 := FALSE;
SPS_ROB_1_BOOL_49 := FALSE;
SPS_ROB_1_BOOL_50 := FALSE;


// state machine for the right drawers
FOR schub_index := 1 TO 3 DO

// Implemented normal procedure

IF Schub_door_open[1] = FALSE THEN 
    Schub_button_light_on[1] := Schub_button_light_current;
END_IF

IF Schub_door_open[2] = FALSE THEN 
    Schub_button_light_on[2] := Schub_button_light_current;
END_IF

IF Schub_door_open[3] = FALSE THEN 
    Schub_button_light_on[3] := Schub_button_light_current;
END_IF

IF Schub_door_open[4] = FALSE THEN 
    Schub_button_light_on[4] := Schub_button_light_current;
END_IF

IF Schub_door_open[5] = FALSE THEN 
    Schub_button_light_on[5] := Schub_button_light_current;
END_IF

IF Schub_door_open[6] = FALSE THEN 
    Schub_button_light_on[6] := Schub_button_light_current;
END_IF
    

CASE Schub_rechts_process_array[schub_index] OF
   0: // neutral
      // button green LED blinking
     State_case_3 := FALSE;
     State_case_02 := TRUE;
     Schub_button_light_on[schub_index] := Schub_button_light_current;
   
     
      //Schub_button_pressed[schub_index] := FALSE;
      IF( Schub_door_open[schub_index] AND Schub_status_array[schub_index] = TYPE_SCHUB_STATUS_MID_POSITION ) THEN
          Schub_rechts_process_array[schub_index] := 1;
      END_IF

   1: // loaded and waiting to be processed by the robot 1
      // button green LED NO blinking 
      State_case_02 := FALSE;
      State_case_1 := TRUE;
      Schub_button_light_on[schub_index] := TRUE;
      //Grüne_Ampel :=  FALSE;
      //Rote_Ampel := takt;

      IF( Schub_status_array[schub_index] = TYPE_SCHUB_STATUS_TOWARDS_ROBOT ) THEN
          Schub_rechts_process_array[schub_index] := 2;
      END_IF
   2: // the drawer is extended towards the robot and is being processed
      // button green LED NO blinking
      State_case_1 := FALSE;
      State_case_2 := TRUE;
      Schub_button_light_on[schub_index] := TRUE;
     
      
      // Robot is finished processing the drawer
      // button green LED blinking
      IF( Schub_status_array[schub_index] = TYPE_SCHUB_STATUS_MID_POSITION ) THEN
          Schub_rechts_process_array[schub_index] := 3;
      END_IF
   3: // processed and placed in mid position by robot, LED off to signal the user that it is finished when the door is open
      State_case_2 := FALSE;
      State_case_3 := TRUE;
      Schub_button_light_on[schub_index] :=  FALSE;
      
      IF Schub_door_open[schub_index] = FALSE THEN
      
      //IF( Schub_door_open[schub_index] ) THEN
          Schub_rechts_process_array[schub_index] := 0;
      END_IF

END_CASE

END_FOR


// Choose which of the drawers to advertise to the robot 1
SPS_ROB_BOOL_49 := FALSE;
SPS_ROB_BOOL_50 := FALSE;
SPS_ROB_BOOL_51 := FALSE;

IF Schub_rechts_process_array[1] = 1 THEN
   SPS_ROB_BOOL_49 := TRUE;
    
END_IF
    
IF Schub_rechts_process_array[2] = 1 THEN
   SPS_ROB_BOOL_50 := TRUE;
END_IF

IF Schub_rechts_process_array[3] = 1 THEN
   SPS_ROB_BOOL_51 := TRUE;        
END_IF
        


                            ////////////////////////////////////////////////////////////////
                            

// state machine for the left drawers
FOR schub_index2 := 4 TO 6 DO

// Implemented normal procedure

IF Schub_door_open[1] = FALSE THEN 
    Schub_button_light_on[1] := Schub_button_light_current;
END_IF

IF Schub_door_open[2] = FALSE THEN 
    Schub_button_light_on[2] := Schub_button_light_current;
END_IF

IF Schub_door_open[3] = FALSE THEN 
    Schub_button_light_on[3] := Schub_button_light_current;
END_IF

IF Schub_door_open[4] = FALSE THEN 
    Schub_button_light_on[4] := Schub_button_light_current;
END_IF

IF Schub_door_open[5] = FALSE THEN 
    Schub_button_light_on[5] := Schub_button_light_current;
END_IF

IF Schub_door_open[6] = FALSE THEN 
    Schub_button_light_on[6] := Schub_button_light_current;
END_IF
    

CASE Schub_links_process_array[schub_index2] OF
   0: // neutral
      // button green LED off
      State_case_6 := FALSE;
      State_case_0 := TRUE;
      Schub_button_light_on[schub_index2] :=  Schub_button_light_current;
      //Schub_button_pressed[schub_index] := FALSE;
      IF( Schub_door_open[schub_index2] AND Schub_status_array[schub_index2] = TYPE_SCHUB_STATUS_MID_POSITION ) THEN
          Schub_links_process_array[schub_index2] := 4;
      END_IF

   4: // loaded and waiting to be processed by the robot 1
      // button green LED NO blinking 
      State_case_0 := FALSE;
      State_case_4 := TRUE;
      Schub_button_light_on[schub_index2] :=  TRUE;

      IF( Schub_status_array[schub_index2] = TYPE_SCHUB_STATUS_TOWARDS_ROBOT ) THEN
          Schub_links_process_array[schub_index2] := 5;
      END_IF
   5: // the drawer is extended towards the robot and is being processed
      // button green LED NO blinking
      State_case_4 := FALSE;
      State_case_5 := TRUE;
      Schub_button_light_on[schub_index2] := TRUE;
      
      // Robot is finished processing the drawer
      // button green LED blinking
      IF( Schub_status_array[schub_index2] = TYPE_SCHUB_STATUS_MID_POSITION ) THEN
          Schub_links_process_array[schub_index2] := 6;
      END_IF
   6: // processed and placed in mid position by robot, LED off to signal the user that it is finished when the door is open
     
      State_case_5 := FALSE;
      State_case_6 := TRUE;    
      Schub_button_light_on[schub_index2] :=  FALSE;
      
      IF Schub_door_open[schub_index2] = FALSE THEN
      
      //IF( Schub_door_open[schub_index] ) THEN
          Schub_links_process_array[schub_index2] := 0;
      END_IF

END_CASE

END_FOR

IF Schub_door_open[6] = FALSE THEN 
    Schub_button_light_on[6] := Schub_button_light_current;
END_IF


// Choose which of the drawers to advertise to the robot 2
SPS_ROB_1_BOOL_48 := FALSE;
SPS_ROB_1_BOOL_49 := FALSE;
SPS_ROB_1_BOOL_50 := FALSE;

IF Schub_links_process_array[4] = 4 THEN
   SPS_ROB_1_BOOL_48 := TRUE;
    
END_IF
    
IF Schub_links_process_array[5] = 4 THEN
   SPS_ROB_1_BOOL_49  := TRUE;
END_IF

IF Schub_links_process_array[6] = 4 THEN
   SPS_ROB_1_BOOL_50 := TRUE;        
END_IF 


