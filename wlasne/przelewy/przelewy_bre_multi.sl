///////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//
// Perseus Spolka z o.o 
// Wszystkie prawa zastrzezone
// 
// Data utworzenia: 2003.12.03
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// 
// czytanie plik z danymi z BRE MT940
// 
/////////////////////////////////////////////////////////////////////////////
% REJESTR-KONT-DLA-KL.ALG
VATPARAM_KLSYM := kl_sym
INFO_TXT := ""
RejOp["W:OtworzRej1","PLANRODZ.RJR"]
RejOp["W:ZmienKluczRej","2"]
ExDialogOp["IdzDoDialogu","WIELE_KONT_DLA_KLIENTA"]
RejOp["W:ZamknijRej",""]
//
% WIELE_KONT_DLA_KLIENTA.DLG
##DEFWINDOW = 15,21,,77,ACPHS,,,,,"Wykaz kont" 
PRZYCISK_CANCELID = 2
##99,DTL,D,,"Konto      Nazwa konta",,&&lwhite/blue
##400,D,ADPH,,"Dane kontrahenta",,,,,,DIALOG:RAPORTY_MULTI_INFO_KL
##401,D,ADPH,,"Szczeg|o|ly przelewu",,,,,,DIALOG:RAPORTY_MULTI_INFO_ZAP
##0,,ADP,,"%W%ybierz"
##1,,ADP,,@4
##2,,ADP,,@5       
##10,,ADP,,"Plan kont"
##50,DZ,AC
##20,D,AC,,,,&&lblue/lwhite,,,,ZMIENNA:VATPARAM_KLSYM
##21,D,0,,,,&&lblue/lwhite,,,,ZMIENNA:INFO_TXT
##100,0,ACPM,,,,,,,,MENU_NA_REKORDY:KLKONTOMENU,W,JEDENKLUCZ,2

 #0          #  #1          #              #10         #
 

 
#100
                                                        #100<

 #21                                                   #

 #400                         #401                         


                           #400                        #401
//
% TABLICA-AKCJI-WIELE_KONT_DLA_KLIENTA
"AKCJA-PRZED-WYSWIETLENIEM",WIELE_KONT_DLA_KLIENTA-PRZED
"AKCJA-BUTTON0",WIELE_KONT_DLA_KLIENTA-AKCEPTUJESZ
"AKCJA-BUTTON10",WIELE_KONT_DLA_KLIENTA-PLAN
"AKCJA-LINIAMENU100",WIELE_KONT_DLA_KLIENTA-LINIA100
//
% WIELE_KONT_DLA_KLIENTA-PRZED.ALG
ExDialogOp["ZmienNaglowek","Wykaz kont dla kontrahenta :" + VATPARAM_klsym]
ExDialogOp["UstawMenuKlucz","100:"+VATPARAM_KLSYM]
ExDialogOp["ustawfiltralg","100:SL.IMPORT_BRE_MULTI->kontrahent_filtr_plan"]
exdialogop["idzdopozycji","100"]

RejOp["W:WezPierwszyRek",""]
callalg["WIELE_KONT_DLA_KLIENTA-LINIA100-X"]

% WIELE_KONT_DLA_KLIENTA-PLAN.ALG
finnmenufunkcja[129,""]
exdialogop["wyswietlpozycje","100"]

% WIELE_KONT_DLA_KLIENTA-FILTR.ALG
  A_OK := .T.
//  if (strin["204",rejwezp_s["w:plan_symbol"]] > -1) A_OK := .T.
  
% WIELE_KONT_DLA_KLIENTA-AKCEPTUJESZ.ALG
if (not(exdialogop["pusteokno","100"])) goto dalej
 D_STRING := ""
 goto koniec
dalej:
D_STRING := rejwezp_s["w:plan_symbol"]
koniec:
REZYGNUJESZ := .N.
ExDialogOp["KoniecWykonywania",""]

% WIELE_KONT_DLA_KLIENTA-LINIA100-X.ALG
if (exdialogop["pusteokno","100"]) ExitAlg[0]
k := strcut[rejwezp_s["w:plan_symbol"],0,4]
info_txt := ""
if (finnop["znajdzdok",k]) info_txt := k_sym+" " + k_nazwa

% WIELE_KONT_DLA_KLIENTA-LINIA100.ALG
callalg["WIELE_KONT_DLA_KLIENTA-LINIA100-X"]
exdialogop["wyswietlpozycje","21"]
//
% KLKONTOMENU.MEN
D = ,"",A
200,,,,,"Konto"
201,,,,,"Nazwa"

///////////////////////////////////////////////////////////////////////////////////////////////
//
% REJESTR-KONT-DLA-KL-SYM.ALG
VATPARAM_KLSYM := kl_sym
INFO_TXT := ""
RejOp["W:OtworzRej1","PLANRODZ.RJR"]
RejOp["W:ZmienKluczRej","1"]
ExDialogOp["IdzDoDialogu","WIELE_KONT_DLA_KL_SYM"]
RejOp["W:ZamknijRej",""]
//
% WIELE_KONT_DLA_KL_SYM.DLG
##DEFWINDOW = 15,21,,77,ACPHS,,,,,"Wykaz kont" 
PRZYCISK_CANCELID = 2
##99,DTL,D,,"Konto      Nazwa konta",,&&lwhite/blue
##401,D,ADPH,,"Szczeg|o|ly przelewu",,,,,,DIALOG:RAPORTY_MULTI_INFO_ZAP1
##0,,ADP,,"%W%ybierz"
##1,,ADP,,@4
##2,,ADP,,@5       
##10,,ADP,,"Plan kont"
##50,DZ,AC
##20,D,AC,,,,&&lblue/lwhite,,,,ZMIENNA:VATPARAM_KLSYM
##21,D,0,,,,&&lblue/lwhite,,,,ZMIENNA:INFO_TXT
##100,0,ACPM,,,,,,,,MENU_NA_REKORDY:KL_SYMKONTOMENU,W,KLUCZ,1

 #0          #  #1          #              #10         #
 
 #21                                                   #

 
#100


                                                        #100<

                                                        
 #401                         
                                                       #401
//
% TABLICA-AKCJI-WIELE_KONT_DLA_KL_SYM
"AKCJA-PRZED-WYSWIETLENIEM",WIELE_KONT_DLA_KL_SYM-PRZED
"AKCJA-BUTTON0",WIELE_KONT_DLA_KL_SYM-AKCEPTUJESZ
"AKCJA-BUTTON10",WIELE_KONT_DLA_KL_SYM-PLAN
"AKCJA-LINIAMENU100",WIELE_KONT_DLA_KL_SYM-LINIA100
//
% WIELE_KONT_DLA_KL_SYM-PRZED.ALG
ExDialogOp["ZmienNaglowek","Wykaz kont dla konta :" + VATPARAM_klsym]
//ExDialogOp["UstawMenuKlucz","100:"+VATPARAM_KLSYM]
ExDialogOp["ustawfiltralg","100:SL.IMPORT_BRE_MULTI->konto_filtr_plan"]
exdialogop["idzdopozycji","100"]
RejOp["W:WezPierwszyRek",""]
rejop["W:Znajdzrek",VATPARAM_klsym]
callalg["WIELE_KONT_DLA_KL_SYM-LINIA100-X"]

% WIELE_KONT_DLA_KL_SYM-PLAN.ALG
finnmenufunkcja[129,""]
exdialogop["wyswietlpozycje","100"]

% WIELE_KONT_DLA_KL_SYM-FILTR.ALG
  A_OK := .T.
//  if (strin["204",rejwezp_s["w:plan_symbol"]] > -1) A_OK := .T.
  
% WIELE_KONT_DLA_KL_SYM-AKCEPTUJESZ.ALG
if (not(exdialogop["pusteokno","100"])) goto dalej
 D_STRING := ""
 goto koniec
dalej:
D_STRING := rejwezp_s["w:plan_symbol"]
koniec:
REZYGNUJESZ := .N.
ExDialogOp["KoniecWykonywania",""]

% WIELE_KONT_DLA_KL_SYM-LINIA100-X.ALG
if (exdialogop["pusteokno","100"]) ExitAlg[0]
k := strcut[rejwezp_s["w:plan_symbol"],0,4]
info_txt := ""
if (finnop["znajdzdok",k]) info_txt := k_sym+" " + k_nazwa

% WIELE_KONT_DLA_KL_SYM-LINIA100.ALG
callalg["WIELE_KONT_DLA_KL_SYM-LINIA100-X"]
exdialogop["wyswietlpozycje","21"]
//
% KL_SYMKONTOMENU.MEN
D = ,"",A
200,,,,,"Konto"
201,,,,,"Nazwa"
///////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////
% XZNAK.ALG 
  lp := 1
  temp1 := ""
  temp2 := ""
  petla:
  czy := StrIn[znaczek,d_string]
  if (czy = -1) ExitAlg[0]
  temp1 := StrCut[d_string,0,czy]
  temp2 := StrCut[d_string,czy+lp,StrLen[d_string]-czy]
  d_string := temp1+temp2
  goto petla
  ExitALg[0]
//
% XZNAKI.ALG
// zmienna wczesnie do badania
// d_string := string  
  if (d_string = "") ExitAlg[0]
  znaczek := " "
  CallAlg["xznak"]
  znaczek := "-"
  CallAlg["xznak"]
//
% REJDEFTABLE
%<<REJDEFTABLE
,0,0,"BRE_MULTI_RAPORT.RJR",przelew\bre_multi_raport,1	            # naglowek
,0,0,"BRE_MULTI_RAP_N.RJR",przelew\bre_multi_raport_ngl,1	          # naglowek
,0,0,"BRE_MULTI_RAP_Z.RJR",przelew\bre_multi_raport_zap,1	          # zapisy
,0,0,"BRE_MULTI_RAP_ZT.RJR",przelew\bre_multi_raport_zapt,1	        # zapisy transakcje
,0,0,"BRE_MULTI_RAP_ZK.RJR",przelew\bre_multi_raport_zapk,1	        # zapisy klasyfikacje
,0,0,"BRE_INMULTI.RJR",bre_inmulti,2		   	    	            # tmp do importu
,0,0,"BRE_IZMULTI.RJR",bre_izmulti,2		    		            # tmp do importu
,0,0,"BRE_IZTMULTI.RJR",.,2		           		                # tmp do zapisy transakcje
,0,0,"BRE_IZKMULTI.RJR",.,2		           		                # tmp do zapisy klasyfikacje
// ----------------------------------------------------------
,0,0,"BRE_MULTI_TYP.RJR",przelew\bre_multi_typ,1	                # typ przelewow
//////////////////////////////////////////////////////////////////////////////

% BRE_MULTI_TYP.RJR
1
1
BRE_MULTI_TYP
% BRE_MULTI_TYP.DBF
0,log,,,,,D
1,string,3,2,1           # typ
2,string,30              # opis operacji
3,string,26,2,1          # konto bankowe
10,2000                  # konto w planie kont
11,2002                  # konto w planie kont KLS
12,2000                  # konto w planie kont
13,2002                  # konto w planie kont KLS
14,2002                  # konto w planie kont KLS 2
15,2002                  # konto w planie kont KLS 2
16,log                   # przesuniecie daty kursu dla typu
17,log                   # karta platnicza
18,string,20             # po tekscie nr karty
3,0,,,2
1,0,,,2

% BRE_MULTI_TYP.DIC
"mt_typ",1,Estring,"Typ"
"mt_opis",2,Estring,"Opis operacji"
"mt_konto",3,Estring,"Konto bankowe"
"mt_konto_wn",10,Estring,"Konto WM"
"mt_konto_wn_kls",11,Estring,"Konto WN KLS"
"mt_konto_ma",12,Estring,"Konto MA"
"mt_konto_ma_kls",13,Estring,"Konto MA KLS"
"mt_konto_wn_kls2",14,Estring,"Konto WN KLS 2"
"mt_konto_ma_kls2",15,Estring,"Konto MA KLS 2"
"mt_kurs",16,Elog,"Kurs wsteczny"
"mt_karta",17,Elog,"Karta p|latnicza"
"mt_karta_opis",18,Estring,"Po tekst"
//
% MULTI_TYP-EDYCJA.DIC
"BRE_MULTI_TYP",0

% VIEW_MULTI_TYP.MEN
D=80,"",AB
LINIA-DIALOG = MULTI_TYP-EDYCJA,"Kolumny"
1,,,,3,"Typ"
2,,,,30,"Opis"
3,,,,26,"Konto"
12,,,,10,"(D) Konto Wn "
10,,,,10,"(C) Konto Ma"
//
% BRE_MULTI_TYP-WAR.BOX
D = "Warunek wyszukiwania i filtrowania"
%<MULTI_TYP-WAR.XXX
//
% MULTI_TYP-WAR.XXX
"Typ",1,A
"Opis operacji",2,A
"Konto bankowe",3,A
"Konto WM",10,A
"Konto WN KLS",11,A
"Konto WN KLS 2",14,A
"Konto MA",12,A
"Konto MA KLS",13,A
"Konto MA KLS 2",15,A
"Kurs wsteczny",16,A

% VIEW_MULTI_TYP.DLG
PRZYCISK_CANCELID = 0
##DEFWINDOW = 2,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Lista typ|ow operacji"
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY
##101,0,P,,,,,,,,MENU_ROZWIJANE:VIEW_MULTI_TYP-MENU
 #101                                                                     #
 
 
 #100                                                                      #
//
% VIEW_MULTI_TYP-MENU
P = 3,,ADS
*0,@5
*90," Operacje"
2," Z%m%ie|n dane"
7," Rozpisz dekret na wszystkie konta"

3," %U%su|n typ"
*91," Szukaj"
4,@8
5,@9

6,@10

% TABLICA-SL-AKCJI-VIEW_MULTI_TYP
"AKCJA-PRZED-WYSWIETLENIEM",IMPORT_BRE_MULTI->ustaw_dialog_VIEW_MULTI_TYP
"AKCJA-BUTTON0",IMPORT_BRE_MULTI->zamknij_dialog_VIEW_MULTI_TYP
"AKCJA-BUTTON2",IMPORT_BRE_MULTI->zmien_VIEW_MULTI_TYP
"AKCJA-BUTTON3",IMPORT_BRE_MULTI->usun_VIEW_MULTI_TYP
"AKCJA-BUTTON4",IMPORT_BRE_MULTI->szukaj_VIEW_MULTI_TYP
"AKCJA-BUTTON5",IMPORT_BRE_MULTI->szukaj_next_VIEW_MULTI_TYP
"AKCJA-BUTTON6",IMPORT_BRE_MULTI->filtr_VIEW_MULTI_TYP
"AKCJA-BUTTON7",IMPORT_BRE_MULTI->rozpisz_VIEW_MULTI_TYP
// 
% ZMIEN-VIEW_MULTI_TYP.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Zmiana danych"
##200,DZ,ADPH,,"(C) Dekret Ma"
##201,DZ,ADPH,,"(D) Dekret Wn"
##0,,ADP,,@3
##1,,ADP,,@4
##10,D,P,,,,,,,,POLE:0a:mt_typ
##11,D,P,,,,,,,,POLE:0a:mt_opis
##12,D,P,,,,,,,,POLE:0a:mt_konto
##20,0,ADP,,,,,,,,POLE:0a:mt_konto_wn
##21,0,P,,,,,,,,POLE:0a:mt_konto_wn_kls
##22,0,P,,,,,,,,POLE:0a:mt_konto_wn_kls2
##30,0,ADP,,,,,,,,POLE:0a:mt_konto_ma
##31,0,P,,,,,,,,POLE:0a:mt_konto_ma_kls
##32,0,P,,,,,,,,POLE:0a:mt_konto_ma_kls2
##40,0,P,,"nie",,,,,,POLE:0a:mt_kurs,,A,1,"N"
##41,0,P,,"tak",,,,,,POLE:0a:mt_kurs,,,1,"T"
##42,0,P,,"nie",,,,,,POLE:0a:mt_karta,,A,2,"N"
##43,0,P,,"tak",,,,,,POLE:0a:mt_karta,,,2,"T"
##44,0,P,,,,,,,,POLE:0a:mt_karta_opis

 Typ ............: #10 #
 Opis ...........: #11                                          #
 Konto bankowe ..: #12                              #
 
 Kurs poprzedni .: #40 # #41 #
 Karta p|latnicza : #42 # #43 #    Po tek|scie ..: #44          #
 
 
 #200                             #201
 Konto ........: #20          #   Konto .......: #30          #

 Klasyfikacja .: #21          #   Klasyfikacja : #31          #
 Klasyfikacja .: #22          #   Klasyfikacja : #32          #
                               #200                            #201
                                                                
                                                                
                 #0            #                 #1            #
//
% TABLICA-SL-AKCJI-ZMIEN-VIEW_MULTI_TYP
"AKCJA-BUTTON0",IMPORT_BRE_MULTI->zapisz_ZMIEN_VIEW_MULTI_TYP

//////////////////////////////////////////////////////////////////////////////
//
% BRE_MULTI_RAPORT.RJR
1
1
BRE_MULTI_RAPORT
//
% BRE_MULTI_RAPORT.DBF
0,log,,,,,D
1,ulong,,,1,,NM        # numer rekordu
2,string,16,,2         # numer raportu
3,ydate                # data raportu
4,string,26            # numer konta bankowgo
5,string,3             # waluta
6,xkwota,,x            # stan poczatkowy
7,xkwota,,x            # stan koncowy
8,xkwota,,x            # liczba zapisow
80,dic,,52             # status
81,2000                # konto w planie kont
82,string,80,,3        # plik wczytany
2,0,,,4
4,0,,,4
//
% BRE_MULTI_RAPORT.DIC
"m_id",1,Ekwota,"id"
"m_numer",2,Estring,"Raport"
"m_data",3,Edata,"Data raportu"
"m_nrkonta",4,Estring,"Numer konta bankowego"
"m_waluta",5,Estring,"Waluta"
"m_kw_p",6,Ekwota,"Stan pocz|atkowy"
"m_kw_k",7,Ekwota,"Stan ko|ncowy"
"m_zap",8,Ekwota,"Zapis|ow"
"m_status",80,Estring,"Status"
"m_konto_plan",81,Estring,"Konto w planie kont"
"m_plik",82,Estring,"Plik importowany"
//
% MULTI_RAPORT-EDYCJA.DIC
"BRE_MULTI_RAPORT",0

% MULTI_RAPORT.MEN
D=80,"",AB
LINIA-DIALOG = MULTI_RAPORT-EDYCJA,"Kolumny"
2,,,,12,"Raport"
4,,,,26,"Konto"
5,,,,3,"ISO"
6,,,,10,"Stan pocz."
7,,,,10,"Stan ko|n."
80,,,,6,"Status"

% BRE_MULTI_RAPORT.BOX
D = "Nag|l|owek raportu"
%<MULTI_RAPORT-WAR.XXX
//
% BRE_MULTI_RAPORT-WAR.BOX
D = "Warunek wyszukiwania i filtrowania"
%<MULTI_RAPORT-WAR.XXX
//
% MULTI_RAPORT-WAR.XXX
"Nr.raportu",2,A
"Data raportu",3,A
"Numer konta bankowego",4,A
"Waluta",5,A
"Stan pocz|atkowy",6,A
"Stan ko|ncowy",7,A
"Zapis|ow",8,A
"Status",80,A
"Konto w planie kont",81,A
"Plik importowany",82,A
// --------------------------------------------------------------
//
// --------------------------------------------------------------
% BRE_MULTI_RAP_N.RJR
90
2
BRE_MULTI_RAP_N
//
% BRE_MULTI_RAP_N.DBF
%<BRE_INMULTI.DBF
90,0,,,2
//
% BRE_MULTI_RAP_N.DIC
%<BRE_INMULTI.DIC
"m_id",90,Ekwota,"m_id"
//
% BRE_INMULTI.RJR
1
1
BRE_INMULTI
//
% BRE_INMULTI.DBF
0,log,,,,,D
1,ulong,,,1,,NM        # numer rekordu
2,string,16            # :20: numer ref RRRRMMDD-Y
3,string,35            # :25: rachunek
4,string,8             # :28C: numer wyciagu xxxx/yyy
5,string,1             # :60 F/M
6,string,1             # :60F: C/D
7,string,6             # :60D:C RRMMDD
8,string,3             # :60D:CRRMMDD ISO (waluta)
9,string,15            # :60D:CRRMMDDISOXXXXXX,XX 15 kwota salda
10,string,1            # :62 F/M
11,string,1            # :62F: C/D
12,string,6            # :62D:C RRMMDD
13,string,3            # :62D:CRRMMDD ISO (waluta)
14,string,15           # :62D:CRRMMDDISOXXXXXX,XX 15 kwota salda
90,ulong               # do naglowka
//
% BRE_INMULTI.DIC
"in_id",1,Ekwota,"ID"
"in_20",2,Estring,":20: Raport"
"in_25",3,Estring,":25: Rachunek"
"in_28c",4,Estring,":28C: Numer wyci|agu"
"in_60",5,Estring,":60: Poczatek F/M"
"in_600",6,Estring,":60: C/D"
"in_601",7,Estring,":60: RRMMDD"
"in_602",8,Estring,":60: ISO"
"in_603",9,Estring,":60: Saldo"
"in_62",10,Estring,":62: Koniec F/M"
"in_620",11,Estring,":62: C/D"
"in_621",12,Estring,":62: RRMMDD"
"in_622",13,Estring,":62: ISO"
"in_623",14,Estring,":62: Saldo"
//
% POKAZ_INMULTI-WAR
"Numer raportu",2
"Rachunek",3
"Numer wyci|agu",4
"Definicja 60:",,T
"F/M",5
"C/D",6
"Data ksi|egowania RRMMDD",7
"Waluta ISO",8
"Kwota S.pocz|atkowego",9
"Definicja 62:",,T
"F/M",10
"C/D",11
"Data ksi|egowania RRMMDD",12
"Waluta ISO",13
"Kwota S.ko|ncowego",14
"",,T
"Definicja :",,T
"F - S.pocz|atkowe / M - S.po|srednie",,T
"C - Ma / D - Winien",,T
//
% BRE_MULTI_RAP_N.BOX
D = "Szczeg|o|ly nag|l|owka"
%<POKAZ_INMULTI-WAR
//
% POKAZ_INMULTI-WAR.BOX
D = "Warunek wyszukiwania i filtrowania"
"Numer raportu",2,A
"Rachunek",3,A
"Numer wyci|agu",4,A
"F/M",5,A
"C/D",6,A
"Data ksi|egowania RRMMDD",7,A
"Waluta ISO",8,A
"Kwota S.pocz|atkowego",9,A
"F/M",10,A
"C/D",11,A
"Data ksi|egowania RRMMDD",12,A
"Waluta ISO",13,A
"Kwota S.ko|ncowego",14,A
//
% MULTI_RAP_N-EDYCJA.DIC
"BRE_MULTI_RAP_N",0

% MULTI_RAP_N.MEN
D=80,"",AB
LINIA-DIALOG = MULTI_RAP_N-EDYCJA,"Kolumny"
4,,,,5,"Numer"
// --------------------------------------------------------------
//
// --------------------------------------------------------------
% BRE_MULTI_RAP_Z.RJR
1
1
BRE_MULTI_RAP_Z
//
% BRE_MULTI_RAP_Z.DBF
%<BRE_IZMULTI.DBF
80,xkwota,,x          # kwota zapisu
81,2100,,2            # kontrahent
82,string,20          # kontrahent plus
83,2000               # konto w planie kont
84,2103               # symbol transakcji
85,ulong              # id do modulu przelewow
88,log                # log
90,ulong,,,2          # numer rekordu
91,ulong,,,3          # id naglowka
100,xkwota,,x         # kwota zapisu w zl
1,0,,,4
90,0,,,4 
//
% BRE_MULTI_RAP_Z.DIC
%<BRE_IZMULTI.DIC
"iz_kwota_zap",80,Ekwota,"Kwota zapisu"
"iz_konto_kl_sym",81,Estring,"Symbol kontrahenta"
"iz_konto_kl_sym_plus",82,Estring,"Kontrahenta plus"
"iz_konto_plan",83,Estring,"Konto w planie kont"
"iz_transakcja",84,Estring,"Transakcja"
"iz_id_przelew",85,Ekwota,"Modu|l PRL"
"iz_log",88,Elog,"Dekret T/N"
"iz_id",90,Ekwota,"Lp zap."
"m_id",91,Ekwota,"Raport"
"iz_kwota_zap_zl",100,Ekwota,"Kwota zapisu w zl"
//
% BRE_IZMULTI.RJR
1
1
BRE_IZMULTI
% BRE_IZMULTI.DBF
0,log,,,,,D
1,ulong,,,1		       # klucz do naglowka
2,string,6             # :61 Data waluty RRMMDD
3,string,4             # MMDD data ksiegowania
4,string,2             # C/RC D/RD
5,string,1             # rodzaj waluty
6,string,15            # kwota
7,string,4             # NXXX kod operacji
8,string,16            # referencje banku
9,string,16            # dalesze referencje
10,string,3            # :86 XXX kod operacji
11,string,65           # 00> typ operacji
12,string,65           # 20> szczgó³y platonosci 1
13,string,65           # 21> szczgó³y platonosci 2
14,string,65           # 22> szczgó³y platonosci 3
15,string,65           # 23> szczgó³y platonosci 4
16,string,65           # 24> szczgó³y platonosci 5
17,string,65           # 25> szczgó³y platonosci 6
18,string,65           # 26> szczgó³y platonosci 7
19,string,65           # 27> szczgó³y platonosci 8
20,string,30           # 30> numer rozliczeniowy banku kontrahenta
21,string,30           # 31> numer rachunku kontrahenta
22,string,65           # 32> Nazwa kontrahenta 1
23,string,65           # 33> Nazwa kontrahenta 2
24,string,65           # 33> Nazwa kontrahenta 3

% BRE_IZMULTI.DIC
"in_id",1,Ekwota,"ID"
"iz_610",2,Estring,"Data Waluty RRMMDD"
"iz_611",3,Estring,"Data ksi|egowania MMDD"
"iz_612",4,Estring,"Operacja C/RC D/RD"
"iz_613",5,Estring,"Waluta ISO"
"iz_614",6,Estring,"Kwota"
"iz_615",7,Estring,"Kod operacji"
"iz_616",8,Estring,"Referencje 1"
"iz_617",9,Estring,"Referencje 2"
"iz_860",10,Estring,"XXX"
"iz_861",11,Estring,"Typ operacji"
"iz_862",12,Estring,"Info 1"
"iz_863",13,Estring,"Info 2"
"iz_864",14,Estring,"Info 3"
"iz_865",15,Estring,"Info 4"
"iz_866",16,Estring,"Info 5"
"iz_867",17,Estring,"Info 6"
"iz_868",18,Estring,"Info 7"
"iz_869",19,Estring,"Info 8"
"iz_8610",20,Estring,"Numer banku"
"iz_8611",21,Estring,"Numer rachunku"
"iz_8612",22,Estring,"Nazwa kontrahenta 1"
"iz_8613",23,Estring,"Nazwa kontrahenta 2"
"iz_8614",24,Estring,"Nazwa kontrahenta 3"
//
% MULTI_RAP_Z-EDYCJA.DIC
"BRE_MULTI_RAP_Z",0

% MULTI_RAP_Z.MEN
D=80,"",AB
LINIA-DIALOG = MULTI_RAP_Z-EDYCJA,"Kolumny zapisow"
88,,,,1,"D"
90,,,,3,"Lp."
4,,,,1,"R"
12,,,,26,"Tre|s|c"
80,,,,10,"Kwota"
83,,,,10,"Konto"
84,,,,20,"Transakcja"
//  
% BRE_MULTI_RAP_Z.BOX
D = "Szczeg|o|ly zapisu"
%<POKAZ_IZMULTI-WAR.BOX
//
% POKAZ_IZMULTI-WAR.BOX
D = "Warunek wyszukiwania i filtrowania"
"Data Waluty RRMMDD",2,A
"Data ksi|egowania MMDD",3,A
"Operacja C/RC D/RD",4,A
"Waluta ISO",5,A
"Kwota zapisu",6,A
"Kod NXXX",7,A
"Referencje 1",8,A
"Referencje 2",9,A
"Typ operacji",10,A
"Opis operacji",11,A
"Info 1",12,A
"Info 2",13,A
"Info 3",14,A
"Info 4",15,A
"Info 5",16,A
"Info 6",17,A
"Info 7",18,A
"Info 8",19,A
"Numer banku",20,A
"Numer rachunku",21,A
"Nazwa kontrahenta 1",22,A
"Nazwa kontrahenta 2",23,A
//
// --------------------------------------------------------------
% BRE_MULTI_RAP_ZT.RJR
91
3
BRE_MULTI_RAP_ZT
//
% BRE_MULTI_RAP_ZT.DBF
0,log,,,,,D
%<BRE_IZTMULTI.DBF
101,log                # czy kompensata
//
% BRE_MULTI_RAP_ZT.DIC,BRE_IZTMULTI.DIC
"it_kwota_zap",80,Ekwota,"Kwota zapisu"
"it_konto_kl_sym",81,Estring,"Symbol kontrahenta"
"it_konto_plan",82,Estring,"Konto w planie kont"
"it_transakcja",83,Estring,"Transakcja"
"it_konto_plan_kls",84,Estring,"Konto klasyfikacji w planie kont"
"it_transakcja_rodz",85,Estring,"Odb/Dos"
"it_kwota_zap_dew",86,Ekwota,"Kwota zapisu DEW"
"it_waluta",87,Estring,"Waluta"
"it_log",89,Elog,"?"
"it_id",90,Ekwota,"Raport zapis lp"
"m_id",91,Ekwota,"Raport"
"iz_id",92,Ekwota,"Raport zapis"
"it_kwota_zap_zl",100,Ekwota,"Kwota zapisu w zl"
"it_kompensata",101,Elog,"Kompensata"
// -------- tmp 
% BRE_IZTMULTI_LOOK.DIC
"BRE_IZTMULTI",0
//
% BRE_IZTMULTI.MEN 
D=80,"",AB
LINIA-DIALOG = BRE_IZTMULTI_LOOK,"Transakcje"
81,,,,6,"Symbol"
82,,,,14,"Konto"
85,,,,3,"Rodz."
83,,,,20,"Transakcja"
80,,,,12,"Saldo"
% BRE_IZTMULTI_DEW.MEN 
D=80,"",AB
LINIA-DIALOG = BRE_IZTMULTI_LOOK,"Transakcje"
81,,,,6,"Symbol"
82,,,,14,"Konto"
85,,,,3,"Rodz."
83,,,,20,"Transakcja"
87,,,,3,"DEW"
86,,,,10,"Saldo DEW"
80,,,,10,"Saldo PLN"
//
% BRE_IZTMULTI.RJR
0
0
BRE_IZTMULTI

ZAZNACZAJ-MENU:89
% BRE_IZTMULTI.DBF
1,ulong,,,1,,M        # id
80,xkwota,,x          # kwota zapisu
81,2100               # kontrahent
82,2000               # konto w planie kont
83,2103               # symbol transakcji
84,2002               # konto klasyfikacji w planie kont
85,string,3           # rodz transakcji
86,xkwota,,x          # kwota zapisu dew
87,dic,,0             # Waluta
89,log                # do zaznaczania
90,ulong              # id zapisu lp
91,ulong,,,3          # id naglowka
92,ulong              # id zapisu n
100,xkwota,,x         # kwota zapisu w zl
82,0,,,2
83,0,,,2
91,0,,,4
92,0,,,4
90,0,,,4
//
// --------------------------------------------------------------
% BRE_MULTI_RAP_ZK.RJR
91
3
BRE_MULTI_RAP_ZK
//
% BRE_MULTI_RAP_ZK.DBF
0,log,,,,,D
%<BRE_IZKMULTI.DBF
//
% BRE_MULTI_RAP_ZK.DIC,BRE_IZKMULTI.DIC
"ik_kwota_zap",80,Ekwota,"Kwota zapisu"
"ik_konto_plan",81,Estring,"Konto w planie kont"
"ik_id",90,Ekwota,"Raport zapis lp"
"m_id",91,Ekwota,"Raport"
"iz_id",92,Ekwota,"Raport zapis"
"ik_kwota_zap_zl",100,Ekwota,"Kwota zapisu w zl"
// -------- tmp 
% BRE_IZKMULTI.RJR
0
0
BRE_IZKMULTI
% BRE_IZKMULTI.DBF
1,ulong,,,1,,M        # id
80,xkwota,,x          # kwota zapisu
81,2002               # klasyfikacja
90,ulong              # id zapisu lp
91,ulong,,,3          # id naglowka
92,ulong              # id zapisu n
100,xkwota,,x         # kwota zapisu w zl
91,0,,,4
92,0,,,4
90,0,,,4
//
///////////////////////////////////////////////////////////////////////
% TABLICA-SL-AKCJI-POKAZ_RAPORTY_MULTI
"AKCJA-PRZED-WYSWIETLENIEM",IMPORT_BRE_MULTI->ustaw_dialog_raport
"AKCJA-BUTTON0",IMPORT_BRE_MULTI->zamknij_dialog_raport
"AKCJA-BUTTON4",IMPORT_BRE_MULTI->szukaj_raport
"AKCJA-BUTTON5",IMPORT_BRE_MULTI->szukaj_next_raport
"AKCJA-BUTTON6",IMPORT_BRE_MULTI->filtr_raport
"AKCJA-BUTTON20",IMPORT_BRE_MULTI->pokaz_info_rap
"AKCJA-BUTTON21",IMPORT_BRE_MULTI->pokaz_info_ngl
"AKCJA-BUTTON22",IMPORT_BRE_MULTI->pokaz_info_zap
"AKCJA-BUTTON23",IMPORT_BRE_MULTI->usun_raport
"AKCJA-BUTTON24",() = finnmenufunkcja(3013);
"AKCJA-BUTTON26",IMPORT_BRE_MULTI->raport_ksieguj
"AKCJA-BUTTON27",IMPORT_BRE_MULTI->raport_dekretuj
"AKCJA-BUTTON28",IMPORT_BRE_MULTI->raport_sprawdz_poprawnosc
"AKCJA-BUTTON30",IMPORT_BRE_MULTI->drukuj_raport
"AKCJA-BUTTON40",IMPORT_BRE_MULTI->lista_kontrahentow
"AKCJA-BUTTON41",IMPORT_BRE_MULTI->lista_typow
"AKCJA-BUTTON42",IMPORT_BRE_MULTI->zrob_liste_typow
"AKCJA-BUTTON43",finnmenufunkcja(129);
"AKCJA-BUTTON44",finnmenufunkcja(112);
"AKCJA-BUTTON45",IMPORT_BRE_MULTI->lista_kontrahentow_powiazanych
"AKCJA-BUTTON46",IMPORT_BRE_MULTI->lista_dekretow_przychodow
"AKCJA-BUTTON47",IMPORT_BRE_MULTI->lista_dekretow_rozchodow
"AKCJA-BUTTON48",finnmenufunkcja(151);
"AKCJA-BUTTON49",finnmenufunkcja(3003);
"AKCJA-BUTTON50",IMPORT_BRE_MULTI->lista_przelew_kontrahenta
"AKCJA-BUTTON90",IMPORT_BRE_MULTI->raport_zapis_usun_dekret
"AKCJA-BUTTON93",IMPORT_BRE_MULTI->raport_zapis_polacz_z_przelew
"AKCJA-BUTTON94",IMPORT_BRE_MULTI->lista_przelewow_kontrahenta(0)
"AKCJA-BUTTON95",IMPORT_BRE_MULTI->raport_dekretuj_rozpisz_kls
"AKCJA-BUTTON96",IMPORT_BRE_MULTI->lista_kont_do_kontrahenta
"AKCJA-BUTTON97",IMPORT_BRE_MULTI->lista_transakcji_kontrahenta
"AKCJA-BUTTON98",IMPORT_BRE_MULTI->raport_dekretuj_rozpisz_tra
"AKCJA-BUTTON99",IMPORT_BRE_MULTI->lista_kont_do_kontrahenta
"AKCJA-F2-POLE410",IMPORT_BRE_MULTI->lista_kontrahentow_f2(0)
"AKCJA-F2-POLE411",IMPORT_BRE_MULTI->lista_kontrahentow_f2(1)
"AKCJA-BUTTON412",IMPORT_BRE_MULTI->ustaw_status_view
"AKCJA-LINIAMENU100",IMPORT_BRE_MULTI->wyswietl_zap_raport
"AKCJA-LINIAMENU101",IMPORT_BRE_MULTI->wyswietl_zzap_raport
"AKCJA-LINIAMENU102",IMPORT_BRE_MULTI->wyswietl_info_dekret
"AKCJA-F2-POLE300",IMPORT_BRE_MULTI->wybierz_kontrahent_zap
"AKCJA-PO-POLU300",IMPORT_BRE_MULTI->wybierz_kontrahent_zap_po
"AKCJA-F2-POLE301",IMPORT_BRE_MULTI->wybierz_plan_zap
"AKCJA-PO-POLU301",IMPORT_BRE_MULTI->wybierz_plan_zap_po
"AKCJA-F2-POLE302",IMPORT_BRE_MULTI->wybierz_transakcje_zap
"AKCJA-PO-POLU302",IMPORT_BRE_MULTI->wybierz_transakcje_zap_po
//
% POKAZ_RAPORTY_MULTI.DLG
PRZYCISK_CANCELID = 0
##DEFWINDOW = 2,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wczytane raporty z systemu BRE MT940"
##103,0,P,,,,,,,,MENU_ROZWIJANE:RAPORT-MULTI-MENU
##400,D,ADPH,,"Dane kontrahenta",,,,,,DIALOG:RAPORTY_MULTI_INFO_KL
##401,D,ADPH,,"Szczeg|o|ly",,,,,,DIALOG:RAPORTY_MULTI_INFO_ZAP
##300,0,ADPH,,"Symbol",,,,,,POLE:c:iz_konto_kl_sym,2100:2
##301,0,ADPH,,"Konto",,,,,,POLE:c:iz_konto_plan,2000:2
##99,,0,,"<<",,&&lblue/yellow,&&yellow/lred
##302,G,ADPH,,"Transakcja",,,,,,POLE:c:iz_transakcja
##98,,0,,"%T%ransakcje",,&&lblue/yellow,&&yellow/lred
##95,,0,,"K%l%asyfikacje",,&&lblue/yellow,&&yellow/lred
##93,,0,,"Wyb|or z %P%RL",,&&lblue/yellow,&&yellow/lred
//##96,,0,,"Konta kontrahenta",,&&red/lwhite,&&yellow/lred
//##97,,0,,"Rozrachunki",,&&red/lwhite,&&yellow/lred
##90,,0,,"%U%su|n dekret",,&&lblue/yellow,&&yellow/lred
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY
##101,0,ACP,,"Nr",,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY
##102,0,ACP,,"Zapisy",,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY
##410,0,ADH,,"F2 wg.nazwy",,&&red/lwhite,&&lwhite/blue,,&&lwhite/blue,ZMIENNA:KL_NAZWA_KO
##411,0,ADH,,"F2 wg.adresu",,&&red/lwhite,&&lwhite/blue,,&&lwhite/blue,ZMIENNA:KL_ADRES_KO
##412,B,P,,,,&&red/lwhite,&&lwhite/blue,&&red/lwhite,&&red/lwhite,ZMIENNA:RAPORTY_STATUS,DIC:52
 #103                                                        # Status:#412 #


 #100
                                                                           #



#101   #102






 


      #101<                                                                #102<

                                                   #98        # #95         #
 #300     #  #301        ##99##302               # #93        # #90         #
                                                            
 
 #400                         #401                         #410            #

                                                          
                           #400                        #401#411            #
//
% RAPORTY_MULTI_INFO_KL.DLG
##200,D,0,,,,&&blue/white,,,,POLE:c:iz_8610
##201,D,0,,,,&&blue/white,,,,POLE:c:iz_8611
##202,D,0,,,,&&blue/white,,,,POLE:c:iz_8612
##203,D,0,,,,&&blue/white,,,,POLE:c:iz_8613
##204,D,0,,,,&&blue/white,,,,POLE:c:iz_8614
#201                               #
#202                               #
#203                               #
#204                               #
//
% RAPORTY_MULTI_INFO_ZAP.DLG
%<RAPORTY_MULTI_INFO_ZAP0.XXX
%<RAPORTY_MULTI_INFO_ZAP1.XXX
//
% RAPORTY_MULTI_INFO_ZAP1.DLG
%<RAPORTY_MULTI_INFO_ZAP0.XXX
%<RAPORTY_MULTI_INFO_ZAP2.XXX
//
% RAPORTY_MULTI_INFO_ZAP0.XXX
##200,D,0,,,,&&blue/white,,,,POLE:c:iz_862
##201,D,0,,,,&&blue/white,,,,POLE:c:iz_863
##202,D,0,,,,&&blue/white,,,,POLE:c:iz_864
##203,D,0,,,,&&blue/white,,,,POLE:c:iz_865
% RAPORTY_MULTI_INFO_ZAP1.XXX
#200                             #
#201                             #
#202                             #
#203                             #
% RAPORTY_MULTI_INFO_ZAP2.XXX
#200                             ##202                             #
#201                             ##203                             #
//
% RAPORT-MULTI-MENU
P = 3,,ADS
*0,@5
*91," Szukaj/Poka|z"
4,@8
5,@9
6,@10

43," Plan kont                           <F7>",,,,F7
44," Plan kont klasyfikacji              <F8>",,,,F8

40," Rejestr kontrahent|ow                <F6>",,,,F6
48," Kartoteka rozrachunkowa (konto)"
45," Rejestr kontrahent|ow powi|azanych"
24," Tabela kurs|ow walut"

49," Przegl|adanie wystawionych przelew|ow"

46," Dekrety dla przychod|ow (konta rozrachunkowe)"
47," Dekrety dla rozchod|ow (konta rozrachunkowe)"
*92," Informacje"
20," %I%nformacje o raporcie"
21," Szczeg|o|ly na%g%|l|owka zapisu"
22," Szczeg|o|ly zapisu"

96," Konta kontrahenta z zapisu"
97," Rozrachunki kontrahenta z zapisu"
94," Wystawione przelewy na kontrahenta z zapisu"
50," Wystawiony przelew z zapisu"

41," Typy operacji bankowych"
42," Zr|ob typy operacji bankowych z wyci|agu"
*93," Operacje"
27," %D%ekretuj raport"
28," %S%prawd|x poprawno|s|c raportu"
30," Druku%j% dekrety raportu"

26," Ksi|eguj r%a%port"

23," Usu|n wczytany raport"
////////////////////////////////////////////////////////////////////
//
//           FILTROWANIE KONTRAHENTOW 
//
////////////////////////////////////////////////////////////////////
//
% KONTRAHENT-FILTR-DANE.DLG
##1,D,0,,,,&&lblue/white,,,,POLE:k:kl_nip
##5,D,0,,,,&&lblue/white,,,,POLE:k:kl_nazwa1
##6,D,0,,,,&&lblue/white,,,,POLE:k:kl_nazwa2
##7,D,0,,,,&&lblue/white,,,,POLE:k:kl_kodmiasto
##8,D,0,,,,&&lblue/white,,,,POLE:k:kl_adres
##9,D,0,,,,&&lblue/white,,,,POLE:k:kl_nazwabanku
##10,D,0,,,,&&lblue/white,,,,POLE:k:kl_konto
##11,D,0,,,,&&lblue/white,,,,POLE:k:kl_telefon1
##12,D,0,,,,&&lblue/white,,,,POLE:k:kl_telefon2
##13,D,0,,,,&&lblue/white,,,,POLE:k:kl_telefax
##14,D,0,,,,&&lblue/white,,,,POLE:k:kl_telex
##15,D,0,,,,&&lblue/white,,,,POLE:k:kl_mail
##3,D,0,,,,&&lblue/white,,,,POLE:k:kl_regon
##4,D,0,,,,&&lblue/white,,,,POLE:k:kl_pesel
Nazwa #5                            # Bank #9                            #
      #6                            #      #10                           #
Adres #7                            # Nip  #1          # Regon #3        #
      #8                            #
//
% KONTRAHENT-FILTR.DLG
PRZYCISK_CANCELID = 11
##DEFWINDOW = 2,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Filtr na kontrahent|ow"
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY
##400,D,ADPH,,"Dane kontrahenta",,,,,,DIALOG:KONTRAHENT-FILTR-DANE
##401,D,ADPH,,"Dane kontrahenta z wyci|agu",,,,,,DIALOG:RAPORTY_MULTI_INFO_KL
##10,,AD,,"%W%ybierz",,&&blue/lwhite
##11,,AD,,@4,,&&blue/lwhite
##14,,ADP,,"Plan kont",,&&blue/lwhite
##13,,0,,"Z%a%pisz konto",,&&red/lwhite
##12,D,0,,,,&&lblue/lwhite,,,,ZMIENNA:KL_KONTO_KO
  
  
 #100                                                                      # 

 
 #401                                #10       #  #11       #    #14       #

                                  #401
                                     #13        #:#12                      #

 #400

 
                                                                           #
// 
% TABLICA-SL-AKCJI-KONTRAHENT-FILTR
"AKCJA-PRZED-WYSWIETLENIEM",IMPORT_BRE_MULTI->KONTRAHENT_FILTR_PRZED
"AKCJA-LINIAMENU100",() = exdialogop("wyswietlpozycje","400");
"AKCJA-BUTTON10",IMPORT_BRE_MULTI->KONTRAHENT_FILTR_WYBIERZ
"AKCJA-BUTTON11",IMPORT_BRE_MULTI->KONTRAHENT_FILTR_ZREZYGNUJ
"AKCJA-BUTTON13",IMPORT_BRE_MULTI->KONTRAHENT_FILTR_ZASTAP
"AKCJA-BUTTON14",finnmenufunkcja(129);
//
% KONTRAHENT-FILTR-EDYCJA.DIC
"REJESTRKL",0

% KONTRAHENT-FILTR-LISTA-NAZWA.MEN
D=80,"",AB
LINIA-DIALOG = KONTRAHENT-FILTR-EDYCJA,"Raporty"
2,,,,6,"Symbol"
5,,,,40,"Nazwa 1"
6,,,,20,"Nazwa 2"

% KONTRAHENT-FILTR-LISTA-ADRES.MEN
D=80,"",AB
LINIA-DIALOG = KONTRAHENT-FILTR-EDYCJA,"Raporty"
2,,,,6,"Symbol"
5,,,,30,"Nazwa"
7,,,,20,"Kod Miasto"
8,,,,30,"Adres"
//

% KONTRAHENT-WIELE-KONT.DLG
PRZYCISK_CANCELID = 11
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Kontrahenci o wsp|olnym koncie"
##100,0,ACP,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:KONTRAHENT-FILTR-LISTA-NAZWA,K,KLUCZ,1
##40,D,ADPH,,"Dane kontrahenta",,,,,,DIALOG:KONTRAHENT-FILTR-DANE
##41,D,ADPH,,"Dane kontrahenta z wyci|agu",,,,,,DIALOG:RAPORTY_MULTI_INFO_KL
##42,D,ADPH,,"Tre|s|c przelewu",,,,,,DIALOG:RAPORTY_MULTI_INFO_ZAP
##10,,AD,,"%W%ybierz",,&&blue/lwhite
##11,,AD,,@4,,&&blue/lwhite
##14,,ADP,,"Plan kont",,&&blue/lwhite
  
  #10       #  #11       #
  
 
 
 #100
 
 
 
 
                                                                           #

 
 #41                                  #42

                                   #41                                     #42


 #40

 
                                                                           #
// 
% TABLICA-AKCJI-KONTRAHENT-WIELE-KONT
"AKCJA-LINIAMENU100",KONTRAHENT-WIELE-KONT-V
% KONTRAHENT-WIELE-KONT-V.ALG
exdialogop["wyswietlpozycje","40"]

// =========================================================================
// =========================================================================
// =========================================================================
//
% TABLICA-SL-AKCJI-WYBIERZ-PLIK-IMPORT
"AKCJA-BUTTON0",IMPORT_BRE_MULTI->akceptuj_plik
"AKCJA-F2-POLE10",IMPORT_BRE_MULTI->wybierz_plik
//  
% WYBIERZ-PLIK-IMPORT.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Import danych z BRE MT940"
##0,,ADP,,@3
##1,,ADP,,@4
##10,0,ACP,,,,,,,,ZMIENNA:PLIK_WEJ,4003
##200,DZ,ADPH,,"Wybierz plik wej|sciowy:"
##30,0,P,,"nie",,,,,,ZMIENNA:PLIK_USUN,,A,1,"N"
##31,0,P,,"tak",,,,,,ZMIENNA:PLIK_USUN,,,1,"T"

 #200  

    #10                                                    #

                                                              #200<

  Po wczytaniu usun|a|c ? #30 # #31 #     #0      #  #1      #
//
% ZAMIEN-POLSKIE.ALG
D_STRING := KonwertujString[D_PARAM1,D_PARAM2]  
  
% SL.czytanie-danych-bre-multicache-raport
  
implements("IMPORT_BRE_MULTI");

define lista_przelew_kontrahenta()
{
  if (rejwezp_s("c:iz_612") == "C") {
    okalert("Zapis nie jest rozchodem z konta !");
    return;
  }
  if (pustepole("c:iz_id_przelew")) {
    okalert("Zapis nie jest powi|azany z wystawionymi przelewami !");
    return;
  }
  () = rejop("E:otworzrejsprawdz","PRZELEW.RJR");
  () = rejop("F:OtworzRejSprawdz","PRZEZAP.RJR");
  () = rejop("G:OtworzRejSprawdz","PRZEZAP1.RJR");
  () = rejop("e:zmienkluczrej","2");
  if (rejop("e:znajdzrek",string(rejwezp_k("c:iz_id_przelew")))) {
    ustawazmienna_S("ID_MODUL");
    ustawazmienna_L("DRUK",0);
    ustawazmienna_S("odl_key","3");
    ustawazmienna_L("ODL",0);
    ustawazmienna_S("konto_kontrahenta");
    () = callalg("przelew-modyfikuj-x");
  }  
  () = rejop("e:zamknijrej");
  () = rejop("f:zamknijrej");
  () = rejop("g:zamknijrej");
}
define lista_przelewow_kontrahenta(i)
{
  if (pustepole("c:iz_konto_kl_sym")) {
    okalert("Brak symbolu kontrahenta w zapisie !");
    return;
  }
  ustawazmienna_S("D_STRING",rejwezp_s("c:iz_konto_kl_sym"));
  if (i) {
    ustawazmienna_K("D_POS",0);
    ustawazmienna_K("REK_POS_PRL",0);
    () = callalg("PRZELEWY-KONTRAHENTA-WYBOR");
    if (dajazmienna_K("D_POS") == 400) {
      rejwstawp_k("c:iz_id_przelew",dajazmienna_K("REK_POS_PRL"));
      () = callalgfile("przelewy\\przelewy_bre_multi_dekret.sl","SL.DEKRET_BRE_MULTI->przepisz_ustal_wedlug_przelewow()");
      () = exdialogop("zmienrekordwmenu","102");
      callsl("IMPORT_BRE_MULTI->wyswietl_info_dekret");
    }
  } else {
    () = callalg("PRZELEWY-KONTRAHENTA");
  }
}
define lista_przelewow_all()
{
  if (not(rejwezp_s("c:iz_612") == "D")) {
    okalert("Tylko dla zapisu D jako przelew wychodz|acy !");
    return;
  }
  variable rpos = rejwezp_k("c:rejestrrekpos");
  ustawazmienna_S("KONTOBANK",rejwezp_s("a:m_konto_plan"));
  ustawazmienna_K("D_POS",0);
  ustawazmienna_K("REK_POS_PRL",0);
  () = callalg("WYBOR-LOOK-PRZELEW");
  
  if (dajazmienna_K("D_POS") == 400) {
    rejwstawp_k("c:iz_id_przelew",dajazmienna_K("REK_POS_PRL"));
    () = callalgfile("przelewy\\przelewy_bre_multi_dekret.sl","SL.DEKRET_BRE_MULTI->przepisz_ustal_wedlug_przelewow()");
  }
  () = exdialogop("zmienrekordwmenu","102");
  callsl("IMPORT_BRE_MULTI->wyswietl_info_dekret");
}

define raport_zapis_polacz_z_przelew()
{
  if (pustepole("c:iz_konto_kl_sym")) {
    lista_przelewow_all;
  } else {
    lista_przelewow_kontrahenta(1);
  }
}

private define nastring_polskie(s)
{
   ustawazmienna_S("D_STRING",s);
   s = tostr("#D_STRING#S");
   variable t = gl_konwertuj_import_polskie(s,"TXT-ISO-LATIN2-KONWTEXT");
   return t;
}
private define ustal_typ_kurs()
{
  variable ok;
  ok = 0;
  if (rejop("x:otworzrej","BRE_MULTI_TYP.RJR")) {
    variable key;
    key = rejwezp_s("c:iz_860")+"*"+rejwezp_s("a:m_nrkonta");
    if (rejop("x:znajdzrek",key)) {
      ok = rejwezp_l("x:mt_kurs");
    }
    () = rejop("x:zamknijrej");
  }  
  return ok;
}

define ustal_kwote_kursu()
{
 if (not(dajazmienna_S("KURS_WALUTA") == "PLN" )) {
    variable strona, dzien;
    if (rejwezp_s("c:iz_612") == "C") strona = 2;
    if (rejwezp_s("c:iz_612") == "D") strona = 1;
    if (rejwezp_s("c:iz_612") == "RC") strona = 4;
    if (rejwezp_s("c:iz_612") == "RD") strona = 3;
    
    variable b_i = rejwezp_k("c:in_id");
    () = rejop("b:zmienkluczrej","1");
    () = rejop("b:znajdzrek",string(b_i));
    
    ustawazmienna_D("kurs_data",rejwezp_d("a:m_data"));    
    if ((strona == 2) or (strona == 4)) () = callalg("wez-kurs-kupna");
    if ((strona == 1) or (strona == 3)) () = callalg("wez-kurs-sprzedazy");
    
    if (ustal_typ_kurs) {
        if ((strona == 1) or (strona == 3)) {
            dzien = rejwezp_s("b:in_601");
            ustawazmienna_D("kurs_data",stringnadate(strcut(dzien,0,2)+"."+strcut(dzien,2,2)+"."+strcut(dzien,4,2)));
//
            () = callalg("wez-kurs-kupna");
        } else {
            dzien = rejwezp_s("b:in_621");
            ustawazmienna_D("kurs_data",stringnadate(strcut(dzien,0,2)+"."+strcut(dzien,2,2)+"."+strcut(dzien,4,2)));
            () = callalg("wez-kurs-sprzedazy");
        }
    }
    () = rejop("b:zmienkluczrej","2");
  }        
}

define zrob_kwota_zl_zap(p)
{
    variable kwota,kwota_z;
    kwota_z = rejwezp_k(p+"_zl");
    kwota = kwota_z;
    if (not(dajazmienna_S("KURS_WALUTA") == "PLN")) {    
        kwota = kwotarop("/",kwota_z,dajazmienna_K("kurs_kwota"));
        kwota = kwotarop("*",kwota,dewprzelkurs(dajazmienna_S("kurs_waluta")));
        kwota = round(kwota,2);
    }
    rejwstawp_k(p,kwota);
}

define zrob_kwota_zdew_zap(p)
{
    variable kwota,kwota_z;
    kwota_z = rejwezp_k(p);
    kwota = kwota_z;
    if (not(dajazmienna_S("KURS_WALUTA") == "PLN")) {    
        kwota = kwotarop("*",kwota_z,dajazmienna_K("kurs_kwota"));
        kwota = kwotarop("/",kwota,dewprzelkurs(dajazmienna_S("kurs_waluta")));
        kwota = round(kwota,2);
    }
    rejwstawp_k(p+"_zl",kwota);
}

private define daj_klucz(co)
{
   switch (co)
     { case 0: return "!DSS.raport_multi_wej"; }
     { case 1: return "!DSS.raport_multi_status"; }
}


define ustaw_status_view_alg()
{
  if (dajazmienna_S("RAPORTY_STATUS") == "") {
    ustawazmienna_L("A_OK",1);
    return;
  }
  ustawazmienna_L("A_OK",0);
  if (dajazmienna_S("RAPORTY_STATUS") == rejwezp_s("a:m_status")) ustawazmienna_L("A_OK",1);
}
define ustaw_status_view()
{
  variable kluczyk,kluczykz;
  kluczyk = "0";
  kluczykz = "0";
  global_piszparams(daj_klucz(1),dajazmienna_S("RAPORTY_STATUS"));
  () = rejop("a:wezpierwszyrek");
  () = exdialogop("ustawfiltralg","100:SL.IMPORT_BRE_MULTI->ustaw_status_view_alg");
  () = exdialogop("wyswietlpozycje","100");

if (not(exdialogop("pusteokno","100"))) {
  kluczyk = string(rejwezp_k("a:m_id"));
  () = exdialogop("ustawmenuparam","101:MULTI_RAP_N,b,JEDENKLUCZ,2");
  () = rejop("b:znajdzrek",string(kluczyk));
  kluczykz = string(rejwezp_k("b:in_id"));
  () = exdialogop("ustawmenuparam","102:MULTI_RAP_Z,c,JEDENKLUCZ,1");
  () = exdialogop("ustawmenuklucz","101:"+kluczyk);
  () = exdialogop("ustawmenuklucz","102:"+kluczykz);
} else {
    () = rejop("b:wstawpustepola");
    () = rejop("c:wstawpustepola");    
    kluczyk = "0";
    () = exdialogop("ustawmenuklucz","101:"+kluczyk);
    () = exdialogop("ustawmenuklucz","102:"+kluczyk);
}
  () = exdialogop("wyswietlpozycje","101");
  () = exdialogop("wyswietlpozycje","102");
  () = exdialogop("wyswietlpozycje","412");
}
/////////////////////////////////////////////////////////////
define lista_transakcji_kontrahenta()
{
  if (not(pustepole("c:iz_konto_plan"))) {
    ustawazmienna_L("czy_reja",0);  
    gl_transakcje_wyswietl(rejwezp_s("c:iz_konto_kl_sym"));
  } else { okalert("Puste pole konto !"); }
}
define lista_kont_kontrahenta()
{
  if (not(pustepole("c:iz_konto_kl_sym"))){
  if (rejop("otworzrej","REJESTRKL.RXR")) {
    if (rejop("znajdzrek",rejwezp_s("c:iz_konto_kl_sym"))){
        () = callalg("REJESTRKL-KONTA");
    } else {
        okalert("Nie mog|e zanle|x|c kontrahenta o symbolu "+rejwezp_s("c:iz_konto_kl_sym")+" !");
    }
    () = rejop("zamknijrej");
  } else {
    okalert("Nie mog|e otworzy|c rejestru kontrahent|ow");
  }
  } else {
    okalert("Brak symbolu kontrahenta !");
  }
}
define lista_kont_do_kontrahenta()
{
  ustawazmienna_S("D_STRING");
  if (not(pustepole("c:iz_konto_kl_sym"))) {
  ustawazmienna_S("KL_SYM",rejwezp_s("c:iz_konto_kl_sym"));
  () = callalg("REJESTR-KONT-DLA-KL");
  if (not(dajazmienna_S("D_STRING") == "")) {
     xrejwstawp_s("c:iz_konto_plan",dajazmienna_S("D_STRING")); 
     rejop("c:zapiszrek"); 
    () = exdialogop("wyswietlpozycje","301");
    () = exdialogop("zmienrekordwmenu","102");
  }
  } else {
    ustawazmienna_S("KL_SYM",rejwezp_s("c:iz_konto_plan"));
    () = callalg("REJESTR-KONT-DLA-KL-SYM");
    if (not(dajazmienna_S("D_STRING") == "")) {
        xrejwstawp_s("c:iz_konto_plan",dajazmienna_S("D_STRING")); 
        rejop("c:zapiszrek"); 
        () = exdialogop("wyswietlpozycje","301");
        () = exdialogop("zmienrekordwmenu","102");
    }
  }
}
// ------------------------------------------------------
define KONTRAHENT_FILTR_PRZED()
{
  if (dajazmienna_K("K_KL") == 0) {
    () = exdialogop("zmiennaglowek","Lista kontrahentow o wsp|olnej nazwie :"+dajazmienna_S("K_KL_TXT"));
    () = exdialogop("ustawmenuparam","100:KONTRAHENT-FILTR-LISTA-NAZWA,K,KLUCZ,1");
  } else {
    () = exdialogop("zmiennaglowek","Lista kontrahentow o wsp|olnym adresie :"+dajazmienna_S("K_KL_TXT"));
    () = exdialogop("ustawmenuparam","100:KONTRAHENT-FILTR-LISTA-ADRES,K,KLUCZ,1");  
  }
  () = rejop("k:wezpierwszyrek");
  () = exdialogop("ustawfiltralg","100:SL.IMPORT_BRE_MULTI->kontrahent_filtr_alg");
  if (exdialogop("pusteokno","100")) {
    () = rejop("k:wstawpustepola");
  }
}
define KONTRAHENT_FILTR_WYBIERZ()
{
  ustawazmienna_L("A_ZMIANA",1);
  ustawazmienna_S("D_STRING",rejwezp_s("k:kl_sym"));
  ()=exdialogop("koniecwykonywania");  
}

define KONTRAHENT_FILTR_ZREZYGNUJ()
{
  ustawazmienna_S("D_STRING","");
  ()=exdialogop("koniecwykonywania");
}
define KONTRAHENT_FILTR_ZASTAP()
{
  if (not(dajazmienna_S("KL_KONTO_KO") == "")) {
    rejwstawp_s("k:kl_konto",dajazmienna_S("KL_KONTO_KO")); 
    () = exdialogop("zmienrekordwmenu","100");
    () = exdialogop("wyswietlpozycje","400");    
  } else {
    okalert("Konto kontrahenta z wyci|agu jest puste !");
  }
}
define kontrahent_filtr_alg()
{
  variable t,tt;
  ustawazmienna_L("A_OK",0);
  t = dajazmienna_S("K_KL_TXT");
  if (dajazmienna_K("K_KL") == 0) {
    tt = rejwezp_s("k:kl_nazwa1")+" "+rejwezp_s("k:kl_nazwa2");
    if (strin(t,tt) > -1) ustawazmienna_L("A_OK",1);
  } else {
    tt = rejwezp_s("k:kl_kodmiasto")+" "+rejwezp_s("k:kl_adres");
    if (strin(t,tt) > -1) ustawazmienna_L("A_OK",1);  
  }
}

define l_klient_nazwa()
{
  if (dajazmienna_S("K_KL_TXT") == "") {
    okalert("Podaj jaki|s fragment nazwy kontrahenta !");
  } else {
    ustawazmienna_K("K_KL",0);
    () = exdialogop("idzdodialogu","KONTRAHENT-FILTR");
  }
}
define l_klient_adres()
{

  if (dajazmienna_S("K_KL_TXT") == "") {
    okalert("Podaj jaki|s fragment adresu kontrahenta !");
  } else {
    ustawazmienna_K("K_KL",1);
    () = exdialogop("idzdodialogu","KONTRAHENT-FILTR");
  }
}

define lista_kontrahentow_nazwa()
{
   () = rejop("K:otworzrej1","REJESTRKL.RXR");
   variable txt;
   txt = dajazmienna_S("KL_NAZWA_KO");
   txt = tostr("#D_STRING#S");
   if (not(txt == "")) { 
        ustawazmienna_K("K_KL",0);
        ustawazmienna_S("K_KL_TXT",txt);
        () = callalg("SL.IMPORT_BRE_MULTI->l_klient_nazwa");
        if (not(dajazmienna_S("D_STRING") == "")) {
           rejwstawp_s("c:iz_konto_kl_sym",dajazmienna_S("D_STRING"));
        }
        ustawazmienna_S("D_STRING",txt);        
   } else {
    okalert("Podaj jaki|s fragment nazwy kontrahenta !");   
   }
   () = exdialogop("idzdopozycji","410");
   () = rejop("k:zamknijrej");
}
define lista_kontrahentow_adres()
{
   () = rejop("K:otworzrej1","REJESTRKL.RXR");
   variable txt;
   txt = dajazmienna_S("KL_ADRES_KO");
   txt = tostr("#D_STRING#S");
   if (not(txt == "")) { 
        ustawazmienna_K("K_KL",1);
        ustawazmienna_S("K_KL_TXT",txt);
        () = callalg("SL.IMPORT_BRE_MULTI->l_klient_adres");
        if (not(dajazmienna_S("D_STRING") == "")) {
           rejwstawp_s("c:iz_konto_kl_sym",dajazmienna_S("D_STRING"));
        }
        ustawazmienna_S("D_STRING",txt);        
   } else {
    okalert("Podaj jaki|s fragment adresu kontrahenta !");
   }
   () = exdialogop("idzdopozycji","411");
   () = rejop("k:zamknijrej");
}
define lista_kontrahentow_f2(i)
{
  ustawazmienna_S("KL_KONTO_KO");
  ustawazmienna_S("KL_KONTO_KO",rejwezp_s("c:iz_8610")+rejwezp_s("c:iz_8611"));
  if (i == 0) {
    if (dajazmienna_S("KL_NAZWA_KO") == "") ustawazmienna_S("KL_NAZWA_KO",dajazmienna_S("D_STRING"));
    lista_kontrahentow_nazwa;
  } else {
    if (dajazmienna_S("KL_ADRES_KO") == "")ustawazmienna_S("KL_ADRES_KO",dajazmienna_S("D_STRING"));
    lista_kontrahentow_adres;
  }
  () = exdialogop("wyswietlpozycje","300");
}
//
define lista_kontrahentow_powiazanych()
{
  () = callalg("POKAZ-KLPOWIAZANI-RXR");
}

define lista_kontrahentow()
{
  if (rejop("otworzrej","REJESTRKL.RXR")){
    () = rejop("wywolajmenu","1");
    () = rejop("zamknijrej");
  } else { okalert("Nie mog|e otworzy|c danych !");}
}
define lista_typow()
{
  callsl("IMPORT_BRE_MULTI->start_VIEW_MULTI_TYP()");
}
define lista_dekretow_przychodow()
{
  () = callalg("POKAZ-DEKRETY-PRZYCHODOW-RXR");
}
define lista_dekretow_rozchodow()
{
  () = callalg("POKAZ-DEKRETY-ROZCHODOW-RXR");
}
//
define wybierz_plik()
{
   variable na = dajazmienna_S("PLIK_WEJ"); 
   () = dyskop("dajkatalog",na);
   variable kat = gl_daj_dstring();
   () = dyskop("dajplik",na);
   variable s = wybierzplik("*.*","","","",kat,gl_daj_dstring(),"AEFHMC");
   if (s == "") {
      gl_ustaw_nie_ok();
      ustawazmienna_S("D_STRING");
      return;
   }
   ustawazmienna_S("D_STRING",s);
}
private define nadate(s)
{
   variable d;
   d = substr(s,0,2);
   d = d + "." + substr(s,2,2);
   d = d + "." + substr(s,4,2);
   return d;
}
private define nakwote(s)
{
   variable g,t;
   g = strin("\,",s);
   t = strcut(s,0,g)+"."+strcut(s,g+1,2);
   return stringnaliczbe(t);
}
private define daj_xslash(s)
{
   variable i;
   variable ssx0,ssx1;   
      forever {
      i = strin("\\",s);
      if (i == -1) return s;
      ssx0 = strcut(s,0,i);
      ssx1 = strcut(s,i+1,strlen(s)-i);
      s = ssx0 +"#"+ ssx1;
   }
}    
private define daj_xxslash(s)
{
   variable i;
   variable ssx0,ssx1;   
   
   forever {
      i = strin("#",s);
      if (i == -1) return s;
      ssx0 = strcut(s,0,i);
      ssx1 = strcut(s,i+1,strlen(s)-i);
      s = ssx0 +"\\\\"+ ssx1;
   }
}     
// ==================================================================
define daj_bezkonto()
{
  if (not(dajazmienna_S("D_STRING") == "")) () = callalg("xznaki");
}
// ==================================================================
// ==================================================================
// ==================================================================
define pokaz_info_rap()
{
    rejop("a:wywolajbox","1");
}
define pokaz_info_ngl()
{
    rejop("b:wywolajbox","1");
}
define pokaz_info_zap()
{
    rejop("c:wywolajbox","1");
}
define usun_raport_del()
{
  variable key;
  if (yesalert("Usun|a|c raport ?"))
  {
    key = string(rejwezp_k("a:m_id"));

    () = rejop("b:zmienkluczrej","2");
    if (rejop("b:znajdzrek",key)) {
       do {
         () = rejop("b:usunrek");
       } while (rejop("b:znajdzrek",key));
    }    
    
    () = rejop("c:zmienkluczrej","3");
    if (rejop("c:znajdzrek",key)) {
       do {
         () = rejop("c:usunrek");
       } while (rejop("c:znajdzrek",key));
    }    
    
    () = rejop("d:zmienkluczrej","3");
    if (rejop("d:znajdzrek",key)) {
       do {
         () = rejop("d:usunrek");
       } while (rejop("d:znajdzrek",key));
    }    
    () = rejop("e:zmienkluczrej","3");
    if (rejop("e:znajdzrek",key)) {
       do {
         () = rejop("e:usunrek");
       } while (rejop("e:znajdzrek",key));
    }    
    rejop("a:usunrek");
  }
}
define usun_raport()
{
  if ( (rejwezp_s("a:m_status") == "odloz") or (rejwezp_s("a:m_status") == "dekret") )  {
    if (dajazmienna_S("os_ksieg") == "perseus")
    { 
      okalert("Wiesz co robisz !!!");   
      usun_raport_del;
      () = exdialogop("usunrekordzmenu","100");
      () = exdialogop("idzdopozycji","100");
      () = exdialogop("wyswietlpozycje","101");
      () = exdialogop("wyswietlpozycje","102");
    }  else   {
      okalert("Wyci|agu o statusie odloz nie mo|zna usun|a|c !");
    }
  }  else  {
    usun_raport_del;
    () = exdialogop("usunrekordzmenu","100");
    () = exdialogop("idzdopozycji","100");
    () = exdialogop("wyswietlpozycje","101");
    () = exdialogop("wyswietlpozycje","102");
  }
  if (exdialogop("pusteokno","100")) {
    () = rejop("b:wstawpustepola");
    () = rejop("c:wstawpustepola");   
    () = exdialogop("wyswietlpozycje","*");
  }
}

define drukuj_raport()
{
    variable rp_a,rp_b,rp_c;
    rp_a = rejwezp_k("a:rejestrrekpos");
    rp_b = rejwezp_k("b:rejestrrekpos");
    rp_c = rejwezp_k("c:rejestrrekpos");
  () = rejop("t:otworzrej","frm_memo.rjr");
  ustawazmienna_S("raport");
  ustawazmienna_S("KOL_NAZWA");
  () = callalgfile("przelewy\\przelewy_bre_multi_prn.sl","SL.DRUKUJ_BRE_MULTI->drukuj");
  () = rejop("t:zamknijrej");
  
    () = rejop("a:ustawrekpos",string(rp_a));
    () = rejop("b:ustawrekpos",string(rp_b));
    () = rejop("c:ustawrekpos",string(rp_c));
}

define szukaj_raport()
{
  () = exdialogop("UstawWarunek","100:MULTI_RAPORT-WAR");
}
define szukaj_next_raport()
{
  () = exdialogop("UstawNastepny","100");
}
define filtr_raport()
{
  () = exdialogop("UstawFiltr","100:MULTI_RAPORT-WAR");
  () = exdialogop("wyswietlpozycje","101");
  () = exdialogop("wyswietlpozycje","102");
}
define wyswietl_info_dekret()
{
  () = exdialogop("wyswietlpozycje","300");
  () = exdialogop("wyswietlpozycje","301");
  () = exdialogop("wyswietlpozycje","302");
  () = exdialogop("wyswietlpozycje","400");
  () = exdialogop("wyswietlpozycje","401");
  if (pustepole("c:iz_konto_plan")) {
     rejwstawp_l("c:iz_log",0);
  } else {
     rejwstawp_l("c:iz_log",1);
     if (finnop("@3znajdzdok",rejwezp_s("C:iz_konto_plan"))) {
       if (dajazmienna_L("K_ROZ")) {
        if (not(rejwezp_s("c:iz_konto_kl_sym") == dajazmienna_S("K_KLNAZWA") )) { 
          rejwstawp_l("c:iz_log",0);
        }
        if (pustepole("c:iz_transakcja")) rejwstawp_l("c:iz_log",0);
       }
     }
     
  }
  if (pustepole("c:iz_konto_plan") and (rejwezp_s("c:iz_transakcja") == "#")) rejwstawp_l("c:iz_log",1);
  ustawazmienna_S("kurs_waluta",rejwezp_s("a:m_waluta"));
  ustawazmienna_K("kurs_kwota",0);
  ustal_kwote_kursu;
  zrob_kwota_zdew_zap("c:iz_kwota_zap");
}

define wyswietl_zzap_raport()
{
  variable klucz;
  klucz = string(rejwezp_k("b:in_id"));
  () = exdialogop("ustawmenuklucz","102:"+klucz);
  () = exdialogop("wyswietlpozycje","102");
  () = exdialogop("wezpierwszy","102");
  if (not(exdialogop("pusteokno","102"))) {
    wyswietl_info_dekret;
  } else {
    () = rejop("c:wstawpustepola"); 
  }
    () = exdialogop("wyswietlpozycje","300");
    () = exdialogop("wyswietlpozycje","301");
    () = exdialogop("wyswietlpozycje","302");
    () = exdialogop("wyswietlpozycje","400");
    () = exdialogop("wyswietlpozycje","401");
}
define wyswietl_zap_raport()
{
  variable klucz;
  klucz = string(rejwezp_k("a:m_id"));
  () = exdialogop("ustawmenuklucz","101:"+klucz);  
  () = exdialogop("wyswietlpozycje","101");
  () = exdialogop("wezpierwszy","101");
  if (not(exdialogop("pusteokno","101")))  wyswietl_zzap_raport();
  ustawazmienna_S("KURS_WALUTA",rejwezp_s("a:m_waluta"));
}

define ustaw_dialog_raport()
{
  variable kluczyk,kluczykz;
//  if (not rejop("a:wezpierwszyrek")) () = rejop("a:wstawpustepola");
  () = rejop("a:wezostatnirek");

  () = exdialogop("ustawmenuparam","100:MULTI_RAPORT,a,KLUCZ,2");
  if (not(dajazmienna_S("RAPORTY_STATUS") == "")) () = exdialogop("ustawfiltralg","100:SL.IMPORT_BRE_MULTI->ustaw_status_view_alg");
  () = exdialogop("ustawmenuparam","101:MULTI_RAP_N,b,JEDENKLUCZ,2");
  () = exdialogop("ustawmenuparam","102:MULTI_RAP_Z,c,JEDENKLUCZ,1");
  kluczyk = "0";
  kluczykz = "0";

  if (exdialogop("pusteokno","100")){
    kluczyk = string(rejwezp_k("a:m_id"));
    () = rejop("b:znajdzrek",string(kluczyk));
    kluczykz = string(rejwezp_k("b:in_id"));
  }
  () = exdialogop("ustawmenuklucz","101:"+kluczyk);
  () = exdialogop("ustawmenuklucz","102:"+kluczykz);  
//    
  if (exdialogop("pusteokno","100")){
    () = rejop("b:wstawpustepola");
    () = rejop("c:wstawpustepola");    
    kluczyk = "0";
    () = exdialogop("ustawmenuklucz","101:"+kluczyk);
    () = exdialogop("ustawmenuklucz","102:"+kluczyk);
  } else {
    () = exdialogop("idzdopozycji","100");
  }
}

define zamknij_dialog_raport()
{
  ()=exdialogop("koniecwykonywania","");
}

define wybierz_plan_zap_po()
{
  if (not(pustepole("C:iz_konto_plan"))) {
    if (finnop("@3znajdzdok",rejwezp_s("C:iz_konto_plan"))) {
      xrejwstawp_s("c:iz_konto_kl_sym",dajazmienna_S("K_KLNAZWA"));
      () = rejop("c:zapiszrek");
    }
    if (not(pustepole("c:iz_konto_kl_sym"))) {
      if (pustepole("c:iz_transakcja")) callsl("IMPORT_BRE_MULTI->raport_dekretuj_rozpisz_tra");    
    }
  }
  rejop("c:zapiszrek");
  () = exdialogop("wyswietlpozycje","300");
  () = exdialogop("wyswietlpozycje","301");
  () = exdialogop("wyswietlpozycje","302");
  () = exdialogop("zmienrekordwmenu","102");
}
define wybierz_plan_zap()
{
  () = rejop("c:zapiszrek");
  if (pustepole("c:iz_konto_plan")) return;
  if (finnop("@3znajdzdok",rejwezp_s("C:iz_konto_plan"))) {
    xrejwstawp_s("c:iz_konto_kl_sym",dajazmienna_S("K_KLNAZWA"));
    () = rejop("c:zapiszrek");
    () = exdialogop("wyswietlpozycje","300");
    () = exdialogop("zmienrekordwmenu","102");
  }
}
define wybierz_kontrahent_zap_po()
{
  rejop("c:zapiszrek");
  () = exdialogop("zmienrekordwmenu","102");   
}

define wybierz_kontrahent_zap()
{
  variable konto_kl,kl_symbol;
  if (pustepole("c:iz_konto_kl_sym")) return;
  kl_symbol = rejwezp_s("c:iz_konto_kl_sym");
  ustawazmienna_S("D_STRING",kl_symbol);
  () = callalgfile("przelewy\\przelewy_bre_multi_dekret.sl","ustal_kontrahent_plan");
  konto_kl = dajazmienna_S("D_STRING");
  xrejwstawp_s("c:iz_konto_plan",konto_kl);
  () = rejop("c:zapiszrek");
  () = exdialogop("wyswietlpozycje","301");
  () = exdialogop("zmienrekordwmenu","102");
}
define wybierz_transakcje_zap_po()
{
  rejop("c:zapiszrek");
  () = exdialogop("zmienrekordwmenu","102");   
}
define wybierz_transakcje_zap()
{
  variable s,ss;
  s = "";
  ss = rejwezp_s("c:iz_konto_plan");
  if (not(pustepole("c:iz_konto_plan"))){
    s = rejwezp_s("c:iz_konto_plan");
    if (finnop("znajdzdok",rejwezp_s("c:iz_konto_plan"))) {
        if (dajazmienna_L("K_ROZ")) {
        ustawazmienna_S("FINN_KONTO",rejwezp_s("c:iz_konto_plan"));
        s = wybierzfinn("SymbolTrans");
        } else {
          okalert("Konto nie jest rozrachunkowe !");
        }
    }
    ustawazmienna_S("D_STRING",ss);
  } else {
    okalert("Brak konta kontrahenta !");
  }
}
// -------------------------------------------------------------
define look_dialog()
{
 () = finnop("@3openmain");
 ustawazmienna_L("tryb_ksiegi",0);
 if (dajazmienna_L("k_trybodlo")) ustawazmienna_L("tryb_ksiegi",1);
 
 ustawazmienna_S("KL_NAZWA_KO");
 ustawazmienna_S("KL_ADRES_KO");
 ustawazmienna_S("RAPORTY_STATUS",global_dajparams(daj_klucz(1)));
 ustawazmienna_D("KURS_DATA");
 ustawazmienna_S("KURS_WALUTA");
 ustawazmienna_K("KURS_TRYB",1);
 ustawazmienna_K("KURS_KWOTA",0);
 
 () = rejop("a:otworzrejsprawdz","BRE_MULTI_RAPORT.RJR");
 () = rejop("b:otworzrejsprawdz","BRE_MULTI_RAP_N.RJR");
 () = rejop("c:otworzrejsprawdz","BRE_MULTI_RAP_Z.RJR");
 () = rejop("d:otworzrejsprawdz","BRE_MULTI_RAP_ZT.RJR");
 () = rejop("e:otworzrejsprawdz","BRE_MULTI_RAP_ZK.RJR");
 () = exdialogop("idzdodialogu","POKAZ_RAPORTY_MULTI");
 gl_zamknij_rej("a:","b:","c:","d:","e:");
 () = finnop("@3close");
}
// -------------------------------------------------------------
// -------------------------------------------------------------
// -------------------------------------------------------------
// -------------------------------------------------------------
// -------------------------------------------------------------
// -------------------------------------------------------------
// -------------------------------------------------------------
// -------------------------------------------------------------
// -------------------------------------------------------------
//  import danych 
// -------------------------------------------------------------
// -------------------------------------------------------------
// -------------------------------------------------------------
// -------------------------------------------------------------
// -------------------------------------------------------------
// -------------------------------------------------------------
// -------------------------------------------------------------
// -------------------------------------------------------------
// -------------------------------------------------------------
define akceptuj_plik()
{
   if (gl_blad_linia_pustazm("PLIK_WEJ","Wprowad|x plik wej|sciowy !",10)) return;
   if (yesalert("Zacz|a|c import danych z pliku "+dajazmienna_S("PLIK_WEJ")+" ?")) () = exdialogop("koniecwykonywania");
}
private define usun_line(l)
{
   l = strtrim_beg(l);
   l = strtrim_end(l);
   if (l == "") return l;
   l = konwertujstring(l,"LATIN2-KONWTEXT");
   return l;
}
private define ustal_typ(l)
{
  variable typ,dl,gl;
  typ = "";
  if (strcut(l,0,1) == ":") {
    dl = strlen(l);
    typ = strcut(l,1,dl-1);
    gl = strin(":",typ); 
    typ = strcut(typ,0,gl);
  }
  return typ;
}
private define daj_linie(l)
{
  variable typ,dl,gl;
  typ = l;
  if (strcut(l,0,1) == ":") {
    dl = strlen(l);
    typ = strcut(l,1,dl-1);
    gl = strin(":",typ); 
    dl = strlen(typ);
    typ = strcut(typ,gl+1,dl-gl-1); 
  }
  return typ;
}

// 
private define dodaj_nowy_raport(nr)
{
  variable d;
  () = rejop("a:dodajrek");
  xrejwstawp_s("a:m_numer",nr);
  d = rejwezp_s("0:in_621");
  d = strcut(d,0,2)+"."+strcut(d,2,2)+"."+strcut(d,4,2);
  xrejwstawp_d("a:m_data",stringnadate(d));
  xrejwstawp_s("a:m_nrkonta",strcut(rejwezp_s("0:in_25"),2,26));
  xrejwstawp_s("a:m_waluta",rejwezp_s("0:in_622"));
  xrejwstawp_k("a:m_kw_p",nakwote(rejwezp_s("0:in_603")));
  xrejwstawp_k("a:m_kw_k",nakwote(rejwezp_s("0:in_623")));
  xrejwstawp_k("a:m_zap",0);
  xrejwstawp_s("a:m_status","import");
  if (nakwote(rejwezp_s("0:in_603")) == nakwote(rejwezp_s("0:in_623"))) xrejwstawp_s("a:m_status","rbank");
  xrejwstawp_s("a:m_plik",dajazmienna_S("PLIK_WEJ"));
  () = rejop("a:zapiszrek");
}
private define zapisz_wczytane_raporty()
{
 variable m_id,n_id,z_id;
 variable ile,zile;
 variable numer,konto;
 ile = 0;
 numer = "";
 konto = "";
 () = ustawczekajinfo("Start4","Zapisywanie raportow BRE. Prosz|e czeka|c ...");
 () = rejop("a:otworzrejsprawdz","BRE_MULTI_RAPORT.RJR");
 () = rejop("b:otworzrejsprawdz","BRE_MULTI_RAP_N.RJR");
 () = rejop("c:otworzrejsprawdz","BRE_MULTI_RAP_Z.RJR");
 () = rejop("d:otworzrejsprawdz","BRE_MULTI_RAP_ZT.RJR");
 () = rejop("e:otworzrejsprawdz","BRE_MULTI_RAP_ZK.RJR");
 () = rejop("a:zmienkluczrej","4");
 if (rejop("0:wezpierwszyrek")) {
   do {
      numer = rejwezp_s("0:in_20");
      konto = strcut(rejwezp_s("0:in_25"),2,26);
      if (not(rejop("a:znajdzrek",numer+"*"+konto))) {
        dodaj_nowy_raport(numer);
        ile = ile +1;
//      }
      xrejwstawp_k("a:m_kw_k",nakwote(rejwezp_s("0:in_623")));
      xrejwstawp_k("a:m_zap",ile);
      () = rejop("a:zapiszrek");
      m_id = rejwezp_k("a:m_id");
      
      () = rejop("b:dodajrek");
      n_id = rejwezp_k("b:in_id");
      () = rejop("0:przeniespola","b:");
      xrejwstawp_k("b:in_id",n_id);
      xrejwstawp_k("b:m_id",m_id);
      () = rejop("b:zapiszrek");
      () = ustawczekajinfo("Nastepny","Next");
      
      z_id = rejwezp_k("0:in_id");
      if (rejop("1:znajdzrek",string(z_id))) {
        zile = 1;
        do {
              if (not(rejwezp_k("1:in_id") == z_id)) break;
              () = rejop("c:dodajrek");
              () = rejop("1:przeniespola","c:");
               xrejwstawp_k("c:iz_kwota_zap",nakwote(rejwezp_s("1:iz_614")));
               xrejwstawp_k("c:in_id",n_id);
               xrejwstawp_k("c:iz_id",zile);
               xrejwstawp_k("c:m_id",m_id);
               xrejwstawp_l("c:iz_log",0);
               () = rejop("c:zapiszrek");
               () = ustawczekajinfo("Nastepny","Next");
               zile +=1 ;
           } while (rejop("1:weznastepnyrek")); 
      }            
    }
   } while (rejop("0:weznastepnyrek"));
  okalert("Zapisano raport|ow "+string(ile));   
 }
 gl_zamknij_rej("a:","b:","c:","d:","e:");
 () = ustawczekajinfo("Stop","");
}

private define zrob_naglowek_60(l)
{
  xrejwstawp_s("0:in_600",strcut(l,0,1));
  xrejwstawp_s("0:in_601",strcut(l,1,6));
  xrejwstawp_s("0:in_602",strcut(l,7,3));
  xrejwstawp_s("0:in_603",strcut(l,10,strlen(l)-10));
  () = rejop("0:zapiszrek");
}
private define zrob_naglowek_62(l)
{
  xrejwstawp_s("0:in_620",strcut(l,0,1));
  xrejwstawp_s("0:in_621",strcut(l,1,6));
  xrejwstawp_s("0:in_622",strcut(l,7,3));
  xrejwstawp_s("0:in_623",strcut(l,10,strlen(l)-10));
  () = rejop("0:zapiszrek");
}
private define zrob_naglowek(i,t,l)
{
  variable ll;
  ll = daj_linie(l);
  if (not(rejop("0:znajdzrek",string(i)))) 
  {
    () = rejop("0:dodajrek");
  }
  switch (t)
    {case "20": rejwstawp_s("0:in_20","20"+strcut(ll,2,6));}
    {case "25": rejwstawp_s("0:in_25",ll);}
    {case "28C":
      rejwstawp_s("0:in_20",rejwezp_s("0:in_20")+"-"+strcut(ll,0,strin("/",ll)));
      rejwstawp_s("0:in_28c",ll);
      }
    {case "60F": 
        rejwstawp_s("0:in_60","F");
        zrob_naglowek_60(ll);}
    {case "60M": 
        rejwstawp_s("0:in_60","M");
        zrob_naglowek_60(ll);}
    {case "62F": 
        rejwstawp_s("0:in_62","F");
        zrob_naglowek_62(ll);}
    {case "62M": 
        rejwstawp_s("0:in_62","M");
        zrob_naglowek_62(ll);}
  () = ustawczekajinfo("Nastepny","Next");
  return 1;
}

private define zrob_linie_61(l)
{ 
  variable t,g;
  xrejwstawp_s("1:iz_610",strcut(l,0,6));
  xrejwstawp_s("1:iz_611",strcut(l,6,4));
  
  if ((strcut(l,10,1) == "C") or (strcut(l,10,1) == "D")) {
    xrejwstawp_s("1:iz_612",strcut(l,10,1));
    xrejwstawp_s("1:iz_613",strcut(l,11,1));
    t = strcut(l,12,strlen(l)-12);
  } else {
    xrejwstawp_s("1:iz_612",strcut(l,10,2));
    xrejwstawp_s("1:iz_613",strcut(l,12,1));  
    t = strcut(l,13,strlen(l)-13);
  }
  g = strin("N",t);
  if (g <0) g = strin("S",t);
  xrejwstawp_s("1:iz_614",strcut(t,0,g));
  t = strcut(t,g,strlen(t)-g);
  xrejwstawp_s("1:iz_615",strcut(t,0,4));
  t = strcut(t,4,strlen(t)-4);
  
  g = strin("/",t);
  xrejwstawp_s("1:iz_616",strcut(t,0,g));
  xrejwstawp_s("1:iz_617",strcut(t,g+2,strlen(t)-g+2));
  () = rejop("1:zapiszrek");
}

private define zrob_linie_86_firma(l)
{
  variable g,gp,t,ll;
  variable t1,t2,t3,tt;
  g = strin("Z RACH.:",l);
//  okalert("g="+string(g));
  if (g > -1) {
    t = strcut(l,g,strlen(l)-g);
//    okalert("t1="+t);
    gp = strin(";",t);
    t = strcut(t,8,gp-8);
    xrejwstawp_s("1:iz_8611",t);
//    okalert("t="+t,l);
//    l = strcut(l,gp+2,strlen(l)-gp-2);
  }
  g = strin("NA RACH.:",l);
  if (g > -1) {
    t = strcut(l,g,strlen(l)-g);
    gp = strin(";",t);
    t = strcut(t,9,gp-9);
    xrejwstawp_s("1:iz_8611",t);
//    l = strcut(l,gp+2,strlen(l)-gp-2);
  }
  g = strin("OD:",l);
  if (g > -1) {
    t = strcut(l,g,strlen(l)-g);
    gp = strin(";",t);
    t = strcut(t,3,gp-3);
    xrejwstawp_s("1:iz_8612",strcut(t,0,27));
    xrejwstawp_s("1:iz_8613",strcut(t,27,strlen(t)-27));
    xrejwstawp_s("1:iz_8614",strcut(t,54,strlen(t)-54));
//    l = strcut(l,gp+2,strlen(l)-gp-2);
  }
  g = strin("DLA:",l);
  if (g > -1) {
    t = strcut(l,g,strlen(l)-g);
    gp = strin(";",t);
    t = strcut(t,4,gp-4);
    xrejwstawp_s("1:iz_8612",strcut(t,0,27));
    xrejwstawp_s("1:iz_8613",strcut(t,27,strlen(t)-27));
    xrejwstawp_s("1:iz_8614",strcut(t,54,strlen(t)-54));
//    l = strcut(l,gp+1,strlen(l)-gp-1);
  }
  l = strtrim(l);
  g = strin("TYT.:",l);
  if (g > -1) {
    if (strcut(l,0,1) == ";") {
      l = strcut(l,1,strlen(l)-1);    
      g = strin("TYT.:",l);
    }
    t = strcut(l,g,strlen(l)-g);
    gp = strin("WALUTA:",t);
    if (gp < 0) gp = strin("DATA STEMPLA:",t);
    if (gp < 0) gp = strin("DATASTEMPLA:",t);
//    if (gp < 0) gp = strin("DATA NOSTRO:",t);
    if (gp < 0) gp = strin(";",t);
    t = strcut(t,5,gp-5);
    t = strtrim(t);
    xrejwstawp_s("1:iz_862",strcut(t,0,26));
    xrejwstawp_s("1:iz_863",strcut(t,26,26));
    xrejwstawp_s("1:iz_864",strcut(t,52,26));
    xrejwstawp_s("1:iz_865",strcut(t,78,26));
//    l = strcut(l,gp,strlen(l)-gp);
  }
  g = strin("WALUTA:",l);
  if (g > -1) {
    if (strcut(l,0,1) == ";") l = strcut(l,1,strlen(l)-1);    
    g = strin("WALUTA:",l);
    t = strcut(l,g,strlen(l)-g);
    gp = strin(";",t);
    t = strcut(t,7,gp-7);
    xrejwstawp_s("1:iz_866",t);
//    l = strcut(l,gp+2,strlen(l)-gp-2);
  }
  g = strin("KWOTA:",l);
  if (g > -1) {
    t = strcut(l,g,strlen(l)-g);
    gp = strin(";",t);
    t = strcut(t,6,gp-6);
    t = gl_kwota_z_przecinek(t);
    xrejwstawp_s("1:iz_867",t);
//    l = strcut(l,gp+2,strlen(l)-gp-2);
  }
  g = strin("KURS:",l);
  if (g > -1) {
    t = strcut(l,g,strlen(l)-g);
    gp = strin(";",t);
    t = strcut(t,5,gp-5);
    t = gl_kwota_z_przecinek(t);
    xrejwstawp_s("1:iz_868",t);
//    l = strcut(l,gp+2,strlen(l)-gp-2);
  }
  g = strin("PROW. ZAGR.:",l);
  if (g > -1) {
    t = strcut(l,g,strlen(l)-g);
    gp = strin(";",t);
    t = strcut(t,12,gp-12);
    xrejwstawp_s("1:iz_869",t);
//    l = strcut(l,gp+2,strlen(l)-gp-2);
  }
  
  () = rejop("1:zapiszrek");
  
  if (pustepole("1:iz_869")) {
  g = strin("DATA NOSTRO:",l);
  if (g > -1) {
    t = strcut(l,g,strlen(l)-g);
    gp = strin(";",t);
    t = strcut(t,g+12,gp-g-12);
    rejwstawp_s("1:iz_869",t);
    l = strcut(l,gp+2,strlen(l)-gp-2);
  }
  }
  if (pustepole("1:iz_869")) {
  g = strin("REF. MT103:",l);
  if (g > -1) {
    t = strcut(l,g,strlen(l)-g);
    gp = strin(";",t);
    t = strcut(t,g+11,gp-g-11);
    rejwstawp_s("1:iz_869",t);
    l = strcut(l,gp+2,strlen(l)-gp-2);
  }
  }
// podatkowe do tresci
  g = strin("FORM.:",l);
  if (g > -1) {
    t1 = strcut(l,g+6,strlen(l)-g-6);
    t1 = strcut(t1,0,strin(";",t1));
    g = strin("OKRES:",l);
    t2 = strcut(l,g+6,strlen(l)-g-6);
    t2 = strcut(t2,0,strin(";",t2));
    g = strin("ID ZOBOW.:",l);
    t3 = strcut(l,g+10,strlen(l)-g-10);
    t3 = strcut(t3,0,strin(";",t3));
    xrejwstawp_s("1:iz_862",t1+" "+t2);
    xrejwstawp_s("1:iz_863",t3);
    () = rejop("1:zapiszrek");
  }  
// zus do tresci
  g = strin("RODZAJ SK|LADKI:",l);
  if (g > -1) {
    t1 = strcut(l,g+15,strlen(l)-g-15);
    t1 = strcut(t1,0,strin(";",t1));
    g = strin("DEKLARACJA:",l);
    t2 = strcut(l,g+11,strlen(l)-g-11);
    t2 = strcut(t2,0,strin(";",t2));
    g = strin("REF. KLIENTA:",l);
    t3 = strcut(l,g+13,strlen(l)-g-13);
    t3 = strcut(t3,0,strin(";",t3));
    xrejwstawp_s("1:iz_862",t1);
    xrejwstawp_s("1:iz_863",t2);
    xrejwstawp_s("1:iz_864",t3);
    () = rejop("1:zapiszrek");
  }
}
private define zrob_linie_86(l)
{ 
  variable t,g,tt,gg;
  rejwstawp_s("1:iz_860",strcut(l,0,3));
  
  t = strcut(l,4,strlen(l)-4);
  g = strin(";",t);
  if (g < 0) g = strlen(t);
  rejwstawp_s("1:iz_861",strcut(t,0,g));
  
  t = strcut(t,g+1,strlen(t)-g+1);  
  g = strin(";",t);
  zrob_linie_86_firma(t);
}

private define zrob_linie(i,t,l)
{
  variable ll = daj_linie(l);
  if (not(ll == "")) {
    switch (t)
        {case "61":
        () = rejop("1:dodajrek");
        rejwstawp_k("1:in_id",i);
        zrob_linie_61(ll);
        }
        {case "86": 
        zrob_linie_86(ll);
        }
  }
  () = ustawczekajinfo("Nastepny","Next");
  return 1;
}

private define konwertuj_plik_raport()
{
   variable fi;
   variable linia,linia_86;
   variable ile,ilen,typ,styp;
   variable i,no;
   variable wykonaj,nowy;
   
   fi = fopen(dajazmienna_S("PLIK_WEJ"),"r");
   if (fi == NULL) {
      okalert("Nie mo|zna otworzy|c pliku " + dajazmienna_S("PLIK_WEJ") + " !");
      return;
   }
   % odczytuj kolejne linie
   ile = 1;
   ilen = ile;
   typ = "";
   styp = "";
   wykonaj = 1;
   linia_86 = "";
   
   () = ustawczekajinfo("Start4","Wczytanie raportow BRE. Prosz|e czeka|c ...");
   while (-1 != fgets (&linia, fi)) {
      % usun spacje z poczatku i konca
      linia = usun_line(linia);
      linia = nastring_polskie(linia);
      if (not(linia == "")) {
      if (linia == ":20:STARTDISP") wykonaj = 0;
      if (linia == "-") wykonaj = 1;
      if (wykonaj) { 
        typ = ustal_typ(linia);
        if (not(typ == "")) {
            switch (typ)
                {case "20":
                    () = zrob_naglowek(ile,typ,linia); 
                    ilen = ile;
                    ile = ile+1;
                    linia_86 = "";
                }
                {case "25": () = zrob_naglowek(ilen,typ,linia);}
                {case "28C": () = zrob_naglowek(ilen,typ,linia);}
                {case "60F": () = zrob_naglowek(ilen,typ,linia);}
                {case "60M": () = zrob_naglowek(ilen,typ,linia);}
                {case "61": 
                    () = zrob_linie(ilen,"86",linia_86);
                    () = zrob_linie(ilen,typ,linia);
                    styp = typ;
                    linia_86 = "";
                    }
                {case "86": 
                    linia_86 = linia_86+linia;
                    styp = typ;
                }
                {case "62F": 
                    () = zrob_linie(ilen,"86",linia_86);
                    linia_86 = "";
                    styp = typ;
                    () = zrob_naglowek(ilen,typ,linia);
                }
                {case "62M": 
                    () = zrob_linie(ilen,"86",linia_86);
                    linia_86 = "";
                    styp = typ;
                    () = zrob_naglowek(ilen,typ,linia);
                }
        } else {
            switch (styp)
                {case "86": linia_86 = linia_86+linia;}
        }
      } 
      () = ustawczekajinfo("Nastepny","Next");
      }
   }   
   () = ustawczekajinfo("Stop","");
   () = fclose(fi);
   okalert("Wczytanych raport|ow "+string(ile-1));
}
define czy_plik_juz_byl(p)
{
  variable r;
  r = 0;
  () = rejop("x:otworzrejsprawdz","BRE_MULTI_RAPORT.RJR");
  () = rejop("x:zmienkluczrej","3");
  if (rejop("x:znajdzrek",p)) r = 1;
  () = rejop("x:zamknijrej");
  return r;
}
define start_import_dialog()
{   
   variable czy;
   
   ustawazmienna_S("PLIK_WEJ",global_dajparams(daj_klucz(0)));
   ustawazmienna_L("PLIK_USUN",0);
   () = exdialogop("idzdodialogu","WYBIERZ-PLIK-IMPORT");   
   global_piszparams(daj_klucz(0),dajazmienna_S("PLIK_WEJ"));
   if (gl_daj_dpos() == 0) {
      czy = czy_plik_juz_byl(dajazmienna_S("PLIK_WEJ"));
      czy = 0;
      if (not(czy)) {
        () = rejop("0:otworzrejsprawdz","BRE_INMULTI.RJR");
        () = rejop("1:otworzrejsprawdz","BRE_IZMULTI.RJR");
        () = rejop("0:wyczyscrej");
        () = rejop("1:wyczyscrej");
        ustawazmienna_S("KLUCZ_MENU","1");
        konwertuj_plik_raport();
        zapisz_wczytane_raporty();
        global_piszparams(daj_klucz(1),"import");
//        if (yesalert("Usun|a|c wczytany plik ?")) () = dyskop("usunplik",dajazmienna_S("PLIK_WEJ"));
        look_dialog();
        () = rejop("0:zamknijrej");
        () = rejop("1:zamknijrej");
      } else {
        okalert("Plik "+dajazmienna_S("PLIK_WEJ")+" ju|z by|l wczytany !");
      }
   }
}
///////////////////////////////////////////////////////////////////// 
define rozpisz_VIEW_MULTI_TYP()
{
  variable r_pos;
  r_pos = rejwezp_k("0a:rejestrrekpos");
  
  variable t,kwn,kwnr,kma,kmar;
  t = rejwezp_s("0a:mt_typ");
  kwn = rejwezp_s("0a:mt_konto_wn");
  kwnr = rejwezp_s("0a:mt_konto_wn_kls");
  kma = rejwezp_s("0a:mt_konto_ma");
  kmar = rejwezp_s("0a:mt_konto_ma_kls");
  if (rejop("0a:wezpierwszyrek")) {
    do {
        if (t == rejwezp_s("0a:mt_typ")) {
            if (pustepole("0a:mt_konto_wn")) rejwstawp_s("0a:mt_konto_wn",kwn);
            if (pustepole("0a:mt_konto_wn_kls")) rejwstawp_s("0a:mt_konto_wn_kls",kwnr);
            if (pustepole("0a:mt_konto_ma")) rejwstawp_s("0a:mt_konto_ma",kma);
            if (pustepole("0a:mt_konto_ma_kls")) rejwstawp_s("0a:mt_konto_ma_kls",kmar);
        }
    } while (rejop("0a:weznastepnyrek"));
  }
  () = rejop("0a:ustawrekpos",string(r_pos));
  () = exdialogop("wyswietlpozycje","100");
}

define zapisz_ZMIEN_VIEW_MULTI_TYP()
{
  if (yesalert("Czy zapisa|c zmiany !")) {
    () = rejop("0A:zapiszrek");
  }
  () = exdialogop("koniecwykonywania");
}

define zmien_VIEW_MULTI_TYP()
{
  () = exdialogop("idzdodialogu","ZMIEN-VIEW_MULTI_TYP");
  () = exdialogop("zmienrekordwmenu","100");
}
define usun_VIEW_MULTI_TYP()
{
  () = rejop("0A:usunrek");
  () = exdialogop("usunrekordzmenu","100");
}
define szukaj_VIEW_MULTI_TYP()
{
  () = exdialogop("UstawWarunek","100:MULTI_TYP-WAR");
}
define szukaj_next_VIEW_MULTI_TYP()
{
  () = exdialogop("UstawNastepny","100");
}
define filtr_VIEW_MULTI_TYP()
{
  () = exdialogop("UstawFiltr","100:MULTI_TYP-WAR");
}
define ustaw_dialog_VIEW_MULTI_TYP()
{
  () = exdialogop("ustawmenuparam","100:VIEW_MULTI_TYP,0A,KLUCZ,2");
}

define zamknij_dialog_VIEW_MULTI_TYP()
{
  ()=exdialogop("koniecwykonywania","");
}
define start_VIEW_MULTI_TYP()
{
    () = rejop("0A:otworzrejsprawdz","BRE_MULTI_TYP.RJR");
    () = exdialogop("idzdodialogu","VIEW_MULTI_TYP");
    () = rejop("0A:zamknijrej");
}
define zrob_liste_typow()
{
  variable aok = 0;
  if (rejop("0A:otworzrejsprawdz","BRE_MULTI_TYP.RJR")) {
  variable rekpos_c,ko,m_id,ty;
  rekpos_c = rejwezp_k("c:rejestrrekpos");
  ko = rejwezp_s("a:m_nrkonta");
  m_id = rejwezp_k("a:m_id");
  () = rejop("c:zmienkluczrej","3");
  if (rejop("c:znajdzrek",string(m_id))) {
    do {
        if (not(m_id == rejwezp_k("c:m_id"))) break;
        ty = rejwezp_s("c:iz_860");
        if (not(rejop("0A:znajdzrek",ty+"*"+ko))) {
          () = rejop("0A:dodajrek");
          xrejwstawp_s("0A:mt_typ",ty);
          xrejwstawp_s("0A:mt_konto",ko);
          xrejwstawp_s("0A:mt_opis",rejwezp_s("c:iz_861"));
          xrejwstawp_l("0A:mt_kurs",0);
         () = rejop("0A:zapiszrek");
          aok = 1;
        }
      } while (rejop("c:weznastepnyrek"));
  }
  () = rejop("c:zmienkluczrej","1");
  () = rejop("c:ustawrekpos",string(rekpos_c));
  () = rejop("0A:zamknijrej");
  }
  if (aok) okalert("Pojawi|ly si|e nowe typy operacji bankowych !");
}

///////////////////////////////////////////////////////////////////// 
define czy_plan_aktywne(k)
{
    variable o;
    o = 1;
    if (finnop("@3znajdzdok",k)) {
      if (dajazmienna_L("K_NOACT")) o = 0;
    }
    return o;
}
define czy_plan_rozr(k)
{
    variable o;
    o = 0;
    if (finnop("@3znajdzdok",k)) {
      if (dajazmienna_L("K_ROZ")) o = 1;
    }
    return o;
}
define raport_dekretuj_rozpisz_tra()
{
  if (not(pustepole("c:iz_konto_kl_sym"))) {
    if (not(pustepole("c:iz_konto_plan"))){
    if (not(czy_plan_rozr(rejwezp_s("c:iz_konto_plan")))) {
        okalert("Konto nie posiada atrybutu rozrachunkowego !");
        return;
    }
    }
    variable rp_a,rp_b,rp_c;
    rp_a = rejwezp_k("a:rejestrrekpos");
    rp_b = rejwezp_k("b:rejestrrekpos");
    rp_c = rejwezp_k("c:rejestrrekpos");
    () = callalgfile("przelewy\\przelewy_bre_multi_dekret_rozpisz.sl","SL.DEKRET_BRE_MULTI_TRANS->raport_rozpisz_tra");
    () = rejop("a:ustawrekpos",string(rp_a));
    () = rejop("b:ustawrekpos",string(rp_b));
    () = rejop("c:ustawrekpos",string(rp_c));
    () = exdialogop("wyswietlpozycje","102");
    wyswietl_info_dekret;
  } else {
     okalert("Brak symbolu kontrahenta !");
  }
}
define czy_plan_klas(k)
{
    variable o;
    o = 0;
    if (finnop("@3znajdzdok",k)) {
      if (dajazmienna_L("K_RZL")) o = 1;
    }
    return o;
}

define raport_dekretuj_rozpisz_kls()
{
  if (not(pustepole("c:iz_konto_plan"))){
    if (not(czy_plan_klas(rejwezp_s("c:iz_konto_plan")))) {
        okalert("Konto nie posiada atrybutu klasyfikacji !");
        return;
    }
    variable rp_a,rp_b,rp_c;
    rp_a = rejwezp_k("a:rejestrrekpos");
    rp_b = rejwezp_k("b:rejestrrekpos");
    rp_c = rejwezp_k("c:rejestrrekpos");
    () = callalgfile("przelewy\\przelewy_bre_multi_dekret_rozpisz.sl","SL.DEKRET_BRE_MULTI_TRANS->raport_rozpisz_kls");
    () = rejop("a:ustawrekpos",string(rp_a));
    () = rejop("b:ustawrekpos",string(rp_b));
    () = rejop("c:ustawrekpos",string(rp_c));
    () = exdialogop("wyswietlpozycje","102");
    wyswietl_info_dekret;
  }
}

define raport_dekretuj()
{ 
  variable rp_a,rp_b,rp_c;
  rp_a = rejwezp_k("a:rejestrrekpos");
  rp_b = rejwezp_k("b:rejestrrekpos");
  rp_c = rejwezp_k("c:rejestrrekpos");
// zrob typy
  zrob_liste_typow;
  () = rejop("a:ustawrekpos",string(rp_a));
  () = rejop("b:ustawrekpos",string(rp_b));
  () = rejop("c:ustawrekpos",string(rp_c));
//  
  () = callalgfile("przelewy\\przelewy_bre_multi_dekret.sl","SL.DEKRET_BRE_MULTI->raport_dekretuj");
  () = rejop("a:ustawrekpos",string(rp_a));
  () = rejop("b:ustawrekpos",string(rp_b));
  () = rejop("c:ustawrekpos",string(rp_c));
  
  () = exdialogop("wyswietlpozycje","102");
  wyswietl_info_dekret;
  () = exdialogop("wyswietlpozycje","100");
}

/////////////////////////////////////////////////////////////////
define sprawdz_kontrahent_konto(k_b,k_kl,rodz)
{
   variable o,oo,r;
   o = 0;
   oo = 1;
   if (rodz == "C") r = "P";
   if (rodz == "RC") r = "P";
   if (rodz == "D") r = "R";
   if (rodz == "RD") r = "R";
   
  () = rejop("x0:otworzrej","MULTI_DEKRETY_"+r+".RXR");
  () = rejop("x1:otworzrej","KLPOWIAZANI.RXR");
  if (rejop("x0:znajdzrek",k_b)){
    do {
      if (k_b == rejwezp_s("x0:p_konto")) {
        if (strin(rejwezp_s("x0:p_plan"),k_kl) > -1) o = 1;
      } else {
        break;
      }    
    } while (rejop("x0:weznastepnyrek"));
  }
  if (rejop("x0:pustyrej")) o = 1;
  () = rejop("x0:zamknijrej");
  () = rejop("x1:zamknijrej");
  if ((o) and (oo)) return 1;
  return 0;
}

define kontrahent_filtr_plan()
{
    variable k,d,r,b;
    variable ok;
    
    ok = 0;
    b = rejwezp_s("a:m_konto_plan");
    if (not(b == "")) {
        k = rejwezp_s("w:plan_symbol");
        d = rejwezp_s("c:iz_612");
        ok = sprawdz_kontrahent_konto(b,k,d);
    } else {
        okalert("Brak okre|slonego konta bankowego w raporcie");
    }
    ustawazmienna_L("A_OK",ok);
}
define konto_filtr_plan()
{
    variable i,o,ok,okk;    
    o = 0;
    ok = 1;
    okk = 1;
    i = strin(dajazmienna_S("VATPARAM_KLSYM"),rejwezp_s("w:plan_symbol"));
    if (i == -1) ok = 0;    
    okk = czy_plan_aktywne(rejwezp_s("w:plan_symbol"));
    if (ok and okk) o = 1;
    ustawazmienna_L("A_OK",o);
}
////////////////////////////////////////////////////////////////////
define ustal_k_b(konto)
{
  variable xkonto,rkonto;
  ustawazmienna_S("D_STRING");
  rkonto = "";
  if (rejop("x:otworzrej1","KONTABANK.RXR"))  {
    if (rejop("x:wezpierwszyrek")) {
      do {
        ustawazmienna_S("D_STRING",rejwezp_s("x:numer_bank"));
        () = callalg("zrob_nowe_konto");
        xkonto = dajazmienna_S("D_STRING");
        if (konto == xkonto) {
          rkonto = rejwezp_s("x:konto_bank");
          () = rejop("x:zamknijrej");
          return rkonto;
        }
      } while (rejop("x:weznastepnyrek"));
    }    
    () = rejop("x:zamknijrej");
  }
  return rkonto;
}
define raport_sprawdz_poprawnosc()
{
  variable ok = 1;
  variable rp_a = rejwezp_k("a:rejestrrekpos");
  variable rp_b = rejwezp_k("b:rejestrrekpos");
  variable rp_c = rejwezp_k("c:rejestrrekpos");
  
  if ( not(rejwezp_s("a:m_status") == "odloz"))  {
// zrob typy
  zrob_liste_typow;
  () = rejop("a:ustawrekpos",string(rp_a));
  () = rejop("b:ustawrekpos",string(rp_b));
  () = rejop("c:ustawrekpos",string(rp_c));
//  
  variable k,k_k,klucz_id;
  
  k = rejwezp_s("a:m_nrkonta");
  k_k = ustal_k_b(k);
  if (not(k_k == "")) {
    rejwstawp_s("a:m_konto_plan",k_k);
  } else {
    okalert("Brak zdefiniowanego konta bankowego !");
    return 0;
  }
    () = rejop("c:zmienkluczrej","3");
    klucz_id = rejwezp_k("a:m_id");
    () = ustawczekajinfo("Start4","Sprawdzanie dekretacji raportu. Prosz|e czeka|c ...");
    if (rejop("c:znajdzrek",string(klucz_id))) {
        do {           
            if (not(klucz_id == rejwezp_k("c:m_id"))) break;
            rejwstawp_l("c:iz_log",0);
            
            ustawazmienna_S("kurs_waluta",rejwezp_s("a:m_waluta"));
            ustawazmienna_K("kurs_kwota",0);
            ustal_kwote_kursu;
            zrob_kwota_zdew_zap("c:iz_kwota_zap");
  
            if (not(pustepole("c:iz_konto_plan"))) {
              if (czy_plan_aktywne(rejwezp_s("c:iz_konto_plan"))) {
                if (czy_plan_rozr(rejwezp_s("c:iz_konto_plan"))) {
                    if (pustepole("c:iz_transakcja")) {
                        okalert("Pozycja posiada dekret na konto rozrachunkowe","a brak wpisanej transakcji zapisu");
                        rp_c = rejwezp_k("c:rejestrrekpos");
                        ok = 0;
                        break;
                    }
                }
                if (czy_plan_klas(rejwezp_s("c:iz_konto_plan"))) {
                    variable n_id,z_id,l_id,klucz;
                    n_id = rejwezp_k("a:m_id");
                    l_id = rejwezp_k("c:in_id");
                    z_id = rejwezp_k("c:iz_id");
                    klucz = string(n_id)+"*"+string(l_id)+"*"+string(z_id);
                    () = rejop("e:zmienkluczrej","4");
                    if (not(rejop("e:znajdzrek",klucz))) {
                        okalert("Pozycja posiada dekret na konto klasyfikacji","a brak rozpisania zapisu");
                        rp_c = rejwezp_k("c:rejestrrekpos");
                        ok = 0;
                        break;
                    }
                }
              } else {
                    okalert("Ksi|egowanie na koncie nieaktywnym !");
                        rp_c = rejwezp_k("c:rejestrrekpos");
                        ok = 0;
                        break;
              }
            } else {
                if (pustepole("c:iz_transakcja")) {
                  okalert("Brak dekretu pozycji !");
                  rp_c = rejwezp_k("c:rejestrrekpos");
                  ok = 0;
                  break;
                }
            }
            rejwstawp_l("c:iz_log",ok);
          () = ustawczekajinfo("Nastepny","Next");
        } while (rejop("c:weznastepnyrek")); 
      if (not(ok)) {
        rejwstawp_l("c:iz_log",0);
        rejwstawp_s("a:m_status","import");
//        () = exdialogop("zmienrekordwmenu","100");
//        () = exdialogop("zmienrekordwmenu","101");
      }
    }
    () = ustawczekajinfo("Stop","");
    
  if (ok){
  
    () = rejop("a:ustawrekpos",string(rp_a));
    () = rejop("b:ustawrekpos",string(rp_b));
    () = rejop("c:ustawrekpos",string(rp_c));
    
    rejwstawp_s("a:m_status","dekret");
    () = exdialogop("zmienrekordwmenu","100");
    
    if (not (dajazmienna_S("RAPORTY_STATUS") == "")) {
        ustawazmienna_S("RAPORTY_STATUS","dekret");
        () = exdialogop("wyswietlpozycje","100");
        () = exdialogop("wyswietlpozycje","101");
        () = exdialogop("wyswietlpozycje","102");
//        ustaw_status_view;
       () = exdialogop("wyswietlpozycje","412");
    }
  } else {
    rejwstawp_l("c:iz_log",0);
    variable b_i = rejwezp_k("c:in_id");
    () = rejop("b:zmienkluczrej","1");
    () = rejop("b:znajdzrek",string(b_i));
    () = rejop("b:zmienkluczrej","2");
    wyswietl_zzap_raport;
    () = rejop("c:ustawrekpos",string(rp_c));
    ustaw_status_view;
    () = exdialogop("wyswietlpozycje","100");
    () = exdialogop("wyswietlpozycje","101");
    () = exdialogop("wyswietlpozycje","102");
    () = exdialogop("wyswietlpozycje","412");
    () = exdialogop("idzdopozycji","102");
  }
  } else {
    okalert("Ju|z wykonano ksi|egowanie !");
  }  
  return ok;
}

define sprawdz_status(s)
{
    s = 1;
    if (rejwezp_s("a:m_status") == "odloz") {
        s = yesnalert("Ju|z wykonano ksi|egowanie tego wyci|agu ! $ $ Czy chcesz zrobi|c jeszcze $ raz dokument ksi|egowy ?");
    }
    return s;    
}

define raport_ksieguj()
{
  variable co;
  
  variable rp_a = rejwezp_k("a:rejestrrekpos");
  variable rp_b = rejwezp_k("b:rejestrrekpos");
  variable rp_c = rejwezp_k("c:rejestrrekpos");
  
 if (sprawdz_status(0)) {
  co = raport_sprawdz_poprawnosc();
  
  () = rejop("a:ustawrekpos",string(rp_a));
  () = rejop("b:ustawrekpos",string(rp_b));
  () = rejop("c:ustawrekpos",string(rp_c));
  
  if (not(co))  {
    okalert("S|a jeszcze zapisy do zadekretowania !");
    return;
  }
  if (dajazmienna_L("tryb_ksiegi")) {
    if (yesalert("Przestaw ksi|eg|e w tryb pracy bez dokument|ow oczekuj|acych !")) {
      finnmenufunkcja(75);
    } else {
      return;
    }
  }
    () = rejop("a:ustawrekpos",string(rp_a));
    () = rejop("b:ustawrekpos",string(rp_b));
    () = rejop("c:ustawrekpos",string(rp_c));
     if (not(rejwezp_s("a:m_status") == "odloz")) rejwstawp_s("a:m_status","dekret");     
     ustawazmienna_S("kontobank",rejwezp_s("a:m_konto_plan"));
     ustawazmienna_S("id_modul");
     ustawazmienna_D("data_dok_ks",rejwezp_d("a:m_data"));
     ustawazmienna_S("ks_wyciag",rejwezp_s("a:m_numer"));
     () = callalgfile("przelewy\\przelewy_bre_multi_ksieguj.sl","PRZELEW-POLECENIE-WYCIAG");
     () = rejop("a:ustawrekpos",string(rp_a));
     callsl("IMPORT_BRE_MULTI->raport_zapis_odznacz_przelewy_status()");
 }
 
  () = rejop("a:ustawrekpos",string(rp_a));
  () = rejop("b:ustawrekpos",string(rp_b));
  () = rejop("c:ustawrekpos",string(rp_c));  
  () = exdialogop("zmienrekordwmenu","100");
//  ustaw_status_view;
  () = exdialogop("idzdopozycji","100");
  () = exdialogop("wyswietlpozycje","100");
  () = exdialogop("wyswietlpozycje","101");
  () = exdialogop("wyswietlpozycje","102");
  () = exdialogop("wyswietlpozycje","412");
}
///////////////////////////////////////////////////////////////////

define raport_zapis_usun_dekret()
{
  if (yesalert("Czy usun|a|c dekretacj|e ?")) {
  
    () = callalgfile("przelewy\\przelewy_bre_multi_dekret.sl","SL.DEKRET_BRE_MULTI->usun_transakcje_zapisy_transakcje");
    () = callalgfile("przelewy\\przelewy_bre_multi_dekret.sl","SL.DEKRET_BRE_MULTI->usun_klasyfikacje_zapisy_transakcje");
    xrejwstawp_s("c:iz_konto_kl_sym","");
    xrejwstawp_s("c:iz_konto_kl_sym_plus","");
    xrejwstawp_s("c:iz_konto_plan","");
    xrejwstawp_s("c:iz_transakcja","");
    xrejwstawp_k("c:iz_id_przelew");
    () = rejop("c:zapiszrek");
    () = exdialogop("wyswietlpozycje","102");
    wyswietl_info_dekret;
  }
}

define raport_zapis_odznacz_przelewy_status()
{
  variable klucz_id,key_id;
    () = rejop("c:zmienkluczrej","3");
    klucz_id = rejwezp_k("a:m_id");
    () = ustawczekajinfo("Start4","Odznaczanie przelew|ow. Prosz|e czeka|c ...");
    if (rejop("c:znajdzrek",string(klucz_id))) {
    () = rejop("e:otworzrejsprawdz","PRZELEW.RJR");
    () = rejop("e:zmienkluczrej","2");
        do {           
           if (not(klucz_id == rejwezp_k("c:m_id"))) break;
           if (not(pustepole("c:iz_id_przelew"))) {
            key_id = rejwezp_k("c:iz_id_przelew");
            if (rejop("e:znajdzrek",string(key_id))) rejwstawp_s("e:status","odloz");
           }
          () = ustawczekajinfo("Nastepny","Next");
        } while (rejop("c:weznastepnyrek")); 
        
    () = rejop("e:zamknijrej");
    }
    () = ustawczekajinfo("Stop","");

}