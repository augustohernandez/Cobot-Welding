
                            ////////////////////////////////////////////////////////////////
// Rezepturen GEA           ////////////////////////////////////////////////////////////////

//info texte zu der Übersicht

rezept_text_hmi_1 := 'Sachnummer: 271-101.19';
rezept_text_hmi_2 := 'Sachnummer: 221-323.14';
rezept_text_hmi_3 := 'Sachnummer: 271-102.41';
rezept_text_hmi_4 := 'Sachnummer: 221-324.20';

rezept_text_hmi_5 := 'Sachnummer: 271-101.21';
rezept_text_hmi_6 := 'Sachnummer: 221-323.13';
rezept_text_hmi_7 := 'Sachnummer: 221-323.101';
rezept_text_hmi_8 := 'Sachnummer: 271-102.43';
rezept_text_hmi_9 := 'Schachnummer: 221-324.21';
rezept_text_hmi_10 := 'Sachnummer: 221-324.143';

rezept_text_hmi_11 := 'Sachnummer: 271-101.22';
rezept_text_hmi_12 := 'Sachnummer: 221-323.12';
rezept_text_hmi_13 := 'Sachnummer: 221-323.99';
rezept_text_hmi_14 := 'Sachnummer: 271-102.44';
rezept_text_hmi_15 := 'Sachnummer: 221-324.11';
rezept_text_hmi_16 := 'Sachnummer: 221-324.141';

rezept_text_hmi_17 := 'Sachnummer: 271-101.05';
rezept_text_hmi_18 := 'Sachnummer: 221-323.11';
rezept_text_hmi_19 := 'Sachnummer: 221-323.95';
rezept_text_hmi_20 := 'Sachnummer: 271-102.05';
rezept_text_hmi_21 := 'Sachnummer: 221-324.12';
rezept_text_hmi_22 := 'Sachnummer: 221-324.138';

rezept_text_hmi_23 := 'Sachnummer: 271-101.27';
rezept_text_hmi_24 := 'Sachnummer: 221-323.19';
rezept_text_hmi_25 := 'Sachnummer: 271-102.52';
rezept_text_hmi_26 := 'Sachnummer: 221-324.35';

rezept_text_hmi_27 := 'Sachnummer: 271-101.28';
rezept_text_hmi_28 := 'Sachnummer: 221-323.16';
rezept_text_hmi_29 := 'Sachnummer: 271-323.100';
rezept_text_hmi_30 := 'Sachnummer: 271-102.53';
rezept_text_hmi_31 := 'Sachnummer: 221-324.27';
rezept_text_hmi_32 := 'Sachnummer: 271-324.142';

rezept_text_hmi_33 := 'Sachnummer: 271-101.29';
rezept_text_hmi_34 := 'Sachnummer: 221-323.01';
rezept_text_hmi_35 := 'Sachnummer: 271-323.98';
rezept_text_hmi_36 := 'Sachnummer: 271-102.54';
rezept_text_hmi_37 := 'Sachnummer: 221-324.01';
rezept_text_hmi_38 := 'Sachnummer: 271-324.118';

rezept_text_hmi_39 := 'Sachnummer: 271-101.30';
rezept_text_hmi_40 := 'Sachnummer: 221-323.02';
rezept_text_hmi_41 := 'Sachnummer: 271-323.56';
rezept_text_hmi_42 := 'Sachnummer: 271-102.55';
rezept_text_hmi_43 := 'Sachnummer: 221-324.02';
rezept_text_hmi_44 := 'Sachnummer: 271-324.87';

rezept_text_hmi_45 := 'Sachnummer: 271-101.31';
rezept_text_hmi_46 := 'Sachnummer: 221-323.03';
rezept_text_hmi_47 := 'Sachnummer: 271-323.55';
rezept_text_hmi_48 := 'Sachnummer: 271-102.56';
rezept_text_hmi_49 := 'Sachnummer: 221-324.03';
rezept_text_hmi_50 := 'Sachnummer: 271-324.86';


// Info Text im status
    rezept_hinweis_leer         := 'Kein Rezept ausgewaehlt'; 
    rezept_hinweis_ungueltig    := 'Ungueltige Rezeptnummer';
    
case rezept_nr_1 OF
0   :	rezept_text_global_1 	:=	 rezept_hinweis_leer;      
1	:	rezept_text_global_1 	:=	 rezept_text_hmi_1 	;
2	:	rezept_text_global_1 	:=	 rezept_text_hmi_2	;
3	:	rezept_text_global_1 	:=	 rezept_text_hmi_3	;
4	:	rezept_text_global_1 	:=	 rezept_text_hmi_4	;
5	:	rezept_text_global_1 	:=	 rezept_text_hmi_5	;
6	:	rezept_text_global_1 	:=	 rezept_text_hmi_6	;
7	:	rezept_text_global_1 	:=	 rezept_text_hmi_7	;
8	:	rezept_text_global_1 	:=	 rezept_text_hmi_8	;
9	:	rezept_text_global_1 	:=	 rezept_text_hmi_9	;
10	:	rezept_text_global_1 	:=	 rezept_text_hmi_10	;
11	:	rezept_text_global_1 	:=	 rezept_text_hmi_11	;
12	:	rezept_text_global_1 	:=	 rezept_text_hmi_12	;
13	:	rezept_text_global_1 	:=	 rezept_text_hmi_13	;
14	:	rezept_text_global_1 	:=	 rezept_text_hmi_14	;
15	:	rezept_text_global_1 	:=	 rezept_text_hmi_15	;
16	:	rezept_text_global_1 	:=	 rezept_text_hmi_16	;
17	:	rezept_text_global_1 	:=	 rezept_text_hmi_17	;
18	:	rezept_text_global_1 	:=	 rezept_text_hmi_18	;
19	:	rezept_text_global_1 	:=	 rezept_text_hmi_19 ;
20	:	rezept_text_global_1 	:=	 rezept_text_hmi_20	;
21	:	rezept_text_global_1 	:=	 rezept_text_hmi_21	;
22	:	rezept_text_global_1 	:=	 rezept_text_hmi_22	;
23	:	rezept_text_global_1 	:=	 rezept_text_hmi_23	;
24	:	rezept_text_global_1 	:=	 rezept_text_hmi_24	;
25	:	rezept_text_global_1 	:=	 rezept_text_hmi_25	;
26	:	rezept_text_global_1 	:=	 rezept_text_hmi_26	;
27	:	rezept_text_global_1 	:=	 rezept_text_hmi_27	;
28	:	rezept_text_global_1 	:=	 rezept_text_hmi_28	;
29	:	rezept_text_global_1 	:=	 rezept_text_hmi_29	;
30	:	rezept_text_global_1 	:=	 rezept_text_hmi_30	;
31	:	rezept_text_global_1 	:=	 rezept_text_hmi_31	;
32	:	rezept_text_global_1 	:=	 rezept_text_hmi_32	;
33	:	rezept_text_global_1 	:=	 rezept_text_hmi_33	;
34	:	rezept_text_global_1 	:=	 rezept_text_hmi_34	;
35	:	rezept_text_global_1 	:=	 rezept_text_hmi_35	;
36	:	rezept_text_global_1 	:=	 rezept_text_hmi_36	;
37	:	rezept_text_global_1 	:=	 rezept_text_hmi_37 ;
38	:	rezept_text_global_1 	:=	 rezept_text_hmi_38	;
39	:	rezept_text_global_1 	:=	 rezept_text_hmi_39	;
40	:	rezept_text_global_1 	:=	 rezept_text_hmi_40	;
41	:	rezept_text_global_1 	:=	 rezept_text_hmi_41	;
42	:	rezept_text_global_1 	:=	 rezept_text_hmi_42	;
43	:	rezept_text_global_1 	:=	 rezept_text_hmi_43	;
44	:	rezept_text_global_1 	:=	 rezept_text_hmi_44	;
45	:	rezept_text_global_1 	:=	 rezept_text_hmi_45	;
46	:	rezept_text_global_1 	:=	 rezept_text_hmi_46	;
47	:	rezept_text_global_1 	:=	 rezept_text_hmi_47	;
48	:	rezept_text_global_1 	:=	 rezept_text_hmi_48	;
49	:	rezept_text_global_1 	:=	 rezept_text_hmi_49	;
50	:	rezept_text_global_1 	:=	 rezept_text_hmi_50	;    
    ELSE rezept_text_global_1 := rezept_hinweis_ungueltig ;
    END_CASE;
   
// Info Text im status
    rezept_hinweis_leer         := 'Kein Rezept ausgewaehlt'; 
    rezept_hinweis_ungueltig    := 'Ungueltige Rezeptnummer';
   
case rezept_nr_1 OF
0   :	rezept_text_global 	:=	 rezept_hinweis_leer;      
1	:	rezept_text_global 	:=	  'DN25, 1-stutzig, V-Flansch'	;
        rezept_nr           :=      1               ;
        rezept_nummer       :=      1               ;
2	:	rezept_text_global 	:=	  'DN25, 1-stutzig, S-Flansch'	;
        rezept_nr           :=      1               ;
        rezept_nummer       :=      1               ;
3	:	rezept_text_global 	:=	  'DN25, 2-stutzig, V-Flansch' ;
        rezept_nr           :=      1               ;
        rezept_nummer       :=      2               ;
4	:	rezept_text_global 	:=	  'DN25, 2-stutzig, S-Flansch'	;
        rezept_nr           :=      1               ;
        rezept_nummer       :=      2               ;
5	:	rezept_text_global 	:=	  'DN 40, 1-stutzig, V-Flansch'	;
        rezept_nr           :=      2               ;
        rezept_nummer       :=      3               ;
6	:	rezept_text_global 	:=	  'DN 40, 1-stutzig, S-Flansch'	;
        rezept_nr           :=      2               ;
        rezept_nummer       :=      3               ;
7	:	rezept_text_global 	:=	  'DN 40, 1-stutzig, PMO-Flansch'	;
        rezept_nr           :=      2               ;
        rezept_nummer       :=      3               ;
8	:	rezept_text_global 	:=	  'DN 40, 2-stutzig, V-Flansch'	;
        rezept_nr           :=      2               ;
        rezept_nummer       :=      4               ;
9	:	rezept_text_global 	:=	  'DN 40, 2-stutzig, S-Flansch'	;
        rezept_nr           :=      2               ;
        rezept_nummer       :=      4               ;
10	:	rezept_text_global 	:=	  'DN 40, 2-stutzig, PMO-Flansch'	;
        rezept_nr           :=      2               ;
        rezept_nummer       :=      4               ;
11	:	rezept_text_global 	:=	  'DN 50, 1-stutzig, V-Flansch'	;
        rezept_nr           :=      3               ;
        rezept_nummer       :=      5               ;
12	:	rezept_text_global 	:=	  'DN 50, 1-stutzig, S-Flansch'	;
        rezept_nr           :=      3               ;
        rezept_nummer       :=      5               ;     
13	:	rezept_text_global 	:=	  'DN 50, 1-stutzig, PMO-Flansch'	;
        rezept_nr           :=      3               ;
        rezept_nummer       :=      5               ;   
14	:	rezept_text_global 	:=	  'DN 50, 2-stutzig, V-Flansch'	;
        rezept_nr           :=      3               ;
        rezept_nummer       :=      6               ;
15	:	rezept_text_global 	:=	  'DN 50, 2-stutzig, S-Flansch'	;
        rezept_nr           :=      3               ;
        rezept_nummer       :=      6               ;
16	:	rezept_text_global 	:=	  'DN 50, 2-stutzig, PMO-Flansch'	;
        rezept_nr           :=      3               ;
        rezept_nummer       :=      6               ;
17	:	rezept_text_global 	:=	  'DN 65, 1-stutzig, V-Flansch'	;
        rezept_nr           :=      4               ;
        rezept_nummer       :=      7               ;
18	:	rezept_text_global 	:=	  'DN 65, 1-stutzig, S-Flansch'	;
        rezept_nr           :=      4               ;
        rezept_nummer       :=      7               ;
19	:	rezept_text_global 	:=	  'DN 65, 1-stutzig, PMO-Flansch'	;
        rezept_nr           :=      4               ;
        rezept_nummer       :=      7               ;
20	:	rezept_text_global 	:=	  'DN 65, 2-stutzig, V-Flansch'	;
        rezept_nr           :=      4               ;
        rezept_nummer       :=      8               ;
21	:	rezept_text_global 	:=	  'DN 65, 2-stutzig, S-Flansch'	;
        rezept_nr           :=      4               ;
        rezept_nummer       :=      8               ;
22	:	rezept_text_global 	:=	  'DN 65, 2-stutzig, PMO-Flansch'	;
        rezept_nr           :=      4               ;
        rezept_nummer       :=      8               ;
23	:	rezept_text_global 	:=	  '1"OD, 1-stutzig, V-Flansch'	;
        rezept_nr           :=      5               ;
        rezept_nummer       :=      9              ;
24	:	rezept_text_global 	:=	  '1"OD ,1-stutzig ,S-Flansch'	;
        rezept_nr           :=      5               ;
        rezept_nummer       :=      9              ;
25	:	rezept_text_global 	:=	  '1"OD ,2-stutzig ,V-Flansch'	;
        rezept_nr           :=      5               ;
        rezept_nummer       :=      10              ;
26	:	rezept_text_global 	:=	  '1"OD ,2-stutzig ,S-Flansch'	;
        rezept_nr           :=      5               ;
        rezept_nummer       :=      10              ;
27	:	rezept_text_global 	:=	  '1,5"OD, 1-stutzig, V-Flansch' ;
        rezept_nr           :=      6               ;
        rezept_nummer       :=      11              ;
28	:	rezept_text_global 	:=	  '1,5"OD, 1-stutzig, S-Flansch'	;
        rezept_nr           :=      6               ;
        rezept_nummer       :=      11              ;
29	:	rezept_text_global 	:=	  '1,5"OD, 1-stutzig, PMO-Flansch'	;
        rezept_nr           :=      6               ;
        rezept_nummer       :=      11              ;
30	:	rezept_text_global 	:=	  '1,5"OD, 2-stutzig, V-Flansch'	;
        rezept_nr           :=      6               ;
        rezept_nummer       :=      12              ;
31	:	rezept_text_global 	:=	  '1,5"OD, 2-stutzig, S-Flansch'	;
        rezept_nr           :=      6               ;
        rezept_nummer       :=      12              ;
32	:	rezept_text_global 	:=	  '1,5"OD, 2-stutzig, PMO-Flansch'	;
        rezept_nr           :=      6               ;
        rezept_nummer       :=      12              ;
33	:	rezept_text_global 	:=	  '2"OD, 1-stutzig, V-Flansch'	;
        rezept_nr           :=      7               ;
        rezept_nummer       :=      13              ;
34	:	rezept_text_global 	:=	  '2"OD, 1-stutzig, S-Flansch'	;
        rezept_nr           :=      7               ;
        rezept_nummer       :=      13              ;
35	:	rezept_text_global 	:=	  '2"OD, 1-stutzig, PMO-Flansch'	;
        rezept_nr           :=      7               ;
        rezept_nummer       :=      13              ;
36	:	rezept_text_global 	:=	  '2"OD, 2-stutzig, V-Flansch'	;
        rezept_nr           :=      7               ;
        rezept_nummer       :=      14              ;
37	:	rezept_text_global 	:=	  '2"OD, 2-stutzig, S-Flansch'	;
        rezept_nr           :=      7               ;
        rezept_nummer       :=      14              ;
38	:	rezept_text_global 	:=	  '2"OD, 2-stutzig, PMO-Flansch'	;
        rezept_nr           :=      7               ;
        rezept_nummer       :=      14              ;
39	:	rezept_text_global 	:=	  '2,5"OD, 1-stutzig, V-Flansch'	;
        rezept_nr           :=      8               ;
        rezept_nummer       :=      15              ;
40	:	rezept_text_global 	:=	  '2,5"OD, 1-stutzig, S-Flansch'	;
        rezept_nr           :=      8               ;
        rezept_nummer       :=      15              ;
41	:	rezept_text_global 	:=	  '2,5"OD, 1-stutzig, PMO-Flansch'	;
        rezept_nr           :=      8               ;
        rezept_nummer       :=      15              ;
42	:	rezept_text_global 	:=	  '2,5"OD, 2-stutzig, V-Flansch'	;
        rezept_nr           :=      8               ;
        rezept_nummer       :=      16              ;
43	:	rezept_text_global 	:=	  '2,5"OD, 2-stutzig, S-Flansch'	;
        rezept_nr           :=      8               ;
        rezept_nummer       :=      16              ;
44	:	rezept_text_global 	:=	  '2,5"OD, 2-stutzig, PMO-Flansch'	;
        rezept_nr           :=      8               ;
        rezept_nummer       :=      16              ;
45	:	rezept_text_global 	:=	  '3"OD, 1-stutzig, V-Flansch'	;
        rezept_nr           :=      9               ;
        rezept_nummer       :=      17              ;
46	:	rezept_text_global 	:=	  '3"OD, 1-stutzig, S-Flansch'	;
        rezept_nr           :=      9               ;
        rezept_nummer       :=      17              ;
47	:	rezept_text_global 	:=	  '3"OD, 1-stutzig, PMO-Flansch'	;
        rezept_nr           :=      9               ;
        rezept_nummer       :=      17              ;
48	:	rezept_text_global 	:=	  '3"OD, 2-stutzig, V-Flansch'	;
        rezept_nr           :=      9               ;
        rezept_nummer       :=      18              ;
49	:	rezept_text_global 	:=	  '3"OD, 2-stutzig, S-Flansch'	;
        rezept_nr           :=      9               ;
        rezept_nummer       :=      18              ;
50	:	rezept_text_global 	:=	  '3"OD, 2-stutzig, PMO-Flansch'	;
        rezept_nr           :=      9               ;
        rezept_nummer       :=      18              ;
    
    ELSE rezept_text_global := rezept_hinweis_ungueltig ;
    END_CASE;
   


rohr_OD_LR_ist_gleich := EQ(ROHR_OD_L  , ROHR_OD_R  );  // vergleich, ob Rohraussendurchmesser LINKS und RECHTS gleich ist

 if rezept_nr = 1 THEN 
      
    SPS_ROB_BOOL_38  :=  true;                                          //ROB Rezept_1
    SPS_ROB_1_BOOL_17  :=  true;                                        //ROB_1 Rezept_1 
    
    ELSE
    
    SPS_ROB_BOOL_38  :=  FALSE;                                          //ROB Rezept_1
    SPS_ROB_1_BOOL_17  :=  FALSE;                                        //ROB_1 Rezept_1
    
    END_IF
    
  if rezept_nr = 2 THEN 
      
    SPS_ROB_BOOL_39  :=  true;                                          //ROB Rezept_2
    SPS_ROB_1_BOOL_18  :=  true;                                        //ROB_1 Rezept_2 
    
    ELSE
    
     SPS_ROB_BOOL_39  :=  FALSE;                                          //ROB Rezept_2
    SPS_ROB_1_BOOL_18  :=  FALSE;                                        //ROB_1 Rezept_2
    
    END_IF
    if rezept_nr = 3 THEN 
      
    SPS_ROB_BOOL_40  :=  true;                                          //ROB Rezept_3
    SPS_ROB_1_BOOL_19  :=  true;                                        //ROB_1 Rezept_3 
    
    ELSE
    
    SPS_ROB_BOOL_40  :=  FALSE;                                          //ROB Rezept_3
    SPS_ROB_1_BOOL_19  :=  FALSE;                                        //ROB_1 Rezept_3
    
    END_IF
    if rezept_nr = 4 THEN 
      
    SPS_ROB_BOOL_41  :=  true;                                          //ROB Rezept_4
    SPS_ROB_1_BOOL_20  :=  true;                                        //ROB_1 Rezept_4 
    
    ELSE
    
    SPS_ROB_BOOL_41  :=  FALSE;                                          //ROB Rezept_4
    SPS_ROB_1_BOOL_20  :=  FALSE;                                        //ROB_1 Rezept_4
    
    END_IF
    if rezept_nr = 5 THEN 
      
    SPS_ROB_BOOL_42  :=  true;                                          //ROB Rezept_5
    SPS_ROB_1_BOOL_21  :=  true;                                        //ROB_1 Rezept_5 
    
    ELSE
    
    SPS_ROB_BOOL_42  :=  FALSE;                                          //ROB Rezept_5
    SPS_ROB_1_BOOL_21  :=  FALSE;                                        //ROB_1 Rezept_5
    
    END_IF
    if rezept_nr = 6 THEN 
      
    SPS_ROB_BOOL_43  :=  true;                                          //ROB Rezept_6
    SPS_ROB_1_BOOL_22  :=  true;                                        //ROB_1 Rezept_6 
    
    ELSE
    
    SPS_ROB_BOOL_43  :=  FALSE;                                          //ROB Rezept_6
    SPS_ROB_1_BOOL_22  :=  FALSE;                                        //ROB_1 Rezept_6
    
    END_IF
    if rezept_nr = 7 THEN 
      
    SPS_ROB_BOOL_44  :=  true;                                          //ROB Rezept_7
    SPS_ROB_1_BOOL_23  :=  true;                                        //ROB_1 Rezept_7 
    
    ELSE
    
    SPS_ROB_BOOL_44  :=  FALSE;                                          //ROB Rezept_7
    SPS_ROB_1_BOOL_23  :=  FALSE;                                        //ROB_1 Rezept_7
    
    END_IF
    if rezept_nr = 8 THEN 
      
    SPS_ROB_BOOL_45  :=  true;                                          //ROB Rezept_8
    SPS_ROB_1_BOOL_24  :=  true;                                        //ROB_1 Rezept_8 
    
    ELSE
    
    SPS_ROB_BOOL_45  :=  FALSE;                                          //ROB Rezept_8
    SPS_ROB_1_BOOL_24  :=  FALSE;                                        //ROB_1 Rezept_8
    
    END_IF
    if rezept_nr = 9 THEN 
      
    SPS_ROB_BOOL_46  :=  true;                                          //ROB Rezept_9
    SPS_ROB_1_BOOL_25  :=  true;                                        //ROB_1 Rezept_9 
    
    ELSE
    
    SPS_ROB_BOOL_46  :=  FALSE;                                          //ROB Rezept_9
    SPS_ROB_1_BOOL_25  :=  FALSE;                                        //ROB_1 Rezept_9
    
    END_IF
   
  
//Messwert_SOLL := TO_DINT(ROHR_OD_L_HMI_1 );             //  test aufbau


 
(*

if rezept_nr = 1 or rezept_nr_1 = 1 THEN
// test aufbau    
    ROHR_OD_L_HMI_1         :=38    ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L_HMI_1     :=35    ;	        //	Gehäusedurchmesser links
    ROHR_WD_L_HMI_1         :=1.5   ;	        //	Wanddicke links
    GEHAEUSE_WD_L_HMI_1	    :=2     ;	        //	Wanddicke links
    ROHR_LAENGE_L_HMI_1	    :=50    ;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L_HMI_1 :=43    ;	        //	Gehäuselänge links
    rezept_text_hmi_1       :='musteraufbau mit fixen Werten: Rohr soll= 38mm';

    
    //Bauteildaten links
    ROHR_OD_Links             :=	   ROHR_OD_L_HMI_1          ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=   GEHAEUSE_OD_L_HMI_1      ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links          	  :=    ROHR_WD_L_HMI_1          ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_1	     ;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_1	     ;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_1  ;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_1	     ;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_1	         ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_1	     ;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_1	         ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_1	     ;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_1	     ;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_1  ;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_1	     ;	        //	TRUE: die rechte Seite wird geschweißt
     
    //RoboterVariable 
    SPS_ROB_BOOL_38  :=  true;                                          //ROB Rezept_1
    SPS_ROB_1_BOOL_17  :=  true;                                        //ROB_1 Rezept_1
     ELSE  
    SPS_ROB_BOOL_38  :=  FALSE;                                          //ROB Rezept_1
    SPS_ROB_1_BOOL_17  :=  FALSE;                                        //ROB_1 Rezept_1
END_IF



if rezept_nr = 2 THEN
    
 
        //Bauteildaten links
    ROHR_OD_Links             :=	ROHR_OD_L_HMI_2       ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_2   ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links             :=	ROHR_WD_L_HMI_2       ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_2	;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_2	;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_2;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_2	;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_2	   ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_2	;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_2	   ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_2	;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_2	;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_2;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_2	;	        //	TRUE: die rechte Seite wird geschweißt
    
      //RoboterVariable 
    SPS_ROB_BOOL_39  :=  true;                                          //ROB Rezept_2
    SPS_ROB_1_BOOL_18  :=  true;                                        //ROB_1 Rezept_2
     ELSE  
    SPS_ROB_BOOL_39  :=  FALSE;                                          //ROB Rezept_2
    SPS_ROB_1_BOOL_18  :=  FALSE;                                        //ROB_1 Rezept_2
END_IF



if rezept_nr = 3 THEN
    
 
        //Bauteildaten links
    ROHR_OD_Links           	  :=	ROHR_OD_L_HMI_3       ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_3   ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links           	  :=	ROHR_WD_L_HMI_3       ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_3	;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_3	;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_3;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_3	;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_3	   ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_3	;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_3	   ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_3	;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_3	;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_3;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_3	;	        //	TRUE: die rechte Seite wird geschweißt
    
      //RoboterVariable 
    SPS_ROB_BOOL_40  :=  true;                                          //ROB Rezept_3
    SPS_ROB_1_BOOL_19  :=  true;                                        //ROB_1 Rezept_3
     ELSE  
    SPS_ROB_BOOL_40  :=  FALSE;                                          //ROB Rezept_3
    SPS_ROB_1_BOOL_19  :=  FALSE;                                        //ROB_1 Rezept_3
END_IF



if rezept_nr = 4 THEN
    
 
        //Bauteildaten links
    ROHR_OD_Links           	  :=	ROHR_OD_L_HMI_4       ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_4   ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links           	  :=	ROHR_WD_L_HMI_4       ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_4	;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_4	;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_4;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_4	;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_4	   ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_4	;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_4	   ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_4	;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_4	;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_4;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_4	;	        //	TRUE: die rechte Seite wird geschweißt
    
      //RoboterVariable 
    SPS_ROB_BOOL_41  :=  true;                                          //ROB Rezept_4
    SPS_ROB_1_BOOL_20  :=  true;                                        //ROB_1 Rezept_4
     ELSE  
    SPS_ROB_BOOL_41  :=  FALSE;                                          //ROB Rezept_4
    SPS_ROB_1_BOOL_20  :=  FALSE;                                        //ROB_1 Rezept_4
END_IF


if rezept_nr = 5 THEN
    

    
    //Bauteildaten links
    ROHR_OD_Links             :=	    ROHR_OD_L_HMI_5          ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_5      ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links          	  :=	ROHR_WD_L_HMI_5          ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_5	     ;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_5	     ;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_5  ;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_5	     ;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_5	         ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_5	     ;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_5	         ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_5	     ;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_5      ;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_5  ;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_5	     ;	        //	TRUE: die rechte Seite wird geschweißt
    
      //RoboterVariable 
    SPS_ROB_BOOL_42  :=  true;                                          //ROB Rezept_5
    SPS_ROB_1_BOOL_21  :=  true;                                        //ROB_1 Rezept_5
    ELSE  
    SPS_ROB_BOOL_42  :=  FALSE;                                          //ROB Rezept_5
    SPS_ROB_1_BOOL_21  :=  FALSE;                                        //ROB_1 Rezept_5
END_IF


if rezept_nr = 6 THEN
    

    
    //Bauteildaten links
    ROHR_OD_Links             :=	    ROHR_OD_L_HMI_6          ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_6      ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links          	  :=	ROHR_WD_L_HMI_6          ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_6	     ;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_6	     ;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_6  ;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_6	     ;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_6	         ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_6	     ;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_6	         ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_6	     ;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_6	     ;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_6  ;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_6	     ;	        //	TRUE: die rechte Seite wird geschweißt
    
     //RoboterVariable 
    SPS_ROB_BOOL_43  :=  true;                                          //ROB Rezept_6
    SPS_ROB_1_BOOL_22  :=  true;                                        //ROB_1 Rezept_6
     ELSE  
    SPS_ROB_BOOL_43  :=  FALSE;                                          //ROB Rezept_6
    SPS_ROB_1_BOOL_22  :=  FALSE;                                        //ROB_1 Rezept_6 
END_IF


if rezept_nr = 7 THEN
    

    
    //Bauteildaten links
    ROHR_OD_Links             :=	    ROHR_OD_L_HMI_7          ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_7      ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links          	  :=	ROHR_WD_L_HMI_7          ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_7	     ;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_7	     ;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_7  ;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_7	     ;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_7	         ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_7	     ;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_7	         ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_7	     ;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_7	     ;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_7  ;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_7	     ;	        //	TRUE: die rechte Seite wird geschweißt
    
      //RoboterVariable 
    SPS_ROB_BOOL_44  :=  true;                                          //ROB Rezept_7
    SPS_ROB_1_BOOL_23  :=  true;                                        //ROB_1 Rezept_7
     ELSE  
    SPS_ROB_BOOL_44  :=  FALSE;                                          //ROB Rezept_7
    SPS_ROB_1_BOOL_23  :=  FALSE;                                        //ROB_1 Rezept_7
      
END_IF



if rezept_nr = 8 THEN
    

    
    //Bauteildaten links
    ROHR_OD_Links             :=	    ROHR_OD_L_HMI_8          ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_8      ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links          	  :=	ROHR_WD_L_HMI_8          ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_8	     ;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_8	     ;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_8  ;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_8	     ;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_8	         ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_8	     ;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_8	         ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_8	     ;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_8	     ;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_8  ;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_8	     ;	        //	TRUE: die rechte Seite wird geschweißt
    
      //RoboterVariable 
    SPS_ROB_BOOL_45  :=  true;                                          //ROB Rezept_8
    SPS_ROB_1_BOOL_24  :=  true;                                        //ROB_1 Rezept_8
     ELSE  
    SPS_ROB_BOOL_45  :=  FALSE;                                          //ROB Rezept_8
    SPS_ROB_1_BOOL_24  :=  FALSE;                                        //ROB_1 Rezept_8
      
END_IF

if rezept_nr = 9 THEN
    

    
    //Bauteildaten links
    ROHR_OD_Links             :=	    ROHR_OD_L_HMI_9          ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_9      ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links          	  :=	ROHR_WD_L_HMI_9          ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_9	     ;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_9	     ;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_9  ;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_9	     ;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_9	         ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_9	     ;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_9	         ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_9	     ;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_9	     ;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_9  ;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_9	     ;	        //	TRUE: die rechte Seite wird geschweißt
    
      //RoboterVariable 
    SPS_ROB_BOOL_46  :=  true;                                          //ROB Rezept_9
    SPS_ROB_1_BOOL_25  :=  true;                                        //ROB_1 Rezept_9
     ELSE  
    SPS_ROB_BOOL_46  :=  FALSE;                                          //ROB Rezept_9
    SPS_ROB_1_BOOL_25  :=  FALSE;                                        //ROB_1 Rezept_9
      
END_IF



if rezept_nr = 10 THEN
    

    
    //Bauteildaten links
    ROHR_OD_Links             :=	    ROHR_OD_L_HMI_10          ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_10      ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links          	  :=	ROHR_WD_L_HMI_10          ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_10	  ;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_10	  ;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_10  ;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_10	      ;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_10	      ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_10	  ;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_10	      ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_10	  ;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_10	  ;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_10  ;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_10	      ;	        //	TRUE: die rechte Seite wird geschweißt
    
      //RoboterVariable 
    SPS_ROB_BOOL_47  :=  true;                                          //ROB Rezept_10
    SPS_ROB_1_BOOL_26  :=  true;                                        //ROB_1 Rezept_10
     ELSE  
    SPS_ROB_BOOL_47  :=  FALSE;                                          //ROB Rezept_10
    SPS_ROB_1_BOOL_26  :=  FALSE;                                        //ROB_1 Rezept_10
      
END_IF




if rezept_nr = 11 THEN
    

    
    //Bauteildaten links
    ROHR_OD_Links             :=	    ROHR_OD_L_HMI_11         ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_11     ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links          	  :=	ROHR_WD_L_HMI_11         ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_11     ;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_11     ;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_11 ;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_11      ;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_11         ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_11     ;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_11         ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_11     ;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_11     ;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_11 ;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_11	     ;	        //	TRUE: die rechte Seite wird geschweißt
    
      //RoboterVariable 
    SPS_ROB_BOOL_48  :=  true;                                          //ROB Rezept_11
    SPS_ROB_1_BOOL_27  :=  true;                                        //ROB_1 Rezept_11
     ELSE  
    SPS_ROB_BOOL_48  :=  FALSE;                                          //ROB Rezept_11
    SPS_ROB_1_BOOL_27  :=  FALSE;                                        //ROB_1 Rezept_11
      
END_IF

if rezept_nr = 12 THEN
    

    
    //Bauteildaten links
    ROHR_OD_Links             :=	    ROHR_OD_L_HMI_12         ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_12     ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links          	  :=	ROHR_WD_L_HMI_12         ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_12     ;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_12     ;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_12 ;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_12     ;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_12         ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_12     ;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_12         ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_12     ;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_12     ;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_12 ;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_12     ;	        //	TRUE: die rechte Seite wird geschweißt
    
      //RoboterVariable 
    SPS_ROB_BOOL_49  :=  true;                                          //ROB Rezept_12
    SPS_ROB_1_BOOL_28  :=  true;                                        //ROB_1 Rezept_12
     ELSE  
    SPS_ROB_BOOL_49  :=  FALSE;                                          //ROB Rezept_12
    SPS_ROB_1_BOOL_28  :=  FALSE;                                        //ROB_1 Rezept_12
      
END_IF

if rezept_nr = 13 THEN
    

    
    //Bauteildaten links
    ROHR_OD_Links             :=	    ROHR_OD_L_HMI_13         ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_13     ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links          	  :=	ROHR_WD_L_HMI_13         ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_13     ;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_13     ;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_13 ;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_13      ;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_13         ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_13     ;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_13         ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_13     ;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_13     ;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_13 ;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_13	     ;	        //	TRUE: die rechte Seite wird geschweißt
    
      //RoboterVariable 
    SPS_ROB_BOOL_50  :=  true;                                          //ROB Rezept_13
    SPS_ROB_1_BOOL_29  :=  true;                                        //ROB_1 Rezept_13
     ELSE  
    SPS_ROB_BOOL_50  :=  FALSE;                                          //ROB Rezept_13
    SPS_ROB_1_BOOL_29  :=  FALSE;                                        //ROB_1 Rezept_13
      
END_IF

if rezept_nr = 14 THEN
    

    
    //Bauteildaten links
    ROHR_OD_Links             :=	    ROHR_OD_L_HMI_14         ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_14     ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links          	  :=	ROHR_WD_L_HMI_14         ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_14     ;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_14     ;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_14 ;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_14	     ;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_14         ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_14     ;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_14         ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_14     ;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_14     ;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_14 ;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_14	     ;	        //	TRUE: die rechte Seite wird geschweißt
    
      //RoboterVariable 
    SPS_ROB_BOOL_51  :=  true;                                          //ROB Rezept_14
    SPS_ROB_1_BOOL_30  :=  true;                                        //ROB_1 Rezept_14
     ELSE  
    SPS_ROB_BOOL_51  :=  FALSE;                                          //ROB Rezept_14
    SPS_ROB_1_BOOL_30  :=  FALSE;                                        //ROB_1 Rezept_14
      
END_IF


if rezept_nr = 15 THEN
    

    
    //Bauteildaten links
    ROHR_OD_Links             :=	    ROHR_OD_L_HMI_15         ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_15     ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links          	  :=	ROHR_WD_L_HMI_15         ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_15     ;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_15     ;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_15 ;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_15	     ;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_15         ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_15     ;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_15         ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_15     ;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_15     ;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_15 ;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_15	     ;	        //	TRUE: die rechte Seite wird geschweißt
    
      //RoboterVariable 
    SPS_ROB_BOOL_52  :=  true;                                          //ROB Rezept_15
    SPS_ROB_1_BOOL_31  :=  true;                                        //ROB_1 Rezept_15
     ELSE  
    SPS_ROB_BOOL_52  :=  FALSE;                                          //ROB Rezept_15
    SPS_ROB_1_BOOL_31  :=  FALSE;                                        //ROB_1 Rezept_15
      
END_IF


if rezept_nr = 16 THEN
    

    
    //Bauteildaten links
    ROHR_OD_Links             :=	    ROHR_OD_L_HMI_16         ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_16     ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links          	  :=	ROHR_WD_L_HMI_16         ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_16     ;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_16     ;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_16 ;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_16	     ;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_16         ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_16     ;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_16         ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_16     ;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_16     ;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_16 ;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_16	     ;	        //	TRUE: die rechte Seite wird geschweißt
    
      //RoboterVariable 
    SPS_ROB_BOOL_53  :=  true;                                          //ROB Rezept_16
    SPS_ROB_1_BOOL_32  :=  true;                                        //ROB_1 Rezept_16
     ELSE  
    SPS_ROB_BOOL_53  :=  FALSE;                                          //ROB Rezept_16
    SPS_ROB_1_BOOL_32  :=  FALSE;                                        //ROB_1 Rezept_16
      
END_IF
    

if rezept_nr = 17 THEN
    

    
    //Bauteildaten links
    ROHR_OD_Links             :=	    ROHR_OD_L_HMI_17         ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_17     ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links          	  :=	ROHR_WD_L_HMI_17         ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_17     ;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_17     ;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_17 ;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_17	     ;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_17         ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_17     ;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_17         ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_17     ;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_17     ;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_17 ;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_17	     ;	        //	TRUE: die rechte Seite wird geschweißt
    
      //RoboterVariable 
    SPS_ROB_BOOL_54  :=  true;                                          //ROB Rezept_17
    SPS_ROB_1_BOOL_33  :=  true;                                        //ROB_1 Rezept_17
     ELSE  
    SPS_ROB_BOOL_54  :=  FALSE;                                          //ROB Rezept_17
    SPS_ROB_1_BOOL_33  :=  FALSE;                                        //ROB_1 Rezept_17
      
END_IF


if rezept_nr = 18 THEN
    

    
    //Bauteildaten links
    ROHR_OD_Links             :=	    ROHR_OD_L_HMI_18         ;	        //	Rohraussendurchmesser links
    GEHAEUSE_OD_L       	      :=	GEHAEUSE_OD_L_HMI_18     ;	        //	Gehäusedurchmesser links
    ROHR_WD_Links          	  :=	ROHR_WD_L_HMI_18         ;	        //	Wanddicke links
    GEHAEUSE_WD_L	          :=	GEHAEUSE_WD_L_HMI_18     ;	        //	Wanddicke links
    ROHR_LAENGE_Links	      :=	ROHR_LAENGE_L_HMI_18     ;	        //	Rohrlänge links
    GEHAEUSE_LAENGE_L	      :=	GEHAEUSE_LAENGE_L_HMI_18 ;	        //	Gehäuselänge links
    SCHWEISSEN_L	          :=	SCHWEISSEN_L_HMI_18	     ;	        //	TRUE: die linke Seite wird geschweißt
    
    //Bauteildaten rechts					
    ROHR_OD_Rechts	          :=	ROHR_OD_R_HMI_18         ;	        //	Rohraussendurchmesser rechts
    GEHAEUSE_OD_R	          :=	GEHAEUSE_OD_R_HMI_18     ;	        //	Gehäusedurchmesser rechts
    ROHR_WD_Rechts	          :=	ROHR_WD_R_HMI_18         ;	        //	Wanddicke rechts
    GEHAEUSE_WD_R	          :=	GEHAEUSE_WD_R_HMI_18     ;	        //	Wanddicke rechts
    ROHR_LAENGE_Rechts	      :=	ROHR_LAENGE_R_HMI_18     ;	        //	Rohrlänge rechts
    GEHAEUSE_LAENGE_Rechts	  :=	GEHAEUSE_LAENGE_R_HMI_18 ;	        //	Gehäuselänge rechts
    SCHWEISSEN_R	          :=	SCHWEISSEN_R_HMI_18	     ;	        //	TRUE: die rechte Seite wird geschweißt
    
      //RoboterVariable 
    SPS_ROB_BOOL_55  :=  true;                                          //ROB Rezept_18
    SPS_ROB_1_BOOL_34  :=  true;                                        //ROB_1 Rezept_18
     ELSE  
    SPS_ROB_BOOL_55  :=  FALSE;                                          //ROB Rezept_18
    SPS_ROB_1_BOOL_34  :=  FALSE;                                        //ROB_1 Rezept_18
      
END_IF
*)