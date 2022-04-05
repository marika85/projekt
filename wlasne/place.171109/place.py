
/////////////////////////////////////////////////////////////////////////
//
// Perseus Spolka z o.o 
// Wszystkie prawa zastrzezone
// 
// Data utworzenia: 2002.11.27
// Zmiana: 2004.05.27 -- nazwa: pracownicy, zleceniobiorcy
//////////////////////////////////////////////////////////////////////////////
% umowy.alg
exitalg[0]   

% REJDEFTABLE   # tablica z rejestrami
//
// ---------------= rejestry podstawowe  ---------------------------
7,0,0,"PL_PAR.RXR",place\pl_par,2          # rejestr prezentacji plac
,0,0,"PLZAP.RXR",place\plzap,2             # zapisy do rejestru prezentacji plac
,0,0,"XPLZAP.RXR",place\xplzap,2           # zapisy do rejestru prezentacji plac(podczas modyfikacji)
,0,0,"PLACE.RXR",place\place,1             # rejestr plac
,0,0,"PLARCH.RXR",place\plarch,1           # archiwalny rejestr plac 
,0,0,"XPLARCH.RXR",place\plarch,4           # archiwalny rejestr plac 
12,0,0,"PLSKLAD.RXR",place\plsklad,1       # skladniki plac
,0,0,"SKLAD_POWIAZ.RJR",place\sklad_powiaz,1      # rejestr skladnikow wchodzacych do podstawy skladnika glownego
,0,0,"PLLISTY.RXR",place\pllisty,1         # listy plac
,0,0,"PLLISTYX.RXR",place\pllisty,1         # listy plac
,0,0,"PLPOWIAZ.RXR",place\plpowiaz,1       # rejestr powiazan
8,0,0,"PLPREZ2.RXR",place\plprez2,2        # rejestr prezentacji plac
,0,0,"PLZAP2.RXR",place\plzap2,2           # zapisy do rejestru prezentacji plac
31,0,0,"WYDZIALY.RXR",place\wydzialy,1     # rejestr WYDZIALOW
9,0,0,"PODATNIK.RXR",place\podatnik,1      # informacje o pracownikach
,0,0,"Zlbiorca.RXR",place\zlbiorca,1      # informacje o pracownikach
,0,0,"PLCPOD.RXR",place\plcpod,1           # rejestr stawek proc.podatku
,0,0,"STALE.RXR",place\stale,1             # rejestr stalych dodatkow i potracen
,0,0,"ZWOLNIENIA.RXR",place\zwolnienia,1   # rejestr okresow zwolnienia z oplacania fp i fgsp
,0,0,"xZWOLNIENIA.RXR",place\xzwolnienia,2   # rejestr okresow zwolnienia z oplacania fp i fgsp
,0,0,"FEP.RXR",place\fep,1 		  # rejestr okresow oplacania fep
,0,0,"xFEP.RXR",place\xfep,2   		  # rejestr okresow oplacania fep
,0,0,"XSTALE.RXR",place\xstale,1             # rejestr stalych dodatkow i potracen(powiazany z listami probnymi)
,0,0,"HIST_SKLAD.RXR",place\histsklad,1             # rejestr historii przyporzadkowan skladnikow
,0,0,"H_CHOR.RXR",place\hchor,1	   # rejestr ze szczegolami wyliczenia chorobowego dla oczekujacych
,0,0,"H_CHORARCH.RXR",place\hchorarch,1   # archiwalny rejestr ze szczegolami wyliczenia chorobowego dla zaakceptowanych
,0,0,"H_CHOR2.RXR",place\hchor2,1	   # rejestr ze szczegolami podst.chorobowego - sk�adniki >miesiac dla oczekujacych
,0,0,"H_CHORARCH2.RXR",place\hchorarch2,1   # archiwalny rejestr ze szczegolami podst.chorobowego - sk�adniki >miesiac dla zaakceptowanych
,0,0,"PREZCHOR.RXR",place\prezchor,2    # prezentacja szczegolow wyliczenia chorobowego
,0,0,"PLPREZ4.RXR",place\plprez4,2         # rejestr prezentacji stalych
,0,0,"PLZAP4.RXR",place\plzap4,2           # zapisy do rejestru prezentacji stalych
,0,0,"PIT.RXR",place\pit,1                 # rejestr PIT-ow
,0,0,"PITZAP.RXR",place\pitzap,1           # zapisy do rejestru "pit"
13,0,0,"POZYCJA.RXR",place\pozycja,1       # rejestr pozycji w PIT-cie
14,0,0,"PITSKLAD.RXR",place\pitsklad,1     # rejestr skladnikow do PIT-ow
15,0,0,"NRLIST.RXR",place\nrlist,4         # rejestr numerow wystawionych list
17,0,0,"NRLISTX.RXR",place\nrlist,4         # rejestr numerow wystawionych list- zaznaczany
,0,0,"NRLISTUX.RXR",place\nrlistu,4         # rejestr numerow wystawionych list- zaznaczany
32,0,0,"NRLIST2.RXR",place\nrlist2,4       # rejestr numerow wystawionych list
26,0,0,"URZAD.RXR",place\urzad,1           # rejestr Urzedow Skarbowych
,0,0,"GRUPA.RXR",place\grupa,1           # rejestr grup skladnikow
,0,0,"WSKAZNIK_REH.RXR",place\wskaznik_reh,1           # rejestr grup skladnikow
28,0,0,"STANOW.RXR",place\stanow,1         # rejestr stanowisk
29,0,0,"KODPRAC.RXR",place\kodprac,1       # rejestr kodow tytulu ubezpieczenia
30,0,0,"RODZSKL.RXR",place\rodzskl,1       # rejestr rodzaje skladnikow
,0,0,"PPRAPORT.RXR",place\ppraport,1       # rejestr danych do raportow Programu Platnika
,0,0,"PPDEKLAR.RXR",place\ppdeklar,1       # rejestr danych do deklaracji Programu Platnika
,0,0,"IMP_TXT.RXR",place\imp_txt,2         # rejestr do importu danych z programu Platnika
,0,0,"PARCHOR.RXR",place\parchor,1         # rejestr parametrow do wyl.zasilkow
,0,0,"PLCHOR.RXR",place\plchor,2           # rejestr sumami plac do wyl. urlopu
,0,0,"PLCHOR1.RXR",place\plchor1,1           # rejestr sumami plac do wyl. chorobowego - sk�adniki <= miesiac
,0,0,"PLCHOR2.RXR",place\plchor2,1           # rejestr sumami plac do wyl. chorobowego - skladniki > miesiac
,0,0,"PARPRZEL.RXR",place\parprzel,1       # rejestr parametrow do przelewow
,0,0,"PITLICZ.RXR",place\pitlicz,1         # rejestr danych do PIT
,0,0,"KONTROLA.RXR",place\kontrola,1       # rejestr numerow wystawionych list
,0,0,"KREDYT.RXR",place\kredyt,1           # rejestr kredytowy
,0,0,"ZMIDENT.RXR",place\zmident,1         # zmiana danych identyfikacyjnych pracownika
,0,0,"SUMYNAR.RXR",place\sumynar,1         # rejestr sum z list narastajaco
,0,0,"SUMYNART.RXR",place\sumynart,1         # rejestr sum z list narastajaco
,0,0,"SUMYNART-zl.RXR",place\u_sumynart,1         # rejestr sum z list narastajaco
,0,0,"PLKSIEG_HIS.RXR",place\plksieg_his,1         # rejestr danych do ksiegowania
,,0,"PLC_KDR.RJR",plc_kdr,2                # dane z kadr
44,,0,"PLACE-ZAWODY.RXR",place\rejestr_zawodow
,,0,"PLC_WYROZNIK.RXR",place\wyroznik,1    # wyrozniki list plac
,,0,"PLCROZPKLAS.RJR",place\plcrozl,1       # rozpisanie klasyfikacje
,,0,"PLCROZPKLAS-T.RJR",.,2 
,,0,"PLFORMULY.RJR",place\plformuly,1	# definicje formul		
,,0,"KARTOTEK1.RXR",place\kartotek1,2           # rejestr pracownikow do pit
,,0,"KARTOTEK2.RXR",place\kartotek2,2           # rejestr zleceniobiorcow do pit
,,0,"PLKWOTY_ZW.RXR",place\plkwoty_zw,1	# rejestr kwot wykorzystanych dla skladnikow z czesciowym zwolnieniem od podatku
,,0,"ZLKWOTY_ZW.RXR",place\zlkwoty_zw,1	# rejestr kwot wykorzystanych dla skladnikow z czesciowym zwolnieniem od podatku
,,0,"PLSKLAD_PROC.RXR",place\plsklad_proc,1 # rejestr stawek % dla skladnikow i pracownikow
,,0,"PLPODST.RXR",place\plpodst,1 # rejestr podstaw dla godzin nocnych
,,0,"WZORPLAC.RXR",place\wzorplac,1	# rejestr wzorcow placowych
//
// TEMP
,0,0,"SKLADPOWTMP.RJR",skladpowtmp,2                       # tmp dla skladnikow powiazanych
,0,0,"PLTMP.RXR",.,2                       # tmp dla zapisow - prezentacji plac
,0,0,"PLTMP2.RXR",.,2                      # tmp dla zapisow - prezentacji list plac
,0,0,"PLDRK.RXR",.,2                       # tmp dla zapisow - do drukowania listy
,0,0,"ARCHDRK.RXR",place\archdrk,2         # tmp dla zapisow - do drukowania listy
,0,0,"PLKSIEG.RXR",place\plksieg,2         # rejestr danych do ksiegowania
,0,0,"xplsklad.RXR",place\plsklad,2         # rejestr danych do wydrukow
,0,0,"pldruki.RXR",place\pldruki,2         # rejestr danych do wydrukow
,0,0,"PLPRZEL.RXR",place\plprzel,2         # rejestr danych do przelewow
,0,0,"PITTMP.RXR",.,2                      # tmp dla zapisow - PIT
,0,0,"PLTMP4.RXR",.,2                      # tmp dla zapisow - STALE
,0,0,"KORZUS.RXR",place\korzus,4			# tmp dla korekt zus - listy z lat ubieglych	

,0,0,"PLACE-LISTA-NUMEROW.REX",place\lista_numerow,1
,0,0,"PLACE-LISTA-NUMEROW-LISTA.RJR",place\lista_numerow_lista,1
,0,0,"PLACE-LISTA-ZLECEN-ZGLOSZ.RJR",place\lista_numerow_zlecen,1

//
// modul przelewow bankowych
,0,0,"PRZELEWY.RJR",bank\przelewy,1             # plik naglowkowy do przelewow
,0,0,"PRZELZAP.RJR",bank\przelzap,1             # zapisy do przelewow
,0,0,"PRZELRZL.RJR",bank\przelrzl,1             # zapisy do przelewow k.klasyfikacji
,0,0,"PRZELTMP.RJR",.,2                         # tmp dla zapisow 
,0,0,"PRZELTM1.RJR",.,2                         # tmp dla zapisow k.klasyfikacji

,,0,"CZYTAJ-T.RJR",.,2

%<< REJDEFTABLE # tablica z rejestrami

% PATTTABLE.DIC
%<<PATTTABLE.DIC

//wzorce dlugosci pol  
"#10",30     # symbol listy plac, 30720
"#10",31     # symbol pracownika, 31744
"#10",32     # symbol skladnika,  32768 +2 
"99.99.99",33 # symbol roku
// -----------------------
% KORZUS.RXR
1
1
KORZUS
% KORZUS.DBF
0,log,,,,,D
1,string,10,,1	          # pracownik
2,kwota                   # spodst_er_old
3,kwota		          # sueu_old
4,kwota			# suru_old
5,kwota			# suep_old
6,kwota			# surp_old
7,kwota			# spodst_cw_old
8,kwota			# sucu_old
9,kwota			# suwp_old
10,kwota		# spodst_z_old
11,kwota		# szalzdr_old
12,kwota		# szalzdro_old
13,xkwota,,5		# sfpp_old
14,xkwota,,5		# sfgp_old
15,xkwota,,5		# sfep_old
//
16,kwota                # spodst_er
17,kwota		# sueu
18,kwota		# suru
19,kwota		# suep
20,kwota		# surp
21,kwota		# spodst_cw
22,kwota		# sucu
23,kwota		# suwp
24,kwota		# spodst_z
25,kwota		# szalzdr
26,kwota		# szalzdro
27,xkwota,,5		# sfpp
28,xkwota,,5		# sfgp
29,xkwota,,5		# sfep
30,string,30		# nazwisko
31,string,20		# imie
32,log			# czy zmiana
33,string,10		# kod zus
34,kwota		# podstawa podatku
35,kwota		# podatek brutto
36,kwota		# podatek netto
37,kwota		# netto
38,kwota		# procent podatku
39,kwota		# fpp
40,kwota		# fgp
41,kwota		# fep
42,string,20	
43,kwota		# KUP
44,kwota		# ulga
% KORZUS.DIC
"pracownik",1,Estring	          # pracownik
"spodst_er_old",2,Ekwota                   # spodst_er_old
"sueu_old",3,Ekwota		          # sueu_old
"suru_old",4,Ekwota			# suru_old
"suep_old",5,Ekwota			# suep_old
"surp_old",6,Ekwota			# surp_old
"spodst_cw_old",7,Ekwota			# spodst_cw_old
"sucu_old",8,Ekwota			# sucu_old
"suwp_old",9,Ekwota			# suwp_old
"spodst_z_old",10,Ekwota		# spodst_z_old
"szalzdr_old",11,Ekwota		# szalzdr_old
"szalzdro_old",12,Ekwota		# szalzdro_old
"sfpp_old",13,Ekwota		# sfpp_old
"sfgp_old",14,Ekwota		# sfgp_old
"sfep_old",15,Ekwota		# sfep_old
//
"spodst_er",16,Ekwota                # spodst_er
"sueu",17,Ekwota		# sueu
"suru",18,Ekwota		# suru
"suep",19,Ekwota		# suep
"surp",20,Ekwota		# surp
"spodst_cw",21,Ekwota		# spodst_cw
"sucu",22,Ekwota		# sucu
"suwp",23,Ekwota		# suwp
"spodst_z",24,Ekwota		# spodst_z
"szalzdr",25,Ekwota		# szalzdr
"szalzdro",26,Ekwota		# szalzdro
"sfpp",27,Ekwota		# sfpp
"sfgp",28,Ekwota		# sfgp
"sfep",29,Ekwota		# sfep
"nazwisko",30,Estring		# nazwisko
"imie",31,Estring		# imie
"czyzmiana",32,Elog		# czy zmiana
"kodzus",33,Estring		# kod zus
"rpopod",34,Ekwota		# podstawa podatku
"rpodbrutto",35,Ekwota		# podatek brutto
"rpodnetto",36,Ekwota		# podatek netto
"rnetto",37,Ekwota		# netto
"xproc",38,Ekwota		# procent podatku
"fpp",39,Ekwota
"fgp",40,Ekwota
"fep",41,Ekwota
"wydzial",42,Estring
"kup",43,Ekwota
"ulga",44,Ekwota
//
% KORZUS-KOLUMNY.DIC
"pracownik",1,Estring,"Symbol" 
"nazwisko",30,Estring,"Nazwisko" 
"imie",31,Estring ,"Imie"
"czyzmiana",32,Elog,"Zmiana"
// ---------------------------------------------------------------==
// rejestr formul placowych
% PLFORMULY.RJR
1
1
PLFORMULY
PLFORMULY

% PLFORMULY.DBF
0,log,,,,,D          # usuwanie "w miejscu"
1,string,10,2,1,,N           # symbol formuly
3,string,50          # opis formuly
4,string,15          # wyroznik formuly

% PLFORMULY.DIC
"form_symbol",1,Estring,"Symbol"    
"form_opis",3,Estring,"Opis formu|ly"    
"form_wyr",4,Estring,"Wyr|o|znik"    
//
% PLFORMULY.MEN
1,,,,10,"Symbol"
3,,,,50,"Opis formu|ly"
4,,,,15,"Wyr|o|znik"
//
% PLFORMULY.BOX
"Symbol formu|ly:",1
"Opis formu|ly:",3
"Wyr|o|znik:  ",4
// --------------------------
// rejestr klasyfikacji dla pracownika
// --------------------------
% PLCROZPKLAS.RJR
1
1
PLCROZPKLAS
% PLCROZPKLAS-T.RJR
1
1
PLCROZPKLAS-T
% PLCROZPKLAS-T.DBF
1,string,10,1,1
2,2002,,2,2
3,kwota
5,byte
% PLCROZPKLAS.DBF
0,log,,,,,D 
%< PLCROZPKLAS-T.DBF
4,ulong
// klucz: numer pracownika i klasyfikacja
1,0,,,3   # klucz numer 3 
5,0,,,3
% PLCROZPKLAS.DIC,PLCROZPKLAS-T.DIC
"plc_nr",1,Estring
"plc_klas",2,Estring
"plc_proc",3,Ekwota
"plc_dokid",4,Ekwota
"plc_rodzaj",5,Ekwota
// -----------------------------------------------------------

// ----------------------------------------
// pomocniczy rejestr do drukowania
// ---------------------------------------

// rejestr do odczytania BOX

% CZYTAJ-T.RJR
1
0
CZYTAJ-T

% CZYTAJ-T.DBF
1,string,100
2,word
3,string,10

% CZYTAJ-T.DIC
"r_nazwa",1,Estring
"r_id",2,Ekwota

// ----------------------------------------
// rejestr do przechowywania listy numerow
// ----------------------------------------

% PLACE-LISTA-NUMEROW.REX
1
1
PLACE-LISTA-NUMEROW
"!CallAlgFile[""place\place_poprz_listy.sl"",""!SL.gl_rex_rejestr_menu(""""PLACE-LISTA-NUMEROW"""")""]"
% PLACE-LISTA-NUMEROW.DBF
0,log,,,,,D           
1,string,20,2,1,,N       # klucz, identyfikator
2,ulong,,,1              # numer
3,ydate
4,ydate
5,string,,30720
6,string,,31744
7,string,,496
8,log
9,log
10,log                   # place czy umowy zlecenia
105,4001,,,,,A           # czas zalozenia
106,ydate,,,,,A          # data zalozenia
107,string,8,,,,TA

% PLACE-LISTA-NUMEROW.BOX
D = "Parametry listy"
"Numer",2,A
"Data od",3,A
"Data do",4,A
"Lista numer",5,A
"Pracownik",6,A
"Wydzia|l",7,A
"Zbiorcze",8,A
"Miesi|acami",9,A
"Place",10,A
"Osoba drukuj|aca",105,A
"Data wydrukowania",106,A
"Czas wydrukowania",107,A

% PLACE-LISTA-NUMEROW.DIC
"klucz_id",1,Estring,"Klucz"
"numer",2,Ekwota,"Numer"
"d1",3,Edata,"Data od"
"d2",4,Edata,"Data do"
"listanumer",5,Estring,"Numer listy"
"pracownik",6,Estring,"Pracownik"
"wydzial1",7,Estring,"Wydzial"
"zbiorcze",8,Elog,"Zbiorcze"
"miesiacami",9,Elog,"Miesiacami"
"place",10,Elog,"P|lace" 
"czas_spo",107,Estring,"Czas sporz|adzenia"
"data_spo",106,Edata,"Data sporz|adzenia"
"osoba_spo",105,Estring,"Osoba"

% PLACE-LISTA-NUMEROW-LISTA.RJR
0
1
PLACE-LISTA-NUMEROW-LISTA
% PLACE-LISTA-ZLECEN-ZGLOSZ.RJR
0
1
PLACE-LISTA-NUMEROW-LISTA
% PLACE-LISTA-NUMEROW-LISTA.DBF
0,log,,,,,D
1,ulong,,,1
2,ulong
10,string,,30720,8    # symbol listy plac
11,ulong              # numer listy
12,ulong              # numer wzorca
13,string,,31744,7      # symbol pracownika (do sortowania)
3,ulong,,,99,,NM
14,ydate              # okres zus
3,0,,,1
% PLACE-LISTA-NUMEROW-LISTA.DIC
"l_numer",1,Ekwota
"l_id",2,Ekwota
"l_lista",10,Estring
"l_nrlisty",11,Ekwota
"l_nrwzorca",12,Ekwota
"l_pracownik",13,Estring
"l_okreszus",14,Edata
// -----------------------------------------

% PLC_KDR.RJR # inicjalizacja rejestru
100
1
"PLC_KDR"
"PLC_KDR"

"Powt|orzony rekord !"
"Zmieniasz rekord ?"
"Czy doda|c ten rekord ?"
"Czy usun|a|c ten rekord ?"
"Czy doda|c nast|epny rekord ?"
"Rekord nie istnieje !$Czy doda|c ten rekord ?"
"Rejestr jest pusty !"
"Rejestr jest pusty !$Wprowadzasz pierwszy rekord  ?"
"Nie ma rekordu o tym identyfikatorze.$Znale|x|c nast|epny ?"
// --------------------------------------------
% PLC_KDR.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,35,,1,,N     # symbol pracownika
110,kwota
120,kwota
130,kwota
131,kwota
132,kwota
133,kwota
134,kwota
141,kwota
142,kwota
143,kwota
144,kwota
200,xkwota,,2
201,xkwota,,2
202,xkwota,,2
203,xkwota,,2
204,xkwota,,2
205,xkwota,,2
206,xkwota,,2
207,xkwota,,2
208,xkwota,,2
301,xkwota,,2
302,xkwota,,2
303,xkwota,,2
304,xkwota,,2
305,kwota
306,kwota
307,kwota
308,kwota
309,string,10
310,kwota
311,kwota
312,kwota
313,kwota
314,kwota    # zmniejszenie z tyt urlopu okolicznosciowego
315,kwota    # zmniejszenie z tyt.urlopu szkoleniowego
316,kwota       # wynagrodzenie za urlop okolicznosciowy
317,kwota       # wynagrodzenie za urlop szkoleniowy
318,kwota       # liczba dni rob. okolicznosciowego w okresie
319,kwota       # liczba godzin rob. okolicznosciowego w okresie
320,kwota       # liczba dni rob. szkoleniowego w okresie
321,kwota       # liczba godzin rob. szkoleniowego w okresie
322,kwota       # zmniejszenie z tyt. zwolnienia lekarskiego 70%
323,kwota       # zasi�ek chorobowy 70%
324,kwota       # liczba dni kal. chorobowego 70% w okresie
325,kwota       # choroba 70% - ilosc godzin roboczych
326,kwota       # choroba 70% - ilosc dni roboczych
327,kwota       # ilosc dni roboczych nn w okresie
328,kwota       # ilosc godz roboczych nn w okresie
329,kwota       # ilosc dni roboczych do przepracowania ( gdy czesc miesiaca)
330,kwota       # ilosc godz roboczych do przepracowania ( gdy czesc miesiaca)
331,kwota       # ilosc dni ( gdy czesc miesiaca)
332,kwota       # ilosc godz ( gdy czesc miesiaca)
333,ydate	# poczatek rozliczanej choroby lub zasilku ( dla ustalenia czy naliczac podstawe chorobowego na nowo)
334,kwota	# ilosc dni rob. nieob bez wplywu na wynagrodzenie
//
335,kwota       # zmniejszenie z tyt. zwolnienia lekarskiego 75%
336,kwota       # zasi�ek chorobowy 75%
337,kwota       # liczba dni kal. chorobowego 75% w okresie
338,kwota       # choroba 75% - ilosc godzin roboczych
339,kwota       # choroba 75% - ilosc dni roboczych
340,kwota       # zmniejszenie z tyt. zwolnienia lekarskiego 90%
341,kwota       # zasi�ek chorobowy 90%
342,kwota       # liczba dni kal. chorobowego 90% w okresie
343,kwota       # choroba 90% - ilosc godzin roboczych
344,kwota       # choroba 90% - ilosc dni roboczych
345,ydate        # poczatek rozliczanego swiadczenia rehabilitacyjnego( dla ustalenia czy stosowac wska�nik rewaloryzacyjny)
// --------------------------------------------
% PLC_KDR.DIC # slownik pol rekordu
"KDR_sym",100,Estring        # symbol pracownika
"KDR_wyn_baz",110,Ekwota     # wynagrodzenie bazowe
"KDR_wyn_zas",120,Ekwota     # wynagrodzenie zasadnicze
"KDR_min_bez",130,Ekwota     # zmniejszenie z tytulu urlopu bezplatnego
"KDR_min_l00",131,Ekwota     # zmniejszenie z tytulu zwolnienia lek. 100%
"KDR_min_l80",132,Ekwota     # zmniejszenie z tytulu zwolnienia lek.  80%
"KDR_min_wyp",133,Ekwota     # zmniejszenie z tytulu urlopu wypoczynkowego
"KDR_min_oko",314,Ekwota    # zmniejszenie z tyt urlopu okolicznosciowego
"KDR_min_szk",315,Ekwota    # zmniejszenie z tyt.urlopu szkoleniowego
"KDR_min_ekw",134,Ekwota     # zmniejszenie z tytulu ekwiwalentu za urlop
"KDR_wyn_l00",141,Ekwota     # zasilek chorobowy 100%
"KDR_wyn_l80",142,Ekwota     # zasilek chorobowy  80%
"KDR_wyn_wyp",143,Ekwota     # wynagrodzenie za urlop wypoczynkowy
"KDR_wyn_oko",316,Ekwota       # wynagrodzenie za urlop okolicznosciowy
"KDR_wyn_szk",317,Ekwota       # wynagrodzenie za urlop szkoleniowy
"KDR_wyn_ekw",144,Ekwota     # ekwiwalent za urlop wypoczynkowy
"KDR_dni_lek",200,Ekwota     # liczba dni kal. chorobowego w roku (bez okresu)
"KDR_dni_l00",201,Ekwota     # liczba dni kal. chorobowego 100% w okresie
"KDR_dni_l80",202,Ekwota     # liczba dni kal. chorobowego  80% w okresie
"KDR_dni_wyp",203,Ekwota     # liczba dni rob. wypoczynkowego w okresie
"KDR_gdz_wyp",204,Ekwota     # liczba gdz rob. wypoczynkowego w okresie
"KDR_dni_oko",318,Ekwota       # liczba dni rob. okolicznosciowego w okresie
"KDR_gdz_oko",319,Ekwota       # liczba godzin rob. okolicznosciowego w okresie
"KDR_dni_szk",320,Ekwota       # liczba dni rob. szkoleniowego w okresie
"KDR_gdz_szk",321,Ekwota       # liczba godzin rob. szkoleniowego w okresie
"KDR_dni_ekw",205,Ekwota     # liczba dni rob. ekwiwalentu w okresie
"KDR_gdz_ekw",206,Ekwota     # liczba gdz rob. ekwiwalentu w okresie
"KDR_dni_bez",207,Ekwota     # liczba dni rob. bezplatnego w okresie
"KDR_gdz_bez",208,Ekwota     # liczba gdz rob. bezplatnego w okresie
"til_dni_all",301,Ekwota     # liczba wszystkich dni w miesiacu 
"til_gdz_all",302,Ekwota     # liczba wszystkich godzin w miesiacu
"til_dni_rob",303,Ekwota     # liczba dni roboczych w miesiacu
"til_gdz_rob",304,Ekwota     # liczba godzin roboczych w miesiacu
"KDR_wyn_pod",305,Ekwota     # liczba godzin roboczych w miesiacu
"til_dni_prze",306,Ekwota           # liczba dni przepracowanych w miesiacu
"til_gdz_prze",307,Ekwota           # liczba godzin przepracowanych w miesiacu
"kdr_stawka",308,Ekwota             #stawka miesieczna/dzienna/godzinowa 
"kdr_wymiar",309,Estring              # stawka w wymiarze miesiecznym/dnia/godziny
"KDR_gdz_l00",310,Ekwota              # choroba 100% - ilosc godzin roboczych
"kdr_gdz_l80",311,Ekwota              # choroba 80% - ilosc godzin roboczych
"KDR_dnir_l00",312,Ekwota             # choroba 100% - ilosc dni roboczych
"kdr_dnir_l80",313,Ekwota             # choroba 80% - ilosc dni roboczych
"KDR_min_l70",322,Ekwota       # zmniejszenie z tyt. zwolnienia lekarskiego 70%
"KDR_wyn_l70",323,Ekwota       # zasi�ek chorobowy 70%
"KDR_dni_l70",324,Ekwota       # liczba dni kal. chorobowego 70% w okresie
"KDR_gdz_l70",325,Ekwota       # choroba 70% - ilosc godzin roboczych
"KDR_dnir_l70",326,Ekwota       # choroba 70% - ilosc dni roboczych
"KDR_dni_nn",327,Ekwota     # liczba dni rob. nn w okresie
"KDR_gdz_nn",328,Ekwota     # liczba gdz rob. nn w okresie
"rztil_dni_rob",329,Ekwota     # liczba dni roboczych w miesiacu- dla czesci miesiaca
"rztil_gdz_rob",330,Ekwota     # liczba godzin roboczych w miesiacu- dla czesci miesiaca
"rztil_dni_all",331,Ekwota     # liczba dni w miesiacu- dla czesci miesiaca
"rztil_gdz_all",332,Ekwota     # liczba godzin  w miesiacu- dla czesci miesiaca
"kdr_poczchor",333,Edata       # poczatek rozliczanej choroby lub zasilku ( dla ustalenia czy naliczac podstawe chorobowego na nowo)
"KDR_dni_bww",334,Ekwota     # liczba dni rob. bww w okresie
//
"KDR_min_l75",335,Ekwota       # zmniejszenie z tyt. zwolnienia lekarskiego 75%
"KDR_wyn_l75",336,Ekwota       # zasi�ek chorobowy 75%
"KDR_dni_l75",337,Ekwota       # liczba dni kal. chorobowego 75% w okresie
"KDR_gdz_l75",338,Ekwota       # choroba 75% - ilosc godzin roboczych
"KDR_dnir_l75",339,Ekwota       # choroba 75% - ilosc dni roboczych
"KDR_min_l90",340,Ekwota       # zmniejszenie z tyt. zwolnienia lekarskiego 90%
"KDR_wyn_l90",341,Ekwota       # zasi�ek chorobowy 90%
"KDR_dni_l90",342,Ekwota       # liczba dni kal. chorobowego 90% w okresie
"KDR_gdz_l90",343,Ekwota       # choroba 90% - ilosc godzin roboczych
"KDR_dnir_l90",344,Ekwota       # choroba 90% - ilosc dni roboczych
"kdr_poczreh",345,Edata        # poczatek rozliczanego swiadczenia rehabilitacyjnego( dla ustalenia czy stosowac wska�nik rewaloryzacyjny)
// -----------------------------------------------------
// do prezentacji
// -----------------------------------------------------

% PLTMP4.RXR
0
0
PLTMP4

% PLZAP4.RXR,xPLZAP4.RXR
0
0
PLZAP4

% PLZAP4.DBF
0,log,,,,,D
%< PLTMP4.DBF
% PLTMP4.DBF
1,string,30,2,4       # symbol skladnika, symbol pracownika
2,string,30,2,3       # symbol pracownika, symbol skladnika
3,dic,,45             # miesiac, dzien czy godzina dla stawki zaszeregowania
4,xkwota,,x           # liczba godzin
5,xkwota,,x           # stawka godzinna
6,xkwota,,x           # wartosc brutto
7,xkwota,,x           # wartosc kosztu uzyskania przychodu
8,xkwota,,x           # podstawa opodatkowania
9,xkwota,,x           # % podatku
10,xkwota,,x          # wartosc naliczonego podatku dochodowego
11,xkwota,,x          # kwota zwolniona z podatku
12,xkwota,,x          # wartosc zaliczki podatku dochodowego
13,xkwota,,x          # wartosc netto (do wyplaty)
14,string,30          # nazwa skladnik,(nazwisko i imie)
99,ulong,,,1          # dowiazanie do naglowka (pole 99)
1,0,,,2               # klucz1 zlozony: symbol sym.pracownika
99,0,,,2              # i sym.skladnika
99,0,,,7              # klucz1 zlozony: dowiazanie do naglowka 
1,0,,,7               # i sym.skladnika
15,log                # czy skladnik zostatniego przebiegu
16,ulong,,,5          # metoda liczenia skladnika
% PLZAP4.DIC,PLTMP4.DIC
"zskladnik",1,Estring,"Sk|ladnik"   # symbol skladnika, symbol pracownika
"zpracownik",2,Estring  # symbol pracownika,symbol skladnika
"zmiegodz",3,Estring,"Rodzaj"    # miesiac,dzien czy godzina dla stawki godzinnej
"zlgodzin",4,Ekwota,"L.godzin"     # liczba godzin
"zstawka",5,Ekwota,"Stawka"      # stawka godzinna
"zbrutto",6,Ekwota,"Brutto"      # wartosc brutto 
"zk_uzys",7,Ekwota      # koszt uzyskania przychodu
"zpodstopod",8,Ekwota   # podstawa opodatkowania
"zprocpod",9,Ekwota     # % podatku 
"znalpod",10,Ekwota     # wartosc naliczonego podatku dochodowego
"zk_zw",11,Ekwota       # kwota zwolniona z podatku 
"zzalpod",12,Ekwota     # wartosc zaliczki podatku dochodowego
"znetto",13,Ekwota      # wartosc netto (do wyplaty) 
"znazw",14,Estring,"Nazwa sk|ladnika"      # nazwa skladnik,(nazwisko i imie)
"dokidzap",99,Ekwota    # dowiazanie do naglowka (pole 99)
"zangaz",15,Elog,"Anga|z"  # czy skladnik podany w angazu
"zmetoda",16,Ekwota,"Metoda"  # metoda liczenia skladnika
// --------------------------------------
// rejestr do obliczania pitu
// --------------------------------------

% PITLICZ.RXR    # rejestr 
10 # symbol pola - klucza
1 # identyfikator klucza
PITLICZ # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c t|a pozycj|e z rejestru ?" 
"Chcesz doda|c jeszcze jedn|a pozycj|e ?" 
"%s - nie ma takiej pozycji w rejestrze.$Czy chcesz doda|c now|a ?" 
"Nie ma |zadnych pozycji w rejestrze !"
"Rejestr pozycji pusty - wstawiasz pierwsz|a ?"
"Nie ma pozycji o takim symbolu.$Znale|x|c nast|epn|a ?"
"%s - brak pozycji o takim symbolu !"

% PITLICZ.DBF 
0,log,,,,,D            # usuwanie "w miejscu"
10,string,,208,1       # symbol pozycji
11,string,60           # nazwa pozycji
12,kwota               # kwota

% PITLICZ.DIC 
"sympoz",10,Estring,"Symbol"         # symbol pozycji
"nazpoz",11,Estring,"Nazwa pozycji"  # nazwa pozycji
"kwota",12,Ekwota,"Kwota"           # konto

% IMP_TXT.RXR
1 # symbol pola - klucza
1 # identyfikator klucza
IMP_TXT # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c raport z rejestru ?" 
"Chcesz doda|c jeszcze jeden  raport  ?" 
"%s - nie ma takiego raportu w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych  raport|ow w rejestrze !"
"Rejestr  raport|ow pusty - wstawiasz pierwszy  ?"
"Nie ma raportu o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak raportu o takim symbolu !"

// -----------------------------------------------------------
// Rejestry do ktorych wczytywany jest plik txt
// -----------------------------------------------------------

% IMP_TXT.DBF # struktura rekordu
0,log,,,,,D             # usuwanie "w miejscu"
//0,string,40,,2          # pole nr 00
1,string,40,,1          # pole nr 01
2,string,40             # pole nr 02
3,string,40             # pole nr 03
4,string,40             # pole nr 04
5,string,40             # pole nr 05
6,string,40             # pole nr 06
7,string,40             # pole nr 07
8,string,40             # pole nr 08
9,string,40             # pole nr 09
10,string,40            # pole nr 10
11,string,40            # pole nr 11
12,string,40            # pole nr 12
13,string,40            # pole nr 13
14,string,40            # pole nr 14
15,string,40            # pole nr 15
16,string,40            # pole nr 16
17,string,40            # pole nr 17
18,string,40            # pole nr 18
19,string,40            # pole nr 19
20,string,40            # pole nr 20
21,string,40            # pole nr 21
22,string,40            # pole nr 22
23,string,40            # pole nr 23
24,string,40            # pole nr 24
25,string,40            # pole nr 25
26,string,40            # pole nr 26
27,string,40            # pole nr 27
28,string,40            # pole nr 28
29,string,40            # pole nr 29
30,string,40            # pole nr 30
31,string,40            # pole nr 31
32,string,40            # pole nr 32
33,string,40            # pole nr 33
34,string,40            # pole nr 34
35,string,40            # pole nr 35


% IMP_TXT.DIC # slownik pol rekordu
//"P00",0,Estring         # pole nr 00
"P01",01,Estring        # pole nr 01
"P02",02,Estring        # pole nr 02
"P03",03,Estring        # pole nr 03
"P04",04,Estring        # pole nr 04
"P05",05,Estring        # pole nr 05
"P06",06,Estring        # pole nr 06
"P07",07,Estring        # pole nr 07
"P08",08,Estring        # pole nr 08
"P09",09,Estring        # pole nr 09
"P10",10,Estring        # pole nr 10
"P11",11,Estring        # pole nr 11
"P12",12,Estring        # pole nr 12
"P13",13,Estring        # pole nr 13
"P14",14,Estring        # pole nr 14
"P15",15,Estring        # pole nr 15
"P16",16,Estring        # pole nr 16
"P17",17,Estring        # pole nr 17
"P18",18,Estring        # pole nr 18
"P19",19,Estring        # pole nr 19
"P20",20,Estring        # pole nr 20
"P21",21,Estring        # pole nr 21
"P22",22,Estring        # pole nr 22
"P23",23,Estring        # pole nr 23
"P24",24,Estring        # pole nr 24
"P25",25,Estring        # pole nr 25
"P26",26,Estring        # pole nr 26
"P27",27,Estring        # pole nr 27
"P28",28,Estring        # pole nr 28
"P29",29,Estring        # pole nr 29
"P30",30,Estring        # pole nr 30
"P31",31,Estring        # pole nr 31
"P32",32,Estring        # pole nr 32
"P33",33,Estring        # pole nr 33
"P34",34,Estring        # pole nr 34
"P35",35,Estring        # pole nr 35

// -------------------------------------------
// rejestr do tworzenie wydrukow
// -------------------------------------------

% PLDRUKI.RXR  # rejestr 
99 # symbol pola - klucza
1 # identyfikator klucza
PLDRUKI # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c ten rekord z rejestru ?" 
"Chcesz doda|c jeszcze jeden rekord ?" 
"%s - nie ma takiego rekordu w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych rekord|ow w rejestrze !"
"Rejestr pusty - wstawiasz pierwszy rekord ?"
"Nie ma rekordu o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak rekordu o takim symbolu !"

% PLDRUKI.DBF # rejestr dekret|ow - struktura rekordu
11,string,30           # symbol pracownika
12,string,,32770       # symbol skladnika
13,string,70           # 
14,string,70           # 
20,kwota               # kwota
21,kwota               # kwota
22,kwota               # kwota
23,kwota               # kwota
24,kwota               # kwota
25,kwota               # kwota
26,kwota               # kwota
27,kwota               # kwota
28,kwota               # kwota
29,kwota               # kwota
30,kwota               # kwota
31,kwota               # kwota
32,kwota               # kwota
33,kwota               # kwota
34,kwota               # kwota
35,kwota               # kwota
36,kwota               # kwota
37,kwota               # kwota
38,kwota               # kwota
39,kwota               # kwota
40,kwota               # kwota
41,kwota               # kwota
42,kwota               # kwota
43,kwota               # kwota
44,kwota               # kwota
45,kwota               # kwota
46,kwota               # kwota
47,kwota               # kwota
48,kwota               # kwota
99,ulong,,,1           # numer rekordu
11,0,,,2                # klucz pracownik
12,0,,,2                # ,skladnik

% PLDRUKI.DIC # slownik do danych o kliencie
"pracownik",11,Estring # symbol pracownika
"skladnik",12,Estring  # symbol skladnika
"text1",13,Estring     #  
"text2",14,Estring     # 
"kw_0",20,Ekwota       # kwota
"kw_1",21,Ekwota       # kwota
"kw_2",22,Ekwota       # kwota
"kw_3",23,Ekwota       # kwota
"kw_4",24,Ekwota       # kwota
"kw_5",25,Ekwota       # kwota
"kw_6",26,Ekwota       # kwota
"kw_7",27,Ekwota       # kwota
"kw_8",28,Ekwota       # kwota
"kw_9",29,Ekwota       # kwota 
"kw_10",30,Ekwota      # kwota
"kw_11",31,Ekwota      # kwota
"kw_12",32,Ekwota      # kwota
"kw_13",33,Ekwota      # kwota
"kw_14",34,Ekwota      # kwota
"kw_15",35,Ekwota      # kwota
"kw_16",36,Ekwota      # kwota
"kw_17",37,Ekwota      # kwota
"kw_18",38,Ekwota      # kwota
"kw_19",39,Ekwota      # kwota
"kw_20",40,Ekwota      # kwota
"kw_21",41,Ekwota      # kwota
"kw_22",42,Ekwota      # kwota
"kw_23",43,Ekwota      # kwota
"kw_24",44,Ekwota      # kwota
"kw_25",45,Ekwota      # kwota
"kw_26",46,Ekwota      # kwota
"kw_27",47,Ekwota      # kwota
"kw_28",48,Ekwota      # kwota
"nrrek",99,Ekwota      # numer rekordu

// ----------------------------------
// dane do programu platnika
// ----------------------------------
% PPRAPORT.RXR,XPPRAPORT.RXR # rejestr opisow
1 # symbol pola - klucza
1 # identyfikator klucza
PPRAPORT # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c dane z rejestru ?" 
"Chcesz doda|c jeszcze jedne dane  ?" 
"%s - nie ma takich danych w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych danych w rejestrze !"
"Rejestr danych pusty - wstawiasz pierwszy ?"
"Nie ma danych o takim symbolu.$Znale|x|c nast|epne ?"
"%s - brak danych o takim symbolu !"
PPRAPORT-WAR
% PPRAPORT-WAR.DIC
"symrap",1,Estring,"Symbol"        # symbol raportu
"identrap",2,Estring,"Identyfikator"      # identyfikator raportu
"sym",91,Estring,"Symbol prac."          # symbol pracownika w rejestrze pracownikow
"nazwisko",3,Estring,"Nazwisko"      # nazwisko ubezpieczonego
"imie",4,Estring,"Imi|e"          # imie ubezpieczonego
"typid",5,Estring,"Typ"         # typ identyfikatora(P-PESEL,N-NIP,R-REGON,1-dow.os,2-paszport
"ident",6,Estring,"NIP/PESEL/INNE"         # identyfikatora(PESEL,NIP,REGON,dow.os,paszport
"kodubez",8,Estring,"Kod ubezp."       # kod tytulu ubezpieczenia
"ktoinfo",9,Estring,"Kto"       # kto przekazuje informacje o przekrocz.recznej podst.wym.skladki(1,2,3)
"wymiar",10,Estring,"Etat"       # wymiar czasu pracy w postaci ulamka(np:1/2,4/12)
"spodst_er",11,Ekwota,"Podst.em-rent"     # podstawa wymiaru skladki-ub.emeryt.i rentowe
"spodst_c",161,Ekwota,"Podst.chorob."     # podstawa wymiaru skladki-ub.chorobow.
"spodst_w",162,Ekwota,"Podst.wypadkow."     # podstawa wymiaru skladki-ub.wypadkowe
"spodst_z",13,Ekwota,"Podst.zdrow"      # podstawa wymiaru skladki-ub.zdrowotne
"sueu",14,Ekwota,"Sk|l.em.-ubezp."          # skladka na ub.emeryt.-finansuje ubezpieczony
"suru",15,Ekwota,"Sk|l.ren.-ubezp."          # skladka na ub.rentowe.-finansuje ubezpieczony
"sucu",16,Ekwota,"Sk|l.chorob."          # skladka na ub.chorob
"suzu",17,Ekwota,"Sk|l zdrow."          # skladka na ub.zdrowotne
"suep",18,Ekwota,"Sk|l.em.-p|latnik"          # skladka na ub.emeryt.-finansuje platnik
"surp",19,Ekwota,"Sk|l.ren.-p|latnik"          # skladka na ub.rentowe.-finansuje platnik
"suwp",20,Ekwota,"Sk|l.wypadk."          # skladka na ub.wypadkowe
"sfpp",158,Ekwota,"Sk|l.FP"			# fundusz pracowniczy
"sfgp",159,Ekwota,"Sk|l.FG|SP"			# fundusz gwarantowanych swiadczen pracowniczy
"sfep",160,Ekwota,"Sk|l.FEP"			# fundusz emerytur pomostowych
"kw_obniz",21,Ekwota,"Kw.obn.podst.sk|l."      # kwota obnizenia podstawy wymiaru skladki(pracowniczy fundusz emerytalny)
"susuma",22,Ekwota,"Suma sk|ladek"        # laczna kwota skladek
"os_rodz",23,Ekwota,"L.os|ob do zas.rodz."       # l.osob na ktore wyplacono zasilek rodzinny
"kw_rodz",24,Ekwota,"Kwota zas.rodz."       # kwota wyplaconego zasilku rodzinnego
"kw_wych",25,Ekwota,"Kwota zas.wych."       # kwota wyplaconego zasilku wychowawczego
"os_piel",26,Ekwota,"L.os|ob do zas.piel"        # l.osob na ktore wyplacono zasilek pielegnacyjny  
"kw_piel",27,Ekwota,"Kwota zas.piel."       # kwota wyplaconego zasilku pielegnacyjnego
"zas_suma",28,Ekwota,"|L|aczna kwota zas."      # laczna kwota wyplaconych zasilkow(rodzinnego,wychowawczego i pielegnacyjnego)
"kod_sw",82,Estring,"Kod |sw./przerwy"       # kod swiadczenia/przerwy
"dataod_sw",83,Edata,"Pocz.|sw./przerwy"      # data od poczatek swiadczenia/przerwy
"datado_sw",84,Edata,"Koniec |sw./przerwy"      # data do poczatek swiadczenia/przerwy 
"dni_sw",85,Ekwota,"L.dni zas."        # l.dni zasilkowych
"kod_chor",86,Estring,"Kod choroby"     # kod choroby
"kw_sw",87,Ekwota,"Kwota |sw."         # kwota swiadczenia z tytulu przerwy
"datarap",90,Edata,"Data raportu"        # data wypelnienia raportu
"pod_zdr",80,Ekwota,"Podstawa zdrow- umowy"       # podstawa wymiaru skladki na ub.zdrowotne
"kw_zdr",81,Ekwota,"Kwota zdrow."        # kwota skladki na ub.zdrowotne

% PPRAPORT-WAR.BOX
D = "Dane raportu"
"Symbol raportu:",1,A      
"Identyfikator raportu:",2,A
"Symbol pracownika:",91,A
"Nazwisko:",3,A
"Imi|e:",4,A
"Typ dokumentu to|zsamo|sci:",5,A
"NIP/PESEL/INNE:",6,A
"Kod ubezpieczenia:",8,A
"Etat:",10,A

//
% PPRAPORT.DIC
"symrap",1,Estring,"Symbol"        # symbol raportu
"identrap",2,Estring,"Identyfikator"      # identyfikator raportu
"nazwisko",3,Estring,"Nazwisko"      # nazwisko ubezpieczonego
"imie",4,Estring,"Imi|e"          # imie ubezpieczonego
"typid",5,Estring,"Typ"         # typ identyfikatora(P-PESEL,N-NIP,R-REGON,1-dow.os,2-paszport
"ident",6,Estring,"NIP/PESEL/INNE"         # identyfikatora(PESEL,NIP,REGON,dow.os,paszport
"kodubez",8,Estring,"Kod ubezp."       # kod tytulu ubezpieczenia
"ktoinfo",9,Estring,"Kto"       # kto przekazuje informacje o przekrocz.recznej podst.wym.skladki(1,2,3)
"wymiar",10,Estring,"Etat"       # wymiar czasu pracy w postaci ulamka(np:1/2,4/12)
"spodst_er",11,Ekwota,"Podst.em-rent"     # podstawa wymiaru skladki-ub.emeryt.i rentowe
"spodst_cw",12,Ekwota,"Podst.ch-wyp"     # podstawa wymiaru skladki-ub.chorobow.i wypadkowe
"spodst_z",13,Ekwota,"Podst.zdrow"      # podstawa wymiaru skladki-ub.zdrowotne
"sueu",14,Ekwota,"sk|l.em.-ubezp."          # skladka na ub.emeryt.-finansuje ubezpieczony
"suru",15,Ekwota,"sk|l.ren.-ubezp."          # skladka na ub.rentowe.-finansuje ubezpieczony
"sucu",16,Ekwota,"sk|l.chorob."          # skladka na ub.chorob
"suzu",17,Ekwota          # skladka na ub.zdrowotne
"suep",18,Ekwota          # skladka na ub.emeryt.-finansuje platnik
"surp",19,Ekwota          # skladka na ub.rentowe.-finansuje platnik
"suwp",20,Ekwota          # skladka na ub.wypadkowe
"kw_obniz",21,Ekwota      # kwota obnizenia podstawy wymiaru skladki(pracowniczy fundusz emerytalny)
"susuma",22,Ekwota        # laczna kwota skladek
"os_rodz",23,Ekwota       # l.osob na ktore wyplacono zasilek rodzinny
"kw_rodz",24,Ekwota       # kwota wyplaconego zasilku rodzinnego
"kw_wych",25,Ekwota       # kwota wyplaconego zasilku wychowawczego
"os_piel",26,Ekwota       # l.osob na ktore wyplacono zasilek pielegnacyjny  
"kw_piel",27,Ekwota       # kwota wyplaconego zasilku pielegnacyjnego
"zas_suma",28,Ekwota      # laczna kwota wyplaconych zasilkow(rodzinnego,wychowawczego i pielegnacyjnego)
// ZUS RNA
"dnipracy",29,Ekwota      # liczba dni przepracowanych
"dninorma",30,Ekwota      # liczba dni wynikajacych z obowiazku
"kod1",31,Estring         # 1.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
"dataod1",32,Edata        # 1.data od 
"datado1",33,Edata        # 1.data do 
"kw_skl1",34,Ekwota       # 1.kwota skladnika wynagr.
"kod2",35,Estring         # 2.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
"dataod2",36,Edata        # 2.data od 
"datado2",37,Edata        # 2.data do 
"kw_skl2",38,Ekwota       # 2.kwota skladnika wynagr.
"kod3",39,Estring         # 3.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
"dataod3",40,Edata        # 3.data od 
"datado3",41,Edata        # 3.data do 
"kw_skl3",42,Ekwota       # 3.kwota skladnika wynagr.
"kod4",43,Estring         # 4.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
"dataod4",44,Edata        # 4.data od 
"datado4",45,Edata        # 4.data do 
"kw_skl4",46,Ekwota       # 4.kwota skladnika wynagr.
"kod5",47,Estring         # 5.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
"dataod5",48,Edata        # 5.data od 
"datado5",49,Edata        # 5.data do 
"kw_skl5",50,Ekwota       # 5.kwota skladnika wynagr.
"kod6",51,Estring         # 6.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
"dataod6",52,Edata        # 6.data od 
"datado6",53,Edata        # 6.data do 
"kw_skl6",54,Ekwota       # 6.kwota skladnika wynagr.
"kod7",55,Estring         # 7.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
"dataod7",56,Edata        # 7.data od 
"datado7",57,Edata        # 7.data do 
"kw_skl7",58,Ekwota       # 7.kwota skladnika wynagr.
"kod8",59,Estring         # 8.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
"dataod8",60,Edata        # 8.data od 
"datado8",61,Edata        # 8.data do 
"kw_skl8",62,Ekwota       # 8.kwota skladnika wynagr.
"kod9",63,Estring         # 9.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
"dataod9",64,Edata        # 9.data od 
"datado9",65,Edata        # 9.data do 
"kw_skl9",66,Ekwota       # 9.kwota skladnika wynagr.
"kod10",67,Estring        # 10.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
"dataod10",68,Edata       # 10.data od 
"datado10",69,Edata       # 10.data do 
"kw_skl10",70,Ekwota      # 10.kwota skladnika wynagr.
"wyn_suma",71,Ekwota      # suma kwot(34,38,42,46,50,54,58,62,66,70)
// ZUS RZA
"pod_zdr",80,Ekwota       # podstawa wymiaru skladki na ub.zdrowotne
"kw_zdr",81,Ekwota        # kwota skladki na ub.zdrowotne
// ZUS RSA
"kod_sw",82,Estring       # kod swiadczenia/przerwy
"dataod_sw",83,Edata      # data od poczatek swiadczenia/przerwy
"datado_sw",84,Edata      # data do poczatek swiadczenia/przerwy 
"dni_sw",85,Ekwota        # l.dni zasilkowych
"kod_chor",86,Estring     # kod choroby
"kw_sw",87,Ekwota         # kwota swiadczenia z tytulu przerwy
"datarap",90,Edata        # data wypelnienia raportu
"sym",91,Estring          # symbol pracownika w rejestrze pracownikow
"ksiega",92,Estring       # symbol ksiegi
// ZUS ZUA i ZZA
"imie1",100,Estring          # imie 1
"imie2",101,Estring          # imie 2
"miasto",102,Estring         # miejsce zamieszkania
"kod",103,Estring            # kod pocztowy
"wojew",104,Estring          # wojewodztwo
"ulica",105,Estring          # ulica
"dom",106,Estring            # nr domu
"lokal",107,Estring         # nr lokalu
"datau",108,Edata           # data urodzenia
"miejsce_u",109,Estring     # miejsce urodzenia
"dowod",110,Estring         # nr dowodu osobistego
"pesel",111,Estring         # nr Pesel
"nip",112,Estring           # nr Nip
"telefon",113,Estring       # telefon
"nazwisko_pan",114,Estring  # Nazwisko panienskie
"plec",115,Estring          # plec
"dzatrud",116,Edata         # data zatrudnienia
"gmina",117,Estring         # Gmina/Dzielnica
"dzwolnien",118,Edata       # data zwolnienia
"paszport",119,Estring      # Nr paszportu
"powiat",120,Estring        # Powiat
"obywatel",121,Estring      # obywatelstwo
"kodniezdol",122,Estring    # 
"kodzawodu",123,Estring     # 
"kodwykszt",124,Estring     # 
"kodpracszczeg",125,Estring # 
"kodkasychor",126,Estring   # 
"nazkasychor",127,Estring   # 
"datapoczkasy",128,Edata    # 
"dpoczszczeg",129,Edata     # 
"dkonszczeg",130,Edata      # 
"kodpokrew",131,Estring     # 
"czyrodzina",132,Elog       # 
"dniezdol1",133,Edata       # data poczatku niezdolnosci
"dniezdol2",134,Edata       # data konca niezdolnosci 
"st_nazwisko",135,Estring   # Nazwisko stare
"st_imie1",136,Estring      # imie 1 stare
"st_datau",137,Edata        # data urodzenia stare
"st_ident",138,Estring      # nr dowodu lub paszportu stare
"st_pesel",139,Estring      # nr Pesel stare
"st_nip",140,Estring        # nr Nip stare
"st_dzmiany",141,Edata      # data zmiany stare
"st_typid",142,Estring      # nr typ identyfikat stare
"kodprac",143,Estring       # 
"ubezp_dobrow",144,Elog     # ubezpieczenie dobrowolne
"zglaszac_wypadkowe",145,Elog # czy zglaszac wypadkowes
"zglaszac_chorobowe",146,Elog # czy zglaszac chorobowe
//
"miasto2",147,Estring         # miejsce zameldowania
"kod2",148,Estring          # gmina mel
"gmina2",149,Estring            # kod pocztowy mel
"ulica2",150,Estring          # ulica mel
"dom2",151,Estring            # nr domu mel
"lokal2",152,Estring         # nr lokalu mel
"miasto1",153,Estring         # miejsowosc kores
"kod1",154,Estring            # kod pocztowy kores
"ulica1",155,Estring          # ulica kores
"dom1",156,Estring            # nr domu kores
"lokal1",157,Estring         # nr lokalu kores
"sfpp",158,Ekwota
"sfgp",159,Ekwota
"sfep",160,Ekwota
"spodst_c",161,Ekwota,"Podst.ch"     # podstawa wymiaru skladki-ub.chorobow.
"spodst_w",162,Ekwota,"Podst.wyp"     # podstawa wymiaru skladki-ub.wypadkowe

//
% PPRAPORT.DBF
// ZUS RCA
0,log,,,,,D        
1,string,10,2,1       # symbol raportu
2,string,8            # identyfikator raportu
3,string,31,2,2       # nazwisko ubezpieczonego
4,string,22,2         # imie ubezpieczonego
5,string,1,2          # typ identyfikatora(P-PESEL,N-NIP,R-REGON,1-dow.os,2-paszport
6,string,11,2         # identyfikatora(PESEL,NIP,REGON,dow.os,paszport
8,string,,464         # kod tytulu ubezpieczenia
9,string,1,2          # kto przekazuje informacje o przekrocz.recznej podst.wym.skladki(1,2,3)
10,string,6,2         # wymiar czasu pracy w postaci ulamka(np:1/2,4/12)
11,kwota              # podstawa wymiaru skladki-ub.emeryt.i rentowe
12,kwota              # podstawa wymiaru skladki-ub.chorobow.i wypadkowe
13,kwota              # podstawa wymiaru skladki-ub.zdrowotne
14,kwota              # skladka na ub.emeryt.-finansuje ubezpieczony
15,kwota              # skladka na ub.rentowe.-finansuje ubezpieczony
16,kwota              # skladka na ub.chorob
17,kwota              # skladka na ub.zdrowotne
18,kwota              # skladka na ub.emeryt.-finansuje platnik
19,kwota              # skladka na ub.rentowe.-finansuje platnik
20,kwota              # skladka na ub.wypadkowe
21,kwota              # kwota obnizenia podstawy wymiaru skladki(pracowniczy fundusz emerytalny)
22,kwota              # laczna kwota skladek
23,ulong              # l.osob na ktore wyplacono zasilek rodzinny
24,kwota              # kwota wyplaconego zasilku rodzinnego
25,kwota              # kwota wyplaconego zasilku wychowawczego
26,ulong              # l.osob na ktore wyplacono zasilek pielegnacyjny  
27,kwota              # kwota wyplaconego zasilku pielegnacyjnego
28,kwota              # laczna kwota wyplaconych zasilkow(rodzinnego,wychowawczego i pielegnacyjnego)
// ZUS RNA
29,kwota              # liczba dni przepracowanych
30,kwota              # liczba dni wynikajacych z obowiazku
31,string,,480        # 1.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
32,Ydate              # 1.data od 
33,Ydate              # 1.data do 
34,kwota              # 1.kwota skladnika wynagr.
35,string,,480        # 2.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
36,Ydate              # 2.data od 
37,Ydate              # 2.data do 
38,kwota              # 2.kwota skladnika wynagr.
39,string,,480        # 3.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
40,Ydate              # 3.data od 
41,Ydate              # 3.data do 
42,kwota              # 3.kwota skladnika wynagr.
43,string,,480        # 4.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
44,Ydate              # 4.data od 
45,Ydate              # 4.data do 
46,kwota              # 4.kwota skladnika wynagr.
47,string,,480        # 5.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
48,Ydate              # 5.data od 
49,Ydate              # 5.data do 
50,kwota              # 5.kwota skladnika wynagr.
51,string,,480        # 6.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
52,Ydate              # 6.data od 
53,Ydate              # 6.data do 
54,kwota              # 6.kwota skladnika wynagr.
55,string,,480        # 7.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
56,Ydate              # 7.data od 
57,Ydate              # 7.data do 
58,kwota              # 7.kwota skladnika wynagr.
59,string,,480        # 8.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
60,Ydate              # 8.data od 
61,Ydate              # 8.data do 
62,kwota              # 8.kwota skladnika wynagr.
63,string,,480        # 9.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
64,Ydate              # 9.data od 
65,Ydate              # 9.data do 
66,kwota              # 9.kwota skladnika wynagr.
67,string,,480        # 10.kod skladnika wynagrodzen(11,12,21,22,31,32,50)
68,Ydate              # 10.data od 
69,Ydate              # 10.data do 
70,kwota              # 10.kwota skladnika wynagr.
71,kwota              # suma kwot(34,38,42,46,50,54,58,62,66,70)
// ZUS RZA
80,kwota              # podstawa wymiaru skladki na ub.zdrowotne
81,kwota              # kwota skladki na ub.zdrowotne
// ZUS RSA
82,string,,480        # kod swiadczenia/przerwy
83,Ydate              # data od 
84,Ydate              # data do 
85,kwota              # l.dni zasilkowych
86,string,2,2         # kod swiadczenia/przerwy
87,kwota              # kwota swiadczenia z tytulu przerwy
90,Ydate              # data wypelnienia raportu
91,string,20,2,3      # symbol pracownika w rejestrze pracownikow
92,3001               # symbol ksiegi
91,0,,,4                # klucz1 zlozony: symbol pracownika
8,0,,,4                 # i kod ubezpieczenia
1,0,,,4                 # i symbol raportu
92,0,,,4                # i symbol ksiegi
// ZUS ZUA i ZZA
100,string,15,2         # imie 1
101,string,15,2         # imie 2
102,string,50,2         # miejsce zamieszkania
103,string,10,2         # kod pocztowy
104,string,20,2         # wojewodztwo
105,string,50,2         # ulica
106,string,10,2         # nr domu
107,string,5,2         # nr lokalu
108,Ydate              # data urodzenia
109,string,50,2        # miejsce urodzenia
110,string,15,2        # nr dowodu osobistego
111,string,11          # nr Pesel
112,string,10          # nr Nip
113,string,15          # telefon
114,string,30,2        # Nazwisko panienskie
115,dic,,111           # Plec
116,Ydate              # data zatrudnienia
117,string,50,2        # Gmina/Dzielnica
118,Ydate              # data zwolnienia
119,string,15,2        # Nr paszportu
120,string,50,2        # Powiat
121,string,30,2         # obywatelstwo
122,string,2,2          # kodniezdol
123,string,20          # kodzawodu
124,string,2,2          # kodwykszt
125,string,9,2          # kodpracszczeg
126,dic,,115            # kodkasychor
127,string,30,2         # nazkasychor
128,Ydate               # datapoczkasy
129,Ydate               # dpoczszczeg
130,Ydate               # dkonszczeg
131,string,2,2          # kod pokrewienstwa z pracodawca
132,log                 # czy pozostaje we wsp.gospodarst.z pracod.
133,Ydate               # poczatek niezdolnosci
134,Ydate               # koniec niezdolnosci
135,string,30,2         # Nazwisko stare
136,string,15,2         # imie 1 stare
137,Ydate               # data urodzenia stare
138,string,15,2         # nr dowodu lub paszportu stare
139,string,11           # nr Pesel stare
140,string,10           # nr Nip stare
141,Ydate               # data zmiany stare
142,string,1,2          # typ identyfikatora(P-PESEL,N-NIP,R-REGON,1-dow.os,2-paszport
143,string,,464         # kod tytulu ubezpieczenia
144,log                 # cyz ubezpieczenie obowi�zkowe czy dobrowolne w dokumentach zgloszeniowych
145,log
146,log                 # czy odliczac chorobowe
//
147,string,50,2         # miejsce zameldowania
148,string,10,2         # kod pocztowy mel
149,string,50,2         # gmina mel
150,string,50,2         # ulica mel
151,string,10,2         # nr domu mel
152,string,5,2         # nr lokalu mel
153,string,50,2         # miejsowosc kores
154,string,10,2         # kod pocztowy kores
155,string,50,2         # ulica kores
156,string,10,2         # nr domu kores
157,string,5,2         # nr lokalu kores
158,kwota              # sfpp
159,kwota		# sfgp
160,kwota		# sfep
161,kwota		# podstawa chorobowego
162,kwota		# podstawa wypadkowego
// -----------------------------------
// rejestr do prezentacji stalych
// -----------------------------------

% PLPREZ4.RXR,XPLPREZ4.RXR # rejestr prezentacji sta|lych
1 # symbol pola - klucza
1 # identyfikator klucza
PLPREZ4 # nazwa danych
PLPREZ4M # 
#
PLPREZ4-WAR
% PLPREZ4-WAR.DIC
"Symbol pracownika",1
"Symbol sk|ladnika:",2

% PLPREZ4.DBF # rejestr prezentacji - struktura rekordu
0,log,,,,,D          # usuwanie "w miejscu"
1,string,30,2,2      # symbol pracownika,skladnika
2,string,30,2,3      # skladnik
10,ydate             # data wyplaty
11,string,30,2       # nazwisko i imie, nazwa skladnika
12,string,,448       # stanowisko
13,string,,496       # jednostka organizacyjna
99,ulong,,,6,,NM     # numer rekordu
// klucze
1,0,,,1                 # klucz1 zlozony: symbol sym.pracownika
2,0,,,1                 # i sym.skladnika

% PLPREZ4-KOLUMNY-SKLAD.DIC
"pracownik",1,Estring,"Sk|ladnik" 
"skladnik",2,Estring               
"datawypl",10,Edata                
"nazw",11,Estring,"Nazwa sk|ladnika" 
"stanow",12,Estring,"Rodzaj"   
"wydzial",13,Estring            
"dokid",99,Ekwota                    # 

% PLPREZ4.DIC,PLPREZ4-KOLUMNY.DIC    # slownik rejestru prezentacji sta|lych
"pracownik",1,Estring,"Pracownik"    # symbol placy
"skladnik",2,Estring                 # symbol placy
"datawypl",10,Edata                  # data wyplaty
"nazw",11,Estring,"Nazwisko i imi|e" # imie i nazwisko
"stanow",12,Estring,"Stanowisko"     # stanowisko pracownika
"wydzial",13,Estring                 # jednostka organizacyjna
"dokid",99,Ekwota                    # numer rekordu

// ---------------------------------------
// dane do deklaracji programu platnika
// ---------------------------------------
% PPDEKLAR.RXR,XPPDEKLAR.RXR # rejestr opisow
1 # symbol pola - klucza
1 # identyfikator klucza
PPDEKLAR # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c raport z rejestru ?" 
"Chcesz doda|c jeszcze jeden  raport  ?" 
"%s - nie ma takiego raportu w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych  raport|ow w rejestrze !"
"Rejestr  raport|ow pusty - wstawiasz pierwszy  ?"
"Nie ma raportu o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak raportu o takim symbolu !"

% PPDEKLAR.DBF # rejestr pracownikow - struktura rekordu
// ZUS RCA
0,log,,,,,D           # Usuwanie "w miejscu"
1,string,10,2,1       # Symbol raportu
2,string,1,2          # Termin przesylania deklaracji (1,2,3)
3,ulong               # Identyfikator raportu
4,Ydate               # Data nadania
5,string,12,2         # Znak i numer decyzji pokontrolnej
6,kwota               # Liczba ubezpieczonych
7,kwota               # Liczba pracownikow w przeliczeniu na pelny etat
8,string,1,2          # Czy zaklad posiada status zakl.pracy chronionej
9,kwota               # Stopa procentowa sklad.na ubezp.wypadkowe
10,kwota              # Suma skladek - ubezp.emerytalne
11,kwota              # Suma skladek - ubezp.rentowe
12,kwota              # Suma skladek - ubezp.emeryt.i rentowe
13,kwota              # Kwota skladek na ubezp.emeryt.-placi ubezpieczony
14,kwota              # Kwota skladek na ubezp.rentowe-placi ubezpieczony 
15,kwota              # Suma skladek na ubezp.emeryt.i rent.-placi ubezpieczony 
16,kwota              # Kwota skladek - ubezp.emeryt.-placi platnik
17,kwota              # Kwota skladek na ubezp.rentowe-placi platnik
18,kwota              # Suma skladek - ubezp.emeryt.i rentowe-placi platnik
19,kwota              # Kwota skladek na ubezp.emeryt.-placi budzet panstwa 
20,kwota              # Kwota skladek na ubezp.rentowe-placi budzet panstwa 
21,kwota              # Suma skladek na ubezp.emeryt.i rentowe-placi budzet panstwa
22,kwota              # Kwota skladek na ubezp.emeryt.-placi PFRON
23,kwota              # Kwota skladek na ubezp.rentowe-placi PFRON
24,kwota              # Suma skladek na ubezp.emeryt.i rentowe-placi PFRON
25,kwota              # Kwota skladek na ubezp.emeryt.-placi fundusz koscielny
26,kwota              # Kwota skladek na ubezp.rentowe-placi fundusz koscielny
27,kwota              # Suma skladek na ubezp.emeryt.i rentowe-placi fundusz koscielny
28,kwota              # Suma skladek na ubezp.chorobowe
29,kwota              # Suma skladek na ubezp.wypadkowe
31,kwota              # Suma skladek na ubezp.chor.i wypadk.
32,kwota              # Suma skladek na ubezp.chorobowe-placi ubezpieczony
33,kwota              # Suma skladek na ubezp.wypadkowe-placi ubezpieczony
34,kwota              # Suma skladek na ubezp.chor.i wypadk.-placi ubezpieczony
35,kwota              # Suma skladek na ubezp.wypadkowe-placi platnik
36,kwota              # Suma skladek na ubezp.chor.i wypadk.-placi platnik
37,kwota              # Suma skladek na ubezp.chorobowe-placi PFRON
38,kwota              # Suma skladek na ubezp.wypadkowe-placi PFRON
39,kwota              # Suma skladek na ubezp.chor.i wypadk.-placi PFRON
40,kwota              # Suma skladek na ubezp.wypadkowe-placi Fundusz koscielny
41,kwota              # Suma skladek na ubezp.chor.i wypadk.-placi Fundusz koscielny
42,kwota              # Kwota skladek ktora powinien przekazac platnik
//
43,kwota              # Kwota wyplaconych swiadczen z ubezp.chorobowego
44,kwota              # Kwota nalezna platnikowi od wyplac.swiadczen z ub.chorob.
45,kwota              # Kwota wyplaconych swiadczen z ubezp.wypadkowego
46,kwota              # Kwota wyplaconych swiadczen finansow.z budzetu panstwa
47,kwota              # Laczna kwota do potracenia
//
48,kwota              # Kwota do zwrotu przez ZUS
49,kwota              # Kwota do zaplaty przez platnika
//
50,kwota              # Kwota naleznych skladek na ubezp.zdrowotne-placi platnik
51,kwota              # Kwota naleznych skladek na ubezp.zdrowotne-placi fund.koscielny
52,kwota              # Kwota naleznego wynagrodzenia dla platnika
53,kwota              # Kwota do zaplaty
54,kwota              # Kwota naleznych skladek FP i FGSP
55,kwota              # Kwota naleznych skladek FP
56,kwota              # Kwota naleznych skladek FGSP
57,kwota              # Kwota do zaplaty
58,kwota              # Laczna suma kwot do zaplaty
59,kwota              # Kwota doplaty na ubezpieczenia spoleczne
60,kwota              # Kwota doplaty na ubezpieczenia zdrowotne
61,kwota              # Kwota doplaty na FP i FGSP
62,kwota              # Laczna kwota doplaty
63,Ydate              # Data wypelnienia
//
% PPDEKLAR.DIC # slownik do danych o deklaracji
"symdek",1,Estring             # Symbol deklaracji (ZUSDRA)
"termdek",2,Estring            # Termin przesylania deklaracji (1,2,3)
"iddek",3,Ekwota               # Identyfikator raportu
"datanad",4,Edata               # Data nadania
"znakdec",5,Estring             # Znak i numer decyzji pokontrolnej
"l_ubezp",6,Ekwota              # Liczba ubezpieczonych
"l_prac",7,Ekwota               # Liczba pracownikow w przeliczeniu na pelny etat
"czy_zpc",8,Estring             # Czy zaklad posiada status zakl.pracy chronionej
"procwypadk",9,Ekwota           # Stopa procentowa sklad.na ubezp.wypadkowe
"sum_e",10,Ekwota               # Suma skladek - ubezp.emerytalne
"sum_r",11,Ekwota               # Suma skladek - ubezp.rentowe
"sum_er",12,Ekwota              # Suma skladek - ubezp.emeryt.i rentowe
"sueu",13,Ekwota              # Kwota skladek na ubezp.emeryt.-placi ubezpieczony
"suer",14,Ekwota              # Kwota skladek na ubezp.rentowe-placi ubezpieczony 
"sueru",15,Ekwota             # Suma skladek na ubezp.emeryt.i rent.-placi ubezpieczony 
"suep",16,Ekwota              # Kwota skladek - ubezp.emeryt.-placi platnik
"surp",17,Ekwota              # Kwota skladek na ubezp.rentowe-placi platnik
"suerp",18,Ekwota             # Suma skladek - ubezp.emeryt.i rentowe-placi platnik
"sueb",19,Ekwota              # Kwota skladek na ubezp.emeryt.-placi budzet panstwa 
"surb",20,Ekwota              # Kwota skladek na ubezp.rentowe-placi budzet panstwa 
"suerb",21,Ekwota             # Suma skladek na ubezp.emeryt.i rentowe-placi budzet panstwa
"suef",22,Ekwota              # Kwota skladek na ubezp.emeryt.-placi PFRON
"surf",23,Ekwota              # Kwota skladek na ubezp.rentowe-placi PFRON
"suerf",24,Ekwota             # Suma skladek na ubezp.emeryt.i rentowe-placi PFRON
"suek",25,Ekwota              # Kwota skladek na ubezp.emeryt.-placi fundusz koscielny
"surk",26,Ekwota              # Kwota skladek na ubezp.rentowe-placi fundusz koscielny
"suerk",27,Ekwota             # Suma skladek na ubezp.emeryt.i rentowe-placi fundusz koscielny
"sum_c",28,Ekwota               # Suma skladek na ubezp.chorobowe
"sum_w",29,Ekwota               # Suma skladek na ubezp.wypadkowe
"sum_cw",31,Ekwota              # Suma skladek na ubezp.chor.i wypadk.
"sum_cu",32,Ekwota              # Suma skladek na ubezp.chorobowe-placi ubezpieczony
"sum_wu",33,Ekwota              # Suma skladek na ubezp.wypadkowe-placi ubezpieczony
"sum_cwu",34,Ekwota             # Suma skladek na ubezp.chor.i wypadk.-placi ubezpieczony
"sum_wp",35,Ekwota              # Suma skladek na ubezp.wypadkowe-placi platnik
"sum_cwp",36,Ekwota             # Suma skladek na ubezp.chor.i wypadk.-placi platnik
"sum_cf",37,Ekwota              # Suma skladek na ubezp.chorobowe-placi PFRON
"sum_wf",38,Ekwota              # Suma skladek na ubezp.wypadkowe-placi PFRON
"sum_cwf",39,Ekwota             # Suma skladek na ubezp.chor.i wypadk.-placi PFRON
"sum_wk",40,Ekwota              # Suma skladek na ubezp.wypadkowe-placi Fundusz koscielny
"sum_cwk",41,Ekwota             # Suma skladek na ubezp.chor.i wypadk.-placi Fundusz koscielny
"razem",42,Ekwota               # Kwota skladek ktora powinien przekazac platnik
//
"swi_c",43,Ekwota               # Kwota wyplaconych swiadczen z ubezp.chorobowego
"swi_z",44,Ekwota               # Kwota nalezna platnikowi od wyplac.swiadczen z ub.chorob.
"swi_w",45,Ekwota               # Kwota wyplaconych swiadczen z ubezp.wypadkowego
"swi_b",46,Ekwota               # Kwota wyplaconych swiadczen finansow.z budzetu panstwa
"swi_razem",47,Ekwota           # Laczna kwota do potracenia
//
"dozwrotu",48,Ekwota            # Kwota do zwrotu przez ZUS
"dozaplaty",49,Ekwota           # Kwota do zaplaty przez platnika
//
"suzp",50,Ekwota              # Kwota naleznych skladek na ubezp.zdrowotne-placi platnik
"suzk",51,Ekwota              # Kwota naleznych skladek na ubezp.zdrowotne-placi fund.koscielny
"suzdo",52,Ekwota             # Kwota naleznego wynagrodzenia dla platnika
"suzod",53,Ekwota             # Kwota do zaplaty
"sufpfg",54,Ekwota            # Kwota naleznych skladek FP i FGSP
"sufp",55,Ekwota              # Kwota naleznych skladek FP
"sufg",56,Ekwota              # Kwota naleznych skladek FGSP
"zap_fpfg",57,Ekwota            # Kwota do zaplaty
"sum_dozap",58,Ekwota           # Laczna suma kwot do zaplaty
"dopl_us",59,Ekwota             # Kwota doplaty na ubezpieczenia spoleczne
"dopl_zd",60,Ekwota             # Kwota doplaty na ubezpieczenia zdrowotne
"dopl_fpfg",61,Ekwota           # Kwota doplaty na FP i FGSP
"dopl_sum",62,Ekwota            # Laczna kwota doplaty
"datadek",63,Edata              # Data wypelnienia

// ----------------------------------
// Rejestr zmian danych identyfikacyjnych pracownika
// ----------------------------------
% ZMIDENT.RXR   # rejestr opisow
1 # symbol pola - klucza
1 # identyfikator klucza
ZMIDENT # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c raport z rejestru ?" 
"Chcesz doda|c jeszcze jeden  raport  ?" 
"%s - nie ma takiego raportu w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych  raport|ow w rejestrze !"
"Rejestr  raport|ow pusty - wstawiasz pierwszy  ?"
"Nie ma raportu o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak raportu o takim symbolu !"

% ZMIDENT.DBF # rejestr pracownikow - struktura rekordu
%<PODATNIK.DB1
1,string,10,2,1         # symbol  pracownika
%<PODATNIK.DB3
150,Ydate               # data zmiany
151,string,10           # godzina zmiany
150,0,,,20              # klucz1 zlozony: data zmiany
151,0,,,20              # i godzina zmiany

% ZMIDENT.DIC # slownik do danych o kliencie
%<PODATNIK.DIC
"dzmiany",150,Edata     # data zmiany
"godzina",151,Estring   # godzina zmiany

// -----------------------------------------
// rejestr pozycji w PIT
// -----------------------------------------

% POZYCJA.RXR # rejestr pozycji
100 # symbol pola - klucza
1 # identyfikator klucza
POZYCJA # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c t|e pozycj|e z rejestru ?" 
"Chcesz doda|c jeszcze jedn|a pozycj|e ?" 
"%s - nie ma takiej pozycji w rejestrze.$Czy chcesz doda|c now|a ?" 
"Nie ma |zadnych pozycji w rejestrze !"
"Rejestr pozycji pusty - wstawiasz pierwsz|a ?"
"Nie ma pozycji o takim symbolu.$Znale|x|c nast|epn|a ?"
"%s - brak pozycji o takim symbolu !"

% POZYCJA.DBF # rejestr pozycji w PIT - struktura rekordu
0,log,,,,,D           # usuwanie "w miejscu"
100,string,10,2,3     # symbol pozycja w PIT
101,string,60,2       # nazwa pozycja w PIT
102,dic,,46,2         # symbol PIT
// klucz
100,0,,,1               # klucz1 zlozony: symbol pozycji
102,0,,,1               # i symbol PIT

% POZYCJA.DIC 
"pozycja",100,Estring,"Symbol"        # symbol pozycji w PIT
"nazpoz",101,Estring,"Opis pozycji"   # nazwa pozycji w PIT
"pitpoz",102,Estring,"PIT"            # symbol PIT

// -------------------------------------
// rejestr skladnikow do PIT
// -------------------------------------

% PITSKLAD.RXR,XPITSKLAD.RXR # rejestr skladnikow 
100 # symbol pola - klucza
1 # identyfikator klucza
PITSKLAD # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c ten sk|ladnik z rejestru ?" 
"Chcesz doda|c jeszcze jeden sk|ladnik ?" 
"%s - nie ma takiego sk|ladnika w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych sk|ladnik|ow w rejestrze !"
"Rejestr sk|ladnik|ow pusty - wstawiasz pierwszy ?"
"Nie ma sk|ladnik|ow o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak sk|ladnika o takim symbolu !"

% PITSKLAD.DBF # rejestr pozycji w PIT - struktura rekordu
0,log,,,,,D            # usuwanie "w miejscu"
100,string,50,2,1,,N   # symbol skladnika w PIT
101,string,50,2        # nazwa skladnika w PIT

% PITSKLAD.DIC # slownik do danych o kliencie
"skladnik",100,Estring  # symbol skladnika w PIT
"nazsklad",101,Estring  # nazwa skladnika w PIT

% WZORPLAC.RXR # rejestr wzorcow placowych 
10 # symbol pola - klucza
1 # identyfikator klucza
WZORPLAC # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c ten sk|ladnik z rejestru ?" 
"Chcesz doda|c jeszcze jeden sk|ladnik ?" 
"%s - nie ma takiego sk|ladnika w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych sk|ladnik|ow w rejestrze !"
"Rejestr sk|ladnik|ow pusty - wstawiasz pierwszy ?"
"Nie ma sk|ladnik|ow o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak sk|ladnika o takim symbolu !"

% WZORPLAC.DBF # rejestr pozycji w PIT - struktura rekordu
10,string,10,2,1     # symbol wzorca placowego
11,string,50,        # opis wzorca placowego
12,string,10,2		# symbol listy
13,string,10,2,3		# symbol skladnika
14,string,50		# opis skladnika
10,0,,,2		# klucz zlozony wzorzec*skladnik*lista
13,0,,,2
12,0,,,2
10,0,,,4		# klucz zlozony wzorzec*lista*skladnik
12,0,,,4
13,0,,,4

% WZORPLAC.DIC # slownik do danych o kliencie
"w_wzor",10,Estring  # symbol wzorca placowego
"w_wzoropis",11,Estring  # opis wzorca placowego
"w_lista",12,Estring	# lista ze skladnikiem
"w_skladnik",13,Estring	# skladnik placowy przypisany do wzorca
"w_skladopis",14,Estring	# opis skladnika placowego

% WZORPLAC-WAR.DIC # slownik do danych o kliencie
"w_wzor",10,Estring,"Wzorzec"  # symbol wzorca placowego
"w_wzoropis",11,Estring,"Opis wzorca"  # opis wzorca placowego
// ------------------------------------------------
// rejestr kredytow
// ------------------------------------------------

% KREDYT.RXR # rejestr opisow
1 # symbol pola - klucza
1 # identyfikator klucza
KREDYT # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c pracownika z rejestru ?" 
"Chcesz doda|c jeszcze jednego pracownika   ?" 
"%s - nie ma takiego pracownika w rejestrze.$Czy chcesz doda|c nowego ?" 
"Nie ma |zadnego pracownika w rejestrze !"
"Rejestr kredytowy pusty - wstawiasz pierwszego pracownika  ?"
"Nie ma pracownika o takim symbolu.$Znale|x|c nast|epnego ?"
"%s - brak pracownika o takim symbolu !"
KREDYT-WAR

% KREDYT-WAR.DIC,KREDYT-FILTR.DIC
"Symbol pracownika",1
"Nazwisko i imi|e",2
"Miejscowo|s|c",3
"Adres",4
"Kwota kretytu",10
"Pozosta|lo do sp|laty",12
"Wysoko|s|c raty",11

% KREDYT.DBF # rejestr pracownikow - struktura rekordu
0,log,,,,,D           # usuwanie "w miejscu"
1,string,,144,1,,N    # symbol pracownika
2,string,50,2,2       # nazwisko i imie
3,string,30,2         # kod+miejscowosc
4,string,50,2         # adres(ulica+dom+lokal)
5,ydate               # data udzielenia pozyczki
10,kwota              # wielkosc udzielonej po|zyczki
11,kwota              # wysokosc miesiecznej raty
12,kwota              # pozostalo do splaty
13,kwota              # splacono-rata
14,kwota              # stopa procentowa
20,kwota              # odsetki - styczen
21,kwota              # odsetki - luty
22,kwota              # odsetki - marzec
23,kwota              # odsetki - kwiecien
24,kwota              # odsetki - maj
25,kwota              # odsetki - czerwiec
26,kwota              # odsetki - lipiec
27,kwota              # odsetki - sierpien
28,kwota              # odsetki - wrzesien
29,kwota              # odsetki - pazdziernik
30,kwota              # odsetki - listopad
31,kwota              # odsetki - grudzien

% KREDYT.DIC,KREDYT-KOLUMNY.DIC
"sym",1,Estring,"Symbol"                    # symbol pracownika
"nazwisko",2,Estring,"Nazwisko"             # nazwisko i imie 
"miasto",3,Estring,"Miasto"                 # kod+miejscowosc 
"adres",4,Estring,"Adres"                   # adres(ulica+dom+lokal) 
"krdata",5,Edata,"Data"                     # data udzielenia pozyczki
"pozyczka",10,Ekwota,"Po|zyczka"            # wielkosc udzielonej po|zyczki
"rata",11,Ekwota         # wysokosc miesiecznej raty
"dosplaty",12,Ekwota     # pozostalo do splaty
"splacono",13,Ekwota     # splacono-rata
"stopa",14,Ekwota        # stopa procentowa
"odsetki01",20,Ekwota    # odsetki - styczen
"odsetki02",21,Ekwota    # odsetki - luty
"odsetki03",22,Ekwota    # odsetki - marzec
"odsetki04",23,Ekwota    # odsetki - kwiecien
"odsetki05",24,Ekwota    # odsetki - maj
"odsetki06",25,Ekwota    # odsetki - czerwiec
"odsetki07",26,Ekwota    # odsetki - lipiec
"odsetki08",27,Ekwota    # odsetki - sierpien
"odsetki09",28,Ekwota    # odsetki - wrzesien
"odsetki10",29,Ekwota    # odsetki - pazdziernik
"odsetki11",30,Ekwota    # odsetki - listopad
"odsetki12",31,Ekwota    # odsetki - grudzien


// -----------------------------
// rejestr stalych
// -----------------------------

% STALE.RXR,XSTALE.RXR,RNSTALE.RXR# rejestr stalych
1 # symbol pola - klucza
1 # identyfikator klucza
PSTALE # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c ten sta|l|a z rejestru ?" 
"Chcesz doda|c jeszcze jedn|a sta|l|a ?" 
"%s - nie ma takiej sta|lej w rejestrze.$Czy chcesz doda|c now|a ?" 
"Nie ma |zadnych sta|lych w rejestrze !"
"Rejestr sta|lych pusty - wstawiasz pierwsz|a ?"
"Nie ma sta|lych o takim symbolu.$Znale|x|c nast|epn|a ?"
"%s - brak sta|lych o takim symbolu !"
% PSTALE.DBF # rejestr sta|lych - struktura rekordu
0,log,,,,,D          # usuwanie "w miejscu"
1,string,10,,2       # symbol pracownika
2,string,,192,3      # symbol skladnika
3,kwota              # liczba godzin/dni
4,kwota              # stawka /godzine,dzien
5,kwota              # koszt uzyskania przychodow
6,kwota              # kwota zwolniona z podatku
7,kwota              # kwota brutto
10,ydate             # data wprowadzenia stalych
11,string,20 ,,5        # symbol listy plac( dla oczekujacych)
12,kwota             # kwota brutto nominalna
1,0,,,1                 # klucz1 zlozony: symbol pracownika
2,0,,,1                 # i symbol skladnika
11,0,,,4                # klucz symbol listy probnej
1,0,,,4                 # * symbol pracownika
//2,0,,,4                 # * symbol skladnika

% PSTALE.DIC # slownik  rejestru sta|lych
"pracownik",1,Estring   # symbol pracownika
"skladnik",2,Estring    # symbol skladnika
"lgodzin",3,Ekwota      # czas przepracowany, choroby, urlopu, itp
"stawka",4,Ekwota       # stawka /godzine,dzien
"k_uzys",5,Ekwota       # koszt uzyskania przychodu
"k_zw",6,Ekwota         # kwota zwolniona z podatku
"zbrutto",7,Ekwota      # kwota brutto
"datawypl",10,Edata     # data wyplaty
"listap",11,Estring     # lista probna
"zbrutton",12,Ekwota    # kwota stawki nominalna ( nie pomniejszona o nieobecnosci)
// ---------

// -----------------------------
// rejestr okresow zwolnien pracownikow z fp i fgsp
// -----------------------------
% XZWOLNIENIA.RXR,xfep.rxr
1
1
XZWOLNIENIA


% ZWOLNIENIA.RXR,fep.rxr
1 # symbol pola - klucza
1 # identyfikator klucza
ZWOLNIENIA # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzone zwolnienie !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c okres z rejestru ?" 
"Chcesz doda|c jeszcze jeden okres zwolnienia?" 
"%s - nie ma takiego okresu w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych okres|ow w rejestrze !"
"Rejestr  pusty - wstawiasz pierwsze zwolnienie ?"
"Nie ma zwolnienia o takim symbolu.$Znale|x|c nast|epne ?"
"%s - brak zwolnienia o takim symbolu !"
% ZWOLNIENIA.DBF # rejestr zwolnien - struktura rekordu
0,log,,,,,D          # usuwanie "w miejscu"
%<XZWOLNIENIA.DBF
% XZWOLNIENIA.DBF
1,string,10,,2       # symbol pracownika
2,ydate,,,3          # pocz|atek okresu
3,ydate              # koniec okresu
4,ulong              # klucz
5,log                # zwolniony tylko fp
1,0,,,1                 # klucz1 zlozony: symbol pracownika
2,0,,,1                 # i pocz|atek okresu
4,0,,,4			# klucz dokid
2,0,,,4			# i dataod
% ZWOLNIENIA.DIC,XZWOLNIENIA.DIC # slownik  rejestru zwolnien
"pracownik",1,Estring   # symbol pracownika
"dataod",2,Edata        # data poczatku okresu
"datado",3,Edata        # data konca okresu
"dokid",4,Ekwota	# identyfikator
"czy_fp",5,Elog    	# zwolniony tylko fp
// ---------
% HIST_SKLAD.RXR     # historia przypisan skladnikow dla pracownikow
1 # symbol pola - klucza
1 # identyfikator klucza
HISTSKLAD # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c ten sta|l|a z rejestru ?" 
"Chcesz doda|c jeszcze jedn|a sta|l|a ?" 
"%s - nie ma takiej sta|lej w rejestrze.$Czy chcesz doda|c now|a ?" 
"Nie ma |zadnych sta|lych w rejestrze !"
"Rejestr sta|lych pusty - wstawiasz pierwsz|a ?"
"Nie ma sta|lych o takim symbolu.$Znale|x|c nast|epn|a ?"
"%s - brak sta|lych o takim symbolu !"
% HISTSKLAD.DBF # struktura rekordu
0,log,,,,,D          # usuwanie "w miejscu"
1,string,10,,2       # symbol pracownika
2,string,,192,3      # symbol skladnika
3,ydate              # data poczatku obowiazywania
4,ydate              # data konca obowiazywania
5,log                # czy aktualnie przypisany
1,0,,,1                 # klucz1 zlozony: symbol pracownika
2,0,,,1                 # i symbol skladnika
1,0,,,4                 # * symbol pracownika
2,0,,,4                 # * symbol skladnika
3,0,,,4                 # data poczatku obowiazywania  
% HISTSKLAD.DIC # slownik  rejestru sta|lych
"pracownik",1,Estring   # symbol pracownika
"skladnik",2,Estring    # symbol skladnika
"data_od",3,Edata      # data poczatku obowiazywania
"data_do",4,Edata       # data konca obowiazywania
"czy_przypisany",5,Elog       # czy przypisany
// ---------

// --------------------------
// przelewy
// --------------------------

% przelewy.RJR,xprzelewy.RJR
11
1
przelewy
przelewyM # 
#
% przelewy-WAR.DIC
"Data przelewu",9
"Symbol kontrahenta",1
"Konto kontrahenta",2
"Nazwa 1",3
"Nazwa 2",4
"Kod, miasto",5
"Kwota przelewu",10
"Status",22
"Symbol d.pomoc",13

% przelewy.DBF
0,log,,,,,D           # usuwanie "w miejscu"
// wierzyciel
1,string,20           # SYMBOL kontrahenta
2,2000                # konto kontrahenta
3,string,40           # nazwa 1
4,string,40           # nazwa 2
5,string,40           # kod,miasto
6,string,40           # adres
7,string,40           # nazwa banku kontrahenta
8,string,40           # konto bankowe kontrahenta
9,string,40           # symbol kontrahenta w dodatkowym rej.(modul)
// dluznik
10,string,20          # SYMBOL kontrahenta
11,2000               # konto kontrahenta
12,string,40          # nazwa 1
13,string,40          # nazwa 2
14,string,40          # kod,miasto
15,string,40          # adres
16,string,40          # nazwa banku kontrahenta
17,string,40          # konto bankowe kontrahenta
18,string,40          # symbol kontrahenta w dodatkowym rej.(modul)
19,ydate              # data przelewu
20,kwota              # kwota przelewy
21,2000,,,5           # konto bankowe w planie kont
22,dic,,52            # status
23,dic,,0             # symbol waluty przelewu
24,kwota              # kwota przelewu w walucie
25,ydate              # data kursu
26,string,10          # symbol SWIFT do przelewu w walucie
27,string,20          # miejsce generowania danych (modul)
28,string,20          # kto generowal dane (osoba)
97,log                # zaznaczanie przelewu do usunecie
98,log                # zaznaczanie przel.do wyslanie modemem i do ksiegowanie
99,ulong,,,2,,NM      # numer rekordu
21,0,,,6              # klucz zlozony konto bankowe
22,0,,,6              # plus status 
21,0,,,1              # klucz konto + data przelewu
19,0,,,1              # 
21,0,,,4              # klucz konto + znacznik do wyslania przelewu
98,0,,,4              #

% przelewy.DIC
"wierzsym",1,Estring
"wierzkonto",2,Estring
"wierznazwa1",3,Estring
"wierznazwa2",4,Estring
"wierzkodmiasto",5,Estring
"wierzadres",6,Estring
"wierznazwabanku",7,Estring
"wierznumerbanku",8,Estring
"wierzmodul",9,Estring
"dluzsym",10,Estring
"dluzkonto",11,Estring
"dluznazwa1",12,Estring
"dluznazwa2",13,Estring
"dluzkodmiasto",14,Estring
"dluzadres",15,Estring
"dluznazwabanku",16,Estring
"dluznumerbanku",17,Estring
"dluzmodul",18,Estring
"dataprzel",19,Edata
"kwotaprzel",20,Ekwota
"kontoprzel",21,Estring
"status",22,Estring
"walsym",23,Estring
"walkwotaprzel",24,Ekwota
"datakurs",25,Edata
"swift",26,Estring
"modul",27,Estring
"osoba",28,Estring
"zaznaczusun",97,Elog
"zaznaczksieg",98,Elog
"dokid",99,Ekwota

% przeltmp.RJR
0
0
przeltmp
% przelzap.RJR,xprzelzap.RJR
0
0
przelzap
% przelzap.DBF
0,log,,,,,D
%< przeltmp.DBF
% przeltmp.DBF
1,string,60           # tresc 1
2,string,15           # transakcja
3,xkwota,,x           # wartosc
4,ydate               # termin platnosci
5,2000                # konto wierzyciela dla wielu kont
6,xkwota,,x           # kwota dewiz dla kont dewizowych
7,xkwota,,4           # kurs dla dewiz
8,dic,,0              # symbol waluty
98,ulong,,,2,,M       # dla konta klasyfkkacji jako naglowek
99,ulong,,,1          # dowiazanie do naglowka (pole 99)

% przelzap.DIC,przeltmp.DIC
"tresc1",1,Estring
"trans",2,Estring
"wartosc",3,Ekwota
"data_plat",4,Edata
"kontoplat",5,Estring
"kwota_dew",6,Ekwota
"kurs_dew",7,Ekwota
"waluta",8,Estring
"dokidzap1",98,Ekwota
"dokidzap",99,Ekwota

// przeltm1
//   wykorzystywane jest wprowadzania, konto klasyfikacji
//   nie moze miec 0,log,,,,D na poczatku
% przeltm1.RJR
0
0
przeltm1
% przelrzl.RJR
0
0
przelrzl

% przelrzl.DBF
0,log,,,,,D
%< przeltm1.DBF

% przeltm1.DBF
1,2002                # konto kontrahenta dla wielu kont
2,xkwota,,x           # kwota dewiz dla kont dewizowych
98,ulong,,,2          # dowiazanie do zapisu (pole 98)
99,ulong,,,1          # dowiazanie do naglowka (pole 99)
99,0,,,3              # klucz do ksiegowania
98,0,,,3              #  + 

% przelrzl.DIC,przeltm1.DIC
"konto_rzl",1,Estring
"kwota_rzl",2,Ekwota
"dokidzap1",98,Ekwota
"dokidzap0",99,Ekwota

% TABLICA-AKCJI
%<WYDZIALYALGO.XXX
%<WYROZNIKALGO.XXX
%<PODATNIKALGO.XXX
%<OPISALGO.XXX
%<DEKRETYALGO.XXX
%<PLSKLADALGO.XXX
%<PL_PARALGO.XXX
%<GRUPAALGO.XXX
%<STANOWALGO.XXX
%<POZYCJAALGO.XXX
%<RODZSKLALGO.XXX
%<URZADALGO.XXX
%<KODPRACALGO.XXX
%<PPRAPORTALGO.XXX
%<PITLICZALGO.XXX
%<KREDYTALGO.XXX
%<PITSKLADALGO.XXX
%<<TABLICA-AKCJI

// --------------------------------------------
// Rejestr danych do ksiegowania
// --------------------------------------------

% SUMY-DEKR-DALEJ.XXX
# buttony - menu
 # buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c t|e dekretacj|e z rejestru ?" 
"Chcesz doda|c jeszcze jeden dekret ?" 
"%s - nie ma takiego dekretu w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych dekret|ow w rejestrze !"
"Rejestr dekret|ow pusty - wstawiasz pierwszy ?"
"Nie ma dekret|ow o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak dekret|ow o takim symbolu !"

% SUMYNAR.RXR 
10 # symbol pola - klucza
1 # identyfikator klucza
SUMYNAR # nazwa danych
%< SUMY-DEKR-DALEJ.XXX

% SUMYNAR.DBF # rejestr dekret|ow - struktura rekordu
%<PLKSIEG.DBF
61,kwota               # koszt uzyskania przych 01
62,kwota               # koszt uzyskania przych 02
63,kwota               # koszt uzyskania przych 03
64,kwota               # koszt uzyskania przych 04
65,kwota               # koszt uzyskania przych 05
66,kwota               # koszt uzyskania przych 06
67,kwota               # koszt uzyskania przych 07
68,kwota               # koszt uzyskania przych 08
69,kwota               # koszt uzyskania przych 09
70,kwota               # koszt uzyskania przych 10
71,kwota               # koszt uzyskania przych 11
72,kwota               # koszt uzyskania przych 12
73,kwota               # kwota wolna 01
74,kwota               # kwota wolna 02
75,kwota               # kwota wolna 03
76,kwota               # kwota wolna 04
77,kwota               # kwota wolna 05
78,kwota               # kwota wolna 06
79,kwota               # kwota wolna 07
80,kwota               # kwota wolna 08
81,kwota               # kwota wolna 09
82,kwota               # kwota wolna 10
83,kwota               # kwota wolna 11
84,kwota               # kwota wolna 12
99,string,2            # rok
85,kwota               # niedoplata NFZ 01
86,kwota               # niedoplata NFZ 02
87,kwota               # niedoplata NFZ 03
88,kwota               # niedoplata NFZ 04
89,kwota               # niedoplata NFZ 05
90,kwota               # niedoplata NFZ 06
91,kwota               # niedoplata NFZ 07
92,kwota               # niedoplata NFZ 08
93,kwota               # niedoplata NFZ 09
94,kwota               # niedoplata NFZ 10
95,kwota               # niedoplata NFZ 11
96,kwota               # niedoplata NFZ 12
100,kwota               # do.odlicz.od podatku 01
101,kwota               # do.odlicz.od podatku 02
102,kwota               # do.odlicz.od podatku 03
103,kwota               # do.odlicz.od podatku 04
104,kwota               # do.odlicz.od podatku 05
105,kwota               # do.odlicz.od podatku 06
106,kwota               # do.odlicz.od podatku 07
107,kwota               # do.odlicz.od podatku 08
108,kwota               # do.odlicz.od podatku 09
109,kwota               # do.odlicz.od podatku 10
110,kwota               # do.odlicz.od podatku 11
111,kwota               # do.odlicz.od podatku 12
12,0,,,10              # klucz zlozony: sym.pracownika
99,0,,,10              # + rok

% SUMYNAR.DIC # slownik do danych
%<PLKSIEG.DIC
"k_uzys01",61,Ekwota     # koszt uzyskania przych 01
"k_uzys02",62,Ekwota     # koszt uzyskania przych 02
"k_uzys03",63,Ekwota     # koszt uzyskania przych 03
"k_uzys04",64,Ekwota     # koszt uzyskania przych 04
"k_uzys05",65,Ekwota     # koszt uzyskania przych 05
"k_uzys06",66,Ekwota     # koszt uzyskania przych 06
"k_uzys07",67,Ekwota     # koszt uzyskania przych 07
"k_uzys08",68,Ekwota     # koszt uzyskania przych 08
"k_uzys09",69,Ekwota     # koszt uzyskania przych 09
"k_uzys10",70,Ekwota     # koszt uzyskania przych 10
"k_uzys11",71,Ekwota     # koszt uzyskania przych 11
"k_uzys12",72,Ekwota     # koszt uzyskania przych 12
"k_zw01",73,Ekwota       # kwota wolna 01
"k_zw02",74,Ekwota       # kwota wolna 02
"k_zw03",75,Ekwota       # kwota wolna 03
"k_zw04",76,Ekwota       # kwota wolna 04
"k_zw05",77,Ekwota       # kwota wolna 05
"k_zw06",78,Ekwota       # kwota wolna 06
"k_zw07",79,Ekwota       # kwota wolna 07
"k_zw08",80,Ekwota       # kwota wolna 08
"k_zw09",81,Ekwota       # kwota wolna 09
"k_zw10",82,Ekwota       # kwota wolna 10
"k_zw11",83,Ekwota       # kwota wolna 11
"k_zw12",84,Ekwota       # kwota wolna 12
"rok",99,Estring         # rok
"k_nfz01",85,Ekwota               # niedoplata NFZ 01
"k_nfz02",86,Ekwota               # niedoplata NFZ 02
"k_nfz03",87,Ekwota               # niedoplata NFZ 03
"k_nfz04",88,Ekwota               # niedoplata NFZ 04
"k_nfz05",89,Ekwota               # niedoplata NFZ 05
"k_nfz06",90,Ekwota               # niedoplata NFZ 06
"k_nfz07",91,Ekwota               # niedoplata NFZ 07
"k_nfz08",92,Ekwota               # niedoplata NFZ 08
"k_nfz09",93,Ekwota               # niedoplata NFZ 09
"k_nfz10",94,Ekwota               # niedoplata NFZ 10
"k_nfz11",95,Ekwota               # niedoplata NFZ 11
"k_nfz12",96,Ekwota               # niedoplata NFZ 12
"k_zmpod01",100,Ekwota               # do.odlicz.od podatku 01
"k_zmpod02",101,Ekwota               # do.odlicz.od podatku 02
"k_zmpod03",102,Ekwota               # do.odlicz.od podatku 03
"k_zmpod04",103,Ekwota               # do.odlicz.od podatku 04
"k_zmpod05",104,Ekwota               # do.odlicz.od podatku 05
"k_zmpod06",105,Ekwota               # do.odlicz.od podatku 06
"k_zmpod07",106,Ekwota               # do.odlicz.od podatku 07
"k_zmpod08",107,Ekwota               # do.odlicz.od podatku 08
"k_zmpod09",108,Ekwota               # do.odlicz.od podatku 09
"k_zmpod10",109,Ekwota               # do.odlicz.od podatku 10
"k_zmpod11",110,Ekwota               # do.odlicz.od podatku 11
"k_zmpod12",111,Ekwota               # do.odlicz.od podatku 12
//
// nowy rejestr sum
% SUMYNART.RXR,sumynart-zl.rxr 
10 # symbol pola - klucza
1 # identyfikator klucza
SUMYNART # nazwa danych
% SUMYNART.DBF # rejestr dekret|ow - struktura rekordu
10,string,10,,1        # symbol pracownika\zleceniobiorcy
11,string,6,,2         # rok +mies wyplaty - RRRRMM
20,kwota             # suma wartosc brutto
21,kwota             # podstawa wymiaru skladki-ub.emeryt.i rentowe
22,kwota             # podstawa wymiaru skladki-ub.chorobow.i wypadkowe
23,kwota             # podstawa wymiaru skladki-ub.zdrowotne
24,kwota             # skladka na ub.emeryt.-finansuje ubezpieczony
25,kwota             # skladka na ub.rentowe.-finansuje ubezpieczony
26,kwota             # skladka na ub.chorob
27,kwota             # skladka na ub.emeryt.-finansuje platnik
28,kwota             # skladka na ub.rentowe.-finansuje platnik
29,kwota             # skladka na ub.wypadkowe
31,kwota             # suma skladek na ub.zdrowotne - cala kwota
32,kwota             # suma skladek na ub.zdrowotne - nie odlicz.od podatku
33,kwota             # skladka na ub.zdrowotne
34,kwota             # suma korekt ubezp.zdrowot.
35,kwota             # kwota obnizenia podstawy wymiaru skladki(pracowniczy fundusz emerytalny)
36,kwota             # suma koszt uzyskania przychodu
37,kwota             # suma podstawa opodatkowania
38,kwota             # suma wartosc naliczonego podatku dochodowego
39,kwota             # suma kwota zwolniona z podatku 
40,kwota             # suma wartosc zaliczki podatku dochodowego
41,kwota             # suma korekt podatku dochodowego
42,kwota             # suma podatku do rozliczenia z pit-40
43,kwota             # suma wartosc netto 
44,kwota             # suma potracen
45,kwota             # suma zasilkow
46,kwota             # kwota wyplaconego zasilku rodzinnego
47,kwota             # kwota wyplaconego zasilku wychowawczego
48,kwota             # kwota wyplaconego zasilku pielegnacyjnego
49,kwota             # kwota innych zasilkow
50,kwota             # suma kosztu uzys.przych.nie ryczaltowego
51,kwota             # suma kosztu uzys.przych.ryczaltowego 
52,kwota             # kwota do wyplaty
53,kwota             # kwota do przelewu 2
54,kwota             # kwota do przelewu 1
55,kwota             # gotowka
56,kwota             # suma podstawa opodatkowania-pomniejszen o sk�adki emeryt i kup
57,kwota             # podstawa ubezp.zdrowotnego- bez pomn o skl emeryt
58,kwota             # suma podstaw KUP
//59,kwota             # stawka podatku w danym miesiacu
60,string,10             # symbol pracownika ( dla umow zlecen)
61,kwota		# liczba godzin faktycznie przepracowanych w miesiacu
62,kwota		# liczba godzin przepracowanych + urlopy
63,kwota		# liczba godzin roboczych w miesiacu - godziny nieusprawiedliwione
64,kwota		# liczba dni przepracowanych + urlop wypoczynkowy
65,kwota		# liczba dni roboczych w miesiacu - NN
66,kwota		# liczba dni roboczych w miesiacu - NN(kalendarz)
67,kwota             # suma podstaw KUP - rzeczywista w miesiacu
68,kwota	# suma godzin urlopu oko i szk
69,kwota	# kwota pomniejszajaca podstawe do wyl. ubezp.chor
70,kwota	# kwota pomniejszajaca podstawe do wyl. ubezp.wyp
//
71,kwota       #podstawa wymiaru skladki-ub.emeryt.i rentowe opodatkowana
72,kwota       #podstawa wymiaru skladki chorobowej opodatkowana
73,kwota       #suma skladek emerytalnej,rentowej i chorobowej od przychodow opodatkowanych
74,kwota       # podstawa skladki zdrowotnej 9% nie obnizanej do wysokosci podatku( bez pomniejszania o zus)
75,kwota       # podstawa skladki zdrowotnej 7.75% ( bez pomniejszania o zus)
76,kwota       #podstawa wymiaru skladki-ub.emeryt.i rentowe zwiazana z przychodem 172
77,kwota       #podstawa wymiaru skladki chorobowej zwiazana z przychodem 172
78,kwota       #suma skladek emerytalnej,rentowej i chorobowej od przychodu 172 
79,kwota       # sk�adka zdrowotna nie pomniejszana do wysokosci podatku
80,kwota	# l.dni roboczych nieobecnosc bez wplywu na wynagrodzenie
//
81,xkwota,,5	# fpp
82,xkwota,,5	# fgp
83,xkwota,,5	# fep
//
10,0,,,3              # klucz zlozony: sym.pracownika
11,0,,,3              # + rok
60,0,,,4              # klucz zlozony: sym.pracownika
11,0,,,4              # + rok

% SUMYNART.DIC # slownik do danych
"pracownik",10,Estring   # symbol pracownika
"mies_wypl",11,Estring   # rok i mies wyplaty RRRRMM
"s_brutto",20,Ekwota     # suma wartosci brutto
"s_podst_er",21,Ekwota             # podstawa wymiaru skladki-ub.emeryt.i rentowe
"s_podst_cw",22,Ekwota             # podstawa wymiaru skladki-ub.chorobow.i wypadkowe
"s_podst_z",23,Ekwota             # podstawa wymiaru skladki-ub.zdrowotne
"s_ueu",24,Ekwota             # skladka na ub.emeryt.-finansuje ubezpieczony
"s_uru",25,Ekwota             # skladka na ub.rentowe.-finansuje ubezpieczony
"s_ucu",26,Ekwota             # skladka na ub.chorob
"s_uep",27,Ekwota             # skladka na ub.emeryt.-finansuje platnik
"s_urp",28,Ekwota             # skladka na ub.rentowe.-finansuje platnik
"s_uwp",29,Ekwota             # skladka na ub.wypadkowe
"s_nalzdr",31,Ekwota             # suma skladek na ub.zdrowotne - cala Ekwota
"s_zalzdrn",32,Ekwota             # suma skladek na ub.zdrowotne - nie odlicz.od podatku
"s_zalzdr",33,Ekwota             # skladka na ub.zdrowotne
"s_korzdr",34,Ekwota             # suma korekt ubezp.zdrowot.
"kw_obniz",35,Ekwota             # kwota obnizenia podstawy wymiaru skladki(pracowniczy fundusz emerytalny)
"s_k_uzys",36,Ekwota             # suma koszt uzyskania przychodu
"s_podstopod",37,Ekwota             # suma podstawa opodatkowania
"s_nalpod",38,Ekwota             # suma wartosc naliczonego podatku dochodowego
"s_k_zw",39,Ekwota             # suma kwota zwolniona z podatku 
"s_zalpod",40,Ekwota             # suma wartosc zaliczki podatku dochodowego
"s_korpod",41,Ekwota             # suma korekt podatku dochodowego
"s_korpit",42,Ekwota             # suma podatku do rozliczenia z pit-40
"s_netto",43,Ekwota             # suma wartosc netto 
"s_potrac",44,Ekwota             # suma potracen
"s_zasilek",45,Ekwota             # suma zasilkow
"kw_rodz",46,Ekwota             # kwota wyplaconego zasilku rodzinnego
"kw_wych",47,Ekwota             # kwota wyplaconego zasilku wychowawczego
"kw_piel",48,Ekwota             # kwota wyplaconego zasilku pielegnacyjnego
"kw_inne",49,Ekwota             # kwota innych zasilkow
"sk_uzys_m",50,Ekwota             # suma kosztu uzys.przych.nie ryczaltowego
"sk_uzys_r",51,Ekwota             # suma kosztu uzys.przych.ryczaltowego 
"s_dowypl",52,Ekwota             # kwota do wyplaty
"s_kwotaprzel",53,Ekwota             # kwota do przelewu 1
"s_kwotaprzel2",54,Ekwota             # kwota do przelewu 2
"s_gotowka",55,Ekwota             # gotowka
"s_podstopod1",56,Ekwota             # suma podstawa opodatkowania-bez odlicz skl emeryt i kup
"s_podst_z1",57,Ekwota             # podstawa wymiaru skladki-ub.zdrowotne -bez odlicz skl emeryt
"s_podstkup",58,Ekwota          # suma podstaw KUP
//"stawka",59,Ekwota              # stawka podatku
"s_prac",60,Estring		# symbol pracownika ( dla umow zlecen)
"s_godzrob",61,Ekwota        # liczba godzin faktycznie przepracowanych w miesiacu
"s_godzrobu",62,Ekwota	 #liczba godzin przepracowanych + urlopy ( bez nadgodzin)
"s_godzrobu_all",63,Ekwota #liczba godzin roboczych ogolem - godziny nieusprawiedliwione
"s_dnirobu",64,Ekwota	# liczba dni przepracowanych + urlop wypoczynkowy
"s_dnirobu_all",65,Ekwota  # liczba dni roboczych do przepracowania w miesiacu - NN
"s_dnirobu_kal",66,Ekwota  # liczba dni roboczych do przepracowania w miesiacu - NN (kalendarz)
"s_podstkup1",67,Ekwota          # suma podstaw KUP( rzeczywista w miesiacu)
"s_gdzuop_szk",68,Ekwota	# suma godzin urlopu oko i szk
"s_br_odj_chor",69,Ekwota	# kwota pomniejszajaca podstawe do wyl. ubezp.chor
"s_br_odj_wyp",70,Ekwota	# kwota pomniejszajaca podstawe do wyl. ubezp.wyp
"s_podst_er_opod",71,Ekwota       #podstawa wymiaru skladki-ub.emeryt.i rentowe opodatkowana
"s_podst_cw_opod",72,Ekwota       #podstawa wymiaru skladki chorobowej opodatkowana
"s_zus_opod",73,Ekwota       #suma skladek emerytalnej,rentowej i chorobowej od przychodow opodatkowanych
"s_zdrownobn",74,Ekwota       # podstawa skladki zdrowotnej 9% nie obnizanej do wysokosci podatku( bez pomniejszania o zus)
"s_podst_z1_opod",75,Ekwota       # podstawa skladki zdrowotnej 7.75% ( bez pomniejszania o zus)
"s_podst_er_nobn",76,Ekwota       #podstawa wymiaru skladki-ub.emeryt.i rentowe zwiazana z przychodem 172
"s_podst_cw_nobn",77,Ekwota       #podstawa wymiaru skladki chorobowej zwiazana z przychodem 172
"s_zus_nobn",78,Ekwota       #suma skladek emerytalnej,rentowej i chorobowej od przychodu 172 
"s_zalzdr_nobn",79,Ekwota       # sk�adka zdrowotna nie pomniejszana do wysokosci podatku
"s_dnirobu_bww",80,Ekwota	# l.dni rob nieobecnosci bez wplywu na wynagrodzenie
"s_fpp",81,Ekwota		# fpp
"s_fgp",82,Ekwota		# fgp
"s_fep",83,Ekwota		# fep
//
//------- rejestr kwot narastajaco wyplaconych dla skladnikow czesciowo  zwolnionych ------
% PLKWOTY_ZW.RXR,ZLKWOTY_ZW.RXR 
10 # symbol pola - klucza
1 # identyfikator klucza
PLKWOTY_ZW # nazwa danych
% PLKWOTY_ZW.DBF # rejestr dekret|ow - struktura rekordu
10,string,10,,1        # symbol pracownika\zleceniobiorcy
11,string,10         # symbol skladnika
12,string,10		# symbol pracownika dla zleceniobiorcy		
20,kwota             # suma wyplat narastajaco w biezacym roku
21,string,4	     # rok ( wazne dla zmiennego roku obrotowego)	
10,0,,,3              # klucz zlozony: sym.pracownika
11,0,,,3              # symbol skladnika
21,0,,,3		# rok
12,0,,,4              # klucz zlozony: sym.pracownika
11,0,,,4              # symbol skladnika
21,0,,,4		# rok
//
% PLKWOTY_ZW.DIC # slownik do danych
"pracownik",10,Estring   # symbol pracownika
"skladnik",11,Estring   # symbol skladnika
"pracownik_zl",10,Estring   # symbol pracownika dla zleceniobiorcy
"kwota_narastajaco",20,Ekwota     # kwota narastajaco
"rok",21,Estring		# rok w ktorym ulga
//
//------- rejestr kwot narastajaco wyplaconych dla skladnikow czesciowo  zwolnionych ------
% PLSKLAD_PROC.RXR,PLPODST.RXR 
10 # symbol pola - klucza
1 # identyfikator klucza
PLSKLAD_PROC # nazwa danych
% PLSKLAD_PROC.DBF # rejestr INDYWIDUALNYCH STAWEK %
10,string,10,2,1        # symbol pracownika\zleceniobiorcy, symbol podstawy
11,string,10,2,2         # symbol skladnika
12,string,10,2		# symbol pracownika dla zleceniobiorcy		
20,kwota             # stawka %, wysokosc podstawy
13,string,50		# nazwisko i imie pracownika, opis podstawy		
14,string,50		# nazwa skladnika
15,ydate		# data pocz|atku okresu obowi|azywania
16,ydate		# data konca okresu obowiazywania
10,0,,,3              # klucz zlozony: sym.pracownika
11,0,,,3              # symbol skladnika
11,0,,,4              # klucz zlozony: sym.skladnika
10,0,,,4              # symbol pracownika
10,0,,,5              # klucz zlozony: sym.pracownika
15,0,,,5              # symbol skladnika

% PLSKLAD_PROC.DIC # slownik do danych
"pracownik",10,Estring   # symbol pracownika, podstawy
"skladnik",11,Estring   # symbol skladnika
"pracownik_zl",10,Estring   # symbol pracownika dla zleceniobiorcy
"stawka",20,Ekwota     # stawka %, kwota podstawy
"pracopis",13,Estring	#nazwisko i imie pracownika, opis podstawy
"skladopis",14,Estring	# opis skladnika
"dataod",15,Edata	# data poczatku obowiazywania
"datado",16,Edata	# data konca obowiazywania
//
% PLSKLAD_PROC-WAR.DIC
"skladnik",11,Estring,"Sk|ladnik"   # symbol skladnika
"skladopis",14,Estring,"Opis sk|ladnika"	# opis skladnika

% PLPODST-WAR.DIC
"pracownik",10,Estring,"Symbol podstawy"   # symbol podstawy
"pracopis",13,Estring,"Opis podstawy"	# opis podstawy
//
% PODSTAWY-KOLUMNY-SKLAD.DIC
"dataod",15,Edata,"Data pocz."	# data poczatku obowiazywania
"datado",16,Edata,"Data ko|nc."	# data konca obowiazywania
"stawka",20,Ekwota,"Podstawa"
//

% PLKSIEG.RXR,PLPRZEL.RXR,PLKSIEG_HIS.RXR
10 # symbol pola - klucza
1 # identyfikator klucza
PLKSIEG # nazwa danych
%< SUMY-DEKR-DALEJ.XXX

% PLKSIEG.DBF # rejestr dekretow - struktura rekordu
0,log,,,,,D             # usuwanie "w miejscu"
10,ulong,,,1           # numer rekordu
11,string,70           # opis dekretu
12,string,45,,2        # symbol pracownika
13,2000                # konto WN
14,2000                # konto MA
15,2002                # konto klasyfikacji
16,kwota               # kwota
//17,2100                # symbol kontrahenta  WN 
//18,2100                # symbol kontrahenta  MA 
17,string,11                # symbol kontrahenta  WN 
18,string,11                # symbol kontrahenta  MA 
19,ydate               # data placy
20,string,45,,6           # numer listy
21,xkwota,,4               # kwota brutto
22,kwota               # kwota podatku pobranego
23,kwota               # kwota netto
24,2000                # konto podatku
25,kwota               # stawka procentowa podatku
26,kwota               # koszt uzyskania przych.
27,kwota               # kwota zwolniona z podatku
28,string,20,,3        # symbol Urzedu Skarbowego
29,string,20,,4        # symbol zus
30,log                 # czy byla zmiana
31,2002                # konto klasyfikacji MA
32,ulong               # identyfikator do PLACE
33,string,90,,7          # klucz porzadkujacy 1
34,string,90,,8          # klucz porzadkujacy 2
13,0,,,5               # klucz zlozony: konto wn
14,0,,,5               # konto ma
15,0,,,5               # wydzial(konto klasyfikacji wn)
31,0,,,5               # konto klasyfikacji ma
20,0,,,11              # lista*pracownik
12,0,,,11
% PLKSIEG.DIC # slownik do struktury dekretow
"rodzdekr",10,Ekwota   # numer rekordu
"opisdekr",11,Estring  # opis dekretu
"pracownik",12,Estring # symbol pracownika
"kontown",13,Estring   # konto WN 
"kontoma",14,Estring   # konto MA
"kontorzl",15,Estring  # konto klasyfikacji
"kwota",16,Ekwota      # konto
"symwn",17,Estring     # symbol kontrahenta  WN 
"symma",18,Estring     # symbol kontrahenta  MA
"datapl",19,Edata      # data placy
"nrlisty",20,Estring   # numer listy
"placab",21,Ekwota     # kwota brutto
"podatekp",22,Ekwota   # kwota podatku pobranego
"placan",23,Ekwota     # kwota netto
"kontopod",24,Estring  # konto podatku
"proc",25,Ekwota       # stawka procentowa podatku
"k_uzys",26,Ekwota     # koszt uzyskania przych.
"k_zw",27,Ekwota       # kwota zwolniona z podatku
"urzad",28,Estring     # symbol Urzedu Skarbowego
"zus",29,Estring       # symbol zus-u
"zmiana",30,Elog       # czy byla zmiana
"kontorozlma",31,Estring # konto klasyfikacji MA
"place_id",32,Ekwota   # identyfikator do pliku place
"klucz1",33,Estring    # klucz porzadkujacy 1
"klucz2",34,Estring    # klucz porzadkujacy 2
//
// ---------------------------------
// Rejestr do drukowania deklaracji PIT
// ---------------------------------
% PIT.RXR,XPIT.RXR,RNPIT.RXR,ZLPIT.RXR # rejestr deklaracji PIT
1 # symbol pola - klucza
1 # identyfikator klucza
PIT # nazwa danych
PITM # 
#
PIT-WAR
% PIT-WAR.DIC
"Symbol deklaracji PIT",1
"Nazwa deklaracji PIT",2
% PIT.DBF # rejestr deklaracji PIT
0,log,,,,,D             # usuwanie "w miejscu"
1,dic,,46,1,,N          # symbol deklaracji PIT
2,string,60,,2          # nazwa deklaracji PIT
99,ulong,,,6,,NM        # numer rekordu
% PIT.DIC # slownik deklaracji PIT
"sympit",1,Estring      # symbol deklaracji PIT
"nazpit",2,Estring      # nazwa deklaracji PIT
"dokid",99,Ekwota       # numer rekordu
// -------------------------------------
//    ZAPISY DO REJESTRU WYDRUKOW PIT
// -------------------------------------
% PITTMP.RXR
0
0
PITTMP
% PITZAP.RXR,xPITZAP.RXR,RNPITZAP.RXR,ZLPITZAP.RXR
0
0
PITZAP
% PITZAP.DBF
0,log,,,,,D
%< PITTMP.DBF
% PITTMP.DBF
1,string,,208             # symbol pozycji w  deklaracji PIT
2,string,,30720           # symbol  listy plac dla pozycji w  deklaracji PIT
3,dic,,48                 # rodzaj kwoty
99,ulong,,,1              # dowiazanie do naglowka (pole 99)
1,0,,,2                   # klucz2 zlozony: symbol pozycji
2,0,,,2                   # i symbol listy plac
3,0,,,2                   # i rodzaj kwoty
% PITZAP.DIC,PITTMP.DIC
"sympoz",1,Estring        # symbol pozycji
"symlisty",2,Estring      # symbol listy plac
"rodzaj",3,Estring        # rodzaj kwoty
"dokidzap",99,Ekwota      # dowiazanie do naglowka (pole 99)

% PITZAP-KOLUMNY.DIC
"sympoz",1,Estring,"Numer pozycji" 
"symlisty",2,Estring,"Symbol listy" 
"rodzaj",3,Estring ,"Rodzaj kwoty"
"dokidzap",99,Ekwota 

// ---------------------------------------------------------------==
//               Stawki podatku dochodowego i ubezpieczenia zdrowotnego 
// ---------------------------------------------------------------==

% PLCPOD.RXR,XPLCPOD.RXR # rejestr opisow
100 # symbol pola - klucza
1 # identyfikator klucza
PLCPOD # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzona data!" 
"Zmieniasz stawki?"
"Dodajesz nowe dane ?" 
"Usun|a|c stawki z rejestru ?" 
"Chcesz doda|c jeszcze jedne dane ?" 
"%s - nie ma takich danych w rejestrze.$Czy chcesz doda|c nowe ?" 
"Nie ma |zadnych stawek w rejestrze !"
"Rejestr stawek pusty - wstawiasz pierwsz|a ?"
"Nie ma stawek w tym roku podatkowym.$Znale|x|c nast|epny ?"
"%s - brak zestawu stawek dla takiej daty !"

% PLCPOD.DBF # rejestr STAWEK PODATKOWYCH - struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,,33792,1,,N       # rok podatkowy
101,kwota                # stawka procentowa podatku 1
102,kwota                # prog podatkowy max1
103,kwota                # stawka procentowa podatku 2
104,kwota                # prog podatkowy max2
105,kwota                # stawka procentowa podatku 3
106,kwota                # prog podatkowy max3
107,kwota                # stawka procentowa podatku 4
108,kwota                # prog podatkowy max4
109,kwota                # stawka procentowa podatku 5
110,kwota                # prog podatkowy max5
111,kwota                # stawka procentowa podatku 6
112,kwota                # prog podatkowy max6
113,kwota                # stawka procentowa podatku 7
114,kwota                # prog podatkowy max7
115,kwota                # kwota zwolniona z podatku
116,kwota                # koszt uzyskania przychodu
117,kwota                # stawka procentowa na bezpiecz.zdrowotne
118,kwota                # stawka procentowa na bezpiecz.emer.placi platnik
119,kwota                # stawka procentowa na bezpiecz.rent.placi platnik
120,kwota                # stawka procentowa na bezpiecz.wypa.placi platnik
121,kwota                # stawka procentowa na bezpiecz.emer.placi ubezpiecz.
122,kwota                # stawka procentowa na bezpiecz.rent.placi ubezpiecz.
123,kwota                # stawka procentowa na bezpiecz.chor.placi ubezpiecz.
124,2000                 # konto ks.rozr.i bank skladki emerytalnej
125,2000                 # konto ks.rozr.i bank skladki rentowej
126,2000                 # konto ks.rozr.i bank skladki wypadkowej
127,2000                 # konto ks.rozr.i bank skladki chorobowej
128,2000                 # konto ks.rozr.i bank skladki zdrowotnej
129,kwota                # prog ubezpieczeniowy
130,kwota                # stawka procentowa odpisu na FGSS
131,2000                 # konto ks.rozr.odpisu na FGSS
132,kwota                # stawka procentowa odpisu na Fundusz Pracy
133,2000                 # konto ks.rozr.odpisu na Fundusz Pracy
140,2000                 # konto ks.koszt skladki emerytalnej 
141,2000                 # konto ks.koszt skladki rentowej 
142,2000                 # konto ks.koszt skladki wypadkowej 
143,2000                 # konto ks.koszt dpisu na FGSS 
144,2000                 # konto ks.koszt odpisu na Fundusz Pracy 
145,kwota                # stawka procentowa na bezpiecz.zdrowotne do odliczenia
146,kwota                # prog podatkowy2 min
147,kwota                # prog podatkowy3 min
148,kwota                # prog podatkowy4 min
149,kwota                # prog podatkowy5 min
150,kwota                # prog podatkowy6 min
151,kwota                # prog podatkowy7 min
152,kwota                # stawka odpisu na FEP
153,2000                 # konto ks.rozr odpisu na FEP 
154,2000                 # konto ks.koszt odpisu na FEP 
155,2000		# konto ks koszt skladki emerytalnej - pracodawca
156,2000		# konto ks koszt skladki rentowej pracodawca
157,2000		# konto ks rozr skladki emerytalnej -pracodawca
158,2000		# konto ks rozr skladki rentowej -pracodawca

% PLCPOD.DIC # slownik do danych o kliencie
"rokpod",100,Estring      # rok podatkowy
"proc1",101,Ekwota        # stawka procentowa1
"prog1",102,Ekwota        # prog podatkowy1
"proc2",103,Ekwota        # stawka procentowa2
"prog2",104,Ekwota        # prog podatkowy2
"proc3",105,Ekwota        # stawka procentowa3
"prog3",106,Ekwota        # prog podatkowy3
"proc4",107,Ekwota        # stawka procentowa4
"prog4",108,Ekwota        # prog podatkowy4
"proc5",109,Ekwota        # stawka procentowa5
"prog5",110,Ekwota        # prog podatkowy5
"proc6",111,Ekwota        # stawka procentowa6
"prog6",112,Ekwota        # prog podatkowy6
"proc7",113,Ekwota        # stawka procentowa7
"prog7",114,Ekwota        # prog podatkowy7
"k_uzys",115,Ekwota       # koszt uzyskania przychodow
"k_zw",116,Ekwota         # kwota zwolniona z podatku
"uzu",117,Ekwota          # stawka procentowa na bezpiecz.zdrowotne
"uep",118,Ekwota          # stawka procentowa na bezpiecz.emer.placi platnik
"urp",119,Ekwota          # stawka procentowa na bezpiecz.rent.placi platnik
"uwp",120,Ekwota          # stawka procentowa na bezpiecz.wypa.placi platnik
"ueu",121,Ekwota          # stawka procentowa na bezpiecz.emer.placi ubezpiecz.
"uru",122,Ekwota          # stawka procentowa na bezpiecz.rent.placi ubezpiecz.
"ucu",123,Ekwota          # stawka procentowa na bezpiecz.chor.placi ubezpiecz.
"ekonto",124,Estring      # konto ks.rozr.skladki emerytalnej
"rkonto",125,Estring      # konto ks.rozr.skladki rentowej
"wkonto",126,Estring      # konto ks.rozr.skladki wypadkowej
"ckonto",127,Estring      # konto ks.rozr.skladki chorobowej
"zkonto",128,Estring      # konto ks.rozr.skladki zdrowotnej
"progub",129,Ekwota       # prog ubezpieczeniowy
"fgp",130,Ekwota          # stawka procentowa odpisu na FGSS placi platnik
"fgkonto",131,Estring     # konto ks.rozr.odpisu na FGSS
"fpp",132,Ekwota          # stawka procentowa odpisu na Fundusz Pracy placi platnik
"fpkonto",133,Estring     # konto ks.rozr.odpisu na Fundusz Pracy
"ekontown",140,Estring    # konto ks.koszt skladki emerytalnej
"rkontown",141,Estring    # konto ks.koszt skladki rentowej
"wkontown",142,Estring    # konto ks.koszt skladki wypadkowej
"fgkontown",143,Estring   # konto ks.koszt dpisu na FGSS
"fpkontown",144,Estring   # konto ks.koszt odpisu na Fundusz Pracy
"uzo",145,Ekwota          # stawka procentowa na bezpiecz.zdrowotne do odliczenia
"progm2",146,Ekwota     # prog podatkowy2 minimum 
"progm3",147,Ekwota     # prog podatkowy3 minimum 
"progm4",148,Ekwota     # prog podatkowy4 minimum 
"progm5",149,Ekwota     # prog podatkowy5 minimum 
"progm6",150,Ekwota     # prog podatkowy6 minimum 
"progm7",151,Ekwota     # prog podatkowy7 minimum 
"fep",152,Ekwota          # stawka procentowa odpisu na Fundusz Emerytur Pomostowych placi platnik
"fekonto",153,Estring     # konto ks.rozr.odpisu na Fundusz Emerytur Pomostowych
"fekontown",154,Estring   # konto ks.koszt odpisu na Fundusz Emerytur Pomostowych
"epkontown",155,Estring # konto ks koszt skladki emerytalnej - pracodawca
"rpkontown",156,Estring	# konto ks koszt skladki rentowej pracodawca
"epkonto",157,Estring	# konto ks rozr skladki emerytalnej -pracodawca
"rpkonto",158,Estring	# konto ks rozr skladki rentowej -pracodawca
// =================================================================
//              REJESTR  Z  PLACAMI POPRZEDNICH MIESIECY
// =================================================================
% PLCHOR.RXR,XPLCHOR.RXR # rejestr 
10 # symbol pola - klucza
1 # identyfikator klucza
PLCHOR # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c ten rekord z rejestru ?" 
"Chcesz doda|c jeszcze jeden rekord ?" 
"%s - nie ma takiego rekordu w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych rekord|ow w rejestrze !"
"Rejestr rekord|ow pusty - wstawiasz pierwszy ?"
"Nie ma rekord|ow o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak rekord|ow o takim symbolu !"

% PLCHOR.DBF # rejestr dekret|ow - struktura rekordu
1,string,,144,2        # symbol pracownika
2,string,,192,3        # symbol skladnika dla ktorego wyliczana stawka
3,string,15,,4          # symbol listy probnej
4,kwota                # suma skladnikow stalych
5,kwota                # liczba godzin do przepracowania w miesiacu urlopu
6,kwota                # suma skl. zmiennych wyplaconych -1. miesiac
7,kwota                # liczba godzin przepracowanych  1.mies
8,kwota                # suma skl.wyplaconych - 2. miesiac
9,kwota                # liczba godzin przepracowanych  2.mies
10,kwota                # suma skl.wyplaconych - 3. miesiac
11,kwota                # liczba godzin przepracowanych  3.mies
12,kwota                # stawka stala
13,kwota                # stawka zmienna
14,kwota                # stawka za urlop
15,string,7              # rok.mie 1.
16,string,7               # rok.mie 2.
17,string,7               # rok.mie 3.
90,ulong,,,9           # numer rekordu
20,kwota                # suma skl.wyplaconych - 4. miesiac
21,kwota                # liczba godzin przepracowanych  4.mies
22,string,7              # rok.mie 4.
23,kwota                # suma skl.wyplaconych - 5. miesiac
24,kwota                # liczba godzin przepracowanych  5.mies
25,string,7              # rok.mie 5.
26,kwota                # suma skl.wyplaconych - 6. miesiac
27,kwota                # liczba godzin przepracowanych  6.mies
28,string,7              # rok.mie 6.
29,kwota                # suma skl.wyplaconych - 7. miesiac
30,kwota                # liczba godzin przepracowanych  7.mies
31,string,7              # rok.mie 7.
32,kwota                # suma skl.wyplaconych - 8. miesiac
33,kwota                # liczba godzin przepracowanych  8.mies
34,string,7              # rok.mie 8.
35,kwota                # suma skl.wyplaconych - 9. miesiac
36,kwota                # liczba godzin przepracowanych  9.mies
37,string,7              # rok.mie 9.
38,kwota                # suma skl.wyplaconych -10. miesiac
39,kwota                # liczba godzin przepracowanych 10.mies
40,string,7              # rok.mie 10.
41,kwota                # suma skl.wyplaconych -11. miesiac
42,kwota                # liczba godzin przepracowanych 11.mies
43,string,7              # rok.mie 11.
44,kwota                # suma skl.wyplaconych -12. miesiac
45,kwota                # liczba godzin przepracowanych 12.mies
46,string,7              # rok.mie 12.
1,0,,,1                 # klucz1 zlozony: symbol pracownika
2,0,,,1                 # symbol skladnika
3,0,,,1                 # symbol listy probnej+numer
% PLCHOR.DIC # slownik do danych o kliencie
"pracownik",1,Estring   # symbol pracownika
"skladnik",2,Estring    # symbol skladnika
"lista",3,Estring      # symbol listy probnej
"stale",4,Ekwota                # suma skladnikow stalych
"l_godz",5,Ekwota                # liczba godzin do przepracowania w miesiacu urlopu
"zmienne1",6,Ekwota                # suma skl. zmiennych wyplaconych -1. miesiac
"l_godz1",7,Ekwota                # liczba godzin przepracowanych  1.mies
"zmienne2",8,Ekwota                # suma skl.wyplaconych - 2. miesiac
"l_godz2",9,Ekwota                # liczba godzin przepracowanych  2.mies
"zmienne3",10,Ekwota                # suma skl.wyplaconych - 3. miesiac
"l_godz3",11,Ekwota                # liczba godzin przepracowanych  3.mies
"stawka_st",12,Ekwota                # stawka stala
"stawka_zm",13,Ekwota                # stawka zmienna
"stawka",14,Ekwota                # stawka za urlop
"rokmie1",15,Estring               # rok.mie 1.
"rokmie2",16,Estring               # rok.mie 2.
"rokmie3",17,Estring               # rok.mie 3.
"nrrek",90,Ekwota       # numer listy w ramach listy wzorcowej
"zmienne4",20,Ekwota                # suma skl. zmiennych wyplaconych -4. miesiac
"l_godz4",21,Ekwota                # liczba godzin przepracowanych  4.mies
"rokmie4",22,Estring               # rok.mie 4.
"zmienne5",23,Ekwota                # suma skl. zmiennych wyplaconych -5. miesiac
"l_godz5",24,Ekwota                # liczba godzin przepracowanych  5.mies
"rokmie5",25,Estring               # rok.mie 5.
"zmienne6",26,Ekwota                # suma skl. zmiennych wyplaconych -6. miesiac
"l_godz6",27,Ekwota                # liczba godzin przepracowanych  6.mies
"rokmie6",28,Estring               # rok.mie 6.
"zmienne7",29,Ekwota                # suma skl. zmiennych wyplaconych -7. miesiac
"l_godz7",30,Ekwota                # liczba godzin przepracowanych  7.mies
"rokmie7",31,Estring               # rok.mie 7.
"zmienne8",32,Ekwota                # suma skl. zmiennych wyplaconych -8. miesiac
"l_godz8",33,Ekwota                # liczba godzin przepracowanych  8.mies
"rokmie8",34,Estring               # rok.mie 8.
"zmienne9",35,Ekwota                # suma skl. zmiennych wyplaconych -9. miesiac
"l_godz9",36,Ekwota                # liczba godzin przepracowanych  9.mies
"rokmie9",37,Estring               # rok.mie 9.
"zmienne10",38,Ekwota                # suma skl. zmiennych wyplaconych -10.miesiac
"l_godz10",39,Ekwota                # liczba godzin przepracowanych 10.mies
"rokmie10",40,Estring               # rok.mie 10.
"zmienne11",41,Ekwota                # suma skl. zmiennych wyplaconych -11.miesiac
"l_godz11",42,Ekwota                # liczba godzin przepracowanych 11.mies
"rokmie11",43,Estring               # rok.mie 11.
"zmienne12",44,Ekwota                # suma skl. zmiennych wyplaconych -12.miesiac
"l_godz12",45,Ekwota                # liczba godzin przepracowanych 12.mies
"rokmie12",46,Estring               # rok.mie 12.
//
% H_CHOR2.RXR,H_CHORARCH2.RXR    # rejestr sum skladnikow dla potrzeb wyliczenia zasilkow 
1 # symbol pola - klucza
1 # identyfikator klucza
HCHOR2 # nazwa danych
# buttony - menu
#
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c ten rekord z rejestru ?" 
"Chcesz doda|c jeszcze jeden rekord ?" 
"%s - nie ma takiego rekordu w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych rekord|ow w rejestrze !"
"Rejestr rekord|ow pusty - wstawiasz pierwszy ?"
"Nie ma rekord|ow o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak rekord|ow o takim symbolu !"
% HCHOR2.DBF # rejestr  wynagrodzen dla potrzeb zapamietania wyliczenia zasilkow chorobowych - struktura rekordu
%< PLCHOR1.DBF 
50,string,,30720,8 #symbol listy plac z rozliczona nieobecnoscia
51,ulong,,,6       # numer listy rozliczajacej nieobecnosc
52,string,20,,10       # lista rozliczajaca nieobecnosc z numerem
53,string,10	   # skladnik rozliczajacy nieobecnosc		
52,0,,,4		# klucz zlozony lista z numerem
1,0,,,4			# pracownik
53,0,,,4		# skladnik
52,0,,,5		# klucz zlozony lista z numerem
1,0,,,5			# pracownik

% HCHOR2.DIC # rejestr  wynagrodzen dla potrzeb zapamietania wyliczenia zasilkow chorobowych - struktura rekordu
%< PLCHOR1.DIC 
"listar",50,Estring,"Lista rozl." #symbol listy plac z rozliczona nieobecnoscia
"nrlistyr",51,Ekwota,"Nr listy rozl."       # numer listy rozliczajacej nieobecnosc
"listanr",52,Estring,"Lista rozl."       # lista rozliczajaca nieobecnosc z numerem
"skladnikr",53,Estring,"Sk|ladnik rozl."	   # skladnik rozliczajacy nieobecnosc		

//
% PLCHOR1.RXR,PLCHOR2.RXR    # rejestr sum skladnikow dla potrzeb wyliczenia zasilkow 
1 # symbol pola - klucza
1 # identyfikator klucza
PLCHOR1 # nazwa danych
# buttony - menu
#
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c ten rekord z rejestru ?" 
"Chcesz doda|c jeszcze jeden rekord ?" 
"%s - nie ma takiego rekordu w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych rekord|ow w rejestrze !"
"Rejestr rekord|ow pusty - wstawiasz pierwszy ?"
"Nie ma rekord|ow o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak rekord|ow o takim symbolu !"

% PLCHOR1.DBF # rejestr  wynagrodzen dla potrzeb wyliczenia zasilkow chorobowych - struktura rekordu
1,string,,144        # symbol pracownika
2,string,7,,2	# rok.miesiac uzyskania wynagrodzenia (RRRR.MM)
// skladniki<= miesiac zmniejszane proporcjonalnie
3,kwota                # suma skladnikow stalych - wartosci nominalne ( brutton)
4,kwota                # suma skladnikow stalych - wartosci wyplacone (brutto)
5,kwota                # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych 
6,kwota                # suma skl. zmiennych wyplaconych 
7,kwota                # skladki pracownicze ZUS od skladnikow zmiennych 
8,kwota                # suma skl.uzupelnianych wyplaconych ( pomniejszonych o skladki zus)
9,kwota                # liczba dni pracy nominalna - NN
10,kwota                # liczba dni pracy rzeczywista + urlopy
11,kwota                # suma skladnikow uzupelnianych - po uzupelnieniu
// skladniki<= miesiac nieuzupelniane
12,kwota                # suma skladnikow nieuzupelnianych
13,kwota                # skladki zus od skladnikow nieuzupelnianych
14,kwota                # suma skl. nieuzu-zus
15,kwota                # podstawa chorobowa
110,log                  # zaznaczanie
16,string,20	# imie
17,string,20	# nazwisko
18,kwota		# kwartalna (skladnik >mies - zus)   (kody 22,31,32)(po uzupelnieniu)
19,kwota                # liczba dni roboczych w miesiacu
20,ydate		# poczatek okresu za ktory skladnik
21,ydate                # koniec okresu za ktory skladnik
22,kwota		# polroczna (skladnik >mies - zus)   (kody 22,31,32)(po uzupelnieniu)
23,xkwota,0                #  mnoznik krotnosc brana do podstawy, gdy 0 pomijana, dla skladnikow>mies
24,kwota		# numer listy na ktorej wystapil skladnik >miesiac
25,kwota                # inna liczba pelnych miesiecy
26,string,20		# wymiar czasu pracy
27,log  		# czy wystapila zmiana wymiaru czasu pracy
//
28,kwota                # kwartalna liczba pelnych miesiecy
29,string,10		# symbol skladnika
30,string,10		# symbol listy (bez numeru)
1,0,,,1                 # klucz1 zlozony: symbol pracownika
2,0,,,1                 # rokmie
1,0,,,3                 # klucz1 zlozony: symbol pracownika
29,0,,,3		# skladnik
2,0,,,3                 # rokmie

% PLCHOR1.DIC # rejestr  wynagrodzen dla potrzeb wyliczenia zasilkow chorobowych - struktura rekordu
"sym",1,Estring        # symbol pracownika
"rokmie",2,Estring,"Okres"		# rok.miesiac uzyskania wynagrodzenia (RRRR.MM)
// skladniki zmniejszane proporcjonalnie
"ch_stalen",3,Ekwota,"Sk|l.sta|e"                # suma skladnikow stalych - wartosci nominalne ( brutton)
"ch_stale",4,Ekwota,"Sk|l.sta|le-wyp|l."                # suma skladnikow stalych - wartosci wyplacone (brutto)
"ch_stale_zus",5,Ekwota ,"ZUS sk|l.sta|le"               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych 
"ch_zm",6,Ekwota,"Sk|l.zmienne"                # suma skl. zmiennych wyplaconych 
"ch_zm_zus",7,Ekwota,"ZUS sk|l. zmienne"                # skladki pracownicze ZUS od skladnikow zmiennych 
"ch_uzu",8,Ekwota,"Sk|l.uzup.-ZUS"                # suma skl.uzupelnianych wyplaconych ( pomniejszonych o skladki zus)
"ch_ldnin",9,Ekwota,"d.rob"                # liczba dni pracy nominalna - NN
"ch_ldni",10,Ekwota ,"d.prze"               # liczba dni pracy rzeczywista + urlopy
"ch_skl_uzu",11,Ekwota ,"Sk|l.uzupe|lnione"               # suma skladnikow uzupelnianych - po uzupelnieniu
// skladniki nieuzupelniane
"ch_skl_nuzu",12,Ekwota,"Sk|l.nieuzup"               # suma skladnikow nieuzupelnianych
"ch_skl_nuzu_zus",13,Ekwota,"ZUS sk|l.nieuzu."                # skladki zus od skladnikow nieuzupelnianych
"ch_nuzu",14,Ekwota,"Sk|l.nieuzu.-ZUS"	# suma skl nieuzup - zus
"ch_podst",15,Ekwota                # podstawa chorobowa
"ptaszek",110,Elog,"Uwzg."		# zaznaczanie
"imie",16,Estring	# imie
"nazwisko",17,Estring	# nazwisko
"kwart",18,Ekwota	#(skladnik >mies - zus)   (kody 22,31,32)
"ch_ldnik",19,Ekwota     # liczba dni pracy kalendarzowo w mies
"dataod",20,Edata	# poczatek okresu za ktory skladnik
"datado",21,Edata    	# koniec okresu za ktory skladnik
"proczna",22,Ekwota     # polroczna
"proczna_m",23,Ekwota,"*"	# mnoznik krotnosc brana do podstawy, gdy 0 pomijana, dla skladnikow>mies
"inna",24,Ekwota	# numer listy na ktorej wystapil skladnik >miesiac
"inna_m",25,Ekwota	# inna - liczba pelnych miesiecy
"wymiar",26,Estring	# obowiazujacy wymiar czasu pracy
"zm_wym",27,Elog	# czy wystapila zmiana wymiaru czasu pracy
"kwart_m",28,Ekwota     # liczba pelnych miesiecy
"skladnik",29,Estring,"Sk|ladnik"	# sk�adnik
"lista",30,Estring	# rodzaj listy ktora wprowadzony skladnik
// -------------------------------------------------
//              REJESTR PARAMETROW DO PRZELEWOW
// -------------------------------------------------
% PARPRZEL.RXR # rejestr parametrow do przelewow
1 # symbol pola - klucza
1 # identyfikator klucza
PARPRZEL # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c te parametry rejestru ?" 
"Chcesz doda|c jeszcze jeden rekord ?" 
"%s - nie ma takich parametr|ow w rejestrze.$Czy chcesz doda|c nowe ?" 
"Nie ma |zadnych parametr|ow w rejestrze !"
"Rejestr parametr|ow pusty - wstawiasz pierwsze ?"
"Nie ma parametr|ow o takim symbolu.$Znale|x|c nast|epne ?"
"%s - brak parametr|ow o takim symbolu !"

% PARPRZEL.DBF # rejestr  - struktura rekordu
0,log,,,,,D           # usuwanie "w miejscu"
1,string,10,2,1,,N    # symbol parametrow
2,log                 # czy przelewac wynagrodzenia
3,log                 # czy przelewac podatki
4,log                 # czy przelewac skladki na ubezpieczenia
5,2000                # symbol konta bankowego
6,string,60           # nazwa 1
7,string,60           # nazwa 2
8,string,60           # kod,miasto
9,string,60           # adres
10,string,60          # nazwa banku
11,string,60          # konto bankowe
// export do PP
20,string,20          # Nip
21,string,20          # Regon
22,string,20          # Pasel
23,string,50,2        # Nazwa skrocona do P.P.
24,string,60,2        # Nazwisko
25,string,20,2        # Imie
26,ydate              # data urodzenia
27,string,20          # kod rodzaju dokumentu
28,string,20,2        # Seria i numer dokumentu
29,string,60          # Sciezka dostepu do danych w Programie Platnika
30,string,60          # Sciezka dostepu do katalogu F/K
31,log                # czy platnik jest uprawniony do wyplaty swiadczen z ZUS
32,log                # czy par."BANKI" w rej.pracownika uwzgl.tylko dla listy podstawowej
33,log                # czy eksportowac wynagrodz.zasadnicze
34,log                # czy eksportowac wynagrodz.z tyt.umow
35,log                # czy eksportowac wynagrodz.Rady Nadzorczej
36,log                # tylko dokumenty zgloszeniowe
// parametry globalne modulu
50,log                 # czy pobierac dane z kadr do listy podstawowej
51,log                 # czy liczyc place starym sposobem
52,string,1            # algorytm wyliczanie skl.na ubezp.i zal.podatku(113.DIC)
53,string,10           # wersja modulu - place
54,string,10           # wersja modulu - zleceniobiorcy
55,string,10           # wersja modulu - rada nadzorcza
56,string,10           # wersja modulu - kadry
57,log                 # czy do PIT-u dopisywac dane z umow 
58,log                 # czy do PIT-u dopisywac dane z rady nadzorczej
// parametry do budowy konta pracownika i symbolu kontrahenta
60,string,10           # prefix konta pracowika
61,string,10           # suffix konta pracownika
62,log                 # czy pomedzy prefix i suffix wstawiac symbol pracownika
63,ulong               # wycinac symbol pracownika od znaku
64,ulong               # wycinac symbol pracownika do znaku 
65,string,10           # prefix symbolu kontrahenta
66,string,10           # suffix symbolu kontrahenta
67,log                 # czy pomedzy prefix i suffix wstawiac symbol pracownika
68,ulong               # wycinac symbol pracownika od znaku
69,ulong               # wycinac symbol pracownika do znaku 
// parametry do budowy konta pracownika i symbolu kontrahenta
70,string,10           # prefix konta pracowika
71,string,10           # suffix konta pracownika
72,log                 # czy pomedzy prefix i suffix wstawiac symbol pracownika
73,ulong               # wycinac symbol pracownika od znaku
74,ulong               # wycinac symbol pracownika do znaku 
75,string,10           # prefix symbolu kontrahenta
76,string,10           # suffix symbolu kontrahenta
77,log                 # czy pomedzy prefix i suffix wstawiac symbol pracownika
78,ulong               # wycinac symbol pracownika od znaku
79,ulong               # wycinac symbol pracownika do znaku 
80,string,50,2         # Nazwa skrocona do P.P.-kadry
81,string,60           # Sciezka dostepu do danych w Programie Platnika-kadry
82,string,60           # Sciezka dostepu do katalogu F/K-kadry
// parametry do budowy konta pracownika i symbolu kontrahenta ZL
83,string,10           # prefix konta pracowika
84,string,10           # suffix konta pracownika
85,log                 # czy pomedzy prefix i suffix wstawiac symbol pracownika
86,ulong               # wycinac symbol pracownika od znaku
87,ulong               # wycinac symbol pracownika do znaku 
88,string,10           # prefix symbolu kontrahenta
89,string,10           # suffix symbolu kontrahenta
90,log                 # czy pomedzy prefix i suffix wstawiac symbol pracownika
91,ulong               # wycinac symbol pracownika od znaku
92,ulong               # wycinac symbol pracownika do znaku 
37,log                # tylko dokumenty zgloszeniowe-pracownicy

% PARPRZEL.DIC # slownik  rejestru
"dluzsym",1,Estring         # symbol parametrow
"przelplaca",2,Elog         # czy przelewac wynagrodzenia
"przelzus",3,Elog           # czy przelewac podatki
"przelurzad",4,Elog         # czy przelewac skladki na ubezpieczenia
"dluzkonto",5,Estring       # symbol konto bankowego
"dluznazwa1",6,Estring      # nazwa 1
"dluznazwa2",7,Estring      # nazwa 2
"dluzkodmiasto",8,Estring   # kod,miasto
"dluzadres",9,Estring       # adres
"dluznazwabanku",10,Estring # nazwa banku
"dluznumerbanku",11,Estring # konto bankowe
// export do PP
"nip",20,Estring            # Nip
"regon",21,Estring          # Regon
"pesel",22,Estring          # Pesel
"nazwaskr",23,Estring       # Nazwa skrocona do P.P.
"nazwisko",24,Estring       # Nazwisko
"imie1",25,Estring          # Imie 1
"dataur",26,Edata           # data urodzenia
"koddok",27,Estring         # kod rodzaju dokumentu
"serianum",28,Estring       # Seria i numer dokumentu
"sciezkapp",29,Estring      # Sciezka dostepu do danych w Programie Platnika
"sciezkapro",30,Estring     # Sciezka dostepu do katalogu F/K
"uprawniony",31,Elog        # Czy platnik jest uprawniony do wyplaty swiadczen z ZUS
"podstawowa",32,Elog        # czy par."BANKI" w rej.pracownika uwzgl.tylko dla listy podstawowej
"wyn_podstawowe",33,Elog    # czy eksportowac wynagrodz.zasadnicze
"wyn_zlecenia",34,Elog      # czy eksportowac wynagrodz.z tyt.umow
"wyn_rady",35,Elog          # czy eksportowac wynagrodz.Rady Nadzorczej
"wyn_tylko_dokumenty",36,Elog # czy tylko dokumenty zgloszeniowe
"wyn_tylko_dokumenty1",37,Elog # czy tylko dokumenty zgloszeniowe pracownicy
// parametry globalne modulu
"danezkadr",50,Elog         # czy pobierac dane z kadr
"liczpostaremu",51,Elog     # czy liczyc place starym sposobem
"algorytmwyl",52,Estring    # algorytm wylicz.skl.na ubezp.i zal.podatku(113.DIC)
"wersja",53,Estring         # wersja modulu - place
"wersja_zl",54,Estring      # wersja modulu - zleceniobiorcy
"wersja_rn",55,Estring      # wersja modulu - rada nadzorcza
"wersja_kd",56,Estring      # wersja modulu - kadry
"dopituumowy",57,Elog       # czy do PIT-u dopisywac dane z umow 
"dopiturada",58,Elog        # czy do PIT-u dopisywac dane z rady nadzorczej
// parametry do budowy konta pracownika i symbolu kontrahenta
"prefixkonta",60,Estring    # prefix konta pracowika
"sufixkonta",61,Estring     # sufix konta pracownika
"czysymprac1",62,Elog       # czy pomiedzy prefix i sufix wstawiac symbol pracownika
"wytnijod1",63,Ekwota       # wycinac symbol pracownika od znaku
"wytnijdo1",64,Ekwota       # wycinac symbol pracownika do znaku 
"prefixsym",65,Estring      # prefix symbolu kontrahenta
"sufixsym",66,Estring       # sufix symbolu kontrahenta
"czysymprac2",67,Elog       # czy pomiedzy prefix i sufix wstawiac symbol pracownika
"wytnijod2",68,Ekwota       # wycinac symbol pracownika od znaku
"wytnijdo2",69,Ekwota       # wycinac symbol pracownika do znaku 
// parametry do budowy konta pracownika i symbolu kontrahenta RN
"prefixkonta_rn",70,Estring    # prefix konta pracowika
"sufixkonta_rn",71,Estring     # sufix konta pracownika
"czysymprac1_rn",72,Elog       # czy pomiedzy prefix i sufix wstawiac symbol pracownika
"wytnijod1_rn",73,Ekwota       # wycinac symbol pracownika od znaku
"wytnijdo1_rn",74,Ekwota       # wycinac symbol pracownika do znaku 
"prefixsym_rn",75,Estring      # prefix symbolu kontrahenta
"sufixsym_rn",76,Estring       # sufix symbolu kontrahenta
"czysymprac2_rn",77,Elog       # czy pomiedzy prefix i sufix wstawiac symbol pracownika
"wytnijod2_rn",78,Ekwota       # wycinac symbol pracownika od znaku
"wytnijdo2_rn",79,Ekwota       # wycinac symbol pracownika do znaku 
"nazwaskr2",80,Estring         # Nazwa skrocona do P.P.-KADRY
"sciezkapp2",81,Estring        # Sciezka dostepu do danych w Programie Platnika - kadry
"sciezkapro2",82,Estring       # Sciezka dostepu do katalogu FK/kadry
// parametry do budowy konta pracownika i symbolu kontrahenta ZL
"prefixkonta_zl",83,Estring    # prefix konta pracowika
"sufixkonta_zl",84,Estring     # sufix konta pracownika
"czysymprac1_zl",85,Elog       # czy pomiedzy prefix i sufix wstawiac symbol pracownika
"wytnijod1_zl",86,Ekwota       # wycinac symbol pracownika od znaku
"wytnijdo1_zl",87,Ekwota       # wycinac symbol pracownika do znaku 
"prefixsym_zl",88,Estring      # prefix symbolu kontrahenta
"sufixsym_zl",89,Estring       # sufix symbolu kontrahenta
"czysymprac2_zl",90,Elog       # czy pomiedzy prefix i sufix wstawiac symbol pracownika
"wytnijod2_zl",91,Ekwota       # wycinac symbol pracownika od znaku
"wytnijdo2_zl",92,Ekwota       # wycinac symbol pracownika do znaku 

// ---------------------------------------------------------------==
//              REJESTR PLAC PROBNYCH
// ---------------------------------------------------------------==
% PLACE.RXR,XPLACE.RXR,PLARCH.RXR,XPLARCH.RXR,RNARCH.RXR,RNPLACE.RXR # rejestr plac
1 # symbol pola - klucza
1 # identyfikator klucza
PLACE # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c ten sk|ladnik z rejestru ?" 
"Chcesz doda|c jeszcze jeden sk|ladnik ?" 
"%s - nie ma takiego sk|ladnika w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych sk|ladnikow w rejestrze !"
"Rejestr sk|ladnikow pusty - wstawiasz pierwszy ?"
"Nie ma sk|ladnika o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak sk|ladnika o takim symbolu !"
% PLACE.DBF # rejestr plac - struktura rekordu
0,log,,,,,D          # usuwanie "w miejscu"
1,string,,30720,8    # symbol listy plac
2,ulong,,,6          # numer listy w ramach ksiegozbioru
3,string,10,,2       # symbol pracownika
4,string,,192,3      # symbol skladnika
5,string,10          # rodzaj p|lacy 
6,dic,,45            # miesiac, dzien czy godzina dla stawki zaszeregowania
7,string,5,,4        # rok i miesiac
8,log                # anulowanie placy
9,string,,464        # kod tytulu ubezpieczenie dla Programu Platnika
10,ydate,,,5         # data wyplaty
12,ydate             # data przelewu 1
13,string,5          # wyplata za miesiac, rok
14,ydate             # data przelewu 2
18,kwota             # kwota do przelewu 2
19,kwota             # kwota do przelewu 1
20,kwota             # liczba godzin/dni
21,kwota             # stawka /godzine,dzien
22,kwota             # kwota brutto
23,kwota             # koszt uzyskania przychodow
24,kwota             # podstawa opodatkowania
25,kwota             # stawka % podatku
26,kwota             # zaliczka podatku naliczona
27,kwota             # kwota zwolniona z podatku
28,kwota             # zaliczka podatku pobrana
29,kwota             # kwota netto
30,kwota             # gotowka
31,byte              # rodzaj wyplaty
40,ydate             # data ksiegowania
41,log               # czy lista byla ostatecznie wydrukowana
42,log               # czy lista byla ksiegowana
43,string,,496       # wydzial
44,string,,416       # symbol Urzedu Skarbowego
45,2000              # symbol konto WN
46,2000              # symbol konto MA
47,2002              # sym.konta klasyfikacji WN
48,2002              # sym.konta klasyfikacji MA
49,2000              # symbol konto Urzedu Skarbowego
50,string,6          # wymiar czasu pracy w postaci ulamka(np:1/2,4/12)
51,kwota             # podstawa wymiaru skladki-ub.emeryt.i rentowe
52,kwota             # podstawa wymiaru skladki-ub.chorobow.i wypadkowe
53,kwota             # podstawa wymiaru skladki-ub.zdrowotne
54,kwota             # skladka na ub.emeryt.-finansuje ubezpieczony
55,kwota             # skladka na ub.rentowe.-finansuje ubezpieczony
56,kwota             # skladka na ub.chorob
57,kwota             # skladka na ub.zdrowotne
58,kwota             # skladka na ub.emeryt.-finansuje platnik
59,kwota             # skladka na ub.rentowe.-finansuje platnik
60,kwota             # skladka na ub.wypadkowe
61,kwota             # kwota obnizenia podstawy wymiaru skladki(pracowniczy fundusz emerytalny)
62,ulong             # l.osob na ktore wyplacono zasilek rodzinny
63,kwota             # kwota wyplaconego zasilku rodzinnego
64,kwota             # kwota wyplaconego zasilku wychowawczego
65,ulong             # l.osob na ktore wyplacono zasilek pielegnacyjny  
66,kwota             # kwota wyplaconego zasilku pielegnacyjnego
// ZUS RNA
67,kwota             # liczba dni przepracowanych
68,kwota             # liczba dni wynikajacych z obowiazku
69,Ydate             # 1.data od 
70,Ydate             # 1.data do 
71,string,10         # 1 kod choroby
72,kwota             # suma wartosc brutto
73,kwota             # suma koszt uzyskania przychodu
74,kwota             # suma podstawa opodatkowania
75,kwota             # % podatku 
76,kwota             # suma wartosc naliczonego podatku dochodowego
77,kwota             # suma kwota zwolniona z podatku 
78,kwota             # suma wartosc zaliczki podatku dochodowego
79,kwota             # suma wartosc netto 
80,kwota             # suma potracen
81,kwota             # suma zasilkow
82,kwota             # kwota do wyplaty
83,kwota             # kwota ubezp.emer.placi ubez.
84,kwota             # kwota ubezp.rent.placi ubez. 
85,kwota             # kwota ubezp.chor.placi ubez.
86,kwota             # kwota ubezp.emer.placi platnik
87,kwota             # kwota ubezp.rent.placi platnik 
88,kwota             # kwota ubezp.wypad.placi platnik
89,kwota             # podstawa ubezp.zdrowotnego
101,string,1         # rodzaj przekroczenia podstawy na ub.spoleczne
102,Ydate            # 2.data od 
103,Ydate            # 2.data do 
104,string,10        # 2 kod choroby
105,Ydate            # 3.poczatek okresu liczonego do podstawy chorobowego
106,Ydate            # 3.koniec okresu liczonego do podstawy chorobowego 
107,string,54        # 3 miesiace uwzglednane w podstawie--podstawa
108,Ydate            # 4.data od
109,Ydate            # 4.pocz�tek nieobecno�ci rozliczanej na li�cie 
110,string,20        # 4.lista z numerem
111,Ydate            # 5.poczatek okresu z ktorego liczony skladnik dluzszy niz miesiac
112,Ydate            # 5.konice okresu z ktorego liczony skladnik dluzszy niz miesiac
113,string,10        # 5 korekty -> x w przypadku gdy linia nie ma byc drukowana na li�cie
114,kwota            # suma korekt podatku dochodowego
115,string,30,,13    # symbol listy korygujacej lub korygowanej
116,kwota            # numer listy korygujacej lub korygowanej
117,kwota            # kwota innych zasilkow
118,kwota            # suma podatku do rozliczenia z pit-40
119,kwota            # suma korekt ubezp.zdrowot.
120,kwota            # suma kosztu uzys.przych.nie ryczaltowego
121,kwota            # suma kosztu uzys.przych.ryczaltowego 
122,kwota            # suma skladek na ub.zdrowotne - cala kwota
123,kwota            # suma skladek na ub.zdrowotne - nie odlicz.od podatku
130,string,70        # tresc umowy
131,string,70        # tresc umowy
132,string,70        # tresc umowy
133,Ydate            # do dnia
134,Ydate            # data wyplaty
135,Ydate            # data ksiegowania
137,2000             # konto dluznika
138,string,60        # nazwa banku dluznika
139,string,60        # numer rachunku dluznika
//
90,ulong             # numer listy w ramach listy wzorcowej
91,ulong             # numer listy probnej
140,kwota            # podstawa podatku bez zmniejszen
141,kwota            # podstawa zdrowotnego bez zmniejszen
142,log              # zapis korygowany
143,kwota            # podstawa do odliczen kup
144,ydate            # data wyplaty listy korygowanej/listy
145,kwota            # godziny faktycznie przepracowane
146,ydate       # data przelewu pojawiaj�ca si� w dialogu
147,dic,,120    # typ skladnika
148,kwota       # kwota brutto przed zmniejszeniem proporcjonalnym
149,kwota		# dni przepracowane + urlopy
150,kwota       # godziny robocze w miesiacu - NN
151,kwota		# dni faktycznie przepracowane+dni urlopu 
152,kwota		# dni robocze normatywne - NN
153,kwota		# dni robocze normatywne - NN (kalendarz)
154,kwota            # podstawa do odliczen kup-rzeczywista
155,kwota	   # godziny urlopu szkoleniowego i okolicznosciowego
156,kwota	# podstawa ch-wyp nie wchodzaca do podstawy chorobowego
157,kwota	#podstawa ch-wyp nie wchodzaca do podstawy wypadkowego	
158,kwota       #podstawa wymiaru skladki-ub.emeryt.i rentowe opodatkowana
159,kwota       #podstawa wymiaru skladki chorobowej opodatkowana
// luka 160 - 170 wykorzystywana przez umowy zlecenia---------
171,kwota       #suma skladek emerytalnej,rentowej i chorobowej od przychodow opodatkowanych
172,kwota       # podstawa skladki zdrowotnej 9% nie obnizanej do wysokosci podatku( bez pomniejszania o zus)
173,kwota       # podstawa skladki zdrowotnej 7.75% ( bez pomniejszania o zus)
174,kwota       #podstawa wymiaru skladki-ub.emeryt.i rentowe zwiazana z przychodem 172
175,kwota       #podstawa wymiaru skladki chorobowej zwiazana z przychodem 172
176,kwota       #suma skladek emerytalnej,rentowej i chorobowej od przychodu 172 
177,kwota       # sk��dka zdrowotna nie pomniejszana do wysokosci podatku
178,kwota       # godziny nieusprawiedliwione
179,kwota	# dni nieusprawiedliwione
180,kwota 	# kwota wchodzaca do podstawy chorobowego dla skladnikow dluzszych niz miesiac
181,string,40          # okres z ktorego liczona podstawa chorobowego oraz wymiar czasu pracy  
182,xkwota,,5	# fundusz pracy
183,xkwota,,5	# fundusz gsp
184,kwota	# l.dni roboczych nieobecnosci usprawiedliwionej bez wplywu na wynagrodzenie
185,xkwota,,5   # fundusz ep
186,kwota	# wartosc skladnika miesiecznego przed zmniejszeniami(niepelny mies zatr., nieobecnosci)
187,kwota	# procent swiadczenia rehabilitacyjnego
188,string,8	# ksiega z lista korygowana	
1,0,,,1                 # klucz1 zlozony: symbol listy plac
2,0,,,1                 # i numer listy plac
1,0,,,7                 # klucz7 zlozony: symbol listy plac
2,0,,,7                 # i numer listy plac
3,0,,,7                 # i symbol pracownika
4,0,,,7                 # i symbol skladnika
1,0,,,11                # klucz1 zlozony: symbol listy plac
90,0,,,11               # i numer w ramach listy wzorcowej
3,0,,,12                # klucz1 zlozony: symbol pracownika
2,0,,,12                # i numer listy plac
// ---
1,0,,,15                # numer 15 do drukowania
2,0,,,15
1,0,,,10                 # klucz10 do naliczania PIT: symbol listy plac
2,0,,,10                 # i numer listy plac
3,0,,,10                 # i symbol pracownika
3,0,,,16                 # klucz zlozony pracownik* data wyplaty( zlecenia)
134,0,,,16
3,0,,,17                 # klucz zlozony pracownik i data wyplaty
10,0,,,17
3,0,,,18                 # klucz zlozony pracownik i data wyplaty
10,0,,,18
2,0,,,18                 # i numer listy plac
3,0,,,19		# klucz symbol pracownika * okres za ktory wyplata
13,0,,,19
//
3,0,,,20                 # klucz zlozony do wydruku kartotek :pracownik i data wyplaty
10,0,,,20
2,0,,,20                 # i numer listy plac
181,0,,,20               # i mies_uzu
//
110,0,,,21                 # klucz zlozony: symbol listy plac+numer
3,0,,,21                # i symbol pracownika
4,0,,,21                 # i symbol skladnika
//
% PLACE.DIC # slownik  rejestru plac
"lista",1,Estring       # symbol listy plac
"nrlisty",2,Ekwota      # numer kolejny dla powyzszej listy plac
"pracownik",3,Estring   # symbol pracownika
"skladnik",4,Estring    # symbol skladnika
"rodz",5,Estring        # rodzaj placy
"miegodz",6,Estring     # miesiac, dzien czy godzina dla stawki zaszeregowania
"rokmie",7,Estring      # ROK I MIESIAC
"anulowana",8,Elog      # anulowanie placy
"kodprac",9,Estring     # kod tytulu ubezpieczenia dla Programu Platnika
"datawypl",10,Edata     # data wyplaty
"dataprzel",12,Edata    # data przelewu
"mieswypl",13,Estring   # wyplata za rok,miesiac
"dataprzel2",14,Edata   # data przelewu 2
"kwotaprzel2",18,Ekwota # kwota do przelewu 2
"kwotaprzel",19,Ekwota  # kwota do przelewu
"lgodzin",20,Ekwota     # czas przepracowany, choroby, urlopu, itp
"stawka",21,Ekwota      # stawka /godzine,dzien
"placab",22,Ekwota      # kwota brutto
"k_uzys",23,Ekwota      # koszt uzyskania przychodu
"podstawa",24,Ekwota    # podstawa opodatkowania
"procent",25,Ekwota     # stawka procentowa
"podatekn",26,Ekwota    # zaliczka podatku naliczona
"k_zw",27,Ekwota        # kwota zwolniona z podatku
"podatekp",28,Ekwota    # zaliczka podatku pobrana
"placan",29,Ekwota      # kwota netto
"kwotagotowka",30,Ekwota # kwota wyplaty gotowka
"rodzaj_wyplaty",31,Ekwota # 0 - gotowka, 1 - bank1 2 - bank2
"datawypl1",40,Edata    # data wyplaty
"wydrukowana",41,Elog   # czy lista byla ostatecznie wydrukowana
"ksiegowana",42,Elog    # czy lista byla ksiegowana
"wydzial",43,Estring    # wydzial
"urzad",44,Estring      # symbol Urzedu Skarbowego
"kontown",45,Estring    # symbol konto WN
"kontoma",46,Estring    # symbol konto MA
"rozlwn",47,Estring     # sym.konta klasyfikacji WN
"rozlma",48,Estring     # sym.konta klasyfikacji MA
"kontopod",49,Estring   # sym.konta Urzedu Skarbowego
"wymiar",50,Estring     # wymiar czasu pracy w postaci ulamka(np:1/2,4/12)
"spodst_er",51,Ekwota   # podstawa wymiaru skladki-ub.emeryt.i rentowe
"spodst_cw",52,Ekwota   # podstawa wymiaru skladki-ub.chorobow.i wypadkowe
"spodst_z",53,Ekwota    # podstawa wymiaru skladki-ub.zdrowotne
"sueu",54,Ekwota        # skladka na ub.emeryt.-finansuje ubezpieczony
"suru",55,Ekwota        # skladka na ub.rentowe.-finansuje ubezpieczony
"sucu",56,Ekwota        # skladka na ub.chorob
"szalzdr",57,Ekwota     # skladka na ub.zdrowotne
"suep",58,Ekwota        # skladka na ub.emeryt.-finansuje platnik
"surp",59,Ekwota        # skladka na ub.rentowe.-finansuje platnik
"suwp",60,Ekwota        # skladka na ub.wypadkowe
"kw_obniz",61,Ekwota    # kwota obnizenia podstawy wymiaru skladki(pracowniczy fundusz emerytalny)
"os_rodz",62,Ekwota     # l.osob na ktore wyplacono zasilek rodzinny
"kw_rodz",63,Ekwota     # kwota wyplaconego zasilku rodzinnego
"kw_wych",64,Ekwota     # kwota wyplaconego zasilku wychowawczego
"os_piel",65,Ekwota     # l.osob na ktore wyplacono zasilek pielegnacyjny  
"kw_piel",66,Ekwota     # kwota wyplaconego zasilku pielegnacyjnego
"dnipracy",67,Ekwota    # liczba dni przepracowanych
"wynpodst",68,Ekwota    # liczba dni wynikajacych z obowiazku
"dataod1",69,Edata      # 1.data od 
"datado1",70,Edata      # 1.data do 
"kod_chor",71,Estring   # kod choroby
"sbrutto",72,Ekwota     # suma wartosc brutto 
"sk_uzys",73,Ekwota     # suma koszt uzyskania przychodu
"spodstopod",74,Ekwota  # suma podstawa opodatkowania
"sprocpod",75,Ekwota    # % podatku 
"snalpod",76,Ekwota     # suma wartosc naliczonego podatku dochodowego
"sk_zw",77,Ekwota       # suma kwota zwolniona z podatku 
"szalpod",78,Ekwota     # suma wartosc zaliczki podatku dochodowego
"snetto",79,Ekwota      # suma wartosc netto 
"spotrac",80,Ekwota     # suma potracen
"szasilek",81,Ekwota    # suma zasilkow
"dowypl",82,Ekwota      # kwota do wyplaty
"ueu",83,Ekwota         # kwota ubezp.emer.placi ubez.
"uru",84,Ekwota         # kwota ubezp.rent.placi ubez. 
"ucu",85,Ekwota         # kwota ubezp.chor.placi ubez.
"uep",86,Ekwota         # kwota ubezp.emer.placi platnik
"urp",87,Ekwota         # kwota ubezp.rent.placi platnik 
"uwp",88,Ekwota         # kwota ubezp.wypad.placi platnik
"podst_z",89,Ekwota     # podstawa ubezp.zdrowotnego
"przekrocz",101,Estring # rodzaj przekroczenia podstawy na ub.spoleczne
"dataod2",102,Edata     # 2.data od 
"datado2",103,Edata     # 2.data do 
"kod_chor2",104,Estring # 2 kod choroby
"dataod3",105,Edata     # 3.poczatek okresu naliczania podstawy chorobowego
"datado3",106,Edata     # 3.koniec okresu naliczania podstawy chorobowego
"kod_chor3",107,Estring # 3 miesiace uwzglednane w podstawie --podstawa
"dataod4",108,Edata     # 4.data od
"datado4",109,Edata     # 4.4.pocz�tek nieobecno�ci rozliczanej na li�cie 
"kod_chor4",110,Estring # 4 lista z numerem
"dataod5",111,Edata     # 5.poczatek okresu z ktorego liczony skladnik dluzszy niz miesiac
"datado5",112,Edata     # 5.koniec okresu z ktorego liczony skladnik dluzszy niz miesiac
"kod_chor5",113,Estring # 5 korekty -> x w przypadku gdy linia nie ma byc drukowana na li�cie
"skorpod",114,Ekwota    # suma korekt podatku dochodowego
"listakor",115,Estring  # symbol listy plac
"nrlistykor",116,Ekwota # numer listy w ramach ksiegozbioru
"kw_inne",117,Ekwota    # kwota innych zasilkow
"skorpit",118,Ekwota    # suma korekt podatku dochodowego z pit-40
"skorzdrow",119,Ekwota  # suma korekt ubezpiecz.zdrowotnego
"sk_uzys_m",120,Ekwota  # suma kosztu uzys.przych.nie ryczaltowego
"sk_uzys_r",121,Ekwota  # suma kosztu uzys.przych.ryczaltowego
"snalzdr",122,Ekwota    # suma skladek na ub.zdrowotne naliczona
"szalzdrn",123,Ekwota   # suma skladek na ub.zdrowotne - nie odlicz.od podatku
"tresc1",130,Estring    # tresc umowy
"tresc2",131,Estring    # tresc umowy
"tresc3",132,Estring    # tresc umowy
"dodnia",133,Edata      # do dnia
"datawyplaty",134,Edata # data wyplaty
"dataksieg",135,Edata   # data ksiegowania
"dluzkonto",137,EString # konto dluznika
"dluznazwabanku",138,Estring # nazwa banku dluznika
"dluznumerbanku",139,EString # numer banku dluiznika
"nrwzorca",90,Ekwota    # numer listy w ramach listy wzorcowej
"nrprobny",91,Ekwota    # numer listy probnej
"spodstopod1",140,Ekwota # podstawa podatku bez zmniejszen
"spodst_z1",141,Ekwota  # podstawa zdrowotnego bez zmniejszen
"korygowany",142,Elog   # zapis korygowany
"spodstkup",143,Ekwota # podstawa dla odliczen KUP
"kordwypl",144,Edata   # data wyplaty listy korygowanej
"gdzpracy",145,Ekwota  # godziny faktycznie przepracowane
"dataprzel0",146,Edata # data przelewu pojawiajaca sie w dialogu
"typsklad",147,Estring # typ skladnika ( zwolnienia)
"placabn",148,Ekwota      # kwota brutto przed zmniejszeniem proporcjonalnym
"gdzpracyu",149,Ekwota	# godziny przepracowane+urlop
"gdzpracyu_all",150,Ekwota	# godziny robocze normatywne
"dnipracyu",151,Ekwota  		# dni przepracowane + dni urlopu 
"dnipracyu_all",152,Ekwota	# dni pracy normatywne
"dnipracyu_kal",153,Ekwota     # dni pracy normatywne kalendarz
"spodstkup1",154,Ekwota # podstawa dla odliczen KUP- rzeczywista
"gdzuop_szk",155,Ekwota # godziny urlopu szkoleniowego i okolicznosciowego
"sbr_odj_chor",156,Ekwota	# podstawa ch-wyp nie wchodzaca do podstawy chorobowego
"sbr_odj_wyp",157,Ekwota	#podstawa ch-wyp nie wchodzaca do podstawy wypadkowego	
"spodst_er_opod",158,Ekwota       #podstawa wymiaru skladki-ub.emeryt.i rentowe opodatkowana
"spodst_cw_opod",159,Ekwota       #podstawa wymiaru skladki chorobowej opodatkowana
"szus_opod",171,Ekwota       #suma skladek emerytalnej,rentowej i chorobowej od przychodow opodatkowanych
"szdrownobn",172,Ekwota       # podstawa skladki zdrowotnej 9% nie obnizanej do wysokosci podatku( bez pomniejszania o zus)
"spodst_z1_opod",173,Ekwota       # podstawa skladki zdrowotnej 7.75% ( bez pomniejszania o zus)
"spodst_er_nobn",174,Ekwota       #podstawa wymiaru skladki-ub.emeryt.i rentowe zwiazana z przychodem 172
"spodst_cw_nobn",175,Ekwota       #podstawa wymiaru skladki chorobowej zwiazana z przychodem 172
"szus_nobn",176,Ekwota       #suma skladek emerytalnej,rentowej i chorobowej od przychodu 172 
"szalzdr_nobn",177,Ekwota       # sk�adka zdrowotna nie pomniejszana do wysokosci podatku
"gdzpracyu_nn",178,Ekwota       # godziny nieusprawiedliwione
"dnipracyu_nn",179,Ekwota	# dni nieusprawiedliwione
"placab_uzu",180,Ekwota 	# kwota dla skladnikow dluzszych niz miesiac, wchodzaca do podstawy chorobowego
"mies_uzu",181,Estring          # okres z ktorego liczona i wymiar czasu pracy  
"sfpp",182,Ekwota	# fundusz pracy
"sfgp",183,Ekwota	# fundusz gsp
"dnipracyu_bww",184,Ekwota	# l.dni roboczych nieobecnosci usprawiedliwionej bez wplywu na wynagrodzenie
"sfep",185,Ekwota       # fundusz fep
"placabp",186,Ekwota	# wartosc skladnika miesiecznego przed zmniejszeniami(niepelny mies zatr., nieobecnosci)
"reh_procent",187,Ekwota	# procent wskaznika rehabilitacyjnego
"ksiega_kor",188,Estring	# ksiega w ktorej lista korygowana
//
% ARCHDRK.RXR
0
0
ARCHDRK

% ARCHDRK.DBF
%< PLACE.DBF
120,string,70,,15       # nazwisko + imie + symbol pracownika

% ARCHDRK.DIC
%< PLACE.DIC
"nazwisko",120,Estring   # nazwisko + imie + symbol pracownika

// -----------------------------------------------------------------
//               Rejestr do prezentacji plac 
// -----------------------------------------------------------------
% PL_PAR.RXR,XPL_PAR.RXR # rejestr prezentacji plac
1 # symbol pola - klucza
1 # identyfikator klucza
PL_PAR # nazwa danych
PL_PARM # 
#
PL_PAR-WAR
% PL_PAR-WAR.DIC
"Nazwisko pracownika/nazwa sk|ladnika:",5
"Symbol pracownika/sk|ladnika:",3
"Stanowisko pracownika/rodzaj sk|ladnika:",7

% PL_PAR.DBF         # rejestr prezentacji - struktura rekordu
0,log,,,,,D          # usuwanie "w miejscu"
1,string,,30720,8    # symbol listy plac
2,ulong,,,10         # numer listy plac
3,string,20,,2       # symbol pracownika
4,string,,32770,3    # skladnik
5,string,30,,9       # nazwisko i imie
6,string,10          # rodzaj p|lacy 
7,string,20          # stanowisko lub rodzaj skladnika
8,string,,496,5      # jednostka organizacyjna
10,string,5,,4       # rok i miesiac
11,log               # anulowanie placy
12,ydate             # data wyplaty
13,string,,464       # kod tytulu ubezpieczenia dla Programu Platnika
14,byte               # rodzaj wyplaty
15,ydate             # data przelewu 1
16,string,5          # wyplata za rok,miesiac
17,ydate             # data przelewu 2
25,kwota             # norma czasu pracy w miesi|acu
26,kwota             # czas faktycznie przepracowany
27,kwota             # roznica norma - czas pracy w miesi|acu
30,string,6          # wymiar czasu pracy w postaci ulamka(np:1/2,4/12)
31,kwota             # suma skladnikow bez zasilkow pomniejsz.o potracenia
32,kwota             # podstawa wymiaru skladek na ub.emeryt.rentowe,chorob i wypadk.
33,kwota             # skladka na ub.emeryt.-finansuje ubezpieczony
34,kwota             # skladka na ub.rentowe.-finansuje ubezpieczony
35,kwota             # skladka na ub.chorob
36,kwota             # skladka na ub.emeryt.-finansuje platnik
37,kwota             # skladka na ub.rentowe.-finansuje platnik
38,kwota             # skladka na ub.wypadkowe
39,kwota             # podstawa wymiaru skladki-ub.zdrowotne
40,kwota             # skladka na ub.zdrowotne - odliczona od podatku
41,kwota             # podstawa opodatkowania
42,kwota             # procent podatku dochodowego
43,kwota             # podatek naliczony
44,kwota             # suma kwot zwolnionych
45,kwota             # zaliczka na podatek dochodowy
46,kwota             # kwota obnizenia podstawy wymiaru skladki(pracowniczy fundusz emerytalny)
47,kwota             # suma kosztow uzyskania przych.
48,kwota             # place netto
49,kwota             # potracenia
50,kwota             # zasilki do netto
51,kwota             # do wyplaty 
52,string,5          # wyplata za rok,miesiac
53,kwota             # kwota do przelewu 1
54,kwota             # kwota do przelewu 2
55,kwota             # suma korekt podatku dochodowego
56,log               # czy zaksiegowana
57,kwota             # suma podatku do rozliczenia z pit-40
58,string,70,,11     # Klucz zlozony kom.org*symbol pracown
59,kwota             # suma skladek na ub.zdrowotne - cala kwota
60,kwota             # suma skladek na ub.zdrowotne - nie odlicz.od podatku
61,kwota             # kwota wyplaty gotowkowej
130,string,70          # tresc umowy
131,string,70          # tresc umowy
132,string,70          # tresc umowy
133,Ydate              # do dnia
134,log                # umowa modyfikowany
135,Ydate              # data wyplaty
136,Ydate              # data ksiegowania
137,string,20        # konto dluznika (nie 2000)
138,string,60        # nazwa banku dluznika
139,string,60        # numer rachunku dluznika
//
98,ulong               # numer listy plac
99,ulong,,,6,,NM       # numer rekordu
140,string,70,,12     # Klucz zlozony komorka org * nazwisko prac
1,0,,,1                 # klucz1 zlozony: symbol listy plac
2,0,,,1                 # i numer listy plac
1,0,,,7                 # klucz7 zlozony: symbol listy plac
2,0,,,7                 # i numer listy plac
3,0,,,7                 # i symbol pracownika
4,0,,,7                 # i symbol skladnika
1,0,,,15                # symbol i numer umowy
98,0,,,15

% PL_PAR2S.DIC
"pracownik",3,Estring,"Sk|ladnik"   # symbol placy
"nazw",5,Estring,"Nazwa"        # imie i nazwisko
"stanow",7,Estring,"Rodzaj"      # stanowisko pracownika
%< PL_PAR2.DIC
% PL_PAR2.DIC
"lista",1,Estring,"Symbol"       # symbol listy plac
"pracownik",3,Estring,"Symbol"   # symbol placy
"nazw",5,Estring,"Nazwisko"        # imie i nazwisko
"rodz",6,Estring,"Rodzaj"        # rodzaj placy
"stanow",7,Estring,"Stanowisko"      # stanowisko pracownika
"wydzial",8,Estring,"Wydzia|l"     # jednostka organizacyjna
"rokmie",10,Estring,"Data"     # ROK I MIESIAC
"datawypl",12,Edata,"Data wyp."     # data wyplaty
"kodprac",13,Estring,"Kod ubezpieczenia"    # kod tytulu ubezpieczenia
"rodzaj_wyplaty",14,Ekwota,"Rodzaj"  # czy przelewac
"dataprzel",15,Edata,"Data przel1"    # data przelewu 1
"mieswypl",16,Estring   # wyplata za rok,miesiac
"dataprzel2",17,Edata   # data przelewu 2
"dowypl",51,Ekwota,"Do wyp|laty"      # do wyplaty 
"kwotaprzel",53,Ekwota,"kwota przel1"  # kwota do przelewu 1
"kwotaprzel2",54,Ekwota,"kwota przel2" # kwota do przelewu 2
"kwotagotowka",61,Ekwota,"got|owka"
"klucz_zloz",58,Estring,"stanow*symb.prac" # klucz zlozony do przegladania 
"klucz_zloz2",140,Estring,"stanow*nazwisko" # klucz zlozony do przegladania 
% PL_PAR.DIC # slownik rejestru prezentacji plac
%< PL_PAR2.DIC
"nrlisty",2,Ekwota,"Numer"       # numer kolejny dla powyzszej listy plac
"skladnik",4,Estring    # symbol placy
"anulowana",11,Elog     # anulowanie placy
"gnorma",25,Ekwota      # norma czasu pracy w miesi|acu
"gprzepr",26,Ekwota     # czas faktycznie przepracowany
"groznica",27,Ekwota    # roznica norma - czas pracy w miesi|acu
"wymiar",30,Estring     # wymiar czasu pracy w postaci ulamka(np:1/2,4/12)
"sbrutto",31,Ekwota     # suma skladnikow bez zasilkow pomniejsz.o potracenia
"spodst_er",32,Ekwota   # podstawa wymiaru skladek na ub.emeryt.rentowe,chorob i wypadk.
"sueu",33,Ekwota        # skladka na ub.emeryt.-finansuje ubezpieczony
"suru",34,Ekwota        # skladka na ub.rentowe.-finansuje ubezpieczony
"sucu",35,Ekwota        # skladka na ub.chorob
"suep",36,Ekwota        # skladka na ub.emeryt.-finansuje platnik
"surp",37,Ekwota        # skladka na ub.rentowe.-finansuje platnik
"suwp",38,Ekwota        # skladka na ub.wypadkowe
"spodst_z",39,Ekwota    # podstawa wymiaru skladki-ub.zdrowotne
"szalzdr",40,Ekwota     # skladka na ub.zdrowotne - odliczona od podatku
"sk_uzys",41,Ekwota     # suma kosztow uzyskania przych.
"spodstopod",42,Ekwota  # podstawa opodatkowania
"sprocpod",43,Ekwota    # procent podatek dochodowy
"snalpod",44,Ekwota     # podatek naliczony
"sk_zw",45,Ekwota       # suma kwot zwolnionych
"szalpod",46,Ekwota     # zaliczka na podatek dochodowy
"kw_obniz",47,Ekwota    # kwota obnizenia podstawy wymiaru skladki(pracowniczy fundusz emerytalny)
"snetto",48,Ekwota      # place netto
"spotrac",49,Ekwota     # potracenia
"szasilek",50,Ekwota    # zasilki do netto
"mieswypl",52,Estring   # wyplata za rok,miesiac
"skorpod",55,Ekwota     # suma korekt podatku dochodowego
"ksiegowana",56,Elog    # czy zaksiegowana
"skorpit",57,Ekwota     # suma podatku do rozliczenia z pit-40
"snalzdr",59,Ekwota     # suma skladek na ub.zdrowotne - cala kwota
"szalzdrn",60,Ekwota    # suma skladek na ub.zdrowotne - nie odlicz.od podatku
"tresc1",130,Estring    # tresc umowy
"tresc2",131,Estring    # tresc umowy
"tresc3",132,Estring    # tresc umowy
"dodnia",133,Edata      # do dnia
"modyfikowana",134,Elog # umowa modyfikowana
"datawyplaty",135,Edata,"D wyp|l."  # data wyplaty
"dataksieg",136,Edata,"D ksi|eg."   # data ksiegowania
"dluzkonto",137,EString # konto dluznika
"dluznazwabanku",138,Estring # nazwa banku dluznika
"dluznumerbanku",139,EString # numer banku dluiznika
//
"nrwzorca",98,Ekwota    # numer wzorcowy
"dokid",99,Ekwota       # numer rekordu

// ------------------------------------------
// do prezentacji 
// ------------------------------------------
% PLDRK.RXR
0
0
PLDRK

% PLDRK.DBF
0,log,,,,,D
%< PLTMP.DBF
87,string,70,,12       # nazwisko + imie + symbol pracownika + wydzial

% PLDRK.DIC
%< PLTMP.DIC
"nazwisko",87,Estring   # nazwisko + imie + symbol pracownika + wydzial

% PLTMP.RXR
0
0
PLTMP
% PLZAP.RXR,xPLZAP.RXR
0
0
PLZAP
% PLZAP.DBF
0,log,,,,,D
%< PLTMP.DBF

% PLTMP.DBF
1,string,30,2,4       # symbol skladnika, symbol pracownika(zalezy od zmiennej"dla_skladnika")
2,string,30,2,3       # symbol pracownika, symbol skladnika(zalezy od zmiennej"dla_skladnika")
3,dic,,45             # miesiac, dzien czy godzina dla stawki zaszeregowania
4,xkwota,,x           # liczba godzin
5,xkwota,,x           # stawka godzinna
6,xkwota,,x           # wartosc brutto
7,xkwota,,x           # wartosc kosztu uzyskania przychodu
8,xkwota,,x           # podstawa opodatkowania
9,xkwota,,x           # % podatku
10,xkwota,,x          # wartosc naliczonego podatku dochodowego
11,xkwota,,x          # kwota zwolniona z podatku
12,xkwota,,x          # wartosc zaliczki podatku dochodowego
13,xkwota,,x          # wartosc netto (do wyplaty)
14,string,30          # nazwa skladnik,(nazwisko i imie)
15,string,,30720,8    # symbol listy plac
16,kwota              # numer listy plac
17,ydate              # data wyplaty
18,ydate              # data wystawienia listy
19,string,,464        # kod tytulu ubezpieczenia dla Programu Platnika
// dane do Programu Platnika
20,string,6           # wymiar czasu pracy w postaci ulamka(np:1/2,4/12)
21,kwota              # suma podstawa wymiaru skladki-ub.emeryt.i rentowe
22,kwota              # suma podstawa wymiaru skladki-ub.chorobow.i wypadkowe
23,kwota              # suma podstawa wymiaru skladki-ub.zdrowotne
24,kwota              # suma skladka na ub.emeryt.-finansuje ubezpieczony
25,kwota              # suma skladka na ub.rentowe.-finansuje ubezpieczony
26,kwota              # suma skladka na ub.chorob
27,kwota              # suma skladka na ub.zdrowotne - odliczona od podatku
28,kwota              # suma skladka na ub.emeryt.-finansuje platnik
29,kwota              # suma skladka na ub.rentowe.-finansuje platnik
30,kwota              # suma skladka na ub.wypadkowe
31,kwota              # suma wartosc brutto
32,kwota              # suma wartosc kosztu uzyskania przychodu
33,kwota              # suma podstawa opodatkowania
34,kwota              # % podatku
35,kwota              # suma wartosc naliczonego podatku dochodowego
36,kwota              # suma kwota zwolniona z podatku
37,kwota              # suma wartosc zaliczki podatku dochodowego
38,kwota              # suma wartosc netto
39,kwota              # suma potacen
40,kwota              # suma zasilkow
41,kwota              # do wyplaty
42,kwota              # obnizenia podstawy wymiaru skladki(pracowniczy fundusz emerytalny)
43,ulong              # l.osob na ktore wyplacono zasilek rodzinny
44,kwota              # kwota wyplaconego zasilku rodzinnego
45,kwota              # kwota wyplaconego zasilku wychowawczego
46,ulong              # l.osob na ktore wyplacono zasilek pielegnacyjny  
47,kwota              # kwota wyplaconego zasilku pielegnacyjnego
// ZUS RNA
48,kwota              # liczba dni przepracowanych
49,kwota              # liczba dni wynikajacych z obowiazku
50,Ydate              # 1.data od 
51,Ydate              # 1.data do 
52,dic,,110           # kod choroby
53,string,10          # rodzaj skladnika
56,kwota              # kwota ubezp.emer.placi ubez.
57,kwota              # kwota ubezp.rent.placi ubez. 
58,kwota              # kwota ubezp.chor.placi ubez.
59,kwota              # kwota ubezp.emer.placi platnik
60,kwota              # kwota ubezp.rent.placi platnik 
61,kwota              # kwota ubezp.wypad.placi platnik
62,kwota              # podstawa ubezp.zdrowotnego
63,string,5           # wyplata za rok,miesiac
64,kwota              # kwota do przelewu 1
65,kwota              # kwota do przelewu 2
66,string,1           # rodzaj przekroczenia podstawy na ub.spoleczne
67,Ydate              # 2.data od 
68,Ydate              # 2.data do 
69,dic,,110           # 2 kod choroby
70,Ydate              # 3.pocz. okresu do liczenia podstawy chorobowego
71,Ydate              # 3.kon.okresu liczenia podstawy chorobowego 
72,string,54           # 3 miesiace uwzgledniane w podstawie--podstawa
73,Ydate              # 4.data od 
74,Ydate              # 4.pocz�tek nieobecno�ci rozliczanej na li�cie 
75,string,20           # 4 lista z numerem
76,Ydate              # 5.poczatek okresu z ktorego liczony skladnik dluzszy niz miesiac
77,Ydate              # 5.koniec okresu z ktorego liczony skladnik dluzszy niz miesiac
78,dic,,110           # 5 kod choroby
79,kwota              # suma korekt podatku dochodowego
80,kwota              # kwota innych zasilkow
81,kwota              # suma podatku do rozliczenia z pit-40
82,kwota              # suma korekt ubezp.zdrow.
83,kwota              # suma kosztu uzys.przych.nie ryczaltowego
84,kwota              # suma kosztu uzys.przych.ryczaltowego
85,kwota              # suma skladek na ub.zdrowotne - cala kwota
86,kwota              # suma skladek na ub.zdrowotne - nie odlicz.od podatku
//
98,ulong,,,2,,M       # naglowek dla konta klasyfikacji
99,ulong,,,1          # dowiazanie do naglowka (pole 99)
100,kwota             # gotowka
101,kwota             # podstawa podatku bez zmniejszen
102,kwota             # podstawa zdrowotnego bez zmniejszen
103,log               # zapis korygowany
104,kwota             # podstawa do odliczen KUP
105,ydate             # data wyplaty listy korygowanej
106,kwota             # liczba godzin faktycznie przepracowanych
107,ydate             # data przelewu pojawiajaca sie w dialogu
108,dic,,120          # typ skladnika
109,kwota             # kwota brutto przed % zmniejszeniem
110,string,10,,6         # poziom skladnika
111,kwota             # liczba godzin przepracowanych + urlop
112,kwota             # liczba godzin normatywnych - NN
113,kwota             # liczba dni faktycznie przepracowanych+ urlop wypoczynkowy
114,kwota             # liczba dni normatywnych - NN
115,kwota             # liczba dni normatywnych - NN(kalendarz)
116,kwota             # podstawa do odliczen KUP- rzecywista
117,kwota	# godziny urlopu szkoleniowego i okolicznosciowego
118,kwota	# podstawa ch-wyp nie wchodzaca do podstawy chorobowego
119,kwota	#podstawa ch-wyp nie wchodzaca do podstawy wypadkowego	
120,kwota       #podstawa wymiaru skladki-ub.emeryt.i rentowe opodatkowana
121,kwota       #podstawa wymiaru skladki chorobowej opodatkowana
122,kwota       #suma skladek emerytalnej,rentowej i chorobowej od przychodow opodatkowanych
123,kwota       # podstawa skladki zdrowotnej 9% nie obnizanej do wysokosci podatku( bez pomniejszania o zus)
124,kwota       # podstawa skladki zdrowotnej 7.75% ( bez pomniejszania o zus)
125,kwota       #podstawa wymiaru skladki-ub.emeryt.i rentowe zwiazana z przychodem 172
126,kwota       #podstawa wymiaru skladki chorobowej zwiazana z przychodem 172
127,kwota       #suma skladek emerytalnej,rentowej i chorobowej od przychodu 172 
128,kwota       # sk�adka zdrowotna nie pomniejszana do wysokosci podatku
129,kwota       # godziny nieusprawiedliwione
130,kwota	# dni nieusprawiedliwione
131,kwota 	# kwota dla skladnikow dluzszych niz miesiac - brana do podstawy chorobowego
132,string,40          # okres z ktorego brany do wyliczen chorobowego+wymiar
133,kwota	# l.dni roboczych nieobecnosci usprawiedliwionej bez wplywu na wynagrodzenie
134,xkwota,,4	# sfpp
135,xkwota,,4	# sfgp
136,xkwota,,4	# sfep
137,kwota	#wartosc skladnika miesiecznego przed zmniejszeniami(niepelny mies zatr., nieobecnosci)
138,kwota	# procent wskaznika rehabilitacyjnego
2,0,,,5               # klucz1 zlozony: pracownik
15,0,,,5              # i symbol listy plac
16,0,,,5              # i numer listy plac
99,0,,,7              # klucz zlozony: dowiazanie do naglowka
1,0,,,7               # i numer symbol skladnika (pracownika)

% PLZAP_S.DIC
"zskladnik",1,Estring,"Symbol" # skladnika, symbol pracownika
"znazw",14,Estring,"Nazwisko"         # nazwa skladnik,(nazwisko i imie)
"zmiegodz",3,Estring,"Jedn."  # miesiac,dzien czy godzina dla stawki godzinnej
"zlgodzin",4,Ekwota,"Ilo|s|c"    # liczba godzin
"zstawka",5,Ekwota,"Stawka skorygowana"       #stawka godzinna
"zbrutto",6,Ekwota,"Brutto"       # wartosc brutto 
"zbrutton",109,Ekwota,"Stawka"       # wartosc stawki przed % zmniejszeniem
"zdatawypl",17,Edata,"Data wypl."    # data wyplaty
"zlista",15,Estring,"Lista"    # symbol listy plac
"znrlisty",16,Ekwota,"Numer listy"    # numer kolejny dla powyzszej listy plac
"kodprac",19,Estring,"Kod ubezp."    # kod tytulu ubezpieczenia
% PLZAP_P.DIC
"zskladnik",1,Estring,"Sk|ladnik" # skladnika, symbol pracownika
"znazw",14,Estring,"Nazwa"         # nazwa skladnik,(nazwisko i imie)
"zmiegodz",3,Estring,"Jedn."  # miesiac,dzien czy godzina dla stawki godzinnej
"zlgodzin",4,Ekwota,"Ilo|s|c"    # liczba godzin
"zstawka",5,Ekwota,"Stawka skorygowana"       #stawka godzinna
"zbrutto",6,Ekwota,"Brutto"       # wartosc brutto 
"zbrutton",109,Ekwota,"Stawka"       # wartosc stawki przed % zmniejszeniem
"zdatawypl",17,Edata,"Data wypl."    # data wyplaty
"zlista",15,Estring,"Lista"    # symbol listy plac
"znrlisty",16,Ekwota,"Numer listy"    # numer kolejny dla powyzszej listy plac
"kodprac",19,Estring,"Kod ubezp."    # kod tytulu ubezpieczenia
% PLZAP.DIC,PLTMP.DIC
"zskladnik",1,Estring,"Sk|ladnik" # skladnika, symbol pracownika
"znazw",14,Estring,"Nazwa"         # nazwa skladnik,(nazwisko i imie)
"zpracownik",2,Estring            # symbol pracownika,symbol skladnika
"zmiegodz",3,Estring,"Jedn."  # miesiac,dzien czy godzina dla stawki godzinnej
"zlgodzin",4,Ekwota,"Ilo|s|c"    # liczba godzin
"zstawka",5,Ekwota,"Stawka"       #stawka godzinna
"zbrutto",6,Ekwota,"Brutto"       # wartosc brutto 
"zk_uzys",7,Ekwota                 # koszt uzyskania przychodu
"zpodstopod",8,Ekwota              # podstawa opodatkowania
"zprocpod",9,Ekwota                # % podatku 
"znalpod",10,Ekwota                # wartosc naliczonego podatku dochodowego
"zk_zw",11,Ekwota                  # kwota zwolniona z podatku 
"zzalpod",12,Ekwota                # wartosc zaliczki podatku dochodowego
"znetto",13,Ekwota                 # wartosc netto (do wyplaty) 
"zlista",15,Estring     # symbol listy plac
"znrlisty",16,Ekwota    # numer kolejny dla powyzszej listy plac
"zdatawypl",17,Edata    # data wyplaty
"zdatawyst",18,Edata    # data wystawienia listy
"kodprac",19,Estring    # kod tytulu ubezpieczenia
// dane do Programu Platnika
"wymiar",20,Estring     # wymiar czasu pracy w postaci ulamka(np:1/2,4/12)
"spodst_er",21,Ekwota   # podstawa wymiaru skladki-ub.emeryt.i rentowe
"spodst_cw",22,Ekwota   # podstawa wymiaru skladki-ub.chorobow.i wypadkowe
"spodst_z",23,Ekwota    # podstawa wymiaru skladki-ub.zdrowotne
"sueu",24,Ekwota        # skladka na ub.emeryt.-finansuje ubezpieczony
"suru",25,Ekwota        # skladka na ub.rentowe.-finansuje ubezpieczony
"sucu",26,Ekwota        # skladka na ub.chorob
"szalzdr",27,Ekwota     # skladka na ub.zdrowotne - odliczona od podatku
"suep",28,Ekwota        # skladka na ub.emeryt.-finansuje platnik
"surp",29,Ekwota        # skladka na ub.rentowe.-finansuje platnik
"suwp",30,Ekwota        # skladka na ub.wypadkowe
"sbrutto",31,Ekwota     # suma wartosc brutto 
"sk_uzys",32,Ekwota     # suma koszt uzyskania przychodu
"spodstopod",33,Ekwota  # suma podstawa opodatkowania
"sprocpod",34,Ekwota    # % podatku 
"snalpod",35,Ekwota     # suma wartosc naliczonego podatku dochodowego
"sk_zw",36,Ekwota       # suma kwota zwolniona z podatku 
"szalpod",37,Ekwota     # suma wartosc zaliczki podatku dochodowego
"snetto",38,Ekwota      # suma wartosc netto 
"spotrac",39,Ekwota     # suma potracen
"szasilek",40,Ekwota    # suma zasilkow
"dowypl",41,Ekwota      # do wyplaty 
"kw_obniz",42,Ekwota    # kwota obnizenia podstawy wymiaru skladki(pracowniczy fundusz emerytalny)
"os_rodz",43,Ekwota     # l.osob na ktore wyplacono zasilek rodzinny
"kw_rodz",44,Ekwota     # kwota wyplaconego zasilku rodzinnego
"kw_wych",45,Ekwota     # kwota wyplaconego zasilku wychowawczego
"os_piel",46,Ekwota     # l.osob na ktore wyplacono zasilek pielegnacyjny  
"kw_piel",47,Ekwota     # kwota wyplaconego zasilku pielegnacyjnego
"dnipracy",48,Ekwota    # liczba dni przepracowanych
"wynpodst",49,Ekwota    # liczba dni wynikajacych z obowiazku
"dataod1",50,Edata      # 1.data od 
"datado1",51,Edata      # 1.data do 
"kod_chor",52,Estring   # 1 kod choroby
"rodz",53,Estring       # rodzaj skladnika
"ueu",56,Ekwota         # kwota ubezp.emer.placi ubez.
"uru",57,Ekwota         # kwota ubezp.rent.placi ubez. 
"ucu",58,Ekwota         # kwota ubezp.chor.placi ubez.
"uep",59,Ekwota         # kwota ubezp.emer.placi platnik
"urp",60,Ekwota         # kwota ubezp.rent.placi platnik 
"uwp",61,Ekwota         # kwota ubezp.wypad.placi platnik
"podst_z",62,Ekwota     # podstawa ubezp.zdrowotnego
"mieswypl",63,Estring   # wyplata za rok,miesiac
"kwotaprzel",64,Ekwota  # kwota do przelewu 1
"kwotaprzel2",65,Ekwota # kwota do przelewu 2
"przekrocz",66,Estring  # rodzaj przekroczenia podstawy na ub.spoleczne
"dataod2",67,Edata      # 2.data od 
"datado2",68,Edata      # 2.data do 
"kod_chor2",69,Estring  # 2 kod choroby
"dataod3",70,Edata      # 3.poczatek okresu naliczania podstawy chorobowego
"datado3",71,Edata      # 3.koniec okresu nalicania podstawy chorobowego 
"kod_chor3",72,Estring  # 3 miesiace wchodzace do podstawy chorobowego--podstawa
"dataod4",73,Edata      # 4.data od 
"datado4",74,Edata      # 4.4.pocz�tek nieobecno�ci rozliczanej na li�cie 
"kod_chor4",75,Estring  # 4 kod choroby
"dataod5",76,Edata      # 5.poczatek okresu z ktorego liczony skladnik dluzszy niz miesiac
"datado5",77,Edata      # 5.koniec okresu z  ktorego liczony skladnik dluzszy niz miesiac
"kod_chor5",78,Estring  # 5 kod choroby
"skorpod",79,Ekwota     # suma korekt podatku dochodowego
"kw_inne",80,Ekwota     # kwota innych zasilkow
"skorpit",81,Ekwota     # suma podatku do rozliczenia z pit-40
"skorzdrow",82,Ekwota   # suma korekt ubezp.zdrow.
"sk_uzys_m",83,Ekwota   # suma kosztu uzys.przych.nie ryczaltowego
"sk_uzys_r",84,Ekwota   # suma kosztu uzys.przych.ryczaltowego
"snalzdr",85,Ekwota     # suma skladek na ub.zdrowotne - cala kwota
"szalzdrn",86,Ekwota    # suma skladek na ub.zdrowotne - nie odlicz.od podatku
"dokidzap1",98,Ekwota   # naglowek dla konta klasyfikacji
"dokidzap",99,Ekwota    # dowiazanie do naglowka (pole 99)
"kwotagotowka",100,Ekwota # gotowka
"spodstopod1",101,Ekwota  # suma podstawa opodatkowania-bez zmniejszen
"spodst_z1",102,Ekwota    # podstawa wymiaru skladki-ub.zdrowotne - bez zmniejszen
"korygowany",103,Elog     # zapis korygowany
"spodstkup",104,Ekwota   # podstawa do odliczen KUP
"kordwypl",105,Edata     # data wyplaty listy korygowanej
"gdzpracy",106,Ekwota    # godziny faktycznie przepracowane
"dataprzel0",107,Edata   # data przelewu pojawiajaca sie w dialogu
"typsklad",108,Estring   # typ skladnika
"zbrutton",109,Ekwota,"Brutto"       # wartosc stawki przed % zmniejszeniem
"poziom",110,Estring,"Poziom"   # poziom skladnika 
"gdzpracyu",111,Ekwota	# godziny przepracowane + urlop
"gdzpracyu_all",112,Ekwota	# godziny robocze normatywne
"dnipracyu",113,Ekwota  		# dni przepracowane + dni urlopu wypoczynkowego
"dnipracyu_all",114,Ekwota	# dni pracy normatywne
"dnipracyu_kal",115,Ekwota	# dni pracy normatywne ( kalendarz)
"spodstkup1",116,Ekwota   # podstawa do odliczen KUP-rzeczywista
"gdzuop_szk",117,Ekwota# godziny urlopu szkoleniowego i okolicznosciowego
"sbr_odj_chor",118,Ekwota	# podstawa ch-wyp nie wchodzaca do podstawy chorobowego
"sbr_odj_wyp",119,Ekwota	#podstawa ch-wyp nie wchodzaca do podstawy wypadkowego	
"spodst_er_opod",120,Ekwota       #podstawa wymiaru skladki-ub.emeryt.i rentowe opodatkowana
"spodst_cw_opod",121,Ekwota       #podstawa wymiaru skladki chorobowej opodatkowana
"szus_opod",122,Ekwota       #suma skladek emerytalnej,rentowej i chorobowej od przychodow opodatkowanych
"szdrownobn",123,Ekwota       # podstawa skladki zdrowotnej 9% nie obnizanej do wysokosci podatku( bez pomniejszania o zus)
"spodst_z1_opod",124,Ekwota       # podstawa skladki zdrowotnej 7.75% ( bez pomniejszania o zus)
"spodst_er_nobn",125,Ekwota       #podstawa wymiaru skladki-ub.emeryt.i rentowe zwiazana z przychodem 172
"spodst_cw_nobn",126,Ekwota       #podstawa wymiaru skladki chorobowej zwiazana z przychodem 172
"szus_nobn",127,Ekwota       #suma skladek emerytalnej,rentowej i chorobowej od przychodu 172 
"szalzdr_nobn",128,Ekwota       # sk�adka zdrowotna nie pomniejszana do wysokosci podatku
"gdzpracyu_nn",129,Ekwota       # godziny nieusprawiedliwione
"dnipracyu_nn",130,Ekwota	# dni nieusprawiedliwione
"placab_uzu",131,Ekwota 	# kwota dla skladnikow dluzszych niz miesiac wchodzaca do podstawy chorobowego
"mies_uzu",132,Estring          # okres z ktorego wchodzi do podstawy + wymiar
"dnipracyu_bww",133,Ekwota	# l.dni roboczych nieobecnosci usprawiedliwionej bez wplywu na wynagrodzenie
"sfpp",134,Ekwota
"sfgp",135,Ekwota
"sfep",136,Ekwota
"placabp",137,Ekwota	#wartosc skladnika miesiecznego przed zmniejszeniami(niepelny mies zatr., nieobecnosci)
"reh_procent",138,Ekwota		# procent wskaznika rehabilitacyjnego
// =================================================================
//              REJESTR PARAMETROW DO WYLICZANIA ZASILKOW
// =================================================================
% H_CHOR.RXR,H_CHORARCH.RXR,PREZCHOR.RXR # rejestry do historii naliczania chorobowego
1 # symbol pola - klucza
1 # identyfikator klucza
HCHOR # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c ten sk|ladnik z rejestru ?" 
"Chcesz doda|c jeszcze jeden sk|ladnik ?" 
"%s - nie ma takiego sk|ladnika w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych sk|ladnikow w rejestrze !"
"Rejestr sk|ladnikow pusty - wstawiasz pierwszy ?"
"Nie ma sk|ladnika o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak sk|ladnika o takim symbolu !"
% HCHOR.DBF # rejestr plac - struktura rekordu
0,log,,,,,D          # usuwanie "w miejscu"
1,string,,30720,8    # symbol listy plac
2,ulong,,,6          # numer listy w ramach ksiegozbioru
3,string,10,,2       # symbol pracownika

// miesiac 1
4,string,5	     # rok.miesiac 01
5,ulong			# liczba dni przepracownych
6,ulong			# liczba dni do przepracowania
7,kwota			# wynagrodzenie uzupelniane - zus
8,kwota			# wynagrodzenie po uzupelnieniu - zus
9,kwota                 # wynagrodzenie nie uzupelniane - zus
10,log			# czy uwzgledniony w obliczeniach
// miesiac 2
11,string,5	     # rok.miesiac 02
12,ulong			# liczba dni przepracownych
13,ulong			# liczba dni do przepracowania
14,kwota			# wynagrodzenie uzupelniane - zus
15,kwota			# wynagrodzenie po uzupelnieniu - zus
16,kwota                 # wynagrodzenie nie uzupelniane - zus
17,log			# czy uwzgledniony w obliczeniach
// miesiac 3
18,string,5	     # rok.miesiac 03
19,ulong			# liczba dni przepracownych
20,ulong			# liczba dni do przepracowania
21,kwota			# wynagrodzenie uzupelniane - zus
22,kwota			# wynagrodzenie po uzupelnieniu - zus
23,kwota                 # wynagrodzenie nie uzupelniane - zus
24,log			# czy uwzgledniony w obliczeniach
// miesiac 4
25,string,5	     # rok.miesiac 04
26,ulong			# liczba dni przepracownych
27,ulong			# liczba dni do przepracowania
28,kwota			# wynagrodzenie uzupelniane - zus
29,kwota			# wynagrodzenie po uzupelnieniu - zus
30,kwota                 # wynagrodzenie nie uzupelniane - zus
31,log			# czy uwzgledniony w obliczeniach
// miesiac 5
32,string,5	     # rok.miesiac 05
33,ulong			# liczba dni przepracownych
34,ulong			# liczba dni do przepracowania
35,kwota			# wynagrodzenie uzupelniane - zus
36,kwota			# wynagrodzenie po uzupelnieniu - zus
37,kwota                 # wynagrodzenie nie uzupelniane - zus
38,log			# czy uwzgledniony w obliczeniach
// miesiac 6
39,string,5	     # rok.miesiac 06
40,ulong			# liczba dni przepracownych
41,ulong			# liczba dni do przepracowania
42,kwota			# wynagrodzenie uzupelniane - zus
43,kwota			# wynagrodzenie po uzupelnieniu - zus
44,kwota                 # wynagrodzenie nie uzupelniane - zus
45,log			# czy uwzgledniony w obliczeniach
// miesiac 7
46,string,5	     # rok.miesiac 07
47,ulong			# liczba dni przepracownych
48,ulong			# liczba dni do przepracowania
49,kwota			# wynagrodzenie uzupelniane - zus
50,kwota			# wynagrodzenie po uzupelnieniu - zus
51,kwota                 # wynagrodzenie nie uzupelniane - zus
52,log			# czy uwzgledniony w obliczeniach
// miesiac 8
53,string,5	     # rok.miesiac 08
54,ulong			# liczba dni przepracownych
55,ulong			# liczba dni do przepracowania
56,kwota			# wynagrodzenie uzupelniane - zus
57,kwota			# wynagrodzenie po uzupelnieniu - zus
58,kwota                 # wynagrodzenie nie uzupelniane - zus
59,log			# czy uwzgledniony w obliczeniach
// miesiac 9
60,string,5	     # rok.miesiac 09
61,ulong			# liczba dni przepracownych
62,ulong			# liczba dni do przepracowania
63,kwota			# wynagrodzenie uzupelniane - zus
64,kwota			# wynagrodzenie po uzupelnieniu - zus
65,kwota                 # wynagrodzenie nie uzupelniane - zus
66,log			# czy uwzgledniony w obliczeniach
// miesiac 10
67,string,5	     # rok.miesiac 10
68,ulong			# liczba dni przepracownych
69,ulong			# liczba dni do przepracowania
70,kwota			# wynagrodzenie uzupelniane - zus
71,kwota			# wynagrodzenie po uzupelnieniu - zus
72,kwota                 # wynagrodzenie nie uzupelniane - zus
73,log			# czy uwzgledniony w obliczeniach
// miesiac 11
74,string,5	     # rok.miesiac 11
75,ulong			# liczba dni przepracownych
76,ulong			# liczba dni do przepracowania
77,kwota			# wynagrodzenie uzupelniane - zus
78,kwota			# wynagrodzenie po uzupelnieniu - zus
79,kwota                 # wynagrodzenie nie uzupelniane - zus
80,log			# czy uwzgledniony w obliczeniach
// miesiac 12
81,string,5	     # rok.miesiac 12
82,ulong			# liczba dni przepracownych
83,ulong			# liczba dni do przepracowania
84,kwota			# wynagrodzenie uzupelniane - zus
85,kwota			# wynagrodzenie po uzupelnieniu - zus
86,kwota                 # wynagrodzenie nie uzupelniane - zus
87,log			# czy uwzgledniony w obliczeniach
//
88,kwota		#podstawa ze skladnikow wynagrodzenia miesiecznych
89,kwota		#podstawa z umow zlecen
90,kwota		# podstawa ze skladnikow dluzszych niz miesiac
91,kwota		# podstawa wynagrodzenia/zasilku		
92,ulong		# liczba miesiecy zliczanych
93,kwota		# suma wynagrodzen ze skladnikow miesiecznych
94,string,10		# skladnik dla ktorego wyliczana stawka
95,string,20,,10		# lista z numerem
//
96,kwota		# 1 wynagrodzenie z umow-zlecen nie uzupelniane - zus
97,kwota		# 2 wynagrodzenie z umow-zlecen nie uzupelniane - zus
98,kwota		# 3 wynagrodzenie z umow-zlecen nie uzupelniane - zus
99,kwota		# 4 wynagrodzenie z umow-zlecen nie uzupelniane - zus
100,kwota		# 5 wynagrodzenie z umow-zlecen nie uzupelniane - zus
101,kwota		# 6 wynagrodzenie z umow-zlecen nie uzupelniane - zus
102,kwota		# 7 wynagrodzenie z umow-zlecen nie uzupelniane - zus
103,kwota		# 8 wynagrodzenie z umow-zlecen nie uzupelniane - zus
104,kwota		# 9 wynagrodzenie z umow-zlecen nie uzupelniane - zus
105,kwota		# 10 wynagrodzenie z umow-zlecen nie uzupelniane - zus
106,kwota		# 11 wynagrodzenie z umow-zlecen nie uzupelniane - zus
107,kwota		# 12 wynagrodzenie z umow-zlecen nie uzupelniane - zus
108,kwota		# procent chorobowego
109,kwota		# procent rehabilitacyjnego
110,kwota		# stawka
// dodatkowe informacje do poszczegolnych miesiecy
// miesiac 1.
111,kwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
112,kwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
113,kwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
114,kwota                # suma skl. zmiennych wyplaconych ,uzupelniane
115,kwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
116,kwota               # suma skladnikow nieuzupelnianych
117,kwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 2.
118,kwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
119,kwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
120,kwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
121,kwota                # suma skl. zmiennych wyplaconych ,uzupelniane
122,kwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
123,kwota               # suma skladnikow nieuzupelnianych
124,kwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 3.
125,kwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
126,kwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
127,kwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
128,kwota                # suma skl. zmiennych wyplaconych ,uzupelniane
129,kwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
130,kwota               # suma skladnikow nieuzupelnianych
131,kwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 4.
132,kwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
133,kwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
134,kwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
135,kwota                # suma skl. zmiennych wyplaconych ,uzupelniane
136,kwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
137,kwota               # suma skladnikow nieuzupelnianych
138,kwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 5.
139,kwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
140,kwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
141,kwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
142,kwota                # suma skl. zmiennych wyplaconych ,uzupelniane
143,kwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
144,kwota               # suma skladnikow nieuzupelnianych
145,kwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 6.
146,kwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
147,kwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
148,kwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
149,kwota                # suma skl. zmiennych wyplaconych ,uzupelniane
150,kwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
151,kwota               # suma skladnikow nieuzupelnianych
152,kwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 7.
153,kwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
154,kwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
155,kwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
156,kwota                # suma skl. zmiennych wyplaconych ,uzupelniane
157,kwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
158,kwota               # suma skladnikow nieuzupelnianych
159,kwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 8.
160,kwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
161,kwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
162,kwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
163,kwota                # suma skl. zmiennych wyplaconych ,uzupelniane
164,kwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
165,kwota               # suma skladnikow nieuzupelnianych
166,kwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 9.
167,kwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
168,kwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
169,kwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
170,kwota                # suma skl. zmiennych wyplaconych ,uzupelniane
171,kwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
172,kwota               # suma skladnikow nieuzupelnianych
173,kwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 10.
174,kwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
175,kwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
176,kwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
177,kwota                # suma skl. zmiennych wyplaconych ,uzupelniane
178,kwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
179,kwota               # suma skladnikow nieuzupelnianych
180,kwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 11.
181,kwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
182,kwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
183,kwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
184,kwota                # suma skl. zmiennych wyplaconych ,uzupelniane
185,kwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
186,kwota               # suma skladnikow nieuzupelnianych
187,kwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 12.
188,kwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
189,kwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
190,kwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
191,kwota                # suma skl. zmiennych wyplaconych ,uzupelniane
192,kwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
193,kwota               # suma skladnikow nieuzupelnianych
194,kwota                # skladki zus od skladnikow nieuzupelnianych
195,string,10			# kod skladnika dla ktorego szczegoly wyliczenia
//
1,0,,,1			# klucz zlozony - lista*numer*pracownik
2,0,,,1
3,0,,,1
95,0,,,3		# lista z numerem
3,0,,,3			# pracownik
94,0,,,3		# skladnik
95,0,,,5		# lista z numerem
3,0,,,5			# pracownik
//
% HCHOR.DIC
"lista",1,Estring       # symbol listy plac
"nrlisty",2,Ekwota      # numer kolejny dla powyzszej listy plac
"sym",3,Estring   # symbol pracownika
// mies01
"mies1",4,Estring	# rok.miesiac 01
"dnip1",5,Ekwota		# dni przepracowane
"dnih1",6,Ekwota		# dni do przepracowania
"wyn1",7,Ekwota		# wynagrodzenie uzupelniane
"wynu1",8,Ekwota		# wynagrodzenie po uzupelnieniu
"wynn1",9,Ekwota		# wynagrodzenie nie uzupelniane
"licz1",10,Elog		# czy uwzgledniac w obliczeniach
// mies02
"mies2",11,Estring	# rok.miesiac 02
"dnip2",12,Ekwota		# dni przepracowane
"dnih2",13,Ekwota		# dni do przepracowania
"wyn2",14,Ekwota		# wynagrodzenie uzupelniane
"wynu2",15,Ekwota		# wynagrodzenie po uzupelnieniu
"wynn2",16,Ekwota		# wynagrodzenie nie uzupelniane
"licz2",17,Elog		# czy uwzgledniac w obliczeniach
// mies03
"mies3",18,Estring	# rok.miesiac 03
"dnip3",19,Ekwota		# dni przepracowane
"dnih3",20,Ekwota		# dni do przepracowania
"wyn3",21,Ekwota		# wynagrodzenie uzupelniane
"wynu3",22,Ekwota		# wynagrodzenie po uzupelnieniu
"wynn3",23,Ekwota		# wynagrodzenie nie uzupelniane
"licz3",24,Elog		# czy uwzgledniac w obliczeniach
// mies04
"mies4",25,Estring	# rok.miesiac 04
"dnip4",26,Ekwota		# dni przepracowane
"dnih4",27,Ekwota		# dni do przepracowania
"wyn4",28,Ekwota		# wynagrodzenie uzupelniane
"wynu4",29,Ekwota		# wynagrodzenie po uzupelnieniu
"wynn4",30,Ekwota		# wynagrodzenie nie uzupelniane
"licz4",31,Elog		# czy uwzgledniac w obliczeniach
// mies05
"mies5",32,Estring	# rok.miesiac 05
"dnip5",33,Ekwota		# dni przepracowane
"dnih5",34,Ekwota		# dni do przepracowania
"wyn5",35,Ekwota		# wynagrodzenie uzupelniane
"wynu5",36,Ekwota		# wynagrodzenie po uzupelnieniu
"wynn5",37,Ekwota		# wynagrodzenie nie uzupelniane
"licz5",38,Elog		# czy uwzgledniac w obliczeniach
// mies06
"mies6",39,Estring	# rok.miesiac 06
"dnip6",40,Ekwota		# dni przepracowane
"dnih6",41,Ekwota		# dni do przepracowania
"wyn6",42,Ekwota		# wynagrodzenie uzupelniane
"wynu6",43,Ekwota		# wynagrodzenie po uzupelnieniu
"wynn6",44,Ekwota		# wynagrodzenie nie uzupelniane
"licz6",45,Elog		# czy uwzgledniac w obliczeniach
// mies07
"mies7",46,Estring	# rok.miesiac 07
"dnip7",47,Ekwota		# dni przepracowane
"dnih7",48,Ekwota		# dni do przepracowania
"wyn7",49,Ekwota		# wynagrodzenie uzupelniane
"wynu7",50,Ekwota		# wynagrodzenie po uzupelnieniu
"wynn7",51,Ekwota		# wynagrodzenie nie uzupelniane
"licz7",52,Elog		# czy uwzgledniac w obliczeniach
// mies08
"mies8",53,Estring	# rok.miesiac 08
"dnip8",54,Ekwota		# dni przepracowane
"dnih8",55,Ekwota		# dni do przepracowania
"wyn8",56,Ekwota		# wynagrodzenie uzupelniane
"wynu8",57,Ekwota		# wynagrodzenie po uzupelnieniu
"wynn8",58,Ekwota		# wynagrodzenie nie uzupelniane
"licz8",59,Elog		# czy uwzgledniac w obliczeniach
// mies09
"mies9",60,Estring	# rok.miesiac 09
"dnip9",61,Ekwota		# dni przepracowane
"dnih9",62,Ekwota		# dni do przepracowania
"wyn9",63,Ekwota		# wynagrodzenie uzupelniane
"wynu9",64,Ekwota		# wynagrodzenie po uzupelnieniu
"wynn9",65,Ekwota		# wynagrodzenie nie uzupelniane
"licz9",66,Elog		# czy uwzgledniac w obliczeniach
// mies10
"mies10",67,Estring	# rok.miesiac 10
"dnip10",68,Ekwota		# dni przepracowane
"dnih10",69,Ekwota		# dni do przepracowania
"wyn10",70,Ekwota		# wynagrodzenie uzupelniane
"wynu10",71,Ekwota		# wynagrodzenie po uzupelnieniu
"wynn10",72,Ekwota		# wynagrodzenie nie uzupelniane
"licz10",73,Elog		# czy uwzgledniac w obliczeniach
// mies11
"mies11",74,Estring	# rok.miesiac 11
"dnip11",75,Ekwota		# dni przepracowane
"dnih11",76,Ekwota		# dni do przepracowania
"wyn11",77,Ekwota		# wynagrodzenie uzupelniane
"wynu11",78,Ekwota		# wynagrodzenie po uzupelnieniu
"wynn11",79,Ekwota		# wynagrodzenie nie uzupelniane
"licz11",80,Elog		# czy uwzgledniac w obliczeniach
// mies12
"mies12",81,Estring	# rok.miesiac 12
"dnip12",82,Ekwota		# dni przepracowane
"dnih12",83,Ekwota		# dni do przepracowania
"wyn12",84,Ekwota		# wynagrodzenie uzupelniane
"wynu12",85,Ekwota		# wynagrodzenie po uzupelnieniu
"wynn12",86,Ekwota		# wynagrodzenie nie uzupelniane
"licz12",87,Elog		# czy uwzgledniac w obliczeniach
//
"sumam",88,Ekwota		# suma ze skladnikow miesieczncy
"sumaz",89,Ekwota		# suma ze zlecen
"podstw",90,Ekwota		# podstawa ze skladnikow dluzszych
"podstawa",91,Ekwota		# podstawa
"ilmies",92,Ekwota		# ilosc miesiecy uwzglednianych
"podstm",93,Ekwota		# podstawa wynagrodzen miesiecznych i zlecen
"skladnik",94,Estring		# skladnik
"listanr",95,Estring		# lista z numerem
"umowy1",96,Ekwota		# 1 wynagrodzenie z umow-zlecen nie uzupelniane - zus
"umowy2",97,Ekwota		# 2 wynagrodzenie z umow-zlecen nie uzupelniane - zus
"umowy3",98,Ekwota		# 3 wynagrodzenie z umow-zlecen nie uzupelniane - zus
"umowy4",99,Ekwota		# 4 wynagrodzenie z umow-zlecen nie uzupelniane - zus
"umowy5",100,Ekwota		# 5 wynagrodzenie z umow-zlecen nie uzupelniane - zus
"umowy6",101,Ekwota		# 6 wynagrodzenie z umow-zlecen nie uzupelniane - zus
"umowy7",102,Ekwota		# 7 wynagrodzenie z umow-zlecen nie uzupelniane - zus
"umowy8",103,Ekwota		# 8 wynagrodzenie z umow-zlecen nie uzupelniane - zus
"umowy9",104,Ekwota		# 9 wynagrodzenie z umow-zlecen nie uzupelniane - zus
"umowy10",105,Ekwota		# 10 wynagrodzenie z umow-zlecen nie uzupelniane - zus
"umowy11",106,Ekwota		# 11 wynagrodzenie z umow-zlecen nie uzupelniane - zus
"umowy12",107,Ekwota		# 12 wynagrodzenie z umow-zlecen nie uzupelniane - zus
"proc_chor",108,Ekwota		# procent chorobowego
"proc_reh",109,Ekwota		# procent rehabilitacyjnego
"stawka",110,Ekwota		# stawka
// dodatkowe informacje do poszczegolnych miesiecy
// miesiac 1.
"wynsn1",111,Ekwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
"wyns1",112,Ekwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
"zuss1",113,Ekwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
"wynz1",114,Ekwota                # suma skl. zmiennych wyplaconych ,uzupelniane
"zusz1",115,Ekwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
"wyni1",116,Ekwota               # suma skladnikow nieuzupelnianych
"zusi1",117,Ekwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 2.
"wynsn2",118,Ekwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
"wyns2",119,Ekwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
"zuss2",120,Ekwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
"wynz2",121,Ekwota                # suma skl. zmiennych wyplaconych ,uzupelniane
"zusz2",122,Ekwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
"wyni2",123,Ekwota               # suma skladnikow nieuzupelnianych
"zusi2",124,Ekwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 3.
"wynsn3",125,Ekwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
"wyns3",126,Ekwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
"zuss3",127,Ekwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
"wynz3",128,Ekwota                # suma skl. zmiennych wyplaconych ,uzupelniane
"zusz3",129,Ekwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
"wyni3",130,Ekwota               # suma skladnikow nieuzupelnianych
"zusi3",131,Ekwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 4.
"wynsn4",132,Ekwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
"wyns4",133,Ekwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
"zuss4",134,Ekwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
"wynz4",135,Ekwota                # suma skl. zmiennych wyplaconych ,uzupelniane
"zusz4",136,Ekwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
"wyni4",137,Ekwota               # suma skladnikow nieuzupelnianych
"zusi4",138,Ekwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 5.
"wynsn5",139,Ekwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
"wyns5",140,Ekwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
"zuss5",141,Ekwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
"wynz5",142,Ekwota                # suma skl. zmiennych wyplaconych ,uzupelniane
"zusz5",143,Ekwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
"wyni5",144,Ekwota               # suma skladnikow nieuzupelnianych
"zusi5",145,Ekwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 6.
"wynsn6",146,Ekwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
"wyns6",147,Ekwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
"zuss6",148,Ekwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
"wynz6",149,Ekwota                # suma skl. zmiennych wyplaconych ,uzupelniane
"zusz6",150,Ekwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
"wyni6",151,Ekwota               # suma skladnikow nieuzupelnianych
"zusi6",152,Ekwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 7.
"wynsn7",153,Ekwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
"wyns7",154,Ekwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
"zuss7",155,Ekwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
"wynz7",156,Ekwota                # suma skl. zmiennych wyplaconych ,uzupelniane
"zusz7",157,Ekwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
"wyni7",158,Ekwota               # suma skladnikow nieuzupelnianych
"zusi7",159,Ekwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 8.
"wynsn8",160,Ekwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
"wyns8",161,Ekwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
"zuss8",162,Ekwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
"wynz8",163,Ekwota                # suma skl. zmiennych wyplaconych ,uzupelniane
"zusz8",164,Ekwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
"wyni8",165,Ekwota               # suma skladnikow nieuzupelnianych
"zusi8",166,Ekwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 9.
"wynsn9",167,Ekwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
"wyns9",168,Ekwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
"zuss9",169,Ekwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
"wynz9",170,Ekwota                # suma skl. zmiennych wyplaconych ,uzupelniane
"zusz9",171,Ekwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
"wyni9",172,Ekwota               # suma skladnikow nieuzupelnianych
"zusi9",173,Ekwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 10.
"wynsn10",174,Ekwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
"wyns10",175,Ekwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
"zuss10",176,Ekwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
"wynz10",177,Ekwota                # suma skl. zmiennych wyplaconych ,uzupelniane
"zusz10",178,Ekwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
"wyni10",179,Ekwota               # suma skladnikow nieuzupelnianych
"zusi10",180,Ekwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 11.
"wynsn11",181,Ekwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
"wyns11",182,Ekwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
"zuss11",183,Ekwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
"wynz11",184,Ekwota                # suma skl. zmiennych wyplaconych ,uzupelniane
"zusz11",185,Ekwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
"wyni11",186,Ekwota               # suma skladnikow nieuzupelnianych
"zusi11",187,Ekwota                # skladki zus od skladnikow nieuzupelnianych
//
// miesiac 12.
"wynsn12",188,Ekwota                # suma skladnikow stalych - wartosci nominalne ( brutton), uzupelniane
"wyns12",189,Ekwota                # suma skladnikow stalych - wartosci wyplacone (brutto),uzupelniane
"zuss12",190,Ekwota               # skladki pracownicze ZUS - od skladnikow stalych rzeczywistych,uzupelniane 
"wynz12",191,Ekwota                # suma skl. zmiennych wyplaconych ,uzupelniane
"zusz12",192,Ekwota                # skladki pracownicze ZUS od skladnikow zmiennych,uzupelniane 
"wyni12",193,Ekwota               # suma skladnikow nieuzupelnianych
"zusi12",194,Ekwota                # skladki zus od skladnikow nieuzupelnianych
"kodsklad",195,Estring				# kod skladnika dla ktorego szczegoly wyliczenia
//
// =================================================================
//              REJESTR PARAMETROW DO WYLICZANIA ZASILKOW
// =================================================================
% PARCHOR.RXR,XPARCHOR.RXR # rejestr parametrow do chorobowego
1 # symbol pola - klucza
1 # identyfikator klucza
PARCHOR # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c te parametry rejestru ?" 
"Chcesz doda|c jeszcze jeden rekord ?" 
"%s - nie ma takich parametr|ow w rejestrze.$Czy chcesz doda|c nowe ?" 
"Nie ma |zadnych parametr|ow w rejestrze !"
"Rejestr parametr|ow pusty - wstawiasz pierwsze parametry ?"
"Nie ma parametr|ow o takim symbolu.$Znale|x|c nast|epne ?"
"%s - brak parametr|ow o takim symbolu !"

% PARCHOR.DBF # rejestr  - parametry do chorobowego
0,log,,,,,D           # usuwanie "w miejscu"
1,string,30,2,1,,N    # symbol parametrow
2,log                 # czy liczyc zasilki automat.
3,kwota               # przecietne wynagrodzenie podane przez ZUS
4,kwota               # najnizsze wynagrodzenie 
5,kwota               # l.dni chorobowych pokrywanych przez zaklad pracy
6,kwota               # od dnia 1
7,kwota               # do dnia 1
8,kwota               # % wynagrodzenia 1
9,kwota               # od dnia 2
10,kwota              # do dnia 2
11,kwota              # % wynagrodzenia 2
12,kwota              # liczba ostatnich miesiecy branych do wyliczenia podstawy
13,string,20          # symbol ksiegi poprzedniego roku
14,kwota              # % przec.wynagrodzenia-zas.porodowy
15,kwota              # % podst.wymiaru-zas.macierzynski
16,kwota              # % podst.wymiaru-zas.opiekunczy
17,kwota              # % podst.wymiaru-zas.wyrownawczy
18,kwota              # % podst.wymiaru-zas.wychowawczy
19,kwota              # % przec.wynagrodzenia-zas.pogrzebowy
20,kwota              # zasilek rodzinny - malzonek
21,kwota              # zasilek rodzinny - 1,2 dziecko
22,kwota              # zasilek rodzinny - 3 dziecko
23,kwota              # zasilek rodzinny - kazde kolejne dziecko
24,kwota              # zasilek pielegnacyjny
25,kwota              # przecietne wynagrodzenie w 4 kwart.roku poprzedniego
26,kwota              # zasilek wychowawczy w rodzinie pelnej
27,kwota              # zasilek wychowawczy dla samotnie wychowujacych
28,kwota              # pierwsze dni nieplatne
29,kwota              # maksym.l dni dla ktorej stosuje sie dni nieplatne
30,xkwota,0           # liczba miesiecy do wyliczenia stawki urlopowej
31,log                # czy liczyc urlopy automatycznie
32,xkwota,0      # stawka zaszeregowania 1- tylko zasadnicze, 2 zasadnicze+funkcyjne
33,kwota	# l.dni placona przez pracodawcedla pracownika 50+
34,kwota	# ilosc dni wyplacania zasilku opiekunczego
35,kwota	# wspolczynnik do wyliczenia ekwiwalentu za urlop
36,kwota	# swiadczenie pielegnacyjne
% PARCHOR.DIC # slownik  rejestru
"ch_rok",1,Estring     # symbol parametrow
"ch_liczyc",2,Elog     # czy liczyc zasilki automat.
"ch_przecwyn",3,Ekwota # przecietne wynagrodzenie podane przez ZUS
"ch_najniwyn",4,Ekwota # najnizsze wynagrodzenie 
"ch_ldni",5,Ekwota     # l.dni chorobowych pokrywanych przez zaklad pracy
"ch_od1",6,Ekwota       # od dnia 1
"ch_do1",7,Ekwota       # do dnia 1
"ch_proc1",8,Ekwota     # % wynagrodzenia 1
"ch_od2",9,Ekwota       # od dnia 2
"ch_do2",10,Ekwota      # do dnia 2
"ch_proc2",11,Ekwota    # % wynagrodzenia 2
"ch_lmies",12,Ekwota    # liczba ostatnich miesiecy branych do wyliczenia podstawy
"ch_ksieg",13,Estring  # symbol ksiegozbioru
"ch_porod",14,Ekwota    # % przec.wynagrodzenia-zas.porodowy 
"ch_macierz",15,Ekwota  # % podst.wymiaru-zas.macierzynski
"ch_opiek",16,Ekwota    # % podst.wymiaru-zas.opiekunczy
"ch_wyrow",17,Ekwota    # % podst.wymiaru-zas.wyrownawczy
"ch_wychow",18,Ekwota   # % podst.wymiaru-zas.wychowawczy
"ch_pogrz",19,Ekwota    # % przec.wynagrodzenia-zas.pogrzebowy
"ch_rodz1",20,Ekwota    # zasilek rodzinny - malzonek
"ch_rodz2",21,Ekwota    # zasilek rodzinny - 1,2 dziecko
"ch_rodz3",22,Ekwota    # zasilek rodzinny - 3 dziecko
"ch_rodz4",23,Ekwota    # zasilek rodzinny - kazde kolejne dziecko
"ch_piel",24,Ekwota     # zasilek pielegnacyjny
"gu_przecwyn",25,Ekwota # przecietne wynagrodzenie w 4 kwart.poprzedniego roku
"ch_wych1",26,Ekwota    # zasilek wychowawczy w rodzinie pelnej
"ch_wych2",27,Ekwota    # zasilek wychowawczy dla samotnie wychowujacych
"l_dni_niepl",28,Ekwota    # pierwsze dni nieplatne
"l_dni_grani",29,Ekwota    # maksym.l dni dla ktorej stosuje sie dni nieplatne
"u_lmies",30,Ekwota     # liczba miesi�cy branych do wyliczenia stawki urlopowej
"url_liczyc",31,Elog    # czy liczyc urlopy automatycznie
"ch_zaszereg",32,Ekwota    # stawka zaszeregowania 1- tylko zasadnicze, 2 zasadnicze+funkcyjne
"ch_ldni50",33,Ekwota	# l.dni placonych przez pracodawceza pracownika 50+
"ch_ldnizop",34,Ekwota	# l.dni wyplacania zasilku opiekunczego
"wsp_ekw",35,Ekwota	# wspolczynnik do wyliczenia ekwiwalentu za urlop
"ch_piels",36,Ekwota	# swiadczenie pielegnacyjne
// ----------------------------------------------------------
// rejestr podatnikow
// ----------------------------------------------------------

% PODATNIK.RXR,kartotek.rxr,kartotek1.rxr,zlbiorca.rxr,kartotek2.rxr # rejestr opisow
1 # symbol pola - klucza
1 # identyfikator klucza
PODATNIK # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c tego  pracownika z rejestru ?" 
"Chcesz doda|c jeszcze jednego  pracownika  ?" 
"%s - nie ma takiego  pracownika w rejestrze.$Czy chcesz doda|c nowego ?" 
"Nie ma |zadnych  pracownik|ow w rejestrze !"
"Rejestr  pracownik|ow pusty - wstawiasz pierwszego  ?"
"Nie ma pracownika o takim symbolu.$Znale|x|c nast|epnego ?"
"%s - brak  pracownika o takim symbolu !"
PODATNIK-WAR
% PODATNIK-WAR.DIC,KARTOTEK-WAR.DIC
%< PODATNIK1-WAR.DIC
"Data urodzenia",11
"Miejsce urodzenia",12
"Numer dowodu",13
"Pesel",14
"Nip",15
"Imi|e ojca",16
"Imi|e matki",17
"Telefon",18
"Urz|ad",19
"Poczta",20
"Faks",21
"Wydzia|l",22
"Stanowisko",23
"Czy nalicza|c p|lace",24
"Czy pobiera|c podatek",25
"Kontrahent",26
"Konto",27
"Zatrudnienie",28
"liczba dni chorobowych",29
"Kwota wolna od podatku",33
"Koszt uzyskania",34
"Kod pracownika",35
"Liczba os|ob do zasi|lku rodzinnego",36
"Liczba os|ob do zasi|lku piel|egnacyjnego",37
"Wymiar(licznik)",38
"Wymiar(mianownik)",39
"Wynagrodzenie zasadnicze",80
"Nazwa banku 1",30
"Numer banku 1",31
"Nazwa banku 2",40
"Numer banku 2",41
"Ma|l|zonek do zasi|lku rodzinnego",42
"Zatrudniony",82
"Powi|azanie",222
% PODATNIK1-WAR.DIC
"Symbol",1
"Nazwisko",2
"Imi|e 1",3
"Imi|e 2",4
"Miejsce zamieszkania",5
"Kod pocztowy",6
"Ulica",8
"Dom",9
"Lokal",10
"Data urodzenia",11
"Wojew|odztwo",7
"Nr dowodu osobistego",13
"Nr Pesel",14
"Nr Nip",15
"Nr Akt",32

% PODATNIK2-WAR.DIC 
"Symbol:",1
"Nazwisko:",2
"Kom|orka organizacyjna:",22
"Stanowisko:",23

% PODATNIK-KOLUMNY.DIC,KARTOTEK-KOLUMNY.DIC
"Symbol",1
"Nazwisko",2
"Imi|e 1",3
"Imi|e 2",4
"Miasto",5
"Kod",6
"Wojew|odztwo",7
"Ulica",8
"Dom",9
"Lokal",10
"Data urodzenia",11
"Miejsce urodzenia",12
"Numer dowodu",13
"Pesel",14
"Nip",15
"Imi|e ojca",16
"Imi|e matki",17
"Telefon",18
"Urz|ad",19
"Poczta",20
"Faks",21
"Wydzia|l",22
"Stanowisko",23
"Czy nalicza|c p|lace",24
"Czy pobiera|c podatek",25
"Kontrahent",26
"Konto",27
"Zatrudnienie",28
"liczba dni chorobowych",29
"Nazwa banku",30
"Numer banku",31
"Numer akt",32
"Kwota wolna od podatku",33
"Koszt uzyskania",34
"Kod pracownika",35
"Liczba os|ob do zasi|lku rodzinnego",36
"Liczba os|ob do zasi|lku piel|egnacyjnego",37
"Wymiar 1",38
"Wymiar 2",39
"Wynagrodzenie zasadnicze",80
"Nazwa banku 2",40
"Numer banku 2",41
"Ma|l|zonek do zasi|lku rodzinnego",42
"Zatrudniony",82
"Powi|azanie",222
% PODATNIK.DBF # rejestr pracownikow - struktura rekordu
%<PODATNIK.DB1
%<PODATNIK.DB2
%<PODATNIK.DB3

% PODATNIK.DB1 # rejestr pracownikow - struktura rekordu
0,log,,,,,D           # usuwanie "w miejscu"

% PODATNIK.DB2 # rejestr pracownikow - struktura rekordu
1,string,10,2,1,,N    # symbol  pracownika

% PODATNIK.DB3 # rejestr pracownikow - struktura rekordu
2,string,30,2,2       # Nazwisko
3,string,15,2         # imie 1
4,string,15,2         # imie 2
5,string,50,2         # miejsce zamieszkania
6,string,10,2         # kod pocztowy
7,string,20,2         # wojewodztwo
8,string,50,2         # ulica
9,string,10,2         # nr domu
10,string,5,2         # nr lokalu
11,Ydate              # data urodzenia
12,string,20,2        # miejsce urodzenia
13,string,15,2        # nr dowodu osobistego
14,string,11          # nr Pesel
15,string,10          # nr Nip
16,string,15,2        # imie ojca
17,string,15,2        # imie matki
18,string,15          # telefon
19,string,,416,5      # symbol Urzedu Skarbowego
20,string,50,2        # poczta
21,string,15          # faks
22,string,,496,3      # wydzial
23,string,,448,4      # STANOWISko
24,log                # czy naliczac nowe place
25,log                # czy pobierac podatek
26,2100               # symbol pracownika w rejestrze kontrahentow
27,2000               # symbol konta
28,dic,,47            # charakter zatrudnienia
29,kwota              # liczba dni chorobowych w danym roku
30,string,50,2        # nazwa konta bankowego -1
31,string,50,2        # numer konta bankowego -1
32,string,20,2,7      # numer AKT
33,kwota              # kwota wolna od podatku/miesiac
34,kwota              # koszt uzyskania przychodow
//
35,string,,464        # kod pracownika do wyliczen skladek ZUS
36,kwota              # l.osob do zasilku rodzinnego
37,kwota              # l.osob do zasilku pielegnacyjnego
38,string,3           # wymiar czasu pracy 1
39,string,3           # wymiar czasu pracy 2
40,string,50,2        # nazwa konta bankowego -2
41,string,50,2        # numer konta bankowego -2
42,log                # malzonek do zasilku rodzinnego
55,log                # umowy zlecenia, czy 
//
43,kwota              # Kwota wynagrodz.z poprzedniego miejsca pracy
44,kwota              # Suma podstaw emeryt-rentowa
45,kwota              # Suma podstaw chorob-wypadk
46,kwota              # Suma podst.opodatkowania
47,kwota              # Procent podatku
48,byte               # rodzaj wyplaty
49,kwota              # zaniechanie podatku do wysokosci %
50,kwota              # Przelec na rachunek 1
51,kwota              # Przelac na rachunek 2
52,2002               # symbol konta klasyfikacji.-stanowisko kosztow
53,2002               # konto klasyfikacji ma
54,kwota              # kwota gotowka
//
60,string,30,2        # Nazwisko panienskie
61,dic,,111           # Plec
62,string,,736        # zawod
63,string,50,2        # charakter pracy
64,string,,720        # wykszta|lcenie
65,string,50,2        # Rodzaj wyksztalcenia
66,string,20,2        # jezyk 1
67,string,20,2        # jezyk 2
68,string,20,2        # jezyk 3
69,string,30,2        # forma naboru pracownika(sposob pozyskania) 
70,Ydate              # data zatrudnienia
71,string,50,2        # Gmina/Dzielnica
72,Ydate              # data wyga|sni|ecia umowy na czas okreslony
73,Ydate              # badania okresowe (do kiedy sa wazne)
74,Ydate              # dow.osobisty kiedy wydany 
75,string,30          # dow.osobisty przez kogo wydany
76,string,,672        # sposob rozwiazania umowy
77,Ydate              # data zwolnienia
78,string,15,2        # Nr legitymacji ubezpieczeniowej
79,log                # Czy jest to podstawowe miejsce pracy
80,kwota              # wynagrodzenie podstawowe
81,string,15,2        # Nr paszportu
82,log                # Czy jest zatrudniony
83,ulong              # liczba dni do stazowego
84,ulong              # liczba lat do stazowego 
85,ulong              # liczba miesiecy  do stazowego
86,ulong              # liczba dni do jubileuszowego
87,ulong              # liczba lat  do jubileuszowego
88,ulong              # liczba miesiecy  do jubileuszowego
89,dic,,45            # miesiac, dzien czy godzina dla stawki zaszeregowania
90,kwota              # zaniechanie podatku do kwoty 
91,Ydate              # data od kiedy zaniechac podatek
92,string,50,2        # Powiat
93,dic,,114           # rodzaj umowy o prace
94,string,20,2        # miejsce wykonywania pracy
99,ulong,,,8,,NM      # numer rekordu
100,string,30,2         # obywatelstwo
101,string,2,2          # kodniezdol
102,string,20          # kodzawodu
103,string,2,2          # kodwykszt
104,string,9,2          # kodpracszczeg
105,dic,,115            # kodkasychor
106,string,30,2         # nazkasychor
107,Ydate               # datapoczkasy
108,Ydate               # dpoczszczeg
109,Ydate               # dkonszczeg
110,string,2,2          # kod pokrewienstwa z pracodawca
111,log                 # czy pozostaje we wsp.gospodarst.z pracod.
112,string,30           # grupa kalendarzowa
113,kwota               # procent przecietnego wynagr(ustawa kominowa)
114,log                 # wspolne opodatkowanie z czlonkiem rodziny
115,string,3,2          # Symbol grupy PKD
116,string,2,2          # Symbol formy finansowania
117,dic,,117            # Czy placic zasilek wychowawczy i w jakiej wysok.
118,Ydate               # poczatek niezdolnosci
119,Ydate               # koniec niezdolnosci
120,Ydate               # data zgloszenia pracownika do ZUS
121,dic,,118            # Dokument zgloszeniowy
122,log                 # .T. - cudzoziemiec
115,0,,,9               # klucz zlozony: PKD
116,0,,,9               # forma finansowania
// --- dane adresowe do przelewu
130,log                 # czy dane na inny rachunek
131,string,30,2         # Nazwisko1
132,string,15,2         # imie 1
134,string,50,2         # miejsce zamieszkania
135,string,10,2         # kod pocztowy
137,string,50,2         # ulica
138,string,10,2         # nr domu
139,string,5,2          # nr lokalu
222,string,10,2,10         # symbol w rejestrze pracownikow
223,log                 # czy wystawiac PIT-40 ( rozlicza zaklad)
224,ulong		# ilosc dni wykorzystanego wynagrodzenia chorobowego
// adres do korespondencji
225,string,50,2         # miasto
226,string,10,2         # kod pocztowy
227,string,50,2        # Gmina/Dzielnica
228,string,50,2         # ulica
229,string,10,2         # nr domu
230,string,5,2         # nr lokalu
// adres do zameldowania
231,string,50,2         # miasto
232,string,10,2         # kod pocztowy
233,string,50,2        # Gmina/Dzielnica
234,string,50,2         # ulica
235,string,10,2         # nr domu
236,string,5,2         # nr lokalu
//
237,Ydate              # szkolenia BHP (do kiedy sa wazne)
238,Ydate		# bo koniec ostatniej choroby
239,ulong		# bo - ilosc wykorzystanych w roku dni zasilku opiekunczego
240,string,80           # osoba do kontaktu
241,string,30           # telefon do kontaktu
242,string,30           # numer legitymacji studenckiej
243,log                 # .N. - rezydent, .T.- nierezydent
244,string,60              # kraj zamieszkania
245,string,2,2            #kod kraju zamieszkania
246,string,30            # zagraniczny NIP
247,dic,,56    #id zagranicznego ZDI ( zagraniczny dokument identyfikacyjny)
248,string,40   # rodzaj zagranicznego dokumentu identyfikacyjnego
249,string,10  # rodzaj informacji podatkowej
//
% PODATNIK-PORZADEK-DRUKOWANIA.DIC
"sym",0,,"Symbol"
"nazwisko",0,,"Nazwisko"
"nip",0,,"Nip"

% PODATNIK.DIC # slownik do danych o kliencie
"sym",1,Estring            # symbol  pracownika
"nazwisko",2,Estring       # Nazwisko
"imie1",3,Estring          # imie 1
"imie2",4,Estring          # imie 2
"miasto",5,Estring         # miejsce zamieszkania
"kod",6,Estring            # kod pocztowy
"wojew",7,Estring          # wojewodztwo
"ulica",8,Estring          # ulica
"dom",9,Estring            # nr domu
"lokal",10,Estring         # nr lokalu
"datau",11,Edata           # data urodzenia
"miejsce_u",12,Estring     # miejsce urodzenia
"dowod",13,Estring         # nr dowodu osobistego
"pesel",14,Estring         # nr Pesel
"nip",15,Estring           # nr Nip
"im_oj",16,Estring         # imie ojca
"im_ma",17,Estring         # imie matki
"telefon",18,Estring       # telefon
"urzad",19,Estring         # symbol urzedu
"poczta",20,Estring        # poczta
"faks",21,Estring          # faks
"wydzial",22,Estring       # wydzial
"stanow",23,Estring        # stanowisko
"pnaliczac",24,Elog        # czy naliczac nowe place
"ppobierac",25,Elog        # czy pobierac podatek
"kontrahent",26,Estring    # symbol pracownika w rejestrze kontrahentow
"konto",27,Estring         # symbol konto 
"charakter",28,Estring     # charakter zatrudnienia
"dnichorob",29,Ekwota      # liczba dni chorobowych w danym roku
"nazwa_bank",30,Estring    # nazwa konta bankowego -1
"numer_bank",31,Estring    # numer konta bankowego -1
"numerakt",32,Estring      # numer AKT
"k_zw",33,Ekwota           # kwota wolna od podatku
"k_uzys",34,Ekwota         # koszt uzyskania przychodow
"kodprac",35,Estring       # kod pracownika do wyliczen skladek ZUS
"os_rodz",36,Ekwota        # l.osob do zasilku rodzinnego
"os_piel",37,Ekwota        # l.osob do zasilku pielegnacyjny
"wymiar1",38,Estring       # wymiar czasu pracy 1
"wymiar2",39,Estring       # wymiar czasu pracy 2
"nazwa_bank2",40,Estring   # nazwa konta bankowego -2
"numer_bank2",41,Estring   # numer konta bankowego -2
"rodzmalzonek",42,Elog     # malzonek do zasilku rodzinnego
"chorobdobrow",55,Elog     # ubezpieczenie chorobowe dobrowelne
//
"bo_wyplat",43,Ekwota      # bo- liczba dni otwartego okresu zasilkowego
"bo_podst_er",44,Ekwota    # Suma podstaw emeryt-rentowa
"bo_podst_cw",45,Ekwota    # Suma podstaw chorob-wypadk
"bo_podstopod",46,Ekwota   # Suma podst.opodatkowania
"bo_proc",47,Ekwota        # Procent podatku
"rodzaj_wyplaty",48,Ekwota # (0, gotowka, 1 - bank1, 2 - bank2)
"zaniechanie",49,Ekwota    # zaniechanie podatku do wysokosci %
"dobanku1",50,Ekwota       # Przelec na rachunek 1
"dobanku2",51,Ekwota       # Przelac na rachunek 2
"kontorozl1",52,Estring    # symbol konta klasyfikacji -stanowisko kosztow
"kontoklaswyna",53,Estring # konto klasyfikacji wynagrodzen, jesli konto pracownika rozliczeniowe
"dogotowka",54,Ekwota      # kwota gotowki       
//
"nazwisko_pan",60,Estring  # Nazwisko panienskie
"plec",61,Estring          # plec
"zawod",62,Estring         # zawod
"charpracy",63,Estring     # charakter pracy
"wykszt",64,Estring        # wykszta|lcenie
"rodzwykszt",65,Estring    # Rodzaj wyksztalcenia
"jezyk1",66,Estring        # jezyk 1
"jezyk2",67,Estring        # jezyk 2
"jezyk3",68,Estring        # jezyk 3
"formnaboru",69,Estring    # forma naboru pracownika(sposob pozyskania) 
"dzatrud",70,Edata         # data zatrudnienia
"gmina",71,Estring         # Gmina/Dzielnica
"dwygasumowy",72,Edata     # data wyga|sni|ecia umowy na czas okreslony
"dbadania",73,Edata        # badania okresowe (do kiedy sa wazne)
"ddowod",74,Edata          # dow.osobisty kiedy wydany 
"ktowydal",75,Estring      # dow.osobisty przez kogo wydany
"rozwumowy",76,Estring     # sposob rozwiazania umowy(slownik)
"dzwolnien",77,Edata       # data zwolnienia
"nrlegit",78,Estring       # Nr legitymacji ubezpieczeniowej
"podstawowe",79,Elog       # Czy jest to podstawowe miejsce pracy
"wynagrodz",80,Ekwota      # wynagrodzenie podstawowe
"paszport",81,Estring      # Nr paszportu
"czyzatrud",82,Elog        # Czy jest zatrudniony
"dnistaz",83,Ekwota        # liczba dni do stazowego
"latastaz",84,Ekwota       # liczba lat do stazowego 
"miesstaz",85,Ekwota       # liczba miesiecy  do stazowego
"dnijubil",86,Ekwota       # liczba dni do jubileuszowego
"latajubil",87,Ekwota      # liczba lat  do jubileuszowego
"miesjubil",88,Ekwota      # liczba miesiecy  do jubileuszowego
"miegodz",89,Estring       # miesiac, dzien czy godzina dla stawki zaszeregowania
"kwotazaniech",90,Ekwota   # zaniechanie podatku do kwoty 
"dzaniech",91,Edata        # data od kiedy zaniechac podatek
"powiat",92,Estring        # Powiat
"rodzumowy",93,Estring     # rodzaj umowy o prace
"miejscepr",94,Estring     # miejsce wykonywania pracy
"dokid",99,Ekwota          # numer rekordu
//
"obywatel",100,Estring      # obywatelstwo
"kodniezdol",101,Estring    # 
"kodzawodu",102,Estring     # 
"kodwykszt",103,Estring     # 
"kodpracszczeg",104,Estring # 
"kodkasychor",105,Estring   # 
"nazkasychor",106,Estring   # 
"datapoczkasy",107,Edata    # 
"dpoczszczeg",108,Edata     # 
"dkonszczeg",109,Edata      # 
"kodpokrew",110,Estring     # 
"czyrodzina",111,Elog       # 
"kalengrupa",112,Estring    # 
"procwynagr",113,Ekwota     # procent przecietnego wynagr(ustawa kominowa)
"wspolneopod",114,Elog      # wspolne opodatkowanie malzonkow
"guspkd",115,Estring        # Symbol grupy PKD
"gusformfin",116,Estring    # Symbol formy finansowania
"czywychow",117,Estring     # Czy placic zasilek wychowawczy i w jakiej wysok.
"dniezdol1",118,Edata       # data poczatku niezdolnosci
"dniezdol2",119,Edata       # data konca niezdolnosci 
"d_zgloszenia",120,Edata    # data zgloszenia pracownika do ZUS
"dok_zgloszeniowy",121,Estring    # Dokument zgloszeniowy
"cudzoziemiec",122,Elog     # czy cudzoziemiec
"p_innedane",130,Elog    # czy inne dane na przelewie
"p_nazwisko",131,Estring # nazwisko
"p_imie1",132,Estring    # imie 1
"p_miasto",134,Estring   # miejsce zamieszkania
"p_kod",135,Estring      # kod
"p_ulica",137,Estring    # ulica
"p_dom",138,Estring      # nr domu
"p_lokal",139,Estring    # nr lokalu
"sym_prac",222,Estring      # symbol w rejestrze pracownikow ( dla zleceniobiorcow)
"czy_pit40",223,Elog        # czy wystawiac pit-40
"bo_dnichor",224,Ekwota	# wykorzystana ilosc dni chorobowego  w poprzedniej pracy
// adres do korespondencji
"miasto1",225,Estring         # miejscowosc
"kod1",226,Estring            # kod pocztowy
"gmina1",227,Estring          # gmina/dzielnica
"ulica1",228,Estring          # ulica
"dom1",229,Estring            # nr domu
"lokal1",230,Estring         # nr lokalu
// adres zameldowania
"miasto2",231,Estring         # miejscowosc
"kod2",232,Estring            # kod pocztowy
"gmina2",233,Estring          # gmina/dzielnica
"ulica2",234,Estring          # ulica
"dom2",235,Estring            # nr domu
"lokal2",236,Estring         # nr lokalu
"dwygasbhp",237,Edata     # data wyga|sni|ecia umowy na czas okreslony
"bo_datakchor",238,Edata	 # bo - data konca ostatniej choroby	
"bo_ildnizop",239,Ekwota	# ilosc wykorzystanych dni zasilku opiekunczego
"kontaktos",240,Estring		# osoba do kontaktu
"kontakttel",241,Estring        # telefon do kontaktu
"nrleg_stud",242,Estring        # numer legitymacji studenckiej
"nierezydent",243,Elog                 # .N. - rezydent, .T.- nierezydent
"kraj",244,Estring              # kraj zamieszkania
"kodkraj",245,Estring           # kod kraju zamieszkania
"znip",246,Estring           # zagraniczny numer identyfikacyjny
"kod_znip",247,Estring    #kod zagranicznego dokumentu identyfikacyjnego
"nazwa_znip",248,Estring   # nazwa zagranicznego dokumentu identyfikacyjnego
"pit",249,Estring          # rodzaj informacji podatkowej
// ------------------------------------------------------
// rejestr urzedow
// ------------------------------------------------------

% URZAD.RXR,XURZAD.RXR ejestr opisow
1 # symbol pola - klucza
1 # identyfikator klucza
URZAD # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c urz|ad z rejestru ?" 
"Chcesz doda|c jeszcze jeden urz|ad  ?" 
"%s - nie ma takiego urz|edu w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych urz|ed|ow w rejestrze !"
"Rejestr urz|ed|ow pusty - wstawiasz pierwszy  ?"
"Nie ma urz|edu o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak urz|edu o takim symbolu !"
URZAD-WAR

% URZAD-WAR.DIC,URZAD-FILTR.DIC
"Symbol Urz|edu Skarbowego",1
"Kod Urz|edu Skarbowego",10
"Nazwa Urz|edu Skarbowego",2
"Miejscowo|s|c",3
"Kod pocztowy",4
"Ulica",5
"Konto ksi|egowe",7

% URZAD.DBF
0,log,,,,,D           # usuwanie "w miejscu"
1,string,20,2,1,,N    # symbol Urzedu Skarbowego
2,string,50,2,2       # nazwa Urzedu Skarbowego
3,string,30,2,3         # miejscowosc
4,string,30,2         # kod pocztowy
5,string,30,2         # ulica
6,string,30,2         # dom
7,2000                # konto rodzajowe
8,string,30,2         # konto bankowe
9,string,50,2         # nazwa konta bankowego
10,string,4		# kod US

% URZAD.DIC 
"sym",1,Estring,"Symbol"                  # symbol Urzedu Skarbowego
"urzad",2,Estring,"Nazwa"                 # nazwa Urzedu Skarbowego
"u_miasto",3,Estring,"Miejscowo|s|c"       # miejscowosc
"u_kod",4,Estring,"Kod pocztowy"          # kod pocztowy
"u_ulica",5,Estring,"Ulica"               # ulica
"u_dom",6,Estring,"Dom"                   # dom
"u_krodz",7,Estring,"Konto ksi|egowe"               # konto rodzajowe
"u_kbank",8,Estring,"Konto bankowe"       # konto bankowe
"u_kbanknaz",9,Estring,"Nazwa konta"      # nazwa konta bankowego
"u_kodus",10,Estring,"Kod US"		# kod urzedu skarbowego

// ========================================
// plc_wyroznik.RXR
// rejestr wyroznikow list
// ========================================  
% PLC_WYROZNIK.RXR
100
1
PLC_WYROZNIK
# buttony - menu
# buttony - box
"Powt|orzony indeks !"
"Zmieniasz dane  ?"
"Dodajesz nowy indeks ?" 
"Usun|a|c ten indeks z rejestru ?" 
"Chcesz doda|c jeszcze jeden indeks ?" 
"%s - nie ma takiego indeksu.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych indeks|ow w rejestrze!"
"Rejestr indeks|ow  pusty - wstawiasz pierwszy ?"
"Nie ma takiego indeksu.$Znale|x|c nast|epny ?"
"%s - nie ma takiego indeksu !"
WYROZNIK-WAR

% WYROZNIK-WAR.DIC,WYROZNIK-FILTR.DIC
"Symbol wyr|o|znika",100
"Opis",101
"Uwagi 1",102
"Uwagi2",103
% PLC_WYROZNIK.DBF # struktura rekordu
0,log,,,,,D                      # usuwanie "w miejscu"
100,string,3,2,1,,N             # symbol klucza
101,string,30                    # nazwa klucza
102,string,65                    # opis 1
103,string,65                    # opis 2
% PLC_WYROZNIK.MEN
D = 72,"Wykaz wyr|o|znik|ow",A
100,,,,6,"Symbol"
101,,,,,"Opis"
102,,,,,"Uwagi1"
// ------------------------------------------------------------------------
% PLC_WYROZNIK.DIC # slownik pol rekordu
"plc_wyr_symb",100,Estring,"Symbol wyr|o|znika"          # symbol klucza
"plc_wyr_name",101,Estring,"Opis"          # nazwa klucza
"plc_wyr_opis1",102,Estring,"Uwagi1"         # opis1
"plc_wyr_opis2",103,Estring,"Uwagi2"         # opis2


% PLC_WYROZNIK-DAJDANE.ALG
  symbol_pole_rej := "plc_wyr_symb"
  symbol_pole_brak := "Wprowad|x symbol wyr|o|znika"
  symbol_menu := "PLC_WYROZNIK"
  symbol_tytul := "Rejestr wyr|o|znik|ow dla PIT"  
  symbol_Key_field := 100  
  
  symbol_jest_modif := "PLLISTYX.RXR"
  symbol_jest_modif1 := "PLLISTY.RXR"
  symbol_modif_glowny_rej := "wyroznik"
  symbol_usun_glowny_rej := "Nie mo|zna usun|a|c tego wyr|o|znika z listy !$ Wyst|epuje w rejestrze list wzorcowych."
  
% WYROZNIKALGO.XXX
%< TABLICA-AKCJI-REJESTRSYMBOLE.XXX(SYMBOL_D=PLC_WYROZNIK)
% PLC_WYROZNIK-MENU-0.DLG
%< SYMBOLE-MENU-0.DLG
% PLC_WYROZNIK-MENU-1.DLG
%< SYMBOLE-MENU-1.DLG

% PLC_WYROZNIK.XXX
##DEFWINDOW = ,,,,ADPHS,,,,,"Wyr|o|znik"
##10,0,AC,,,,&&black/lwhite,&&white/lblue,,,POLEUNIKALNE:plc_wyr_symb
##11,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:plc_wyr_name
##12,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:plc_wyr_opis1
##13,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:plc_wyr_opis2


Symbol:      #10 #<   Nazwa:    #11                          #

Opis1:       #12                                              #
Opis2:       #13                                              #
% PLC_WYROZNIK-REKORD-1.DLG,PLC_WYROZNIK-REKORD-0.DLG,PLC_WYROZNIK-REKORD-3.DLG,PLC_WYROZNIK-REKORD-5.DLG
%<PLC_WYROZNIK.XXX


%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% PLC_WYROZNIK-REKORD-2.DLG
%<PLC_WYROZNIK.XXX
%<REKORD-OK-BUTT.XXX
//
% WYROZNIK_POKAZ.ALG
  CallSl["gl_f2_rejestr(""PLC_WYROZNIK.RXR"",""plc_wyr_symb"")"]
// -----------------------------------------------------
// rejestr wydzialow
// -----------------------------------------------------

% WYDZIALY.RXR,XWYDZIALY.RXR 
100 # symbol pola - klucza
1 # identyfikator klucza
WYDZIALY # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c t|e kom|ork|e organizacyjn|a z rejestru ?" 
"Chcesz doda|c jeszcze jedn|a kom|ork|e organizacyjn|a ?" 
"%s - nie ma takiej kom|orki organizacyjnej w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych kom|orek organizacyjnych w rejestrze !"
"Rejestr kom|orek organizacyjnych pusty - wstawiasz pierwsz|a ?"
"Nie ma kom|orki organizacyjnej o takim symbolu.$Znale|x|c nast|epn|a ?"
"%s - brak kom|orek organizacyjnych o takim symbolu !"

% WYDZIALY.DBF # rejestr wydzialow - struktura rekordu
0,log,,,,,D            # usuwanie "w miejscu"
100,STRING,10,2,1,,N   # wydzial
101,string,30          # Nazwa jedn.organizacyjnej
102,2002               # sym.konta klasyfikacji

% WYDZIALY.DIC 
"wydzial",100,Estring,"Symbol"         # symbol parametrow
"wydznazwa",101,Estring,"Nazwa"        # Nazwa jedn.organizacyjnej
"wydzrozl",102,Estring,"Klasyfikacja"  # Sym.konta klasyfikacji

% WYDZIALY.BOX
D = "Kom|orka organizacyjna"
"Symbol",100
"Nazwa",101
"Klasyfikacja",102

// ---------------------------------------------
// rejestr stanowisk
// ---------------------------------------------
% STANOW.RXR,XSTANOW.RXR
1 # symbol pola - klucza
1 # identyfikator klucza
STANOW # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe stanowisko ?" 
"Usun|a|c to stanowisko z rejestru ?" 
"Chcesz doda|c jeszcze jedno stanowisko ?" 
"%s - nie ma takiego stanowiska w rejestrze.$Czy chcesz doda|c nowe ?" 
"Nie ma |zadnego stanowiska w rejestrze !"
"Rejestr stanowisk pusty - wstawiasz pierwsze ?"
"Nie ma stanowiska o takim symbolu.$Znale|x|c nast|epne ?"
"%s - brak stanowiska o takim symbolu !"

% STANOW.DBF # rejestr  - struktura rekordu
0,log,,,,,D           # usuwanie "w miejscu"
1,string,60,2,1,,N    # symbol stanowiska

% STANOW.DIC # slownik  rejestru
"stanow",1,Estring,"Stanowisko"     # symbol stanowiska

% STANOW.BOX
D = "Stanowisko"
"Stanowisko",1

 // ----------------------------------
// kod pracownika do programu platnika
// ----------------------------------

% KODPRAC.RXR,XKODPRAC.RXR
1 # symbol pola - klucza
1 # identyfikator klucza
KODPRAC # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c ten kod z rejestru ?" 
"Chcesz doda|c jeszcze jeden kod ?" 
"%s - nie ma takiego kodu w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnego kodu w rejestrze !"
"Rejestr kod|ow pusty - wstawiasz pierwszy ?"
"Nie ma kodu o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak kodu o takim symbolu !"

% KODPRAC.DBF # rejestr  - struktura rekordu
0,log,,,,,D           # usuwanie "w miejscu"
1,string,8,2,1,,N     # symbol kodu
2,string,70,2         # nazwa kodu
3,kwota               # % ubez.emer.placi platnik
4,kwota               # % ubez.emer.placi ubezpieczony
5,kwota               # % ubez.rent.placi platnik
6,kwota               # % ubez.rent.placi ubezpieczony
7,kwota               # % ubez.wypad.placi platnik
8,kwota               # % ubez.chorob.placi ubezpieczony
10,string,2           # wyroznik stawek ubezpieczeniowych
11,kwota               # % odpisu na fgsp placi platnik
12,kwota               # % odpisu na fp placi platnik

% KODPRAC.DIC # slownik  rejestru
"kodprac",1,Estring,"Kod pracownika"     # symbol kodu
"nazkodprac",2,Estring,"Nazwa kodu"  # nazwa kodu
"uep",3,Ekwota,"Ub.p|latnik"          #  % ubez.emer.placi platnik
"ueu",4,Ekwota,"Ub.ubezpieczony"          #  % ubez.emer.placi ubezpieczony
"urp",5,Ekwota,"Rent.p|latnik"          #  % ubez.rent.placi platnik
"uru",6,Ekwota,"Rent.ubezpieczony"          #  % ubez.rent.placi ubezpieczony
"uwp",7,Ekwota,"Wypad.p|latnik"          #  % ubez.wypad.placi platnik
"ucu",8,Ekwota,"Wypad.ubezpieczony"          #  % ubez.chorob.placi ubezpieczony
"wyroznik",10,Estring,"Wyr|o|znik"   # wyroznik stawek ubezpieczeniowych
"fgp",11,Ekwota,"F.G.|S.P."               # % odpisu na fgsp placi platnik
"fpp",12,Ekwota,"F.P."               # % odpisu na fp placi platnik

% KODPRAC.BOX
D = "Kody pracownik|ow"
"Kod pracownika",1
"Nazwa kodu",2
"Wyr|o|znik",10
"Ubezpieczenia",,T
"Ubezpieczenie emerytalne p|latnik",3
"Ubezpieczenie emerytalne ubezpieczony",4
"Ubezpieczenie rentowe p|latnik",5
"Ubezpieczenie rentowe ubezpieczony",6
"Ubezpieczenie chorobowe p|latnik",7
"Ubezpieczenie chorobowe ubezpieczony",8
"Odpis na F.G.|S.P",11
"Odpis na F.P.",12
// -----------------------------------------------------------
//              REJESTR  POWIAZAN  
// -----------------------------------------------------------
% PLPOWIAZ.RXR,RNPOWIAZ.RXR,KONTROLA.RXR # rejestr wzorcowych list plac i powiazan
1 # symbol pola - klucza
1 # identyfikator klucza
PLPOWIAZ # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c t|a list|e z rejestru ?" 
"Chcesz doda|c jeszcze jedn|a  list|e ?" 
"%s - nie ma takiej listy w rejestrze.$Czy chcesz doda|c now|a ?" 
"Nie ma |zadnych  list w rejestrze !"
"Rejestr  list pusty - wstawiasz pierwsz|a ?"
"Nie ma  listy o takim symbolu.$Znale|x|c nast|epn|a ?"
"%s - brak  listy o takim symbolu !"

% PLPOWIAZ.DBF # rejestr plac - struktura rekordu
0,log,,,,,D       
1,string,30,2,1       # symbol listy plac
2,string,60           # nazwa listy plac
3,string,20,,3        # indeks pracownika
4,string,,192,4       # indeks skladnika
5,log                 # do zaznaczania
6,string,30           # wydzial
7,log                 # lista podstawowa
8,string,2            # poziom zaglebienia skladnika  
1,0,,,6                 # klucz6 zlozony: indeks listy plac
3,0,,,6                 #  indeks pracownika
4,0,,,6                 # i indeks skladnika
1,0,,,7                 # klucz7 zlozony: symbol listy
4,0,,,7                 # i indeks skladnika
5,0,,,7                 # i zaznacz
1,0,,,8                 # klucz8 zlozony: symbol listy
3,0,,,8                 # i indeks pracownika
5,0,,,8                 # i zaznacz
1,0,,,5                 # klucz5 zlozony: symbol listy
4,0,,,5                 # i indeks skladnika
3,0,,,10                 # klucz dla potrzeb wyliczania stawki urlopowej indeks pracownika
5,0,,,10                 # i zaznacz
1,0,,,11                 # klucz8 zlozony: symbol listy
3,0,,,11                 # i indeks pracownika
5,0,,,11                 # i zaznacz
8,0,,,11                 # i poziom zaglebienia
3,0,,,12                 #  indeks pracownika
4,0,,,12                 # i indeks skladnika

% PLPOWIAZ.DIC # slownik  rejestru plac
"symlista",1,Estring    # symbol listy plac
"nazlista",2,Estring    # nazwa listy plac
"pracownik",3,Estring   # indeks pracownika
"skladnik",4,Estring    # indeks skladnika
"zaznacz",5,Elog        # zaznaczenie
"wydzial",6,Estring     # wydzial
"podstawowa",7,Elog     # lista podstawowa
"poziom",8,Estring      # poziom zaglebienia skladnika
// ------------------------------------------------------
// rejestr skladnikow plac
// ------------------------------------------------------

% PLSKLAD.RXR,XPLSKLAD.RXR,PLSKWYDR.RXR # rejestr plac
1 # symbol pola - klucza
1 # identyfikator klucza
PLSKLAD # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c ten sk|ladnik z rejestru ?" 
"Chcesz doda|c jeszcze jeden sk|ladnik ?" 
"%s - nie ma takiego sk|ladnika w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych sk|ladnikow w rejestrze !"
"Rejestr sk|ladnikow pusty - wstawiasz pierwszy ?"
"Nie ma sk|ladnikow o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak sk|ladnikow o takim symbolu !"
% PLSKLAD.DBF # rejestr plac - struktura rekordu
0,log,,,,,D           # usuwanie "w miejscu"
1,string,,32770,1,,N  # symbol skladnika
2,string,60,2,2       # nazwa skladnika
3,2000                # konto rodzajowe kosztow
4,log                 # czy wchodzi do podstawy opodatkowania
5,log                 # czy jest opodatkowany roczaltowo(T), progresywnie(N)
6,kwota               # procent podatku dla opodatkowania roczaltowego
7,log                 # czy odlicza sie od niego koszty uzys.przych.
8,log                 # czy koszt uzyskania to "%":(T) czy kwota (N)
9,kwota               # wielkosc kosztu uzyskania przychodow
10,kwota              # w jakim procencie podlega ZUS
11,log                # czy uczestniczy w wyliczaniu ekwiwalentu za urlop
12,log                # czy uczestniczy w wyliczaniu chorobowego
13,string,10,2,4        # symbol grupy skladnika
14,string,60      # opis dodatku\potracenia
15,log                # zawieszenie poboru podatku
16,log                # czy mnozyc stawke przez l.godzin(dni)
17,log                # czy sa jakies place dla tego skladnika (do kontroli usuwania)
18,dic,,45            # miesiac, dzien czy godzina dla stawki zaszeregowania
19,2000               # konto WN
20,log                # Czy do konta WN dodac symb.pracownika
21,2000               # konto MA
22,log                # Czy do konta MA dodac symb.pracownika
23,log                # Czy wchodzi do PIT-u
24,log                # Czy wchodzi do kartoteki
25,log                # Czy skladnik ma byc odejmowany od sumy
26,log                # Czy odliczac ZUS
27,log                # Czy odliczac Ubezpieczenie zdrowotne
28,string,,480        # rodzaj dodatku\potracenia
29,string,50,2        # nazwa dodatku\potracenia
30,string,50,2        # sym.skladnika od ktorego liczyc premie
31,kwota              # procent skladnika od ktorego liczona jest premia
32,string,50,2        # sym.skladnika od ktorego liczyc premie
33,kwota              # procent skladnika od ktorego liczona jest premia
34,log                # czy skladnik jest do wyplaty
35,log                # czy skladki ubezpiecz.nie pomniejszaja podst.opodatkowania
36,kwota              # rodzaj wynagrodzenia 
37,kwota              # procent wynagrodzenia za godziny nadliczbowe
38,kwota              # procent wynagrodzeniem za godziny nocne
39,log                # odliczac chorobowe
40,log                # odliczac wypadkowe
41,log                # czy odliczac
42,log                # czy uzupelniac
// zmienne do stazu
43,kwota              # poczatkowy staz
44,kwota              # poczatkowy % stazu
45,kwota              # progresja
46,kwota              # gorny % stazu
47,string,2,,3           # poziom zaglebienia
48,log                # czy skladnik w stalej kwocie miesiecznej
49,dic,,120           # typ sk|ladnika -  % zwolnienia lekarskiego
50,string,10          # skladnik powiazany
51,log                # czy skladnik powiazany tylko za czas zwolnienia   
52,log                # czy czesciowo wchodzi do podstawy zus(tylko za czas pracy)
53,log                # czy uwzgledniac przy wynagrodzeniu za nadgodziny
// zmienne do stazu cd
54,string,10,2        # skladnik1 wchodzacy do podstawy stazowego
55,string,10,2        # skladnik2 wchodzacy do podstawy stazowego
// zmienne do skladnika % od wartosci brutto-skladki ZUS
56,string,10,2        # skladnik1 wchodzacy do podstawy 
57,string,10,2        # skladnik2 wchodzacy do podstawy
58,kwota              # % liczony od podstawy
59,log                # czy mozna go wyliczyc( ustalic poziom)
60,log                # czy uwzgledniany w skladce na zwiazek zawodowy
//
61,log                # zmniejszany z powodu nieobecnosci usprawiedliwionej
62,log                # zmniejszany z powodu nieobecnosci nieusprawiedliwionej
63,xkwota,,0          # liczba miesiecy -do zliczania skladnika - urlop
// do nadgodzin i nocnych
64,log               # wynagrodzenie normalne
65,log               # dodatek za nadgodziny
66,log               # zasadnicze
// dla formul
67,string,10 		# symbol formuly
68,kwota		# procent od stawki wyliczonej formula
//
69,log                  # przysluguje za okres dluzszy niz miesiac 
// trzynastka
70,kwota		# procent liczony od podstawy trzynastki
71,log			# podstawa 13 z roku biezacego
72,byte              # rodzaj zwolnienia(0-brak,1-pkt.16,2-pkt.17,3-inne,4-podw.opodatk) 		
73,log               # skladka zdrowotna obniza podatek
74,log               # skladka zdrowotna nie obnizana do wysokosci podatku  
75,byte              # od kt�rego wstecz ( 0 - miesiac za ktory wyp�ata, 1 -miesiac poprzedzajacy itd)
76,kwota	     # % liczony od podstawy - dla metody 9 (skladnik za okres dluzszy niz miesiac)	
77,byte		     # ile miesiecy		
78,log		     # czy laczyc dane pracownika przy liczeniu trzynastki	
79,kwota		# kwota zwolniona z naliczania podatku
80,byte			# co ile lat zmiana stawki stazowego
81,log			# czy stawki indywidualne dla metody 2
82,log			# czy stawki indywidualne dla metody 8
83,kwota		# procent podstawy
84,string,10,2		# symbol innej podstawy
85,log			# czy korygowany z powodu zatrudnienia przez niepelny miesiac
86,log			# czy stawki indywidualne dla metody 10
87,log			# do konta wn dodac symbol kontrahenta
88,log			# do konta ma dodac symbol kontrahenta
% PLSKLAD.DIC # slownik  rejestru plac
%< PLSKLAD1.DIC
"kontosklad",3,Estring,"Konto"  # konto rodzajowe kosztow
"zusproc",10,Ekwota,"Podlega ZUS"     # w jakim procencie podlega ZUS
//"grupa",13,Estring,"Grupa"      # rodzaj dodatku\potracenia
"opissklad",14,Estring,"Opis"  # opis dodatku\potracenia
"zawieszenie",15,Elog,"Zawieszony pob.podat."   # zawieszenie poboru podatku
"zapisy",17,Elog,"Zapisy"        # czy sa jakies place dla tego skladnika (do kontroli usuwania)
"dopitu",23,Elog,"Do pitu"        # Czy wchodzi do PIT-u
"poziom",47,Estring,"Poziom zag|l|ebienia"    # poziom zaglebienia skladnika
"czy_wyl",59,Elog,"Czy wyliczalny"                # czy mozna go wyliczyc( ustalic poziom)
% PLSKLAD1.DIC
"symsklad",1,Estring,"Symbol"    # symbol skladnika
"nazsklad",2,Estring,"Nazwa"    # nazwa skladnika
"rodzskl",28,Estring,"Kod(ZUS)"    # rodzaj dodatku\potracenia
"nazwarodz",29,Estring,"Opis kodu"  # NAZWA dodatku\potracenia
"grupa",13,Estring,"Grupa"      # rodzaj dodatku\potracenia
"kontown",19,Estring,"Konto Wn"    # konto WN 
"dodacsymwn",20,Elog,"Doda|c symb.prac WN"    # Czy do konta WN dodac symb.pracownika
"dodacklnwn",87,Elog,"Doda|c symb.kontr.WN"    # Czy do konta WN dodac symb.kontrahenta
"kontoma",21,Estring,"Konto Ma"    # konto MA
"dodacsymma",22,Elog,"Doda|c symb.prac. Ma"    # Czy do konta MA dodac symb.pracownika
"dodacklnma",88,Elog,"Doda|c symb.kontr.Ma"    # Czy do konta MA dodac symb.kontrahenta
"ujemny",25,Elog,"Ujemny"        # Czy skladnik jest potraceniem
"dokartoteki",24,Elog,"Do kartoteki"   # Czy wchodzi do kartoteki
"czywyplacac",34,Elog,"Do wyp|laty"   # czy skladnik jest do wyplaty
"czystaly",48,Elog,"Sta|ly"           # czy skladnik w stalej kwocie miesiecznej
"dopodstawy",4,Elog,"Do podst.opodatkowania"     # czy wchodzi do podstawy opodatkowania
"ekwiwalent",11,Elog,"Do podst.urlopowego"    # czy uczestniczy w wyliczaniu ekwiwalentu za urlop
"chorobowe",12,Elog,"Do podst.chorobowego"     # czy uczestniczy w wyliczaniu chorobowego
"ryczalt",5,Elog,"Opodatk.rycza|ltowo"        # czy jest opodatkowany roczaltowo(T), progresywnie(N)
"ryczproc",6,Ekwota,"% opod.rycza|lt."     # procent podatku dla opodatkowania roczaltowego
"odjack_uz",7,Elog,"Odliczy|c k.uzysk."      # czy odlicza sie od niego koszty uzys.przych.
"odj_ulgapodatek",41,Elog,"Odlicza|c ulg|e"
"odjaczus",26,Elog,"Odlicza|c ZUS"      # Czy odliczac ZUS
"odjaczdrow",27,Elog,"Odlicza|c zdrow."    # Czy odliczac ubezpieczenie zdrowotne
"odj_chorobowe",39,Elog,"Odlicza|c chorobowe" # Odliczac chorobowe
"odj_wypadkowe",40,Elog,"Odlicza|c wypadkowe" # Odliczac wypadkowe
"czyprock_uz",8,Elog,"Koszt uzysk.w %"    # czy koszt uzyskania to "%":(T) czy kwota (N)
"k_uzys",9,Ekwota,"Wielko|s|c k.uzysk."       # wielkosc kosztu uzyskania przychodow
"mnozyc",16,Elog,"Mno|zy|c"        # czy mnozyc stawke przez l.godzin(dni)
"miegodz",18,Estring,"wym.czasu dla stawki"    # miesiac, dzien czy godzina dla stawki zaszeregowania
"premsklad1",30,Estring,"Sk|l.1 do premii" # sym.skladnika od ktorego liczyc premie
"premproc1",31,Ekwota,"% sk|l.1"   # procent skladnika od ktorego liczona jest premia
"premsklad2",32,Estring,"Sk|l.2 do premii" # sym.skladnika od ktorego liczyc premie
"premproc2",33,Ekwota,"% sk|l.2"   # procent skladnika od ktorego liczona jest premia
"premind",81,Elog,"% indyw."	# procent przypisywany indywidualnie do pracownika	
"czyryczpodst",35,Elog,"R|owne podstawy"  # czy skladki ubezpiecz.nie pomniejszaja podst.opodatkowania
"rodzwynagr",36,Ekwota,"Spos|ob liczenia"  # rodzaj wynagrodzenia 
"procnadlicz",37,Ekwota,"% za godz.nadl." # procent wynagrodzenia za godziny nadliczbowe
"procnocne",38,Ekwota,"% za godz.nocne"   # procent wynagrodzeniem za godziny nocne
"n_podstawa",66,Elog,"Pod.noc."# podstawa do wyliczenia nocnego
"uzupelniany",42,Elog,"uzupe|lniany"      # uzupe�niac wynagrodznie miesieczne
// staz
"stazpocz",43,Ekwota,"pocz.naliczania"    # rok od ktorego liczyc stazowy
"stazprocpocz",44,Ekwota,"% pocz|atkowy"  # procent poczatkowy
"stazskok",45,Ekwota,"% wzrost/rok"       # procentowy wzrost na rok
"stazprockon",46,Ekwota,"% ko|ncowy"      # procent koncowy
"typsklad",49,Estring,"Typ"               # typ skladnika
"symsklad_pow",50,Estring,"Sk|ladnik powi|azany"        # symbol skladnika powiazanego
"czy_pow_zl",51,Elog,"pow.za czas zwoln." # czy  tylko za czas zwolnienia   
"czyczescpodst",52,Elog,"Ca|ly do podst.ZUS" # czy czesciowo wchodzi do podstawy zus ( tylko za czas pracy)
"czynadgodz",53,Elog,"Do podst.nadgodzin"    # czy uwzgledniac w wynagrodzeniu za nadgodziny
"stazsklad1",54,Estring,"Sk|l.1 do sta|zu"   # skladnik1 wchodzacy do podstawy stazowego
"stazsklad2",55,Estring,"Sk|l.2 do sta|zu"   # skladnik2 wchodzacy do podstawy stazowego
"msklad1",56,Estring,"Sk|l.1"   # skladnik1 wchodzacy do podstawy wymiaru
"msklad2",57,Estring,"Sk|l.2"   # skladnik2 wchodzacy do podstawy wymiaru
"mproc",58,Ekwota,"% wymiaru"   # % msklad1+msklad2
"czyzz",60,Elog,"Do podst.sk|l ZZ"    # czy uwzgledniac w otraceniu na zwiazki zawodowe
"uzupelnianynu",61,Elog,"Zmniejsz1"  # zmniejszany z powodu nieobecnosci usprawiedliwonej
"uzupelnianynn",62,Elog,"Zmniejsz2"  # zmniejszany z powodu nieobecnosci nieusprawiedliwionej
"mies_url",63,Ekwota,"Ilo|s|c mies." # ilosc miesiecy do wyliczenia urlopu
"n_normalne",64,Elog,"W.norm." # wynagrodzenie normalne
"n_dodatek",65,Elog,"Dod." # dodatek za nadgodziny
"form_symbol",67,Estring,"Formu|la"	# symbol formuly
"form_proc",68,Ekwota,"% dla formu|ly"	# % stawki wyliczonej formula
"ponad_mies",69,Elog,">mies"             # przysluguje za okres dluzszy niz miesiac 
// trzynastka
"trzyproc",70,Ekwota,"% dla 13-tki"	# procent dla wyliczenia 13-tki
"trzybiez",71,Elog,"bie|z"		# podstawa trzynastki z roku biezacego
"rodzzwoln",72,Ekwota,"Rodz.zwol."   # rodzaj zwolnienia od podatku
"zdrownpod",73,Elog,""			# zdrowotna nie obniza podatku
"zdrownobn",74,Elog,""			# zdorowotna nie obnizana do wys.podatku 
"od_mies",75,Ekwota,"Od mies."		# od ktorego miesiaca rozpoczac wyliczanie podstawy
"kwart_proc",76,Ekwota,"% dla kwart."    # jaki procent podstawy dla wynagrodzenia kwartalnego
"kwart_ind",82,Elog,"% indyw."		# % indywidualnie dla pracownika
"mies_kwartal",77,Ekwota,"Il. mies"	# ilosc miesiecy z ktorych liczona podstawa
"trzylaczyc",78,Elog,"S"		# czy laczyc dane pracownika przy trzynastkach
"kwota_zw",79,Ekwota,"Kwota zwolniona"	# kwota zwolniona z podatku( podstawa opodatkowania)
"stazokres",80,Ekwota,"Okresy zmian stawki"	# co ile lat zmiana stawki stazowego	
"n_procpodst",83,Ekwota,"% dod.podst"			# procent dodatkowej podstawy 
"n_podst",84,Estring,"Dod.podst."			# dodatkowa podstawa		
"npodst_ind",86,Elog,"% indyw."		# % indywidualnie dla pracown. metoda 9(10)
"uzupelnianycm",85,Elog			# korygowac z powodu zatrudnienia przez czesc miesiaca
% PLSKLAD.BOX
"Symbol sk|ladnika:",1
"Nazwa:",2
"Kod(ZUS):",28
"Opis kodu:",29
"Typ sk|ladnika:",49
"Ilo|s|c miesi|ecy:",63
"Konto Wn:",19
"Doda|c symb.prac WN:",20
"Konto Ma:",21
"Doda|c symb.prac. Ma:",22
"Ujemny",25
"Okre|slony w sta|lej wysoko|sci:",48
"Do kartoteki",24
"Do wyp|laty",34
"Przys|luguje tylko za okres przerwy w op|lacaniu sk|ladek:",51
"Uwzgl|edniany przy liczeniu stawki za nadgodziny:",53
"Uwzgl|edniany w sk|ladce na zwi|azki zawodowe:",60
"Do podst.opodatkowania:",4
"Rodzaj zwolnienia od podatku:",72
"Do podst.urlopowego:",11
"Do podst.chorobowego:",12
"Uzupe|lniany:",42
"Opodatk.rycza|ltowo:",5
"% opod.rycza|lt.:",6
"Odliczy|c k.uzysk.:",7
"Odlicza|c ulg|e:",41
"Odlicza|c ZUS:",26
"Odlicza|c zdrow.:",27
"Odlicza|c chorobowe:",39
"Odlicza|c wypadkowe:",40
"Koszt uzysk.w %:",8
"Wielko|s|c k.uzysk.:",9
"Nie wchodzi do podstawy ZUS za okres przerwy w op|l. sk|ladek:",52
"Czy mno|zy|c stawk|e przez wymiar czasu:",16
"Wymiar czasu dla stawki(dzie|n,mies|ac,godzina):",18
"Sk|l.1 do premii:",30
"% sk|l.1:",31
"Sk|l.2 do premii:",32
"% sk|l.2:",33
"% indywidualny (1):",81
//"R|owne podstawy opodatkowania i ubezpiecze|n",35
"Metoda liczenia:",36
"Czy wynagrodzenie normalne:",64
"Czy dodatek za nadgodziny:",65
"% za godz.nadl.:",37
"czy podstawa to zasadnicze:",66
"% za godz.nocne:",38
"Pocz|atek naliczania sta|zowego:",43
"Pocz|atkowy % sta|zowego:",44
"Co ile lat zmieniana stawka:",80
"Progresja sta|zowego (%):",45
"Ko|ncowy % sta|zowego:",46
"Sk|l.1 do sta|zu:",54
"Sk|l.2 do sta|zu:",55
"Sk|l.1 do sk|ladki:",56
"Sk|l.2 do sk|ladki:",57
"% do sk|ladki:",58
//"Formu|la:",67
//"% z formu|ly:",68
"Podstawa trzynastki liczona z roku bie|z|acego:",71
"% dla wyliczenia trzynastki:",70
"Za okres d|lu|zszy ni|z miesi|ac:",69 
"Sk|ladka zdrowotna pomniejsza podatek:",73
"Sk|ladka zdrowotna nie obni|zana do wysoko|sci podatku:",74
"od kt|orego miesi|aca rozpocz|a|c naliczanie:",75
"% podstawy dla sk�adnika liczonego z kilku mies:",76
"% indywidualny(8):",82
"Kwota zwolniona z podatku:",79
"Symbol podstawy:",84
"% wskazanej podstawy:",83
"% indywidualny(9):",86
"Korygowany z tyt. nu:",61
"Korygowany z tyt. nn:",62
"Korygowany z tyt. zatrudnienia przez cz|e|s|c mies.:",85
//
% PLSKLAD2-WAR.DIC
"Symbol sk|ladnika:",1
"Nazwa sk|ladnika:",2
"Kod(ZUS):",28
// -----------------------------------------------------
// rejestr ze skladnikami wchodzacymi do podstawy wyliczenia skladnika glownego
// -----------------------------------------------------
% SKLADPOWTMP.RJR
100
1
SKLADPOWTMP

% SKLAD_POWIAZ.RJR # inicjalizacja rejestru
100
1
"SKLAD_POWIAZ"
"SKLAD_POWIAZ"

"Powt|orzony symbol sk|ladnika"
""
""
""
""
""
""
""
""
// --------------------------------------------
% SKLAD_POWIAZ.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
%< SKLADPOWTMP.DBF
//
% SKLADPOWTMP.DBF
100,string,10,2,1      # symbol skladnika glownego
101,string,10,2,3            # symbol skladnika powiazanego
102,byte		# metoda liczenia
103,string,14,,4	# klucz sk�adnik g��wny* metoda liczenia
103,0,,,2,,N   
101,0,,,2,,N
// --------------------------------------------
% SKLADPOWTMP.DIC,SKLAD_POWIAZ.DIC # slownik pol rekordu
"sklad_gl",100,Estring,"Sk|ladnik g|l|owny"    # symbol skladnika glownego
"sklad_pow",101,Estring,"Sk|ladnik powi|azany"    # symbol skladnika powiazanego
"sklad_met",102,Ekwota,"Metoda liczenia"	# metoda liczenia skladnika glownego
"sklad_klucz",103,Estring,"Klucz"		# klucz 
// --------------------------------------------
% SKLAD_POWIAZ.MEN
D=20
101
//
// -----------------------------------------------------
// rejestr z rodzajami skladnikow
// -----------------------------------------------------

% RODZSKL.RXR,XRODZSKL.RXR # rejestr plac
1 # symbol pola - klucza
1 # identyfikator klucza
RODZSKL # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c ten rodzaj z rejestru ?" 
"Chcesz doda|c jeszcze jednen rodzaj ?" 
"%s - nie ma takiego rodzaju w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnego rodzaju w rejestrze !"
"Rejestr rodzaj|ow pusty - wstawiasz pierwszy ?"
"Nie ma rodzaju o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak rodzaju o takim symbolu !"

% RODZSKL.DBF # rejestr plac - struktura rekordu
0,log,,,,,D           # usuwanie "w miejscu"
1,string,10,2,1,,N   # symbol zgodny z Programem Platnika
2,string,90,2         # rodzaj skladnika
3,string,11,2,3	      # symbol poprzedzony zerami
% RODZSKL.DIC # slownik  rejestru plac
"rodzskl",1,Estring,"Rodzaj"                # symbol grupy
"nazwarodz",2,Estring,"Nazwa sk|ladnika"    # rodzaj skladnika
"klucz",3,Estring				# klucz porzadkujacy
% RODZSKL.BOX
D = "Rodzaj sk|ladnika"
"Rodzaj sk|ladnika",1
"Nazwa sk|ladnika",2

// -----------------------------------------------------
// rejestr do prezentacji list wzorcowych
// -----------------------------------------------------

% PLPREZ2.RXR,XPLPREZ2.RXR # rejestr prezentacji list plac
1 # symbol pola - klucza
1 # identyfikator klucza
PLPREZ2 # nazwa danych
PLPREZ2M # 
#
PLPREZ2-WAR
% PLPREZ2-WAR.DIC
"Symbol listy p|lac",1
"Nazwa listy p|lac",2
"Zwi|azana z umow|a o prac|e",7
"Zwi|azana z inn|a umow|a",8
"Wyr|o|znik do deklaracji PIT",14

% PLPREZ2-WAR1.DIC
"Symbol pracownika/sk|ladnika",3
"Nazwa pracownika/sk|ladnika",4
% PLPREZ2.DBF # rejestr prezentacji list plac - struktura rekordu
0,log,,,,,D             # usuwanie "w miejscu"
1,string,30,2,1         # symbol listy plac
2,string,60,1,2          # nazwa listy plac
3,string,60,2           # dodatkowy parametr do prezentacji
4,string,60,2,5           # dodatkowy parametr do prezentacji 
5,string,30,2,7           # wydzial
11,string,20            # konto dluznika
12,string,60            # nazwa banku dluznika
13,string,60            # numer rachunku dluznika
99,ulong,,,6,,NM        # numer rekordu
7,log                   # lista podstawowa
8,log                   # lista do wyplat z tytulu umow zlecenia
14,string,3,1,4             # wyroznik listy
15,log                    # czy odliczac KUP
16,log                    # czy lista wyrownujaca wynagrodzenie
17,log                    # czy lista samodzielna
18,byte                   # czy zatrudniony: 0 -nie dotyczy,1-zatrudniony, 2- zwolniony
19,string,10		# prefix symbolu umowy dla zlecen
20,string,20		# sufix symbolu umowy dla zlecen
1,0,,,3                   # klucz2 zlozony: indeks listy
3,0,,,3                   # i indeks skladnika

% PLPREZ2.DIC # slownik rejestru prezentacji list plac
"symlista2",1,Estring   # symbol listy plac
"nazlista2",2,Estring   # nazwa listy plac
"parametr1",3,Estring   # dodatkowy parametr do prezentacji
"parametr2",4,Estring   # dodatkowy parametr do prezentacji
"wydzial",5,Estring     # wydzial
"dokid2",99,Ekwota      # numer rekordu
"podstawowa",7,Elog     # lista podstawowa
"zlecenia",8,Elog       # lista do wyplat z tytulu umow zlecenia
"dluzkonto",11,EString # konto dluznika
"dluznazwabanku",12,Estring # nazwa banku dluznika
"dluznumerbanku",13,EString # numer banku dluiznika
"wyroznik",14,Estring   # wyroznik
"czykup",15,Elog     # czy odliczac KUP
"wyrownanie",16,Elog   # czy lista wyrownujaca wynagrodzenie
"samodzielna",17,Elog  # lista nie uwzgledniajaca wplywu innych list
"status",18,Ekwota     # czy zatrudniony ( tylko w przypadku skladnikow)
"sym_prefix",19,Estring	# prefix symbolu umowy dla zlecen
"sym_suffix",20,Estring	# suffix symbolu umowy dla zlecen
% PLPREZ2.MEN
D= ,"Listy wzorcowe",A
1,,,,,"Symbol listy wzorcowej"
2,,,,,"Nazwa"
% PLPREZ2-KOLUMNY.DIC
"symlista2",1,,"Symbol"
"nazlista2",2,,"Nazwa"
"parametr1",3,,"Parametr 1"
"parametr2",4,,"Parametr 2"
"wydzial",5,,"Wydzia|l"
"podstawowa",7,,"P"
"zlecenia",8,,"Z"
"wyroznik",14,,"Wyr"
"czykup",15,,"KUP"
"wyrownanie",16,,"Wyr."
"samodzielna",17,,"Sam."
% PLPREZ2-MENU-0.DLG
##1,,AD,,@17
##3,,AD,,@4
##100,0,ADP,,,,,,,,MENU_NA_REKORDY:PLPREZ2,M,KLUCZ,1

  #1            #   #3            #



#100













                                                                   #100<
% PLZAP2.RXR
99 # symbol pola - klucza
1  # identyfikator klucza
PLZAP2 # nazwa danych

ZAZNACZAJ-MENU:3
% PLZAP2.DBF
0,log,,,,,D
%< PLTMP2.DBF

% PLTMP2.DBF
1,string,20,,2           # symbol pracownika
2,string,,192,2           # symbol skladnika
3,log                     # zazaczenie skladnika
4,string,60,2             # nazwa pracownika
5,string,60,2             # nazwa skladnika
6,string,30,2             # wydzial
99,ulong,,,1              # dowiazanie do naglowka (pole 99)
7,byte                    # status ( czy zatrudniony) 0- nie dotyczy, 1- zatrudniony, 2- nie zatrudniony
1,0,,,2                   # klucz2 zlozony: indeks pracownika
2,0,,,2                   # i indeks skladnika
1,0,,,3                   # klucz2 zlozony: indeks pracownika
2,0,,,3                   # indeks skladnika
99,0,,,3                  # i numer pozycji

% PLZAP2.DIC,PLTMP2.DIC
"pracownik2",1,Estring    # symbol pracownika
"skladnik2",2,Estring     # symbol skladnika
"zaznacz",3,Elog          # zazaczenie skladnika
"nazprac",4,Estring       # nazwa pracownika
"nazsklad",5,Estring      # nazwa skladnika
"wydzial",6,Estring       # wydzial
"dokidzap2",99,Ekwota     # dowiazanie do naglowka (pole 99)
"status",7,Ekwota         # status ( czy zatrudniony) 0- nie dotyczy, 1- zatrudniony, 2- nie zatrudniony
// -----------------------------------------------
// rejestr numerow list plac
// -----------------------------------------------

% NRLIST.RXR,NRLIST2.RXR # rejestr numerow list
100 # symbol pola - klucza
1 # identyfikator klucza
NRLIST # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c t|a list|e z rejestru ?" 
"Chcesz doda|c jeszcze jedn|a list|e ?" 
"%s - nie ma takiej listy w rejestrze.$Czy chcesz doda|c now|a ?" 
"Nie ma |zadnych list w rejestrze !"
"Rejestr list pusty - wstawiasz pierwsz|a ?"
"Nie ma listy o takim symbolu.$Znale|x|c nast|epn|a ?"
"%s - brak listy o takim symbolu !"


"NR-LIST-NIE-DODAWAJ"

% NR-LIST-NIE-DODAWAJ.ALG
  OkAlert["Nie mo|zna tutaj dodawa|c symbol|ow !"]
  A_OK := .N.

% NRLIST.DBF # rejestr list - struktura rekordu
0,log,,,,,D            # usuwanie "w miejscu"
//100,string,,30720,1,,N # symbol i numer
//100,string,16,,1,,N # symbol i numer
100,string,16,,1	 # symbol i numer
101,string,40,2,4        # symbol listy
102,kwota,,,2          # numer listy
103,ydate              # data listy
104,kwota              # numer wzorca
105,string,40          # tekst anulacja
106,string,5           # wyplata za rok, miesiac
107,ydate              # data przelewu
108,log                # zaznaczanie
109,string,80		# opis listy
105,0,,,3              # klucz zlozony tekst*
102,0,,,3              # numer listy
103,0,,,5
102,0,,,5
% NRLIST.DIC # slownik do danych o kliencie
"listanumer",100,Estring,"Lista"  # lista i numer
"lista",101,Estring,"Wzorzec"       # symbol listy
"nrlisty",102,Ekwota,"Nr"      # numer listy
"datalisty",103,Edata,"Data wyp"     # data listy
"nrwzorca",104,Ekwota     # numer wzorca
"anulacja",105,Estring,"Uwagi"    # anulacja
"mieswypl",106,Estring,"Mies"    # wyplata za rok, miesiac
"dataprzel0",107,Edata    # data przelewu
"zaznacz",108,Elog        # zaznacz
"listaopis",109,Estring,"Opis listy"   # opis listy
// ----------------------------------------
// rejestr numerow list plac do zaznaczania
// ----------------------------------------
% NRLISTX.RXR,NRLISTUX.RXR      # rejestr numerow list
100 # symbol pola - klucza
1 # identyfikator klucza
NRLISTX # nazwa danych
# buttony - menu
//# buttony - box
ZAZNACZAJ-MENU:108
"Powt|orzony symbol !"
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c t|a list|e z rejestru ?" 
"Chcesz doda|c jeszcze jedn|a list|e ?" 
"%s - nie ma takiej listy w rejestrze.$Czy chcesz doda|c now|a ?" 
"Nie ma |zadnych list w rejestrze !"
"Rejestr list pusty - wstawiasz pierwsz|a ?"
"Nie ma listy o takim symbolu.$Znale|x|c nast|epn|a ?"
"%s - brak listy o takim symbolu !"


"NR-LIST-NIE-DODAWAJx"

% NR-LIST-NIE-DODAWAJx.ALG
  OkAlert["Nie mo|zna tutaj dodawa|c symbol|ow !"]
  A_OK := .N.

% NRLISTX.DBF # rejestr list - struktura rekordu
%< NRLIST.DBF
% NRLISTX.DIC # rejestr list - struktura rekordu
%< NRLIST.DIC
// ----------------------------------------
// rejestr list plac
// ----------------------------------------

% PLLISTY.RXR,RNLISTY.RXR,ZLLISTY.RXR,PLLISTYX.RXR # rejestr wzorcowych list plac i powiazan
1 # symbol pola - klucza
1 # identyfikator klucza
PLLISTY # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol !" 
"Zmieniasz dane ?"
"Dodajesz nowe dane ?" 
"Usun|a|c t|e list|e z rejestru ?" 
"Chcesz doda|c jeszcze jedn|a  list|e ?" 
"%s - nie ma takiej listy w rejestrze.$Czy chcesz doda|c now|a ?" 
"Nie ma |zadnych  list w rejestrze !"
"Rejestr list pusty - wstawiasz pierwsz|a ?"
"Nie ma listy o takim symbolu.$Znale|x|c nast|epn|a ?"
"%s - brak  listy o takim symbolu !"
% PLLISTY.DBF # rejestr plac - struktura rekordu
0,log,,,,,D           # usuwanie "w miejscu"
1,string,30,2,1       # symbol listy plac
2,string,60           # nazwa listy plac
3,string,20,,3        # indeks pracownika
4,string,,192,4       # indeks skladnika
5,log                 # do zaznaczania
6,string,30           # wydzial
7,log                 # lista podstawowa
8,log                 # lista do wyplat z tytulu umow zlecenia
10,dic,,41            # typ umowy
11,string,20          # konto dluznika
12,string,60          # nazwa banku dluznika
13,string,60          # numer rachunku dluznika
14,string,3           # wyroznik listy
15,log                # czy odliczac KUP
16,log                # czy lista wyrownujaca
17,log                # czy lista samodzielna
18,string,10		#prefix dla umow zlecen - symbol umowy
19,string,20		#sufix dla umow zlecen - symbol umowy
1,0,,,6                 # klucz6 zlozony: indeks listy plac
3,0,,,6                 #  indeks pracownika
4,0,,,6                 # i indeks skladnika
1,0,,,7                 # klucz7 zlozony: symbol listy
4,0,,,7                 # i indeks skladnika
5,0,,,7                 # i zaznacz
1,0,,,8                 # klucz8 zlozony: symbol listy
3,0,,,8                 # i indeks pracownika
5,0,,,8                 # i zaznacz

% PLLISTY.DIC # slownik  rejestru plac
"symlista",1,Estring    # symbol listy plac
"nazlista",2,Estring    # nazwa listy plac
"pracownik",3,Estring   # indeks pracownika
"skladnik",4,Estring    # indeks skladnika
"zaznacz",5,Elog        # zaznaczenie
"wydzial",6,Estring     # wydzial
"podstawowa",7,Elog     # lista podstawowa
"zlecenia",8,Elog       # lista do wyplat z tytulu umow zlecenia
"typumowy",10,Estring   # typ umowy
"dluzkonto",11,EString # konto dluznika
"dluznazwabanku",12,Estring # nazwa banku dluznika
"dluznumerbanku",13,EString # numer banku dluiznika
"wyroznik",14,Estring     # wyroznik listy
"czykup",15,Elog          #czy odliczac KUP
"wyrownanie",16,Elog      # czy lista wyrownujaca
"samodzielna",17,Elog     # lista nie uwzgledniajaca innych list w miesiacu
"sym_prefix",18,Estring	  # prefix dla umow zlecen - symbol umowy
"sym_suffix",19,Estring	  # suffix dla umow zlecen - symbol umowy
// ------------------------------------------------------
// rejestr stawek
// ------------------------------------------------------

% PLCPODMENU.MEN
D=76
100,,,,9
101,,,,4
103,,,,4
105,,,,4
107,,,,4
109,,,,4
111,,,,4
121,,,,5
122,,,,5
120,,,,5
123,,,,5
117,,,,5 

% PLCPOD-MENU-1.DLG
%< PLCPOD-MENU-X.XXX
%< REJESTRY-BUTTONY-1.XXX
%< PLCPOD-MENU-MODIF.XXX
%< PLCPOD-MENU-Y.XXX
//
% PLCPOD-MENU-0.DLG
%< PLCPOD-MENU-X.XXX
%< REJESTRY-BUTTONY-0.XXX
%< PLCPOD-MENU-MODIF.XXX
%< PLCPOD-MENU-Y.XXX
//
% PLCPOD-MENU-3.DLG
%< PLCPOD-MENU-X.XXX
%< REJESTRY-BUTTONY-1.XXX
%< PLCPOD-MENU-LOOK.XXX
%< PLCPOD-MENU-Y.XXX
//
% PLCPOD-MENU-2.DLG
%< PLCPOD-MENU-X.XXX
%< REJESTRY-BUTTONY-1.XXX
%< PLCPOD-MENU-LOOK.XXX
%< PLCPOD-MENU-Y.XXX
//
% PLCPOD-MENU-X.XXX
##DEFWINDOW = 3,5,,76,ADPSH,,,,,"Stawki podatkowe i ubezpieczeniowe"
##100,0,BCMP,,,,,,,,MENU_NA_REKORDY:PLCPODMENU,,KLUCZ,1
##101,TLD,0,,"Data pocz.     Stawki  podatku (%)         Stawki ubezpieczeniowe (%)  ",,&&black/yellow
##102,TLD,0,,"obowi|azyw. 1    2    3    4    5    6   Emer. Rent. Wypad.Chor. Zdrow. ",,&&black/yellow
##1,,ADP,,"%W%yb|or"
##5,LBGT,0,,@18,,&&blue/lwhite,&&white/lblue
##4,LBGT,0,,@19,,&&blue/lwhite,&&white/lblue
##6,LBGT,0,,@20,,&&blue/lwhite,&&white/lblue
##2,LBGT,0,,"%O%pis ",,&&blue/lwhite,&&white/lblue
##200,DZ,0,,,,&&blue/lwhite,&&white/lblue
##201,DZ,P,,"Rok"
##7,0,P
% PLCPOD-MENU-Y.XXX
#101                                                                   #
#102                                                                   #

#100                                                                   #100
 
% PLCPOD-MENU-MODIF.XXX
                    #200 #5    #  #4    #  #6    #                     #200
% PLCPOD-MENU-LOOK.XXX                               
                    #200 #2         #�                                 #200
// ----------------------------------------
// rekord
// ----------------------------------------
% TABLICA-AKCJI-PLCPOD-STRONA-0
"AKCJA-PO-POLU12",PLCPOD12
"AKCJA-PO-POLU14",PLCPOD14
"AKCJA-PO-POLU16",PLCPOD16

% TABLICA-AKCJI-PLCPOD-STRONA-zobacz-0,TABLICA-AKCJI-PLCPOD-STRONA-zobacz-1,TABLICA-AKCJI-PLCPOD-STRONA-zobacz-2
"AKCJA-PRZED-WYKONYWANIEM",!exdialogop["pozycjaniewprowadzana","*"]
% PLCPOD12.ALG
 xrejwstawp_k["progm2",rejwezp_k["prog1"]]
 exdialogop["wyswietlpozycje","34"]
 exitalg[0]
% PLCPOD14.ALG
 xrejwstawp_k["progm3",rejwezp_k["prog2"]]
 exdialogop["wyswietlpozycje","36"]
 exitalg[0]
% PLCPOD16.ALG
 xrejwstawp_k["progm4",rejwezp_k["prog3"]]
 exdialogop["wyswietlpozycje","38"]
 exitalg[0]
% PLCPOD-STRONA-0.DLG,PLCPOD-STRONA-zobacz-0.DLG
##DEFWINDOW=,,,,H,,,,,"Stawki podatku"
##11,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:proc1
##12,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:prog1
##13,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:proc2
##34,D,0,,,,&&black/lwhite,&&white/lblue,,,POLE:progm2
##14,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:prog2
##15,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:proc3
##36,D,0,,,,&&black/lwhite,&&white/lblue,,,POLE:progm3
##16,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:prog3
##17,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:proc4
##38,D,0,,,,&&black/lwhite,&&white/lblue,,,POLE:progm4
##18,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:prog4
##23,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:k_uzys
##24,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:k_zw

�������������������������������������������Ŀ���������������������������Ŀ
�Lp � Stawki  �        Prog podatkowy       �� Miesieczna  �  Miesieczna �
�   � podatku �     ponad           do      ��stawka kosztu�  stawka ulgi�
�������������������������������������������Ĵ�  uzyskania  �  podatkowej �
� 1.�  #11 #% �            0 � #12        # �� przychodow  �             �
� 2.�  #13 #% � #34        # � #14        # ����������������������������Ĵ     
� 3.�  #15 #% � #36        # � #16        # ��  #23      # �  #24      # �
� 4.�  #17 #% � #38        # � #18        # ��             �             �
��������������������������������������������������������������������������

% PLCPOD-STRONA-1.DLG,PLCPOD-STRONA-zobacz-1.DLG
##DEFWINDOW=,,,,H,,,,,"Sk|ladki na ubezpieczenia"
##26,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:uep
##27,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:urp
##28,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:uwp
##29,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:ueu
##30,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:uru
##31,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:ucu
##32,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:uzu
##48,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:uzo
##51,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:epkontown
##43,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:ekontown
##53,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:rpkontown
##44,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:rkontown
##45,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:wkontown
##52,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:epkonto 
##33,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:ekonto 
##54,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:rpkonto 
##34,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:rkonto 
##36,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:wkonto
##35,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:ckonto
##37,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:zkonto
##38,0,0,,,,&&black/lwhite,&&white/blue,,,POLE:progub
���������������������������������������������������������������������������Ŀ
�           Parametry ZUS (ustawowe)    �          Dekret ksi|egowy          �
���������������������������������������������������������������������������Ĵ
�    Rodzaj    �   Pokrywa �   Pokrywa  �     Konto      �Konto rozrachunk|ow�      
� ubezpieczenia�   p|latnik �ubezpieczony�    kosztowe    �publicznoprawnych �         
���������������������������������������������������������������������������Ĵ
� emerytalne   �   #26 #%  �            �#51            #� #52            # �
�              �           �   #29 #%   �                � #33            # �
� rentowe      �   #27 #%  �            �#53            #� #54            # �
�              �           �   #30 #%   �                � #34            # �
� wypadkowe    �   #28 #%  �            �#45            #� #36            # �
� chorobowe    �           �   #31 #%   �                � #35            # �
� zdrowotne    �           �   #32 #%   �                � #37            # �
� zdrowotne odliczane      �   #48 #%   �                �                  �
�����������������������������������������������������������������������������
Pr|og ubezpieczeniowy (sk|ladki emerytalne i rentowe):  #38               #

% PLCPOD-STRONA-2.DLG,PLCPOD-STRONA-zobacz-2.DLG
##DEFWINDOW=,,,,H,,,,,"Odpisy na fundusze"
##39,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:fgp
##46,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:fgkontown
##40,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:fgkonto
##41,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:fpp
##47,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:fpkontown
##42,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:fpkonto
##48,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:fep
##49,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:fekontown
##50,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:fekonto

���������������������������������������������������������������������������Ŀ
�           Parametry dla funduszy      �          Dekret ksi|egowy          �
���������������������������������������������������������������������������Ĵ
�    Rodzaj    �   Pokrywa �   Pokrywa  �     Konto      �Konto rozrachunk|ow�  
�   funduszu   �   p|latnik �ubezpieczony�    kosztowe    �publicznoprawnych �         
���������������������������������������������������������������������������Ĵ
� F.G.|S.P.     �   #39 #%  �            �#46            #� #40            # �
� F.P.         �   #41 #%  �            �#47            #� #42            # �
� F.E.P.       �   #48 #%  �            �#49            #� #50            # �
�����������������������������������������������������������������������������

% PLCPOD.XXX
PRZYCISK_CANCELID = 1
##DEFWINDOW=5,,,,ADP
##10,0,AC,,,,&&black/lwhite,&&white/lblue,,,POLEUNIKALNE:rokpod
##100,0,BDPMH,,,,,,,,WLASCIWOSCIKOLEJNY:doprzodu=1,dotylu=5
##5,,ADP,,
##1,,ADP,,
##2,,ADP,,@4
##3,,ADP,,"OK"
##4,0,0,,,,&&black/lwhite,&&white/lblue,,,Zmienna:rokxx,string:33792

 Data pocz|atku obowi|azywania: #10      #<  

     
#100                                                                         #


//--------------------------------------------
% PLCPOD-REKORD-1.DLG
%<PLCPOD.XXX
 #5     #  #1        #    #2        #   Przepisz z: #4       #< #3 #
//
% PLCPOD-REKORD-3.DLG,PLCPOD-REKORD-0.DLG
%<PLCPOD.XXX
 #5     #  #1        #             #2        #
//
% PLCPOD-REKORD-2.DLG
%<PLCPOD.XXX
 #5     #  #1        #             #2        #
//
% PLACE-POD-REKORD-PRZEPISZ.ALG
  if(not(rokxx="")) goto sprawdz
  okalert["Podaj symbol roku |xr|od|lowego!"]
  ExDialogOp["IdzDoPozycji","4"]
  ExitAlg[0]
  sprawdz:
  rokpod_new := rejwezp_s["rokpod"]
  rejop["MM:otworzrejsprawdz","PLCPOD.RXR"]
  if(rejop["MM:znajdzrek",rokxx]) goto przepisz
  okalert["Nie znaleziono roku o symbolu "+rokxx+"!"]
  ExDialogOp["IdzDoPozycji","4"]
  ExitAlg[0]
  przepisz:
  if(not(yesalert["Czy przepisa|c stawki podatkowe i ubezpieczeniowe z roku "+rokxx+"?"])) exitalg[0]
  rejOp["MM:przeniespola",""]
  xrejwstawP_S["rokpod",rokpod_new]
  exdialogop["wyswietlpozycje","11"]
  exdialogop["wyswietlpozycje","12"]
  exdialogop["wyswietlpozycje","13"]
  exdialogop["wyswietlpozycje","14"]
  exdialogop["wyswietlpozycje","15"]
  exdialogop["wyswietlpozycje","16"]
  exdialogop["wyswietlpozycje","17"]
  exdialogop["wyswietlpozycje","18"]
  exdialogop["wyswietlpozycje","23"]
  exdialogop["wyswietlpozycje","24"]
  exdialogop["wyswietlpozycje","10"]
  Exdialogop["idzdopozycji","11"]
  RejOp["MM:Zamknijrej",""]
% PLACE-PO-POLU10.ALG
  if(RejWezP_S["rokpod"]="") exitalg[0]
  data := stringnadate[RejWezP_S["rokpod"]]
  if(data='') goto xx
  Exitalg[0]
    xx:
    OkAlert["Nieprawid|lowa data pocz|atku obowi|azywania nowych stawek !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
% PLACE-PO-POLU4.ALG
  if(rokxx="") exitalg[0]
  data := stringnadate[rokxx]
  if(data='') goto xx
  Exitalg[0]
    xx:
    OkAlert["Nieprawid|lowa data!"]
    ExDialogOp["IdzDoPozycji","4"]
    ExitAlg[0]

% PLACE-POD-REKORD-AKCEPTUJESZ.ALG
  if(not(RejWezP_S["rokpod"]="")) goto dalej1
    OkAlert["Wprowad|x dat|e pocz|atku obowi|azywania nowych stawek !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
  dalej1:
  if(not(RejWezP_K["proc1"]=.)) goto dalej2
    OkAlert["Musi by|c wprowadzona przynajmniej jedna stawka podatkowa !"]
    ExDialogOp["IdzDoPozycji","11"]
    ExitAlg[0]
  dalej2:
  ExDialogOp["KoniecWykonywania",""]

% SPRAWDZ-CZY-LICZBA.ALG
    petla   := StrLen[tekst]           
petla:
    petla   := petla-1
    if(petla<0) goto koniec
    znaczek := StrCut[tekst,petla,1]
    if(znaczek="0") goto petla
    if(znaczek="1") goto petla
    if(znaczek="2") goto petla
    if(znaczek="3") goto petla
    if(znaczek="4") goto petla
    if(znaczek="5") goto petla
    if(znaczek="6") goto petla
    if(znaczek="7") goto petla
    if(znaczek="8") goto petla
    if(znaczek="9") goto petla
    ok_liczba := .N.
koniec: 

% TABLICA-PYT-AKCJI-PLCPOD-REKORD-1
"AKCJA-PRZED-WYSWIETLENIEM",import place_pod | place_pod.dodaj_d(1)
"AKCJA-BUTTON1",import pers | pers.callalg("PLACE-POD-REKORD-AKCEPTUJESZ")
"AKCJA-BUTTON3",import pers | pers.callalg("PLACE-POD-REKORD-PRZEPISZ")
"AKCJA-PO-POLU10",import pers | pers.callalg("PLACE-PO-POLU10")
"AKCJA-F2-POLE4",SL.ustawazmienna_S("D_STRING");gl_f2_rejestr("PLCPOD.RXR","rokpod")
"AKCJA-PO-POLU4",import pers | pers.callalg("PLACE-PO-POLU4")

% TABLICA-PYT-AKCJI-PLCPOD-REKORD-0
"AKCJA-PRZED-WYSWIETLENIEM",import place_pod | place_pod.dodaj_d(0)
"AKCJA-BUTTON1",import pers | pers.callalg("PLACE-POD-REKORD-AKCEPTUJESZ")

% TABLICA-PYT-AKCJI-PLCPOD-REKORD-2
"AKCJA-PRZED-WYSWIETLENIEM",import place_pod | place_pod.dodaj_d_zobacz()
// maria
% DIALOG-PASEK-DANE_KADROWE.DLG
##DEFWINDOW = 12,4,12,75,ACHP,,,,,"Pobieranie danych kadrowych - prosz|e czeka|c"

% NALICZ_DANE_KADROWE.ALG
//okalert["nalicz_dane_kadrowe"]
// zmienne
//  datapocz := '99.12.01'
//  datakon  := '99.12.31'

  ildni_wzor  := 30
    ildniokres  := datakon - datapocz + 1
//  if(ildniokres < ildni_wzor) ildni_wzor  := ildniokres
    date_beg    := ''
    date_end    := ''
    xokres      := ""
    til_dni_all := 0
    til_gdz_all := 0
    til_dni_rob := 0
    til_gdz_rob := 0
    xil_dni_all := 0
    xil_gdz_all := 0
    xil_dni_rob := 0
    xil_gdz_rob := 0
    il_dni_all := 0
    il_gdz_all := 0
    il_dni_rob := 0
    il_gdz_rob := 0
    rztil_dni_rob := 0
    rztil_gdz_rob := 0
    rztil_dni_all := 0
    rztil_gdz_all := 0
    wynagr_podstawa := 0
wynagr_podstawa1 := 0
wynagr_zasadnicz := 0
wynagr_lekarsk00 := 0
wynagr_lekarsk80 := 0
wynagr_lekarsk70 := 0
wynagr_lekarsk75 := 0
wynagr_lekarsk90 := 0
wynagr_wypoczynk := 0
wynagr_ekwiwalen := 0
zabor_bezplatny := 0
zabor_lekarsk00 := 0
zabor_lekarsk80 := 0
zabor_lekarsk70 := 0
zabor_lekarsk75 := 0
zabor_lekarsk90 := 0
zabor_wypoczynk := 0
zabor_ekwiwalen := 0
ildnirob_bezplatny := 0
ilgdzrob_bezplatny := 0
ildnirob_nn := 0
ildnirob_bww := 0
ilgdzrob_nn := 0
ildniall_lekarskie := 0
ilgdzall_lekarskie := 0
ildniall_lekarsk00 := 0
ildnirall_lekarsk00 := 0
ilgdzall_lekarsk00 := 0
ildniall_lekarsk80 := 0
ildnirall_lekarsk80 := 0
ilgdzall_lekarsk80 := 0
ildniall_lekarsk70 := 0
ildnirall_lekarsk70 := 0
ilgdzall_lekarsk70 := 0
ildniall_lekarsk75 := 0
ildnirall_lekarsk75 := 0
ilgdzall_lekarsk75 := 0
ildniall_lekarsk90 := 0
ildnirall_lekarsk90 := 0
ilgdzall_lekarsk90 := 0
ildnirob_wypoczynk := 0
ilgdzrob_wypoczynk := 0
ildnirob_ekwiwalen := 0
ilgdzrob_ekwiwalen := 0
ildnirob_oko := 0
ilgdzrob_oko := 0
ildnirob_szk := 0
ilgdzrob_szk := 0
zabor_oko := 0
zabor_szk := 0
wynagr_oko := 0
wynagr_szk := 0
stawka := 0
il_godz_przeprac := 0
il_dni_przeprac := 0
il_dni_robocz := 0
il_godz_robocz := 0
rzil_dni_robocz := 0
rzil_godz_robocz := 0
rzil_dni_all := 0
rzil_godz_all := 0
rztil_dni_all := 0
rztil_godz_all := 0
wymiar := ""
poczatek_choroby := ''
poczatek_reh := ''
RejOp["C:OtworzRejsprawdz","PODATNIK.RXR"]
if (RejOp["C:WezPierwszyRek",""]) goto _ok_C
OkAlert["Rejestr pracownik|ow jest pusty !!!"]
brak := .N.
goto _end_C
_ok_C:
//okalert["tu"]
RejOp["UsunPlikRej","PLC_KDR.RJR"]
RejOp["DK:OtworzRejsprawdz","PLC_KDR.RJR"]
RejOp["PP:OtworzRejsprawdz","PRZEBIEG.RXR"]
RejOp["CE:OtworzRejsprawdz","NIEOBEC.RXR"]
RejOp["CB:OtworzRejsprawdz","RODZNIEO.RXR"]
REjop["PW:otworzrejsprawdz","PLPOWIAZ.RXR"]
RejOp["PP:ZmienKluczRej","4"]
RejOp["CE:ZmienKluczRej","4"]
RejOp["PW:ZmienKluczRej","8"]
Ustawczekajinfo["start4","Pobieranie danych kadrowych .... prosz|e czeka|c"]
//
KL_D_ROK := A_DATE[Poczrok_ksieg,"Y"]
KL_D_LITERA := "K:"
KL_D_LICZBA := .
KL_D_LICZBAMIN := .
KL_D_PRAC := .N.
// MARIAXX
KL_D_GRUPA := ""
CallAlg["KL-OTWORZ-KALENDARZ"]
// wyliczenie danych dla harmonogramu podstawowy
 podst_til_dni_all := .
 podst_til_gdz_all := .
 podst_til_dni_rob := .
 podst_til_gdz_rob := .
callalg["pobierz_godz_podstawowe"]
// okalert["podst_til_gdz_rob ="+ podst_til_gdz_rob]
//
_next_C:
zl := .T.
if(not(rejop["PW:znajdzrek",symlisty+"*"+rejwezp_s["c:sym"]+"*T"])) goto _loop_c
//okalert["symlisty = "+symlisty+"pracownik="+ rejwezp_s["c:sym"]]
// maria - jesli pracownik zwolniony ale ma zaznaczone naliczac place - to zostana mu naliczone
//if (not (RejWezP_L["C:czyzatrud"])) goto _loop_C
if (not (RejWezP_L["C:pnaliczac"])) goto _loop_C
// ustalenie daty zatrudnienia i zwolnienia
data_zat := rejwezp_d["c:dzatrud"]
data_zw := rejwezp_d["c:dzwolnien"]
wymiar := ""
poczatek_choroby := ''
poczatek_reh := ''
CallAlg["POBIERZ_DANE_KADROWE"]
_loop_C:
ustawczekajinfo["nastepny",""]
if (RejOp["C:WezNastepnyRek",""]) goto _next_C
_end_C:
CallAlg["KL-ZAMKNIJ-KALENDARZ"]
// aktualizacja danych dotyczacych podstawy chorobowego dla osob wystepujacych na liscie i chorujacych w danym okresie
callalgfile["place/place_odtwarzanie_sum.alg","ODTWARZANIE-plchor1_listy"]
ustawczekajinfo["stop",""]
RejOp["C:ZamknijRej",""]
RejOp["PP:ZamknijRej",""]
RejOp["PW:ZamknijRej",""]
RejOp["CE:ZamknijRej",""]
RejOp["CB:ZamknijRej",""]
RejOp["DK:ZamknijRej",""]
if (brak) ExitAlg[1]
//
% pobierz_godz_podstawowe.alg
date_beg := datapocz
date_end := datakon
idx := ""+datapocz
kl_d_grupa := "<podstawowy>"
  idx := "##<podstawowy>"+StrCut[idx,0,2]+StrCut[idx,3,2]
// xokres_placa - to zmienna do prawidlowego wybrania miesiaca naliczania plac - w przypadku gdy sa nierozliczone nieobecnosci pop. mies
  if (RejOp["DK:ZnajdzRek",idx]) goto _read
  CallAlg["LICZBA_DNI_I_GODZIN"]
 podst_til_dni_all := il_dni_all
 podst_til_gdz_all := il_gdz_all
 podst_til_dni_rob := il_dni_rob
 podst_til_gdz_rob := il_gdz_rob
  RejOp["DK:DodajRek",""]
  xRejWstawP_S["DK:KDR_sym",idx]
  xRejWstawP_K["DK:til_dni_all",podst_til_dni_all]
  xRejWstawP_K["DK:til_gdz_all",podst_til_gdz_all]
  xRejWstawP_K["DK:til_dni_rob",podst_til_dni_rob]
  xRejWstawP_K["DK:til_gdz_rob",podst_til_gdz_rob]
  RejOp["DK:ZapiszRek",""]
  ExitAlg[0]
 _read:
  podst_til_dni_all := RejWezP_K["DK:til_dni_all"]
  podst_til_gdz_all := RejWezP_K["DK:til_gdz_all"]
  podst_til_dni_rob := RejWezP_K["DK:til_dni_rob"]
  podst_til_gdz_rob := RejWezP_K["DK:til_gdz_rob"]

% pobierz_godz_robocze.alg
date_beg := datapocz
date_end := datakon
idx := ""+datapocz
kl_d_grupa := "<podstawowy>"
  idx := "##<podstawowy>"+StrCut[idx,0,2]+StrCut[idx,3,2]
// xokres_placa - to zmienna do prawidlowego wybrania miesiaca naliczania plac - w przypadku gdy sa nierozliczone nieobecnosci pop. mies
  CallAlg["LICZBA_DNI_I_GODZIN"]
 podst_til_dni_all := il_dni_all
 podst_til_gdz_all := il_gdz_all
 podst_til_dni_rob := il_dni_rob
 podst_til_gdz_rob := il_gdz_rob

% POBIERZ_DANE_KADROWE.ALG
idx_prc := RejWezP_S["C:sym"]
bo_dnichor := rejwezp_k["c:bo_dnichor"]
pwynagrodz := .
xokres := ""
xokres_placa := ""
KL_D_GRUPA := rejwezp_s["c:kalengrupa"]
if(KL_D_GRUPA = "") KL_D_GRUPA := "<podstawowy>"
CallAlg["ZEROWANIE_LICZNIKOW"]
CallAlg["LICZ_WYNAGRODZENIE"]
xokres_placa := xokres
CallAlg["LICZ_NIEOBECNOSCI"]
//zabor_stawka := RoundN[wynagr_podstawa1 / ildni_wzor,2]
zabor_stawka := Round[wynagr_podstawa1 / ildni_wzor,2]
zabor_lekarsk00 := round[zabor_stawka * ildniall_lekarsk00,2]
zabor_lekarsk80 := round[zabor_stawka * ildniall_lekarsk80,2]
zabor_lekarsk70 := round[zabor_stawka * ildniall_lekarsk70,2]
zabor_lekarsk75 := round[zabor_stawka * ildniall_lekarsk75,2]
zabor_lekarsk90 := round[zabor_stawka * ildniall_lekarsk90,2]
CallAlg["LICZ_LEKARSK00"]
CallAlg["LICZ_LEKARSK80"]
CallAlg["LICZ_LEKARSK70"]
CallAlg["LICZ_LEKARSK75"]
CallAlg["LICZ_LEKARSK90"]
CallAlg["LICZ_WYPOCZYNK"]
CallAlg["LICZ_SZKOLENIOWY"]
CallAlg["LICZ_OKOLICZNOSCIOWY"]
CallAlg["LICZ_EKWIWALEN"]
//wynagr_zasadnicz   := wynagr_podstawa - zabor_bezplatny - zabor_wypoczynk  - zabor_szk  - zabor_oko - zabor_ekwiwalen - zabor_lekarsk00 - zabor_lekarsk80  - zabor_lekarsk70
wynagr_zasadnicz   := wynagr_podstawa - zabor_bezplatny - zabor_lekarsk00 - zabor_lekarsk80  - zabor_lekarsk70  - zabor_lekarsk75  - zabor_lekarsk90
//if(idx_prc=="1WD") okalert["wynagr_podstawa="+wynagr_podstawa+"$wynagr_zasadnicz="+wynagr_zasadnicz+"$zabor="+zabor_lekarsk00+" "+zabor_lekarsk90+" "+zabor_lekarsk80+" "+zabor_lekarsk75+" "+zabor_lekarsk70+" "+zabor_bezplatny]
xx_gdz_rob := rztil_gdz_rob-ilgdzrob_bezplatny-ilgdzall_lekarsk80-ilgdzall_lekarsk70-ilgdzall_lekarsk00-ilgdzall_lekarsk75-ilgdzall_lekarsk90
//if(rztil_gdz_rob-ilgdzrob_bezplatny-ilgdzall_lekarsk80-ilgdzall_lekarsk70-ilgdzall_lekarsk00 <=0 ) wynagr_zasadnicz := 0
if(til_dni_all<ildni_wzor  and xx_gdz_rob <=0)  wynagr_zasadnicz := 0
if(xx_gdz_rob <=0 and wynagr_zasadnicz<=0) wynagr_zasadnicz := 0
if(xx_gdz_rob >0 and wynagr_zasadnicz<=0) wynagr_zasadnicz := (wynagr_podstawa1/til_gdz_rob)*xx_gdz_rob
ildniall_lekarskie := ildniall_lekarskie - ildniall_lekarsk80 - ildniall_lekarsk00 - ildniall_lekarsk70 - ildniall_lekarsk75 - ildniall_lekarsk90
ilgdzall_lekarskie := ilgdzall_lekarskie - ilgdzall_lekarsk80 - ilgdzall_lekarsk00 - ilgdzall_lekarsk70 - ilgdzall_lekarsk75 - ilgdzall_lekarsk90
CallAlg["WRITE_REKORD_DK"]
% POBIERZ-DANE-PODSTAWOWA.ALG
wynpodst  := .
if(Not(RejOp["DK:ZnajdzRek",xpracownik])) ExitAlg[0]
wynpodst  := RejWezP_K["DK:KDR_wyn_pod"]
//
% POBIERZ-DANE-Z-MODULU-KADRY-PRZED.ALG
//okalert["POBIERZ-DANE-Z-MODULU-KADRY"]
defzmiennal["zmien_stawka",.T.]
xzbrutto   := .
xzbrutton   := .
wynagr_podstawa := 0
wynagr_zasadnicz := 0
wynagr_podstawa1 := 0
wynagr_podstawa2 := 0
wynagr_wypoczynk := 0
wynagr_oko := 0
wynagr_szk := 0
wynagr_ekwiwalen := 0
wynagr_lekarsk80 := 0
wynagr_lekarsk70 := 0
wynagr_lekarsk75 := 0
wynagr_lekarsk90 := 0
wynagr_lekarsk00 := 0
zabor_bezplatny := 0
zabor_wypoczynk := 0
zabor_szk := 0
zabor_oko := 0
zabor_ekwiwalen := 0
zabor_lekarsk80 := 0
zabor_lekarsk70 := 0
zabor_lekarsk75 := 0
zabor_lekarsk90 := 0
zabor_lekarsk00 := 0
ildnirob_bezplatny := 0
ilgdzrob_bezplatny := 0
ildnirob_bww := 0
ildnirob_nn := 0
ilgdzrob_nn := 0
ildnirob_wypoczynk := 0
ilgdzrob_wypoczynk := 0
ildnirob_szk := 0
ilgdzrob_szk := 0
ildnirob_oko := 0
ilgdzrob_oko := 0
ildnirob_ekwiwalen := 0
ilgdzrob_ekwiwalen := 0
ildniall_lekarsk80 := 0
ildnirall_lekarsk80 := 0
ilgdzall_lekarsk80 := 0
ildniall_lekarsk70 := 0
ildnirall_lekarsk70 := 0
ilgdzall_lekarsk70 := 0
ildniall_lekarsk75 := 0
ildnirall_lekarsk75 := 0
ilgdzall_lekarsk75 := 0
ildniall_lekarsk90 := 0
ildnirall_lekarsk90 := 0
ilgdzall_lekarsk90 := 0
ildniall_lekarsk00 := 0
ildnirall_lekarsk00 := 0
ilgdzall_lekarsk00 := 0
ildniall_lekarskie := 0
ilgdzall_lekarskie := 0
il_godz_przeprac := 0
il_dni_przeprac := 0
il_dni_robocz := 0
il_godz_robocz := 0
rzil_dni_robocz := 0
rzil_godz_robocz := 0
rzil_dni_all := 0
rzil_godz_all := 0
rztil_dni_all := 0
rztil_godz_all := 0
poczatek_choroby := ''
poczatek_reh := ''
//algorytm pobierajacy dane z kadr przygotowane
//place zasadnicza,ldni chorobowych, wynagrodz.za czas choroby
//okalert["wynagr_podstawa"+wynagr_podstawa+"$wynagr_zasadnicz"+wynagr_zasadnicz+"$wynagr_wypoczynk"+wynagr_wypoczynk+"$"+datapocz+" - "+datakon+"$xpracownik"+xpracownik]
if(not(korektalisty))  CallAlg["POBIERZ-DANE-Z-KADR"]
if(korektalisty and odczytaj_k=2)  CallAlg["POBIERZ-DANE-Z-KADR"]
% POBIERZ-DANE-Z-MODULU-KADRY.ALG
if(xrodz=="1")   CallAlg["PODSTAW-DANE-URLOP"]
if(xrodz=="2")   CallAlg["PODSTAW-DANE-URLOP"]
if(xrodz=="3")   CallAlg["PODSTAW-DANE-URLOP"]
if(xrodz=="9")   CallAlg["PODSTAW-DANE-EKWIWALENT"]
if(xrodz=="11")  CallAlg["PODSTAW-DANE-ZASADNICZA"]
if(xrodz=="12")  CallAlg["PODSTAW-DANE-NADGODZINY"]
if(xrodz=="13")  CallAlg["PODSTAW-DANE-NOCNE"]
if(xrodz=="14")  CallAlg["PODSTAW-DANE-DYZURY"]
if(xrodz=="19")  CallAlg["PODSTAW-DANE-WYROWNANIE"]
if(xrodz=="111") CallAlg["PODSTAW-DANE-bezplatny"]
//if(xrodz=="311") CallAlg["PODSTAW-DANE-WYN-OPIEKA"]
//if(xrodz=="312") CallAlg["PODSTAW-DANE-WYN-OPIEKA"]
if(xrodz=="311") CallAlg["PODSTAW-DANE-ZAS-CHOROBOWY"]
if(xrodz=="312")  CallAlg["PODSTAW-DANE-ZAS-CHOROBOWY"]
if(xrodz=="313") CallAlg["PODSTAW-DANE-ZAS-CHOROBOWY"]
if(xrodz=="314") CallAlg["PODSTAW-DANE-ZAS-CHOROBOWY"]
if(xrodz=="319") CallAlg["PODSTAW-DANE-ZAS-CHOROBOWY"]
if(xrodz=="321") CallAlg["PODSTAW-DANE-WYN-REHABILITACJA"]
if(xrodz=="322") CallAlg["PODSTAW-DANE-WYN-REHABILITACJA"]
if(xrodz=="325") CallAlg["PODSTAW-DANE-ZAS-CHOROBOWY"]
if(xrodz=="327") CallAlg["PODSTAW-DANE-ZAS-CHOROBOWY"]
if(xrodz=="331") CallAlg["PODSTAW-DANE-WYN-CHOROBOWE"]
if(xrodz=="332") CallAlg["PODSTAW-DANE-WYN-CHOROBOWE"]
//okalert["podstaw ildnirob_wypoczynk="+ ildnirob_wypoczynk+"$ilgdzrob_wypoczynk="+ ilgdzrob_wypoczynk]
//if(xrodz=="11") okalert["xlgodzin="+xlgodzin]
//
% PODSTAW-DANE-URLOP.ALG
xzbrutton := .
ldninieobec := .
lgodznieobec := .
miesiac_pocz_nieobec1 := ''
miesiac_pocz_nieobec2 := ''
miesiac_pocz_nieobec3 := ''
xkodalgo := ""
CallAlg["WYLICZ-LICZBE-DNI-NIEOBECNOSCI"]
//xzbrutto   := .
xlgodzin := ldninieobec
if(xmiegodz=="Godzin|e") xlgodzin := lgodznieobec
if(zmien_stawka) xstawka    := .
if(xlgodzin=.) exitalg[0]
//if(not(xrodz="3")) CallAlg["WYLICZ-STAWKE-ZA-URLOP"]
//if(xrodz="3") CallAlg["WYLICZ-STAWKE-ZA-URLOP_OKO"]
CallAlg["WYLICZ-STAWKE-ZA-URLOP"]
xzbrutto := xstawka
if(xmnozyc) xzbrutto := roundN[xstawka*xlgodzin,2]
xzbrutton := xstawka

% PODSTAW-DANE-EKWIWALENT.ALG
xzbrutton := .
lgodznieobec := .
CallAlg["WYLICZ-GODZINY-NIEROZLICZONYCH-URLOPOW"]
//okalert["ldninieobec="+ldninieobec+"$lgodznieobec="+lgodznieobec]
//xzbrutto   := .
xlgodzin := lgodznieobec
if(zmien_stawka) xstawka    := .
if(xlgodzin=.) exitalg[0]
CallAlg["WYLICZ-STAWKE-ZA-EKWIWALENT"]
xzbrutto := xstawka
if(xmnozyc) xzbrutto := roundN[xstawka*xlgodzin,2]
xzbrutton := xstawka

% WYLICZ-GODZINY-NIEROZLICZONYCH-URLOPOW.alg
rejop["u:otworzrejsprawdz","urlopy.rxr"]
rejop["u:zmienkluczrej","3"]
klucz := strcut[studatas[stringnadate[xmieswypl+".01"]],0,4]+"*"+xpracownik
if(not(rejop["u:znajdzrek",klucz])) goto koniec
lgodznieobec := rejwezp_k["u:lgdzpozost"]
koniec:
rejop["u:zamknijrej",""]
% WYLICZ-STAWKE-ZA-EKWIWALENT.alg
//okalert["wykaz_zmian_wymiarow="+wykaz_zmian_wymiarow+"$wykaz_zmian_wymiarow1="+wykaz_zmian_wymiarow1]
// kwota_stale - z biezacej listy
// listy z danego okresu :
kwota_zmienne := .
kwota_dlugie := .
licznik_zmienne := .
licznik_dlugie := .
//maria
if(not(zmien_stawka) and not(xstawka=.)) exitalg[0]
if(not(ur_liczyc)) exitalg[0]
// czesc zmienna
rejop["arch_st:otworzrejtemp","PLARCH.RXR"]
rejop["arch_cn:otworzrejtemp","NADGODZ.RXR"]
rej_arch := "arch:"
rej_cn := "cn:"
przepisal_stary := .N.
tura := 12 
arch_klucz := rejwezp_k[rej_arch+"szukajklucz"]
rejop[rej_arch+"zmienkluczrej","19"]
//tu ustalenie skladnikow stalych <mies, wchodzacych do ekwiw.na innych listach okresu za ktory biezaca lista
data_pocz := stringnadate[xmieswypl+".01"]
d_data := data_pocz
  CallSl["PLACE_G->daj_koniec_mies()"]
data_kon := d_data

if(not(rejop[rej_arch+"szukajrek",xpracownik+"*"+data_pocz])) goto po_stalych
petla_arch1:
if(not(rejwezp_s[rej_arch+"pracownik"]==xpracownik)) goto po_stalych
if(not(rejwezp_s[rej_arch+"mieswypl"]==xmieswypl)) goto po_stalych
if(rejwezp_l[rej_arch+"anulowana"]) goto nastepny_arch1
if(strin["--"+rejwezp_s[rej_arch+"skladnik"]+"--",sklad_stale]>-1) kwota_stale := kwota_stale+rejwezp_k[rej_arch+"placabp"]
nastepny_arch1:
if(rejop[rej_arch+"weznastepnyrek",""]) goto petla_arch1
po_stalych:
rejop[rej_arch+"zmienkluczrej",tostr["#arch_klucz#S:0"]]
// tu sprawdzenie czy lista wyplacana w nastepnym miesiacu
if(not(xmieswypl=strcut[studatas[datalisty],2,5])) data_pocz := data_kon+1 
licznik_zmienne := 0
licznik_dlugie := 0
kwota_zmienne_x := .
kwota_zmienne_y := .
gdz_zmienne_all := .
gdz_zmienne := .
kwota_dlugie_x := .
kwota_dlugie_y := .
petla:
l_godz := .
data_kon := data_pocz-1 
data_pocz := C_date[A_date[data_kon,"Y"],A_date[data_kon,"M"],01]
x_gdzpracyu_all := .
x_gdzpracy := .
//if(xpracownik = "087") okalert["data_pocz="+data_pocz+"$data_kon="+data_kon+"poczatek_roku="+poczatek_roku]
// tu trzeba odwolac sie do danych poprzedniego roku
if(data_pocz<poczatek_roku and ch_ksieg="") goto zapisz_j
// siegniecie do ksiegi z poprz.roku
//okalert["ch_ksieg="+ch_ksieg+"$data_pocz="+data_pocz+"$<poczatek_roku="+poczatek_roku+"$przepisal_stary="+przepisal_stary]
if(data_pocz<poczatek_roku and not(ch_ksieg="") and not(przepisal_stary)) callalg["przepisz_z_ch_ksieg"]
if(not(rejop[rej_arch+"szukajrek",xpracownik+"*"+data_pocz])) goto nastepny_mies
petla_mies:
if(not(rejwezp_s[rej_arch+"pracownik"]==xpracownik)) goto nastepny_mies
if(rejwezp_l[rej_arch+"anulowana"]) goto nastepny_arch
if(rejwezp_d[rej_arch+"datawypl"]<data_pocz or rejwezp_d[rej_arch+"datawypl"]>data_kon) goto nastepny_mies
 sklad := rejwezp_s[rej_arch+"skladnik"]
if(strin["--"+sklad+"--",sklad_zmienne]>-1) goto wylicz_zmienne
if(strin["--"+sklad+"--",sklad_zmienne_ekw+sklad_stale_ekw]>-1) goto wylicz_dlugie 
goto nastepny_arch
wylicz_zmienne:
if(licznik_zmienne>2) goto nastepny_arch
if(0+rejwezp_k[rej_arch+"gdzpracy"]=0) goto nastepny_arch
kwota_zmiennex := rejwezp_k[rej_arch+"placab"]
kwota_zmienney := 0
//xgdzpracyu_all := 1
//xgdzpracy := 1
if(not(rejop["x:znajdzrek",sklad])) goto suma_zmienne
if(not(rejwezp_l["x:uzupelniany"])) goto suma_zmienne
 kwota_zmienney := rejwezp_k[rej_arch+"placab"]
 kwota_zmiennex := 0
 x_gdzpracyu_all := rejwezp_k[rej_arch+"gdzpracyu_all"]
 x_gdzpracy := rejwezp_k[rej_arch+"gdzpracy"]
suma_zmienne:
kwota_zmienne_x := kwota_zmienne_x+kwota_zmiennex
//okalert["kwota_zmienne_y="+kwota_zmienne_y+"$kwota_zmienney="+kwota_zmienney+"$data_pocz="+data_pocz+"$data_kon="+data_kon]
kwota_zmienne_y := kwota_zmienne_y+kwota_zmienney
goto nastepny_arch
wylicz_dlugie:
kwota_dlugie_x := kwota_dlugie_x+ rejwezp_k[rej_arch+"placab"]
nastepny_arch:
if(rejop[rej_arch+"weznastepnyrek",""]) goto petla_mies
nastepny_mies:
tura := tura-1
licznik_dlugie := licznik_dlugie+1
if(x_gdzpracy+0 = 0) goto omin_zmienne
licznik_zmienne := licznik_zmienne+1
gdz_zmienne_all := gdz_zmienne_all+x_gdzpracyu_all
gdz_zmienne := gdz_zmienne+x_gdzpracy
omin_zmienne:
if(tura>0) goto petla
zapisz_j:
//okalert["kwota_zmienne_x="+kwota_zmienne_x+"$kwota_zmienne_y="+kwota_zmienne_y+"$gdz_zmienne_all="+gdz_zmienne_all+"$gdz_zmienne="+gdz_zmienne+"$licznik_zmienne="+licznik_zmienne]
kwota_zmienne := (kwota_zmienne_x+kwota_zmienne_y*gdz_zmienne_all/gdz_zmienne)/licznik_zmienne
kwota_dlugie := kwota_dlugie_x/licznik_dlugie
podstawa_ekw := kwota_stale+kwota_zmienne+kwota_dlugie
//okalert["podstawa_ekw="+podstawa_ekw+"$kwota_stale="+kwota_stale+"$kwota_zmienne="+kwota_zmienne+"$kwota_dlugie="+kwota_dlugie+"$wsp_ekw="+wsp_ekw+"$wymiar_prac="+wymiar_prac]
xstawka := podstawa_ekw/(wsp_ekw*wymiar_prac*8)
xzbrutto := xstawka
if(xmnozyc) xzbrutto := roundN[xstawka*xlgodzin,2]
xzbrutton := xstawka

% PODSTAW-DANE-NADGODZINY.ALG
xzbrutton := .
lgodznad := .
typ := "nadgodziny"
CallAlg["WYLICZ-LICZBE-NADGODZIN"]
xlgodzin := lgodznad
//if(xpracownik="G03") OKALERT["XLGODZIN="+XLGODZIN+ "$xskladnik="+xskladnik+"$zmienstawka="+zmien_stawka+"xstawka="+xstawka]
if(zmien_stawka) xstawka    := .
if(xlgodzin=.) exitalg[0]
CallAlg["WYLICZ-GODZINY-NADLICZBOWE"]
xzbrutto := xstawka
if(xmnozyc) xzbrutto := roundN[xstawka*xlgodzin,2]
xzbrutton := xstawka
//
% PODSTAW-DANE-NOCNE.ALG
xzbrutton := .
lgodznad := .
typ := "nOcne"
CallAlg["WYLICZ-LICZBE-NADGODZIN"]
xlgodzin := lgodznad
if(zmien_stawka) xstawka    := .
if(xlgodzin=.) exitalg[0]
CallAlg["WYLICZ-GODZINY-NOCNE"]
xzbrutto := xstawka
if(xmnozyc) xzbrutto := roundN[xstawka*xlgodzin,2]
xzbrutton := xstawka
//
% PODSTAW-DANE-DYZURY.ALG
xzbrutton := .
lgodznad := .
typ := "dy|zury"
CallAlg["WYLICZ-LICZBE-NADGODZIN"]
//OKALERT["lgodznad="+lgodznad]
xlgodzin := lgodznad
//if(zmien_stawka) xstawka    := .
if(xlgodzin=.) exitalg[0]
xzbrutto := xstawka
if(xmnozyc) xzbrutto := roundN[xstawka*xlgodzin,2]
xzbrutton := xstawka

% WYLICZ-LICZBE-NADGODZIN.ALG
if(not(RejOp["CN:ZnajdzRek",xpracownik])) ExitAlg[0]
petla:
if(not(RejWezP_S["CN:sym"] == xpracownik)) ExitAlg[0]
if(wyrownanie) goto inny_war
// nadliczbowe rozliczone dla innych oczekujacych traktuje jak rozliczone 11.11.06
//if(not(RejWezP_S["CN:lista"]="" or strin["@",RejWezP_S["CN:lista"]]>-1)) goto next
//if(not(RejWezP_S["CN:lista"]="")) goto next
if(korektalisty and RejWezP_S["CN:lista"]=symlistynum) goto wspolny_war
if(not(RejWezP_S["CN:lista"]="" or RejWezP_S["CN:lista"]=="@"+symlisty+Tostr["#numerlisty#S:0"] )) goto next
goto wspolny_war
inny_war:
if(RejWezP_S["CN:lista"]="" or strin["@",RejWezP_S["CN:lista"]]>-1) goto next
wspolny_war:
if(not(rejwezp_s["cn:skladnor"]==xskladnik or rejwezp_s["cn:skladdod"]==xskladnik)) goto next
IF(RejWezP_D["CN:data"]>datakon)  goto next
if(not(rejwezp_s["cn:rodzgodz"]==typ)) goto next
IF(wyrownanie and RejWezP_D["CN:data"]<datapocz)  goto next
if(korektalisty) goto inny_wstaw
if(not(wyrownanie)) rejwstawp_s["cN:lista","@"+symlisty+Tostr["#numerlisty#S:0"]]
goto wspolne_wstaw
inny_wstaw:
if(not(wyrownanie)) rejwstawp_s["cN:lista_kor",symlisty+Tostr["#numerlisty#S:0"]]
if(not(wyrownanie)) rejwstawp_s["cn:lista","KOREKTA"]
if(not(wyrownanie)) rejwstawp_s["cn:ksiega_kor",symksiegakor]
wspolne_wstaw:
lgodznad := lgodznad+rejwezp_k["cn:lgodz"]
next:
IF(RejOp["CN:WezNastepnyRek",""]) goto petla
koniec:
//
% WYLICZ-LICZBE-NADGODZIN-WYR.ALG
if(not(RejOp["CN:ZnajdzRek",xpracownik])) ExitAlg[0]
petla:
IF(RejWezP_D["CN:data"]>datakon)  goto next
if(not(rejwezp_s["cn:rodzgodz"]==typ)) goto next
IF(RejWezP_D["CN:data"]<datapocz)  goto next
lgodznad := lgodznad+rejwezp_k["cn:lgodz"]
next:
IF(RejOp["CN:WezNastepnyRekN",""]) goto petla
koniec:
//
% WPISZ-DO-NIEOBECNOSCI.ALG
//okalert["wpisz-do symlisty="+symlisty+"$numerlisty="+numerlisty]
// dane wejsciowe: dokid_prac - identyfikator pracownika i rodz - rodzaj niobecnosci
if(not(RejOp["CE:ZnajdzRek",xpracownik])) ExitAlg[0]
petla:
if(not(RejWezP_S["CE:sym"] == xpracownik)) ExitAlg[0]
if(rejwezp_l["CE:anulowana"]) goto next
// nieobecnosci rozliczone na innych oczekujacych traktuje jak rozliczone 11.11.06
//if(Not(RejWezP_S["CE:lista"]="" or strin["@",RejWezP_S["CE:lista"]]>-1)) goto next
if(korektalisty) goto inny_kor
if(Not(RejWezP_S["CE:lista"]="")) goto next
goto wsp_kor
inny_kor:
if(Not(RejWezP_S["CE:lista"]="" or RejWezP_S["CE:lista"]== symlisty+tostr["#numerlisty#S:0"])) goto next
wsp_kor:
IF(RejWezP_D["CE:dataod"]>datakon)  goto next
//IF(RejWezP_D["CE:datado"]<datapocz)  goto next
if(not(korektalisty)) rejwstawp_s["ce:lista","@"+symlisty+tostr["#numerlisty#S:0"]]
if(korektalisty) rejwstawp_s["ce:lista_kor",rejwezp_s["ce:lista"]]
if(korektalisty) rejwstawp_s["ce:lista","KOREKTA"]
xrodzm1 := ""
xrodzm2 := ""
if(rejop["CB:znajdzrek",rejwezp_s["ce:kodnieob"]]) xrodzm1 := rejwezp_s["CB:rodzsklad"]
if(rejop["CB:znajdzrek",rejwezp_s["ce:kodnieob"]]) xrodzm2 := rejwezp_s["CB:kodalgo"]
//okalert["pracownik="+rejwezp_s["ce:sym"]+"xrodzm1="+xrodzm1]
//if(xrodzm1=="111" or xrodzm1=="121" or xrodzm1=="122" or xrodzm1=="311" or xrodzm1=="151" or xrodzm1=="152" or xrodzm1=="155") rejwstawp_s["ce:lista1","@"+symlisty+tostr["#numerlisty#S:0"]]
if(korektalisty) goto wstaw_korekta
if(xrodzm1=="111" or xrodzm1=="121" or xrodzm1=="122" or xrodzm1=="151" or xrodzm1=="152" or xrodzm1=="155") rejwstawp_s["ce:lista1","@"+symlisty+tostr["#numerlisty#S:0"]]
if((xrodzm1=="311" or xrodzm1=="319" or xrodzm1=="325" or xrodzm1=="327") and not(czy_uprawniony) ) rejwstawp_s["ce:lista1","@"+symlisty+tostr["#numerlisty#S:0"]]
if(xrodzm2=="0") rejwstawp_s["ce:lista1","@"+symlisty+tostr["#numerlisty#S:0"]]
goto next
wstaw_korekta:
 rejwstawp_s["ce:lista1_kor",rejwezp_s["ce:lista1"]]
if(xrodzm1=="111" or xrodzm1=="121" or xrodzm1=="122" or xrodzm1=="151" or xrodzm1=="152" or xrodzm1=="155") rejwstawp_s["ce:lista1","KOREKTA"]
if((xrodzm1=="311" or xrodzm1=="319" or xrodzm1=="325" or xrodzm1=="327") and not(czy_uprawniony) ) rejwstawp_s["ce:lista1","KOREKTA"]
if(xrodzm2=="0") rejwstawp_s["ce:lista1","KOREKTA"]
next:
if(rejwezp_s["ce:lista1"]="KOREKTA" or rejwezp_s["ce:lista"]="KOREKTA") rejwstawp_s["ce:ksiega_kor",symksiegakor]
IF(RejOp["CE:WezNastepnyRek",""]) goto petla
koniec:

% WYLICZ-LICZBE-DNI-NIEOBECNOSCI.ALG
//okalert["WYLICZ-LICZBE-DNI-NIEOBECNOSCI"]
// dodatkowo ustalenie okresu w ktorym pierwsza nieobecnosc zw. z choroba lub urlopem nierozliczona
defzmiennaD["miesiac_pocz_nieobec",'']
defzmiennaD["miesiac_pocz_nieobec1",'']
defzmiennaD["miesiac_pocz_nieobec2",'']
defzmiennaD["miesiac_pocz_nieobec3",'']
// dane wejsciowe: dokid_prac - identyfikator pracownika i rodz - rodzaj niobecnosci
if(not(RejOp["CE:ZnajdzRek",xpracownik])) ExitAlg[0]
//if(datapocz<pdatapocz) datapocz := Xpdatapocz
//if(datakon>pdatakon) datakon := Xpdatakon
petla:
if(not(RejWezP_S["CE:sym"] == xpracownik)) ExitAlg[0]
//okalert["ll=" + RejWezP_S["CE:lista"] + "$ POZYCJA=" + strin["@",RejWezP_S["CE:lista"]]]
if(wyrownanie) goto inny_war
if(rejwezp_l["CE:anulowana"]) goto next
// nieobecnosci roziczone na innych oczekujacych traktuje jak rozliczone 11.11.06
// nieobecnosci rozliczone na liscie korygowanej traktuje jako nierozliczone 12.05.07
//if(not(RejWezP_S["CE:lista1"]="" or strin["@",RejWezP_S["CE:lista1"]]>-1)) goto next
if(korektalisty and RejWezP_S["CE:lista1"]=symlistynum) goto wspolny_war
if(not(RejWezP_S["CE:lista1"]="" or RejWezP_S["CE:lista1"]=="@"+symlisty+Tostr["#numerlisty#S:0"] )) goto next
goto wspolny_war
inny_war:
if(rejwezp_l["CE:anulowana"]) goto next
if(RejWezP_S["CE:lista1"]="" or strin["@",RejWezP_S["CE:lista1"]]>-1) goto next
wspolny_war:
IF(RejWezP_D["CE:dataod"]>datakon)  goto next
//IF(wyrownanie and RejWezP_D["CE:datado"]<datapocz)  goto next
iF(wyrownanie and strin["--"+RejWezP_s["CE:lista"]+"--",listy_z_okresu]<0)  goto next
iF(wyrownanie and strin["--"+RejWezP_s["CE:lista1"]+"--",listy_z_okresu]<0)  goto next
If(Not(RejOp["CB:ZnajdzRek",RejWezP_S["CE:kodnieob"]])) goto next
if(Not(RejWezP_S["CB:rodzsklad"]==xrodz)) goto next1
if(Not(RejWezP_S["CB:skladnieo"]==xskladnik)) goto next1
//if(not(wyrownanie) and rejwezp_s["cb:kodalgo"]=="0") rejwstawp_s["ce:lista1","@"+symlisty+Tostr["#numerlisty#S:0"]]
//if(not(wyrownanie) and rejwezp_s["cb:kodalgo"]=="0" and korektalisty) rejwstawp_s["ce:lista1","KOREKTA"]
xkodalgo := rejwezp_s["cb:kodalgo"]
//if(rejwezp_s["cb:kodalgo"]=="0") goto next
if(xtyp=="1" and not(rejwezp_s["cb:kodalgo"]=="5")) goto next1
if(xtyp=="2" and not(rejwezp_s["cb:kodalgo"]=="4")) goto next1
if(xtyp=="3" and not(rejwezp_s["cb:kodalgo"]=="6")) goto next1
if(xtyp=="4" and not(rejwezp_s["cb:kodalgo"]=="7")) goto next1
if(xtyp=="5" and not(rejwezp_s["cb:kodalgo"]=="8")) goto next1
//okalert["symlisty="+symlisty]
if(korektalisty) goto inne_wstaw
if(not(wyrownanie)) rejwstawp_s["ce:lista1","@"+symlisty+Tostr["#numerlisty#S:0"]]
goto wspolne_wstaw
inne_wstaw:
if(not (wyrownanie)) rejwstawp_s["ce:lista1_kor",rejwezp_s["ce:lista1"]]
if(not(wyrownanie)) rejwstawp_s["ce:lista1","KOREKTA"]
if(not(wyrownanie)) rejwstawp_s["ce:ksiega_kor",symksiegakor]
wspolne_wstaw:
//if(rejwezp_s["cb:kodalgo"]=="0") goto next
if(xrodz=="1" or xrodz=="2" or xrodz=="3") goto xrodz1
ldninieobec := ldninieobec+(RejWezP_D["CE:datado"]-RejWezP_D["CE:dataod"]+1)
lgodznieobec := ldninieobec+(RejWezP_D["CE:datado"]-RejWezP_D["CE:dataod"]+1)
//if((xtyp=="1" or xtyp=="2" or xtyp=="3" or xtyp=="4" or xtyp=="5") and  RejWezP_D["CE:dataod"]<miesiac_pocz_nieobec) miesiac_pocz_nieobec := RejWezP_D["CE:dataod"]
goto next1
xrodz1:
// tu dla urlopow
if(xrodz=="1" and  RejWezP_D["CE:dataod"]<miesiac_pocz_nieobec1) miesiac_pocz_nieobec1 := RejWezP_D["CE:dataod"]
if(xrodz=="2" and  RejWezP_D["CE:dataod"]<miesiac_pocz_nieobec2) miesiac_pocz_nieobec2 := RejWezP_D["CE:dataod"]
if(xrodz=="3" and  RejWezP_D["CE:dataod"]<miesiac_pocz_nieobec3) miesiac_pocz_nieobec3 := RejWezP_D["CE:dataod"]
ldnikal := 0
ldnirob := 0
lminut := 0
lgodzin := 0
lminuts := 0
lgodzins := 0
lminutw := 0
lgodzinw := 0
kalengrupa := rejwezp_s["c:kalengrupa"]
if(kalengrupa = "") kalengrupa := "<podstawowy>"
dataod := RejWezP_D["CE:dataod"]
datado := RejWezP_D["CE:datado"]
CallAlg["PRZYGOTUJ-DANE-DLA-KALENDARZA"]
      ldninieobec := ldninieobec+RejWezP_K["CE:ldnirob"]
      lgodznieobec := lgodznieobec+rejwezp_k["ce:lgodzin"]
next1:
// mariaxx
wykaz_kodow := "--311--312--313--314--319--321--322--325--327--331--332--"
if(strin["--"+RejWezP_S["CB:rodzsklad"]+"--",wykaz_kodow]<0) goto next
if((xtyp=="1" or xtyp=="2" or xtyp=="3" or xtyp=="4" or xtyp=="5") and  RejWezP_D["CE:dataod"]<miesiac_pocz_nieobec) miesiac_pocz_nieobec := RejWezP_D["CE:dataod"]
next:
IF(RejOp["CE:WezNastepnyRek",""]) goto petla
koniec:
//okalert["lgodznieobec="+lgodznieobec+"$ldninieobec="+ldninieobec]
% WYLICZ-STAWKE-ZA-URLOP_OKO.ALG
//maria
xkodalgo := ""
if(not(zmien_stawka)) exitalg[0]
if(not(ur_liczyc)) exitalg[0]
if(sklad_zmienne="") exitalg[0]
//xstawka := roundn[podstawa_oko/il_godz_przeprac,2]
defzmiennaD["miesiac_pocz_nieobec3",'']
defzmiennaD["miesiac_pocz_nieobec1",'']
defzmiennaD["miesiac_pocz_nieobec2",'']
RejOp["CB:otworzrejsprawdz","RODZNIEO.RXR"]
RejOp["CE:otworzrejsprawdz","NIEOBEC.RXR"]
rejop["ce:zmienkluczrej","4"]
rejop["ce:znajdzrek",xpracownik]
petla:
if(not(RejWezP_S["CE:sym"] == xpracownik)) goto wylicz_stawke
if(wyrownanie) goto inny_war
if(rejwezp_l["CE:anulowana"]) goto next
// nieobecnosci rozliczone na innych listach oczekujacych traktuje jak rozliczone 11.11.06
//if(not(RejWezP_S["CE:lista1"]="" or strin["@",RejWezP_S["CE:lista1"]]>-1)) goto next
if(not(RejWezP_S["CE:lista1"]="" or RejWezP_S["CE:lista1"]=="@"+symlisty+Tostr["#numerlisty#S:0"])) goto next
goto wspolny_war
inny_war:
if(rejwezp_l["CE:anulowana"]) goto next
if(RejWezP_S["CE:lista1"]="" or strin["@",RejWezP_S["CE:lista1"]]>-1) goto next
wspolny_war:
IF(RejWezP_D["CE:dataod"]>datakon)  goto next
//IF(wyrownanie and RejWezP_D["CE:datado"]<datapocz)  goto next
iF(wyrownanie and strin["--"+RejWezP_s["CE:lista"]+"--",listy_z_okresu]<0)  goto next
iF(wyrownanie and strin["--"+RejWezP_s["CE:lista1"]+"--",listy_z_okresu]<0)  goto next
If(Not(RejOp["CB:ZnajdzRek",RejWezP_S["CE:kodnieob"]])) goto next
if(Not(RejWezP_S["CB:rodzsklad"]==xrodz)) goto next
if(RejWezP_D["CE:dataod"]<miesiac_pocz_nieobec3) miesiac_pocz_nieobec3 := RejWezP_D["CE:dataod"]
next:
IF(RejOp["CE:WezNastepnyRek",""]) goto petla
rejop["cb:zamknijrej",""]
rejop["ce:zamknijrej",""]
//okalert["miesiac_pocz_nieobec3 ="+miesiac_pocz_nieobec3]
wylicz_stawke:
  RejOp["J:otworzrejsprawdz","PLCHOR.RXR"]
  RejOp["J:ZmienKluczRej","2"]
callalg["wylicz-stawke-za-urlop"]
rejop["j:zamknijrej",""]
koniec:
//
% WYLICZ-LICZBE-DNI-POZOSTALE.ALG
ldninieobec := .
lgodznieobec := .
miesiac_pocz_nieobec1 := ''
miesiac_pocz_nieobec2 := ''
miesiac_pocz_nieobec3 := ''
CallAlg["WYLICZ-LICZBE-DNI-NIEOBECNOSCI"]
xlgodzin := 1
if(xmiegodz=="Dzie|n") xlgodzin := ldninieobec
if(xmiegodz=="Godzin|e") xlgodzin := lgodznieobec

% WYLICZ-STAWKE-ZA-URLOP.ALG
kwota_zmienne := .
//maria
if(not(zmien_stawka) and not(xstawka=.)) exitalg[0]
if(not(ur_liczyc)) exitalg[0]
if(xkodalgo="0") exitalg[0]
if(sklad_zmienne="") exitalg[0]
//okalert["sklad_zmienne="+sklad_zmienne]
// wylaczenie naliczania stawki za urlop
//xstawka := .
//exitalg[0]
// wlaczenie naliczania stawki
//if(xpracownik = "087") okalert["klucz="+xpracownik+"*"+xskladnik+"*"+xlista+tostr["#xnrlisty#S:0"]]
// rejestr z historia naliczen
if(rejop["hc:znajdzrek","*"+xpracownik+"*"+xskladnik]) rejop["hc:usunrek",""]
rejop["hc:dodajtemprek",""]
xrejwstawp_s["hc:sym",xpracownik]
xrejwstawp_s["hc:skladnik",xskladnik]
xrejwstawp_s["hc:kodsklad",xrodz]
if(rejop["j:znajdzrek",xpracownik+"*"+xskladnik+"*"+xlista+tostr["#xnrlisty#S:0"]]) goto wstaw_stawke
rejop["j:dodajrek",""]
xrejwstawp_s["j:pracownik",xpracownik]
xrejwstawp_s["j:skladnik",xskladnik]
xrejwstawp_s["j:lista",xlista+tostr["#xnrlisty#S:0"]]
wstaw_stawke:
//if(xpracownik = "087") okalert["2"]
// czesc stala
stawka_st := .
//xrejwstawp_k["j:stale",kwota_stale]
//xrejwstawp_k["j:l_godz",il_godz_robocz]
//stawka_st := roundn[kwota_stale/il_godz_robocz,2]
//stawka_st := kwota_stale
//xrejwstawp_k["j:stawka_st",stawka_st]
// czesc zmienna
//okalert["sklad-zmienne="+sklad_zmienne]
if(sklad_zmienne="") goto zapisz_j
licznik := 1
rejop["arch_st:otworzrejtemp","PLARCH.RXR"]
rejop["arch_cn:otworzrejtemp","NADGODZ.RXR"]
rej_arch := "arch:"
rej_cn := "cn:"
przepisal_stary := .N.
tura := xmies_url 
if(tura=.) tura := u_lmies
if(tura=.) tura := 3
//okalert["tura="+tura]
data_pocz := C_date[stringnaliczbe[rokwypl],stringnaliczbe[miesiacwypl],01]
if(xrodz=="1" and not(miesiac_pocz_nieobec1='')) data_pocz := C_Date[A_date[miesiac_pocz_nieobec1,"Y"],A_date[miesiac_pocz_nieobec1,"M"],01]
if(xrodz=="2" and not(miesiac_pocz_nieobec2='')) data_pocz := C_Date[A_date[miesiac_pocz_nieobec2,"Y"],A_date[miesiac_pocz_nieobec2,"M"],01]
if(not(xrodz=="3")) goto omin_nieobec3
if(miesiac_pocz_nieobec3='') goto omin_nieobec3
d_data := miesiac_pocz_nieobec3
  CallSl["PLACE_G->daj_koniec_mies()"]
data_pocz := d_data+1
omin_nieobec3:
//licznik_max := 12
licznik_max := 3
if(xrodz=="3") licznik_max := 1
petla:
//if(licznik>12) goto zapisz_j 
if(licznik>licznik_max) goto zapisz_j 
kwota_zmienne := .
l_godz := .
czy_byl11 := .N.
czy_byl12 := .N.
data_kon := data_pocz-1
data_pocz := C_date[A_date[data_kon,"Y"],A_date[data_kon,"M"],01]
//if(xpracownik = "087") okalert["data_pocz="+data_pocz+"$data_kon="+data_kon+"poczatek_roku="+poczatek_roku]
// tu trzeba odwolac sie do danych poprzedniego roku
if(data_pocz<poczatek_roku and ch_ksieg="") goto zapisz_j
// siegniecie do ksiegi z poprz.roku
//okalert["ch_ksieg="+ch_ksieg+"$data_pocz="+data_pocz+"$<poczatek_roku="+poczatek_roku+"$przepisal_stary="+przepisal_stary]
if(data_pocz<poczatek_roku and not(ch_ksieg="") and not(przepisal_stary)) callalg["przepisz_z_ch_ksieg"]
if(not(rejop[rej_arch+"szukajrek",xpracownik+"*"+data_pocz])) goto pomin_zapis
petla_mies:
if(not(rejwezp_s[rej_arch+"pracownik"]==xpracownik)) goto nastepny_mies
if(rejwezp_l[rej_arch+"anulowana"]) goto nastepny_arch
if(rejwezp_d[rej_arch+"datawypl"]<data_pocz or rejwezp_d[rej_arch+"datawypl"]>data_kon) goto nastepny_mies
sklad := rejwezp_s[rej_arch+"skladnik"]
lista_x := rejwezp_s[rej_arch+"lista"]+tostr["#rejwezp_k[rej_arch+""nrlisty""]#S:0"]
kod := rejwezp_s[rej_arch+"rodz"]
if(rejwezp_s[rej_arch+"rodz"]=="11" and not(czy_byl11)) l_godz := l_godz+ rejwezp_k[rej_arch+"gdzpracy"]
if(rejwezp_s[rej_arch+"rodz"]=="11") czy_byl11 := .T.
if(not(rejwezp_s[rej_arch+"rodz"]=="12")) goto omin_12
if(not(rejop[rej_cn+"znajdzrek",xpracownik])) goto omin_12
petla_12:
if(lista_x==rejwezp_s[rej_cn+"lista"] and not(czy_byl12))  l_godz := l_godz+ rejwezp_k[rej_cn+"lgodz"]
if(rejop[rej_cn+"weznastepnyrekn",""]) goto petla_12
//okalert["l_godz="+l_godz]
czy_byl12 := .T.
omin_12:
czy_dodac := .N.
czy_przelicz := .N.
if(strin["--"+sklad+"--",sklad_zmienne]>-1 and data_pocz<=last_data_zm and kod="11") czy_przelicz := .T.
if(strin["--"+sklad+"--",sklad_zmienne]>-1) czy_dodac := .T. 
if(not(czy_dodac) and strin["--"+kod+"--",sklad_kody]>-1 and kod="11") czy_przelicz := .T.
//if(not(czy_dodac) and strin["--"+kod+"--",sklad_kody]>-1 and strin["--"+sklad+"--",sklad_urlop]>-1) czy_dodac := .T.
if(not(czy_dodac)) goto nastepny_arch
// sprawdzenie czy nalezy przeliczyc stawke
kwota_dod := .
if(not(czy_przelicz)) kwota_dod := rejwezp_k[rej_arch+"placab"]
if(strin["--"+sklad+"--",sklad_zmienne]>-1 and kod="11") kwota_dod := roundn[l_godz *last_stawka11,2]
if(strin["--"+sklad+"--",sklad_zmienne]< 0 and kod="11") kwota_dod := roundn[rejwezp_k[rej_arch+"gdzpracy"]*last_stawka11,2]
//if(xpracownik=="006") okalert["kwota_zmienne="+kwota_zmienne+"$kwota_dod="+kwota_dod+"$last_stawka11="+last_stawka11+"$sklad="+sklad]
//kwota_zmienne := kwota_zmienne+ rejwezp_k[rej_arch+"placab"]
kwota_zmienne := kwota_zmienne+ kwota_dod
nastepny_arch:
if(rejop[rej_arch+"weznastepnyrek",""]) goto petla_mies
nastepny_mies:
if(not(xrodz="3")) goto wstaw_j
if(not(C_date[stringnaliczbe[rokwypl],stringnaliczbe[miesiacwypl],01]=data_pocz)) goto wstaw_j
 kwota_zmienne := kwota_zmienne+podstawa_oko
if(not(czy_byl11)) l_godz := l_godz+rzil_godz_robocz
wstaw_j:
//if(kwota_zmienne=. or kwota_zmienne=0) goto pomin_zapis
tura_s := tostr["#tura#S:0"]
xrejwstawp_k["j:l_godz"+tura_s,l_godz]
xrejwstawp_k["j:zmienne"+tura_s,kwota_zmienne]
xrejwstawp_s["j:rokmie"+tura_s,strcut[studatas[data_pocz],2,5]]
xrejwstawp_k["hc:dnih"+tura_s,l_godz]
xrejwstawp_k["hc:wynn"+tura_s,kwota_zmienne]
xrejwstawp_s["hc:mies"+tura_s,strcut[studatas[data_pocz],2,5]]
tura := tura-1
licznik := licznik+1
if(tura>0) goto petla
goto zapisz_j
pomin_zapis:
tura := tura
licznik := licznik+1
goto petla
zapisz_j:
stawka_zm := rejwezp_k["j:zmienne1"] + rejwezp_k["j:zmienne2"] + rejwezp_k["j:zmienne3"] + rejwezp_k["j:zmienne4"] + rejwezp_k["j:zmienne5"] + rejwezp_k["j:zmienne6"]
stawka_zm := stawka_zm+rejwezp_k["j:zmienne7"] + rejwezp_k["j:zmienne8"] + rejwezp_k["j:zmienne9"] + rejwezp_k["j:zmienne10"] + rejwezp_k["j:zmienne11"] + rejwezp_k["j:zmienne12"]
xrejwstawp_k["hc:podstawa",stawka_zm]
czas_zm := rejwezp_k["j:l_godz1"] + rejwezp_k["j:l_godz2"] + rejwezp_k["j:l_godz3"]+rejwezp_k["j:l_godz4"] + rejwezp_k["j:l_godz5"] + rejwezp_k["j:l_godz6"]
czas_zm := czas_zm+rejwezp_k["j:l_godz7"] + rejwezp_k["j:l_godz8"] + rejwezp_k["j:l_godz9"]+rejwezp_k["j:l_godz10"] + rejwezp_k["j:l_godz11"] + rejwezp_k["j:l_godz12"]
xrejwstawp_k["hc:ilmies",czas_zm]
stawka_zm := roundn[stawka_zm/czas_zm,2]
xrejwstawp_k["j:stawka_zm",stawka_zm]
xrejwstawp_k["j:stawka",stawka_st+stawka_zm]
xrejwstawp_k["hc:stawka",stawka_zm]
rejop["j:zapiszrek",""]
rejop["hc:zapiszrek",""]
//stawkax    :=  stawka_st+stawka_zm
xstawka    :=  stawka_zm
rejop["arch_st:zamknijrej",""]
//okalert["xstawka="+xstawka+"stawka_zm="+stawka_zm+"czas_zm="+czas_zm]
//if(xpracownik=="013") okalert["stawkax="+stawkax+"$lgodznieobec="+lgodznieobec+"$xlgodzin="+xlgodzin]
//xstawka := roundn[stawkax*lgodznieobec/xlgodzin,2]
//rejop["j:zobaczdbf",""]
//
% przepisz_z_ch_ksieg.alg
Finnop["Openmainx",ch_ksieg]
rejop["arch_st1:otworzrej1","PLARCH.RXR"]
rejop["arch_st1:zmienkluczrej","2"]
if(not(rejop["arch_st1:szukajrek",xpracownik])) goto zakoncz
petla:
rejop["arch_st:dodajrek",""]
rejop["arch_st1:przeniespola","arch_st:"]
rejop["arch_st:zapiszrek",""]
if(rejop["arch_st1:weznastepnyrekn",""]) goto petla
zakoncz:
rejop["arch_st1:zamknijrej",""]
rejop["arch_cn1:otworzrej1","NADGODZ.RXR"]
rejop["arch_cn1:zmienkluczrej","4"]
if(not(rejop["arch_cn1:szukajrek",xpracownik])) goto zakoncz1
petla1:
rejop["arch_cn:dodajrek",""]
rejop["arch_cn1:przeniespola","arch_cn:"]
rejop["arch_cn:zapiszrek",""]
if(rejop["arch_cn1:weznastepnyrekn",""]) goto petla1
zakoncz1:
rejop["arch_cn1:zamknijrej",""]
finnop["close",""]
rejop["arch_st:zmienkluczrej","17"]
rejop["arch_cn:zmienkluczrej","4"]
rej_arch := "arch_st:"
rej_cn := "arch_cn:"
przepisal_stary := .T.
//
% PODSTAW-DANE-WYROWNANIE.ALG
//if(xpracownik="004") okalert["podstaw-dane-wyrownanie zmien_stawka="+zmien_stawka]
wyrownanie_1p := .
wyrownanie_2p := .
min_wyn := .
ch_najniwyn := .
 CallAlg["POBIERZ-PARCHOR"]
if(ch_najniwyn=.) exitalg[0]
xzbrutton := .
if(zmien_stawka) xstawka    := .
// odczytanie liczby nadgodzin
lgodznad := .
typ := "nadgodziny"
CallAlg["WYLICZ-LICZBE-NADGODZIN-WYR"]
//
xlgodzin := il_godz_przeprac+lgodznad
if(xmiegodz=="Miesi|ac") xlgodzin := 1
if(il_godz_przeprac=. or il_godz_przeprac=0) xlgodzin := .
if(xlgodzin=.) exitalg[0]
if(not(zmien_stawka)) goto podstaw_dane
callalg["wyrownanie_pozostale_listy"]
//okalert["mmm wyrownanie_2="+wyrownanie_2+"$wyrownanie_2p="+wyrownanie_2p]
wyrownanie_1 := wyrownanie_1+wyrownanie_1p
wyrownanie_2 := wyrownanie_2+wyrownanie_2p
// wyliczenie wynagrodzenia minimalnego przys�ugujacego danemu pracownikowi 
//
// czy pracownik pracuje dluzej niz rok
if(wyr_rok<1) callalg["historia_czas_pracy"]
proc_minimalna := 1
if(wyr_rok<1) proc_minimalna := 0.8
// wyliczenie stawki wyrownania
mw := proc_minimalna*ch_najniwyn*il_godz_przeprac/podst_til_gdz_rob
//if(xpracownik="004") okalert["proc_minimalna="+proc_minimalna+"$ch_najniwyn="+ch_najniwyn+"$podst_til_gdz_rob="+podst_til_gdz_rob+"$wyrownanie_2="+wyrownanie_2+"$il_godz_przeprac="+il_godz_przeprac]
smin := proc_minimalna*ch_najniwyn/podst_til_gdz_rob
swyn := wyrownanie_2/il_godz_przeprac
//if(xpracownik="004") okalert["minimalna="+proc_minimalna*ch_najniwyn+"$mw="+mw+"$wyownanie_2="+wyrownanie_2+"$smin="+smin+"$swyn="+swyn]
xstawka := smin - swyn
if(not(stawka=.) and xstawka<0) xstawka := .
if(xmiegodz=="Miesi|ac") xstawka := xstawka*(il_godz_przeprac+lgodznad)
xstawka := round[xstawka,2]
//okalert["xstawka="+xstawka+"$smin="+smin+"$swyn="+swyn]
//
podstaw_dane:
xzbrutto := xstawka
if(xmnozyc) xzbrutto := roundN[xstawka*xlgodzin,2]
xzbrutton := xstawka
//okalert["xzbrutton xx="+xzbrutton]
//
% historia_czas_pracy.alg
rejop["hhx:otworzrejsprawdz","historia.rxr"]
rejop["hhx:zmienkluczrej","4"]
if(not(rejop["hhx:znajdzrek",xpracownik])) goto zamknij_hhx
petla_hhx:
wyr_rok := wyr_rok+ rejwezp_k["hhx:lata"]
wyr_mies := wyr_mies+ rejwezp_k["hhx:miesiace"]
wyr_dni := wyr_dni+ rejwezp_k["hhx:dni"]
if(rejop["hhx:weznastepnyrekn",""]) goto petla_hhx
if(wyr_rok>=1) goto zamknij_hhx
wyr_mx := Tostr["#wyr_dni/30#S:2"]
wyr_dni := wyr_dni- 30*stringnaliczbe[strcut[wyr_mx,0,strlen[wyr_mx]-3]]
wyr_mies := wyr_mies+stringnaliczbe[strcut[wyr_mx,0,strlen[wyr_mx]-3]]
wyr_mx := Tostr["#wyr_mies/12#S:2"] 
wyr_mies := wyr_mies- 12*stringnaliczbe[strcut[wyr_mx,0,strlen[wyr_mx]-3]]
wyr_rok := wyr_rok+stringnaliczbe[strcut[wyr_mx,0,strlen[wyr_mx]-3]]
zamknij_hhx:
rejop["hhx:zamknijrej",""]
//
% PODSTAW-DANE-ZASADNICZA.ALG
xzbrutton := .
if(wyrownanie and not(rej_stalych)) Exitalg[0]
//  CallAlg["POBIERZ-DANE-Z-KADR"]
 callalg["WPISZ-DO-NIEOBECNOSCI"]
if(strin["--"+xskladnik+"--",sklad_stale]>-1) kwota_stale := kwota_stale+wynagr_podstawa1
//if( xpracownik =="001") okalert["maria podstaw-dane-zasadnicza xstawka ="+stawka]
if(not(xczystaly)) wynagr_zasadnicz := wynagr_zasadnicz - zabor_wypoczynk - zabor_oko - zabor_szk
if(wynagr_zasadnicz<0) wynagr_zasadnicz := 0
if(gdzpracy = il_godz_przeprac) goto wylicz
xstawka := wynagr_zasadnicz
wylicz:
if(wymiar=="dzie|n" or wymiar=="godzin|e") xstawka := stawka
xzbrutton := wynagr_podstawa
if(wymiar=="dzie|n" or wymiar=="godzin|e") xzbrutton := stawka
//if( xpracownik =="001") okalert["1 wymiar="+wymiar+"xzbrutton="+xzbrutton]
xlgodzin := 1
if(wymiar=="dzie|n") xlgodzin := il_dni_przeprac
if(wymiar=="godzin|e") xlgodzin := il_godz_przeprac
gdzpracy := il_godz_przeprac
gdzpracyu := il_godz_przeprac+ilgdzrob_oko+ ilgdzrob_wypoczynk+ilgdzrob_szk
gdzuop_szk := ilgdzrob_oko+ ilgdzrob_szk
gdzpracyu_all := rzil_godz_robocz
gdzpracyu_nn := ilgdzrob_nn
dnipracyu := il_dni_przeprac+ildnirob_wypoczynk + ildnirob_oko + ildnirob_szk
dnipracyu_bww := ildnirob_bww
dnipracyu_all := rzil_dni_robocz
dnipracyu_nn := ildnirob_nn
dnipracyu_kal := il_dni_robocz
//if(xpracownik ="087") okalert["wynagr_zasadnicz="+wynagr_zasadnicz+"xlgodzin="+xlgodzin+"$xstawka="+xstawka+"$xbrutto="+xzbrutto]
xzbrutto := roundN[xlgodzin * xstawka,2]
//
% POBIERZ-DANE-Z-KADR.ALG
  if(Not(RejOp["DK:ZnajdzRek",xpracownik])) ExitAlg[0]
  wynagr_podstawa  := RejWezP_K["DK:KDR_wyn_baz"]
  wynagr_podstawa1 := rejwezp_k["DK:KDR_wyn_pod"]
  wynagr_zasadnicz := RejWezP_K["DK:KDR_wyn_zas"]
  zabor_bezplatny  := RejWezP_K["DK:KDR_min_bez"]
  zabor_lekarsk00  := RejWezP_K["DK:KDR_min_l00"]
  zabor_lekarsk80  := RejWezP_K["DK:KDR_min_l80"]
  zabor_lekarsk70  := RejWezP_K["DK:KDR_min_l70"]
  zabor_lekarsk75  := RejWezP_K["DK:KDR_min_l75"]
  zabor_lekarsk90  := RejWezP_K["DK:KDR_min_l90"]
  zabor_wypoczynk  := RejWezP_K["DK:KDR_min_wyp"]
  zabor_szk  := RejWezP_K["DK:KDR_min_szk"]
  zabor_oko  := RejWezP_K["DK:KDR_min_oko"]
  zabor_ekwiwalen  := RejWezP_K["DK:KDR_min_ekw"]
  wynagr_lekarsk80 := RejWezP_K["DK:KDR_wyn_l80"]
  wynagr_lekarsk70 := RejWezP_K["DK:KDR_wyn_l70"]
  wynagr_lekarsk75 := RejWezP_K["DK:KDR_wyn_l75"]
  wynagr_lekarsk90 := RejWezP_K["DK:KDR_wyn_l90"]
  wynagr_lekarsk00 := RejWezP_K["DK:KDR_wyn_l00"]
  wynagr_wypoczynk := RejWezP_K["DK:KDR_wyn_wyp"]
  wynagr_szk := RejWezP_K["DK:KDR_wyn_szk"]
  wynagr_oko := RejWezP_K["DK:KDR_wyn_oko"]
wynagr_ekwiwalen := RejWezP_K["DK:KDR_wyn_ekw"]
 ildniall_lekarskie := RejWezP_K["DK:KDR_dni_lek"]
 ildniall_lekarsk00 := RejWezP_K["DK:KDR_dni_l00"]
 ildnirall_lekarsk00 := RejWezP_K["DK:KDR_dnir_l00"]
 ilgdzall_lekarsk00 := RejWezP_K["DK:KDR_gdz_l00"]
 ildniall_lekarsk80 := RejWezP_K["DK:KDR_dni_l80"]
 ildnirall_lekarsk80 := RejWezP_K["DK:KDR_dnir_l80"]
 ilgdzall_lekarsk80 := RejWezP_K["DK:KDR_gdz_l80"]
 ildniall_lekarsk70 := RejWezP_K["DK:KDR_dni_l70"]
 ildnirall_lekarsk70 := RejWezP_K["DK:KDR_dnir_l70"]
 ilgdzall_lekarsk70 := RejWezP_K["DK:KDR_gdz_l70"]
 ildniall_lekarsk75 := RejWezP_K["DK:KDR_dni_l75"]
 ildnirall_lekarsk75 := RejWezP_K["DK:KDR_dnir_l75"]
 ilgdzall_lekarsk75 := RejWezP_K["DK:KDR_gdz_l75"]
 ildniall_lekarsk90 := RejWezP_K["DK:KDR_dni_l90"]
 ildnirall_lekarsk90 := RejWezP_K["DK:KDR_dnir_l90"]
 ilgdzall_lekarsk90 := RejWezP_K["DK:KDR_gdz_l90"]
 ildnirob_wypoczynk := RejWezP_K["DK:KDR_dni_wyp"]
 ilgdzrob_wypoczynk := RejWezP_K["DK:KDR_gdz_wyp"]
 ildnirob_oko := RejWezP_K["DK:KDR_dni_oko"]
 ilgdzrob_oko := RejWezP_K["DK:KDR_gdz_oko"]
 ildnirob_szk := RejWezP_K["DK:KDR_dni_szk"]
 ilgdzrob_szk := RejWezP_K["DK:KDR_gdz_szk"]
 ildnirob_ekwiwalen := RejWezP_K["DK:KDR_dni_ekw"]
 ilgdzrob_ekwiwalen := RejWezP_K["DK:KDR_gdz_ekw"]
 ildnirob_bezplatny := RejWezP_K["DK:KDR_dni_bez"]
 ilgdzrob_bezplatny := RejWezP_K["DK:KDR_gdz_bez"]
 ildnirob_bww := RejWezP_K["DK:KDR_dni_bww"]
 ildnirob_nn := RejWezP_K["DK:KDR_dni_nn"]
 ilgdzrob_nn := RejWezP_K["DK:KDR_gdz_nn"]
stawka := RejWezP_K["DK:KDR_stawka"]
il_godz_przeprac := RejWezP_K["DK:til_gdz_prze"]
il_dni_przeprac := RejWezP_K["DK:til_dni_prze"]
il_dni_robocz := RejWezP_K["DK:til_dni_rob"]
il_godz_robocz := rejwezp_k["dk:til_gdz_rob"]
rzil_dni_robocz := RejWezP_K["DK:rztil_dni_rob"]
rzil_godz_robocz := rejwezp_k["dk:rztil_gdz_rob"]
rzil_dni_all := RejWezP_K["DK:rztil_dni_all"]
rzil_godz_all := rejwezp_k["dk:rztil_gdz_all"]
rztil_dni_all := RejWezP_K["DK:til_dni_all"]
rztil_godz_all := rejwezp_k["dk:til_gdz_all"]
wymiar := rejwezp_s["dk:kdr_wymiar"]
poczatek_choroby := rejwezp_d["dk:kdr_poczchor"]
poczatek_reh := rejwezp_d["dk:kdr_poczreh"]
//okalert["il_godz_przeprac="+il_godz_przeprac+"$il_dni_przeprac="+il_dni_przeprac]
//

% PODSTAW-DANE-ZAS-CHOROBOWY.ALG
//if(xpracownik="P0008") okalert["PODSTAW-DANE-ZAS-CHOROBOWY  xstawka="+xstawka+"$xskladnik="+xskladnik]
ldninieobec := .
xzbrutton := .
miesiac_pocz_nieobec := ''
CallAlg["WYLICZ-LICZBE-DNI-NIEOBECNOSCI"]
xlgodzin   := ldninieobec
//if(xpracownik="P0008") okalert["PODSTAW-DANE-ZAS-CHOROBOWY  xstawka="+xstawka+"$xskladnik="+xskladnik+"$zmien_stawka="+zmien_stawka+"$xlgodzin="+xlgodzin]
if(zmien_stawka or xlgodzin=.) xzbrutto   := .
if(zmien_stawka or xlgodzin=.) xstawka    := .
if(xmnozyc) xzbrutto := roundN[xstawka*xlgodzin,2]
if(xlgodzin=.) exitalg[0]
if(not(czy_uprawniony)) exitalg[0]
callalg["wylicz-stawke-chorobowe"]
datado4 := miesiac_pocz_nieobec
xzbrutto := xstawka
if(xmnozyc) xzbrutto := roundN[xstawka*xlgodzin,2]
xzbrutton := xstawka

% PODSTAW-DANE-bezplatny.ALG
ldninieobec := .
xzbrutton := .
CallAlg["WYLICZ-LICZBE-DNI-NIEOBECNOSCI"]
if(zmien_stawka) xzbrutto   := .
if(zmien_stawka) xstawka    := .
xlgodzin   := ldninieobec
xzbrutto := xstawka
if(xmnozyc) xzbrutto := roundN[xstawka*xlgodzin,2]
xzbrutton := xstawka 

% PODSTAW-DANE-WYN-CHOROBOWE.ALG
///if(xpracownik="1WM") okalert["PODSTAW-DANE-WYN-CHOROBOWE xstawka="+xstawka+"$xskladnik="+xskladnik+"$dataod3="+dataod3]
ldninieobec := .
xzbrutton := .
miesiac_pocz_nieobec := ''
CallAlg["WYLICZ-LICZBE-DNI-NIEOBECNOSCI"]
xlgodzin   := ldninieobec
if(zmien_stawka or xlgodzin=.) xzbrutto   := .
if(zmien_stawka or xlgodzin=.) xstawka    := .
if(xmnozyc) xzbrutto := roundN[xstawka*xlgodzin,2]
if(xlgodzin=.) exitalg[0]
callalg["wylicz-stawke-chorobowe"]
datado4 := miesiac_pocz_nieobec
xzbrutto := xstawka
if(xmnozyc) xzbrutto := roundN[xstawka*xlgodzin,2]
xzbrutton := xstawka
//
% odczytaj_reh.alg
if(poczatek_reh='') exitalg[0]
symbol_reh := strcut[studatas[poczatek_reh],0,5]
mies := strcut[studatas[poczatek_reh],5,2]
if(mies="01" or mies="02" or mies="03") symbol_reh := symbol_reh+"01"
if(mies="04" or mies="05" or mies="06") symbol_reh := symbol_reh+"04"
if(mies="07" or mies="08" or mies="09") symbol_reh := symbol_reh+"07"
if(mies="10" or mies="11" or mies="12") symbol_reh := symbol_reh+"10"
rejop["reh:otworzrej","WSKAZNIK_REH.RXR"]
rejop["reh:zmienkluczrej","1"]
if(rejop["reh:znajdzrek",symbol_reh]) procent_reh := rejwezp_k["reh:wskaznik"]   
if(procent_reh<100) procent_reh := 100
//okalert["procent_reh = "+procent_reh]
rejop["reh:zamknijrej",""]
//
// wyliczenie stawki chorobowej
% WYLICZ-STAWKE-CHOROBOWE.ALG
//if(xpracownik="1AZ") okalert["WYLICZ-STAWKE-CHOROBOWE xstawka="+xstawka+"$skladnik="+xskladnik]
//if(xpracownik=="32") okalert["miesiac_pocz_nieobec="+miesiac_pocz_nieobec]
// maria
//if(not(zmien_stawka)) exitalg[0]
if(not(ch_liczyc)) exitalg[0]
if(xpracownik="1WM") okalert["jest zmien_stawka="+zmien_stawka+"$xstawka="+xstawka]
// poprawka - w przypadku gdy uaktualnianie danych kadrowych - w liscie oczekujacej nie bylo chorobowego
//if(not(zmien_stawka) and not(xstawka=.)) exitalg[0]
// 
// przepisanie istniejacych szczegolow chorobowego z rejestru naliczen chorobowego
hchx := "hch1:"
if(lista_odlo_l) hchx := "hch:"
hchx2 := "hch3:"
if(lista_odlo_l) hchx2 := "hch2:"
//IF(korektalisty and not(kw_podstchor_old+0=0)) goto pobierz_danexx
if(zmien_stawka or xstawka=.) goto wylicz
//pobierz_danexx:
klucz := symlistynum+"*"+xpracownik+"*"+xskladnik
//if(xpracownik=="1AZ") okalert["mmm klucz="+klucz]
//if(xpracownik=="1AZ") rejop["hc:zobaczdbf",""]
//if(xpracownik=="1AZ") rejop[hchx+"zobaczdbf",""]
czy_hc := .N.
if(rejop["hc:znajdzrek","*"+xpracownik+"*"+xskladnik]) czy_hc := .T.
if(rejop["hc:znajdzrek","*"+xpracownik+"*"+xskladnik]) goto koniec_przepisywania
//if(xpracownik=="1AZ") okalert["przed"]
if(not(rejop[hchx+"znajdzrek",klucz])) goto sprawdz_dlugie
//if(xpracownik=="1AZ") okalert["po"]
rejop["hc:dodajtemprek",""]
rejop[hchx+"przeniespola","hc:"]
xrejwstawp_s["hc:lista",""]
xrejwstawp_k["hc:nrlisty",.]
xrejwstawp_s["hc:listanr",""]
rejop["hc:zapiszrek",""]
czy_hc := .T.
sprawdz_dlugie:
if(not(rejop["hc2:znajdzrek","*"+xpracownik+"*"+xskladnik])) goto uzupelnij_dane_hc2
 rejop["hc2:usunrek",""] 
if(rejop["hc2:weznastepnyrekn",""]) goto sprawdz_dlugie
uzupelnij_dane_hc2:
//okalert["klucz="+klucz+"$hch2 ustawiony="+rejwezp_k["hch2:szukajklucz"]]
if(not(rejop[hchx2+"znajdzrek",klucz])) goto koniec_przepisywania
//
dopisz_hc2:
rejop["hc2:dodajtemprek",""]
rejop[hchx2+"przeniespola","hc2:"]
xrejwstawp_s["hc2:listar",""]
xrejwstawp_k["hc2:nrlistyr",.]
xrejwstawp_s["hc2:listanr",""]
rejop["hc2:zapiszrek",""]
czy_hc := .T.
if(rejop[hchx2+"weznastepnyrekn",""]) goto dopisz_hc2
//
koniec_przepisywania:
//okalert["klucz="+klucz]
//rejop["hc:zobaczdbf",""]
//rejop["hc2:zobaczdbf",""]
//if(xpracownik=="1AZ") okalert["korektalisty="+korektalisty+"$czy_hc="+czy_hc]
//if(korektalisty and not(czy_hc)) goto wylicz
if(not(czy_hc)) goto wylicz
exitalg[0]
wylicz:
//if(xpracownik="1AZ") okalert["2. WYLICZ-STAWKE-CHOROBOWE xstawka="+xstawka+"$skladnik="+xskladnik]
if(procent_reh = . or procent_reh<100) procent_reh := 100
if((xrodz=="321" or xrodz=="322") and not(czy_byl_reh)) callalg["odczytaj_reh"]
// tu stwierdzenie od kiedy gromadzone sa dane w module i czy mozna na ich podstawie wyliczyc podstawe chorobowego
data_pocz_mod := ''
if(not(data_pocz_mod_s="")) data_pocz_mod := stringnadate[data_pocz_mod_s+".01"]
//if(xpracownik=="1AZ") okalert[" glowny pracownik="+xpracownik+"$dataod3="+dataod3+"$datado3="+datado3+"$data_pocz_mod="+data_pocz_mod+"$kw_podstchor_old="+kw_podstchor_old]
if(dataod3='') goto wylicz_nowa_podstawa
if(data_pocz_mod < dataod3) goto wylicz_nowa_podstawa
//if(kw_podstchor_old+0=0) goto wylicz_nowa_podstawa
if(kw_podstchor_old+0=0) goto wylicz_nowa_podstawa
//if(xpracownik=="1AZ") okalert[" nie wylicza nowej podstawy"]
//
procent_ch := 0
if(xtyp = "1") procent_ch := 1
if(xtyp="2") procent_ch := 0.8
if(xtyp = "3") procent_ch := 0.7
if(xtyp = "4") procent_ch := 0.75
if(xtyp = "5") procent_ch := 0.9
//if(xpracownik=="P014") okalert["kw_podstchor_old="+kw_podstchor_old+"$procent_ch="+procent_ch+"$pr_podstchor_old="+pr_podstchor_old+"$procent_reh="+procent_reh]
xstawka := Round[kw_podstchor_old*procent_ch*procent_reh/(100*pr_podstchor_old),2]
// tu przepisanie danych odnosnie wyliczenia podstawy chorobowego
//if(xpracownik="S05") okalert["s05 1"]
jest_stara_podst := .N.
klucz := lista_old+"*"+xpracownik+"*"+skladnik_old
//if(xpracownik="1AZ") okalert["klucz old="+klucz]
//if(xpracownik=="1AZ") rejop["hc:zobaczdbf",""]
//if(xpracownik=="1AZ") rejop[hchx+"zobaczdbf",""]
if(rejop["hc:znajdzrek","*"+xpracownik+"*"+xskladnik]) rejop["hc:usunrek",""] 
rejop["hc:dodajtemprek",""]
if(not(rejop[hchx+"znajdzrek",klucz])) goto sprawdz_dlugie1
jest_stara_podst := .T.
rejop[hchx+"przeniespola","hc:"]
xrejwstawp_s["hc:lista",""]
xrejwstawp_k["hc:nrlisty",.]
xrejwstawp_s["hc:listanr",""]
xrejwstawp_s["hc:skladnik",xskladnik]
xrejwstawp_s["hc:kodsklad",xrodz]
xrejwstawp_k["hc:proc_chor",procent_ch]
xrejwstawp_k["hc:proc_reh",procent_reh]
xrejwstawp_k["hc:stawka",xstawka]
rejop["hc:zapiszrek",""]
//if(rejop[hchx+"weznastepnyrekn",""]) goto petla_xxhchx
sprawdz_dlugie1:
//if(xpracownik="S05") okalert["s05 2"]
if(not(rejop["hc2:znajdzrek","*"+xpracownik+"*"+xskladnik])) goto uzupelnij_dane_hc21
 rejop["hc2:usunrek",""] 
if(rejop["hc2:weznastepnyrekn",""]) goto sprawdz_dlugie1
uzupelnij_dane_hc21:
if(not(rejop[hchx2+"znajdzrek",klucz])) goto po_dopisz_old
//if(not(rejop[hchx2+"znajdzrek",klucz])) goto dopisz_dane_old
dopisz_hc21:
jest_stara_podst := .T.
rejop["hc2:dodajtemprek",""]
rejop[hchx2+"przeniespola","hc2:"]
xrejwstawp_s["hc2:listar",""]
xrejwstawp_k["hc2:nrlistyr",.]
xrejwstawp_s["hc2:listanr",""]
xrejwstawp_s["hc2:skladnikr",xskladnik]
rejop["hc2:zapiszrek",""]
if(rejop[hchx2+"weznastepnyrekn",""]) goto dopisz_hc21
Exitalg[0]
po_dopisz_old:
//if(xpracownik="S05") okalert["s05 3"]
if(jest_stara_podst) Exitalg[0]
dopisz_dane_old:
//tu dopisanie danych do rejestru szczegolow, w przypadku gdy kontynuacja choroby a nie napotkano naliczonych szczegolow
//if(xpracownik="S05") okalert["s05 4"]
xrejwstawp_s["hc:sym",xpracownik]
xrejwstawp_s["hc:skladnik",xskladnik]
xrejwstawp_s["hc:kodsklad",xrodz]
n_k := 12
data_x := datado3
//okalert["datax="+datax+"$datado3="+datado3+"$pracownik="+xpracownik]
petla_hx:
n_s := tostr["#n_k#S:0"]
xrejwstawp_s["hc:mies"+n_s,strcut[studatas[data_x],2,5]]
xrejwstawp_l["hc:licz"+n_s,.N.]
if(not(rejop["chor1:szukajrek",xpracownik+"*"+strcut[studatas[data_x],2,5]])) goto po_hc_mies
xrejwstawp_s["hc:mies"+n_s,rejwezp_s["chor1:rokmie"]]
xrejwstawp_k["hc:dnih"+n_s,rejwezp_k["chor1:ch_ldnin"]]
xrejwstawp_k["hc:dnip"+n_s,rejwezp_k["chor1:ch_ldni"]]
xrejwstawp_k["hc:wyn"+n_s,rejwezp_k["chor1:ch_uzu"]]
xrejwstawp_k["hc:wynu"+n_s,rejwezp_k["chor1:ch_skl_uzu"]]
xrejwstawp_k["hc:wynn"+n_s,rejwezp_k["chor1:ch_nuzu"]]
xrejwstawp_k["hc:wynsn"+n_s,rejwezp_k["chor1:ch_stalen"]]
xrejwstawp_k["hc:wyns"+n_s,rejwezp_k["chor1:ch_stale"]]
xrejwstawp_k["hc:zuss"+n_s,rejwezp_k["chor1:ch_stale_zus"]]
xrejwstawp_k["hc:wynz"+n_s,rejwezp_k["chor1:ch_zm"]]
xrejwstawp_k["hc:zusz"+n_s,rejwezp_k["chor1:ch_zm_zus"]]
xrejwstawp_k["hc:wyni"+n_s,rejwezp_k["chor1:ch_skl_nuzu"]]
xrejwstawp_k["hc:zusi"+n_s,rejwezp_k["chor1:ch_skl_nuzu_zus"]]
xrejwstawp_l["hc:licz"+n_s,rejwezp_l["chor1:ptaszek"]]
po_hc_mies:
n_k := n_k - 1
data_x := data_x - A_date[data_x,"D"]
//if(xpracownik="A01") okalert["n_k="+n_k+"$data_x="+data_x]
if(n_k>0) goto petla_hx
//okalert["kw_podstchor_old="+kw_podstchor_old+"$/ pr_podstchorold="+pr_podstchor_old]
if(pustepole["hc:podstawa"]) xrejwstawp_k["hc:podstawa",kw_podstchor_old*30/pr_podstchor_old]
xrejwstawp_k["hc:proc_chor",procent_ch]
xrejwstawp_k["hc:proc_reh",procent_reh]
mstawka := roundn[rejwezp_k["hc:podstawa"] * procent_ch*procent_reh/100,2]
mstawka := roundn[mstawka/30,2]
xrejwstawp_k["hc:stawka",mstawka]
//okalert["1 lista="+ rejwezp_s["hc:lista"]]
rejop["hc:zapiszrek",""]
//rejop["hc:zobaczdbf",""]
Exitalg[0]
wylicz_nowa_podstawa:
//if(xpracownik=="1AZ") okalert["wylicz_nowa_podstawa"]
// zapisanie do rejestru naliczen chorobowego
// sprawdzenie czy s� umowy zlecenia
//data_kon := C_date[stringnaliczbe[rokwypl],stringnaliczbe[miesiacwypl],01]-1
data_kon := miesiac_pocz_nieobec- A_date[miesiac_pocz_nieobec,"D"] 
if(not(kw_podstchor_old+0=0)) data_kon := datado3
data_konx := data_kon+1
d_data := data_konx
  CallSl["PLACE_G->daj_koniec_mies()"]
data_konx := d_data
//
rokx := A_DATE[data_kon,"Y"]
miesx := A_date[data_kon,"M"]
if(miesx>=ch_lmies) goto ustal_data_pocz
petla_rokx:
rokx := rokx-1
miesx := miesx+12
if(miesx<ch_lmies) goto petla_rokx
ustal_data_pocz:
data_pocz  :=  C_date[rokx,miesx - ch_lmies + 1,1]
if(not(kw_podstchor_old+0=0)) data_pocz := dataod3
//okalert["data_kon="+data_kon+"$data-pocz="+data_pocz]
last_wymiar_zmx := C_date[A_date[last_wymiar_zm,"Y"],A_date[last_wymiar_zm,"M"],1]
rejop["MA:otworzrejtemp","plarch.rxr"]
callalgfile["place/umowy.py","odczytaj_ze_zlecen"]
rejop["ma:zmienkluczrej","16"]
podstawa_u := .
//if(data_pocz < last_wymiar_zm) data_pocz := last_wymiar_zm
data_kon_s := strcut[tostr["#data_kon#S"],0,5]
data_pocz_s := strcut[tostr["#data_pocz#S"],0,5]
podstawa_ch := .
podstawa_chx := .
podstawa_chy := .
podstawa_mies := ""
//okalert["1="+podstawa_chy]
procent_ch := 0
if(xtyp = "1") procent_ch := 1
if(xtyp="2") procent_ch := 0.8
if(xtyp = "3") procent_ch := 0.7
if(xtyp = "4") procent_ch := 0.75
if(xtyp = "5") procent_ch := 0.9
rejop["chor1:zmienkluczrej","1"]
n := 0
nn_k := 1
if(rejop["hc:znajdzrek","*"+xpracownik+"*"+xskladnik]) rejop["hc:usunrek",""]
rejop["hc:dodajtemprek",""]
xrejwstawp_s["hc:sym",xpracownik]
xrejwstawp_s["hc:skladnik",xskladnik]
xrejwstawp_s["hc:kodsklad",xrodz]
//rejop["chor1:zobaczdbf",""]
rejop["chor1:szukajrek",xpracownik+"*"+data_pocz_s]
//okalert[xpracownik+"*"+data_pocz_s+"$prac="+rejwezp_s["chor1:sym"]+"$rokmie="+stringnadate[rejwezp_s["chor1:rokmie"]+".01"]+"$data_pocz="+data_pocz+"$data_kon="+data_kon]
petla_chor:
if(not(rejwezp_s["chor1:sym"]==xpracownik)) goto koniec
if(not(stringnadate[rejwezp_s["chor1:rokmie"]+".01"]>=data_pocz)) goto koniec
if(stringnadate[rejwezp_s["chor1:rokmie"]+".01"]>data_kon) goto koniec
xrejwstawp_s["hc:sym",xpracownik]
nn_s := tostr["#nn_k#S:0"]
xrejwstawp_s["hc:mies"+nn_s,rejwezp_s["chor1:rokmie"]]
xrejwstawp_k["hc:dnih"+nn_s,rejwezp_k["chor1:ch_ldnin"]]
xrejwstawp_k["hc:dnip"+nn_s,rejwezp_k["chor1:ch_ldni"]]
xrejwstawp_k["hc:wyn"+nn_s,rejwezp_k["chor1:ch_uzu"]]
xrejwstawp_k["hc:wynu"+nn_s,rejwezp_k["chor1:ch_skl_uzu"]]
xrejwstawp_k["hc:wynn"+nn_s,rejwezp_k["chor1:ch_nuzu"]]
xrejwstawp_k["hc:wynsn"+nn_s,rejwezp_k["chor1:ch_stalen"]]
xrejwstawp_k["hc:wyns"+nn_s,rejwezp_k["chor1:ch_stale"]]
xrejwstawp_k["hc:zuss"+nn_s,rejwezp_k["chor1:ch_stale_zus"]]
xrejwstawp_k["hc:wynz"+nn_s,rejwezp_k["chor1:ch_zm"]]
xrejwstawp_k["hc:zusz"+nn_s,rejwezp_k["chor1:ch_zm_zus"]]
xrejwstawp_k["hc:wyni"+nn_s,rejwezp_k["chor1:ch_skl_nuzu"]]
xrejwstawp_k["hc:zusi"+nn_s,rejwezp_k["chor1:ch_skl_nuzu_zus"]]
xrejwstawp_l["hc:licz"+nn_s,rejwezp_l["chor1:ptaszek"]]
if(not(rejwezp_l["chor1:ptaszek"])) goto nastepny_chor
if(stringnadate[rejwezp_s["chor1:rokmie"]+".01"]< last_wymiar_zmx) goto nastepny_chor
podstawa_chx := podstawa_chx+rejwezp_k["chor1:ch_skl_uzu"]+rejwezp_k["chor1:ch_nuzu"]
podstawa_mies := podstawa_mies+strcut[rejwezp_s["chor1:rokmie"],3,2]+","
// umowy_zlecenia
if(not(rejop["ma:wezpierwszyrek",""])) goto omin_u
petla_podstawa_u:
//if(rejwezp_s["ma:rokmie"]== rejwezp_s["chor1:rokmie"]) okalert["ma="+rejwezp_s["ma:rokmie"]+"$chor1="+rejwezp_s["chor1:rokmie"]]
if(rejwezp_s["ma:rokmie"]== rejwezp_s["chor1:rokmie"]) podstawa_u := podstawa_u + rejwezp_k["ma:sbrutto"]-rejwezp_k["ma:sueu"] - rejwezp_k["ma:suru"] -rejwezp_k["ma:sucu"]
if(rejwezp_s["ma:rokmie"]== rejwezp_s["chor1:rokmie"]) xrejdodajp_k["hc:umowy"+nn_s,rejwezp_k["ma:sbrutto"]-rejwezp_k["ma:sueu"] -rejwezp_k["ma:suru"] -rejwezp_k["ma:sucu"]]
if(rejop["ma:weznastepnyrek",""]) goto petla_podstawa_u
omin_u:
//okalert["3"]
n := n+1
nastepny_chor:
nn_k := nn_k+1
if(rejop["chor1:weznastepnyrek",""]) goto petla_chor
koniec:
//rejop["ma:zobaczdbf",""]
rejop["ma:zamknijrej",""]
//okalert["2"]
//if (n=0) exitalg[0]
//okalert["podstawa_u="+podstawa_u]
xrejwstawp_k["hc:sumam",podstawa_chx]
xrejwstawp_k["hc:sumaz",podstawa_u]
podstawa_chx := podstawa_chx+podstawa_u
podstawa_chx := roundn[podstawa_chx / n,2]
xrejwstawp_k["hc:podstm",podstawa_chx]
xrejwstawp_k["hc:ilmies",n]
//
// odczytanie danych z rejestru sk�adnik�w > miesiac
rejop["chor2:zmienkluczrej","1"]
rejop["chorx:otworzrejtemp","plchor2.rxr"]
rejop["chor2:szukajrek",xpracownik+"*"+data_pocz_s]
petla_chor2:
if(not(rejwezp_s["chor2:sym"]==xpracownik)) goto koniecx
if(not(stringnadate[rejwezp_s["chor2:rokmie"]+".01"]>=data_pocz)) goto koniecx
if(stringnadate[rejwezp_s["chor2:rokmie"]+".01"]>data_konx) goto koniecx
rejop["chorx:dodajtemprek",""]
rejop["chor2:przeniespola","chorx:"]
rejop["chorx:zapiszrek",""]
//if(rejwezp_d["chorx:datado"]< last_wymiar_zm) xrejwstawp_k["chorx:proczna_m",0]
if(rejop["chor2:weznastepnyrek",""]) goto petla_chor2
koniecx:
podst_miesy := .
//rejop["chorx:zobaczdbf",""]
rejop["chorx:zmienkluczrej","3"]
//
// ttx - pomocniczy rejestr notuj�cy sk�adnik oraz ostatni okres przez niego rozliczany - dla potrzeb  
// por�wnania czy po ostatnim wystapieniu sk�adnika nastapi�a zmiana wymiaru czasu pracy
rejop["ttx:otworzrejtemp","plchor.rxr"]
rejop["ttx:zmienkluczrej","3"]
if(not(rejop["chorx:wezpierwszyrek",""])) goto po_liczenie_podst_miesy
petla_chorx:
//if(rejwezp_k["chorx:proczna_m"]=0) goto nastepny_chorx
if(rejop["ttx:znajdzrek",rejwezp_s["chorx:skladnik"]]) goto dodaj_dane
rejop["ttx:dodajrek",""]
xrejwstawp_s["ttx:skladnik",rejwezp_s["chorx:skladnik"]]
dodaj_dane:
//okalert["data="+rejwezp_d["chorx:datado"]]
xrejwstawp_s["ttx:lista",tostr["#rejwezp_d[""chorx:datado""]#S"]]
rejop["ttx:zapiszrek",""]
nastepny_chorx:
if(rejop["chorx:weznastepnyrek",""]) goto petla_chorx
//
// tu ustawienie w zaleznosci od daty ostatniej zmiany wymiaru czasu pracy.
// gdy zmiana wymiaru nastapila po okresie z kt�rego zliczany sk�adnik - skladnik wchodzi do podstawy
// gdy zmiana wymiaru nastapila w okresie z ktorego zliczany skladnik - skladnik pomijany
if(not(rejop["chorx:wezpierwszyrek",""])) goto po_liczenie_podst_miesy
petla_ttt:
rejop["ttx:znajdzrek",rejwezp_s["chorx:skladnik"]]
if(stringnadate[rejwezp_s["ttx:lista"]]< last_wymiar_zm) goto nastepny_ttt
if(rejwezp_d["chorx:datado"]<last_wymiar_zmx) rejwstawp_k["chorx:proczna_m",0]
rejwstawp_k["ttx:zmienne1",0]
nastepny_ttt:
if(stringnadate[rejwezp_s["ttx:lista"]]< last_wymiar_zm) rejwstawp_k["chorx:proczna_m",1]
if(stringnadate[rejwezp_s["ttx:lista"]]< last_wymiar_zm) rejwstawp_k["ttx:zmienne1",1]
//okalert["xx1"]
rejop["hc2:dodajtemprek",""]
rejop["chorx:przeniespola","hc2:"]
xrejwstawp_s["hc2:skladnikr",xskladnik]
rejop["hc2:zapiszrek",""]
if(rejop["chorx:weznastepnyrek",""]) goto petla_ttt 
// tu wyliczenie podst_miesy
chorx := "chorx:"
callalg["wylicz_podst_miesy"]
po_liczenie_podst_miesy:
//rejop["ttx:zobaczdbf",""]
rejop["ttx:zamknijrej",""]
rejop["chorx:zamknijrej",""]
podstawa_chy := podst_miesy
xrejwstawp_k["hc:podstw",podstawa_chy]
//okalert["podstawa_chx="+podstawa_chx+"$podstawa_chy="+podstawa_chy+"$procent_ch="+procent_ch]
podstawa_ch := podstawa_chx+podstawa_chy
xrejwstawp_k["hc:podstawa",podstawa_ch]
xrejwstawp_k["hc:proc_chor",procent_ch]
xrejwstawp_k["hc:proc_reh",procent_reh]
//okalert["2 lista="+ rejwezp_s["hc:lista"]]
//if(not(podstawa_ch+0=0)) okalert["podstawa_ch="+podstawa_ch]
//if(not(podstawa_ch+0=0)) rejop["hc:zapiszrek",""]
//rejop["hc:zobaczdbf",""]
// tu wstawienie danych dotyczacych okresu z ktorego liczone chorobowe, miesiecy i podstawy chorobowego
if(podstawa_ch = 0 or podstawa_ch = .) goto po_okresie_chor
dataod3 := data_pocz
if(data_pocz<last_wymiar_zmx) dataod3 := last_wymiar_zmx
datado3 := data_kon
kod_chor3 := podstawa_mies+"--"+Tostr["#podstawa_ch#S:2"]
po_okresie_chor:
//
if(not(pierwszy_mies)) goto po_pierwszy
//
   xueu    := .
   xuru    := .
   xucu    := .
   callalg["pl_par-stawki-ubezp"]
rejop["tt:wezpierwszyrek",""]
reje := "tt:"
rejsk := "x:"
rejc := "c:"
rejop["ch:otworzrejtemp","plchor1.rxr"]
rej_chor := "ch:"
znakk := 1
petla_tt_331:
callalg["dodaj_chor2"] 
if(rejop["tt:weznastepnyrek",""]) goto petla_tt_331
rejop["ch:wezpierwszyrek",""]
rejop["ch1:otworzrej","plchor1.rxr"]
rejop["ch1:zmienkluczrej","1"]
if(not(rejop["ch1:znajdzrek",xpracownik+"*"+mieswypl])) goto omin_dodaj
xrejdodajp_k["ch:ch_stalen",rejwezp_k["ch1:ch_stalen"]]
xrejdodajp_k["ch:ch_stale",rejwezp_k["ch1:ch_stale"]]
xrejdodajp_k["ch:ch_stale_zus",rejwezp_k["ch1:ch_stale_zus"]]
xrejdodajp_k["ch:ch_zm",rejwezp_k["ch1:ch_zm"]]
xrejdodajp_k["ch:ch_zm_zus",rejwezp_k["ch1:ch_zm_zus"]]
xrejdodajp_k["ch:ch_uzu",rejwezp_k["ch1:ch_uzu"]]
//okalert["ooooooo ch_uzu="+rejwezp_k["ch:ch_uzu"]]
uzu := roundn[rejwezp_k["ch:ch_uzu"]*rejwezp_k["ch:ch_ldnik"]/rejwezp_k["ch:ch_ldni"],2]
//okalert["uzu="+uzu+"$dni="+rejwezp_k["ch:ch_ldnik"]+"$/prac="+rejwezp_k["ch:ch_ldni"]+"$*ch_uzu="+rejwezp_k["ch:ch_uzu"]]
// w przypadku gdy wynagrodzenie w miesiacu sklada sie tylko ze skladnikow stalych
if(rejwezp_k["ch:ch_zm"]= . or rejwezp_k["ch:ch_zm"]= 0) uzu := roundn[(rejwezp_k["ch:ch_stale"]-rejwezp_k["ch:ch_stale_zus"])*rejwezp_k["ch:ch_stalen"]/rejwezp_k["ch:ch_stale"],2]
//okalert["uzu="+uzu+"$stale="+rejwezp_k["ch:ch_stale"]+"$- zus="+rejwezp_k["ch:ch_stale_zus"]+"$* podstawa="+rejwezp_k["ch:ch_stalen"]+"$/stale="+rejwezp_k["ch:ch_stale"]]
xrejwstawp_k["ch:ch_skl_uzu",uzu]
xrejdodajp_k["ch:ch_skl_nuzu",rejwezp_k["ch1:ch_skl_nuzu"]]
xrejdodajp_k["ch:ch_skl_nuzu_zus",rejwezp_k["ch1:ch_skl_nuzu_zus"]]
xrejdodajp_k["ch:ch_nuzu",rejwezp_k["ch1:ch_nuzu"]]
xrejdodajp_k["ch:ch_podst",rejwezp_k["ch1:ch_podst"]]
rejop["ch:zapiszrek",""]
omin_dodaj:
rejop["ch1:zamknijrej",""]
podstawa_ch := rejwezp_k["ch:ch_skl_uzu"]+rejwezp_k["ch:ch_nuzu"]
//okalert["xpracownik="+xpracownik+"$podstawa_331="+podstawa_331]
// dopisanie do rejestru h_chor danych z pierwszego miesiaca
if(rejop["hc:znajdzrek","*"+xpracownik+"*"+xskladnik]) goto wstaw_dane_m1
rejop["hc:dodajtemprek",""]
xrejwstawp_s["hc:sym",xpracownik]
xrejwstawp_s["hc:skladnik",xskladnik]
xrejwstawp_s["hc:kodsklad",xrodz]
wstaw_dane_m1:
xrejwstawp_s["hc:mies1",rejwezp_s["ch:rokmie"]]
xrejwstawp_k["hc:dnih1",rejwezp_k["ch:ch_ldnin"]]
xrejwstawp_k["hc:dnip1",rejwezp_k["ch:ch_ldni"]]
xrejwstawp_k["hc:wyn1",rejwezp_k["ch:ch_uzu"]]
xrejwstawp_k["hc:wynu1",rejwezp_k["ch:ch_skl_uzu"]]
xrejwstawp_k["hc:wynn1",rejwezp_k["ch:ch_nuzu"]]
xrejwstawp_k["hc:wynsn"+nn_s,rejwezp_k["ch:ch_stalen"]]
xrejwstawp_k["hc:wyns"+nn_s,rejwezp_k["ch:ch_stale"]]
xrejwstawp_k["hc:zuss"+nn_s,rejwezp_k["ch:ch_stale_zus"]]
xrejwstawp_k["hc:wynz"+nn_s,rejwezp_k["ch:ch_zm"]]
xrejwstawp_k["hc:zusz"+nn_s,rejwezp_k["ch:ch_zm_zus"]]
xrejwstawp_k["hc:wyni"+nn_s,rejwezp_k["ch:ch_skl_nuzu"]]
xrejwstawp_k["hc:zusi"+nn_s,rejwezp_k["ch:ch_skl_nuzu_zus"]]
xrejwstawp_l["hc:licz1",.T.]
xrejwstawp_k["hc:sumam",podstawa_ch]
xrejwstawp_k["hc:podstm",podstawa_ch]
xrejwstawp_k["hc:ilmies",1]
xrejwstawp_k["hc:podstawa",podstawa_ch]
xrejwstawp_k["hc:proc_chor",procent_ch]
xrejwstawp_k["hc:proc_reh",procent_reh]
//okalert["3 lista="+ rejwezp_s["hc:lista"]]
//rejop["hc:zapiszrek",""]
rejop["ch:zamknijrej",""]
dataod3 := pocz_data - A_date[pocz_data,"D"]+1
d_data := pocz_data
  CallSl["PLACE_G->daj_koniec_mies()"]
datado3 := d_data
kod_chor3 := strcut[studatas[pocz_data],5,2]+"--"+Tostr["#podstawa_ch#S:2"]
//
po_pierwszy:
//if(xpracownik=="BA01") okalert["podstawa_ch="+podstawa_ch+"$procent_ch="+procent_ch+"$pr_podstchor_old="+pr_podstchor_old+"$procent_reh="+procent_reh]
xstawka := roundn[podstawa_ch * procent_ch*procent_reh/100,2]
xstawka := roundn[xstawka/30,2]
xrejwstawp_k["hc:stawka",xstawka]
if(not(podstawa_ch+0=0)) rejop["hc:zapiszrek",""]
//
% wylicz_podst_miesy.alg
podst_miesy := .
//if(xpracownik="019") rejop["chorx:zobaczdbf",""]
if(not(rejop[chorx+"wezpierwszyrek",""])) goto po_chorx
/// ttt - rejestr zawierajacy rekordy skladnik i okres za ktory wyplacony.
rejop["ttt:otworzrejtemp","plchor.rxr"]
rejop["ttt:zmienkluczrej","3"]
//rejop["chor:zobaczdbf",""]
petla_chorx:
if(rejwezp_k[chorx+"proczna_m"]=0) goto nastepny_chorx
if(not(rejop["ttt:znajdzrek",rejwezp_s[chorx+"skladnik"]])) goto zaloz_rek
petla_skladnik:
dataodxx := ToStr["#rejwezp_s[""ttt:rokmie1""]+Fillstring[7-strlen[rejwezp_s[""ttt:rokmie1""]],"" ""]#L7"]
datadoxx := ToStr["#rejwezp_s[""ttt:rokmie2""]+Fillstring[7-strlen[rejwezp_s[""ttt:rokmie2""]],"" ""]#L7"]
//okalert["mmmskladnik="+tostr["#rejwezp_s[""ttt:skladnik""]#L7"]+"$rokmie1=."+dataodxx+".$dataod=."+strcut[studatas[rejwezp_d["chorx:dataod"]],0,7]+".$rokmie2=."+datadoxx+".$datado=."+""+strcut[studatas[rejwezp_d["chorx:dataod"]],0,7]+"."]
if(dataodxx==strcut[studatas[rejwezp_d[chorx+"dataod"]],0,7] and datadoxx=strcut[studatas[rejwezp_d[chorx+"datado"]],0,7]) goto dodaj_dane
if(rejop["ttt:weznastepnyrekn",""]) goto petla_skladnik
zaloz_rek:
rejop["ttt:dodajrek",""]
//if(xpracownik="019") okalert["skladnik="+rejwezp_s["chorx:skladnik"]]
xrejwstawp_s["ttt:skladnik",rejwezp_s[chorx+"skladnik"]]
xrejwstawp_s["ttt:rokmie1",strcut[studatas[rejwezp_d[chorx+"dataod"]],0,7]]
xrejwstawp_s["ttt:rokmie2",strcut[studatas[rejwezp_d[chorx+"datado"]],0,7]]
if( rejop["x:znajdzrek",rejwezp_s[chorx+"skladnik"]]) xrejwstawp_s["ttt:rokmie3",rejwezp_s["x:rodzskl"]]
//okalert["dodaje nowy skladnik="+rejwezp_s["ttt:skladnik"]+"$rokmie1=."+strcut[rejwezp_s["ttt:rokmie1"],0,7]+".$dataod=."+strcut[studatas[rejwezp_d["chorx:dataod"]],0,7]+".$rokmie2=."+strcut[rejwezp_s["ttt:rokmie2"],0,7]+".$datado=."+strcut[studatas[rejwezp_d["chorx:dataod"]],0,7]+"."]
dodaj_dane:
//if(xpracownik="019") okalert["po skladnik="+rejwezp_s["chorx:skladnik"]+" "+rejwezp_k["ttt:stale"]]
xrejwstawp_k["ttt:stale",rejwezp_k["ttt:stale"]+rejwezp_k[chorx+"proczna_m"]*(rejwezp_k[chorx+"ch_skl_uzu"]+rejwezp_k[chorx+"ch_nuzu"])]
// poprawka gdy za dany okres skladnik brany podwojnie - okres z ktorego jest liczony tez brany podwojnie
// xrejwstawp_k["ttt:l_godz",rejwezp_k["ttt:l_godz"]+rejwezp_k["chorx:kwart_m"]]
//xrejwstawp_k["ttt:l_godz",rejwezp_k["ttt:l_godz"]+rejwezp_k["chorx:proczna_m"]*rejwezp_k["chorx:kwart_m"]]
//okalert["skladnik="+rejwezp_s["ttt:skladnik"]+"$proczna_m="+rejwezp_k["chorx:proczna_m"]+"$kwart_m="+rejwezp_k["chorx:kwart_m"]]
xrejwstawp_k["ttt:l_godz",rejwezp_k[chorx+"proczna_m"]*rejwezp_k[chorx+"kwart_m"]]
wymiar_ww := rejwezp_s[chorx+"wymiar"]
poz := strin["/",wymiar_ww]
wymiar_wk := stringnaliczbe[strcut[wymiar_ww,0,poz]] / stringnaliczbe[strcut[wymiar_ww,poz+1,10]]
//xrejwstawp_k["ttt:zmienne1",rejwezp_k["ttt:zmienne1"]+ rejwezp_k["chorx:kwart_m"]*wymiar_wk]
if(pustepole["ttt:zmienne1"]) xrejwstawp_k["ttt:zmienne1",rejwezp_k[chorx+"kwart_m"]*wymiar_wk]
rejop["ttt:zapiszrek",""]
nastepny_chorx:
if(rejop[chorx+"weznastepnyrek",""]) goto petla_chorx
rejop["ttt:wezpierwszyrek",""]
sklad_old := rejwezp_s["ttt:skladnik"]
// tu wyznaczenie liczby miesiecy z ktorych zliczany skladnik - dla skladnikow innych niz roczne i kwartalne
podstawa_tttx := .
l_godz_tttx := .
l_mies_i := .
l_mies_r := .
l_mies_k := .
kod_s := rejwezp_s["ttt:rokmie3"]
petla_ttt:
if(sklad_old == rejwezp_s["ttt:skladnik"]) goto licz_tttx
if(not(kod_s="31" or kod_s="34" or kod_s="22")) l_godz_tttx := l_mies_i
if(kod_s="31" or kod_s="34") l_godz_tttx := l_mies_r
if(kod_s="22") l_godz_tttx := l_mies_k
//if(xpracownik="P006") okalert["budowanie podstawy $skladnik="+rejwezp_s["ttt:skladnik"]+"$podst_miesy="+podst_miesy+"$podstawa_tttx="+podstawa_tttx+"$l_godz_tttx="+l_godz_tttx]
podst_miesy := podst_miesy + podstawa_tttx/l_godz_tttx
podstawa_tttx := .
l_godz_tttx := .
licz_tttx:
podstawa_ttt := rejwezp_k["ttt:stale"]
rejop["ttx:znajdzrek",rejwezp_s["ttt:skladnik"]]
// liczba miesiecy w przypadku skladnikow rocznych i kwartalnych
kod_s := rejwezp_s["ttt:rokmie3"]
if(not(kod_s="31" or kod_s="34" or kod_s="22")) goto k_i
if(kod_s="22") goto k_22
data_xp := stringnadate[rejwezp_s["ttt:rokmie1"]+".01"]
data_xk := stringnadate[rejwezp_s["ttt:rokmie2"]+".01"]
d_data := data_xk
  CallSl["PLACE_G->daj_koniec_mies()"]
data_xk := d_data
if(data_xp<=data_zat) data_xp := data_zat 
m1_k := A_date[data_xp,"M"]
// tu ustalenie poczatku okresu do wyliczenia liczby miesiecy
n := 0
petla_ustalpocz_r:
dataxx := strcut[wykaz_zmian_wymiarow,n*11,8]
wymiar_dd := stringnadate[dataxx]
if(wymiar_dd = '') goto po_ustalpocz_r
if(data_xp<=wymiar_dd and data_xk>=wymiar_dd) m1_k := A_date[wymiar_dd,"M"]
n := n+1
goto petla_ustalpocz_r
po_ustalpocz_r:
m2_k := A_date[data_xk,"M"]
l_mies_r := m2_k - m1_k + 1
goto wspolne
k_22:
m3_k := A_date[poczatek_choroby,"M"]
r3_k := A_date[poczatek_choroby,"Y"]
if(m3_k>=1 and m3_k<=3) data_xp := C_date[r3_k-1,10,1]
if(m3_k>=1 and m3_k<=3) data_xk := C_date[r3_k-1,12,31]
if(m3_k>=4 and m3_k<=6) data_xp := C_date[r3_k,1,1]
if(m3_k>=4 and m3_k<=6) data_xk := C_date[r3_k,3,31]
if(m3_k>=7 and m3_k<=9) data_xp := C_date[r3_k,4,1]
if(m3_k>=7 and m3_k<=9) data_xk := C_date[r3_k,6,30]
if(m3_k>=10 and m3_k<=12) data_xp := C_date[r3_k,7,1]
if(m3_k>=10 and m3_k<=12) data_xk := C_date[r3_k,9,30]
if(data_xp<=data_zat) data_xp := data_zat 
m1_k := A_date[data_xp,"M"]
r1_k := A_date[data_xp,"Y"]
// tu ustalenie poczatku okresu do wyliczenia liczby miesiecy
n := 0
petla_ustalpocz_k:
dataxx := strcut[wykaz_zmian_wymiarow,n*11,8]
wymiar_dd := stringnadate[dataxx]
if(wymiar_dd = '') goto po_ustalpocz_k
if(data_xp<=wymiar_dd and data_xk>=wymiar_dd) m1_k := A_date[wymiar_dd,"M"]
if(data_xp<=wymiar_dd and data_xk>=wymiar_dd) r1_k := A_date[wymiar_dd,"Y"]
n := n+1
goto petla_ustalpocz_k
po_ustalpocz_k:
m2_k := A_date[data_xk,"M"]
r2_k := A_date[data_xk,"Y"]
l_mies_k := m2_k - m1_k + 1
if(r2_k>r1_k) l_mies_k := 12+l_mies_k
goto wspolne
k_i:
l_mies := 12
//if(xpracownik="P006") okalert["data_zat="+data_zat+"$data_kon="+data_kon+"$data_pocz="+data_pocz+"$last_wymiar_zmx="+last_wymiar_zmx+"$poczatek_choroby="+poczatek_choroby]
if(data_pocz<=data_zat) data_pocz := data_zat 
m1_k := A_date[data_pocz,"M"]
r1_k := A_date[data_pocz,"Y"]
// tu ustalenie poczatku okresu do wyliczenia liczby miesiecy
n := 0
petla_ustalpocz_i:
dataxx := strcut[wykaz_zmian_wymiarow,n*11,8]
wymiar_dd := stringnadate[dataxx]
if(wymiar_dd = '') goto po_ustalpocz_i
if(rejwezp_k["ttx:zmienne1"]=1 and wymiar_dd = last_wymiar_zmx) goto po_ustalpocz_i
if(data_xp<=wymiar_dd and data_xk>=wymiar_dd) m1_k := A_date[wymiar_dd,"M"]
if(data_xp<=wymiar_dd and data_xk>=wymiar_dd) r1_k := A_date[wymiar_dd,"Y"]
n := n+1
goto petla_ustalpocz_i
po_ustalpocz_i:
m2_k := A_date[data_kon,"M"]
r2_k := A_date[data_kon,"Y"]
l_mies := m2_k - m1_k +1
if(r2_k>r1_k) l_mies := 12+l_mies
wspolne:
if(rejwezp_k["ttx:zmienne1"]=1) podstawa_ttt := Round[podstawa_ttt*wymiar_new*rejwezp_k["ttt:l_godz"]/rejwezp_k["ttt:zmienne1"],2]
//if(xpracownik="019") okalert["podst_miesy="+podst_miesy+"$podstawa_ttt="+podstawa_ttt+"$czas="+rejwezp_k["ttt:l_godz"]]
//podst_miesy := podst_miesy + podstawa_ttt/rejwezp_k["ttt:l_godz"]
podstawa_tttx := podstawa_tttx +podstawa_ttt
l_godz_tttx := l_godz_tttx + rejwezp_k["ttt:l_godz"]
sklad_old := rejwezp_s["ttt:skladnik"]
if(rejop["ttt:weznastepnyrek",""]) goto petla_ttt
if(not(kod_s="31" or kod_s="34" or kod_s="22")) l_godz_tttx := l_mies
//if(xpracownik="P006") okalert["budowanie podstawy koniec$skladnik="+rejwezp_s["ttt:skladnik"]+"$podst_miesy="+podst_miesy+"$podstawa_tttx="+podstawa_tttx+"$l_godz_tttx="+l_godz_tttx]
podst_miesy := podst_miesy + podstawa_tttx/l_godz_tttx
//okalert["podst_miesy="+podst_miesy]
//rejop["ttt:zobaczdbf",""]
rejop["ttt:zamknijrej",""]
po_chorx:

% PODSTAW-DANE-WYN-REHABILITACJA.ALG
ldninieobec := .
xzbrutton := .
miesiac_pocz_nieobec := ''
CallAlg["WYLICZ-LICZBE-DNI-NIEOBECNOSCI"]
xlgodzin   := ldninieobec
if(zmien_stawka or xlgodzin=.) xzbrutto   := .
if(zmien_stawka or xlgodzin=.) xstawka    := .
if(xmnozyc) xzbrutto := roundN[xstawka*xlgodzin,2]
if(xlgodzin=.) exitalg[0]
if(not(czy_uprawniony)) exitalg[0]
callalg["wylicz-stawke-chorobowe"]
datado4 := miesiac_pocz_nieobec
xzbrutto := xstawka
if(xmnozyc) xzbrutto := roundN[xstawka*xlgodzin,2]
xzbrutton := xstawka

% PODSTAW-DANE-WYN-OPIEKA.ALG
ldninieobec := .
xzbrutton := .
CallAlg["WYLICZ-LICZBE-DNI-NIEOBECNOSCI"]
if(zmien_stawka) xzbrutto   := .
if(zmien_stawka) xstawka    := .
xlgodzin   := ldninieobec
xzbrutto := xstawka
if(xmnozyc) xzbrutto := roundN[xstawka*xlgodzin,2]
xzbrutton := xstawka
//
% ZEROWANIE_LICZNIKOW.ALG
wynagr_wypoczynk := 0
wynagr_szk := 0
wynagr_oko := 0
wynagr_ekwiwalen := 0
wynagr_lekarsk00 := 0
wynagr_lekarsk80 := 0
wynagr_lekarsk70 := 0
wynagr_lekarsk75 := 0
wynagr_lekarsk90 := 0
zabor_bezplatny := 0
zabor_lekarsk00 := 0
zabor_lekarsk80 := 0
zabor_lekarsk70 := 0
zabor_lekarsk75 := 0
zabor_lekarsk90 := 0
zabor_wypoczynk := 0
zabor_szk := 0
zabor_oko := 0
zabor_ekwiwalen := 0
ildnirob_bezplatny := 0
ilgdzrob_bezplatny := 0
ildnirob_bww := 0
ildnirob_nn := 0
ilgdzrob_nn := 0
ildniall_lekarskie := 0
ilgdzall_lekarskie := 0
ildniall_lekarsk00 := 0
ildnirall_lekarsk00 := 0
ilgdzall_lekarsk00 := 0
ildniall_lekarsk80 := 0
ildnirall_lekarsk80 := 0
ilgdzall_lekarsk80 := 0
ildniall_lekarsk70 := 0
ildnirall_lekarsk70 := 0
ilgdzall_lekarsk70 := 0
ildniall_lekarsk75 := 0
ildnirall_lekarsk75 := 0
ilgdzall_lekarsk75 := 0
ildniall_lekarsk90 := 0
ildnirall_lekarsk90 := 0
ilgdzall_lekarsk90 := 0
ildnirob_wypoczynk := 0
ilgdzrob_wypoczynk := 0
ildnirob_szk := 0
ilgdzrob_szk := 0
ildnirob_oko := 0
ilgdzrob_oko := 0
ildnirob_ekwiwalen := 0
ilgdzrob_ekwiwalen := 0
il_godz_przeprac := 0
il_dni_przeprac := 0
il_dni_robocz := 0
il_godz_robocz := 0
rzil_dni_robocz := 0
rzil_godz_robocz := 0
rzil_dni_all := 0
rzil_godz_all := 0
rztil_dni_all := 0
rztil_godz_all := 0
//    til_dni_all := 0
//    til_gdz_all := 0
//    til_dni_rob := 0
//    til_gdz_rob := 0
//    xil_dni_all := 0
//    xil_gdz_all := 0
//    xil_dni_rob := 0
//    xil_gdz_rob := 0
//    il_dni_all := 0
//    il_gdz_all := 0
//    il_dni_rob := 0
//    il_gdz_rob := 0

//
% LICZ_WYNAGRODZENIE.ALG
if(not(RejOp["PP:ZnajdzRek",idx_prc])) okalert["Brak przebiegu pracy dla pracownika "+idx_prc]
  wynagr_podstawa := 0
  wynagr_podstawa1 := 0
  wynagr_podstawa2 := 0
  rztil_gdz_rob := 0
  rztil_dni_rob := 0
  rztil_gdz_all := 0
  rztil_dni_all := 0
  rztil_gdz_rob_przed := 0
  date_beg := datapocz
  date_end := datakon
  idx_rdz := ""
  CallAlg["WEZ_PARAMETRY_MIESIACA"]
 _next_P:
  if (not (RejWezP_S["PP:sym"] = idx_prc)) goto _end_P
  idx_rdz := RejWezP_S["PP:miegodz"]
  pdatapocz := RejWezP_D["PP:dataod"]
  pdatakon  := RejWezP_D["PP:datado"]
  if (pdatakon = '') pdatakon := datakon
  if (pdatakon < datapocz) goto _loop_P
  if (pdatapocz > datakon) goto _loop_P
  if (pdatapocz < datapocz) pdatapocz := datapocz
  if (pdatakon > datakon) pdatakon := datakon
// tu sprawdzenie ile godzin roboczych przed przyjeciem do pracy
  if(pdatapocz=datapocz) goto omin_spr  
  if(not(pdatapocz=data_zat)) goto omin_spr  
  pdatapocz_old := pdatapocz
  pdatakon_old := pdatakon
  pdatapocz := datapocz
  pdatakon := pdatapocz_old -1
  CallAlg["WEZ_PARAMETRY_PRZEBIEGU_ZATRUDNIENIA"]
  rztil_gdz_rob_przed := xil_gdz_rob
  pdatapocz := pdatapocz_old
  pdatakon := pdatakon_old
omin_spr:
//
  pwynagrodz := RejWezP_K["PP:wynagrodz"]
//  okalert["pdatapocz="+pdatapocz+"$pdatakon="+pdatakon+"$pwynagrodz="+pwynagrodz+"$pracownik="+RejWezP_S["PP:sym"]+"$idx="+idx_prc]
  CallAlg["WEZ_PARAMETRY_PRZEBIEGU_ZATRUDNIENIA"]
  if (idx_rdz = "" or idx_rdz == "miesi|ac") goto stawka_miesieczna
  if (idx_rdz == "dzie|n")   xwynagr_podstawa := pwynagrodz * xil_dni_rob
  if (idx_rdz == "godzin|e") xwynagr_podstawa := pwynagrodz * xil_gdz_rob
goto wspolne
stawka_miesieczna:
// okres przebiegu moze nie obejowac pelnego miesiaca bo:
// 1. podwyzka
// 2. zwolnienie w trakcie miesiaca lub zatrudnienie w trakcie miesiaca
// tu wyliczenie wynagrodzenia przy przyjeciu ze pracownik pracuje pelny miesiac
if(til_gdz_rob=xil_gdz_rob) xwynagr_podstawa := pwynagrodz
if(til_gdz_rob=xil_gdz_rob) goto wspolne
 xwynagr_podstawa := pwynagrodz/til_gdz_rob
// xwynagr_podstawa := (til_gdz_rob - xil_gdz_rob)*xwynagr_podstawa
// xwynagr_podstawa := Roundn[pwynagrodz - xwynagr_podstawa,2]
if(pdatakon=data_zw or pdatapocz=data_zat) goto inne_wylicz
 if(not(pdatakon=data_zw)) xwynagr_podstawa := xil_gdz_rob*xwynagr_podstawa
goto wspolne
inne_wylicz:
if(pdatapocz=data_zat and pdatakon=data_zw) xwynagr_podstawa := pwynagrodz
if(pdatapocz=data_zat and pdatakon=data_zw) goto wspolne
if(pdatapocz=data_zat)  xwynagr_podstawa := (xil_gdz_rob+rztil_gdz_rob_przed)*xwynagr_podstawa
if(pdatakon=data_zw)  xwynagr_podstawa := (til_gdz_rob-rztil_gdz_rob)*xwynagr_podstawa
wspolne:
  wynagr_podstawa := wynagr_podstawa + xwynagr_podstawa
// dla pracujacych czesc miesiaca - rzeczywista liczba dni i godzin pracy wymagana w danym miesiacu
  rztil_gdz_rob := rztil_gdz_rob+xil_gdz_rob
  rztil_dni_rob := rztil_dni_rob+xil_dni_rob
  rztil_gdz_all := rztil_gdz_all+xil_gdz_all
  rztil_dni_all := rztil_dni_all+xil_dni_all
// maria zaremowana linia omijajaca wyznaczanie angazu dla osob pracujacych czesc miesiaca
//  if(Not(pdatakon = datakon)) goto _loop_P
//  wynagr_podstawa1 := 0
  if (idx_rdz = "")          wynagr_podstawa2 := pwynagrodz
  if (idx_rdz == "Miesi|ac") wynagr_podstawa2 := pwynagrodz
  if (idx_rdz == "Miesi|ac" or idx_rdz = "")  goto _loop_P
        ldnirob    := 0
        xzlgodzin  := 0
        lminut     := 0
        lgodzin    := 0
        lminuts     := 0
        lgodzins    := 0
        lminutw     := 0
        lgodzinw    := 0
        dataod     := datapocz
        datado     := datakon
        kalengrupa := RejwezP_S["C:kalengrupa"]
  CallAlg["PRZYGOTUJ-DANE-DLA-KALENDARZA"]

  if (idx_rdz == "dzie|n")   wynagr_podstawa2 := pwynagrodz * ldnirob
  if (idx_rdz == "godzin|e") wynagr_podstawa2 := pwynagrodz * lminut/60
  wynagr_podstawa2 := RoundN[wynagr_podstawa2,2]
 _loop_P:
  if (RejOp["PP:WezNastepnyRek",""]) goto _next_P
 _end_P:
  wynagr_podstawa1 := wynagr_podstawa
  if (not(idx_rdz = "" or idx_rdz == "miesi|ac")) wynagr_podstawa1 := wynagr_podstawa2
  if (not(idx_rdz = "" or idx_rdz == "miesi|ac")) Exitalg[0]
//okalert["til_gdz_rob="+til_gdz_rob+"$rztil_gdz_rob="+rztil_gdz_rob+"$pracownik="+idx_prc+"$data_zat="+data_zat+"$data_zw="+data_zw+"$wynagr_podstawa="+wynagr_podstawa]
if(til_gdz_rob=rztil_gdz_rob) Exitalg[0]
 xwynagr_podstawa := wynagr_podstawa/til_gdz_rob
 xwynagr_podstawa := (til_gdz_rob - rztil_gdz_rob)*xwynagr_podstawa
 wynagr_podstawa := Round[wynagr_podstawa - xwynagr_podstawa,2]

// okalert["pwynagrodz="+pwynagrodz+"$pracownik="+RejWezP_S["PP:sym"]+"$idx="+idx_prc+"$wynagr_podstawa1="+wynagr_podstawa1]
//
% WEZ_PARAMETRY_MIESIACA.ALG
//okalert["WEZ_PARAMETRY_MIESIACA.ALG"]  
idx := ""+date_beg
  idx := "##"+kl_d_grupa+StrCut[idx,0,2]+StrCut[idx,3,2]
// xokres_placa - to zmienna do prawidlowego wybrania miesiaca naliczania plac - w przypadku gdy sa nierozliczone nieobecnosci pop. mies
  if (not(xokres="")) ExitAlg[0]
  xokres := idx
  if (RejOp["DK:ZnajdzRek",idx]) goto _read
  CallAlg["LICZBA_DNI_I_GODZIN"]
  til_dni_all := il_dni_all
  til_gdz_all := il_gdz_all
  til_dni_rob := il_dni_rob
  til_gdz_rob := il_gdz_rob
  RejOp["DK:DodajRek",""]
  xRejWstawP_S["DK:KDR_sym",idx]
  xRejWstawP_K["DK:til_dni_all",til_dni_all]
  xRejWstawP_K["DK:til_gdz_all",til_gdz_all]
  xRejWstawP_K["DK:til_dni_rob",til_dni_rob]
  xRejWstawP_K["DK:til_gdz_rob",til_gdz_rob]
  RejOp["DK:ZapiszRek",""]
  ExitAlg[0]
 _read:
  til_dni_all := RejWezP_K["DK:til_dni_all"]
  til_gdz_all := RejWezP_K["DK:til_gdz_all"]
  til_dni_rob := RejWezP_K["DK:til_dni_rob"]
  til_gdz_rob := RejWezP_K["DK:til_gdz_rob"]

% WEZ_PARAMETRY_PRZEBIEGU_ZATRUDNIENIA.ALG
  date_beg := pdatapocz
  date_end := pdatakon
  CallAlg["LICZBA_DNI_I_GODZIN"]
  xil_dni_all := il_dni_all
  xil_gdz_all := il_gdz_all
  xil_dni_rob := il_dni_rob
  xil_gdz_rob := il_gdz_rob
//
% LICZ_NIEOBECNOSCI.ALG
//okalert["LICZ_NIEOBECNOSCI symlisty="+symlisty+"$symlistynum="+symlistynum+"$korektalisty="+korektalisty]
pwynagrodz_st := pwynagrodz
wykaz_kodow := "--311--312--313--314--319--321--322--325--327--331--332--"
wykaz_kodow_reh := "--321--322--"
//1.etap - odszukanie nieobecnosci nie ujetych jeszcze na liscie
  if (not (RejOp["CE:ZnajdzRek",idx_prc])) ExitAlg[0]
 _next_N:
  if(wyrownanie) goto inny_war
  if(rejwezp_l["CE:anulowana"]) goto _loop_n
// nieobecnosc na innej liscie oczekujacej traktowana jak rozliczona 11.11.06
// w przypadku gd
//  if (not (RejWezP_S["CE:lista"] = "" or strin["@",RejWezP_S["CE:lista"]]>-1 or RejWezP_S["CE:lista1"] = "" or strin["@",RejWezP_S["CE:lista1"]]>-1)) goto _loop_N
// w przypadku listy oczekujacej uwzglednienie rowniez nieobecnosci rozliczonych ta lista 12.03.21
// w przypadku listy korygujacej uwzglednienie rowniez nieobecnosci rozliczonych lista korygowana 12.05.07
  if(symlistynum="") goto omin_spr_oczek
  if(RejWezP_S["CE:lista"] = "@"+symlistynum and RejWezP_S["CE:lista1"] = "@"+symlistynum) goto cz_wspolna
  if(korektalisty and RejWezP_S["CE:lista"] = symlistynum and RejWezP_S["CE:lista1"] = symlistynum) goto cz_wspolna
  omin_spr_oczek: 
  if (not (RejWezP_S["CE:lista"] = "" or RejWezP_S["CE:lista1"] = "")) goto _loop_N
  goto cz_wspolna
  inny_war:
  if(rejwezp_l["CE:anulowana"]) goto _loop_n
  if (RejWezP_S["CE:lista"] = "" or strin["@",RejWezP_S["CE:lista"]]>-1 or RejWezP_S["CE:lista1"] = "" or strin["@",RejWezP_S["CE:lista1"]]>-1) goto _loop_N
  cz_wspolna:
  ndatapocz := RejWezP_D["CE:dataod"]
  ndatakon  := RejWezP_D["CE:datado"]
  xkodzwoln := RejWezP_S["CE:kodalgo"]
  xrodzm2 := ""
  if(not(rejop["CB:znajdzrek",rejwezp_s["ce:kodnieob"]])) goto omin_cb
 xrodzm2 := rejwezp_s["CB:rodzsklad"]
 xkodzwoln := RejWezP_S["CB:kodalgo"]
omin_cb:
//if(idx_prc=="GA01") okalert["nieobec="+rejwezp_s["ce:kodnieob"]+"$od="+ndatapocz+"$do="+ndatakon]
  if (ndatapocz > datakon) goto _end_N
//if(idx_prc=="GA01") okalert["1poczatek_choroby="+poczatek_choroby]
  if (wyrownanie and ndatakon < datapocz) goto _loop_N
//if(idx_prc=="GA01") okalert["2poczatek_choroby="+poczatek_choroby]
  if (ndatakon = '') ndatakon := datakon
//if(idx_prc=="GA01") okalert["3poczatek_choroby="+poczatek_choroby]
if(strin["--"+xrodzm2+"--",wykaz_kodow]>-1 and ndatapocz<poczatek_choroby) poczatek_choroby := ndatapocz
if(strin["--"+xrodzm2+"--",wykaz_kodow_reh]>-1 and ndatapocz<poczatek_reh) poczatek_reh := ndatapocz
//if(strin["--"+xrodzm2+"--",wykaz_kodow]>-1 and idx_prc=="GA01") okalert["poczatek_choroby="+poczatek_choroby+"$xrodzm2="+xrodzm2+"$kodnieobec="+rejwezp_s["ce:kodnieob"]]
  RejOp["PP:ZnajdzRek",idx_prc]
 _next_P:
  if (not (RejWezP_S["PP:sym"] == idx_prc)) goto _end_P
  pdatapocz := RejWezP_D["PP:dataod"]
  pdatakon := RejWezP_D["PP:datado"]
  if (pdatakon = '') pdatakon := datakon
  if (pdatakon < ndatapocz) goto _loop_P
  if (ndatakon < pdatapocz) goto _loop_P
  pwynagrodz := RejWezP_K["PP:wynagrodz"]
  idx_rdz := RejWezP_S["PP:miegodz"]
  date_beg := C_DATE[A_DATE[ndatapocz,"Y"],A_DATE[ndatapocz,"M"],1]
// ten blad powodowal zawieszenie sie komputera podczas przepisywania 
// danych z kadr.....
  if(A_DATE[ndatapocz,"M"]<12) date_end := C_DATE[A_DATE[ndatapocz,"Y"],A_DATE[ndatapocz,"M"]+1,1]-1
  if(A_DATE[ndatapocz,"M"]=12) date_end := C_DATE[A_DATE[ndatapocz,"Y"]+1,1,1]-1
  CallAlg["WEZ_PARAMETRY_MIESIACA"]
  date_beg := pdatapocz
//maria
  if (date_beg < ndatapocz) date_beg := ndatapocz
  date_end := pdatakon
  if (date_end > ndatakon) date_end := ndatakon
// odczytanie liczby dni/godzin w zaleznosci od rodzaju nieobecnosci
//  if(idx_prc=="026")  okalert["rodzaj nieobecnosci="+rejwezp_s["ce:kodnieob"]+" date_beg="+date_beg+" date_end="+date_end]
  if (xkodzwoln = "1") CallAlg["URLOP_BEZPLATNY"]
  if (xkodzwoln = "2") CallAlg["URLOP_WYPOCZYNK"]
  if (xkodzwoln = "3") CallAlg["URLOP_EKWIWALEN"]
  if (xkodzwoln = "4") CallAlg["ZWOLN_LEKARSK80"]
  if (xkodzwoln = "5") CallAlg["ZWOLN_LEKARSK00"]
  if (xkodzwoln = "6") CallAlg["ZWOLN_LEKARSK70"]
  if (xkodzwoln = "7") CallAlg["ZWOLN_LEKARSK75"]
  if (xkodzwoln = "8") CallAlg["ZWOLN_LEKARSK90"]
  if (xkodzwoln = "0") CallAlg["BEZ_WPLYWU_NA_WYN"]
 _loop_P:
  if (RejOp["PP:WezNastepnyRekN",""]) goto _next_P
 _end_P:
 _loop_N: 
  if (RejOp["CE:WezNastepnyRekN",""]) goto _next_N
 _end_N:
  rdatapocz := C_DATE[A_DATE[datapocz,"Y"],1,1]
  rdatakon := C_DATE[A_DATE[datapocz,"Y"],12,31]
pwynagrodz := pwynagrodz_st
// odczytanie dni wszystkich nieobecnosci liczonych jako zwolnienie
  if (not (RejOp["CE:ZnajdzRek",idx_prc])) ExitAlg[0]
 _next_NZ:
  if (not (RejWezP_S["CE:sym"] = idx_prc)) goto _end_NZ
  ndatapocz := RejWezP_D["CE:dataod"]
  ndatakon  := RejWezP_D["CE:datado"]
  xkodzwoln := RejWezP_S["CE:kodalgo"]
  if(not (xkodzwoln = "4" or xkodzwoln = "5" or xkodzwoln = "6" or xkodzwoln = "7" or xkodzwoln = "8")) goto _loop_NZ
  date_beg := rdatapocz
  if (date_beg < ndatapocz) date_beg := ndatapocz
  date_end := rdatakon
  if (date_end > ndatakon) date_end := ndatakon
//  if(idx_prc=="026")  okalert["xxxx rodzaj nieobecnosci="+rejwezp_s["ce:kodnieob"]+" date_beg="+date_beg+" date_end="+date_end]
  CallAlg["ZWOLN_LEKARSKIE"]
 _loop_NZ:
  if (RejOp["CE:WezNastepnyRek",""]) goto _next_NZ
 _end_NZ:
//if(idx_prc="001") okalert["bo_dnichor="+bo_dnichor+"$ildniall_lekarskie="+ildniall_lekarskie]
  ildniall_lekarskie := ildniall_lekarskie + bo_dnichor
//
% LICZBA_DNI_I_GODZIN.ALG
  il_dni_all := 0
  il_gdz_all := 0
  il_dni_rob := 0
  il_gdz_rob := 0
  nrdate := date_beg
  KL_D_DATA := date_beg
  CallAlg["KL-DAJ-DATE"]
 _next_date:
  il_dni_all := il_dni_all + 1
  il_gdz_all := il_gdz_all + 60 * KL_D_LICZBA + KL_D_LICZBAMIN
  if (KL_D_PRAC) il_dni_rob := il_dni_rob + 1
  if (KL_D_PRAC) il_gdz_rob := il_gdz_rob + 60*KL_D_LICZBA + KL_D_LICZBAMIN
  nrdate := nrdate + 1
  if (nrdate > date_end) goto _end
  CallAlg["KL-DAJ-NASTEPNA"]
  goto _next_date
 _end:
 il_gdz_all := RoundN[il_gdz_all/60,2]
 il_gdz_rob := RoundN[il_gdz_rob/60,2]
//
% czy_jest_roboczy.alg
  kl_D_Data := date_beg
  data := date_beg
  CallAlg["KL-DAJ-DATE"]
 _next_date:
  if (KL_D_PRAC) czy_roboczy := .T.
  if(czy_roboczy) goto end
  data := data+1
  if (data > date_end) goto end
  CallAlg["KL-DAJ-NASTEPNA"]
  goto _next_date
end:
//
% BEZ_WPLYWU_NA_WYN.ALG
if(xrodzm2=="1" or xrodzm2=="2" or xrodzm2="3" or xrodzm2="152") Exitalg[0]
  CallAlg["LICZBA_DNI_I_GODZIN"]
ildnirob_bww := ildnirob_bww + il_dni_rob

% ZWOLN_LEKARSKIE.ALG
  CallAlg["LICZBA_DNI_I_GODZIN"]
  ildniall_lekarskie := ildniall_lekarskie + il_dni_all
//  ilgdzall_lekarskie := ilgdzall_lekarskie + il_gdz_all
  ilgdzall_lekarskie := ilgdzall_lekarskie + il_gdz_rob

% ZWOLN_LEKARSK80.ALG
// okalert["date_beg="+date_beg+"$date_end="+date_end]
  CallAlg["LICZBA_DNI_I_GODZIN"]
  ildniall_lekarsk80 := ildniall_lekarsk80 + il_dni_all
  ildnirall_lekarsk80 := ildnirall_lekarsk80 + il_dni_rob
//  ilgdzall_lekarsk80 := ilgdzall_lekarsk80 + il_gdz_all
  ilgdzall_lekarsk80 := ilgdzall_lekarsk80 + il_gdz_rob
  xzabor_lekarsk80 := 0
//  OKALERT["12"]
% ZWOLN_LEKARSK70.ALG
  CallAlg["LICZBA_DNI_I_GODZIN"]
  ildniall_lekarsk70 := ildniall_lekarsk70 + il_dni_all
  ildnirall_lekarsk70 := ildnirall_lekarsk70 + il_dni_rob
//  ilgdzall_lekarsk70 := ilgdzall_lekarsk70 + il_gdz_all
  ilgdzall_lekarsk70 := ilgdzall_lekarsk70 + il_gdz_rob
  xzabor_lekarsk70 := 0

% ZWOLN_LEKARSK75.ALG
  CallAlg["LICZBA_DNI_I_GODZIN"]
  ildniall_lekarsk75 := ildniall_lekarsk75 + il_dni_all
  ildnirall_lekarsk75 := ildnirall_lekarsk75 + il_dni_rob
  ilgdzall_lekarsk75 := ilgdzall_lekarsk75 + il_gdz_rob
  xzabor_lekarsk75 := 0

% ZWOLN_LEKARSK90.ALG
  CallAlg["LICZBA_DNI_I_GODZIN"]
  ildniall_lekarsk90 := ildniall_lekarsk90 + il_dni_all
  ildnirall_lekarsk90 := ildnirall_lekarsk90 + il_dni_rob
  ilgdzall_lekarsk90 := ilgdzall_lekarsk90 + il_gdz_rob
  xzabor_lekarsk90 := 0

% ZWOLN_LEKARSK00.ALG
  CallAlg["LICZBA_DNI_I_GODZIN"]
  ildniall_lekarsk00 := ildniall_lekarsk00 + il_dni_all
  ildnirall_lekarsk00 := ildnirall_lekarsk00 + il_dni_rob
//  ilgdzall_lekarsk00 := ilgdzall_lekarsk00 + il_gdz_all
  ilgdzall_lekarsk00 := ilgdzall_lekarsk00 + il_gdz_rob
  xzabor_lekarsk00 := 0

% URLOP_WYPOCZYNK.ALG
//  if(idx_prc=="055")  okalert["maria il_gdz_rob="+il_gdz_rob]
  CallAlg["LICZBA_DNI_I_GODZIN"]
//  okalert["przed ilgdzrob_wypoczynk="+ilgdzrob_wypoczynk+"$ildnirob_wypoczynk"+ildnirob_wypoczynk]
//  if(idx_prc=="055")  okalert["maria pwynagrodz="+pwynagrodz+"$idx_rdz="+idx_rdz]
  zabor_stawka := roundN[pwynagrodz/til_gdz_rob,2]
  if(idx_rdz == "dzie|n" or idx_rdz =="godzin|e" ) zabor_stawka := pwynagrodz
  if (idx_rdz == "")         xzabor_wypoczynk := roundN[il_gdz_rob * zabor_stawka,2]
  if (idx_rdz == "miesi|ac") xzabor_wypoczynk := roundN[il_gdz_rob * zabor_stawka,2]
  if (idx_rdz == "dzie|n")   xzabor_wypoczynk := roundN[il_dni_rob * zabor_stawka,2]
  if (idx_rdz == "godzin|e") xzabor_wypoczynk := roundN[il_gdz_rob * zabor_stawka,2]
  if(xrodzm2=="1") zabor_wypoczynk    := zabor_wypoczynk + xzabor_wypoczynk
  if(xrodzm2=="2") zabor_szk    := zabor_szk + xzabor_wypoczynk
  if(xrodzm2=="3") zabor_oko    := zabor_oko + xzabor_wypoczynk
//  okalert["zabor_wypoczynk="+zabor_wypoczynk]
  if(xrodzm2=="1")   ildnirob_wypoczynk := ildnirob_wypoczynk + il_dni_rob
  if(xrodzm2=="1")   ilgdzrob_wypoczynk := ilgdzrob_wypoczynk + il_gdz_rob
  if(xrodzm2=="2")   ildnirob_szk := ildnirob_szk + il_dni_rob
  if(xrodzm2=="2")   ilgdzrob_szk := ilgdzrob_szk + il_gdz_rob
  if(xrodzm2=="3")   ildnirob_oko := ildnirob_oko + il_dni_rob
  if(xrodzm2=="3")   ilgdzrob_oko := ilgdzrob_oko + il_gdz_rob
  if(not(xrodzm2="1" or xrodzm2="2" or xrodzm2="3")) ildnirob_bww := ildnirob_bww+il_dni_rob
//  okalert["po ilgdzrob_wypoczynk="+ilgdzrob_wypoczynk+"$ildnirob_wypoczynk"+ildnirob_wypoczynk]

% URLOP_EKWIWALEN.ALG
  CallAlg["LICZBA_DNI_I_GODZIN"]
//  if (idx_rdz == "")         xzabor_wypoczynk := il_dni_rob / til_dni_rob * pwynagrodz
//  if (idx_rdz == "miesi|ac") xzabor_wypoczynk := il_dni_rob / til_dni_rob * pwynagrodz
//  if (idx_rdz == "dzie|n")   xzabor_wypoczynk := il_dni_rob / til_dni_rob * (pwynagrodz * til_dni_rob)
//  if (idx_rdz == "godzin|e") xzabor_wypoczynk := il_dni_rob / til_dni_rob * (pwynagrodz * til_gdz_rob / 60)
//  zabor_ekwiwalen    := zabor_ekwiwalen + xzabor_wypoczynk
  zabor_ekwiwalen    := 0
  ildnirob_ekwiwalen := ildnirob_ekwiwalen + il_dni_rob
  ilgdzrob_ekwiwalen := ilgdzrob_ekwiwalen + il_gdz_rob

% LICZ_LEKARSK00.ALG
  wynagr_lekarsk00 := 0

% LICZ_LEKARSK80.ALG
  wynagr_lekarsk80 := 0

% LICZ_LEKARSK70.ALG
  wynagr_lekarsk70 := 0

% LICZ_LEKARSK75.ALG
  wynagr_lekarsk75 := 0

% LICZ_LEKARSK90.ALG
  wynagr_lekarsk90 := 0

% LICZ_WYPOCZYNK.ALG
  wynagr_wypoczynk := zabor_wypoczynk

% LICZ_SZKOLENIOWY.ALG
  wynagr_szk := zabor_szk

% LICZ_OKOLICZNOSCIOWY.ALG
  wynagr_oko := zabor_oko


% LICZ_EKWIWALEN.ALG
  wynagr_ekwiwalen := 0
//
% WRITE_REKORD_DK.ALG
  RejOp["DK:DodajRek",""]
  xRejWstawP_S["DK:KDR_sym",idx_prc]
  xRejWstawP_K["DK:KDR_wyn_baz",wynagr_podstawa]
  xRejWstawP_K["DK:KDR_wyn_zas",wynagr_zasadnicz]
  xRejWstawP_K["DK:KDR_min_bez",zabor_bezplatny]
  xRejWstawP_K["DK:KDR_min_l00",zabor_lekarsk00]
  xRejWstawP_K["DK:KDR_min_l80",zabor_lekarsk80]
  xRejWstawP_K["DK:KDR_min_l70",zabor_lekarsk70]
  xRejWstawP_K["DK:KDR_min_l75",zabor_lekarsk75]
  xRejWstawP_K["DK:KDR_min_l90",zabor_lekarsk90]
  xRejWstawP_K["DK:KDR_min_wyp",zabor_wypoczynk]
  xRejWstawP_K["DK:KDR_min_szk",zabor_szk]
  xRejWstawP_K["DK:KDR_min_oko",zabor_oko]
  xRejWstawP_K["DK:KDR_min_ekw",zabor_ekwiwalen]
  xRejWstawP_K["DK:KDR_wyn_l00",wynagr_lekarsk00]
  xRejWstawP_K["DK:KDR_wyn_l80",wynagr_lekarsk80]
  xRejWstawP_K["DK:KDR_wyn_l70",wynagr_lekarsk70]
  xRejWstawP_K["DK:KDR_wyn_l75",wynagr_lekarsk75]
  xRejWstawP_K["DK:KDR_wyn_l90",wynagr_lekarsk90]
  xRejWstawP_K["DK:KDR_wyn_wyp",wynagr_wypoczynk]
  xRejWstawP_K["DK:KDR_wyn_szk",wynagr_szk]
  xRejWstawP_K["DK:KDR_wyn_oko",wynagr_oko]
  xRejWstawP_K["DK:KDR_wyn_ekw",wynagr_ekwiwalen]
  xRejWstawP_K["DK:KDR_dni_lek",ildniall_lekarskie]
  xRejWstawP_K["DK:KDR_dni_l00",ildniall_lekarsk00]
  xRejWstawP_K["DK:KDR_dnir_l00",ildnirall_lekarsk00]
  xRejWstawP_K["DK:KDR_gdz_l00",ilgdzall_lekarsk00]
  xRejWstawP_K["DK:KDR_dni_l80",ildniall_lekarsk80]
  xRejWstawP_K["DK:KDR_dnir_l80",ildnirall_lekarsk80]
  xRejWstawP_K["DK:KDR_gdz_l80",ilgdzall_lekarsk80]
  xRejWstawP_K["DK:KDR_dni_l70",ildniall_lekarsk70]
  xRejWstawP_K["DK:KDR_dnir_l70",ildnirall_lekarsk70]
  xRejWstawP_K["DK:KDR_gdz_l70",ilgdzall_lekarsk70]
  xRejWstawP_K["DK:KDR_dni_l75",ildniall_lekarsk75]
  xRejWstawP_K["DK:KDR_dnir_l75",ildnirall_lekarsk75]
  xRejWstawP_K["DK:KDR_gdz_l75",ilgdzall_lekarsk75]
  xRejWstawP_K["DK:KDR_dni_l90",ildniall_lekarsk90]
  xRejWstawP_K["DK:KDR_dnir_l90",ildnirall_lekarsk90]
  xRejWstawP_K["DK:KDR_gdz_l90",ilgdzall_lekarsk90]
  xRejWstawP_K["DK:KDR_dni_wyp",ildnirob_wypoczynk]
  xRejWstawP_K["DK:KDR_gdz_wyp",ilgdzrob_wypoczynk]
  xRejWstawP_K["DK:KDR_dni_szk",ildnirob_szk]
  xRejWstawP_K["DK:KDR_gdz_szk",ilgdzrob_szk]
  xRejWstawP_K["DK:KDR_dni_oko",ildnirob_oko]
  xRejWstawP_K["DK:KDR_gdz_oko",ilgdzrob_oko]
  xRejWstawP_K["DK:KDR_dni_ekw",ildnirob_ekwiwalen]
  xRejWstawP_K["DK:KDR_gdz_ekw",ilgdzrob_ekwiwalen]
  xRejWstawP_K["DK:KDR_dni_bez",ildnirob_bezplatny]
  xRejWstawP_K["DK:KDR_gdz_bez",ilgdzrob_bezplatny]
  xRejWstawP_K["DK:KDR_dni_bww",ildnirob_bww]
  xRejWstawP_K["DK:KDR_dni_nn",ildnirob_nn]
  xRejWstawP_K["DK:KDR_gdz_nn",ilgdzrob_nn]
  xRejWstawP_K["DK:KDR_wyn_pod",wynagr_podstawa1]
  xRejWstawP_K["DK:til_dni_all",til_dni_all]
  xRejWstawP_K["DK:til_gdz_all",til_gdz_all]
  xRejWstawP_K["DK:til_dni_rob",til_dni_rob]
  xRejWstawP_K["DK:til_gdz_rob",til_gdz_rob]
  xRejWstawP_K["DK:rztil_dni_rob",rztil_dni_rob]
  xRejWstawP_K["DK:rztil_gdz_rob",rztil_gdz_rob]
  xRejWstawP_K["DK:rztil_dni_all",rztil_dni_all]
  xRejWstawP_K["DK:rztil_gdz_all",rztil_gdz_all]
  til_dni_prze := RoundN[rztil_dni_rob-ildnirob_bezplatny-ildnirob_wypoczynk-ildnirob_szk-ildnirob_oko-ildnirall_lekarsk80-ildnirall_lekarsk70-ildnirall_lekarsk75-ildnirall_lekarsk90-ildnirall_lekarsk00,2]
  if(til_dni_prze<0) til_dni_prze := 0
  xRejWstawP_K["DK:til_dni_prze",til_dni_prze]
//if(idx_prc="1001") okalert["til_gdz_rob="+til_gdz_rob+"$-ilgdzrob_bezplatny="+ilgdzrob_bezplatny+"$-ilgdzrob_wypoczynk="+ilgdzrob_wypoczynk+"$-ilgdzrob_szk="+ilgdzrob_szk+"$-ilgdzrob_oko="+ilgdzrob_oko+"$-ilgdzall_lekarsk80="+ilgdzall_lekarsk80+"$-ilgdzall_lekarsk70="+ilgdzall_lekarsk70+"$-ilgdzall_lekarsk00="+ilgdzall_lekarsk00]1
//if(idx_prc="01001") okalert["rztil_gdz_rob="+rztil_gdz_rob+"$-ilgdzrob_bezplatny="+ilgdzrob_bezplatny+"$-ilgdzrob_wypoczynk="+ilgdzrob_wypoczynk+"$-ilgdzrob_szk="+ilgdzrob_szk+"$-ilgdzrob_oko="+ilgdzrob_oko+"$-ilgdzall_lekarsk80="+ilgdzall_lekarsk80+"$-ilgdzall_lekarsk70="+ilgdzall_lekarsk70+"$-ilgdzall_lekarsk00="+ilgdzall_lekarsk00]
  xRejWstawP_K["DK:til_gdz_prze",rztil_gdz_rob-ilgdzrob_bezplatny-ilgdzrob_wypoczynk-ilgdzrob_szk-ilgdzrob_oko-ilgdzall_lekarsk80-ilgdzall_lekarsk70-ilgdzall_lekarsk75-ilgdzall_lekarsk90-ilgdzall_lekarsk00]
xRejWstawP_K["DK:kdr_stawka",pwynagrodz]
xrejwstawp_s["dk:kdr_wymiar",idx_rdz]
xrejwstawp_d["dk:kdr_poczchor",poczatek_choroby]
xrejwstawp_d["dk:kdr_poczreh",poczatek_reh]
  RejOp["DK:ZapiszRek",""]  

//
% URLOP_BEZPLATNY.ALG
  CallAlg["LICZBA_DNI_I_GODZIN"]
  if (idx_rdz == "")         xzabor_bezplatny := il_gdz_rob / til_gdz_rob * pwynagrodz
  if (idx_rdz == "miesi|ac") xzabor_bezplatny := il_gdz_rob / til_gdz_rob * pwynagrodz
  if (idx_rdz == "dzie|n")   xzabor_bezplatny := il_gdz_rob / til_gdz_rob * (pwynagrodz * til_dni_rob)
  if (idx_rdz == "godzin|e") xzabor_bezplatny := il_gdz_rob / til_gdz_rob * (pwynagrodz * til_gdz_rob)
  zabor_bezplatny    := zabor_bezplatny + xzabor_bezplatny
//okalert["zabor_bezplatny="+zabor_bezplatny]  
ildnirob_bezplatny := ildnirob_bezplatny + il_dni_rob
  ilgdzrob_bezplatny := ilgdzrob_bezplatny + il_gdz_rob
  if(not(xrodzm2="152")) Exitalg[0]
  ildnirob_nn := ildnirob_nn + il_dni_rob
  ilgdzrob_nn := ilgdzrob_nn + il_gdz_rob


% PY.stawki-podatku-place$MODUL=place_pod$

import pers

def dodaj_d(nowy) :
    pers.ustawazmienna_S("rokxx")
    pers.exdialogop("PozycjaAktywna","*")
    
    if nowy == 1 :
	    pers.exdialogop("idzdopozycji","10")
    else :
            pers.exdialogop("PozycjaNieAktywna","10")
            pers.exdialogop("IdzDoPozycji","11")
	
    pers.exdialogop("dodajstrone","100:PLCPOD-STRONA-0")
    pers.exdialogop("dodajstrone","100:PLCPOD-STRONA-1")
    pers.exdialogop("dodajstrone","100:PLCPOD-STRONA-2")

def dodaj_d_zobacz() :
    pers.ustawazmienna_S("rokxx")
    pers.exdialogop("dodajstrone","100:PLCPOD-STRONA-zobacz-0")
    pers.exdialogop("dodajstrone","100:PLCPOD-STRONA-zobacz-1")
    pers.exdialogop("dodajstrone","100:PLCPOD-STRONA-zobacz-2")
    pers.exdialogop("Pozycjaniewprowadzana","*")

// ------------------------------------------------
// rejestr podatnikow
// ------------------------------------------------

% PODATNIKALGO.XXX
%< PODATNIK-POD-NAZWA.XXX(REJ-POD-NAZWA=PODATNIK)
% PODATNIK-POD-NAZWA.XXX
"AKCJA-PRZED-WYSWIETLENIEM-$$(REJ-POD-NAZWA)-REKORD-1.DLG",PODATNIKREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-$$(REJ-POD-NAZWA)-REKORD-3.DLG",PODATNIKREKORD-DODAJSTART1
"AKCJA-PRZED-WYSWIETLENIEM-$$(REJ-POD-NAZWA)-REKORD-0.DLG",PODATNIKREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-$$(REJ-POD-NAZWA)-REKORD-2.DLG",PODATNIKREKORD-DODAJLOOK
"AKCJA-BUTTON1-$$(REJ-POD-NAZWA)-REKORD-?.DLG",PODATNIKREKORD-AKCEPTUJESZ
"AKCJA-BUTTON2-$$(REJ-POD-NAZWA)-REKORD-?.DLG",PODATNIKREKORD-REZYGNUJESZ
"AKCJA-PRZED-WYSWIETLENIEM-$$(REJ-POD-NAZWA)-MENU-?.DLG",PODATNIK-PRZED
"AKCJA-PRZED-WYKONYWANIEM-$$(REJ-POD-NAZWA)-MENU-?.DLG",PODATNIK-PRZED-WYKO
"AKCJA-BUTTON20-$$(REJ-POD-NAZWA)-MENU-?.DLG",PODATNIKMENU-USUN
"AKCJA-BUTTON30-$$(REJ-POD-NAZWA)-MENU-?.DLG",PODATNIKMENU-SORTUJ
"AKCJA-BUTTON31-$$(REJ-POD-NAZWA)-MENU-?.DLG",PODATNIKMENU-SORTUJ
"AKCJA-BUTTON32-$$(REJ-POD-NAZWA)-MENU-?.DLG",PODATNIKMENU-SORTUJ
"AKCJA-BUTTON33-$$(REJ-POD-NAZWA)-MENU-?.DLG",PODATNIKMENU-SORTUJ
"AKCJA-BUTTON40-$$(REJ-POD-NAZWA)-MENU-?.DLG",PODATNIKMENU-SORTUJ
"AKCJA-BUTTON34-$$(REJ-POD-NAZWA)-MENU-?.DLG",PODATNIKMENU-WYDRUK
"AKCJA-BUTTON35-$$(REJ-POD-NAZWA)-MENU-?.DLG",PODATNIKMENU-ZMIEN-K_UZYS
"AKCJA-BUTTON36-$$(REJ-POD-NAZWA)-MENU-?.DLG",PODATNIKMENU-ZMIEN-K_ZW
"AKCJA-BUTTON37-$$(REJ-POD-NAZWA)-MENU-?.DLG",PARAM-DO-KONT
"AKCJA-BUTTON38-$$(REJ-POD-NAZWA)-MENU-?.DLG",!CallPyt["import place_g | place_g.pracownik_gus()"]
"AKCJA-BUTTON38-$$(REJ-POD-NAZWA)-REKORD-?.DLG",!CallPyt["import place_g | place_g.pracownik_gus()"]
//"AKCJA-BUTTON58-$$(REJ-POD-NAZWA)-REKORD-?.DLG",PODATNIKREKORD-WARTOSCIPOCZ
//"AKCJA-BUTTON59-$$(REJ-POD-NAZWA)-REKORD-?.DLG",PODATNIKREKORD-PARAM-BANKI
"AKCJA-BUTTON59",!CallPyt["import kadry_g | kadry_g.prac_zwalniam()"]
//"AKCJA-BUTTON70-$$(REJ-POD-NAZWA)-REKORD-?.DLG",PODATNIKREKORD-PARAM-RESZTA-DANYCH

% TABLICA-AKCJI-PODATNIK-STRONA-ZOBACZ-1,TABLICA-AKCJI-PODATNIK-STRONA-ZOBACZ-2,TABLICA-AKCJI-PODATNIK-STRONA-ZOBACZ-3
"AKCJA-PRZED-WYKONYWANIEM",!ExDialogOp["PozycjaNiewprowadzana","*"]

% TABLICA-AKCJI-PODATNIK-STRONA-ZOBACZ-0,TABLICA-AKCJI-PODATNIK-STRONA-ZOBACZ-4,TABLICA-AKCJI-PODATNIK-STRONA-ZOBACZ-5,TABLICA-AKCJI-PODATNIK-STRONA-ZOBACZ-6,TABLICA-AKCJI-PODATNIK-STRONA-ZOBACZ-7
"AKCJA-PRZED-WYKONYWANIEM",!ExDialogOp["PozycjaNiewprowadzana","*"]
% TABLICA-PYT-AKCJI-PODATNIK-STRONA-1
"AKCJA-PO-POLU28",import pla_u.sprawdz_nip_pesel | pla_u.sprawdz_nip_pesel.sprawdz()
"AKCJA-PO-POLU29",import pla_u.sprawdz_nip_pesel | pla_u.sprawdz_nip_pesel.sprawdz()

% TABLICA-AKCJI-PODATNIK-STRONA-0
"AKCJA-PRZED-WYSWIETLENIEM",PODATNIK-STRONA-0-PRZED
% PODATNIK-STRONA-0-PRZED.alg
//okalert["k_uzys="+k_uzys+"$k_zw="+k_zw]
if( pustepole["k_uzys"]) rejwstawp_k["k_uzys",k_uzys]
if(pustepole["k_zw"]) rejwstawp_k["k_zw",k_zw]

% TABLICA-AKCJI-PODATNIK-STRONA-1
"AKCJA-PO-POLU10",WPISZ-KONTO-I-KONTRAHENTA
"AKCJA-PO-POLU42",KARTOTEK-PO-POLU42
"AKCJA-PO-POLU12",KARTOTEK-MODYFIKUJ-PO12
"AKCJA-F2-POLE180",!SL.gl_f2_rejestr("PODATNIK.RXR","sym")
"AKCJA-PO-POLU180",SPRAWDZ_PRACOWNIKX

% TABLICA-AKCJI-PODATNIK-STRONA-2
"AKCJA-PRZED-WYSWIETLENIEM",PODATNIK-STRONA-2-PRZED
"AKCJA-PO-POLU42",KARTOTEK-PO-POLU42
% TABLICA-AKCJI-PODATNIK-STRONA-3
"AKCJA-F2-POLE41",!SL.gl_f2_rejestr("REJESTRKL.RXR","kl_sym")
"AKCJA-BUTTON69",!SL.PLACE_G->rozpisz_klasyfikacje(0,0)
"AKCJA-BUTTON66",!SL.PLACE_G->rozpisz_klasyfikacje(1,0)
% TABLICA-AKCJI-PODATNIK-STRONA-6
"AKCJA-PRZED-WYSWIETLENIEM",PODATNIKREKORD-PARAM-BANKI
% PODATNIK-STRONA-2-PRZED.ALG
 czyrodzina := rejwezp_l["czyrodzina"]
% PODATNIKREKORD-REZYGNUJESZ.ALG
  rejop["klx:zamknijrej",""]
  ExDialogOp["KoniecWykonywania",""]
  ExDialogOp["PozycjaAktywna","*"]
% PODATNIKREKORD-AKCEPTUJESZ.ALG
    if(not(RejWezP_S["sym"]="")) goto dalej1
    OkAlert["Wprowad|x symbol !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
dalej1:
if (WezPole_L["cudzoziemiec"]) goto dalej9        
if(not(RejWezP_S["nip"]="") or not(RejWezP_S["pesel"]="")) goto dalej9
    OkAlert["Wprowad|x NIP lub PESEL !"]
    ExDialogOp["IdzDoPozycji","28"]
    ExitAlg[0]
dalej9:
    if((StrLen[RejWezP_S["pesel"]]=11) or RejWezP_S["pesel"]="") goto dalej3
    OkAlert["Z|la d|lugo|s|c numeru PESEL !.$Numer PESEL sk|lada si|e z jedenastu znak|ow."]
    ExDialogOp["IdzDoPozycji","28"]
    ExitAlg[0]
dalej3:
  ok_liczba := .T.
  tekst  := RejWezP_S["pesel"]
  CallAlg["SPRAWDZ-CZY-LICZBA"]
  if(ok_liczba) goto dalej4
    OkAlert["Nieprawid|lowe znaki w numerze PESEL !"]
    ExDialogOp["IdzDoPozycji","28"]
    ExitAlg[0]
dalej4:
  ok_data := .T.
  if(rejwezp_l["cudzoziemiec"]) goto dalej41
  tekst   := RejWezP_S["pesel"]
  CallAlg["POROWNAJ-PESEL-Z-DATA"]
    
  if(ok_data) goto dalej41
    OkAlert["W numerze PESEL pierwsze sze|s|c cyfr to data urodzenia !"]
    ExDialogOp["IdzDoPozycji","28"]
    ExitAlg[0]
 
    
dalej41:
  if (pustepole["nip"]) goto dalej6
  if (dobrynip[rejwezp_s["nip"]]) goto dalej6
    OkAlert["Niepoprawny numer NIP !"]
    ExDialogOp["IdzDoPozycji","29"]
    ExitAlg[0]
    
dalej6:
// tu sprawdzenie czy w przypadku nie wystapienia pola nip i pesel wypelniono pole dowod lub paszport
  if(not(pustepole["nip"] and pustepole["pesel"])) goto dalej61
  if(not(pustepole["dowod"] and pustepole["paszport"])) goto dalej61
  Okalert["Wprowad|x seri|e i numer dowodu lub paszportu!"]
  ExDialogop["idzdopozycji","27"]
  Exitalg[0] 
dalej61: 
    if(not(RejWezP_S["kodprac"]="")) goto dalej2
    OkAlert["Wprowad|x kod tytu|lu ubezpieczenia !"]
    ExDialogOp["IdzDoPozycji","47"]
    ExitAlg[0]
dalej2:
  czy_ok := 1
  CallPyt["import place_g | place_g.podatnik_param_banki()"]
  if(czy_ok = 1) goto dalej7
    ExDialogOp["IdzDoPozycji","103"]
    ExitAlg[0]
dalej7:
  zapisac   := .T.
  pracownik := RejWezP_S["sym"]
  if(Not(pnaliczac)) CallAlg["WERYFIKUJ-POWIAZANIA-DLA-JEDNEGO"]
//  xRejWstawP_L["pnaliczac",pnaliczac]
//  xRejWstawP_L["ppobierac",ppobierac]
//  xRejWstawP_K["k_uzys",k_uzys]
//  xRejWstawP_K["k_zw",k_zw]
//  xRejWstawP_L["czyrodzina",czyrodzina]

//  RejOp["ZapiszRek",""]
  CallAlg["DODAJ-DO-REJESTRU-KONTRAHENTOW"]
  CallAlg["ZMIANA-DANYCH-IDENTYFIKACYJNYCH"]
//  OKALERT["zapisanie do rejestru kl"]
  callsl["PLACE_G->place_przepisz_klasyfikacje(""klx:"",""kl:"",dajazmienna_S(""pracownik""))"]
//  CallAlg["WERYFIKUJ-SYMBOL-PRACOWNIKA"]
  CallAlg["ZAZNACZ-ZMIANE-REJESTRU-SUMYNAR"]
  rejop["klx:zamknijrej",""]
  ExDialogOp["KoniecWykonywania",""]
  ExDialogOp["PozycjaAktywna","*"]

% SPRAWDZ_PRACOWNIKX.ALG
if(rejwezp_s["sym_prac"]="") Exitalg[0]
if(not(rejwezp_s["sym_prac"]== rejwezp_s["sym"])) goto rozne
okalert["Symbol musi by|c r|o|zny od symbolu pracownika"]
Exdialogop["idzdopozycji","180"]
exitalg[0]
rozne:
rejop["MN:otworzrej","podatnik.rxr"]
if(rejop["MN:znajdzrek",rejwezp_s["sym_prac"]]) goto xx
Okalert["W rejestrze pracownik|ow nie ma pracownika o symbolu "+rejwezp_s["sym_prac"]]
ExDialogop["Idzdopozycji","180"]
rejop["mn:zamknijrej",""]
Exitalg[0]
xx:
//if(not(nowy)) exitalg[0]
if(pustepole["kodprac"]) xrejwstawp_s["kodprac",rejwezp_s["MN:kodprac"]]
if(pustepole["nazwisko"]) xrejwstawp_s["nazwisko",rejwezp_s["MN:nazwisko"]]
if(pustepole["imie1"]) xrejwstawp_s["imie1",rejwezp_s["MN:imie1"]]
if(pustepole["imie2"]) xrejwstawp_s["imie2",rejwezp_s["MN:imie2"]]
if(pustepole["nazwisko_pan"]) xrejwstawp_s["nazwisko_pan",rejwezp_s["MN:nazwisko_pan"]]
if(pustepole["im_oj"]) xrejwstawp_s["im_oj",rejwezp_s["MN:im_oj"]]
if(pustepole["im_ma"]) xrejwstawp_s["im_ma",rejwezp_s["MN:im_ma"]]
if(pustepole["plec"]) xrejwstawp_s["plec",rejwezp_s["MN:plec"]]
if(pustepole["pesel"]) xrejwstawp_s["pesel",rejwezp_s["MN:pesel"]]
if(pustepole["nip"]) xrejwstawp_s["nip",rejwezp_s["MN:nip"]]
if(pustepole["dowod"]) xrejwstawp_s["dowod",rejwezp_s["MN:dowod"]]
if(pustepole["paszport"]) xrejwstawp_s["paszport",rejwezp_s["MN:paszport"]]
if(pustepole["ddowod"]) xrejwstawp_d["ddowod",rejwezp_d["MN:ddowod"]]
if(pustepole["ktowydal"]) xrejwstawp_s["ktowydal",rejwezp_s["MN:ktowydal"]]
if(pustepole["datau"]) xrejwstawp_d["datau",rejwezp_d["MN:datau"]]
if(pustepole["miejsce_u"]) xrejwstawp_s["miejsce_u",rejwezp_s["MN:miejsce_u"]]
if(pustepole["obywatel"]) xrejwstawp_s["obywatel",rejwezp_s["MN:obywatel"]]
//
if(pustepole["urzad"]) xrejwstawp_s["urzad",rejwezp_s["MN:urzad"]]
if(pustepole["stanow"]) xrejwstawp_s["stanow",rejwezp_s["MN:stanow"]]
if(pustepole["wydzial"]) xrejwstawp_s["wydzial",rejwezp_s["MN:wydzial"]]
if(pustepole["miejscepr"]) xrejwstawp_s["miejscepr",rejwezp_s["MN:miejscepr"]]
//
if(pustepole["kodkasychor"]) xrejwstawp_s["kodkasychor",rejwezp_s["MN:kodkasychor"]]
if(pustepole["datapoczkasy"]) xrejwstawp_d["datapoczkasy",rejwezp_d["MN:datapoczkasy"]]
//
if(pustepole["ulica"]) xrejwstawp_s["ulica",rejwezp_s["MN:ulica"]]
if(pustepole["dom"]) xrejwstawp_s["dom",rejwezp_s["MN:dom"]]
if(pustepole["lokal"]) xrejwstawp_s["lokal",rejwezp_s["MN:lokal"]]
if(pustepole["miasto"]) xrejwstawp_s["miasto",rejwezp_s["MN:miasto"]]
if(pustepole["kod"]) xrejwstawp_s["kod",rejwezp_s["MN:kod"]]
if(pustepole["poczta"]) xrejwstawp_s["poczta",rejwezp_s["MN:poczta"]]
if(pustepole["gmina"]) xrejwstawp_s["gmina",rejwezp_s["MN:gmina"]]
if(pustepole["powiat"]) xrejwstawp_s["powiat",rejwezp_s["MN:powiat"]]
if(pustepole["wojew"]) xrejwstawp_s["wojew",rejwezp_s["MN:wojew"]]
if(pustepole["telefon"]) xrejwstawp_s["telefon",rejwezp_s["MN:telefon"]]
if(pustepole["faks"]) xrejwstawp_s["faks",rejwezp_s["MN:faks"]]
if(pustepole["nazwa_bank"]) xrejwstawp_s["nazwa_bank",rejwezp_s["MN:nazwa_bank"]]
if(pustepole["numer_bank"]) xrejwstawp_s["numer_bank",rejwezp_s["MN:numer_bank"]]
if(pustepole["nazwa_bank2"]) xrejwstawp_s["nazwa_bank2",rejwezp_s["MN:nazwa_bank2"]]
if(pustepole["numer_bank2"]) xrejwstawp_s["numer_bank2",rejwezp_s["MN:numer_bank2"]]
if(pustepole["rodzaj_wyplaty"]) xrejwstawp_k["rodzaj_wyplaty",rejwezp_k["MN:rodzaj_wyplaty"]]
if(pustepole["dobanku1"]) xrejwstawp_k["dobanku1",rejwezp_k["MN:dobanku1"]]
if(pustepole["dobanku2"]) xrejwstawp_k["dobanku2",rejwezp_k["MN:dobanku2"]]
if(pustepole["dogotowka"]) xrejwstawp_k["dogotowka",rejwezp_k["MN:dogotowka"]]
//
if(pustepole["miasto1"]) xrejwstawp_s["miasto1",rejwezp_s["MN:miasto1"]]
if(pustepole["kod1"]) xrejwstawp_s["kod1",rejwezp_s["MN:kod1"]]
if(pustepole["gmina1"]) xrejwstawp_s["gmina1",rejwezp_s["MN:gmina1"]]
if(pustepole["ulica1"]) xrejwstawp_s["ulica1",rejwezp_s["MN:ulica1"]]
if(pustepole["dom1"]) xrejwstawp_s["dom1",rejwezp_s["MN:dom1"]]
if(pustepole["lokal1"]) xrejwstawp_s["lokal1",rejwezp_s["MN:lokal1"]]
if(pustepole["miasto2"]) xrejwstawp_s["miasto2",rejwezp_s["MN:miasto2"]]
if(pustepole["kod2"]) xrejwstawp_s["kod2",rejwezp_s["MN:kod2"]]
if(pustepole["gmina2"]) xrejwstawp_s["gmina2",rejwezp_s["MN:gmina2"]]
if(pustepole["ulica2"]) xrejwstawp_s["ulica2",rejwezp_s["MN:ulica2"]]
if(pustepole["dom2"]) xrejwstawp_s["dom2",rejwezp_s["MN:dom2"]]
if(pustepole["lokal2"]) xrejwstawp_s["lokal2",rejwezp_s["MN:lokal2"]]
xrejwstawp_l["czyzatrud",.T.]
xrejwstawp_l["cudzoziemiec",rejwezp_l["MN:cudzoziemiec"]]
dokidh := tostr["#rejwezp_k[""MN:dokid""]#S:0"]
// tu zmiana symbolu pracownika z przepisz z na pracownika pierwotnego
petla_mn:
symbol := rejwezp_s["MN:sym"]
symx := rejwezp_s["MN:sym_prac"]
if(symx="") goto xx1
if(rejop["MN:znajdzrek",symx]) goto petla_mn
xx1:
if(rejwezp_s["sym"]==symbol) symbol := ""
xrejwstawp_s["sym_prac",symbol]
rejop["mn:zamknijrej",""]
// przeniesienie historii i dotychczasowego zatrudnienia do historii nowego pracownika
if(not(rejop["hi:znajdzrek",dokidh])) goto nie_dodawaj_hi
petla_hi:
rejop["hit:dodajrek",""]
rejop["hi:przeniespola","hit:"]
xrejwstawp_s["hit:sym",rejwezp_s["sym"]]
xrejwstawp_k["hit:dokidzap",dokid]
rejop["hit:zapiszrek",""]
if(rejop["hi:weznastepnyrekn",""]) goto petla_hi
nie_dodawaj_hi:
//if(not(rejop["pi:znajdzrek",dokidh])) goto nie_dodawaj_pi
//petla_pi:
//rejop["hit:dodajrek",""]
//xrejwstawp_s["hit:sym",rejwezp_s["pi:sym"]]
//rejop["hit:zapiszrek",""]
//if(rejop["pi:weznastepnyrekn",""]) goto petla_pi
nie_dodawaj_pi:
exdialogop["wyswietlpozycje","11"]
exdialogop["wyswietlpozycje","12"]
exdialogop["wyswietlpozycje","13"]
exdialogop["wyswietlpozycje","84"]
exdialogop["wyswietlpozycje","25"]
exdialogop["wyswietlpozycje","26"]
exdialogop["wyswietlpozycje","85"]
exdialogop["wyswietlpozycje","28"]
exdialogop["wyswietlpozycje","29"]
exdialogop["wyswietlpozycje","27"]
exdialogop["wyswietlpozycje","80"]
exdialogop["wyswietlpozycje","81"]
exdialogop["wyswietlpozycje","82"]
exdialogop["wyswietlpozycje","23"]
exdialogop["wyswietlpozycje","24"]
exdialogop["wyswietlpozycje","83"]
exdialogop["wyswietlpozycje","32"]
exdialogop["wyswietlpozycje","14"]
exdialogop["wyswietlpozycje","15"]
exdialogop["wyswietlpozycje","16"]
exdialogop["wyswietlpozycje","94"]
exdialogop["wyswietlpozycje","95"]
exdialogop["wyswietlpozycje","19"]
exdialogop["wyswietlpozycje","20"]
exdialogop["wyswietlpozycje","21"]
exdialogop["wyswietlpozycje","58"]
exdialogop["wyswietlpozycje","17"]
exdialogop["wyswietlpozycje","22"]
exdialogop["wyswietlpozycje","180"]
exdialogop["wyswietlpozycje","64"]
exdialogop["wyswietlpozycje","18"]
exdialogop["wyswietlpozycje","30"]
exdialogop["wyswietlpozycje","31"]
exdialogop["wyswietlpozycje","103"]
exdialogop["wyswietlpozycje","104"]
exdialogop["wyswietlpozycje","75"]
exdialogop["wyswietlpozycje","77"]
exdialogop["wyswietlpozycje","54"]
exdialogop["wyswietlpozycje","59"]
exdialogop["wyswietlpozycje","53"]
exdialogop["wyswietlpozycje","79"]
exdialogop["wyswietlpozycje","99"]
exdialogop["wyswietlpozycje","102"]
exdialogop["wyswietlpozycje","61"]
exdialogop["wyswietlpozycje","118"]
exdialogop["wyswietlpozycje","119"]
exdialogop["wyswietlpozycje","120"]
exdialogop["wyswietlpozycje","121"]
exdialogop["wyswietlpozycje","122"]
exdialogop["wyswietlpozycje","123"]
exdialogop["wyswietlpozycje","124"]
exdialogop["wyswietlpozycje","125"]
exdialogop["wyswietlpozycje","126"]
exdialogop["wyswietlpozycje","127"]
exdialogop["wyswietlpozycje","128"]
exdialogop["wyswietlpozycje","129"]

% ZAZNACZ-ZMIANE-REJESTRU-SUMYNAR.ALG
  RejOp["Q:OtworzRejSprawdz","SUMYNAR.RXR"]
  RejOp["Q:ZmienKluczRej","2"]
  if(RejOp["Q:ZnajdzRek","000000000"]) goto zmien
//  okalert["ZAZNACZ-ZMIANE-REJESTRU-SUMYNAR.ALG"]
  RejOp["Q:DodajRek",""]
  xRejWstawP_S["Q:pracownik","000000000"]
zmien:
  xRejWstawP_L["Q:zmiana",.T.]
  RejOp["Q:ZapiszRek",""]
  RejOp["Q:ZamknijRej",""]

% DODAJ-DO-REJESTRU-KONTRAHENTOW.ALG
    if(RejWezP_S["kontrahent"]="") ExitAlg[0]
    RejOp["CX:OtworzRejsprawdz","klfile.rjr"]
    if(Not(RejOp["CX:ZnajdzRek",RejWezP_S["kontrahent"]])) goto dodaj
    if(Not(RejWezP_S["CX:kl_nazwa1"]==(RejWezP_S["imie1"]+" "+RejWezP_S["nazwisko"]))) goto innedane
    if(Not(RejWezP_S["CX:kl_adres"]==(RejWezP_S["ulica"]+" "+RejWezP_S["dom"]+"/"+RejWezP_S["lokal"]))) goto innedane
    if(Not(RejWezP_S["CX:kl_kodmiasto"]==(RejWezP_S["kod"]+" "+RejWezP_S["miasto"]))) goto innedane
    goto koniec
innedane:
    if(Not(YesAlert["Czy zaktualizowa|c dane w rejestrze kontrahent|ow ?"])) goto koniec
    goto zmiendane
dodaj:
  RejOp["CX:DodajRek",""]
  xRejWstawP_S["CX:kl_sym",RejWezP_S["kontrahent"]]
zmiendane:
    xRejWstawP_S["CX:kl_nazwa1",RejWezP_S["imie1"]+" "+RejWezP_S["nazwisko"]]
    xRejWstawP_S["CX:kl_adres",RejWezP_S["ulica"]+" "+RejWezP_S["dom"]+"/"+RejWezP_S["lokal"]]
    xRejWstawP_S["CX:kl_kodmiasto",RejWezP_S["kod"]+" "+RejWezP_S["miasto"]]
    xRejWstawP_S["CX:kl_nazwabanku",RejWezP_S["nazwa_bank"]]
    xRejWstawP_S["CX:kl_konto",RejWezP_S["numer_bank"]]
  RejOp["CX:ZapiszRek",""]
koniec:
  RejOp["CX:ZamknijRej",""]

% ZMIANA-DANYCH-IDENTYFIKACYJNYCH.ALG
  if(CallAlg["SPRAWDZ-DANE-IDENTYFIKACYJNE"]=0) ExitAlg[0]
  if(Not(YesAlert["Nast|api|la zmiana danych identyfikacyjnych !$Przekaza|c zmian|e do Programu P|latnika ?"])) ExitAlg[0]
  RejOp["I:OtworzRejsprawdz","ZMIDENT.RXR"]
  CallAlg["PRZENIES-DANE-REKORD-ZMIDENT"]
  RejOp["I:ZamknijRej",""]

% SPRAWDZ-DANE-IDENTYFIKACYJNE.ALG
    if(Not(st_nip   == RejWezP_S["nip"])   and Not(st_nip=""))   ExitAlg[1]
    if(Not(st_pesel == RejWezP_S["pesel"]) and Not(st_pesel="")) ExitAlg[1]
    if(Not(st_dowod == RejWezP_S["dowod"]) and Not(st_dowod="")) ExitAlg[1]
    if(Not(st_imie1 == RejWezP_S["imie1"]) and Not(st_imie1="")) ExitAlg[1]
    if(Not(st_datau =  RejWezP_D["datau"]) and Not(st_datau='')) ExitAlg[1]
    if(Not(st_nazwisko == RejWezP_S["nazwisko"]) and Not(st_nazwisko="")) ExitAlg[1]
  ExitAlg[0]

% PRZENIES-DANE-REKORD-ZMIDENT.ALG
  RejOp["I:DodajRek",""]
  dokid    := RejWezP_K["I:dokid"]
  RejOp["PrzeniesPola","I:"]
  xrejwstawp_s["I:nip",st_nip]
  xrejwstawp_s["I:pesel",st_pesel]
  xrejwstawp_s["I:dowod",st_dowod]
  xrejwstawp_s["I:imie1",st_imie1]
  xrejwstawp_s["I:nazwisko",st_nazwisko]
  xrejwstawp_d["I:datau",st_datau]
  xRejWstawP_D["I:dzmiany",d_dzisiaj]
  xRejWstawP_S["I:godzina",WezGodzine[0]]
  xRejWstawP_K["I:dokid",dokid]
  RejOp["I:ZapiszRek",""]

% PODATNIK-REKORD-DODAJ-STRONY.ALG
  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-1,71"]
  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-2,72"]
  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-3,73"]
  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-4,74"]
  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-0,70"]
  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-5,58"]
//  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-6,59"]
  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-6,159"]
  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-7,160"]

% PODATNIK-REKORD-DODAJ-STRONY-ZOBACZ.ALG
  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-ZOBACZ-1,71"]
  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-ZOBACZ-2,72"]
  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-ZOBACZ-3,73"]
  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-ZOBACZ-4,74"]
  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-ZOBACZ-0,70"]
  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-ZOBACZ-5,58"]
  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-ZOBACZ-6,159"]
  ExDialogOp["DodajStrone","100:PODATNIK-STRONA-ZOBACZ-7,160"]


% PODATNIKREKORD-DODAJSTART1.ALG
  CallAlg["PODATNIKREKORD-DODAJSTART"]
    
% PODATNIKREKORD-DODAJSTART.ALG
  nowy := .T.
  L_TT_PRAC_REJESTR := ""
  L_TT_ZLEC_REJESTR := ""
  CallAlg["PLACE-USTAW-M-PARAM"]
  rejop["klx:otworzrejtemp","plcrozpklas.rjr"]
// maria
  callsl["PLACE_G->place_czytaj_klasyfikacje(""klx:"")"]

  CallAlg["PODATNIK-REKORD-DODAJ-STRONY"]
  pnaliczac   := .T.
  ppobierac   := .T.
  st_nip      := ""
  st_pesel    := ""
  st_dowod    := ""
  st_imie1    := ""
  st_datau    := ''
  st_nazwisko := ""
  k_zw := .
  k_uzys := .
  CallPyt["import place_g | place_g.place_sprawdz_parametry()"]
  if (k_zw = .) OkAlert["Miesi|eczna kwota ulgi podatkowej nie zosta|la wprowadzona !"]
  if (k_uzys = .) OkAlert["Miesi|eczna kwota kosztu uzyskania przychodu nie zosta|la wprowadzona !"]
  ExDialogOp["PozycjaAktywna","10"]
  ExDialogOp["PozycjaAktywna","180"]
  ExDialogOp["IdzDoPozycji","10"]
  
% PODATNIKMENU-DODAJ.ALG 
  pnaliczac   := .T.
  ppobierac   := .T.
  zapisac     := .N.
  st_nip      := ""
  st_pesel    := ""
  st_dowod    := ""
  st_imie1    := ""
  st_datau    := ''
  st_nazwisko := ""
  RejOp["DodajRek",""]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["IdzDoPozycji","10"]
  ExDialogOp["IdzDoDialogu","PODATNIK-REKORD-1"]
   ExDialogOp["PozycjaAktywna","7"]
   ExDialogOp["PozycjaAktywna","8"]
   ExDialogOp["PozycjaAktywna","9"]
   ExDialogOp["PozycjaAktywna","20"]
   
% PODATNIK-REKORD-ZMIENNE.XXX   
   jestlista   := .N.
   pnaliczac   := RejWezP_L["pnaliczac"]
   ppobierac   := RejWezP_L["ppobierac"]
   k_uzys      := RejWezP_K["k_uzys"]
   k_zw        := RejWezP_K["k_zw"]
   xpracownik  := RejWezP_S["sym"]
   st_nip      := RejWezP_S["nip"]
   st_pesel    := RejWezP_S["pesel"]
   st_dowod    := RejWezP_S["dowod"]
   st_imie1    := RejWezP_S["imie1"]
   st_datau    := RejWezP_D["datau"]
   st_nazwisko := RejWezP_S["nazwisko"]
   CallAlg["PODATNIK-SPRAWDZAM"]

% PODATNIKREKORD-DODAJMODIF.ALG
   CallAlg["PODATNIK-REKORD-DODAJ-STRONY"]
%<PODATNIK-REKORD-ZMIENNE.XXX
   nowy := .N.
   rejop["klx:otworzrejtemp","PLCROZPKLAS.RJR"]
   callsl["PLACE_G->place_czytaj_klasyfikacje(""klx:"")"]
   ExDialogOp["PozycjaAktywna","*"]
   if(xpracownik="")  goto braklisty
   if(Not(jestlista)) goto braklisty
   ExDialogOp["PozycjaNieAktywna","10"]
   ExDialogOp["PozycjaNieAktywna","180"]
//   if(sysalg["Jestadminbezinfo"]=1) Exdialogop["PozycjaAktywna","180"]
   ExDialogOp["IdzDoPozycji","11"]
   ExitAlg[0]
braklisty:
  ExDialogOp["IdzDoPozycji","10"]

% PODATNIKREKORD-DODAJLOOK.ALG
  rejop["klx:otworzrejtemp","plcrozpklas.rjr"]
// maria
  callsl["PLACE_G->place_czytaj_klasyfikacje(""klx:"")"]
   CallAlg["PODATNIK-REKORD-DODAJ-STRONY-ZOBACZ"]
%< PODATNIK-REKORD-ZMIENNE.XXX
  ExDialogOp["PozycjaNiewprowadzana","*"]

% PODATNIKMENU-SORTUJ.ALG
  CallAlg["PODATNIKMENU-SORTUJ-PORZADEK"]
  CallAlg["PODATNIKMENU-SORTUJ-WYSWIETL"]
  ExDialogOp["IdzDoPozycji","100"]

% PODATNIKMENU-SORTUJ-PORZADEK.ALG
defzmiennaK["porzadek",1]
if(porzadek=1)  ExDialogOp["UstawMenuParam","100:PODATNIKMENU1,,KLUCZ,1"]
if(porzadek=2)  ExDialogOp["UstawMenuParam","100:PODATNIKMENU1,,KLUCZ,2"]
if(porzadek=3)  ExDialogOp["UstawMenuParam","100:PODATNIKMENU3,,KLUCZ,3"]
if(porzadek=4)  ExDialogOp["UstawMenuParam","100:PODATNIKMENU4,,KLUCZ,4"]
if(porzadek=7)  ExDialogOp["UstawMenuParam","100:PODATNIKMENU5,,KLUCZ,7"]

% PODATNIKMENU-SORTUJ-WYSWIETL.ALG
  ExDialogOp["WyswietlPozycje","101"]
  ExDialogOp["WyswietlPozycje","100"]

% PODATNIKMENU-WYDRUK.ALG
   RejOp["ZapamPos",""]
   if(YesAlert["Czy drukowa|c rejestr ?"])   IdzDowydruku["place\place_drukuj_pracownikow",""]
   RejOp["OdtworzPos",""]
   
% PODATNIKMENU-ZMIEN-K_UZYS.ALG
   RejOp["ZapamPos",""]
   if(YesNAlert["Zmieniasz koszt uzyskania przychodu ?$ Zmiana dotyczy wszystkich pracownik|ow !"])   IdzDowydruku["place\place_zmien_koszty",""]
   RejOp["OdtworzPos",""]
   
% PODATNIKMENU-ZMIEN-K_ZW.ALG
   RejOp["ZapamPos",""]
   if(YesAlert["Zmieniasz ulg|e w podatku dochodowym ?$ Zmiana dotyczy wszystkich pracownik|ow !"])   IdzDowydruku["place\place_zmien_ulge",""]
   RejOp["OdtworzPos",""]
    
% PODATNIK-PRZED.ALG
  CallAlg["PODATNIKMENU-SORTUJ-PORZADEK"]
  
% PODATNIK-PRZED-WYKO.ALG
  PL_NAZWA_PRAC := ""
  CallAlg["PLACE-USTAW-M-PARAM"]
  Dialog_Op["ZmienNaglowek",PL_NAZWA_PRAC]
  
% PODATNIKMENU-USUN.ALG
  jestlista  := .N.
  xpracownik := RejWezP_S["sym"]
  CallAlg["PODATNIK-SPRAWDZAM"]
  if(Not(jestlista)) goto usuwaj
    OkAlert["Wskazany pracownik wyst|epuje na listach p|lac $lub w rejestrze przyporz|adkowa|n !$ Usuni|ecie jest niemo|zliwe."]
    ExitAlg[0] 
  usuwaj:
  if (L_TT_PLACE) goto dalej_u
  if (CallPyt["import place_u | place_u.czy_mozna_usunac_alg()"] = 0) ExitAlg[0]
  dalej_u:
  if(not YesNAlert["Usun|a|c pracownika "+nazwisko+" z rejestru ?"]) ExitAlg[0]
//maria
  callsl["place_usun_klasyfikacje(""kl:"",rejwezp_s(""sym""))"]
  RejOp["UsunRek",""]
  ExDialogOp["UsunRekordzMenu","100"]    
  
% WPISZ-KONTO-I-KONTRAHENTA.ALG
if(rejwezp_s["sym"]="") goto dalej
if(not(rejop["mm:znajdzrek",rejwezp_s["sym"]])) goto dalej
Okalert["Powt|orzony symbol $(wyst|api|l w zleceniobiorcach)"]
exdialogop["idzdopozycji","10"]
Exitalg[0]
dalej:
mod := ""
callalg["WPISZ-KONTO-I-KONTRAHENTA-WSP"]
% WPISZ-KONTO-I-KONTRAHENTA-WSP.ALG
  sym        := RejWezP_S["sym"]
  konto      := RejWezP_S["konto"]
  kontrahent := RejWezP_S["kontrahent"]
  if(sym="") ExitAlg[0]
  RejOp["AE:OtworzRejsprawdz","PARPRZEL.RXR"]
  if(RejOp["AE:WezPierwszyRek",""]) goto okpar
  RejOp["AE:ZamknijRej",""]
  ExitAlg[0]
 okpar:
        prefixkonta   := RejWezP_S["AE:prefixkonta"+mod]
        sufixkonta    := RejWezP_S["AE:sufixkonta"+mod]
        czysymprac1   := RejWezP_L["AE:czysymprac1"+mod]
        wytnijod1     := RejWezP_K["AE:wytnijod1"+mod]
        wytnijdo1     := RejWezP_K["AE:wytnijdo1"+mod]
        prefixsym     := RejWezP_S["AE:prefixsym"+mod]
        sufixsym      := RejWezP_S["AE:sufixsym"+mod]
        czysymprac2   := RejWezP_L["AE:czysymprac2"+mod]
        wytnijod2     := RejWezP_K["AE:wytnijod2"+mod]
        wytnijdo2     := RejWezP_K["AE:wytnijdo2"+mod]
        RejOp["AE:ZamknijRej",""]
        IF(Not(konto="")) goto okkonto
        if(czysymprac1)      konto := prefixkonta+StrCut[sym,wytnijod1-1,wytnijdo1-wytnijod1+1]+sufixkonta
        if(Not(czysymprac1)) konto := prefixkonta+sufixkonta
okkonto:
    IF(Not(kontrahent="")) goto okkontrahent
    if(czysymprac2)      kontrahent := prefixsym+StrCut[sym,wytnijod2-1,wytnijdo2-wytnijod2+1]+sufixsym
    if(Not(czysymprac2)) kontrahent := prefixsym+sufixsym
okkontrahent:
    xRejWstawP_S["konto",konto]
    xRejWstawP_S["kontrahent",kontrahent]
//    RejOp["ZapiszRek",""]
    ExDialogOp["WyswietlPozycje","52"]
    ExDialogOp["WyswietlPozycje","41"]
    
% PODATNIK-SPRAWDZAM.ALG 
  jestlista := .N.
  RejOp["E:OtworzRejsprawdz","PLARCH.RXR"]
  RejOp["E:ZmienKluczRej","2"]
  IF(RejOp["E:ZnajdzRek",xpracownik]) jestlista := .T.
  RejOp["E:ZamknijRej",""]
  if(jestlista) ExitAlg[0]
  RejOp["E:OtworzRejSprawdz","PLACE.RXR"]
  RejOp["E:ZmienKluczRej","2"]
  IF(RejOp["E:ZnajdzRek",xpracownik]) jestlista := .T.
  RejOp["E:ZamknijRej",""]
 if(jestlista) ExitAlg[0]
  RejOp["E:OtworzRejsprawdz","PLPOWIAZ.RXR"]
  RejOp["E:ZmienKluczRej","3"]
  zaznacz := .N.
powrot:
  IF(Not(RejOp["E:ZnajdzRek",xpracownik])) goto dalej3
  zaznacz := RejWezP_L["E:zaznacz"]
  if(zaznacz) jestlista := .T.
  if(zaznacz)    goto dalej3
  if(Not(zaznacz)) RejOp["E:UsunRek",""]
  if(Not(zaznacz)) goto powrot
dalej3:
  RejOp["E:ZamknijRej",""]
  
% PARAM-DO-KONT.ALG
  CallAlg["PARAM-DO-KONT-PRACOWNICZYCH"]
  
% PARAM-DO-KONT-PRACOWNICZYCH.ALG
  RejOp["OtworzRejsprawdz","parprzel.rxr"]
  CallPyt["import place_g | place_g.podatnik_konta_pracownicze()"]
  RejOp["ZamknijRej",""]
  
% PODATNIKREKORD-WARTOSCIPOCZ.ALG
        bo_podst_er  := RejWezP_K["bo_podst_er"]
        bo_podst_cw  := RejWezP_K["bo_podst_cw"]
        bo_podstopod := RejWezP_K["bo_podstopod"]
        bo_proc      := RejWezP_K["bo_proc"]
        bo_wyplat    := RejWezP_K["bo_wyplat"]
        bo_dnichor := rejwezp_k["bo_dnichor"]
        bo_ildnizop := rejwezp_k["bo_ildnizop"]
        bo_datakchor := rejwezp_d["bo_datakchor"]
	CallPyt["import place_g | place_g.wartosci_poczatkowe()"]
	
% PODATNIKREKORD-PARAM-BANKI.ALG
        CallPyt["import place_g | place_g.ustaw_rodzaj_wyplaty_prac()"]
//        CallPyt["import place_g | place_g.podatnik_param_banki()"]
	
% PODATNIKREKORD-PARAM-RESZTA-DANYCH.ALG
        miejscepr  := RejWezP_S["miejscepr"]
        obywatel   := RejWezP_S["obywatel"]
        kodniezdol := RejWezP_S["kodniezdol"]
        kodzawodu  := RejWezP_S["kodzawodu"]
        kodwykszt  := RejWezP_S["kodwykszt"]
        kodpracszczeg := RejWezP_S["kodpracszczeg"]
        kodkasychor   := RejWezP_S["kodkasychor"]
        datapoczkasy  := RejWezP_D["datapoczkasy"]
        dpoczszczeg   := RejWezP_D["dpoczszczeg"]
        dkonszczeg    := RejWezP_D["dkonszczeg"]
        kodpokrew     := RejWezP_S["kodpokrew"]
        czyrodzina    := RejWezP_L["czyrodzina"]
        kalengrupa    := RejWezP_S["kalengrupa"]
        procwynagr    := RejWezP_K["procwynagr"]
        czywychow     := RejWezP_S["czywychow"]
	CallPyt["import place_g | place_g.podatnik_param_reszta_danych()"]
	

% PODATNIK-MENU-1.DLG
%< PODATNIK-MENU-X.XXX
PRZYCISK_CANCELID = 39
            #101                                        #
                                                          #301
  #39    #                                                 #7             #
                                                                           #301<
%< PODATNIK-MENU-MODIF.XXX
//
% PODATNIK-MENU-0.DLG
IDZ_ENTER=100,1
%< PODATNIK-MENU-X.XXX
PRZYCISK_CANCELID = 3
                       #102                          #
                                                          #301
 #1     #  #3      #                                       #7             #
                                                                           #301<
%< PODATNIK-MENU-MODIF.XXX
//
% PODATNIK-MENU-3.DLG
%< PODATNIK-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% PODATNIK-MENU-2.DLG
%< PODATNIK-MENU-X.XXX
PRZYCISK_CANCELID = 39
              #2       ##102                             #
                                                          #301
  #39    #                                                 #7             #
                                                                           #301<
%< PODATNIK-MENU-MODIF.XXX
//%< REJESTRY-BUTTONY-0.XXX
//
% PODATNIK-MENU-ROZW
P = 3,,ADS
*90,"Operacje"
//5,@18
20,@20
4,@19
*98,"Wyszukiwanie"
8,@8
9,@9
10,@10
*34,@7
*97,"Zmiana danych"
35,"Zmie|n koszty uzyskania"
36,"Zmie|n ulg|e"
//37,"Parametry do kont pracowniczych"
//38,"Dane do sprawozda|n GUS"
//
% PODATNIK-MENU-ROZW-WYBIERZ
P = 3,,ADS
*98,"Wyszukiwanie"
8,@8
9,@9
10,@10
*34,@7
//
% PODATNIK-MENU-X.XXX
##DEFWINDOW = 3,,,,ADPSH,,,,,"Rejestr pracownik|ow"
##1,,ADP,,@17
##3,,ADP,,@4
##101,0,P,,,,,,,,MENU_ROZWIJANE:PODATNIK-MENU-ROZW
##102,0,P,,,,,,,,MENU_ROZWIJANE:PODATNIK-MENU-ROZW-WYBIERZ
##100,0,BCMP,,,,,,,,MENU_NA_REKORDY
##39,LBGT,ADP,,@5
##30,B,0,,"symbol",,&&lwhite/blue,&&lwhite/yellow,,,ZMIENNA:PORZADEK,,A,2,"1"
##31,B,0,,"nazwisko",,&&lwhite/blue,&&lwhite/yellow,,,ZMIENNA:PORZADEK,,,2,"2"
##32,B,0,,"kom|orka",,&&lwhite/blue,&&lwhite/yellow,,,ZMIENNA:PORZADEK,,,2,"3"
##33,B,0,,"stanowisko",,&&lwhite/blue,&&lwhite/yellow,,,ZMIENNA:PORZADEK,,,2,"4"
##40,B,0,,"numer akt",,&&lwhite/blue,&&lwhite/yellow,,,ZMIENNA:PORZADEK,,,2,"7"
##2,LBGT,P,,@26
##7,0,0,,,,&&black/lwhite,&&white/lblue
##300,GTD,0,,"Sortowanie:",,&&lwhite/blue,&&lwhite/yellow
##301,DZ,ACPH,,"Znajd|x"
% PODATNIK-MENU-MODIF.XXX
#300       ##30       ##31        ##32        ##33           ##40          #


#100                                                                       # 
//
% PODATNIK-STRONA-1.DLG,PODATNIK-STRONA-ZOBACZ-1.DLG
##DEFWINDOW = ,,,,H,,,,,"Dane identyfikacyjne"
##10,0,0,,,,&&red/lwhite,&&white/lblue,,,POLEUNIKALNE:sym
##180,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:sym_prac
##42,0,0,,,,&&red/lwhite,&&white/lblue,,,POLE:numerakt
##33,B,P,,@21,,,,,,POLE:cudzoziemiec,,0,33,T
##34,B,P,,@22,,,,,,POLE:cudzoziemiec,,O,33,N
##99,DTL,0,,"Cudzoziemiec: ..",,&&black/yellow
 Symbol pracownika:  #10     # Przepisz z: #180    #          
 Numer akt:          #42                 #
 #99                               # #33  #  #34    #
%<PODATNIK-STRONA-1.XXX
% PODATNIK-STRONA-1.XXX
//##44,0,P,,,,,,,,POLE:dnichorob
##11,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:nazwisko
##12,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:imie1
##13,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:imie2
##84,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:nazwisko_pan
##85,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:plec
##25,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:im_oj
##26,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:im_ma
##28,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:pesel
##29,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:nip
##27,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dowod
##80,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:paszport
##81,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:ddowod
##82,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:ktowydal
##23,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:datau
##24,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:miejsce_u
##83,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:obywatel
 Nazwisko:           #11                 #
 Imi|e 1:             #12                 #
 Imi|e 2:             #13                 #
 Nazwisko rodowe:    #84                 #
 P|le|c:               #85#
 Imiona: ojca #25           #   matki #26           #

 PESEL:              #28       #
 NIP:                #29       #
 Dokument to|zsamo|sci:
   dow|od osobisty nr : #27           #
   paszport nr:        #80           #
 Data dokumentu:       #81    #
 Wydany przez:         #82                          #

 Data urodzenia:     #23    # 
 Miejsce urodzenia:  #24               #
 Obywatelstwo:       #83               #
% PODATNIK-STRONA-0.DLG,PODATNIK-STRONA-ZOBACZ-0.DLG
##DEFWINDOW = ,,,,H,,,,,"Dane p|lacowe"
##45,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:k_zw
##46,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:k_uzys
##37,0,D,," ",,&&black/lwhite,&&white/lblue,,,POLE:pnaliczac,,0,37,T
##39,0,D,," ",,&&black/lwhite,&&white/lblue,,,POLE:pnaliczac,,O,37,N
##67,0,D,," ",,&&black/lwhite,&&white/lblue,,,POLE:wspolneopod,,0,67,T
##68,0,D,," ",,&&black/lwhite,&&white/lblue,,,POLE:wspolneopod,,O,67,N
##62,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dzaniech
##61,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kwotazaniech
##38,0,D,," ",,&&black/lwhite,&&white/lblue,,,POLE:ppobierac,,0,38,T
##40,0,D,," ",,&&black/lwhite,&&white/lblue,,,POLE:ppobierac,,O,38,N
##60,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:zaniechanie
##48,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:os_rodz
##55,0,D,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzmalzonek,,0,55,T
##56,0,D,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzmalzonek,,O,55,N
##49,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:os_piel
##87,0,D,," ",,&&black/lwhite,&&white/lblue,,,POLE:czy_pit40,,0,87,T
##88,0,D,," ",,&&black/lwhite,&&white/lblue,,,POLE:czy_pit40,,O,87,N
      Kwota wolna od podatku:     #45  # / miesi|ac
      Koszt uzyskania przychodu:  #46  # / miesi|ac
#37 #<Nalicza|c p|lace 


#67 #<Wsp|olne opodatkowanie z cz|lonkiem rodziny

      Zaniecha|c poboru podatku od dnia:#62    #
                do kwoty: #61                 #
#38 #<Pobiera|c zaliczk|e podatku     Stawka: #60 #%

      Zasi|lek rodzinny -  liczba os|ob :     #48 #
#55 #<w tym  ma|l|zonek

      Zasi|lek piel|egnacyjny - liczba os|ob : #49 #

#87 #<O|swiadczenie PIT-12
% PODATNIK-STRONA-3.DLG,PODATNIK-STRONA-ZOBACZ-3.DLG
##DEFWINDOW = ,,,,H,,,,,"Dane organizacyjne"
##32,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:urzad
##52,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:konto
//##69,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kontoklaswyna
//##66,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kontorozl1
##69,BGTL,0,,"Rozpisz",,&&black/gray
##66,BGTL,0,,"Rozpisz",,&&black/gray
##41,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kontrahent
 Urz|ad Skarbowy:    |!#32          #


 Konto wynagrodze|n:       |!#52          #

 Klasyfikacja dla
 konta wynagrodze|n:         #69          #

 Klasyfikacja dla
 konta koszt|ow:             #66          #

 Symbol pracownika
 w rejestrze kontrahent|ow:|!#41          #
% PODATNIK-STRONA-2.DLG,PODATNIK-STRONA-ZOBACZ-2.DLG
##DEFWINDOW = ,,,,H,,,,,"Kody do P|LATNIKA"
##47,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kodprac
##87,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kodzawodu
##86,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kodwykszt
##88,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kodpracszczeg
##89,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dpoczszczeg
##90,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dkonszczeg
##91,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kodpokrew
##92,0,D,," ",,&&black/lwhite,&&white/lblue,,,POLE:czyrodzina,,0,92,T
##93,0,D,," ",,&&black/lwhite,&&white/lblue,,,POLE:czyrodzina,,O,92,N
##94,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kodkasychor
##95,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:datapoczkasy
##43,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:czywychow
##96,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kodniezdol
##110,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dniezdol1
##111,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dniezdol2

 Kod tyt.ubezpiecz.:|!#47  #

 Kod zawodu: #87      #  Kod wykszta|lcenia: #86#< 

 Kod pracy w szczeg.warunkach:   #88     #
 Okres pracy w szczeg.warunkach: #89    # - #90    #

 Kod pokrewie|nstwa z pracodawc|a:#91#<

#92 #<wsp|olne gospodarstwo domowe z pracodawc|a


 Kod kasy chorych:|!#94#  Data przyst|ap.:  #95    #

 Kod zasi|lku wychowawczego: |!#43#
 Kod niezdolno|sci do pracy: #96#<
 Pocz|atek niezdolno|sci do pracy: #110    #
 Koniec niezdolno|sci do pracy:     #111    #
% PODATNIK-STRONA-4.DLG,PODATNIK-STRONA-ZOBACZ-4.DLG
##DEFWINDOW = ,,,,H,,,,,"Adres"
##19,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:ulica
##20,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dom
##21,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:lokal
##17,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kod
##58,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:miasto
##63,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:gmina
##64,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:powiat
##18,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:wojew
##22,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:poczta
//
##124,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:ulica2
##125,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dom2
##126,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:lokal2
##128,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kod2
##127,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:miasto2
##129,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:gmina2
//
##118,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:ulica1
##119,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dom1
##120,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:lokal1
##122,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kod1
##121,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:miasto1
##123,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:gmina1
//
##30,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:telefon
##31,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:faks
##200,DZ,BDPH,,"Adres zamieszkania"
##201,DZ,BDPH,,"Adres zameldowania"
##202,DZ,BDPH,,"Adres do korespondencji"
#200
 Ulica:    #19                                        #
 Nr domu:  #20      #    nr mieszkania: #21 #
 Kod:   #17   #    Miasto:   #58                      #
 Gmina: #63               # Powiat:#64                #
 Wojew.:#18               # Poczta:#22                #
                                                       #200<    
#201
 Ulica:    #124                                       #
 Nr domu:  #125     #    nr mieszkania: #126#
 Kod:   #128   #    Miasto:  #127                     #
 Gmina/Dzielnica:       #129                #
                                                       #201<    
#202
 Ulica:    #118                                        #
 Nr domu:  #119     #    nr mieszkania: #120#
 Kod:   #122   #    Miasto:  #121                     #
                                                       #202<    
 Telefon:  #30           #    Faks:     #31           #
% PODATNIK-STRONA-5.DLG,PODATNIK-STRONA-ZOBACZ-5.DLG
##DEFWINDOW = ,,,,H,,,,,"Dane pocz|atkowe"
##70,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:bo_podst_er
##72,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:bo_podst_cw
##74,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:bo_podstopod
##79,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:bo_dnichor
##76,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:bo_ildnizop
##78,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:bo_wyplat
##80,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:bo_datakchor


 Suma podstaw ubezpieczenia:
     emerytalnego i rentowego  -   #70          #
     chorobowego i wypadkowego -   #72          #

 Suma podstaw opodatkowania:       #74          #

 Liczba dni wynagrodzenia chorobowego
 od pocz|atku  roku:                        #79  #
 Liczba dni zasi|lku opieku|nczego
 od pocz|atku roku:                         #76  # 

 Liczba dni otwartego okresu
 zasi|lkowego:                      #78          #
 Data ko|nca ostatniej niezdolno|s|ci
 do pracy:                               #80    #

% PODATNIK-STRONA-6.DLG,PODATNIK-STRONA-ZOBACZ-6.DLG
##DEFWINDOW = ,,,,H,,,,,"Banki i spos|ob wyp|laty"
##103,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:nazwa_bank
##104,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:numer_bank
##75,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:nazwa_bank2
##77,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:numer_bank2
##54,0,D,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzaj_wyplaty,,A,17,1
##59,0,D,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzaj_wyplaty,,A,17,2
##53,0,D,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzaj_wyplaty,,A,17,0
##79,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dobanku1
##99,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dobanku2
##102,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dogotowka
##200,DZ,ACH,,"BANK 1",,&&black/white,&&white/lblue
##201,DZ,ACH,,"BANK 2",,&&black/white,&&white/lblue
 Nazwa banku 1:
 #103                                              #
 Numer rachunku w banku 1:
 #104                                              #
 Nazwa banku 2:
 #75                                              #
 Numer rachunku w banku 2:
 #77                                              #

      Spos|ob wyp|laty           Sta|la kwota:

#54 #<na rachunek w banku 1    #79             #


#59 #<na rachunek w banku 2    #99             #


#53 #<got|owk|a                  #102            #
//
% TABLICA-AKCJI-PODATNIK-STRONA-7
"AKCJA-PRZED-WYSWIETLENIEM",!ExDialogOp["Idzdopozycji","50"]
//"AKCJA-F2-POLE112",!SL.gl_f2_rejestr("R-kalendarz-grupy.RjR","g_nazwa")
//"AKCJA-PO-POLU112",!SL.gl_popolu_rejestr("r-kalendarz-grupy.rjr","g_nazwa","1",daj_zS("kalengrupa"),"")
"AKCJA-PO-POLU64",PO-WYKSZT
"AKCJA-PO-POLU62",PO-ZAWOD
% PO-WYKSZT.ALG
  if(pustepole["wykszt"]) exitalg[0]
  rejop["xx:otworzrej","wykszt.rxr"]
  if(rejop["xx:znajdzrek",rejwezp_s["wykszt"]]) xrejwstawp_s["kodwykszt",rejwezp_s["xx:kod_wykszt"]]
  rejop["xx:zamknijrej",""]

% PO-zawod.ALG
  if(pustepole["zawod"]) exitalg[0]
  rejop["xx:otworzrej","zawod.rxr"]
  if(rejop["xx:znajdzrek",rejwezp_s["zawod"]]) xrejwstawp_s["kodzawodu",rejwezp_s["xx:kod_zawod"]]
  rejop["xx:zamknijrej",""]

% PODATNIK-STRONA-7.DLG,PODATNIK-STRONA-ZOBACZ-7.DLG
##DEFWINDOW = ,,,,H,,,,,"Inne dane kadrowe"
##50,FD,0,,,,&&red/lwhite,&&white/lblue,,,POLE:wymiar1
##51,FD,0,,,,&&red/lwhite,&&white/lblue,,,POLE:wymiar2
##57,FD,0,,,,&&red/lwhite,&&white/lblue,,,POLE:wynagrodz
##65,FD,0,,,,&&red/lwhite,&&white/lblue,,,POLE:miegodz
##62,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:zawod
##14,FD,0,,,,&&black/lwhite,&&white/lblue,,,POLE:stanow
##15,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:wydzial
##16,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:miejscepr
##112,FD,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kalengrupa
##64,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:wykszt
##113,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:rodzwykszt
##66,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:jezyk1
##67,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:jezyk2
##68,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:jezyk3
##78,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:nrlegit
##73,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dbadania
##130,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dwygasbhp
##114,FD,AD,,,,&&black/lwhite,&&white/lblue,,,POLE:czyzatrud
##105,FD,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dzatrud
##115,FD,0,,,,&&black/lwhite,&&white/lblue,,,POLE:rodzumowy
##116,FD,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dwygasumowy
##117,FD,0,,,,&&black/lwhite,&&white/lblue,,,POLE:rozwumowy
##106,FD,0,,,,&&black/lwhite,&&white/lblue,,,POLE:dzwolnien
 Wymiar czasu pracy:  #50#/#51#
 Wynagrodzenie:       #57      # z|l / #65    #

 Zaw|od: |!#62                                          #
 Stanowisko:                #14                         #
 Kom|orka organizacyjna:   |!#15                 #
 Miejsce wykonywania pracy:#16                 #
 Harmonogram pracy:   #112               #
 Wykszta|lcenie : |!#64                       #
 Rodzaj wykszta|lcenia: #113                       #
 J|ezyki: #66         #  #67        #   #68         #
 Nr legitymacji ubezpieczeniowej: #78                   #
 Badania wa|zne do : #73    #                                                       
 Szkolenie BHP wa|zne do: #130   #

 Data zatrudnienia: #105   #
 Rodzaj umowy: |!#115                                #
 Data ko|nca umowy: #116   #
 Rozwi|azanie stosunku pracy: |!#117                 #
 Data zwolnienia: #106   #
% PODATNIK.XXX
##DEFWINDOW=,,,,ADPHS,,,,,"Dane pracownika"
PRZYCISK_CANCELID = 2
//##100,0,ADPH,,,,,,,,WLASCIWOSCIKOLEJNY:doprzodu=1,dotylu=5
##100,0,ADPH,,,,,,,,WLASCIWOSCI
##5,,ADP
##1,,ADP,,@3
##2,,ADP,,@4
##71,,ADP,,"Dane identyfikacyjne"
##74,,ADP,,"Adres"
##160,,ADP,,"Inne dane kadrowe"
##72,,ADP,,"Kody do P|LATNIKA"
##70,,ADP,,"Dane p|lacowe"
##73,,ADP,,"Dane organizacyjne"
//##59,,ADP,,"Banki"
##159,,ADP,,"Banki"
##58,,ADP,,"Dane pocz|atkowe"
##59,,ADP,,"Zwolnij pracownika"

 #71                 #  #100
             

 #74                 #
                                             
					     
 #160                #                                 
                                             
                                             
 #72                 #
							  

 #70                 #


 #73                 #     


 #159                #
                                                                           #100


 #58                 #  #1       #  #2        #  #59                      #
% PODATNIK-REKORD-1.DLG,PODATNIK-REKORD-0.DLG,PODATNIK-REKORD-3.DLG
%<PODATNIK.XXX
//
% PODATNIK-REKORD-2.DLG
%<PODATNIK.XXX
//%<REKORD-OK-BUTT.XXX
//
//
% PODATNIK-K-MENU1.DIC
"PODATNIK-KOLUMNY",0
% PODATNIK-K-MENU3.DIC
"PODATNIK-KOLUMNY",0
% PODATNIK-K-MENU4.DIC
"PODATNIK-KOLUMNY",0
% PODATNIK-K-MENU5.DIC
"PODATNIK-KOLUMNY",0

% PODATNIKMENU1.MEN
D=,"",AB
LINIA-DIALOG=PODATNIK-K-MENU1,"Kolumny do wy|swietlania pracownik|ow"
1,,,,15,"Symbol"
2,,,,13,"Nazwisko"
3,,,,10,"Imi|e"
8,,,,20,"Ulica"
9,,,,3,"Dom"
10,,,,2,"Lo"

% PODATNIKMENU3.MEN
D=,"",A
LINIA-DIALOG=PODATNIK-K-MENU3,"Kolumny do wy|swietlania pracownik|ow"
22,,,,15,"Wydzia|l"
1,,,,15,"Symbol"
2,,,,13,"Nazwisko"
3,,,,10,"Imi|e"
8,,,,20,"Ulica"

% PODATNIKMENU4.MEN
D=,"",AB
LINIA-DIALOG=PODATNIK-K-MENU4,"Kolumny do wy|swietlania pracownik|ow"
23,,,,15,"Stanowisko"
1,,,,15,"Symbol"
2,,,,13,"Nazwisko"
3,,,,10,"Imi|e"
8,,,,20,"Ulica"
9,,,,3,"Dom"
10,,,,2,"Lo"

% PODATNIKMENU5.MEN
D=,"",AB
LINIA-DIALOG=PODATNIK-K-MENU5,"Kolumny do wy|swietlania pracownik|ow"
32,,,,10,"Numer akt"
1,,,,10,"Symbol"
2,,,,27,"Nazwisko"
3,,,,23,"Imi|e"

// --------------------------------------------
// rejestr urzedow skarbowych
// --------------------------------------------

% URZAD-DAJDANE.ALG
  symbol_pole_rej := "sym"
  symbol_pole_brak := "Wprowad|x symbol urz|edu skarbowego !"
  symbol_tytul := "Rejestr urz|ed|ow skarbowych"
  
  symbol_jest_modif := "REJESTR_PRACOWNIKOW"
  symbol_jest_modif1 := "REJESTR_PRACOWNIKOW"
//  symbol_jest_modif1 := ""
  symbol_modif_glowny_rej := "urzad"
  symbol_usun_glowny_rej := "Nie mo|zna usun|a|c tego urz|edu !$ Wyst|epuje w rejestrze pracownik|ow."

% URZADALGO.XXX
"AKCJA-PRZED-WYSWIETLENIEM-URZAD-MENU-?.DLG",URZADMENU-PRZED
"AKCJA-BUTTON30-URZAD-MENU-?.DLG",URZADMENU-SORTUJ
"AKCJA-BUTTON31-URZAD-MENU-?.DLG",URZADMENU-SORTUJ
"AKCJA-BUTTON32-URZAD-MENU-?.DLG",URZADMENU-SORTUJ
"AKCJA-F2-POLE19-URZAD-REKORD-?.DLG",ZOBACZ_KODUS
"AKCJA-PO-POLU19-URZAD-REKORD-?.DLG",PRZEPISZ_KODUS
%< TABLICA-AKCJI-REJESTRSYMBOLE.XXX(SYMBOL_D=URZAD)

% URZADMENU-PRZED.ALG
  porzadek  := 1
  kwota2    := 1
  nazwa_frm := "Rejestr_urzedow"
  CallAlg["PL_PAR_READ_PARAM"]
  if(Not(kwota2=.)) porzadek := kwota2
  kwota2 := porzadek
  CallAlg["PL_PAR_WRITE_PARAM"]
  if(porzadek=1)  ExDialogOp["UstawMenuParam","100:URZADMENU,,KLUCZ,1"]
  if(porzadek=2)  ExDialogOp["UstawMenuParam","100:URZADMENU,,KLUCZ,2"]
  if(porzadek=3)  ExDialogOp["UstawMenuParam","100:URZADMENU,,KLUCZ,3"]

% URZADMENU-SORTUJ.ALG
  if(porzadek=1)  ExDialogOp["UstawMenuParam","100:URZADMENU,,KLUCZ,1"]
  if(porzadek=2)  ExDialogOp["UstawMenuParam","100:URZADMENU,,KLUCZ,2"]
  if(porzadek=3)  ExDialogOp["UstawMenuParam","100:URZADMENU,,KLUCZ,3"]
  ExDialogOp["WyswietlPozycje","101"]
  ExDialogOp["WyswietlPozycje","100"]
  ExDialogOp["wyswietlpozycje","7"]
  ExDialogOp["IdzDoPozycji","100"]
  kwota2 := porzadek
  CallAlg["PL_PAR_WRITE_PARAM"]

% URZAD-MENU-1.DLG
##99,0,P,,,,,,,,MENU_ROZWIJANE:KADRY-REJESTRY-MENU-ROZWIJANE
%< KADRY-REJESTRY-MENU-1.XXX
%< URZAD-MENU-X.XXX
//
% URZAD-MENU-0.DLG
##99,0,P,,,,,,,,MENU_ROZWIJANE:KADRY-REJESTRY-MENU-ROZWIJANE
%< KADRY-REJESTRY-MENU-0.XXX
%< URZAD-MENU-X.XXX
% URZAD-MENU-X.XXX
##DEFWINDOW = ,,,,ADPSH,,,,,"Rejestr urz|ed|ow skarbowych"
##100,0,BCMP,,,,,,,,MENU_NA_REKORDY
##30,B,0,,"symbol",,&&lwhite/blue,&&lwhite/yellow,,,ZMIENNA:PORZADEK,,A,2,"1"
##31,B,0,,"nazwa",,&&lwhite/blue,&&lwhite/yellow,,,ZMIENNA:PORZADEK,,,2,"2"
##32,B,0,,"miasto",,&&lwhite/blue,&&lwhite/yellow,,,ZMIENNA:PORZADEK,,,2,"3"
##34,BGTL,P,,"Wydruk"
##200,GTD,0,,"Sortowanie:",,&&lwhite/blue,&&lwhite/yellow
#200                ##30             ##31             ##32             #


#100                                                                   #100
// --------
% URZAD.XXX
##DEFWINDOW = ,,,,ADPHS,,,,,"Dane Urz|edu Skarbowego"
##10,0,AC,,,,&&black/lwhite,&&white/lblue,,,POLEUNIKALNE:sym
##19,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:u_kodus
##11,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:urzad
##13,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:u_kod
##12,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:u_miasto
##14,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:u_ulica
##15,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:u_dom
##16,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:u_krodz
##17,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:u_kbank
##18,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:u_kbanknaz
##200,DZ,ADP

Symbol urz|edu:            #10               #     Kod urz|edu: #19#


Nazwa Urz|edu:  #11                                              #

Kod pocztowy:   #13   #  miejscowo|s|c: #12                          #

Ulica:          #14                          #  nr domu: #15   #

Konto ksi|egowe Urz|edu:          |!#16         #

Konto bankowe Urz|edu:            #17                          #

Nazwa konta bankowego:    #18                                              #


//
% URZAD-REKORD-1.DLG,URZAD-REKORD-0.DLG,URZAD-REKORD-3.DLG
%<URZAD.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% URZAD-REKORD-2.DLG
%<URZAD.XXX
%<REKORD-OK-BUTT.XXX
//
% URZADMENU.MEN
D=,"",A
1,,,,10,"Symbol"
10,,,,5,"Kod"
2,,,,37,"Nazwa"
3,,,,,"Miasto"
5,,,,24,"Ulica"
% zobacz_kodus.alg
porzadek := 3
callsl["gl_f2_rejestr(""URZAD-SKARB.RXR"",""kod"")"]
//
% PRZEPISZ_KODUS.ALG
if(rejwezp_s["u_kodus"]="") exitalg[0]
if (rejop["mm:otworzrej","URZAD-SKARB.RXR"]) goto otworzyl
exitalg[0]
otworzyl:
if (rejop["mm:znajdzrek",rejwezp_s["u_kodus"]]) goto przepisz_77
okalert["Brak urz|edu skarbowego o kodzie "+rejwezp_s["u_kodus"]]
exdialogop["idzdopozycji","19"]
exitalg[0]
przepisz_77:
xrejwstawp_s["urzad",rejwezp_s["mm:urzad"]]
xrejwstawp_s["u_miasto",rejwezp_s["mm:u_miasto"]]
xrejwstawp_s["u_kod",rejwezp_s["mm:u_kod"]]
xrejwstawp_s["u_ulica",rejwezp_s["mm:u_ulica"]]
xrejwstawp_s["u_dom",rejwezp_s["mm:u_dom"]]
rejop["mm:zamknijrej",""]
exdialogop["wyswietlpozycje","11"]
exdialogop["wyswietlpozycje","12"]
exdialogop["wyswietlpozycje","13"]
exdialogop["wyswietlpozycje","14"]
exdialogop["wyswietlpozycje","15"]
exitalg[0]

// -------------------------------------------
// rejestr numerow list plac
// -------------------------------------------

% NRLIST-MENU-0.DLG,NRLISTX-MENU-0.DLG
PRZYCISK_CANCELID = 3
##1,,ADP,,@17
##3,,ADP,,@4
##7,0,AC,,,,&&black/lwhite,&&white/lblue
                         
 #1      #  #3       #   Numer listy: #7        #
     
     
%< NR-LIST-MENU.XXX               
//
% TABLICA-AKCJI-NRLIST-MENU-1,TABLICA-AKCJI-NRLISTX-MENU-1,TABLICA-AKCJI-NRLIST-MENU-0,TABLICA-AKCJI-NRLISTX-MENU-0
"AKCJA-PRZED-WYSWIETLENIEM",USTAW_KOLUMNY
"AKCJA-BUTTON5",NRLISTX_ZAZNACZ
"AKCJA-BUTTON4",NRLISTX_ODZNACZ
% NRLISTX_ZAZNACZ.ALG
rejop["wezpierwszyrek",""]
petla_x:
rejwstawp_l["zaznacz",.T.]
if(rejop["weznastepnyrek",""]) goto petla_x
rejop["wezpierwszyrek",""]
exdialogop["wyswietlpozycje","100"]
exdialogop["idzdopozycji","1"]

% NRLISTX_ODZNACZ.ALG
rejop["wezpierwszyrek",""]
petla_x:
rejwstawp_l["zaznacz",.N.]
if(rejop["weznastepnyrek",""]) goto petla_x
rejop["wezpierwszyrek",""]
exdialogop["wyswietlpozycje","100"]
exdialogop["idzdopozycji","1"]

% USTAW_KOLUMNY.ALG
defzmiennak["z_opisem",0]
defzmiennak["z_poprz_rok",0]
if(z_opisem = 0) ExDialogOp["UstawMenuParam","100:NRLISTMENU,,KLUCZ,2"]
if(z_opisem = 0 and z_poprz_rok = 1) ExDialogOp["UstawMenuParam","100:NRLISTMENU,,KLUCZ,5"]
if(z_opisem = 1) ExDialogOp["UstawMenuParam","100:NRLISTMENUOPIS,,KLUCZ,2"]
% NRLIST-MENU-1.DLG
PRZYCISK_CANCELID = 0
##0,,ADP,,@5
##7,0,AC,,,,&&black/lwhite,&&white/lblue
	    
 #0      #  Numer listy: #7        #
     
  
%< NR-LIST-MENU.XXX     
//
% NRLISTX-MENU-1.DLG
PRZYCISK_CANCELID = 0
##0,,ADP,,@5
##7,0,AC,,,,&&black/lwhite,&&white/lblue
##5,,ADP,,"Zaznacz wszystkie"
##4,,ADP,,"Odznacz wszystkie"
	    
 #0      #  Numer listy: #7        #  #5                #  #4                #
     
  
%< NR-LIST-MENU.XXX     
% NR-LIST-MENU.XXX     
##DEFWINDOW = ,,,,ADPSH,,,,,"Wykaz list p|lac"
//##100,0,BCMP,,,,,,,,MENU_NA_REKORDY:NRLISTMENU,,KLUCZ,2
##100,0,BCMP,,,,,,,,MENU_NA_REKORDY


#100                                                                       #100

% NRLISTMEN.DIC
"NRLIST",0
% NRLISTMENU.MEN
D=,"",AB
//LINIA-DIALOG=NRLISTMEN,"Kolumny do wykazu list"
100,,,,25,"Symbol i numer"
101,,,,15,"Symbol"
102,,,,5,"Numer"
103,,,,8,"Data"
105,,,,15,"Uwagi"
//
% NRLISTMENUOPIS.MEN
D=,"",AB
//LINIA-DIALOG=NRLISTMEN,"Kolumny do wykazu list"
100,,,,15,"Symbol listy"
109,,,,60,"Opis"
// ---------------------------------------
// rejestr stanowisk pracy
// ---------------------------------------

% STANOW-DAJDANE.ALG
  symbol_pole_rej := "stanow"
  symbol_pole_brak := "Wprowad|x symbol stanowiska"
  symbol_menu := "STANOWMENU"
  symbol_tytul := "Rejestr stanowisk"  
  
  symbol_jest_modif := "PRZEBIEG.RXR"
  symbol_jest_modif1 := "PRZEBIEG.RXR"
//  symbol_jest_modif1 := ""
  symbol_modif_glowny_rej := "stanow"
  symbol_usun_glowny_rej := "Nie mo|zna usun|a|c tego stanowiska !$ S|a pracownicy na tym stanowisku."

% STANOWALGO.XXX
%< TABLICA-AKCJI-REJESTRSYMBOLE.XXX(SYMBOL_D=STANOW)
% STANOW-MENU-0.DLG
%< SYMBOLE-MENU-0.DLG
% STANOW-MENU-1.DLG
%< SYMBOLE-MENU-1.DLG
% STANOW-REKORD-1.DLG,STANOW-REKORD-0.DLG,STANOW-REKORD-3.DLG
%< SYMBOLE-REKORD-1.DLG
% STANOWMENU.MEN
D=,"",A
1,,,,60,"Symbol stanowiska"

// --------------------------------------
// wydzialy, komorki organizacyjne
// --------------------------------------

% WYDZIALY-DAJDANE.ALG
  symbol_pole_rej := "wydzial"
  symbol_pole_brak := "Wprowad|x symbol kom|orki"
  symbol_menu := "WYDZIALYMENU"
  symbol_tytul := "Rejestr kom|orek organizacyjnych"  
  symbol_Key_field := 100  
  
  symbol_jest_modif := "REJESTR_PRACOWNIKOW"
  symbol_jest_modif1 := "REJESTR_PRACOWNIKOW"
//  symbol_jest_modif1 := ""
  symbol_modif_glowny_rej := "wydzial"
  symbol_usun_glowny_rej := "Nie mo|zna usun|a|c tej kom|orki organizacyjnej !$ Wyst|epuje w rejestrze pracownik|ow."
  
% WYDZIALYALGO.XXX
%< TABLICA-AKCJI-REJESTRSYMBOLE.XXX(SYMBOL_D=WYDZIALY)
% WYDZIALY-MENU-0.DLG
%< SYMBOLE-MENU-0.DLG
% WYDZIALY-MENU-1.DLG
%< SYMBOLE-MENU-1.DLG

% WYDZIALY.XXX
##DEFWINDOW = ,,,,ADPHS,,,,,"Kom|orka organizacyjna"
##10,0,AC,,,,&&black/lwhite,&&white/lblue,,,POLEUNIKALNE:wydzial
##11,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:wydznazwa
##12,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:wydzrozl
##200,DZ,ADP

Symbol:                #10         #

      
Nazwa:                #11                          #

Symbol klasyfikacji:  #12        #
% WYDZIALY-REKORD-1.DLG,WYDZIALY-REKORD-0.DLG,WYDZIALY-REKORD-3.DLG
%<WYDZIALY.XXX


%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% WYDZIALY-REKORD-2.DLG
%<WYDZIALY.XXX
%<REKORD-OK-BUTT.XXX
//
% WYDZIALYMENU.MEN
D=,"",A
100,,,,,"Symbol"
101,,,,,"Nazwa"
102,,,,,"Klasyfikacja"  
// ---------------------------------------------
// rejestr skladnikow plac
// ---------------------------------------------
% PLSKLADALGO.XXX
"AKCJA-PRZED-WYSWIETLENIEM-PLSKLAD-REKORD-0.DLG",PLSKLADREKORD-MODYFIKUJ
"AKCJA-PRZED-WYSWIETLENIEM-PLSKLAD-REKORD-1.DLG",PLSKLADREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-PLSKLAD-REKORD-2.DLG",PLSKLADREKORD-DODAJLOOK
"AKCJA-PRZED-WYSWIETLENIEM-PLSKLAD-REKORD-3.DLG",PLSKLADREKORD-DODAJSTART1
"AKCJA-BUTTON20-PLSKLAD-MENU-?.DLG",PLSKLADMENU-USUN
"AKCJA-BUTTON21-PLSKLAD-MENU-?.DLG",PLSKLADMENU-WYDRUK
"AKCJA-BUTTON1-PLSKLAD-REKORD-?.DLG",PLSKLADREKORD-AKCEPTUJESZ
"AKCJA-button35-PLSKLAD-REKORD-?.DLG",PLSKLADMENU-NAZWA
//"AKCJA-BUTTON39-PLSKLAD-REKORD-?.DLG",!PYT.import place_g | place_g.place_skladnik_premia()

% PLSKLADMENU-USUN.ALG
  jestlista := .N.
  xsymsklad := RejWezP_S["symsklad"]
  CallAlg["PLSKLAD-SPRAWDZAM"]
  CallAlg["PLSKLAD-SPRAWDZAM1"]
  if(Not(jestlista)) goto usuwaj
    OkAlert["Wskazany sk|ladnik wyst|epuje na listach p|lac !$ Usuni|ecie jest niemo|zliwe."]
    ExitAlg[0]
usuwaj:
  if (not YesNAlert["Usun|a|c sk|ladnik "+symsklad+" z rejestru ?"]) ExitAlg[0]
// sprawdzenie czy by�y skladniki powi�zane
  rejop["sp:otworzrejsprawdz","sklad_powiaz.rjr"]
petla_sp:
  if(not(rejop["sp:znajdzrek",symsklad])) goto usun_sklad
  rejop["sp:usunrek",""]
  goto petla_sp 
//
  usun_sklad:
  RejOp["UsunRek",""]
  zmiana := .T.
  ExDialogOp["UsunRekordzMenu","100"]

% PLSKLAD-SPRAWDZAM.ALG 
  jestlista := .N.
  RejOp["E:OtworzRejsprawdz","PLPOWIAZ.RXR"]
  RejOp["E:ZmienKluczRej","4"]
  IF(Not(RejOp["E:ZnajdzRek",xsymsklad])) goto zamknij
petla:
  if(Not(RejWezP_S["E:skladnik"]==xsymsklad)) goto zamknij
  if(RejWezP_L["E:zaznacz"]) jestlista := .T.
  If(RejOp["E:WezNastepnyRek",""]) goto petla
zamknij:
  RejOp["E:ZamknijRej",""]

% PLSKLADMENU-NAZWA.ALG
  jestlista := .N.
  xrodzskl  := RejWezP_S["rodzskl"]
  CallAlg["PLSKLADMENU-NAZWA-ZNAJDZ"]
  akt_53 := .N.
  if(xrodzskl="1" or xrodzskl="2") akt_53 := .T.
  if(not(akt_53)) xrejwstawp_k["mies_url",.]
  if(not(akt_53)) Exdialogop["pozycjaniewprowadzana","53"]
  if(akt_53) Exdialogop["pozycjawprowadzana","53"]
  ExDialogOp["WyswietlPozycje","36"]
  ExDialogOp["WyswietlPozycje","53"]
//  ExDialogOp["IdzDoPozycji","33"]

% PLSKLADMENU-NAZWA-ZNAJDZ.ALG
  RejOp["EA:OtworzRejsprawdz","RODZSKL.RXR"]
dalej2:
  if(Not(RejOp["EA:ZnajdzRek",xrodzskl])) goto zamknij
    nazwarodz  := RejWezP_S["EA:nazwarodz"]
zamknij:
  RejOp["EA:ZamknijRej",""]
//  xRejWstawP_S["nazwarodz",nazwarodz]
// przepisanie skladnikow wchodzacych do podstawy wyliczenia
rejop["Sp:zmienkluczrej","1"]
if(rejwezp_s["symsklad"]="") goto brak
if(not(REjOp["Sp:Znajdzrek",rejwezp_s["symsklad"]])) goto brak
petla:
 RejOp["SB:DodajREk",""]
 Rejop["Sp:przeniespola","SB:"]
 rejop["SB:zapiszrek",""]
if(RejOp["Sp:WezNastepnyRekN",""]) goto petla
brak:
//
% PLSKLADREKORD-AKCEPTUJESZ.ALG   
//maria
  A_OK := .N.
  if(not(symsklad="")) goto dalej1
    OkAlert["Wprowad|x symbol sk|ladnika !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
dalej1:
  if(not(nazsklad="")) goto dalej2
    OkAlert["Wprowad|x nazw|e sk|ladnika !"]
    ExDialogOp["IdzDoPozycji","11"]
    ExitAlg[0]
dalej2:
  if(not((ryczalt)and(ryczproc=.))) goto dalej3
    OkAlert["Wprowad|x procent podatku rycza|ltowego !"]
    ExDialogOp["IdzDoPozycji","15"]
    ExitAlg[0]
dalej3:
  if(not(rejwezp_l["dodacklnwn"] and rejwezp_l["dodacsymwn"])) goto dalej4
    OkAlert["W dekretacji ksi|egowej nie mo|zna r|ownocze|snie $dodawa|c symbolu pracownika i kontrahenta !"]
    ExDialogOp["IdzDoPozycji","72"]
    ExitAlg[0]
dalej4:
  if(not(rejwezp_l["dodacklnma"] and rejwezp_l["dodacsymma"])) goto dalej5
    OkAlert["W dekretacji ksi|egowej nie mo|zna r|ownocze|snie $dodawa|c symbolu pracownika i kontrahenta !"]
    ExDialogOp["IdzDoPozycji","74"]
    ExitAlg[0]
dalej5:
  if(czyprock_uzx=="PLN") xrejwstawp_L["czyprock_uz",.N.]
  if(czyprock_uzx=="%") xrejwstawp_L["czyprock_uz",.T.]
  if(pustepole["miegodz"]) xrejwstawp_s["miegodz","Miesi|ac"]
  if(pustepole["rodzwynagr"]) xrejwstawp_k["rodzwynagr",4]
  if(pustepole["rodzzwoln"] and rejwezp_l["dopodstawy"]) xrejwstawp_k["rodzzwoln",0]
  if(pustepole["rodzzwoln"] and not(rejwezp_l["dopodstawy"])) xrejwstawp_k["rodzzwoln",3]
  if(rejop["zmienionyrek",""]) zmiana := .T.
// tu bylo pierwotne wstawianie poziomu skladnika - bez uwzgledniania poziomow skladnikow skladowych
//  poziomx := "01"
  A_OK := .T.
// dopisanie danych o skladnikach wchodzoacych do podstawy
klucz := rejwezp_s["symsklad"]
petla_sp:
if(not(rejop["sp:znajdzrek",klucz])) goto wyjdz
 rejop["sp:usunrek",""]
goto petla_sp
wyjdz:
// zapisywanie danych
if(not(rejop["sb:wezpierwszyrek",""])) goto po_zapisie
petla_sb:
rejop["sp:dodajrek",""]
rejop["sb:przeniespola","sp:"]
rejop["sp:zapiszrek",""]
if(rejop["sb:weznastepnyrek",""]) goto petla_sb
po_zapisie:
rejop["sb:zamknijrej",""]
//
  RejOp["ZapiszRek",""]
  ExDialogOp["KoniecWykonywania",""]

% PLSKLADREKORD-MODYFIKUJ.ALG
rejop["SB:otworzrejtemp","sklad_powiaz.rjr"]
  CallAlg["SKLADNIKI-SPRAWDZ"]
  callalg["PLSKLADREKORD-DODAJSTRONE"]
  jestlista := .N.
  xsymsklad := RejWezP_S["symsklad"]
  xrodzskl  := RejWezP_S["rodzskl"]
  CallAlg["PLSKLADMENU-NAZWA-ZNAJDZ"]
  if(xsymsklad="") goto modyfikuj
  CallAlg["PLSKLAD-SPRAWDZAM1"]
  if(Not(jestlista)) goto modyfikuj
  ExDialogOp["PozycjaWprowadzana","*"]
  ExDialogOp["PozycjaNiewprowadzana","10"]
  ExDialogOp["PozycjaNiewprowadzana","33"]
  ExDialogOp["PozycjaNiewprowadzana","13"]
  ExDialogOp["PozycjaNiewprowadzana","14"]
  ExDialogOp["PozycjaNiewprowadzana","16"]
  ExDialogOp["PozycjaNiewprowadzana","17"]
  ExitAlg[0]
modyfikuj:
  ExDialogOp["PozycjaWprowadzana","*"]
  CallAlg["PLSKLAD-SPRAWDZAM"]
  akt_53 := .T.
//  if(xrodzskl="1" or xrodzskl="2") akt_53 := .T.
//  if(not(akt_53)) Exdialogop["pozycjaniewprowadzana","53"]
  if(akt_53) Exdialogop["pozycjawprowadzana","53"]
  if(Not(jestlista)) goto koniec
  ExDialogOp["PozycjaNiewprowadzana","10"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
koniec:
  ExDialogOp["IdzDoPozycji","10"]

% PLSKLAD-SPRAWDZAM1.ALG 
  RejOp["E:OtworzRejsprawdz","PLARCH.RXR"]
  RejOp["E:ZmienKluczRej","3"]
  IF(RejOp["E:ZnajdzRek",xsymsklad]) jestlista := .T.
  RejOp["E:ZamknijRej",""]
  RejOp["E:OtworzRejSprawdz","PLACE.RXR"]
  RejOp["E:ZmienKluczRej","3"]
  IF(RejOp["E:ZnajdzRek",xsymsklad]) jestlista := .T.
  RejOp["E:ZamknijRej",""]

% SKLADNIKI-SPRAWDZ.ALG
  if (PustePole["odj_chorobowe"]) xRejWstawp_L["odj_chorobowe",.T.]
  if (PustePole["odj_wypadkowe"]) xRejWstawp_L["odj_wypadkowe",.T.]
  if (PustePole["odj_ulgapodatek"]) xRejWstawp_L["odj_ulgapodatek",.T.]
  if (PustePole["ekwiwalent"]) xRejWstawp_L["ekwiwalent",.T.]
  if (PustePole["chorobowe"]) xRejWstawp_L["chorobowe",.T.]
  if (PustePole["dokartoteki"]) xRejWstawp_L["dokartoteki",.T.]
  if (PustePole["ujemny"]) xRejWstawp_L["ujemny",.N.]
  if (PustePole["odjaczus"]) xRejWstawp_L["odjaczus",.T.]
  if (PustePole["czywyplacac"]) xRejWstawp_L["czywyplacac",.T.]
  
% PLSKLADREKORD-DODAJSTRONE.ALG
  ExDialogOp["DodajStrone","100:PLSKLAD-STRONA-1"]
  ExDialogOp["DodajStrone","100:PLSKLAD-STRONA-2"]
  ExDialogOp["DodajStrone","100:PLSKLAD-STRONA-3"]
  ExDialogOp["DodajStrone","100:PLSKLAD-STRONA-4"]
  ExDialogOp["DodajStrone","100:PLSKLAD-STRONA-5"]
  czyprock_uzx := ""
% PLSKLADREKORD-DODAJSTRONEx.ALG
  ExDialogOp["DodajStrone","100:PLSKLAD-STRONAx-1"]
  ExDialogOp["DodajStrone","100:PLSKLAD-STRONAx-2"]
  ExDialogOp["DodajStrone","100:PLSKLAD-STRONAx-3"]
  ExDialogOp["DodajStrone","100:PLSKLAD-STRONAx-4"]
  ExDialogOp["DodajStrone","100:PLSKLAD-STRONAx-5"]
  czyprock_uzx := ""

% PLSKLADREKORD-DODAJSTART1.ALG
%< PLSKLADREKORD-DODAJSTART.ALG

% PLSKLADREKORD-DODAJSTART.ALG 
rejop["sb:otworzrejtemp","sklad_powiaz.rjr"]
//  okalert["przed"]
  jestlista := .N.
  callalg["PLSKLADREKORD-DODAJSTRONE"]
  xrodzskl    := RejWezP_S["rodzskl"]
  CallAlg["SKLADNIKI-SPRAWDZ"]
  CallAlg["PLSKLADMENU-NAZWA-ZNAJDZ"]
  if(pustepole["mnozyc"]) xrejwstawp_l["mnozyc",.T.]
  if(pustepole["rodzwynagr"]) xrejwstawp_k["rodzwynagr",4]
  if(pustepole["rodzzwoln"]) xrejwstawp_k["rodzzwoln",0]
  ExDialogOp["PozycjaWprowadzana","10"]
  ExDialogOp["IdzDoPozycji","10"]

% PLSKLADREKORD-DODAJLOOK.ALG
  rejop["sp:otworzrejsprawdz","sklad_powiaz.rjr"]
  rejop["sb:otworzrejtemp","sklad_powiaz.rjr"]
  rejop["sk:otworzrej","plsklad.rxr"]
  xrodzskl  := RejWezP_S["rodzskl"]
  callalg["PLSKLADREKORD-DODAJSTRONEx"]
  CallAlg["PLSKLADMENU-NAZWA-ZNAJDZ"]
  ExDialogOp["PozycjaNiewprowadzana","*"]

% PLSKLAD-DAJDANE.ALG
  symbol_pole_rej := "symsklad"
  symbol_tytul := "Wykaz sk|ladnik|ow p|lac"  

% PLSKLADMENU-WYDRUK.ALG
%< SYMBOLEREKORD-ZMIENNE.XXX
  CallSl["PLACE_G->drukuj_symbole()"]

% PLSKLAD-MENU-1.DLG
##0,,ADP,,@5
##7,0,0,,,,&&black/lwhite,&&white/lblue
PRZYCISK_CANCELID = 0
##101,0,P,,,,,,,,MENU_ROZWIJANE:SKLADNIKI-MENU-PATRZ

 #0        #  #101                          #  Sk|ladnik: #7       #

%< PLSKLAD-MENU-X.XXX
% PLSKLAD-MENU-0.DLG
##1,,ADP,,@17
##3,,ADP,,@4
##7,0,ACP
PRZYCISK_CANCELID = 3
##101,0,P,,,,,,,,MENU_ROZWIJANE:SKLADNIKI-MENU-PATRZ

 #1     #   #3      #  #101                      # Sk|ladnik: #7       #

%< PLSKLAD-MENU-X.XXX
//
% PLSKLAD-MENU-3.DLG
##1,,ADP,,@17
##3,,ADP,,@4
##7,0,ACP
PRZYCISK_CANCELID = 3
##101,0,P,,,,,,,,MENU_ROZWIJANE:KADRY-REJESTRY-MENU-ROZWIJANE-SZUKAJ

 #1     #   #3      #  #101                      # Sk|ladnik: #7       #

%< PLSKLAD-MENU-LOOK.XXX
//%< REJESTRY-BUTTONY-1.XXX
//
% PLSKLAD-MENU-2.DLG
##3,,ADP,,@4
##2,,ADP,,"Obejrzyj"
##7,0,ACP
PRZYCISK_CANCELID = 3
##101,0,P,,,,,,,,MENU_ROZWIJANE:KADRY-REJESTRY-MENU-ROZWIJANE-SZUKAJ

 #3      #  #2      #  #101                      # Sk|ladnik: #7       #

%< PLSKLAD-MENU-LOOK.XXX
//%< REJESTRY-BUTTONY-0.XXX
//
% PLSKLADMENU-EDYCJA.DIC
"PLSKLAD1",0
//
% PLSKLADMENU.MEN
D= ,"",AB
LINIA-DIALOG = PLSKLADMENU-EDYCJA,"Kolumny do wy|swietlania danych sk|ladnika"
1,,,,30,"Symbol sk|ladnika"
2,,,,40,"Nazwa sk|ladnika"

% PLSKLAD-MENU-X.XXX
##DEFWINDOW =3,3,,76,ADPSH,,,,,"Wykaz sk|ladnik|ow p|lac"
##100,0,ACPM,,,,,,,,MENU_NA_REKORDY:PLSKLADMENU,,KLUCZ,1


 #100                                                              #100
 
% SKLADNIKI-MENU-PATRZ
%< KADRY-REJESTRY-MENU-ROZWIJANE-OPERACJE
%< KADRY-REJESTRY-MENU-ROZWIJANE-SZUKAJ
% PLSKLAD-MENU-LOOK.XXX
%< PLSKLAD-MENU-X.XXX
//                         #2       #
% PLSKLAD.XXX
PRZYCISK_CANCELID = 2
##DEFWINDOW = 3,,,,ADPH,,,,,"Definicja sk|ladnika p|lacy"
##1,,ADP
##6,,ADP
##2,,ADP,,@4
//##39,,ADP,,"Dodatkowe$%p%arametry"
//##50,,ADP,,"Og|olne"
//##51,,ADP,,"W|la|sciwo|sci"
//##52,,ADP,,"Metody wylicze|n"
##100,0,ADPM,,,,,,,,WLASCIWOSCIKOLEJNY:doprzodu=1,dotylu=6

#100





















                                                                           #100<


  #6          #  #1         #  #2          #

%TABLICA-AKCJI-PLSKLAD-STRONAx-2,TABLICA-AKCJI-PLSKLAD-STRONAx-1,TABLICA-AKCJI-PLSKLAD-STRONAx-3,TABLICA-AKCJI-PLSKLAD-STRONAx-5,TABLICA-AKCJI-PLSKLAD-STRONAx-6
"AKCJA-PRZED-WYKONYWANIEM",!ExDialogOp["PozycjaNiewprowadzana","*"]

% TABLICA-AKCJI-PLSKLAD-STRONAx-4
"AKCJA-PRZED-WYKONYWANIEM",!ExDialogOp["PozycjaNiewprowadzana","*"]
"AKCJA-BUTTON52",PLSKLAD-52-ob


%TABLICA-AKCJI-PLSKLAD-STRONA-2
"AKCJA-PRZED-WYSWIETLENIEM",PRZED-PLSKLAD-STRONA-2
//"AKCJA-PRZED-WYkonywaNIEM",!ExDialogOp["PozycjaNiewprowadzana","*"]
"AKCJA-F2-POLE17",PLSKLAD-F2-POLE17
"AKCJA-PO-POLU17",PLSKLAD-F2-POPOLU17
% PRZED-PLSKLAD-STRONA-2.ALG
if(not(rejwezp_L["czyprock_uz"])) czyprock_uzx := "PLN"
if(rejwezp_L["czyprock_uz"]) czyprock_uzx := "%"
if(pustepole["czyprock_uz"]) czyprock_uzx := ""
  
% PLSKLAD-F2-POLE17.ALG
A_ok := .N.
d_string := WezNazwaString["%","%,PLN","Rodzaj"]
if(d_string="") ExitAlg[0]
A_ok := .T.
% PLSKLAD-F2-POPOLU17.ALG
if(OkNazwaString[czyprock_uzx,"%, ,PLN"]) exitAlg[0]
okalert["Niepoprawna warto|s|c!"]
ExDialogOp["IdzDoPozycji","17"]
ExitAlg[0]
% PLSKLAD-STRONA-2.DLG,PLSKLAD-STRONAX-2.DLG
##DEFWINDOW = ,,,,H,,,,,"W|la|sciwo|sci"
//##21,0,P,,,,,,,,POLE:grupa
##13,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:dopodstawy,,0,13,T
##55,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:dopodstawy,,O,13,N
##19,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:ekwiwalent,,0,19,T
##56,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:ekwiwalent,,O,19,N
##20,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:chorobowe,,0,20,T
##57,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:chorobowe,,O,20,N
##25,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:k_uzys
##17,0,0,,,,&&black/lwhite,&&white/lblue,,,ZMIENNA:czyprock_uzx
##14,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:ryczalt,,0,14,T
##64,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:ryczalt,,O,14,N
##15,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:ryczproc
##41,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:czyczescpodst,,0,41,T
##65,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:czyczescpodst,,O,41,N
##16,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:odjack_uz,,0,16,T
##58,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:odjack_uz,,O,16,N
##44,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:odj_ulgapodatek,,0,44,T
##59,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:odj_ulgapodatek,,O,44,N
//##18,0,P,,,,&&black/lwhite,&&white/lblue,,,POLE:zusproc
//##22,0,P,,,,&&black/lwhite,&&white/lblue,,,POLE:opissklad
//##31,0,P,,,,&&black/lwhite,&&white/lblue,,,POLE:dopitu
##37,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:odjaczus,,0,37,T
##60,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:odjaczus,,O,37,N
##43,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:odj_chorobowe,,0,43,T
##62,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:odj_chorobowe,,O,43,N
##42,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:odj_wypadkowe,,0,42,T
##63,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:odj_wypadkowe,,O,42,N
##38,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:odjaczdrow,,0,38,T
##61,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:odjaczdrow,,O,38,N
##66,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:zdrownpod,,0,66,T
##67,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:zdrownpod,,O,66,N
##68,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:zdrownobn,,0,68,T
##69,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:zdrownobn,,O,68,N
##70,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:czyryczpodst,,0,70,T
##71,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:czyryczpodst,,O,70,N
##200,DZ,ADH,,"Sk|ladnik wchodzi do podstawy",,&&black/white 
##201,DZ,ADH,,"Odlicza|c",,&&black/white 
Sk|ladnik wchodzi do podstawy:            Odlicza|c:
 #13 #<podatku dochodowego              #16 #<koszt uzyskania przychodu

 #19 #<ekwiwalentu za urlop             #44 #<ulg|e podatkow|a

 #20 #<wynagrodzenia chorobowego        #37 #<ubezpieczenie emerytalne

                                         #43 #<ubezpieczenie chorobowe
 Koszt uzyskania przychodu: #25   # |!#17# 
                                         #42 #<ubezpieczenie wypadkowe
Opodatkowany:
                                         #38 #<ubezpieczenie zdrowotne
 #14 #<rycza|ltowo stawk|a #15   #                 
                                          Sk|ladka zdrowotna:
 #64 #<progresywnie                     #68 #<nie obni|zana do wys.podatku

 #70 #<Podstawa podatkowania nie obni|zana o pracownicze sk|ladki ZUS

 #41 #<Nie wchodzi do podstawy ubezpiecze|n za okresy przerwy w op|lacaniu
        sk|ladek ZUS
//
% PLSKLAD-STRONA-1.DLG,PLSKLAD-STRONAX-1.DLG
##DEFWINDOW = ,,,,H,,,,,"Dane og|olne"
##10,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLEUNIKALNE:symsklad
##83,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:grupa
##11,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:nazsklad
##35,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:rodzskl
##36,DF,P,,,,,,,,ZMIENNA:nazwarodz
##52,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:typsklad
##53,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:mies_url
##27,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kontown
##28,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:dodacsymwn,,0,28,T
##46,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:dodacsymwn,,O,28,N
##72,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:dodacklnwn,,0,72,T
##73,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:dodacklnwn,,O,72,N
##29,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kontoma
##30,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:dodacsymma,,0,30,T
##47,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:dodacsymma,,O,30,N
##74,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:dodacklnma,,0,74,T
##75,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:dodacklnma,,O,74,N
##33,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:ujemny,,0,33,N
##48,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:ujemny,,O,33,T
##32,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:dokartoteki,,0,32,T
##49,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:dokartoteki,,O,32,N
##50,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:czystaly,,0,50,T
##51,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:czystaly,,O,50,N
##40,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:czywyplacac,,0,40,T
##45,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:czywyplacac,,O,40,N
##61,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:ponad_mies,,0,61,T
##62,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:ponad_mies,,O,61,N
##55,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:czy_pow_zl,,0,55,T
##56,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:czy_pow_zl,,O,55,N
##57,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:czynadgodz,,0,57,T
##58,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:czynadgodz,,O,57,N
##59,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:czyzz,,0,59,T
##60,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:czyzz,,O,59,N
##200,DZ,ADH,,"Dekretacja ksi|egowa",,&&black/white
##201,DZ,ADH,,"Opis sk|ladnika",,&&black/white
##202,DZ,ADH,,"Cechy sk|ladnika",,&&black/white
#201

  Symbol sk|ladnika:    #10      #    Grupa:  |!#83      #
  Nazwa sk|ladnika:     #11                                             #
  Kod sk|ladnika (ZUS):|!#35      # - #36                               #
  Typ sk|ladnika:      |!#52#                        Ilo|s|c miesi|ecy: #53#
//  Typ sk|ladnika:      |!#52# Ilo|s|c miesi|ecy: #53# Od kt|orego wstecz: #54#
//  Sk|ladnik powi|azany: |!#53      # - #54                               #
                                                                        #201<
#200
  Strona dekretu     Prefix        Symbol pracownika  Symbol kontrahenta

  Konto WN         |!#27        #     #28 #<doda|c       #72 #<doda|c

  Konto MA         |!#29        #     #30 #<doda|c       #74 #<doda|c
                                                                        #200<
#202
//   #33 #<Dodatni                    #48 #<Ujemny
 #33 #<Dodatni                    #50 #<Okre|slony w sta|lej wysoko|sci

 #48 #<Ujemny                     #51 #<Okre|slony w zmiennej wysoko|sci

 #32 #<Wchodzi do kartoteki       #40 #<B|edzie wyp|lacony

 #61 #<Przys|luguje za okres d|lu|zszy ni|z miesi|ac

 #55 #<Liczony tylko za okres przerwy w op|lacaniu sk|ladek

 #57 #<Uwzgl|ednia|c przy liczeniu stawki za nadgodziny

 #59 #<Uwzgl|ednia|c przy liczeniu sk|ladki na zwi|azki zawodowe
                                                                        #202<
% PLSKLAD-STRONA-3.DLG,PLSKLAD-STRONAX-3.DLG
PRZYCISK_CANCELID = 2
##DEFWINDOW = ,,,,H,,,,,"Warto|s|c sk|ladnika na li|scie b|edzie wyliczana nast|epuj|aco:"
##200,DZ,ACH,,"2.spos|ob (np: premia).",,,,,&&lblue/white
##201,DZ,ACH,,"3.spos|ob (np: godziny nadliczbowe).",,,,,&&lblue/white
##202,DZ,ACH,,"4.spos|ob (np: godziny nocne).",,,,,&&lblue/white
##203,DZ,ACH,,"Regu|la og|olna",,,,,&&lblue/white
##206,DZ,ACH,,"Wyliczenie stawki",,,,,&&lblue/white
##24,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:mnozyc,,0,24,T
##25,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:mnozyc,,O,24,N
##26,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:miegodz
##23,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzwynagr,,,1,4
##20,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzwynagr,,,1,1
##10,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:premsklad1
##11,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:premproc1
##12,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:premsklad2
##13,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:premproc2
##115,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:premind,,0,115,T
##116,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:premind,,O,115,N
##21,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzwynagr,,,1,2
##40,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:n_dodatek,,0,40,T
##41,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:n_dodatek,,O,40,N
##14,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:procnadlicz
##38,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:n_normalne,,0,38,T
##39,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:n_normalne,,O,38,N
##22,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzwynagr,,,1,3
##15,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:procnocne
##42,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:n_podstawa,,0,42,N
##43,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:n_podstawa,,O,42,T
Warto|s|c brutto sk|ladnika na li|scie b|edzie wyliczana nast|epuj|aco:
     #203
#24 #<Podana stawka zostanie pomno|zona przez czas pracy w miesi|acu
      wyra|zony w jednostce:                                 |!#26     #
                                                                         #203<

Metody wyliczania stawki:
#23 #< 1. Nie wyliczana

     #200
#20 #<Od sk|ladnik|ow znajduj|acych si|e w rejestrze sta|lych dodatk|ow
      i obci|a|ze|n nast|epuj|acym wska|xnikiem  procentowym:
      Od sk|ladnika :#10        #           #11     #%
      Od sk|ladnika :#12        #           #13     #%
       #115#<wska|xnik procentowy ustalany indywidualnie dla pracownik|ow
                                                                         #200<
     #201                                              
#21 #<#40 #<Dodatek za nadgodziny:   od wynagrodzenia wynikaj|acego 
            z osob. zaszeregowania  wska|xnikiem procentowym:  #14     #%
       #38 #<Wynagrodzenie normalne
                                                                         #201<
     #202
#22 #<Wska|xnikiem  procentowym:  #15     #%
       #42 #<Od minimalnego wynagrodzenia (parametry do wyliczania
              zasi|lk|ow) 
       #43 #<Od wynagrodzenia zasadniczego (anga|z)
                                                                         #202<        
% PLSKLAD-STRONA-4.DLG,PLSKLAD-STRONAX-4.DLG
##DEFWINDOW = ,,,,H,,,,,"Metody wylicze|n cd"
##205,DZ,ACH,,"5.spos|ob (np: dodatek sta|zowy).",,,,,&&lblue/white
##27,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzwynagr,,,1,5
##32,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:stazsklad1
##33,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:stazsklad2
##28,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:stazpocz
##29,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:stazprocpocz
##80,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:stazokres
##30,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:stazskok
##31,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:stazprockon
##206,DZ,ACH,,"6.spos|ob (np: sk|ladka na zwi|azek zawodowy).",,,,,&&lblue/white
##34,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzwynagr,,,1,6
##35,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:msklad1
##36,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:msklad2
##37,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:mproc
##208,DZ,ACH,,"7.spos|ob (np: trzynastka).",,,,,&&lblue/white
##41,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzwynagr,,,1,8
##42,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:trzyproc
##43,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:trzybiez,,0,43,T
##44,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:trzybiez,,O,43,N
##55,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:trzylaczyc,,0,55,T
##56,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:trzylaczyc,,O,55,N
##209,DZ,ACH,,"8.spos|ob (np: premia kwartalna).",,,,,&&lblue/white
##50,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzwynagr,,,1,9
##53,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:mies_kwartal
##54,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:od_mies
##51,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:kwart_proc
##52,,ADP,,"Wykaz sk|ladnik|ow $ wchodz|acych do podstawy"
##81,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:kwart_ind,,0,81,T
##82,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:kwart_ind,,O,81,N
##210,DZ,ACH,,"9.spos|ob (od wybranej podstawy).",,,,,&&lblue/white
##83,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzwynagr,,,1,10
##85,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:n_podst
##84,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:n_procpodst
##86,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:npodst_ind,,0,86,T
##87,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:npodst_ind,,O,86,N
##207,DZ,ACH,,"9.spos|ob (zgodnie z wybran|a formu|l|a w|lasn|a).",,,,,&&lblue/white
##38,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzwynagr,,,1,7
##39,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:form_symbol
##40,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:form_proc

     #205
#27 #<Od sk|ladnik|ow:
      sk|ladnik 1: #32        #     sk|ladnik 2: #33        #

      Pocz|atek liczenia po up|lywie #28# lat     stawka pocz|atkowa #29 #%
      Wzrost stawki co #80# lat  o #30#%        stawka ko|ncowa    #31 #%
                                                                         #205<
     #206
#34 #<Od podstawy pomniejszonej o sk|ladki ZUS nast|epuj|acym
      wska|xnikiem procentowym:                               #37    #%
                                                                         #206<
     #208
#41 #<Od podstawy nast|epuj|acym wska|xnikiem procentowym:     #42    #%
        #43 #<Podstawa liczona z bie|z|acego roku
        #55 #<|L|aczy|c dane dla pracownika
                                                                         #208<
     #209
#50 #<Podstawa -> ilo|s|c miesi|ecy: #53#    od kt|orego wstecz: #54#

      Od podstawy wska|xnikiem: #51    #%       #52
              #81#<wska|xnik indywidualny                                #52<                                 
                                                                         #209<
     #210
#83 #<Od podstawy: |!#85      #   wska|xnikiem procentowym:   #84    #%
                                            #86#<wska|xnik indywidualny   
                                                                         #210<
//     #207
//#38 #<Zgodnie z formu|l|a:  #39       # 
//      nast|epuj|acym wska|xnikiem procentowym:                  #40    #%
//                                                                         #207<
% PLSKLAD-STRONA-5.DLG,PLSKLAD-STRONAX-5.DLG
##DEFWINDOW = ,,,,H,,,,,"Metody wylicze|n cd"
##67,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:uzupelniany,,0,67,T
##68,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:uzupelniany,,O,67,N
##10,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:uzupelnianynu,,0,10,T
##11,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:uzupelnianynu,,O,10,N
##12,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:uzupelnianynn,,0,12,T
##13,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:uzupelnianynn,,O,12,N
##21,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:uzupelnianycm,,0,21,T
##22,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:uzupelnianycm,,O,21,N
##14,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzzwoln,,,14,0
##15,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzzwoln,,,14,1
##16,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzzwoln,,,14,2
##18,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzzwoln,,,14,4
##19,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzzwoln,,,14,5
##20,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:kwota_zw
##17,0,0,," ",,&&black/lwhite,&&white/lblue,,,POLE:rodzzwoln,,,14,3
##208,DZ,ACH,,"Automatycznie korygowa|c z tytu|lu",,,,,&&lblue/white
##209,DZ,ACH,,"Podstawa zwolnienia od podatku dochodowego",,,,,&&lblue/white

#208
  #67 #<zwolnienia lekarskiego

  #10 #<nieobecno|sci usprawiedliwionej niep|latnej

  #12 #<nieobecno|sci nieusprawiedliwionej

  #21 #<niepe|lnego miesi|aca zatrudnienia
                                                     #208<  
#209
  #14 #<brak

  #15 #<art.21.ust.1.pkt 16 lit.b ustawy

  #16 #<art.21.ust.1.pkt 17

  #18 #<umowy o unikaniu podw|ojnego opodatkowania 
         lub inne umowy mi|edzynarodowe  
  #19 #<cz|e|sciowe zwolnienie z opodatkowania 
         do kwoty #20             #
  #17 #<inna
                                                     #209<
% TABLICA-AKCJI-PLSKLAD-STRONA-4
"AKCJA-F2-POLE32",!SL.gl_f2_rejestrx("PLSKLAD.RXR","symsklad","3")
"AKCJA-F2-POLE33",!SL.gl_f2_rejestrx("PLSKLAD.RXR","symsklad","3")
"AKCJA-PO-POLU32",!SL.gl_popolu_rejestrx("PLSKLAD.RXR","symsklad","1",rejwezp_s("stazsklad1"),"")
"AKCJA-PO-POLU33",!SL.gl_popolu_rejestrx("PLSKLAD.RXR","symsklad","1",rejwezp_s("stazsklad2"),"")
"Akcja-F2-POLE39",PLSKLAD-F2-39
"AKCJA-PO-POLU39",PLSKLAD-PO39 
"AKCJA-BUTTON52",PLSKLAD-52
"AKCJA-F2-POLE85",PLSKLAD_F285
"AKCJA-PO-POLU85",PLSKLAD_PO85
//
% PLSKLAD-52.alg
met_wyl := "9"
dialog := "ustal-podstawe-skladnika"
czy_modyfikacja := .T.
callalg["plsklad-wykaz"]

% PLSKLAD-52-ob.alg
met_wyl := "9"
dialog := "ustal-podstawe-skladnika-ob"
czy_modyfikacja := .N.
callalg["plsklad-wykaz"]

% PLSKLAD-wykaz.alg
rejop["sc:otworzrejtemp","skladpowtmp.rjr"]
rejop["sb:zmienkluczrej","4"]
klucz := rejwezp_s["symsklad"]+"--"+met_wyl
if(not(rejop["sb:znajdzrek",klucz])) goto dalej
petla_sb:
 rejop["sc:dodajrek",""]
 xRejwstawp_s["Sc:sklad_pow",rejwezp_s["sb:sklad_pow"]]
rejop["sc:zapiszrek",""]
if(rejop["sb:weznastepnyrekn",""]) goto petla_sb
dalej:
rejop["sc:wezpierwszyrek",""]
nazwa_sklad := ""
exdialogop["idzdodialogu",dialog]
rejop["sc:zamknijrej",""]
% ustal-podstawe-skladnika.dlg
##105,0,BDHMP,,"Wykaz sk|ladnik|ow wchodz|acych do podstawy",,,,,,wiele_rekordow:sklad_powiaz,sc,KLUCZ,1,sc,,S
##0,,ADP,,@3
##1,,ADP,,@4

#105                                                #   


 #0          #   #1          #

% ustal-podstawe-skladnika-ob.dlg
##105,0,BDHMP,,"Wykaz sk|ladnik|ow wchodz|acych do podstawy",,,,,,wiele_rekordow:sklad_powiaz,sc,klucz,3,sc,,DS
##2,,ADP,,@5

#105                                                #   


   #2          #

% tablica-akcji-ustal-podstawe-skladnika
"akcja-button0",podstawa-akce
% podstawa-akce.alg
if(yesalert["Czy akceptujesz wprowadzone dane?"]) goto zapisz
exdialogop["idzdopozycji","1"]
exitalg[0]
zapisz:
klucz := rejwezp_s["symsklad"]+"--"+met_wyl
petla_sb:
if(not(rejop["sb:znajdzrek",klucz])) goto wyjdz
 rejop["sb:usunrek",""]
goto petla_sb
wyjdz:
// zapisywanie danych
if(not(rejop["sc:wezpierwszyrek",""])) goto po_zapisie
petla_sc:
rejop["sb:dodajrek",""]
rejop["sc:przeniespola","sb:"]
xrejwstawp_s["sb:sklad_gl",rejwezp_s["symsklad"]]
xrejwstawp_s["sb:sklad_klucz",klucz]
xrejwstawp_k["sb:sklad_met",stringnaliczbe[met_wyl]]
rejop["sb:zapiszrek",""]
if(rejop["sc:weznastepnyrek",""]) goto petla_sc
po_zapisie:
zmiana := .T.
exdialogop["koniecwykonywania",""]
% sklad_powiaz.DLG
##53,0,P,,,,,,,,POLE:Sc:sklad_pow
##54,D,P,,,,,,,,ZMIENNA:nazwa_sklad
 #53          # - #54                              #
//
% TABLICA-AKCJI-sklad_powiaz
"AKCJA-PRZED-WYSWIETLENIEM",sklad-powiaz-PRZED
//"AKCJA-PRZED-WYKONYWANIEM",sklad-powiaz-WYKO
"AKCJA-PO-POLU53",sklad-powiaz-WYKO
"AKCJA-F2-POLE53",!SL.gl_f2_rejestrx("PLSKLAD.RXR","symsklad","3")
"AKCJA-PUSTALINIA",sklad-powiaz-PUSTA
"AKCJA-USUNLINIE",sklad-powiaz-USUN
"AKCJA-OKLINIA",sklad-powiaz_ok
"AKCJA-DODAJLINIE",sklad-powiaz_dodaj

% sklad-powiaz_dodaj.alg
A_OK := .T.
% sklad-powiaz-PRZED.ALG
nazwa_sklad := ""
if(rejop["sk:znajdzrek",rejwezp_s["sc:sklad_pow"]]) nazwa_sklad := rejwezp_s["sk:nazsklad"]
Exdialogop["pozycjaniewprowadzana","*"]
if(czy_modyfikacja) Exdialogop["pozycjawprowadzana","53"]
ExDialogOp["IdzDoPozycji","53"]


% sklad-powiaz-WYKO.ALG
if(rejwezp_s["sc:sklad_pow"]="") exitalg[0]
if(rejop["sk:znajdzrek",rejwezp_s["sc:sklad_pow"]]) goto ok
okalert["Nie zdefiniowano sk|ladnika "+rejwezp_s["sc:sklad_pow"]]
exdialogop["idzdopozycji","53"]
exitalg[0]
ok:
nazwa_sklad := rejwezp_s["sk:nazsklad"]
exdialogop["wyswietlpozycje","54"]

% sklad-powiaz-PUSTA.ALG
A_OK := .N.
if(not(REjWezP_S["Sc:sklad_pow"]="" )) exitalg[0]
 A_OK := .T.
//

% sklad-powiaz_OK.ALG
A_OK := .N.
if(RejWezP_S["Sc:sklad_pow"]="" ) exitalg[0]
if(not(rejwezp_s["sc:sklad_pow"]==rejwezp_s["symsklad"])) goto ok
okalert["Sk|ladnik musi by|c r|o|zny od definiowanego!"]
ExitAlg[0]
ok:
A_ok := .T.
//
% sklad-powiaz-USUN.ALG
A_ok := .N.
Callalg["sklad-powiaz-PUSTA"]
if(A_ok) exitalg[0]
A_ok := yesalert["Czy usun|ac pozycj|e"]
//
% PLSKLAD-F2-39.ALG
d_string := ""
callalgfile["place\place_formuly.alg","formula_wybor"]
 xrejwstawp_s["form_symbol",d_string]
% PLSKLAD-PO39.ALG
if(not(pustepole["form_symbol"])) goto ok
ExitAlg[0]
ok:
rejop["fo:otworzrej","plformuly.rjr"]
if(Rejop["FO:ZnajdzRek",rejwezp_s["form_symbol"]]) goto ok2
okalert["Nie zdefiniowano formu|ly " +rejwezp_s["form_symbol"]+"!"]
ExDialogOp["IdzDopozycji","39"]
rejop["fo:zamknijrej",""]
ExitAlg[0]
ok2:
rejop["fo:zamknijrej",""]
//

% TABLICA-AKCJI-PLSKLAD-STRONA-3
"AKCJA-F2-POLE10",!SL.gl_f2_rejestrx("PLSKLAD.RXR","symsklad","3")
"AKCJA-F2-POLE12",!SL.gl_f2_rejestrx("PLSKLAD.RXR","symsklad","3")
//"AKCJA-PO-POLU10",PLSKLAD_PO10
//"AKCJA-PO-POLU12",PLSKLAD_PO12
"AKCJA-PO-POLU10",!SL.gl_popolu_rejestrx("PLSKLAD.RXR","symsklad","1",rejwezp_s("premsklad1"),"")
"AKCJA-PO-POLU12",!SL.gl_popolu_rejestrx("PLSKLAD.RXR","symsklad","1",rejwezp_s("premsklad2"),"")
//
% PLSKLAD_F285.alg
A_ok := .N.
d_string := ""
if(not(rejop["as:pustyrej",""])) goto dialog
okalert["Nie zdefiniowano |zadnych podstaw do nalicze|n sk|ladnik|ow!"]
exitalg[0]
dialog:
callalgfile["place\place_podstawy.py","PODSTAWY-LOOK2"]
if(d_pos=3) d_string := rejwezp_s["as:pracownik"]
if(d_string="") ExitAlg[0]
A_ok := .T.
% PLSKLAD_PO85.alg
if(pustepole["n_podst"]) Exitalg[0]
if(rejop["as:znajdzrek",rejwezp_s["n_podst"]]) Exitalg[0]
okalert["Nie zdefiniowano podstawy o symbolu "+rejwezp_s["n_podst"]+"!"]
exdialogop["idzdopozycji","45"]
exitalg[0]
//
% TABLICA-AKCJI-PLSKLAD-STRONA-1
"AKCJA-po-polu35",PLSKLADMENU-NAZWA
"AKCJA-F2-POLE83",!SL.gl_f2_rejestrx("GRUPA.RXR","symbol","0")
"AKCJA-PO-POLU83",!SL.gl_popolu_rejestrx("GRUPA.RXR","symbol","1",rejwezp_s("grupa"),"")

% PLSKLAD-REKORD-AKCEPTUJESZ.XXX

 #1         #    #2           #  
% PLSKLAD-REKORD-1.DLG,PLSKLAD-REKORD-0.DLG,PLSKLAD-REKORD-3.DLG
%<PLSKLAD.XXX
//%<PLSKLAD-REKORD-AKCEPTUJESZ.XXX
//%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% PLSKLAD-REKORD-2.DLG
%<PLSKLAD.XXX
//%<REKORD-OK-BUTT.XXX

// ----------------------------------------
// kody pracownikow
// ----------------------------------------

% KODPRACALGO.XXX
"AKCJA-PRZED-WYSWIETLENIEM-KODPRAC-REKORD-0.DLG",KODPRACREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-KODPRAC-REKORD-1.DLG",KODPRACREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-KODPRAC-REKORD-2.DLG",KODPRACREKORD-DODAJLOOK
"AKCJA-PRZED-WYSWIETLENIEM-KODPRAC-REKORD-3.DLG",KODPRACREKORD-DODAJSTART1
"AKCJA-BUTTON1-KODPRAC-REKORD-?.DLG",KODPRACREKORD-AKCEPTUJESZ
"AKCJA-BUTTON4-KODPRAC-REKORD-?.DLG",KODPRACREKORD-MODYFIKUJ
"AKCJA-BUTTON20-KODPRAC-MENU-?.DLG",KODPRACMENU-USUN
"AKCJA-BUTTON21-KODPRAC-MENU-?.DLG",KODPRACMENU-WYDRUK

% KODPRACREKORD-AKCEPTUJESZ.ALG   
  if(Not(xkodprac ="")) goto dalej01
    OkAlert["Wprowad|x symbol kodu !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
dalej01:
  if(Not(dodaje)) goto dalej0
    if(Not(RejOp["ZnajdzRek",xkodprac+xwyroznik])) goto dalej0
    OkAlert["Powt|orzony symbol kodu !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
dalej0:
  if(StrLen[xkodprac]=6) goto dalej1
    OkAlert["Symbol kodu powinien si|e sk|lada|c z sze|sciu cyfr !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
dalej1:
//    symbol := RejWezP_S["kodprac"]
    symbol := xkodprac
    if(not(stringnaliczbe[xkodprac]=.)) goto dalej11
  OkAlert["Symbol kodu powinien si|e sk|lada|c tylko z cyfr !"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
dalej11:
  if(not(RejWezP_S["nazkodprac"]="")) goto dalej2
    OkAlert["Wprowad|x nazw|e kodu !"]
    ExDialogOp["IdzDoPozycji","11"]
    ExitAlg[0]
dalej2:
  xRejWstawP_K["uep",uep]
  xRejWstawP_K["urp",urp]
  xRejWstawP_K["uwp",uwp]
  xRejWstawP_K["ueu",ueu]
  xRejWstawP_K["uru",uru]
  xRejWstawP_K["ucu",ucu]
  xRejWstawP_K["fgp",fgp]
  xRejWstawP_K["fpp",fpp]
  xRejWstawP_S["kodprac",xkodprac+xwyroznik]
  xRejWstawP_S["wyroznik",xwyroznik]
  RejOp["ZapiszRek",""]
  ExDialogOp["KoniecWykonywania",""]

% KODPRACREKORD-MODYFIKUJ.ALG
  dodaje    := .N.
  xkodprac  := StrCut[RejWezP_S["kodprac"],0,6]
  xwyroznik := RejWezP_S["wyroznik"]
  ExDialogOp["IdzDoPozycji","10"]

% KODPRACREKORD-DODAJSTART1.ALG 
%< KODPRACREKORD-DODAJSTART.ALG

% KODPRACREKORD-DODAJSTART.ALG 
  dodaje    := .T.
  xkodprac  := ""
  xwyroznik := ""
  uep := .
  urp := .
  uwp := .
  ueu := .
  uru := .
  ucu := .
  fgp := .
  fpp := .
//  CallPyt["import place_g | place_g.place_sprawdz_parametry()"]
  ExDialogOp["PozycjaAktywna","10"]
  ExDialogOp["IdzDoPozycji","10"]

% KODPRACREKORD-DODAJMODIF.ALG 
  dodaje    := .N.
  uep       := RejWezP_K["uep"]
  urp       := RejWezP_K["urp"]
  uwp       := RejWezP_K["uwp"]
  ueu       := RejWezP_K["ueu"]
  uru       := RejWezP_K["uru"]
  ucu       := RejWezP_K["ucu"]
  fgp       := RejWezP_K["fgp"]
  fpp       := RejWezP_K["fpp"]
  xkodprac  := StrCut[RejWezP_S["kodprac"],0,6]
  xwyroznik := RejWezP_S["wyroznik"]
  ExDialogOp["IdzDoPozycji","10"]

% KODPRACMENU-USUN.ALG
  kodprac := RejWezP_S["kodprac"]
  if(NOT(RejOp["A:OtworzRej","podatnik.RXR"])) goto modyfikuj
  IF(Not(RejOp["A:WezPierwszyRek",""])) goto modyfikuj
powrot:
  If(kodprac==RejWezP_S["A:kodprac"]) goto nomodyfikuj
  IF(RejOp["A:WezNastepnyRek",""]) goto powrot
  goto modyfikuj
nomodyfikuj:
  RejOp["A:ZamknijRej",""]
  OkAlert["Istnieje pracownik dla tego kodu ! $Nie mo|zna go usun|a|c !"]
  ExitAlg[0]
modyfikuj:
  RejOp["A:ZamknijRej",""]
  if (not YesNAlert["Usun|a|c kod "+kodprac+" z rejestru ?"]) ExitAlg[0]
  RejOp["UsunRek",""]
  ExDialogOp["UsunRekordzMenu","100"]    

% KODPRACREKORD-DODAJLOOK.ALG
  dodaje    := .N.
  uep       := RejWezP_K["uep"]
  urp       := RejWezP_K["urp"]
  uwp       := RejWezP_K["uwp"]
  ueu       := RejWezP_K["ueu"]
  uru       := RejWezP_K["uru"]
  ucu       := RejWezP_K["ucu"]
  fgp       := RejWezP_K["fgp"]
  fpp       := RejWezP_K["fpp"]
  xkodprac  := StrCut[RejWezP_S["kodprac"],6,6]
  xwyroznik := RejWezP_S["wyroznik"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExDialogOp["IdzDoPozycji","10"]
  
% KODPRAC-DAJDANE.ALG
  symbol_pole_rej := "xkodproc"
  symbol_tytul := "Wykaz kod|ow ubezpieczenia"  

% KODPRACMENU-WYDRUK.ALG
%< SYMBOLEREKORD-ZMIENNE.XXX
  CallSl["PLACE_G->drukuj_symbole()"]
  

% KODPRAC-MENU-1.DLG
##99,0,P,,,,,,,,MENU_ROZWIJANE:KADRY-REJESTRY-MENU-ROZWIJANE
%< KADRY-REJESTRY-MENU-1.XXX
%< KODPRAC-MENU-MODIF.XXX
//
% KODPRAC-MENU-0.DLG
##99,0,P,,,,,,,,MENU_ROZWIJANE:KADRY-REJESTRY-MENU-ROZWIJANE
%< KADRY-REJESTRY-MENU-0.XXX
%< KODPRAC-MENU-MODIF.XXX
//
% KODPRAC-MENU-MODIF.XXX
##DEFWINDOW = ,,,,ADPSH,,,,,"Wykaz kod|ow ubezpieczenia pracownik|ow dla Programu P|latnika"
##100,0,BCMP,,,,,,,,MENU_NA_REKORDY:KODPRACMENU,,KLUCZ,1
#100                                                                   #100
// --------
// REKORD
// --------
% KODPRAC.XXX
##DEFWINDOW = ,,,,ADPHS,,,,,"Kod ubezpieczenia"
##10,0,0,,,,&&black/lwhite,&&white/lblue,,,ZMIENNA:xkodprac
##18,0,0,,,,&&black/lwhite,&&white/lblue,,,ZMIENNA:xwyroznik
##11,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:nazkodprac
##12,0,0,,,,&&black/lwhite,&&white/lblue,,,ZMIENNA:uep,xkwota:X
##13,0,0,,,,&&black/lwhite,&&white/lblue,,,ZMIENNA:ueu,xkwota:X
##14,0,0,,,,&&black/lwhite,&&white/lblue,,,ZMIENNA:urp,xkwota:X
##15,0,0,,,,&&black/lwhite,&&white/lblue,,,ZMIENNA:uru,xkwota:X
##16,0,0,,,,&&black/lwhite,&&white/lblue,,,ZMIENNA:uwp,xkwota:X
##17,0,0,,,,&&black/lwhite,&&white/lblue,,,ZMIENNA:ucu,xkwota:X
##19,0,0,,,,&&black/lwhite,&&white/lblue,,,ZMIENNA:fgp,xkwota:X
##20,0,0,,,,&&black/lwhite,&&white/lblue,,,ZMIENNA:fpp,xkwota:X
##200,DZ,ADP
##203,DZ,ADPH,,"UWAGA"
##201,DZ,ADPH,,"Nazwa kodu"
##202,DZ,ADP

Symbol kodu : #10    #<
Wyr|o|znik :    #18#<
Opis: #11                                                          #
             
                                Pokrywa              Pokrywa					
                                p|latnik             ubezpieczony
                           #200
Ubezpieczenie emerytalne :      # 12#%               # 13#% 
Ubezpieczenie rentowe    :      # 14#%               # 15#% 
Ubezpieczenie wypadkowe  :      # 16#%
Ubezpieczenie chorobowe  :                           # 17#%
Odpis na F.G.|S.P         :      # 19#%
Odpis na F.P.            :      # 20#%
                                                                     #200<

#203
 1. Stawki ubezpiecze|n lub odpis|ow nale|zy uzupe|lni|c tylko wtedy
    gdy s|a r|o|zne od wprowadzonych w parametrach og|olnych.
 2. W przypadku gdy sk|ladka nie b|edzie obliczana nale|zy wpisa|c 0.
                                                                     #203<


% KODPRAC-REKORD-1.DLG,KODPRAC-REKORD-0.DLG,KODPRAC-REKORD-3.DLG
%<KODPRAC.XXX

%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% KODPRAC-REKORD-2.DLG
%<KODPRAC.XXX
%<REKORD-OK-BUTT.XXX
//
% KODPRACMENU.MEN
D=,"",A
1,,,,8,"Symbol"
2,,,,64,"Nazwa"

// ---------------------------------------------
// rejestr rodzajow skladnikow
// ---------------------------------------------

% RODZSKL-DAJDANE.ALG
  symbol_pole_rej := "rodzskl"
  symbol_pole_brak := "Wprowad|x symbol rodzaju sk|ladnika !"
  symbol_menu := "RODZSKLMENU"
  symbol_tytul := "Rodzaj sk|ladnik|ow"  
  
  symbol_jest_modif := "PLSKLAD.RXR"
  symbol_jest_modif1 := "PLSKLAD.RXR"
//  symbol_jest_modif1 := ""
  symbol_modif_glowny_rej := "rodzskl"
  symbol_usun_glowny_rej := "Nie mo|zna usun|a|c tego rodzaju sk|ladnika !$Istnieje sk|ladnik z tym elementem."
  
% RODZSKLALGO.XXX
%< TABLICA-AKCJI-REJESTRSYMBOLE.XXX(SYMBOL_D=RODZSKL)
% RODZSKL-MENU-0.DLG
%< SYMBOLE-MENU-0.DLG
% RODZSKL-MENU-1.DLG
%< SYMBOLE-MENUx-1.DLG
 
% RODZSKL.XXX
##DEFWINDOW = ,,,,ADPHS,,,,,"Rodzaj sk|ladnika"
##10,0,0,,,,&&black/lwhite,&&white/lblue,,,POLEUNIKALNE:RODZSKL
##11,0,0,,,,&&black/lwhite,&&white/lblue,,,POLE:nazwarodz
##200,DZ,ADP

Symbol zgodny z Programem P|latnika: #10     #

Rodzaj sk|ladnika:  #11                              #
								
% RODZSKL-REKORD-1.DLG,RODZSKL-REKORD-0.DLG,RODZSKL-REKORD-3.DLG
%<RODZSKL.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% RODZSKL-REKORD-2.DLG
%<RODZSKL.XXX
%<REKORD-OK-BUTT.XXX
//
% RODZSKLMENU.MEN
D=,"",A
1,,,,10,"Symbol"
2,,,,60,"Rodzaj sk|ladnika"

// --------------------------------
// skladniki do deklaracji PIT
// --------------------------------
% PITSKLADALGO.XXX
"AKCJA-PRZED-WYSWIETLENIEM-PITSKLAD-REKORD-1.DLG",PITSKLADREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-PITSKLAD-REKORD-3.DLG",PITSKLADREKORD-DODAJSTART1
"AKCJA-PRZED-WYSWIETLENIEM-PITSKLAD-REKORD-0.DLG",PITSKLADREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-PITSKLAD-REKORD-2.DLG",PITSKLADREKORD-DODAJLOOK
"AKCJA-BUTTON1-PITSKLAD-REKORD-?.DLG",PITSKLADREKORD-AKCEPTUJESZ

% PITSKLADMENU-USUN.ALG
  if (not YesNAlert["Usun|a|c skladnik "+skladnik+" z rejestru ?"]) ExitAlg[0]
  RejOp["UsunRek",""]
  ExDialogOp["UsunRekordzMenu","100"]    

% PITSKLADREKORD-AKCEPTUJESZ.ALG   
  OkAlert["Tego rejestru nie mo|zna zmienia|c !"]
  ExDialogOp["IdzDoPozycji","10"]

% PITSKLADREKORD-DODAJSTART1.ALG 
  okAlert["Brak mo|zliwo|sci dodania nowego sk|ladnika !"]
%< PITSKLADREKORD-DODAJSTART.ALG

% PITSKLADREKORD-DODAJSTART.ALG 

% PITSKLADREKORD-DODAJMODIF.ALG 

% PITSKLADREKORD-DODAJLOOK.ALG

% PITSKLAD-MENU-1.DLG
PRZYCISK_CANCELID = 0
##99,0,P,,,,,,,,MENU_ROZWIJANE:PITSKLAD-MENU-ROZWIJANE
##0,,ADP,,@5
##7,0,AC,,,,&&black/lwhite,&&white/lblue

 #0      #  #99            #  Symbol: #7                 #
%< PITSKLAD-MENU-MODIF.XXX
//
% PITSKLAD-MENU-0.DLG
PRZYCISK_CANCELID = 3
##1,,ADP,,@14
##3,,ADP,,@4
##7,0,AC,,,,&&black/lwhite,&&white/lblue
##99,0,P,,,,,,,,MENU_ROZWIJANE:PITSKLAD-MENU-ROZWIJANE
                         
 #1      #  #3       #   #99            #  Symbol: #7        #
%< PITSKLAD-MENU-MODIF.XXX
//
% PITSKLAD-MENU-3.DLG
%< PITSKLAD-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% PITSKLAD-MENU-2.DLG
%< PITSKLAD-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% PITSKLAD-MENU-ROZWIJANE
*90,"Operacje"
6,@20
2,@26
% PITSKLAD-MENU-X.XXX
##DEFWINDOW = ,,,,ADPSH,,,,,"Wykaz sk|ladnik|ow do deklaracji PIT"
##100,0,PBCM,,,,,,,,MENU_NA_REKORDY:PITSKLADMENU,,KLUCZ,1



#100                                                               #100
% PITSKLAD-MENU-MODIF.XXX
%< PITSKLAD-MENU-X.XXX
% PITSKLAD-MENU-LOOK.XXX
%< PITSKLAD-MENU-X.XXX
// ------------------------------------
% PITSKLAD.XXX
##DEFWINDOW=,,,,ADPH,,,,,"Sk|ladnik PITu"
##10,FD,P,,,,,,,,POLEUNIKALNE:skladnik
##11,FD,P,,,,,,,,POLEUNIKALNE:nazsklad
##200,DZ,ACP
                    #200
Symbol sk|ladnika ..  #10                        #


Nazwa sk|ladnika ...  #11                                                  #
                                                                            #200<

% PITSKLAD-REKORD-1.DLG,PITSKLAD-REKORD-0.DLG,PITSKLAD-REKORD-3.DLG
%<PITSKLAD.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% PITSKLAD-REKORD-2.DLG
%<PITSKLAD.XXX
%<REKORD-OK-BUTT.XXX
//
% PITSKLADMENU.MEN
D=,"",A
100,,,,30,"Symbol"
101,,,,40,"Nazwa"

// ----------------------------------------
// kredyty i pozyczki
// ----------------------------------------
% KREDYTALGO.XXX
"AKCJA-PRZED-WYSWIETLENIEM-KREDYT-REKORD-1.DLG",KREDYTREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-KREDYT-REKORD-3.DLG",KREDYTREKORD-DODAJSTART1
"AKCJA-PRZED-WYSWIETLENIEM-KREDYT-REKORD-0.DLG",KREDYTREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-KREDYT-REKORD-2.DLG",KREDYTREKORD-DODAJLOOK
"AKCJA-PRZED-WYSWIETLENIEM-KREDYT-MENU-?.DLG",KREDYTMENU-PRZED
"AKCJA-BUTTON1-KREDYT-REKORD-?.DLG",KREDYTREKORD-AKCEPTUJESZ
"AKCJA-BUTTON10-KREDYT-REKORD-?.DLG",KREDYTREKORD-PRACOWNIK
"AKCJA-BUTTON15-KREDYT-REKORD-?.DLG",KREDYTREKORD-POWTORZ-KWOTE
"AKCJA-BUTTON20-KREDYT-MENU-?.DLG",KREDYTMENU-USUN
"AKCJA-BUTTON30-KREDYT-MENU-?.DLG",KREDYTMENU-SORTUJ
"AKCJA-BUTTON31-KREDYT-MENU-?.DLG",KREDYTMENU-SORTUJ
"AKCJA-BUTTON32-KREDYT-MENU-?.DLG",KREDYTMENU-ZMIEN-STOPE
"AKCJA-BUTTON33-KREDYT-MENU-?.DLG",KREDYTMENU-NALICZ-ODSETKI
"AKCJA-BUTTON21-KREDYT-MENU-?.DLG",KREDYTMENU-WYDRUK

% KREDYTMENU-PRZED.ALG
porzadek := 1

% KREDYTMENU-USUN.ALG
  sym := RejWezP_S["sym"]
  if(not YesNAlert["Usun|a|c pracownika $"+sym+" z rejestru kredyt|ow i odsetek ?"]) ExitAlg[0]
  RejOp["UsunRek",""]
  ExDialogOp["UsunRekordzMenu","100"]

% KREDYTREKORD-AKCEPTUJESZ.ALG   // Opis: button AKCEPTUJESZ podczas dodawania
  if(not(sym="")) goto dalej1
    OkAlert["Wprowad|x symbol pracownika !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
  dalej1:
    if(splacono=.) goto dalej2
    if(Not(splacono>pozyczka)) goto dalej2
    if(YesNAlert["Warto|s|c sp|laconych rat przewy|zsza kwot|e udzielonej po|zyczki !!$Czy tak ma by|c  ?"]) goto dalej2
    ExDialogOp["IdzDoPozycji","17"]
    ExitAlg[0]
  dalej2:
    if(dosplaty=.) goto dalej3
    if(Not(dosplaty>pozyczka)) goto dalej3
    if(YesNAlert["Kwota, kt|ora pozosta|la do sp|laty$przewy|zsza kwot|e udzielonej po|zyczki !!$Czy tak ma by|c  ?"]) goto dalej3
    ExDialogOp["IdzDoPozycji","18"]
    ExitAlg[0]
  dalej3:
    if(dosplaty=. and splacono=.) goto dalej4
    if(Not(dosplaty+splacono>pozyczka)) goto dalej4
    if(YesNAlert["Suma warto|sci sp|laconych rat i kwoty pozosta|lej do sp|laty$przewy|zsza kwot|e udzielonej po|zyczki !!$Czy tak ma by|c  ?"]) goto dalej4
    ExDialogOp["IdzDoPozycji","17"]
    ExitAlg[0]
  dalej4:
  ExDialogOp["KoniecWykonywania",""]

% KREDYTREKORD-PRACOWNIK.ALG
  pracownik := RejWezP_S["sym"]
  RejOp["C:OtworzRej","PODATNIK.RXR"]
  RejOp["C:ZmienKluczRej","1"]
  IF(Not(RejOp["C:ZnajdzRek",pracownik])) goto koniec
    If(RejWezP_S["nazwisko"]="") RejWstawP_S["nazwisko",RejWezP_S["C:nazwisko"]+" "+RejWezP_S["C:imie1"]+" "+RejWezP_S["C:imie2"]]
    If(RejWezP_S["miasto"]="")   RejWstawP_S["miasto",RejWezP_S["C:kod"]+" "+RejWezP_S["C:miasto"]]
    If(RejWezP_S["adres"]="")    RejWstawP_S["adres",RejWezP_S["C:ulica"]+" "+RejWezP_S["C:dom"]+"/"+RejWezP_S["C:lokal"]]
    ExDialogOp["WyswietlPozycje","12"]
    ExDialogOp["WyswietlPozycje","13"]
    ExDialogOp["WyswietlPozycje","14"]
    ExDialogOp["IdzDoPozycji","15"]
koniec:
  RejOp["C:ZamknijRej",""]

% KREDYTREKORD-POWTORZ-KWOTE.ALG
  If(RejWezP_K["dosplaty"]=.) RejWstawP_K["dosplaty",RejWezP_K["pozyczka"]]
  ExDialogOp["WyswietlPozycje","18"]
  ExDialogOp["IdzDoPozycji","16"]

% KREDYTMENU-SORTUJ.ALG
  if(porzadek=1)  ExDialogOp["UstawMenuParam","100:KREDYTMENU,,KLUCZ,1"]
  if(porzadek=2)  ExDialogOp["UstawMenuParam","100:KREDYTMENU,,KLUCZ,2"]
  ExDialogOp["WyswietlPozycje","101"]
  ExDialogOp["WyswietlPozycje","100"]
  ExDialogOp["IdzDoPozycji","100"]

% KREDYTMENU-ZMIEN-STOPE.ALG
  rezygnujesz := .N.
  nowastopa   := RejWezP_K["stopa"]
  RejOp["ZapamPos",""]
  ExDialogOp["IdzDoDialogu","ZMIEN-STOPE"]
  if(rezygnujesz) Exitalg[0]
  If(Not(RejOp["WezPierwszyRek",""])) Exitalg[0]
petla:
  RejWstawP_K["stopa",nowastopa]    
  If(RejOp["WezNastepnyRek",""]) goto petla
  RejOp["OdtworzPos",""]
  
// --------------------------------------
// zmiana stopy
// --------------------------------------

% TABLICA-AKCJI-ZMIEN-STOPE
"AKCJA-PRZED-WYSWIETLENIEM",ZMIEN-STOPE-PRZED
"AKCJA-BUTTON10",ZMIEN-STOPE-AKCEPTUJESZ
"AKCJA-BUTTON2",PLACE-REZYGNUJESZ-DIALOG

% ZMIEN-STOPE-PRZED.ALG
  ExDialogOp["IdzDoPozycji","10"]

% ZMIEN-STOPE-AKCEPTUJESZ.ALG
  if(Not((nowastopa=.)or(nowastopa=0))) goto okstopa
    If(YesAlert["Na pewno zmieniasz stawk|e na stawk|e zerow|a ?"]) goto okstopa
    Exitalg[0]
okstopa:
  ExDialogOp["KoniecWykonywania",""]

% ZMIEN-STOPE.DLG
PRZYCISK_CANCELID = 2
##DEFWINDOW = ,,,,ADPH,,,,,"Nowa stopa procentowa"
##10,B,ADP,,,,,,,,ZMIENNA:nowastopa,xkwota:x
##2,,ADP,,@4

    Nowa stopa:   #10  # %
	
 
            #2         #
// --------------------------------		  
% KREDYTMENU-NALICZ-ODSETKI.ALG
  rezygnujesz := .N.
  nrmie       := .
  RejOp["ZapamPos",""]
  odsetki     := 0
  ExDialogOp["IdzDoDialogu","NALICZ-ODSETKI"]
  if(rezygnujesz) Exitalg[0]
  If(Not(RejOp["WezPierwszyRek",""])) Exitalg[0]
petla:
  odsetki := RoundN[((RejWezP_K["dosplaty"]*(RejWezP_K["stopa"]/100))*30)/360,2]
  if(nrmie=1)  RejWstawP_K["odsetki01",odsetki]    
  if(nrmie=2)  RejWstawP_K["odsetki02",odsetki]    
  if(nrmie=3)  RejWstawP_K["odsetki03",odsetki]    
  if(nrmie=4)  RejWstawP_K["odsetki04",odsetki]    
  if(nrmie=5)  RejWstawP_K["odsetki05",odsetki]    
  if(nrmie=6)  RejWstawP_K["odsetki06",odsetki]    
  if(nrmie=7)  RejWstawP_K["odsetki07",odsetki]    
  if(nrmie=8)  RejWstawP_K["odsetki08",odsetki]    
  if(nrmie=9)  RejWstawP_K["odsetki09",odsetki]    
  if(nrmie=10) RejWstawP_K["odsetki10",odsetki]    
  if(nrmie=11) RejWstawP_K["odsetki11",odsetki]    
  if(nrmie=12) RejWstawP_K["odsetki12",odsetki]    
  If(RejOp["WezNastepnyRek",""]) goto petla
  RejOp["OdtworzPos",""]
  
// ----------------------------------
// odsetki
// ----------------------------------

% TABLICA-AKCJI-NALICZ-ODSETKI
"AKCJA-PRZED-WYSWIETLENIEM",NALICZ-ODSETKI-PRZED
"AKCJA-BUTTON10",NALICZ-ODSETKI-AKCEPTUJESZ
"AKCJA-BUTTON2",PLACE-REZYGNUJESZ-DIALOG

% NALICZ-ODSETKI-PRZED.ALG
  ExDialogOp["IdzDoPozycji","10"]

% NALICZ-ODSETKI-AKCEPTUJESZ.ALG
 if(Not((nrmie=.)or(nrmie=0))) goto okmiesiac1
    OkAlert["Wprowad|x numer kolejny miesi|aca do oblicze|n !"]
    Exitalg[0]
okmiesiac1:
 if(nrmie=1 or nrmie=2 or nrmie=3 or nrmie=4 or nrmie=5 or nrmie=6 or nrmie=7 or nrmie=8 or nrmie=9 or nrmie=10 or nrmie=11 or nrmie=12) goto okmiesiac2
    OkAlert["Wprowad|x numer kolejny miesi|aca do oblicze|n !"]
    Exitalg[0]
okmiesiac2:
  ExDialogOp["KoniecWykonywania",""]

% NALICZ-ODSETKI.DLG
PRZYCISK_CANCELID = 2
##DEFWINDOW = ,,,,ADPHS,,,,,"Nalicz odsetki za miesi|ac"
##10,B,ADP,,,,,,,,ZMIENNA:nrmie,elemdate:1
##2,,ADP,,@4


          Za miesi|ac : #10  #
    
 
                #2          #
% KREDYTMENU-WYDRUK.ALG
  RejOp["ZapamPos",""]
  IdzDowydruku["place\drukuj_place_kredyty",""]
  ReJOp["OdtworzPos",""]

% KREDYTREKORD-DODAJSTART1.ALG 
// wolane przy dodawanie nowego rekordu z pola
%< KREDYTREKORD-DODAJSTART.ALG

% KREDYTREKORD-DODAJSTART.ALG 
  ExDialogOp["PozycjaAktywna","10"]
  ExDialogOp["IdzDoPozycji","10"]

% KREDYTREKORD-DODAJMODIF.ALG 
  ExDialogOp["PozycjaAktywna","10"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]

% KREDYTREKORD-DODAJLOOK.ALG
  ExDialogOp["PozycjaNiewprowadzana","*"]

% KREDYT-MENU-1.DLG
%< KREDYT-MENU-X1.XXX
PRZYCISK_CANCELID = 0
##0,,ADP,,@5

 #0      #  #101                                #
 
%< KREDYT-MENU-MODIF.XXX
//
% KREDYT-MENU-0.DLG
%< KREDYT-MENU-X1.XXX
##1,0,ADP,,@17
##3,0,ADP,,@4
PRZYCISK_CANCELID = 3
 #1      # #2        #  #101                     #
%< KREDYT-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% KREDYT-MENU-3.DLG
%< KREDYT-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% KREDYT-MENU-2.DLG
%< KREDYT-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% KREDYT-MENU-ROZWIJANE
%< KADRY-REJESTRY-MENU-ROZWIJANE-OPERACJE
%< KADRY-REJESTRY-MENU-ROZWIJANE-SZUKAJ
*92,"Odsetki"
32,"Zmie|n stop|e"
33,"Nalicz odsetki"
% KREDYT-MENU-X1.XXX
##DEFWINDOW = ,,,,ADPSH,,,,,"Udzielone kredyty i po|zyczki"
##100,0,BCMP,,,,,,,,MENU_NA_REKORDY:KREDYTMENU,,KLUCZ,1
##101,0,P,,,,,,,,MENU_ROZWIJANE:KREDYT-MENU-ROZWIJANE
##30,B,P,,"wed|lug sym%b%olu",,,,,,ZMIENNA:PORZADEK,,A,2,"1"
##31,B,P,,"wed|lug nazw%i%ska",,,,,,ZMIENNA:PORZADEK,,,2,"2"
##200,DZ,ADPH,,"Porz|adek wy|swietlania"
##7,0,AC,,,,&&black/lwhite,&&white/lblue
% KREDYT-MENU-X.XXX


#100                                                               #100
 
                        #200
Symbol: #7          #    #30                 #
                         #31                 #
                                                  #200<			 
% KREDYT-MENU-MODIF.XXX
%< KREDYT-MENU-X.XXX
% KREDYT-MENU-LOOK.XXX
%< KREDYT-MENU-X.XXX
% KREDYT.XXX
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPHS,,,,,"Informacje szczeg|o|lowe"
##10,B,ACP,,,,,,,,POLEUNIKALNE:sym
##12,0,P,,,,,,,,POLE:nazwisko
##13,0,P,,,,,,,,POLE:miasto
##14,0,P,,,,,,,,POLE:adres
##15,B,P,,,,,,,,POLE:pozyczka
##16,0,P,,,,,,,,POLE:rata
##41,0,P,,,,,,,,POLE:krdata
##17,0,P,,,,,,,,POLE:splacono
##18,0,P,,,,,,,,POLE:dosplaty
##20,0,P,,,,,,,,POLE:odsetki01
##21,0,P,,,,,,,,POLE:odsetki02
##22,0,P,,,,,,,,POLE:odsetki03
##23,0,P,,,,,,,,POLE:odsetki04
##24,0,P,,,,,,,,POLE:odsetki05
##25,0,P,,,,,,,,POLE:odsetki06
##26,0,P,,,,,,,,POLE:odsetki07
##27,0,P,,,,,,,,POLE:odsetki08
##28,0,P,,,,,,,,POLE:odsetki09
##29,0,P,,,,,,,,POLE:odsetki10
##30,0,P,,,,,,,,POLE:odsetki11
##31,0,P,,,,,,,,POLE:odsetki12
##40,D,P,,,,,,,,POLE:stopa
##200,DZ,ACPH,,"Dane pracownika"
##201,DZ,ACPH,,"Po|zyczka"
##203,DTR,0,,"Naliczone odsetki",,&&lwhite/blue
##202,DZ,ACP
##204,DZ,ADP

Symbol pracownika: ........#10                #

                         #200
Nazwisko i imi|e:........  #12                                              #
Kod pocztowy,miejscowo|s|c: #13                                              #
Adres:................... #14                                              #
                                                                            #200<
                                             #203              # 							      
                           #201                       #202
Kwota udzielonej po|zyczki:  #15       #   Stycze|n..... #20     #  
Wysoko|s|c raty:............. #16       #   Luty........ #21     #   
Data udzielenia po|zyczki:..    #41    #   Marzec...... #22     #     
Warto|s|c sp|laconych rat:.... #17       #   Kwiecie|n.... #23     #
                                          Maj......... #24     #
POZOSTA|LO DO SP|LATY:....... #18       #   Czerwiec.... #25     #
                                        #201<
                                          Lipiec...... #26     #
               #204                       Sierpie|n.... #27     #
                Aktualne stopa            Wrzesie|n.... #28     #
                procentowa                Pa|xdziernik. #29     #
                #40  #                    Listopad.... #30    #
                               #204<     Grudzie|n.... #31     #
                                                                #202<
% KREDYT-REKORD-1.DLG,KREDYT-REKORD-0.DLG,KREDYT-REKORD-3.DLG
PRZYCISK_CANCELID = 1
%<KREDYT.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% KREDYT-REKORD-2.DLG
%<KREDYT.XXX
%<REKORD-OK-BUTT.XXX
//

% KREDYT-K-MENU1.DIC
"KREDYT-KOLUMNY",0

% KREDYTMENU.MEN
D=,"",AB
LINIA-DIALOG=KREDYT-K-MENU1,"Kolumny do kredytu"
1,,,,10,"Symbol"
2,,,,15,"Nazwisko"
3,,,,15,"Miasto"
10,,,,10,"Data"
12,,,,10,""

% TABLICA-AKCJI-KREDYT-LOOK
"AKCJA-BUTTON8",KREDYT-SZUKAJWARUNEK
"AKCJA-BUTTON9",KREDYT-NASTEPNA

% KREDYT-SZUKAJWARUNEK.ALG
ExDialogOp["UstawWarunek","100:KREDYT-WAR"]
% KREDYT-NASTEPNA.ALG
ExDialogOp["UstawNastepny","100"]

// ----------------------------------------
// wywolania
// ----------------------------------------
% LOOK-GRUPY.ALG
  CallSl["gl_zobacz_rejestr(""GRUPA.RXR"")"]
  
% LOOK-WSKAZNIKI-REH.ALG
  CallSl["gl_zobacz_rejestr(""WSKAZNIK_REH.RXR"")"]
  
% SCN-ZERUJ-REJESTR-SUM.ALG
if (YesAlert["Wyzerowa|c rejestr sum ?"]) CallAlg["ZAZNACZ-ZMIANE-REJESTRU-SUMYNAR"]

% SCN-PLACE-PODATKI.ALG,LOOK-PLCPOD.ALG
  rejop["mz:otworzrejsprawdz","plcpod.rxr"]
  rejop["mz:zamknijrej",""]
  CallSl["gl_zobacz_rejestr(""PLCPOD.RXR"")"]
  
% SCN-PLACE-PODATNIK.ALG
  CallPyt["import place_g | place_g.place_patrz_podatnik()"]
  
% SCN-PLACE-SKLADNIKI.ALG,LOOK-PLSKLAD.ALG
  zmiana := .N.
  rejop["as:otworzrejtemp","PLPODST.RXR"]
  rejop["bs:otworzrejtemp","PLPODST.RXR"]
  rejop["z:otworzrej","PLPODST.RXR"]
  callalg["przepisz_do_as"]
  rejop["z:zamknijrej",""]
  rejop["sp:otworzrejsprawdz","sklad_powiaz.rjr"]
  rejop["sk:otworzrejsprawdz","plsklad.rxr"]
  CallPyt["import place_g | place_g.place_patrz_skladniki()"]
// maria - ustawienie poziomow po wykryciu zmian w definicjach skladnikow, dodaniu lub usunieciu skladnika
 rejop["sk:zamknijrej",""] 
 rejop["bs:zamknijrej",""]
 rejop["as:zamknijrej",""]
 if(zmiana) callalg["ustaw_poziom"]
 rejop["sp:zamknijrej",""]
//
% przepisz_do_as.alg
 if(not(rejop["z:wezpierwszyrek",""])) exitalg[0]
 petla_z:
 if(rejop["as:znajdzrek",rejwezp_s["z:pracownik"]]) goto dopisz_b
 rejop["as:dodajrek",""]
 rejop["z:przeniespola","as:"]
 rejop["as:zapiszrek",""]
 dopisz_b:
 rejop["bs:dodajrek",""]
 rejop["z:przeniespola","bs:"]
 rejop["bs:zapiszrek",""]
 nastepny_z:
 if(rejop["z:weznastepnyrek",""]) goto petla_z 
 rejop["as:wezpierwszyrek",""]
% ustaw_poziom.alg
//okalert["ustaw_poziom.alg"]
 rejop["p:otworzrej","plsklad.rxr"]
 rejop["pp:otworzrejtemp","plsklad.rxr"]
 rejop["fo:otworzrej","plformuly.rjr"]
if(not(rejop["p:wezpierwszyrek",""])) goto zamknij_rej
petla_p:
rejop["pp:dodajrek",""]
rejop["p:przeniespola","pp:"]
xrejwstawp_l["pp:czy_wyl",.N.]
rejop["pp:zapiszrek",""]
rejwstawp_l["p:czy_wyl",.N.]
if(rejop["p:weznastepnyrek",""]) goto petla_p
liczba_rek := rejwezp_k["p:liczbarekordow"]
// tu petla sprawdzajaca czy mozna naliczyc dane i ustawiajaca poziomy
rejop["pw:otworzrej","plpowiaz.rxr"]
rejop["pw:zmienkluczrej","4"]
liczba_old := liczba_rek
next_tura:
rejop["p:wezpierwszyrek",""]
petla_t:
if(rejwezp_l["p:czy_wyl"]) goto next_skl
skladnik := rejwezp_s["p:symsklad"]
if(pustepole["p:rodzwynagr"]) rejwstawp_k["p:rodzwynagr",4]
if(pustepole["p:rodzzwoln"] and rejwezp_l["p:dopodstawy"]) rejwstawp_k["p:rodzzwoln",0]
if(pustepole["p:rodzzwoln"] and not(rejwezp_l["p:dopodstawy"])) rejwstawp_k["p:rodzzwoln",3]
metoda := rejwezp_k["p:rodzwynagr"]
if(not(metoda=4 or metoda=3 or metoda=2 or metoda=6 or metoda=7  or metoda=8 or metoda=9 or metoda=10)) goto inne_r
rodzsklad := rejwezp_s["p:rodzskl"]
poziomx := "01"
poziomy := 1
if(rodzsklad="1" or rodzsklad="2" or rodzsklad="9") poziomx := "88"
if(rodzsklad="3") poziomx := "80"
if(rodzsklad="311" or rodzsklad="312" or rodzsklad="313" or rodzsklad="314" or rodzsklad="319" or rodzsklad="325" or rodzsklad="327") poziomx := "89"
if(rodzsklad="321" or rodzsklad="322") poziomx := "89"
if(rodzsklad="331" or rodzsklad="332" or rodzsklad="333" or rodzsklad="334") poziomx := "89"
if(rodzsklad="19") poziomx := "89"
if(metoda=2) poziomx := "20"
if(metoda=6) poziomx := "91"
if(metoda=8) poziomx := "92"
if(not(metoda=7)) goto wspolne
poziomx := "02"
if(rejwezp_s["p:form_symbol"]="") goto wspolne
if(not(rejop["fo:znajdzrek",rejwezp_s["p:form_symbol"]])) goto next_skl
goto wspolne
inne_r:
if(metoda=5) goto inne_r5
if(metoda=1) goto inne_r1
//if(metoda=9) goto inne_r9
goto next_skl
inne_r1:
sklad1 := "premsklad1"
sklad2 := "premsklad2"
wyjscie := callalg["ustal_poziom"]
if(wyjscie = 1) goto next_skl
goto wspolne
inne_r5:
sklad1 := "stazsklad1"
sklad2 := "stazsklad2"
wyjscie := callalg["ustal_poziom"]
if(wyjscie = 1) goto next_skl
goto wspolne
inne_r9:
rejop["sp:zmienkluczrej","4"]
klucz := tostr["#rejwezp_s[""p:symsklad""]#S--#metoda#S:0"]
if(not(rejop["sp:znajdzrek",klucz])) poziomx := "01"
if(not(rejop["sp:znajdzrek",klucz])) goto wspolne
wyjscie := callalg["ustal_poziom1"]
if(wyjscie = 1) goto next_skl
goto wspolne
//
wspolne:
rejwstawp_s["p:poziom",poziomx]
xrejwstawp_l["p:czy_wyl",.T.]
rejop["p:zapiszrek",""]
rejop["pp:znajdzrek",skladnik]
rejwstawp_s["pp:poziom",poziomx]
xrejwstawp_l["pp:czy_wyl",.T.]
rejop["pp:zapiszrek",""]
liczba_rek := liczba_rek-1
// dopisanie poziomu do rejestru powiazan
if(not(rejop["pw:znajdzrek",skladnik])) goto next_skl
petla_pw:
rejwstawp_s["pw:poziom",poziomx]
if(rejop["pw:weznastepnyrekn",""]) goto petla_pw
next_skl:
if(rejop["p:weznastepnyrek",""]) goto petla_t
if(liczba_rek=0) goto zamknij_rej
if(liczba_old = liczba_rek) goto komunikat
liczba_old := liczba_rek
goto next_tura
komunikat:
txt_komunikat := ""
rejop["p:wezpierwszyrek",""]
petla_k:
if(not(rejwezp_l["p:czy_wyl"])) txt_komunikat := txt_komunikat+rejwezp_s["p:symsklad"]+", "
if(rejop["p:weznastepnyrek",""]) goto petla_k
okalert["Sk|ladniki: $"+txt_komunikat + "$ $ Odwo|luj|a si|e do siebie nawzajem $lub do nieistniej|acych sk|ladnik|ow i formu|l. $ $Popraw definicje!!!"]
zamknij_rej:
rejop["p:zamknijrej",""]
rejop["fo:zamknijrej",""]
rejop["pp:zamknijrej",""]
rejop["pw:zamknijrej",""]

% ustal_poziom.alg
if(pustepole["p:"+sklad1]) goto skl2
if(not(rejop["pp:znajdzrek",rejwezp_s["p:"+sklad1]])) exitalg[1]
if(not(rejwezp_l["pp:czy_wyl"])) exitalg[1]
poziomy := stringnaliczbe[rejwezp_s["pp:poziom"]]
skl2:
if(pustepole["p:"+sklad2]) goto skl3
if(not(rejop["pp:znajdzrek",rejwezp_s["p:"+sklad2]])) exitalg[1]
if(not(rejwezp_l["pp:czy_wyl"])) exitalg[1]
if(poziomy < stringnaliczbe[rejwezp_s["pp:poziom"]]) poziomy := stringnaliczbe[rejwezp_s["pp:poziom"]]
skl3:
poziomy := poziomy+1
poziomx := tostr["#poziomy#S:0"]
if(poziomy<10) poziomx := tostr["0#poziomy#S:0"]
exitalg[0]

% ustal_poziom1.alg
petla_sp:
if(not(rejop["pp:znajdzrek",rejwezp_s["sp:sklad_pow"]])) exitalg[1]
if(not(rejwezp_l["pp:czy_wyl"])) exitalg[1]
poziomy := stringnaliczbe[rejwezp_s["pp:poziom"]]
if(poziomy < stringnaliczbe[rejwezp_s["pp:poziom"]]) poziomy := stringnaliczbe[rejwezp_s["pp:poziom"]]
if(rejop["sp:weznastepnyrekn",""]) goto petla_sp
poziomy := poziomy+1
poziomx := tostr["#poziomy#S:0"]
if(poziomy<10) poziomx := tostr["0#poziomy#S:0"]
exitalg[0]

% SCN-URZEDY-SKARBOWE.ALG
  porzadek  := 1
  kwota2    := 1
  nazwa_frm := "Rejestr_urzedow"
  CallSl["gl_zobacz_rejestr(""URZAD.RXR"")"]

% SCN-STANOWISKA.ALG
  CallSl["gl_zobacz_rejestr(""STANOW.RXR"")"]

% SCN-WYROZNIKI.ALG
  CallSl["gl_zobacz_rejestr(""PLC_WYROZNIK.RXR"")"]
% SCN-WYDZIALY.ALG

  CallSl["gl_zobacz_rejestr(""WYDZIALY.RXR"")"]
  
% SCN-KODY-PRACOWNIKOW.ALG
  CallSl["gl_zobacz_rejestr(""KODPRAC.RXR"")"]

% SCN-RODZAJ-SKLADNIKA.ALG
  CallSl["gl_zobacz_rejestr(""RODZSKL.RXR"")"]

// ----------------------------------
// parametry
// ----------------------------------

% PL_PAR_READ_PARAM.ALG
  frm     := os_ksieg+"&"+nazwa_ksieg+"&"+nazwa_frm
  defzmiennaL["dodatki",.N.]
  defzmiennaL["paski",.N.]
  defzmiennaL["log1",.T.]
  defzmiennaL["log2",.N.]
  defzmiennaL["log4",.N.]
  defzmiennaL["log5",.T.]
  defzmiennaL["log6",.N.]
  defzmiennaL["log7",.N.]
  defzmiennaD["d1",'']
  defzmiennaD["d2",'']
  defzmiennaS["string1",""]
  defzmiennaS["string2",""]
  defzmiennaS["string3",""]
  defzmiennaS["string4",""]
  defzmiennaS["string5",""]
  defzmiennaS["string6",""]
  defzmiennaS["string7",""]
  defzmiennaK["kwota1",.]
  defzmiennaK["kwota2",.]
  RejOp["M:OtworzRejsprawdz","FRM_MEMO.RJR"]
  if (RejOp["M:ZnajdzRek",frm]) goto _read_param
  RejOp["M:DodajRek",""]
  RejWstawP_S["M:FRM_frm",frm]
  goto _end_read_param_dialog
_read_param:
        dodatki := RejWezP_L["M:FRM_log0"]
        log1    := RejWezP_L["M:FRM_log1"]
        log2    := RejWezP_L["M:FRM_log2"]
        paski   := RejWezP_L["M:FRM_log3"]
        log4    := RejWezP_L["M:FRM_log4"]
        log5    := RejWezP_L["M:FRM_log5"]
        log6    := RejWezP_L["M:FRM_log6"]
        log7    := RejWezP_L["M:FRM_log7"]
        d1      := RejWezP_D["M:FRM_ydata1"]
        d2      := RejWezP_D["M:FRM_ydata2"]
        string1 := RejWezP_S["M:FRM_str1"]
        string2 := RejWezP_S["M:FRM_str2"]
        string3 := RejWezP_S["M:FRM_str3"]
        string4 := RejWezP_S["M:FRM_str4"]
        string5 := RejWezP_S["M:FRM_str5"]
        string6 := RejWezP_S["M:FRM_str6"]
        string7 := RejWezP_S["M:FRM_str7"]
        kwota1  := RejWezP_K["M:FRM_kwota1"]
        kwota2  := RejWezP_K["M:FRM_kwota2"]
_end_read_param_dialog:
  RejOp["M:ZamknijRej",""]

% PL_PAR_WRITE_PARAM.ALG
  RejOp["M:OtworzRejsprawdz","FRM_MEMO.RJR"]
  RejOp["M:ZnajdzRek",frm]
  xRejWstawP_L["M:FRM_log0",dodatki]
  xRejWstawP_L["M:FRM_log1",log1]
  xRejWstawP_L["M:FRM_log2",log2]
  xRejWstawP_L["M:FRM_log5",log5]
  xRejWstawP_L["M:FRM_log6",log6]
  xRejWstawP_L["M:FRM_log7",log7]
  xRejWstawP_L["M:FRM_log3",paski]
  xRejWstawP_L["M:FRM_log4",log4]
  xRejWstawP_D["M:FRM_ydata1",d1]
  xRejWstawP_D["M:FRM_ydata2",d2]
  xRejWstawP_S["M:FRM_str1",string1]
  xRejWstawP_S["M:FRM_str2",string2]
  xRejWstawP_S["M:FRM_str3",string3]
  xRejWstawP_S["M:FRM_str4",string4]
  xRejWstawP_S["M:FRM_str5",string5]
  xRejWstawP_S["M:FRM_str6",string6]
  xRejWstawP_S["M:FRM_str7",string7]
  xRejWstawP_K["M:FRM_kwota1",kwota1]
  xRejWstawP_K["M:FRM_kwota2",kwota2]
  RejOp["M:ZapiszRek",""]
  RejOp["M:ZamknijRej",""]
  
// ----------------------------------------
// uzupelnianie symbolu listy
// ----------------------------------------

% OTWORZ-X-NRLIST.ALG
  RejOp["UsunPlikRej","NRLIST.RXR"] 
  RejOp["X:OtworzRejsprawdz","NRLIST.RXR"]
//  RejOp["X:WyczyscRej",""]

% UZUPELNIAM-SYMBOL_LISTY.ALG
 rezygnujesz := .N.
 RejOp["UsunPlikRej","NRLIST.RXR"] 
   RejOp["Z:OtworzRejsprawdz","PLPOWIAZ.RXR"]
rejop["z:zamknijrej",""] 
if(pllisty) goto ok_pllisty
   if (CallPyt["import place_g | place_g.s_rejestr(1)"] = 0) ExitAlg[0]
   RejOp["Z:OtworzRej1","PLPOWIAZ.RXR"]
   RejOp["Z:WezPierwszyRek",""]
   goto no_pllisty
 ok_pllisty:
  if (CallPyt["import place_g | place_g.s_rejestr(0)"] = 0) ExitAlg[0]
  RejOp["Z:OtworzRej1","PLLISTY.RXR"]
  RejOp["Z:WezPierwszyRek",""]
no_pllisty:
rejop["m:otworzrej1","pllisty.rxr"]
  CallAlg["OTWORZ-X-NRLIST"]    
  symlista := ""
  st_lista := ""
powrot:
  symlista := RejWezP_S["Z:symlista"]
  if(st_lista==symlista) goto next
  RejOp["X:DodajRek",""]
  RejWstawP_S["X:listanumer",symlista]
  if(rejop["m:znajdzrek",symlista]) rejwstawp_s["x:listaopis",rejwezp_s["m:nazlista"]]
  st_lista := symlista
next:
  if (RejOp["Z:WezNastepnyRek",""]) goto powrot
  RejOp["X:ZamknijRej",""]
rejop["m:zamknijrej",""]
koniec1:
  RejOp["Z:ZamknijRej",""]
//@@@

// -----------------------------------
// odczytaj parametry do listy plac
// -----------------------------------

% PL_PAR-STAWKI.ALG
//okalert["PL_par-stawki="+rok]
// zmienna wejsciowa pracownik
// k_zw, k_uzys - kwoty wykorzyst.w danym miesiacu
// sk_zw, sk_uzys-przypisane pracownikowi
  xproc     := .
  k_zw      := .
  k_uzys    := .
  podstubez := .
  podstubez_all := .
  podstubez1 := .
  sumapodatku  := .
znajdz_prac:
  If(RejOp["C:ZnajdzRek",xzpracownik]) goto ok_pracownik
     OkAlert["Brak pracownika => "+xzpracownik+" w rejestrze pracownik|ow !$Nale|zy to uzupe|lni|c !"]
     CallAlg["SCN-PLACE-PODATNIK"]
     goto znajdz_prac
ok_pracownik:
  wspolneopod := RejWezP_L["C:wspolneopod"]
  xklucz := xzpracownik+"*"+rokmies
  xklucz1 := xzpracownik+"*"+strcut[rokmies,0,4]+"13"
  RejOp["Sum1:OtworzRej1","SUMYNART.RXR"]
  RejOp["sum1:ZmienKluczRej","3"]
// wyliczenie podstawy opodatkowania narastajaco z poprzedniego miesiaca
If(Not(RejOp["sum1:ZnajdzRek",xklucz])) goto brak_mies
  podstubez1 := RejWezP_K["sum1:s_podst_er"]
  podstubez := RejWezP_K["sum1:s_podstopod"]
  sumapodatku := RejWezP_K["sum1:s_zalpod"]
brak_mies:
if(not(korektalisty)) goto mies13
callalg["wylicz_podstubez1"]
mies13:
  If(Not(RejOp["sum1:ZnajdzRek",xklucz1])) goto brak_stawki1
  podstubez1 := RejWezP_K["sum1:s_podst_er"] - podstubez1
  podstubez := RejWezP_K["sum1:s_podstopod"] - podstubez
  sumapodatku := RejWezP_K["sum1:s_zalpod"] - sumapodatku
//okalert["xxxpodstubez1="+podstubez1]
brak_stawki1:
  RejOp["sum1:ZamknijRej",""]
  CallPyt["import place_g | place_g.place_sprawdz_parametry(""" + rok +  """,2)"]
  if(Not(zaniechanie=. or zaniechanie=0)) xproc := zaniechanie
//
//znajdz_prac:
//  If(RejOp["C:ZnajdzRek",xzpracownik]) goto ok_pracownik
//     OkAlert["Brak pracownika => "+xzpracownik+" w rejestrze pracownik|ow !$Nale|zy to uzupe|lni|c !"]
//     CallAlg["SCN-PLACE-PODATNIK"]
//     goto znajdz_prac
//ok_pracownik:
  xpnaliczac := RejWezP_L["C:pnaliczac"]
  xppobierac := RejWezP_L["C:ppobierac"]
  xk_zw := RejWezP_K["C:k_zw"]
  xk_uzys := RejWezP_K["C:k_uzys"]
  xos_rodz   := RejWezP_K["C:os_rodz"]
  xos_piel   := RejWezP_K["C:os_piel"]
  zaniechanie := RejWezP_K["C:zaniechanie"]
  dobanku1    := RejWezP_K["C:dobanku1"]
  dobanku2    := RejWezP_K["C:dobanku2"]
//
% wylicz_podstubez1.alg
// wyliczenie podstawy w przypadku korekty
tura := stringnaliczbe[strcut[rokmies,4,2]]+1
petla:
//if(tura>12) okalert["podstubez1="+podstubez1]
if(tura>12) exitalg[0]
data := C_date[stringnaliczbe[strcut[rokmies,2,2]],tura,1]
xklucz2 := xzpracownik+"*"+strcut[studatas[data],0,4]+strcut[studatas[data],5,2]
//okalert["xklucz2="+xklucz2]
If(Not(RejOp["sum1:ZnajdzRek",xklucz2])) goto brak_mies
  podstubez1 := podstubez1+RejWezP_K["sum1:s_podst_er"]
  podstubez := podstubez +RejWezP_K["sum1:s_podstopod"]
  sumapodatku := sumapodatku+RejWezP_K["sum1:s_zalpod"]
brak_mies:
tura := tura+1
goto petla

% PL_PAR-STAWKI-UBEZP.ALG
// pobranie stawek ubezpieczen dla kodu: xkodprac
  RejOp["U:OtworzRejsprawdz","KODPRAC.RXR"]
znajdz_kod:
  If(RejOp["U:ZnajdzRek",xkodprac]) goto ok_kodprac
    OkAlert["Brak kodu stawek ubezpieczeniowych => "+xkodprac+" w rejestrze kod|ow !$Nale|zy to uzupe|lni|c !"]
    CallAlg["SCN-KODY-PRACOWNIKOW"]
    goto znajdz_kod
ok_kodprac:
   xuep    := RejWezP_K["U:uep"]
   xueu    := RejWezP_K["U:ueu"]
   xurp    := RejWezP_K["U:urp"]
   xuru    := RejWezP_K["U:uru"]
   xuwp    := RejWezP_K["U:uwp"]
   xucu    := RejWezP_K["U:ucu"]
   xfgp    := RejWezP_K["U:fgp"]
   xfpp    := RejWezP_K["U:fpp"]
   xfep    := .
   RejOp["U:ZamknijRej",""]
//okalert["PL_PAR-STAWKI-UBEZP"+xuep+xueu+"DATALISTY"+DATALISTY]
if(not(xuep=. or xueu=. or xurp=. or xuru=. or xuwp=. or xucu=. or xfgp=. or xfpp=. or xfep=.)) exitalg[0]
  CallPyt["import place_g | place_g.place_sprawdz_stawki(""" + datalisty +  """)"]
if(xuep=.) xuep := uep
if(xueu=.) xueu := ueu
if(xurp=.) xurp := urp
if(xuru=.) xuru := uru
if(xuwp=.) xuwp := uwp
if(xucu=.) xucu := ucu
if(xfpp=.) xfpp := fpp
if(xfgp=.) xfgp := fgp
if(xfep=.) xfep := fep
// -----------------------------
// pobierz dane o skladnikach
// -----------------------------
   
% POBIERZ-DANE-SKLADNIK2.ALG
znajdz_skl:
  If(RejOp["X:ZnajdzRek",xzskladnik]) goto ok_skladnik
    OkAlert["Brak sk|ladnika => "+xzskladnik+" w rejestrze sk|ladnik|ow !$Nale|zy to uzupe|lni|c !"]
    CallAlg["LOOK-PLSKLAD"]
    goto znajdz_skl
ok_skladnik:
    xdopodstawy  := RejWezP_L["X:dopodstawy"]
    xczyprock_uz := RejWezP_L["X:czyprock_uz"]
    xodjack_uz   := RejWezP_L["X:odjack_uz"]
//    OkAlert["pobierz dane skladnik=" + xzskladnik + "xdjack_uz=" + xodjack_uz]    
    xujemny      := RejWezP_L["X:ujemny"]
    xodjaczus    := RejWezP_L["X:odjaczus"]
    xodjaczdrow  := RejWezP_L["X:odjaczdrow"]
    xzdrownpod  := RejWezP_L["X:zdrownpod"]
    xzdrownobn  := RejWezP_L["X:zdrownobn"]
    xryczalt     := RejWezP_L["X:ryczalt"]
    xczywyplacac := RejWezP_L["X:czywyplacac"]
    xczyryczpodst := RejWezP_L["X:czyryczpodst"]
    kwota_zw := rejwezp_k["x:kwota_zw"]
    rodzzwoln := rejwezp_k["x:rodzzwoln"]
//    xczyryczpodst := .N.
//    okalert[xzskladnik]
//    okalert["xczyrycz=" + xczyryczpodst]    
    x_odj_chorobowe := .T.
    x_odj_wypadkowe := .T.
    x_odj_ulgapodatek := .T.    
    if (not PustePole["X:odj_chorobowe"]) x_odj_chorobowe := RejWezP_L["X:odj_chorobowe"]
    if (not PustePole["X:odj_wypadkowe"]) x_odj_wypadkowe := RejWezP_L["X:odj_wypadkowe"]
    if (not PustePole["X:odj_ulgapodatek"]) x_odj_ulgapodatek := RejWezP_L["X:odj_ulgapodatek"]
    skl  := RejWezP_S["X:rodzskl"]
    If(xryczalt) xprocpod  := RejWezP_K["X:ryczproc"]

    if(Not(sk_uzys>0))  sk_uzys := .
    
% PLACE-MODYFIKUJ-PAR-STAWKI.ALG
//  OkAlert["1 xucu=" + xucu]  
//  if (not x_odj_chorobowe) xucu := .
//  if (not x_odj_wypadkowe) xuwp := .
//  OkAlert["2 xucu=" + xucu]  
// NIEPOTRZEBNE - NA RAZIE ZOSTAWIONE
//   OkAlert["licz"]

% PLACE-LICZ-CHOROBOWE.ALG
  if (not x_odj_chorobowe) ExitAlg[.]
  WYNIK_WOLAJ_ALG := RoundN[PAR_Z_BRUTTO*xucu/100,2]
  ExitAlg[WYNIK_WOLAJ_ALG]  
  
% PLACE-LICZ-WYPADKOWE.ALG
  if (not x_odj_wypadkowe) ExitAlg[.]
//  OkAlert["PAR_Z_BRUTTO=" + PAR_Z_BRUTTO +  " xucu=" + xucu]  
  ExitAlg[RoundN[PAR_Z_BRUTTO*(xuwp/100),2]]

% WYLICZ-ZMIENNE.ALG

// zus i chorobowe 
  zamiana_zus_chorobowe := .N.
  if (xodjaczus or not x_odj_chorobowe) goto dalej_nic
    if (not xodjaczus) zamiana_zus_chorobowe := .T.
    xodjaczus := .T.
  dalej_nic:      
      
//  OkALert["wylicz-zmienne czywyplacac=" + xczywyplacac + " xodjaczus=" + xodjaczus]      
//  OkALert["1=" + xdopodstawy + " 2=" + xodjaczdrow + " 3=" + xodjack_uz + " xzbrutto=" + xzbrutto]
// wyliczenie roznicy pomiedzy kwota czesciowo zwolniona a kwota dotychczas wyplacona+obecna kwota      
  kwota_opod := xzbrutto
if(not(rodzzwoln=5)) goto pomin_kwota_opod
if(kwota_opod =. or kwota_opod=0) goto pomin_kwota_opod
if(kwota_zw =. or kwota_zw=0) goto pomin_kwota_opod
if(rejop["kz:znajdzrek",xzpracownik+"*"+xzskladnik+"*"+strcut[rokmies,0,4]]) goto pobierz_kwota_zw
//mariamaria
rejop["kz:dodajrek",""]
rejwstawp_s["kz:pracownik",xzpracownik]
rejwstawp_s["kz:skladnik",xzskladnik]
rejwstawp_s["kz:rok",strcut[rokmies,0,4]]
pobierz_kwota_zw:
kwota_opod := kwota_opod+rejwezp_k["kz:kwota_narastajaco"]-kwota_zw
if(kwota_opod<0) kwota_opod := 0
if(kwota_opod>xzbrutto) kwota_opod := xzbrutto
pomin_kwota_opod:
  If(Not(xczywyplacac)) goto no_wyplacac
  If(Not(xodjaczus)) goto no_zus
//  OkAlert["licz, skladnik = "+xzskladnik+"$xpracownik="+xzpracownik+"$rodzzwoln="+rodzzwoln+"$kwota-zw="+kwota_zw]  
// dodatkowo sprawdzanie czy obniza podatek i czy obnizany do wysokosci podatku
// x_x_T_x_x_nobn - to podstawa skladki zdrowotnej nie obnizanej do wysokosci podatku
// x_T_T_X_X_npod - to podstawa skladki zdrowotnej opodatkowana i obnizajaca podatek
// x_T_T_X_X_opod - to podstawa opodatkowania
  If(xdopodstawy and xodjaczdrow and xodjack_uz)              T_T_T_T_T  := T_T_T_T_T + xzbrutto
  If(xdopodstawy and xodjaczdrow and xodjack_uz)              T_T_T_T_T_opod  := T_T_T_T_T_opod + kwota_opod
  If(xdopodstawy and xodjaczdrow and xodjack_uz and xzdrownobn) T_T_T_T_T_nobn  := T_T_T_T_T_nobn + xzbrutto
  If(xdopodstawy and xodjaczdrow and xodjack_uz and not(xzdrownpod)) T_T_T_T_T_npod  := T_T_T_T_T_npod + kwota_opod

  If(xdopodstawy and xodjaczdrow and Not(xodjack_uz))         T_T_T_N_T  := T_T_T_N_T + xzbrutto
  If(xdopodstawy and xodjaczdrow and Not(xodjack_uz))         T_T_T_N_T_opod  := T_T_T_N_T_opod + kwota_opod
  If(xdopodstawy and xodjaczdrow and not(xodjack_uz) and xzdrownobn) T_T_T_N_T_nobn  := T_T_T_N_T_nobn + xzbrutto
  If(xdopodstawy and xodjaczdrow and not(xodjack_uz) and not(xzdrownpod)) T_T_T_N_T_npod  := T_T_T_N_T_npod + kwota_opod

  If(xdopodstawy and Not(xodjaczdrow) and xodjack_uz)         T_T_N_T_T  := T_T_N_T_T + xzbrutto
  If(xdopodstawy and Not(xodjaczdrow) and xodjack_uz)         T_T_N_T_T_opod  := T_T_N_T_T_opod + kwota_opod
  If(xdopodstawy and Not(xodjaczdrow) and Not(xodjack_uz))    T_T_N_N_T  := T_T_N_N_T + xzbrutto
  If(xdopodstawy and Not(xodjaczdrow) and Not(xodjack_uz))    T_T_N_N_T_opod  := T_T_N_N_T_opod + kwota_opod

  If(Not(xdopodstawy)and xodjaczdrow and xodjack_uz)          T_N_T_T_T  := T_N_T_T_T + xzbrutto
  If(Not(xdopodstawy)and xodjaczdrow and xodjack_uz and xzdrownobn)          T_N_T_T_T_nobn  := T_N_T_T_T_nobn + xzbrutto
  If(Not(xdopodstawy)and xodjaczdrow and Not(xodjack_uz))     T_N_T_N_T  := T_N_T_N_T + xzbrutto
  If(Not(xdopodstawy)and xodjaczdrow and Not(xodjack_uz) and xzdrownobn)     T_N_T_N_T_nobn  := T_N_T_N_T_nobn + xzbrutto

  If(Not(xdopodstawy)and Not(xodjaczdrow)and Not(xodjack_uz)) T_N_N_N_T  := T_N_N_N_T + xzbrutto
// wyliczam zus dla kazdego skladnika
  sklpodst_er := xzbrutto
  if(sklpodst_er=.) sklpodst_er := 0
  if(ryczreszta_er<sklpodst_er)            sklpodst_er := ryczreszta_er
  if((ryczreszta_er=0)or(ryczreszta_er<0)) sklpodst_er := 0
        ryczreszta_er := ryczreszta_er-sklpodst_er
        ueu := RoundN[sklpodst_er*(xueu/100),2]
        uru := RoundN[sklpodst_er*(xuru/100),2]
//        ucu := roundn[xzbrutto*(xucu/100),2]
        PAR_Z_BRUTTO := xzbrutto
	ucu := CallAlg["PLACE-LICZ-CHOROBOWE"]
        uwp := CallAlg["PLACE-LICZ-WYPADKOWE"]	
        uep := roundn[sklpodst_er*(xuep/100),2]
        urp := roundn[sklpodst_er*(xurp/100),2]
//        uwp := roundn[xzbrutto*(xuwp/100),2]
//   OkAlert["N_T_T_N_T=" + N_T_T_N_T]  
//    OkALert["T_T_T_T_T=" + T_T_T_T_T]  
//    OkALert["T_T_T_N_T=" + T_T_T_N_T]  

    goto ok_zus
no_zus:
  
  If(xdopodstawy and xodjaczdrow and xodjack_uz)              N_T_T_T_T  := N_T_T_T_T + xzbrutto
  If(xdopodstawy and xodjaczdrow and xodjack_uz)              N_T_T_T_T_opod  := N_T_T_T_T_opod + kwota_opod
  If(xdopodstawy and xodjaczdrow and xodjack_uz and xzdrownobn) N_T_T_T_T_nobn  := N_T_T_T_T_nobn + xzbrutto
  If(xdopodstawy and xodjaczdrow and xodjack_uz and not(xzdrownpod)) N_T_T_T_T_npod  := N_T_T_T_T_npod + kwota_opod

  If(xdopodstawy and xodjaczdrow and Not(xodjack_uz))         N_T_T_N_T  := N_T_T_N_T + xzbrutto
  If(xdopodstawy and xodjaczdrow and Not(xodjack_uz))         N_T_T_N_T_opod  := N_T_T_N_T_opod + kwota_opod
  If(xdopodstawy and xodjaczdrow and not(xodjack_uz) and xzdrownobn) N_T_T_N_T_nobn  := N_T_T_N_T_nobn + xzbrutto
  If(xdopodstawy and xodjaczdrow and not(xodjack_uz) and not(xzdrownpod)) N_T_T_N_T_npod  := N_T_T_N_T_npod + kwota_opod
  

  If(xdopodstawy and Not(xodjaczdrow) and xodjack_uz)         N_T_N_T_T  := N_T_N_T_T + xzbrutto
  If(xdopodstawy and Not(xodjaczdrow) and xodjack_uz)         N_T_N_T_T_opod  := N_T_N_T_T_opod + kwota_opod
  If(xdopodstawy and Not(xodjaczdrow) and Not(xodjack_uz))    N_T_N_N_T  := N_T_N_N_T + xzbrutto
  If(xdopodstawy and Not(xodjaczdrow) and Not(xodjack_uz))    N_T_N_N_T_opod  := N_T_N_N_T_opod + kwota_opod

  If(Not(xdopodstawy)and xodjaczdrow and xodjack_uz)          N_N_T_T_T  := N_N_T_T_T + xzbrutto
  If(Not(xdopodstawy)and xodjaczdrow and xodjack_uz and xzdrownobn)          N_N_T_T_T_nobn  := N_N_T_T_T_nobn + xzbrutto

  If(Not(xdopodstawy)and xodjaczdrow and Not(xodjack_uz))     N_N_T_N_T  := N_N_T_N_T + xzbrutto
  If(Not(xdopodstawy)and xodjaczdrow and Not(xodjack_uz) and xzdrownobn)     N_N_T_N_T_nobn  := N_N_T_N_T_nobn + xzbrutto

  If(Not(xdopodstawy)and Not(xodjaczdrow)and Not(xodjack_uz)) N_N_N_N_T  := N_N_N_N_T + xzbrutto
  goto ok_zus
no_wyplacac:
  If(Not(xodjaczus)) goto no_zus1
  If(xdopodstawy and xodjaczdrow and xodjack_uz)              T_T_T_T_N  := T_T_T_T_N + xzbrutto
  If(xdopodstawy and xodjaczdrow and xodjack_uz)              T_T_T_T_N_opod  := T_T_T_T_N_opod + kwota_opod
  If(xdopodstawy and xodjaczdrow and xodjack_uz and xzdrownobn) T_T_T_T_N_nobn  := T_T_T_T_N_nobn + xzbrutto
  If(xdopodstawy and xodjaczdrow and xodjack_uz and not(xzdrownpod)) T_T_T_T_N_npod  := T_T_T_T_N_npod + kwota_opod

  If(xdopodstawy and xodjaczdrow and Not(xodjack_uz))         T_T_T_N_N  := T_T_T_N_N + xzbrutto
  If(xdopodstawy and xodjaczdrow and Not(xodjack_uz))         T_T_T_N_N_opod  := T_T_T_N_N_opod + kwota_opod
  If(xdopodstawy and xodjaczdrow and not(xodjack_uz) and xzdrownobn) T_T_T_N_N_nobn  := T_T_T_N_N_nobn + xzbrutto
  If(xdopodstawy and xodjaczdrow and not(xodjack_uz) and not(xzdrownpod)) T_T_T_N_N_npod  := T_T_T_N_N_npod + kwota_opod

  If(xdopodstawy and Not(xodjaczdrow) and xodjack_uz)         T_T_N_T_N  := T_T_N_T_N + xzbrutto
  If(xdopodstawy and Not(xodjaczdrow) and xodjack_uz)         T_T_N_T_N_opod  := T_T_N_T_N_opod + kwota_opod
  If(xdopodstawy and Not(xodjaczdrow) and Not(xodjack_uz))    T_T_N_N_N  := T_T_N_N_N + xzbrutto
  If(xdopodstawy and Not(xodjaczdrow) and Not(xodjack_uz))    T_T_N_N_N_opod  := T_T_N_N_N_opod + kwota_opod

  If(Not(xdopodstawy)and xodjaczdrow and xodjack_uz)          T_N_T_T_N  := T_N_T_T_N + xzbrutto
  If(Not(xdopodstawy)and xodjaczdrow and xodjack_uz and xzdrownobn)          T_N_T_T_N_nobn  := T_N_T_T_N_nobn + xzbrutto

  If(Not(xdopodstawy)and xodjaczdrow and Not(xodjack_uz))     T_N_T_N_N  := T_N_T_N_N + xzbrutto
  If(Not(xdopodstawy)and xodjaczdrow and Not(xodjack_uz) and xzdrownobn)     T_N_T_N_N_nobn  := T_N_T_N_N_nobn + xzbrutto

  If(Not(xdopodstawy)and Not(xodjaczdrow)and Not(xodjack_uz)) T_N_N_N_N  := T_N_N_N_N + xzbrutto
// wyliczam zus dla kazdego skladnika
    sklpodst_er := xzbrutto
    if(sklpodst_er=.) sklpodst_er := 0
    if(ryczreszta_er<sklpodst_er)            sklpodst_er := ryczreszta_er
    if((ryczreszta_er=0)or(ryczreszta_er<0)) sklpodst_er := 0
        ryczreszta_er := ryczreszta_er-sklpodst_er
        ueu := roundn[sklpodst_er*(xueu/100),2]
        uru := roundn[sklpodst_er*(xuru/100),2]
//        ucu := roundn[xzbrutto*(xucu/100),2]
        PAR_Z_BRUTTO := xzbrutto
	ucu := CallAlg["PLACE-LICZ-CHOROBOWE"]
        uwp := CallAlg["PLACE-LICZ-WYPADKOWE"]	
        uep := roundn[sklpodst_er*(xuep/100),2]
        urp := roundn[sklpodst_er*(xurp/100),2]
//        uwp := roundn[xzbrutto*(xuwp/100),2]
    goto ok_zus
no_zus1:
  If(xdopodstawy and xodjaczdrow and xodjack_uz)              N_T_T_T_N  := N_T_T_T_N + xzbrutto
  If(xdopodstawy and xodjaczdrow and xodjack_uz)              N_T_T_T_N_opod  := N_T_T_T_N_opod + kwota_opod
  If(xdopodstawy and xodjaczdrow and xodjack_uz and xzdrownobn) N_T_T_T_N_nobn  := N_T_T_T_N_nobn + xzbrutto
  If(xdopodstawy and xodjaczdrow and xodjack_uz and not(xzdrownpod)) N_T_T_T_N_npod  := N_T_T_T_N_npod + kwota_opod

  If(xdopodstawy and xodjaczdrow and Not(xodjack_uz))         N_T_T_N_N  := N_T_T_N_N + xzbrutto
  If(xdopodstawy and xodjaczdrow and Not(xodjack_uz))         N_T_T_N_N_opod  := N_T_T_N_N_opod + kwota_opod
  If(xdopodstawy and xodjaczdrow and not(xodjack_uz) and xzdrownobn) N_T_T_N_N_nobn  := N_T_T_N_N_nobn + xzbrutto
  If(xdopodstawy and xodjaczdrow and not(xodjack_uz) and not(xzdrownpod)) N_T_T_N_N_npod  := N_T_T_N_N_npod + kwota_opod

  If(xdopodstawy and Not(xodjaczdrow) and xodjack_uz)         N_T_N_T_N  := N_T_N_T_N + xzbrutto
  If(xdopodstawy and Not(xodjaczdrow) and xodjack_uz)         N_T_N_T_N_opod  := N_T_N_T_N_opod + kwota_opod
  If(xdopodstawy and Not(xodjaczdrow) and Not(xodjack_uz))    N_T_N_N_N  := N_T_N_N_N + xzbrutto
  If(xdopodstawy and Not(xodjaczdrow) and Not(xodjack_uz))    N_T_N_N_N_opod  := N_T_N_N_N_opod + kwota_opod

  If(Not(xdopodstawy)and xodjaczdrow and xodjack_uz)          N_N_T_T_N  := N_N_T_T_N + xzbrutto
  If(Not(xdopodstawy)and xodjaczdrow and xodjack_uz and xzdrownobn)          N_N_T_T_N_nobn  := N_N_T_T_N_nobn + xzbrutto

  If(Not(xdopodstawy)and xodjaczdrow and Not(xodjack_uz))     N_N_T_N_N  := N_N_T_N_N + xzbrutto
  If(Not(xdopodstawy)and xodjaczdrow and Not(xodjack_uz) and xzdrownobn)     N_N_T_N_N_nobn  := N_N_T_N_N_nobn + xzbrutto

  If(Not(xdopodstawy)and Not(xodjaczdrow)and Not(xodjack_uz)) N_N_N_N_N  := N_N_N_N_N + xzbrutto
ok_zus:
    
  if (xodjaczus and not x_odj_chorobowe)  brutto_odejmij_chorobowe := brutto_odejmij_chorobowe + xzbrutto
  if (xodjaczus and not x_odj_wypadkowe)  brutto_odejmij_wypadkowe := brutto_odejmij_wypadkowe + xzbrutto

  if (not zamiana_zus_chorobowe) goto dalej_nic1
//    OkALert["zamiana zus"]  
    xodjaczus := .N.
    brutto_odejmij_emrent := brutto_odejmij_emrent + xzbrutto    
  dalej_nic1:

% INIT-BRUTTO-ODEJMIJ.XXX
  brutto_odejmij_chorobowe := .
  brutto_odejmij_wypadkowe := .
  brutto_odejmij_emrent := .  
      
    
// -------------------------------------------
// wyliczenie do listy plac
// -------------------------------------------
    
% WYLICZENIE.ALG
  if(liczpostaremu) CallPyt["import place_g | place_g.place_licz_skladnikami()"]
  CallPyt["import place_g | place_g.place_wylicz()"]  


// tutaj  
% WYLICZ-ZALICZKE-ZDROWOTNE.ALG
//  xnalzdr    := roundn[spodst_z*(xubezzdr/100),2]
//  xzalzdr    := roundn[spodst_z*(xubezzdro/100),2]

// czesc skladki zdrowotnej nie obnizana do wysokosci podatku
  xnalzdr_nobn    := (szdrownobn-szus_nobn)*(xubezzdr/100)
kwotax := xnalzdr_nobn
zaokrx := 2
callalg["zaokr"]
xnalzdr_nobn := kwotax
//
//odjecie z umow zlecen
xnalzdr_nobn := xnalzdr_nobn - s_zalzdr_nobn_zl
  xnalzdr    := spodst_z*(xubezzdr/100)
kwotax := xnalzdr
zaokrx := 2
callalg["zaokr"]
xnalzdr := kwotax
xnalzdr := xnalzdr- s_nalzdr_zl
//
// zdrowotne odliczane od podatku

//okalert["spodst_z1_opod="+spodst_z1_opod+"$-szus_opod="+szus_opod]

  xzalzdr    := (spodst_z1_opod-szus_opod)*(xubezzdro/100)
if(xczyryczpodst) xzalzdr    := 0
kwotax := xzalzdr
zaokrx := 2
callalg["zaokr"]
xzalzdr := kwotax
if(not(xczyryczpodst)) xzalzdr := xzalzdr - s_zalzdr_zl
//okalert["xzalzdr="+xzalzdr+"$xnalzdr="+xnalzdr]
  xzalzdrn   := xnalzdr - xzalzdr
  if(xzalzdrn<0) xzalzdrn := .
// tutaj  
% WSTAW-SUMY.ALG
    defzmiennaS["rb","B:"]
    xRejWstawP_S[rb+"kodprac",RejWezP_S["TT:kodprac"]]
    xRejWstawP_S[rb+"przekrocz",RejWezP_S["TT:przekrocz"]]
    xRejWstawP_K[rb+"sbrutto",RejWezP_K["TT:sbrutto"]]
    xRejWstawP_K[rb+"spodst_er",RejWezP_K["TT:spodst_er"]]
    xRejWstawP_K[rb+"spodst_cw",RejWezP_K["TT:spodst_cw"]]
    xRejWstawP_K[rb+"suep",RejWezP_K["TT:suep"]]
    xRejWstawP_K[rb+"surp",RejWezP_K["TT:surp"]]
    xRejWstawP_K[rb+"suwp",RejWezP_K["TT:suwp"]]
    xRejWstawP_K[rb+"sueu",RejWezP_K["TT:sueu"]]
    xRejWstawP_K[rb+"suru",RejWezP_K["TT:suru"]]
    xRejWstawP_K[rb+"sucu",RejWezP_K["TT:sucu"]]
    xRejWstawP_K[rb+"spodst_z",RejWezP_K["TT:spodst_z"]]
    xRejWstawP_K[rb+"spodst_z1",RejWezP_K["TT:spodst_z1"]]
    xRejWstawP_K[rb+"spodstkup",RejWezP_K["TT:spodstkup"]]
    xRejWstawP_K[rb+"spodstkup1",RejWezP_K["TT:spodstkup1"]]
//okalert["szalzdr="+RejWezP_K["TT:szalzdr"]]
    xRejWstawP_K[rb+"szalzdr",RejWezP_K["TT:szalzdr"]]
    xRejWstawP_K[rb+"snalzdr",RejWezP_K["TT:snalzdr"]]
    xRejWstawP_K[rb+"szalzdrn",RejWezP_K["TT:szalzdrn"]]
    xRejWstawP_K[rb+"sk_uzys",RejWezP_K["TT:sk_uzys"]]
    xRejWstawP_K[rb+"sk_uzys_m",RejWezP_K["TT:sk_uzys_m"]]
    xRejWstawP_K[rb+"sk_uzys_r",RejWezP_K["TT:sk_uzys_r"]]
    xRejWstawP_K[rb+"spodstopod",RejWezP_K["TT:spodstopod"]]
    xRejWstawP_K[rb+"spodstopod1",RejWezP_K["TT:spodstopod1"]]
    xRejWstawP_K[rb+"sprocpod",RejWezP_K["TT:sprocpod"]]
    xRejWstawP_K[rb+"snalpod",RejWezP_K["TT:snalpod"]]
    xRejWstawP_K[rb+"sk_zw",RejWezP_K["TT:sk_zw"]]
    xRejWstawP_K[rb+"szalpod",RejWezP_K["TT:szalpod"]]
    xRejWstawP_K[rb+"snetto",RejWezP_K["TT:snetto"]]
    xRejWstawP_K[rb+"spotrac",RejWezP_K["TT:spotrac"]]
    xRejWstawP_K[rb+"szasilek",RejWezP_K["TT:szasilek"]]
    xRejWstawP_K[rb+"skorpod",RejWezP_K["TT:skorpod"]]
    xRejWstawP_K[rb+"skorzdrow",RejWezP_K["TT:skorzdrow"]]
    xRejWstawP_K[rb+"skorpit",RejWezP_K["TT:skorpit"]]
    xRejWstawP_K[rb+"os_piel",RejWezP_K["TT:os_piel"]]
    xRejWstawP_K[rb+"os_rodz",RejWezP_K["TT:os_rodz"]]
    xRejWstawP_K[rb+"kw_piel",RejWezP_K["TT:kw_piel"]]
    xRejWstawP_K[rb+"kw_rodz",RejWezP_K["TT:kw_rodz"]]
    xRejWstawP_K[rb+"kw_wych",RejWezP_K["TT:kw_wych"]]
    xRejWstawP_K[rb+"kw_inne",RejWezP_K["TT:kw_inne"]]
    xRejWstawP_K[rb+"dowypl",RejWezP_K["TT:dowypl"]]
    xRejWstawP_K[rb+"sbr_odj_wyp",RejWezP_K["TT:sbr_odj_wyp"]]
    xRejWstawP_K[rb+"sbr_odj_chor",RejWezP_K["TT:sbr_odj_chor"]]
//
    xRejWstawP_K[rb+"spodst_er_opod",RejWezP_K["TT:spodst_er_opod"]]
    xRejWstawP_K[rb+"spodst_cw_opod",RejWezP_K["TT:spodst_cw_opod"]]
    xRejWstawP_K[rb+"szus_opod",RejWezP_K["TT:szus_opod"]]
    xRejWstawP_K[rb+"szdrownobn",RejWezP_K["TT:szdrownobn"]]
    xRejWstawP_K[rb+"spodst_z1_opod",RejWezP_K["TT:spodst_z1_opod"]]
    xRejWstawP_K[rb+"spodst_er_nobn",RejWezP_K["TT:spodst_er_nobn"]]
    xRejWstawP_K[rb+"spodst_cw_nobn",RejWezP_K["TT:spodst_cw_nobn"]]
    xRejWstawP_K[rb+"szus_nobn",RejWezP_K["TT:szus_nobn"]]
    xRejWstawP_K[rb+"szalzdr_nobn",RejWezP_K["TT:szalzdr_nobn"]]
RejOp[rb+"ZapiszRek",""]
// ------------------------------------------
// do przelewow
// -----------------------------------------

% USTAW-KWOTY-PRZELEW.ALG
  CallPyt["import place_g | place_g.ustaw_kwoty_przelew(""a:"")"]
% USTAW-KWOTY-PRZELEW1.ALG
  CallPyt["import place_g | place_g.ustaw_kwoty_przelew("""")"]
    
// -------------------------------------
// dane o pracowniku
// --------------------------------------

% POBIERZ-DANE-PRACOWNIK-CZESC1.ALG
znajdz_prac:
 If(RejOp["C:ZnajdzRek",xpracownik]) goto ok_pracownik
 OkAlert["Brak pracownika => "+xpracownik+" w rejestrze pracownik|ow !$Nale|zy to uzupe|lni|c !"]
 CallAlg["SCN-PLACE-PODATNIK"]
 goto znajdz_prac
ok_pracownik:
    
% POBIERZ-DANE-PRACOWNIK-CZESC2.ALG
 os_rodz    := RejWezP_K["C:os_rodz"]
 os_piel    := RejWezP_K["C:os_piel"]
 rodzmalzonek  := RejWezP_L["C:rodzmalzonek"]
 dokid_prac := RejWezP_K["C:dokid"]
 czywychow  := RejWezP_S["C:czywychow"]
	
% POBIERZ-DANE-PRACOWNIK-CZESC3.ALG
  xnazw      := RejWezP_S["C:nazwisko"]+" "+RejWezP_S["C:imie1"]
  xkodprac   := RejWezP_S["C:kodprac"]
	
% POBIERZ-DANE-PRACOWNIK-CZESC4.ALG
  xpnaliczac := RejWezP_L["C:pnaliczac"]
  xppobierac := RejWezP_L["C:ppobierac"]
	
% POBIERZ-DANE-PRACOWNIK-CZESC5.ALG
  xwydzial   := RejWezP_S["C:wydzial"]
  xstanow    := RejWezP_S["C:stanow"]
	
% POBIERZ-DANE-PRACOWNIK-CZESC6.ALG
  rodzaj_wyplaty := .
  callpyt["import place_g | place_g.ustaw_rodzaj_wyplaty()"]    
  dobanku1    := RejWezP_K["C:dobanku1"]
  dobanku2    := RejWezP_K["C:dobanku2"]
  dogotowka   := Rejwezp_k["C:dogotowka"]
    
% POBIERZ-DANE-PRACOWNIK-CZESC7.ALG
  zaniechanie  := RejWezP_K["C:zaniechanie"]
  kwotazaniech := RejWezP_K["C:kwotazaniech"]
  dzaniech     := RejWezP_D["C:dzaniech"]
  wspolneopod  := RejWezP_L["C:wspolneopod"]
  bo_podstopod := rejwezp_k["c:bo_podstopod"]

// ------------------------------------
// uzupelnianie numer listy
// ------------------------------------

% UZUPELNIAM-NRLIST.ALG
  RejOp["Z:OtworzRejSprawdz","PLACE.RXR"]
  RejOp["Z:ZmienKluczRej","1"]
  CallAlg["OTWORZ-X-NRLIST"]    
  rezygnujesz := .N.
  IF(Not(RejOp["Z:WezPierwszyRek",""])) rezygnujesz := .T.
  IF(rezygnujesz) OkAlert["Brak danych do wy|swietlenia !$Rejestr p|lac pr|obnych jest pusty !"]
  IF(rezygnujesz) goto koniec
  listanumer := ""
  lista      := ""
  datalisty  := ''
  dataprzelm := ''
  st_lista   := ""
  st_datalisty := ''
  rejop["m:otworzrej1","pllisty.rxr"]
powrot:
  listanumer := RejWezP_S["Z:lista"]+ToStr["#RejWezP_K[""Z:nrlisty""]#S:0"]
  datalisty  := RejWezP_D["Z:datawypl"]
  if(st_lista==listanumer) goto next
  RejOp["X:DodajRek",""]
  xRejWstawP_S["X:listanumer",listanumer]
  xRejWstawP_S["X:lista",RejWezP_S["Z:lista"]]
  xRejWstawP_K["X:nrlisty",RejWezP_K["Z:nrlisty"]]
  xRejWstawP_D["X:datalisty",RejWezP_D["Z:datawypl"]]
  xRejWstawP_K["X:nrwzorca",RejWezP_K["Z:nrwzorca"]]
//  xRejWstawP_S["X:mieswypl",RejWezP_S["Z:rokmie"]]
  xRejWstawP_S["X:mieswypl",RejWezP_S["Z:mieswypl"]]
  xRejWstawP_D["X:dataprzel0",RejWezP_D["Z:dataprzel0"]]
  if(rejop["m:znajdzrek",rejwezp_s["z:lista" ]]) xrejwstawp_s["x:listaopis",rejwezp_s["m:nazlista"]]
  RejOp["X:ZapiszRek",""]
  st_datalisty := datalisty
  st_lista     := listanumer
next:
  if (RejOp["Z:WezNastepnyRek",""]) goto powrot
  RejOp["X:ZmienKluczRej","2"]
  if(Not(RejOp["X:WezOstatniRek",""])) goto koniec
  listanumer := RejWezP_S["X:lista"]+ToStr["#RejWezP_K[""X:nrlisty""]#S:0"]
  symlisty   := RejWezP_S["X:lista"]+ToStr["#RejWezP_K[""X:nrlisty""]#S:0"]
koniec:
  if(Not(RejOp["X:WezOstatniRek",""])) rezygnujesz := .T.
  RejOp["Z:ZamknijRej",""]
  RejOp["X:ZamknijRej",""]

% UZUPELNIAM-NRLIST1.ALG
  defzmiennal["zbiorowka_odlo",.N.]
  if(not(zbiorowka_odlo)) RejOp["Z:OtworzRejsprawdz","PLARCH.RXR"]
  if(zbiorowka_odlo) RejOp["Z:OtworzRejsprawdz","PLACE.RXR"]
  RejOp["Z:ZmienKluczRej","1"]
  CallAlg["OTWORZ-X-NRLIST"]    
  IF(Not(RejOp["Z:WezPierwszyRek",""])) rezygnujesz := .T.
  IF(rezygnujesz) OkAlert["Brak naliczonych p|lac !!"]
  IF(rezygnujesz) goto koniec
  listanumer := ""
  lista      := ""
  datalisty  := ''
  st_lista   := ""
  st_datalisty := ''
powrot:
  listanumer := RejWezP_S["Z:lista"]+ToStr["#RejWezP_K[""Z:nrlisty""]#S:0"]
  datalisty  := RejWezP_D["Z:datawypl"]
  if(st_lista==listanumer) goto next
  anulacja   := ""
  if((kartoteka)and(RejWezP_L["Z:anulowana"])) goto next
  if(RejWezP_S["Z:lista"]=="KOREKTA") anulacja := RejWezP_S["Z:listakor"]+ToStr["#RejWezP_K[""Z:nrlistykor""]#S:0  ("]+rejwezp_s["z:ksiega_kor"]+")" 
  if(RejWezP_L["Z:anulowana"]) anulacja := "anulowana"
  RejOp["X:DodajRek",""]
  xRejWstawP_S["X:listanumer",listanumer]
  xRejWstawP_S["X:lista",RejWezP_S["Z:lista"]]
  xRejWstawP_K["X:nrlisty",RejWezP_K["Z:nrlisty"]]
  xRejWstawP_D["X:datalisty",RejWezP_D["Z:datawypl"]]
  xRejWstawP_S["X:mieswypl",RejWezP_S["Z:rokmie"]]
  xRejWstawP_K["X:nrwzorca",RejWezP_K["Z:nrwzorca"]]
  xRejWstawP_S["X:anulacja",anulacja]
  RejOp["X:ZapiszRek",""]
  st_datalisty := datalisty
  st_lista     := listanumer
next:
  if(RejOp["Z:WezNastepnyRek",""]) goto powrot
  RejOp["X:ZmienKluczRej","2"]
  if(Not(RejOp["X:WezOstatniRek",""])) goto koniec
    listanumer := RejWezP_S["X:lista"]+ToStr["#RejWezP_K[""X:nrlisty""]#S:0"]
    symlisty   := RejWezP_S["X:lista"]+ToStr["#RejWezP_K[""X:nrlisty""]#S:0"]
koniec:
  if(Not(RejOp["X:WezOstatniRek",""])) rezygnujesz := .T.
  RejOp["Z:ZamknijRej",""]
//rejop["x:zobaczdbf",""]
  RejOp["X:ZamknijRej",""]
if(rezygnujesz) exitalg[1]
exitalg[0]
//
// tu z uwzglednieniem poprzedniego roku
% UZUPELNIAM-NRLIST1x.ALG
  defzmiennal["zbiorowka_odlo",.N.]
tura := 1
  CallAlg["OTWORZ-X-NRLIST"]    
petla_rok:
  if(not(zbiorowka_odlo)) RejOp["Z:OtworzRejsprawdz","PLARCH.RXR"]
  if(zbiorowka_odlo) RejOp["Z:OtworzRejsprawdz","PLACE.RXR"]
  RejOp["Z:ZmienKluczRej","1"]
  IF(Not(RejOp["Z:WezPierwszyRek",""])) rezygnujesz := .T.
//  IF(rezygnujesz) OkAlert["Brak naliczonych p|lac !!"]
  IF(rezygnujesz) goto koniec_rok
  listanumer := ""
  lista      := ""
  datalisty  := ''
  st_lista   := ""
  st_datalisty := ''
powrot:
  listanumer := RejWezP_S["Z:lista"]+ToStr["#RejWezP_K[""Z:nrlisty""]#S:0"]
  datalisty  := RejWezP_D["Z:datawypl"]
  if(st_lista==listanumer) goto next
  anulacja   := ""
  if((kartoteka)and(RejWezP_L["Z:anulowana"])) goto next
  if(RejWezP_S["Z:lista"]=="KOREKTA") anulacja := RejWezP_S["Z:listakor"]+ToStr["#RejWezP_K[""Z:nrlistykor""]#S:0  ("]+rejwezp_s["z:ksiega_kor"]+")" 
  if(RejWezP_L["Z:anulowana"]) anulacja := "anulowana"
  RejOp["X:DodajRek",""]
  xRejWstawP_S["X:listanumer",listanumer]
  xRejWstawP_S["X:lista",RejWezP_S["Z:lista"]]
  xRejWstawP_K["X:nrlisty",RejWezP_K["Z:nrlisty"]]
  xRejWstawP_D["X:datalisty",RejWezP_D["Z:datawypl"]]
  xRejWstawP_S["X:mieswypl",RejWezP_S["Z:rokmie"]]
  xRejWstawP_K["X:nrwzorca",RejWezP_K["Z:nrwzorca"]]
  xRejWstawP_S["X:anulacja",anulacja]
  RejOp["X:ZapiszRek",""]
  st_datalisty := datalisty
  st_lista     := listanumer
next:
  if(RejOp["Z:WezNastepnyRek",""]) goto powrot
koniec_rok:
  RejOp["Z:ZamknijRej",""]
if(tura>1) finnop["close",""]
if(tura>1) goto koniec_poszukiwan
rejop["mm:otworzrej","PARCHOR.RXR"]
ch_ksieg := rejwezp_s["mm:ch_ksieg"]
rejop["mm:zamknijrej",""]
if(ch_ksieg="") goto koniec_poszukiwan
tura := tura+1
if(tura>2) goto koniec_poszukiwan
if(not(finnop["openmain",ch_ksieg])) goto koniec_poszukiwan
goto petla_rok
koniec_poszukiwan:
  RejOp["X:ZmienKluczRej","2"]
  if(Not(RejOp["X:WezOstatniRek",""])) goto koniec
    listanumer := RejWezP_S["X:lista"]+ToStr["#RejWezP_K[""X:nrlisty""]#S:0"]
    symlisty   := RejWezP_S["X:lista"]+ToStr["#RejWezP_K[""X:nrlisty""]#S:0"]
koniec:
  rezygnujesz := .N.
  if(Not(RejOp["X:WezOstatniRek",""])) rezygnujesz := .T.
  RejOp["X:ZamknijRej",""]
if(rezygnujesz) exitalg[1]
exitalg[0]

//
% UZUPELNIAM-NRLIST2.ALG
  RejOp["Z:OtworzRejsprawdz","PLARCH.RXR"]
  RejOp["Z:ZmienKluczRej","1"]
  CallAlg["OTWORZ-X-NRLIST"]    
  IF(Not(RejOp["Z:WezPierwszyRek",""])) rezygnujesz := .T.
  IF(rezygnujesz) OkAlert["Brak naliczonych p|lac !"]
  IF(rezygnujesz) goto koniec
  listanumer := ""
  lista      := ""
  datalisty  := ''
  st_lista   := ""
  st_datalisty := ''
powrot:
  if(Not(RejWezP_S["Z:lista"]=="KOREKTA")) goto next
  listanumer := RejWezP_S["Z:lista"]+ToStr["#RejWezP_K[""Z:nrlisty""]#S:0"]
  datalisty  := RejWezP_D["Z:datawypl"]
  if(st_lista==listanumer) goto next
  anulacja   := ""
  if((kartoteka)and(RejWezP_L["Z:anulowana"])) goto next
  if(RejWezP_S["Z:lista"]=="KOREKTA") anulacja := RejWezP_S["Z:listakor"]+ToStr["#RejWezP_K[""Z:nrlistykor""]#S:0  ("]+rejwezp_s["z:ksiega_kor"]+")" 
  if(RejWezP_L["Z:anulowana"]) anulacja := "anulowana"
  RejOp["X:DodajRek",""]
  xRejWstawP_S["X:listanumer",listanumer]
  xRejWstawP_S["X:lista",RejWezP_S["Z:lista"]]
  xRejWstawP_K["X:nrlisty",RejWezP_K["Z:nrlisty"]]
  xRejWstawP_D["X:datalisty",RejWezP_D["Z:datawypl"]]
  xRejWstawP_S["X:mieswypl",RejWezP_S["Z:rokmie"]]
  xRejWstawP_K["X:nrwzorca",RejWezP_K["Z:nrwzorca"]]
  xRejWstawP_S["X:anulacja",anulacja]
  RejOp["X:ZapiszRek",""]
  st_datalisty := datalisty
  st_lista     := listanumer
next:
  if(RejOp["Z:WezNastepnyRek",""]) goto powrot
  RejOp["X:ZmienKluczRej","2"]
  if(Not(RejOp["X:WezOstatniRek",""])) goto koniec
  listanumer := RejWezP_S["X:lista"]+ToStr["#RejWezP_K[""X:nrlisty""]#S:0"]
koniec:
  if(Not(RejOp["X:WezOstatniRek",""])) rezygnujesz := .T.
  if (rezygnujesz) OkAlert["Nic nie znaleziono do wydrukowania !"]
  RejOp["Z:ZamknijRej",""]
  RejOp["X:ZamknijRej",""]  

// ----------------------
// pobierz numer listy
// ----------------------

% POBIERZ-NUMER-LISTY.ALG
  RejOp["N:OtworzRejsprawdz",rejestr]
  If(RejOp["N:ZnajdzRek",symlistynum]) goto oklista
    OkAlert["Nie mog|e znale|x|c listy $"+symlistynum+"$w rejestrze pomocniczym " + rejestr + "  !"]
    RejOp["N:ZamknijRej",""]    
    ExitAlg[0]
oklista:
  symlisty    := RejWezP_S["N:lista"]
  numerlisty  := RejWezP_K["N:nrlisty"]
  numerwzorca := RejWezP_K["N:nrwzorca"]
  jestlista   := .T.
  RejOp["N:ZamknijRej",""]
  
// --------------------------------
// wylicz dane dla urlopu
// --------------------------------

% WYLICZ-DANE-URLOP.ALG 
  if(miespocz3="") Exitalg[0]
  if(StrCut[RejWezP_S["E:rokmie"],3,2]<miespocz3) Exitalg[0]
  if(StrCut[RejWezP_S["E:rokmie"],3,2]>miesiac)   Exitalg[0]
  if(StrCut[RejWezP_S["E:rokmie"],3,2]=miesiac)   Exitalg[0]
  rodz := RejWezP_S["X:rodzskl"]
//  If(RejOp["J:ZnajdzRek",RejWezP_S["E:pracownik"]+"*"+RejWezP_S["E:rokmie"]]) goto niedodawaj0
//  RejOp["J:DodajRek",""]
//  xRejWstawP_S["J:pracownik",RejWezP_S["E:pracownik"]]
//  xRejWstawP_S["J:rokmie",RejWezP_S["E:rokmie"]]
niedodawaj0:
// do rowiazania sprawa premii kwartalnej
//  if(RejWezP_L["X:ekwiwalent"]) xRejWstawP_K["J:placab",RejWezP_K["J:placab"]+RejWezP_K["E:placab"]]
//  RejOp["J:ZapiszRek",""]

  
// ------------------------
// sprawdzenie miesiaca
// ------------------------

% SPRAWDZAM-MIESIAC-WYPLATY.ALG
    if(miesiacwypl="")   ExitAlg[0]
    CallAlg["POPRAW-MIESIAC-WYPLATY"]
    ExDialogOp["WyswietlPozycje","8"]
    if(miesiacwypl="01") ExitAlg[0]
    if(miesiacwypl="02") ExitAlg[0]
    if(miesiacwypl="03") ExitAlg[0]
    if(miesiacwypl="04") ExitAlg[0]
    if(miesiacwypl="05") ExitAlg[0]
    if(miesiacwypl="06") ExitAlg[0]
    if(miesiacwypl="07") ExitAlg[0]
    if(miesiacwypl="08") ExitAlg[0]
    if(miesiacwypl="09") ExitAlg[0]
    if(miesiacwypl="10") ExitAlg[0]
    if(miesiacwypl="11") ExitAlg[0]
    if(miesiacwypl="12") ExitAlg[0]
    okalert["B|l|ednie wprowadzony numer miesi|aca !!"]
    ExDialogOp["IdzDoPozycji","8"]
// 
% POPRAW-MIESIAC-WYPLATY.ALG
    if(miesiacwypl="1") miesiacwypl := "01"
    if(miesiacwypl="2") miesiacwypl := "02"
    if(miesiacwypl="3") miesiacwypl := "03"
    if(miesiacwypl="4") miesiacwypl := "04"
    if(miesiacwypl="5") miesiacwypl := "05"
    if(miesiacwypl="6") miesiacwypl := "06"
    if(miesiacwypl="7") miesiacwypl := "07"
    if(miesiacwypl="8") miesiacwypl := "08"
    if(miesiacwypl="9") miesiacwypl := "09"
    if(miesiacwypl="10") miesiacwypl := "10"
    if(miesiacwypl="11") miesiacwypl := "11"
    if(miesiacwypl="12") miesiacwypl := "12"
    
// ----------------------------------------

% POBIERZ-Z-PROBNYCH.ALG
  numertxt   := ToStr["#numerlisty#S:0"]
  RejOp["Z:ZmienKluczRej","7"]
  IF(RejOp["Z:ZnajdzRek",symlisty+"*"+numertxt+"*"+xpracownik+"*"+xskladnik]) goto wstaw_dane
xzbrutton := .
exitalg[0]
wstaw_dane:
        xnrlisty  := RejWezP_K["Z:nrlisty"]
        xrodz     := RejWezP_S["Z:rodz"]
        xkodprac  := RejWezP_S["Z:kodprac"]
// odczytanie aktualnego kodu pracowniczego
        if(rejop["c:znajdzrek",xpracownik]) xkodprac := rejwezp_s["c:kodprac"]
        xstawka   := RejWezP_K["Z:stawka"]
        xlgodzin  := RejWezP_K["Z:lgodzin"]
        xzbrutto  := RejWezP_K["Z:placab"]
        xzbrutton  := RejWezP_K["Z:placabn"]
        gdzpracy := rejwezp_k["Z:gdzpracy"]
        gdzpracyu := rejwezp_k["Z:gdzpracyu"]
        gdzpracyu_all := rejwezp_k["Z:gdzpracyu_all"]
        gdzpracyu_nn := rejwezp_k["Z:gdzpracyu_nn"]
        dnipracyu := rejwezp_k["Z:dnipracyu"]
        dnipracyu_all := rejwezp_k["Z:dnipracyu_all"]
        dnipracyu_nn := rejwezp_k["Z:dnipracyu_nn"]
        dnipracyu_bww := rejwezp_k["Z:dnipracyu_bww"]
        dnipracyu_kal := rejwezp_k["Z:dnipracyu_kal"]
        gdzuop_szk := rejwezp_k["Z:gdzuop_szk"]        
        placab_uzu := rejwezp_k["Z:placab_uzu"]
        mies_uzu := rejwezp_s["Z:mies_uzu"] 
        goto pominsumy
	
        sbrutto   := RejWezP_K["Z:sbrutto"]
        sk_uzys   := RejWezP_K["Z:sk_uzys"]
        sk_uzys_m := RejWezP_K["Z:sk_uzys_m"]
        sk_uzys_r := RejWezP_K["Z:sk_uzys_r"]
        spodstopod := RejWezP_K["Z:spodstopod"]
        spodstopod1 := RejWezP_K["Z:spodstopod1"]
        sprocpod  := RejWezP_K["Z:sprocpod"]
        szalpod   := RejWezP_K["Z:szalpod"]
        sk_zw     := RejWezP_K["Z:sk_zw"]
        szalpod   := RejWezP_K["Z:szalpod"]
        snetto    := RejWezP_K["Z:snetto"]
        sbrutto   := RejWezP_K["Z:sbrutto"]
        spodst_er := RejWezP_K["Z:spodst_er"]
        spodst_cw := RejWezP_K["Z:spodst_cw"]
        snalpod   := RejWezP_K["Z:snalpod"]
        spodst_z  := RejWezP_K["Z:spodst_z"]
        spodst_z1  := RejWezP_K["Z:spodst_z1"]
        spodstkup := RejWezP_K["Z:spodstkup"]
        spodstkup1 := RejWezP_K["Z:spodstkup1"]
        sueu      := RejWezP_K["Z:sueu"]
        suru      := RejWezP_K["Z:suru"]
        sucu      := RejWezP_K["Z:sucu"]
        szalzdr   := RejWezP_K["Z:szalzdr"]
        snalzdr   := RejWezP_K["Z:snalzdr"]
        szalzdrn  := RejWezP_K["Z:szalzdrn"]
        suep      := RejWezP_K["Z:suep"]
        surp      := RejWezP_K["Z:surp"]
        suwp      := RejWezP_K["Z:suwp"]
        szasilek  := RejWezP_K["Z:szasilek"]
        skorpod   := RejWezP_K["Z:skorpod"]
        skorzdrow := RejWezP_K["Z:skorzdrow"]
        skorpit   := RejWezP_K["Z:skorpit"]
        spotrac   := RejWezP_K["Z:spotrac"]
        ueu       := RejWezP_K["Z:ueu"]
        uru       := RejWezP_K["Z:uru"]
        ucu       := RejWezP_K["Z:ucu"]
        uep       := RejWezP_K["Z:uep"]
        urp       := RejWezP_K["Z:urp"]
        uwp       := RejWezP_K["Z:uwp"]
        podst_z   := RejWezP_K["Z:podst_z"]
	sbr_odj_chor := rejwezp_k["Z:sbr_odj_chor"]
	sbr_odj_wyp := rejwezp_k["Z:sbr_odj_wyp"]
        sfpp := rejwezp_k["z:sfpp"]
        sfgp := rejwezp_k["z:sfgp"]
        sfep := rejwezp_k["z:sfep"]
pominsumy:
        dowypl    := RejWezP_K["Z:dowypl"]
        kw_obniz  := RejWezP_K["Z:kw_obniz"]
        os_rodz   := RejWezP_K["Z:os_rodz"]
        kw_rodz   := RejWezP_K["Z:kw_rodz"]
        kw_wych   := RejWezP_K["Z:kw_wych"]
        kw_inne   := RejWezP_K["Z:kw_inne"]
        os_piel   := RejWezP_K["Z:os_piel"]
        kw_piel   := RejWezP_K["Z:kw_piel"]
        dnipracy  := RejWezP_K["Z:dnipracy"]
        dataod1   := RejWezP_D["Z:dataod1"]
        datado1   := RejWezP_D["Z:datado1"]
        kod_chor  := RejWezP_S["Z:kod_chor"]
        dataod2   := RejWezP_D["Z:dataod2"]
        datado2   := RejWezP_D["Z:datado2"]
        kod_chor2 := RejWezP_S["Z:kod_chor2"]
        dataod3   := RejWezP_D["Z:dataod3"]
        datado3   := RejWezP_D["Z:datado3"]
        kod_chor3 := RejWezP_S["Z:kod_chor3"]
        dataod4   := RejWezP_D["Z:dataod4"]
        datado4   := RejWezP_D["Z:datado4"]
        kod_chor4 := RejWezP_S["Z:kod_chor4"]
        dataod5   := RejWezP_D["Z:dataod5"]
        datado5   := RejWezP_D["Z:datado5"]
        kod_chor5 := RejWezP_S["Z:kod_chor5"]
        rodzaj_wyplaty := RejWezP_K["Z:rodzaj_wyplaty"]
        if (rodzaj_wyplaty = .) CallPyt["import place_g | place_g.ustaw_rodzaj_wyplaty()"]
        dataprzel := RejWezP_D["Z:dataprzel"]
        kwotaprzel := RejWezP_K["Z:kwotaprzel"]
        dataprzel2 := RejWezP_D["Z:dataprzel2"]
        kwotaprzel2 := RejWezP_K["Z:kwotaprzel2"]
        kwotagotowka := RejWezp_k["Z:kwotagotowka"]
        kordwypl := rejwezp_d["z:kordwypl"]
        if(dataprzel='')  dataprzel  := dataprzel0
        if(dataprzel2='') dataprzel2 := dataprzel0
        dataprzelm0 := rejwezp_d["z:dataprzel0"]
        if(dataprzelm0='') dataprzelm0 := dataprzel0
        wynpodst  := RejWezP_K["Z:wynpodst"]
        placabp  := RejWezP_K["Z:placabp"]
        reh_procent := RejWezP_K["Z:reh_procent"]
exitalg[0]
// --------------------------------------
// koszty uzyskania
// --------------------------------------

% POBIERZ-K_UZYS.ALG
// k_zw, k_uzys - kwoty wykorzyst.w danym miesiacu
// k_uzys jest niewykorzystywane
// sk_zw, sk_uzys-kwoty przypisane pracownikowi
// Koszty uzyskania sa odczytywane z opisu pracownika
//    k_uzys := .    
    if (not xodjack_uz) goto koniec
       xx_podstawa := xzbrutto-ueu-uru-ucu
    if(xczyprock_uz) ryczk_uzys  := roundn[xx_podstawa*RejWezP_K["X:k_uzys"]/100,2]
    if(callalg["umowy"]=1 and not(xczyprock_uz)) ryczk_uzys  := RejWezP_K["X:k_uzys"]
     if(xczyprock_uz) sryczk_uzys := sryczk_uzys+ryczk_uzys
     if(callalg["umowy"]=1 and not(xczyprock_uz)) sryczk_uzys := sryczk_uzys+ryczk_uzys
     if(callalg["umowy"]=1) goto omin_to
      if(xczyprock_uz or dodalemk_uzys) goto omin_to
      sk_uzys := sk_uzys+xk_uzys-k_uzys
     if(samodzielna) sk_uzys := sk_uzys-rejwezp_k["sum:s_k_uzys"] 
     if(Not(xczyprock_uz)) dodalemk_uzys := .T.
omin_to:
      if(xczyprock_uz) sk_uzys       := sk_uzys+ryczk_uzys
      if(callalg["umowy"]=1 and not(xczyprock_uz))  sk_uzys       := sk_uzys+ryczk_uzys
   koniec:      
    if(Not(sk_uzys>0))  sk_uzys := .

% POBIERZ-K_ZW.ALG
//    OkAlert["odjac" + xodjack_uz + " uu=" + x_odj_ulgapodatek]
//    if(xodjack_uz)   sk_zw   := xk_zw-k_zw
    if(Not(x_odj_ulgapodatek)) goto omin_to
   sk_zw   := xk_zw-k_zw
  if(samodzielna) sk_zw := xk_zw -rejwezp_k["sum:s_k_zw"]
omin_to:   
    if(Not(sk_zw>0)) sk_zw   := .
//   okalert["POBIERZ-K_ZW sk_zw=" + sk_zw + " xk_zw=" + xk_zw + " k_zw=" + k_zw]

// ---------------------------------------
// usun liste plac
// ---------------------------------------

% USUWAM-NRLIST.ALG
  CallPyt["import place_g | place_g.place_usun_liste()"]
  
% USUN-PLACE.ALG
//okalert["usuwam liste plac z powodu modyfikacji"]
  numertxt   := ToStr["#numerlisty#S:0"]
  RejOp["Z:ZmienKluczRej","1"]
powrot:
  IF(Not(RejOp["Z:ZnajdzRek",symlisty+"*"+numertxt])) goto koniec
  RejOp["Z:UsunRek",""]
  goto powrot
koniec:
// usuniecie danych zwiazanych z podstawa choroby z h_chor.rxr
rejop["hch:zmienkluczrej","6"]
powrot1:
if(not(rejop["hch:znajdzrek",numertxt])) goto koniec1
rejop["hch:usunrek",""]
goto powrot1
koniec1:
// usuniecie danych zwiazanych z podstawa choroby z h_chor2.rxr
rejop["hch2:zmienkluczrej","6"]
powrot2:
if(not(rejop["hch2:znajdzrek",numertxt])) goto koniec2
rejop["hch2:usunrek",""]
goto powrot2
koniec2:
Exitalg[0]
//
% USUN-Z-LISTY-NIEOBECNOSCI.ALG
// usuniecie listy z nieobecnosci
// okalert["usuniecie listy symlisty="+symlisty+"numerlisty="+numerlisty]
  RejOp["CE:OtworzRejsprawdz","NIEOBEC.RXR"]
  RejOp["CE:ZmienKluczRej","2"]
    if(not(RejOp["CE:WezOstatniRek",""])) goto koniec1
if(korektalisty) goto usun_korekta
petla:
    if(not(RejWezP_S["CE:lista"]="@"+symlisty+tostr["#numerlisty#S:0"])) goto dalej
    RejWstawP_S["CE:lista",""]
    RejWstawP_D["CE:datawypl",'']
    dalej:
    IF(not(RejWezP_S["CE:lista1"]="@"+symlisty+tostr["#numerlisty#S:0"])) goto next
    RejWstawP_S["CE:lista1",""]
    RejWstawP_D["CE:datawypl1",'']
next:
    if(RejOp["CE:WezPoprzedniRek",""]) goto petla
goto koniec1
usun_korekta:
rejop["exx:otworzrej","xplarch.rxr"]
data_wyplk := ''
if(rejop["exx:wezpierwszyrek",""]) data_wyplk := rejwezp_d["exx:datawypl"]
petlak:
    if(not(RejWezP_S["CE:lista"]="KOREKTA")) goto dalejk
    RejWstawP_S["CE:lista",rejwezp_s["ce:lista_kor"]]
    RejWstawP_S["CE:lista_kor",""]
    RejWstawP_D["CE:datawypl",data_wyplk]
    dalejk:
    IF(not(RejWezP_S["CE:lista1"]="KOREKTA")) goto nextk
    RejWstawP_S["CE:lista1",rejwezp_s["ce:lista1_kor"]]
    RejWstawP_S["CE:lista1_kor",""]
    RejWstawP_D["CE:datawypl1",data_wyplk]
nextk:
 if(rejwezp_s["ce:lista_kor"]="" and rejwezp_s["ce:lista1_kor"]="") rejwstawp_s["ce:ksiega_kor",""]
    if(RejOp["CE:WezPoprzedniRek",""]) goto petlak
koniec1:
  RejOp["CE:ZamknijRej",""]  

% USUN-Z-LISTY-NADGODZIN.ALG
//if(korektalisty) exitalg[0]
// usuniecie listy z nadgodzin
// okalert["usuniecie listy symlisty="+symlisty+"numerlisty="+numerlisty]
  RejOp["CN:OtworzRejsprawdz","NADGODZ.RXR"]
  RejOp["CN:ZmienKluczRej","2"]
    if(not(RejOp["CN:WezOstatniRek",""])) goto koniec1
if(korektalisty) goto usun_korekta
petla:
    IF(not(RejWezP_S["CN:lista"]="@"+symlisty+tostr["#numerlisty#S:0"])) goto next
    RejWstawP_S["CN:lista",""]
next:
    if(RejOp["CN:WezPoprzedniRek",""]) goto petla
goto koniec1
usun_korekta:
rejop["exx:otworzrej","xplarch.rxr"]
data_wyplk := ''
if(rejop["exx:wezpierwszyrek",""]) data_wyplk := rejwezp_d["exx:datawypl"]
petlak:
    if(not(RejWezP_S["CN:lista"]="KOREKTA")) goto nextk
    RejWstawP_S["CN:lista",rejwezp_s["cN:lista_kor"]]
    rejwstawp_s["cn:lista_kor",""]
    rejwstawp_s["cn:ksiega_kor",""]
nextk:
    if(RejOp["CN:WezPoprzedniRek",""]) goto petlak
koniec1:
  RejOp["CN:ZamknijRej",""]  

// ------------------------------------
// ksiegowanie
// ------------------------------------

% KSIEGOWANIE.ALG
// odlozenie dokumentu ksiegowego
// ksiegowanie odbywa sie przy uzyciu rejestru plksieg.rxr  
  defzmiennaL["czy_do_sum",.T.]
  dl_konta  := 12
  cos := .N.
  defzmiennaS["tekst",""]
  if(Not(StringNaLiczbe[WezZmiennaSrod["FINN-RODZDLUGOSC"]]=.)) dl_konta  := StringNaLiczbe[WezZmiennaSrod["FINN-RODZDLUGOSC"]]
//        if(Not(ksieg_dlrodz=. or ksieg_dlrodz<12)) dl_konta := ksieg_dlrodz
  IF (FinnOp["OpenTemp",""]) goto dalej2
     OkAlert["Nie mog|e otworzy|c ksi|egi do zaksi|egowania p|lac !"]
    goto koniec
dalej2:
    RejOp["X:ZmienKluczRej","7"]
  rejop["kls:otworzrej","plcrozpklas.rjr"]
  rejop["kls:zmienkluczrej","3"]
  if(not(Rejop["mm:otworzrejsprawdz","PLKSIEG.RXR"])) ExitAlg[0]
  if(Not(RejOp["X:WezPierwszyRek",""])) goto koniec1
  RejOp["mm:ZmienKluczRej","7"]
// naglowek dokumentu
  symdok    := "XP"
  st        := ToStr["*#symdok#S,'#d_dzisiaj#S'"]
  FinnLine[st]
  tresc     := ""
  tresc1    := ""
  trans     := ""
powrot3:
        xrodzdekr := RejWezP_K["X:rodzdekr"]
        xopisdekr := RejWezP_S["X:opisdekr"]
        xpracownik := RejWezP_S["X:pracownik"]
        xkontown  := RejWezP_S["X:kontown"]
        xkontoma  := RejWezP_S["X:kontoma"]
    if(xkontoma="" and xkontown="") goto next
        xsymwn    := RejWezP_S["X:symwn"]
        xsymma    := RejWezP_S["X:symma"]
        xsympod   := RejWezP_S["X:symma"]
        xdatawypl := RejWezP_D["X:datapl"]
        xnrlistytxt := RejWezP_S["X:nrlisty"]
        tresc     := xnrlistytxt+" "+xdatawypl+" "+xopisdekr
        trans     := xnrlistytxt
// szukam kwoty ogolnej do dekretu
   xplacab := 0
   xxxx := ""
   klucz := Rejwezp_S["x:klucz1"]
//okalert["klucz="+klucz]
   Rejop["mm:znajdzrek",klucz]
   nn_k := 0
   petla_brutto:
   xplacab := xplacab + rejwezp_k["mm:placab"]
   nn_k := nn_k+1
   if(rejop["mm:weznastepnyrekn",""]) goto petla_brutto
   xplacab := round[xplacab,2]
// szukam atrybutow zadanych kont
        rozrwn    := .N.
        rozrma    := .N.
        rozrpod   := .N.
        rozlwn    := .N.
        rozlma    := .N.
        rozlpod   := .N.
        noactwn   := .N.
        noactma   := .N.
        noactpod  := .N.
        if(xkontown="") goto no_kontown
        xkontown := StrCut[xkontown,0,dl_konta]
//okalert["xkontown=."+xkontown+"."]
  if(not(FinnOp["ZnajdzDok",xkontown])) goto no_kontown
//okalert["xx xkontown="+xkontown+"$rzl="+k_rzl]
        rozrwn    := k_roz
        rozlwn    := k_rzl
        xsymwn    := k_klnazwa
        noactwn   := k_noact
no_kontown:

  if(xkontoma="") goto no_kontoma
        xkontoma := StrCut[xkontoma,0,dl_konta]
  if (not(FinnOp["ZnajdzDok",xkontoma])) goto no_kontoma
        rozrma    := k_roz
        rozlma    := k_rzl
        xsymma    := k_klnazwa
        noactma   := k_noact
no_kontoma:
  if(xkontopod="") goto no_kontopod
  if(not(FinnOp["ZnajdzDok",xkontopod])) goto no_kontopod
        rozrpod   := k_roz
        rozlpod   := k_rzl
        xsympod   := k_klnazwa
        noactpod  := k_noact
no_kontopod:
        typwn     := ""
        typma     := ""
        typpod    := ""
        If(rozrwn)  typwn  := "R" 
        If(rozrma)  typma  := "R" 
        If(rozrpod) typpod := "R" 
        If(Not(rozrwn))  xsymwn  := "" 
        If(Not(rozrma))  xsymma  := "" 
        If(Not(rozrpod)) xsympod := "" 
        If((noactwn)and(Not(xkontown="")))   xkontown  := xkontown+"ZZZ"
        If((noactma)and(Not(xkontoma="")))   xkontoma  := xkontoma+"ZZZ"
        If((noactpod)and(Not(xkontopod=""))) xkontopod := xkontopod+"ZZZ"
// ksiegowanie kwoty brutto
    if(xplacab=. or xplacab=0) goto next
        st := ToStr["""#tresc#S"",#xkontown#S,#xplacab#S:2,#xkontoma#S,,#typwn#S,#xsymwn#S,,#typma#S,#xsymma#S"]
      FinnLine[st]
        st := ToStr["ROZR = ""#trans#S"",'#xdatawypl#S',#xplacab#S:2,WT,'',OAC"]
      If(rozrwn) FinnLine[st]
        st := ToStr["ROZR = ""#trans#S"",'#xdatawypl#S',#xplacab#S:2,T,'',OAC"]
      If(rozrma) FinnLine[st]
nn1_k := 0
xplacabx := 0
powrot3a:
        xkontorzl := RejWezP_S["X:kontorzl"]
        IF(xkontorzl="") xkontorzl := "ZZZ"
	xkontorozlma := xkontorzl
        if (not PustePole["X:kontorozlma"]) xkontorozlma := WezPole_S["x:kontorozlma"]
        xplacab1   := round[RejWezP_K["X:placab"],2]
        if(xplacab1=0 or xplacab1=.) goto next 
      if(rozlwn) nn1_k := nn1_k+1
        st := ToStr["ROZLWN = #xplacab1#S:2,#xkontorzl#S,"]
      if(rozlwn and nn1_k = nn_k) st := ToStr["ROZLWN = #xplacab - xplacabx#S:2,#xkontorzl#S,"]  
      If(rozlwn) FinnLine[st]
      if(rozlwn) xplacabx := xplacabx+xplacab1 
      if(rozlma) nn1_k := nn1_k+1
        st := ToStr["ROZLMA = #xplacab1#S:2,#xkontorozlma#S,"]
      if(rozlma and nn1_k = nn_k) st := ToStr["ROZLMA = #xplacab - xplacabx#S:2,#xkontorozlma#S,"]  
      If(rozlma) FinnLine[st]
      if(rozlma) xplacabx := xplacabx+xplacab1 
      if(rozlma) nn1_k := nn1_k+1
//okalert["xkontown="+xkontown+"$rozlwn="+rozlwn+"$xkontorzl="+xkontorzl+"$xkontoma="+xkontoma+"$rozlma="+rozlma+"$xkontorozlma="+xkontorozlma]
        cos := .T.
next:
  IF(not(RejOp["X:WezNastepnyRek",""])) goto koniec1
  if(rejop["x:nowyklucz",""]) goto powrot3
  goto powrot3a
 koniec1:  
 Rejop["mm:zamknijrej",""]
  if (not L_TT_PLACE) CallPyt["import place_u | place_u.zadania_dodaj_dekret()"]
//  okalert["czy_do_sum="+czy_do_sum+"$cos="+cos+"$tekst="+tekst]
  if(not(czy_do_sum)) goto omin_alert
  if(Not(cos) and tekst="") OkAlert["Brak danych do zaksi|egowania !$Sprawd|x czy w podanym okresie zapisano jak|a|s list|e! $ $Je|sli tak to nale|zy uzupe|lni|c konta ksi|egowe w :$ - wykazie pracownik|ow$ - definicjach sk|ladnik|ow p|lacowych$ - stawkach podatkowych i ubezpieczeniowych."]
  omin_alert:
  if(cos) FinnOp["DokOdl",""]
//rejop["e:zobaczdbf",""]
rejop["e:zmienkluczrej","1"]
if(not(L_TT_PLACE)) goto koniec
  if(cos) callalg["zaznacz-ksiegowanie"]
koniec:
  
% zaznacz-ksiegowanie.alg
//if(strin["KOREKTA",lista]<0) goto lista1
//if(not(rejop["e:znajdzrek",strcut[lista,0,7]+"*"+strcut[lista,7,10]])) exitalg[0]
//goto petla_ksieg
//lista1:
//okalert["lista="+lista+"*"+xnrostlisty]
if(not(rejop["e:znajdzrek",lista+"*"+tostr["#xnrostlisty#S:0"]])) exitalg[0]
petla_ksieg:
rejwstawp_l["e:ksiegowana",.T.]
if( rejop["e:weznastepnyrekn",""]) goto petla_ksieg
// -------------------------
// czy lista plac podstawowa
// ------------------------

% SPRAWDZ-CZY-PODSTAWOWA.ALG
  RejOp["LL:OtworzRejsprawdz","PLLISTY.RXR"]
  If(RejOp["LL:ZnajdzRek",symlisty]) goto oklista
    RejOp["LL:ZamknijRej",""]
    ExitAlg[0]
oklista:
  podstawowa := RejWezP_L["LL:podstawowa"]
  czykup := rejwezp_l["LL:czykup"]
  wyrownanie := rejwezp_l["LL:wyrownanie"]
  samodzielna := rejwezp_l["LL:samodzielna"]
  RejOp["LL:ZamknijRej",""]
  
// ---------------------------------------------
// przepisanie danych do pomocniczego rejestru
// ---------------------------------------------

% PRZEPISZ-DANE-DO-REJESTRU-POMOCNICZEGO.ALG
  pracownik := ""
  RejOp["C:OtworzRejsprawdz","PODATNIK.RXR"]
//  RejOp["BB:ZamknijRej",""]
  if(Not(RejOp["B:WezPierwszyRek",""])) ExitAlg[0]
petla:
  if(Not(dla_skladnikow)) pracownik := RejWezP_S["B:zpracownik"]
  if(dla_skladnikow)      pracownik := RejWezP_S["B:zskladnik"]
  if(not(RejOp["C:ZnajdzRek",pracownik])) goto next
  if(porzadek=3 and Not(wydz_drk="") and Not(RejWezP_S["C:wydzial"]==wydz_drk)) goto next
  RejOp["BB:DodajRek",""]
  RejOp["B:PrzeniesPola","BB:"]
  if(porzadek=2) xRejWstawP_S["BB:nazwisko",RejWezP_S["C:nazwisko"]+" "+RejWezP_S["C:imie1"]+" "+pracownik]
  if(porzadek=3) xRejWstawP_S["BB:nazwisko",RejWezP_S["C:wydzial"]+" "+RejWezP_S["C:nazwisko"]+" "+RejWezP_S["C:imie1"]+" "+pracownik]
//nopracownik:
  RejOp["BB:ZapiszRek",""]
next:
  if(RejOp["B:WezNastepnyRek",""]) goto petla
koniec:
   RejOp["C:ZamknijRej",""]

// -------------------------------
// odczytuje globalne parametry
// -------------------------------
   
% POBIERZ-DANE-GLOBALNE.ALG
  danezkadr := .T.
  RejOp["AE:OtworzRejSprawdz","parprzel.rxr"]
   if(RejOp["AE:WezPierwszyRek",""]) goto okpar
   RejOp["AE:ZamknijRej",""]
   ExitAlg[0]
 okpar:
//  danezkadr  := RejWezP_L["AE:danezkadr"]
  czy_uprawniony := rejwezp_l["AE:uprawniony"]
  liczpostaremu := RejWezP_L["AE:liczpostaremu"]
  algorytmwyl   := RejWezP_S["AE:algorytmwyl"]
  wersja        := RejWezP_S["AE:wersja"]
  dopituumowy := RejWezP_L["AE:dopituumowy"]
  RejOp["AE:ZamknijRej",""]

// --------------------------
// czy podstawowa lista plac
// --------------------------

% POPATRZ-CZY-LISTA-PODSTAWOWA.ALG
  RejOp["LL:OtworzRej1","PLLISTY.RXR"]
  If(Not(RejOp["LL:ZnajdzRek",symlisty])) goto no_lista
    podstawowa := RejWezP_L["LL:podstawowa"]
    czykup := rejwezp_l["ll:czykup"]
    wyrownanie := rejwezp_l["ll:wyrownanie"]
    samodzielna := rejwezp_l["ll:samodzielna"]
no_lista:
    RejOp["LL:ZamknijRej",""]

    
// ----------------------------
// data ostatniego dokumentu
// ----------------------------

% SPRAWDZ-DATE-OSTATNIEGO-DOKUMENTU.ALG
  RejOp["E:OtworzRejsprawdz","PLARCH.RXR"]
  RejOp["E:ZmienKluczRej","5"]
  if(RejOp["E:WezOstatniRek",""]) goto next
  RejOp["E:ZamknijRej",""]
  ExitAlg[1]
next:
 if(Not(RejWezP_L["E:anulowana"])) goto okdata
 if(RejOp["E:WezPoprzedniRek",""]) goto next
ExitAlg[1]
okdata:
  ostdata  := RejWezP_D["E:datawypl"]
  IF(d1<ostdata) goto zladata
  RejOp["E:ZamknijRej",""]
  ExitAlg[1]
zladata:
  OkAlert["Wprowadzona data jest wcze|sniejsza$ od daty z poprzedniej listy p|lac !!"]
  RejOp["E:ZamknijRej",""]
  D_POS := 10
ExitAlg[0]

// -----------------------
// przedzial miesiecy
// -----------------------

% POBIERZ-PRZEDZIAL-MIESIECY.ALG
   datapocz  := StringNaDate[mieswypl+".01"]
if(korektalisty) datapocz :=  StringNaDate[mieswypl_kor+".01"]
   datakon := datapocz
   if(A_date[datapocz,"M"]<12) datakon := C_date[A_date[datapocz,"Y"],A_date[datapocz,"M"]+1,1]-1
   if(A_date[datapocz,"M"]=12) datakon := C_date[A_date[datapocz,"Y"],12,31]
// -------------------
// parametry listy
// -------------------
   
% POPATRZ-NA-PARAMETRY-LISTY.ALG
  podstawowa := .N.
  czykup := .N.
  wyrownanie := .N.
  samodzielna := .N.
  CallAlg["POBIERZ-PARPRZEL"]
  if(Not(podstawowa)) ExitAlg[0]
  RejOp["LL:OtworzRej1","PLLISTY.RXR"]
  If(RejOp["LL:ZnajdzRek",symlisty]) goto oklista
  ExitAlg[0]
oklista:
  podstawowa := RejWezP_L["LL:podstawowa"]
  czykup := rejwezp_l["ll:czykup"]
  wyrownanie := rejwezp_l["ll:wyrownanie"]
  samodzielna := rejwezp_l["ll:samodzielna"]
  RejOp["LL:ZamknijRej",""]
  if(podstawowa)      ExitAlg[0]
  if(Not(podstawowa)) ExitAlg[1]

// -------------------------
// parametry do przelewow
// -------------------------

% POBIERZ-PARPRZEL.ALG
  RejOp["AE:OtworzRejsprawdz","parprzel.rxr"]
  if(RejOp["AE:WezPierwszyRek",""]) goto okpar
  RejOp["AE:ZamknijRej",""]
  ExitAlg[0]
 okpar:
  podstawowa := RejWezP_L["AE:podstawowa"]
  RejOp["AE:ZamknijRej",""]

// ----------------------------
// zapisuje sumy
// ----------------------------
  
% PL_PAR-ZAPISZ-SUMY1.ALG
//okalert["PL_PAR-ZAPISZ-SUMY1="+rok]
        ch_liczyc   := .N.
        ch_przecwyn := .
        ch_najniwyn := .
        ch_ldni     := .
        ch_ldni50     := .
        ch_ldnizop     := .
        ch_do1      := .
        ch_proc1    := .
        ch_od2      := .
        ch_proc2    := .
        ch_lmies    := .
        ch_ksieg    := ""
        ch_porod    := .
        ch_macierz  := .
        ch_opiek    := .
        ch_wyrow    := .
        ch_wych1    := .
        ch_wych2    := .
        ch_wychow   := .
        ch_pogrz    := .
        u_lmies     := .
        uzupelniam := .T.
        xpracownik := ""
        koniec     := .N.
        sumuj      := .T.
        sumadodatnich := .N.
        sumaujemnych  := .N.
        ur_liczyc  := .T.
        ur_lmies   := 3
        wsp_ekw := .
        proc1 := .
        prog1 := .
        proc2 := .
        prog2 := .
        proc3 := .
        prog3 := .
        proc4 := .
        prog4 := .
        xubezzdr := .
        xubezzdro := .	
        xproc    := .
        sum_wyn    := .
        sk_zw      := .
        sk_uzys    := .
        listanumer := ""
        okstawki   := .T.
        zaliczka   := .
        dzaniech   := ''

  CallAlg["WEZ-PARCHOR"]
  
  CallAlg["WEZ-STAWKI"]
  
  RejOp["C:OtworzRejsprawdz","PODATNIK.RXR"]
  RejOp["Q:OtworzRejsprawdz","SUMYNAR.RXR"]
  RejOp["Q:ZmienKluczRej","2"]
//  OkAlert["sprawdz czy tworzyc"]  
//  if(CallAlg["SPRAWDZ-CZY-TWORZYC-SUMY"]=0) goto koniec3
//  OkAlert["wyczysc rej"]  
  RejOp["Q:WyczyscRej",""]
  CallAlg["ZAPISZ-BO-PRACOWNIKOW"]
// petla zliczajaca place i liczbe dni chorob. z ostatnich miesiecy
  xklucz     := ""
  sum_ldni1  := .
  miespocz2  := ""
  miespocz4  := ""
  RejOp["E:OtworzRejsprawdz","PLARCH.RXR"]
  RejOp["E:ZmienKluczRej","7"]
  RejOp["X:OtworzRej1","PLSKLAD.RXR"]
  zero      := "00"
  petla     := 1
  CallAlg["OKRESL-MIESIAC-URLOP"]
  if(ch_ksieg="") petla := 1
  if(not(RejOp["E:WezPierwszyRek",""])) goto koniec1
jestklucz1:  
// sprawdzam czy skladnik spelnia warunki
  if(RejWezP_L["E:anulowana"]) goto next
  if(korektalisty and numerlisty=RejWezP_K["E:nrlisty"]) goto next
  If(Not(RejOp["X:ZnajdzRek",RejWezP_S["E:skladnik"]])) goto next
//    if(ch_liczyc) CallAlg["WYLICZ-DANE-CHOROBOWY"]
  if(ur_liczyc) CallAlg["WYLICZ-DANE-URLOP"]
  if(okstawki)  CallAlg["WYLICZ-DANE-STAWKI"]
next:
  if(RejOp["E:WezNastepnyRek",""]) goto jestklucz1
koniec1:
  RejOp["E:ZamknijRej",""]
koniec2:
  RejOp["X:ZamknijRej",""]
koniec3:
  RejOp["C:ZamknijRej",""]
  RejOp["Q:ZamknijRej",""]
koniec:
esc:
// efektem jest rejestr plchor.rxr z danymi do wylicz.zasilku chorob.i urlopu    

// --------------------
// wez stawki
// --------------------

% WEZ-STAWKI.ALG
//okalert["wez-stawki="+rok]
%< PLACE-PARAMETRY-INIT.ALG  
  CallPyt["import place_g | place_g.place_sprawdz_parametry(""" + rok +  """)"]
  if (proc1 = .) okstawki := .N.
// --------------------------
// parametry do chorobowego
// -------------------------

% WEZ-PARCHOR.ALG

 petla:     
  if (CallPyt["import place_g | place_g.s_rejestr(4)"] = 0) goto petla

  RejOp["H:OtworzRejSprawdz","PARCHOR.RXR"]
  RejOp["H:WezPierwszyRek",""]
  ch_liczyc   := RejWezP_L["H:ch_liczyc"]
  ch_przecwyn := RejWezP_K["H:ch_przecwyn"]
  ch_najniwyn := RejWezP_K["H:ch_najniwyn"]
  ch_ldni     := RejWezP_K["H:ch_ldni"]
  ch_ldni50     := RejWezP_K["H:ch_ldni50"]
  ch_ldnizop     := RejWezP_K["H:ch_ldnizop"]
  ch_do1      := RejWezP_K["H:ch_do1"]
  ch_proc1    := RejWezP_K["H:ch_proc1"]
  ch_od2      := RejWezP_K["H:ch_od2"]
  ch_proc2    := RejWezP_K["H:ch_proc2"]
  ch_lmies    := RejWezP_K["H:ch_lmies"]
  if(ch_lmies = .) ch_lmies := 12
  ch_ksieg    := RejWezP_S["H:ch_ksieg"]
  ch_porod    := RejWezP_K["H:ch_porod"]
  ch_macierz  := RejWezP_K["H:ch_macierz"]
  ch_opiek    := RejWezP_K["H:ch_opiek"]
  ch_wyrow    := RejWezP_K["H:ch_wyrow"]
  ch_wych1    := RejWezP_K["H:ch_wych1"]
  ch_wych2    := RejWezP_K["H:ch_wych2"]
  ch_pogrz    := RejWezP_K["H:ch_pogrz"]
  ch_rodz1   := RejWezP_K["H:ch_rodz1"]
  ch_rodz2   := RejWezP_K["H:ch_rodz2"]
  ch_rodz3   := RejWezP_K["H:ch_rodz3"]
  ch_rodz4   := RejWezP_K["H:ch_rodz4"]
  ch_piel    := RejWezP_K["H:ch_piel"]  
  u_lmies    := RejWezP_K["H:u_lmies"]  
  ur_liczyc  := rejwezp_l["H:url_liczyc"]
  ch_zaszereg  := rejwezp_k["H:ch_zaszereg"]
  wsp_ekw   := rejwezp_k["H:wsp_ekw"]
  RejOp["H:ZamknijRej",""]

// ------------------------
// czy tworzyc sumy
// ------------------------
    
% SPRAWDZ-CZY-TWORZYC-SUMY.ALG
//  okalert["SPRAWDZ-CZY-TWORZYC-SUMY.ALG"]
  if(RejOp["Q:PustyRej",""])  ExitAlg[1]
  if(Not(RejOp["Q:ZnajdzRek","000000000"])) ExitAlg[0]
  if(RejWezP_L["Q:zmiana"]) ExitAlg[1]
  ExitAlg[0]

// ----------------------
// zapisz bo
// ----------------------
  
% ZAPISZ-BO-PRACOWNIKOW.ALG
  If(Not(RejOp["C:WezPierwszyRek",""])) goto koniec
powrot:
  RejOp["Q:DodajRek",""]
  xRejWstawP_S["Q:pracownik",RejWezP_S["C:sym"]]
  xRejWstawP_K["Q:placab",RejWezP_K["C:bo_podstopod"]]
  xRejWstawP_K["Q:proc",RejWezP_K["C:bo_proc"]]
  RejOp["Q:ZapiszRek",""]
next:
  if(RejOp["C:WezNastepnyRek",""]) goto powrot
koniec:

// -----------------------------
// przepisz ze stalych do rejestru pomocniczego ( otwieranego jako temp)
// -----------------------------
    
% stale-PRZEPISZ.ALG

% podstaw_ze_zl.alg
s_podst_er_zl := s_podst_er_zl + rejwezp_k["sumzl:s_podst_er"]
s_podst_cw_zl := s_podst_cw_zl + rejwezp_k["sumzl:s_podst_cw"]
s_podst_er_opod_zl := s_podst_er_opod_zl + rejwezp_k["sumzl:s_podst_er_opod"]
s_podst_cw_opod_zl := s_podst_cw_opod_zl + rejwezp_k["sumzl:s_podst_cw_opod"]
s_podst_er_nobn_zl := s_podst_er_nobn_zl + rejwezp_k["sumzl:s_podst_er_nobn"]
s_podst_cw_nobn_zl := s_podst_cw_nobn_zl + rejwezp_k["sumzl:s_podst_cw_nobn"]
s_podst_z_zl := s_podst_z_zl + rejwezp_k["sumzl:s_podst_z"]
s_podst_z1_zl := s_podst_z1_zl + rejwezp_k["sumzl:s_podst_z1"]
s_podst_z1_opod_zl := s_podst_z1_opod_zl + rejwezp_k["sumzl:s_podst_z1_opod"]
s_ueu_zl := s_ueu_zl + rejwezp_k["sumzl:s_ueu"]
s_uru_zl := s_uru_zl + rejwezp_k["sumzl:s_uru"]
s_ucu_zl := s_ucu_zl + rejwezp_k["sumzl:s_ucu"]
s_uep_zl := s_uep_zl + rejwezp_k["sumzl:s_uep"]
s_urp_zl := s_urp_zl + rejwezp_k["sumzl:s_urp"]
s_uwp_zl := s_uwp_zl + rejwezp_k["sumzl:s_uwp"]
s_nalzdr_zl := s_nalzdr_zl + rejwezp_k["sumzl:s_nalzdr"]
s_zalzdr_zl := s_zalzdr_zl + rejwezp_k["sumzl:s_zalzdr"]
s_zalzdrn_zl := s_zalzdrn_zl + rejwezp_k["sumzl:s_zalzdrn"]
s_zdrownobn_zl := s_zdrownobn_zl + rejwezp_k["sumzl:s_zdrownobn"]
s_zalzdr_nobn_zl := s_zalzdr_nobn_zl + rejwezp_k["sumzl:s_zalzdr_nobn"]
//okalert["pracownik="+spracownik_zl+"$s_zus_opod_zl="+s_zus_opod_zl+"$s_ueu_zl="+rejwezp_k["sumzl:s_ueu"]+"$s_uru_zl="+rejwezp_k["sumzl:s_uru"]+"$s_ucu_zl="+rejwezp_k["sumzl:s_ucu"]+"$s_zus_opod_zl="+rejwezp_k["sumzl:s_zus_opod"]]
s_zus_opod_zl := s_zus_opod_zl + rejwezp_k["sumzl:s_zus_opod"]
s_zus_nobn_zl := s_zus_nobn_zl +rejwezp_k["sumzl:s_zus_nobn"]
% podstaw_ze_zl13.alg
if(rejop["sumzl:znajdzrek",spracownik+"*"+strcut[rokmies,0,4]+"13"]) podstubez1_zl := podstubez1_zl+rejwezp_k["sumzl:s_podst_er"]
//
% zrob_podatnik_temp.alg
rejcy := "c:"
if(callalg["umowy"]=1) rejcy := "cy:"
if(not(rejop[rejcy+"wezpierwszyrek",""])) exitalg[0]
petla_cx:
rejop["cx:dodajrek",""]
rejop[rejcy+"przeniespola","cx:"]
if(pustepole["cx:sym_prac"]) xrejwstawp_s["cx:sym_prac",rejwezp_s[rejcy+"sym"]]
rejop["cx:zapiszrek",""]
if(rejop[rejcy+"weznastepnyrek",""]) goto petla_cx

// W przypadku kilku etatow wyliczenie sumy podstaw 
% podstaw_z_innych_etatow.alg
   if (RejOp["C:ZnajdzRek",xzpracownik]) goto ok_prac
      OkAlert["W rejestrze nie ma pracownika " + xzpracownik + " !"]
      ExitAlg[0]
ok_prac:      
prac_zb := rejwezp_s["c:sym_prac"]
if(prac_zb="") prac_zb := rejwezp_s["c:sym"]
if(not(rejop["cx:znajdzrek",prac_zb])) exitalg[0]
petla_CX:
if(rejwezp_s["cx:sym"]== xzpracownik) goto nastepny_cx
if(rejwezp_s["cx:rodzumowy"]=="INNE") goto podstaw_zl
if(rejop["sumb:znajdzrek",rejwezp_s["cx:sym"]+"*"+strcut[rokmies,0,4]+"13"]) podstubez1_pp := podstubez1_pp +rejwezp_k["sumb:s_podst_er"]
goto podstaw_mies
podstaw_zl:
if(rejop["sumb:znajdzrek",rejwezp_s["cx:sym"]+"*"+strcut[rokmies,0,4]+"13"]) podstubez1_zl := podstubez1_zl + rejwezp_k["sumb:s_podst_er"]
podstaw_mies:
if(not(rejop["sumb:znajdzrek",rejwezp_s["cx:sym"]+"*"+rokmies])) goto nastepny_cx
if(rejwezp_s["cx:rodzumowy"]=="INNE") goto dodaj_zl
s_podst_er_pp := s_podst_er_pp + rejwezp_k["sumb:s_podst_er"]
s_podst_cw_pp := s_podst_cw_pp + rejwezp_k["sumb:s_podst_cw"]
s_podst_er_opod_pp := s_podst_er_opod_pp + rejwezp_k["sumb:s_podst_er_opod"]
s_podst_cw_opod_pp := s_podst_cw_opod_pp + rejwezp_k["sumb:s_podst_cw_opod"]
s_podst_er_nobn_pp := s_podst_er_nobn_pp + rejwezp_k["sumb:s_podst_er_nobn"]
s_podst_cw_nobn_pp := s_podst_cw_nobn_pp + rejwezp_k["sumb:s_podst_cw_nobn"]
s_ueu_pp := s_ueu_pp + rejwezp_k["sumb:s_ueu"]
s_uru_pp := s_uru_pp + rejwezp_k["sumb:s_uru"]
s_ucu_pp := s_ucu_pp + rejwezp_k["sumb:s_ucu"]
s_uep_pp := s_uep_pp + rejwezp_k["sumb:s_uep"]
s_urp_pp := s_urp_pp + rejwezp_k["sumb:s_urp"]
s_uwp_pp := s_uwp_pp + rejwezp_k["sumb:s_uwp"]
s_zus_opod_pp := s_zus_opod_pp + rejwezp_k["sumb:s_zus_opod"]
s_zus_nobn_pp := s_zus_nobn_pp + rejwezp_k["sumb:s_zus_nobn"]
s_zdrownobn_pp := s_zdrownobn_pp + rejwezp_k["sumb:s_zdrownobn"]
s_brutto_pp := s_brutto_pp +  rejwezp_k["sumb:s_brutto"]
s_podstopod_pp := s_podstopod_pp + rejwezp_k["sumb:s_podstopod"]
s_podstopod1_pp := s_podstopod1_pp + rejwezp_k["sumb:s_podstopod1"]
s_podst_z_pp := s_podst_z_pp + rejwezp_k["sumb:s_podst_z"]
s_podst_z1_pp := s_podst_z1_pp + rejwezp_k["sumb:s_podst_z1"]
s_podst_z1_opod_pp := s_podst_z1_opod_pp + rejwezp_k["sumb:s_podst_z1_opod"]
s_zdrownobn_pp := s_zdrownobn_pp + rejwezp_k["sumb:s_zdrownobn"]
s_k_uzys_pp := s_k_uzys_pp + rejwezp_k["sumb:s_k_uzys"]
s_br_odj_wyp_pp := s_br_odj_wyp_pp + rejwezp_k["sumb:s_br_odj_wyp"]
s_br_odj_chor_pp := s_br_odj_chor_pp + rejwezp_k["sumb:s_br_odj_chor"]
s_k_zw_pp := s_k_zw_pp + rejwezp_k["sumb:s_k_zw"]
s_zalzdr_pp := s_zalzdr_pp + rejwezp_k["sumb:s_zalzdr"]
s_zalzdr_nobn_pp := s_zalzdr_nobn_pp + rejwezp_k["sumb:s_zalzdr_nobn"]
s_nalzdr_pp := s_nalzdr_pp + rejwezp_k["sumb:s_nalzdr"]
s_zalzdrn_pp := s_zalzdrn_pp + rejwezp_k["sumb:s_zalzdrn"]
s_nalpod_pp := s_nalpod_pp + rejwezp_k["sumb:s_nalpod"]
s_zalpod_pp := s_zalpod_pp + rejwezp_k["sumb:s_zalpod"]
goto nastepny_cx
dodaj_zl:
s_podst_er_zl := s_podst_er_zl + rejwezp_k["sumb:s_podst_er"]
s_podst_cw_zl := s_podst_cw_zl + rejwezp_k["sumb:s_podst_cw"]
s_podst_er_opod_zl := s_podst_er_opod_zl + rejwezp_k["sumb:s_podst_er_opod"]
s_podst_cw_opod_zl := s_podst_cw_opod_zl + rejwezp_k["sumb:s_podst_cw_opod"]
s_podst_er_nobn_zl := s_podst_er_nobn_zl + rejwezp_k["sumb:s_podst_er_nobn"]
s_podst_cw_nobn_zl := s_podst_cw_nobn_zl + rejwezp_k["sumb:s_podst_cw_nobn"]
s_ueu_zl := s_ueu_zl + rejwezp_k["sumb:s_ueu"]
s_uru_zl := s_uru_zl + rejwezp_k["sumb:s_uru"]
s_ucu_zl := s_ucu_zl + rejwezp_k["sumb:s_ucu"]
s_uep_zl := s_uep_zl + rejwezp_k["sumb:s_uep"]
s_urp_zl := s_urp_zl + rejwezp_k["sumb:s_urp"]
s_uwp_zl := s_uwp_zl + rejwezp_k["sumb:s_uwp"]
s_zus_opod_zl := s_zus_opod_zl + rejwezp_k["sumb:s_zus_opod"]
s_zus_nobn_zl := s_zus_nobn_zl + rejwezp_k["sumb:s_zus_nobn"]
nastepny_cx:
if(rejop["cx:weznastepnyrekn",""]) goto petla_cx
// -----------------------------
// przepisz parametry
// -----------------------------
    
% PL_PAR-PRZEPISZ.ALG
ch_zaszereg := 1
callalg["wez-parchor"]
// wyliczenie dni i godzin dla zakresu dat z listy
// parametr czy zapisywac wyliczenia do rejestru plc_temp.rjr
//okalert["pl_par-przepisz"]
//godz0 := wezgodzine[0]
// jakie juz byly listy dotyczace badanego okresu
listy_z_okresu := ""
xmieswypl := rokwypl+"."+miesiacwypl
callalg["ustal_listy_w_miesiacu"]
  finnop["@1openmain",""]
  poczatek_roku := poczrok_ksieg
  finnop["close",""]
// poprawa - zmienna decydujaca o tym czy linie z brutto=0 przepisywac do place ( do place ->poprawa=.N., do plarcha->poprawa=.T.)
 poprawa := .N.
  RejOp["CB:otworzrejsprawdz","RODZNIEO.RXR"]
  RejOp["CE:otworzrejsprawdz","NIEOBEC.RXR"]
  RejOp["CE:ZmienKluczRej","4"]
  RejOp["CN:otworzrejsprawdz","NADGODZ.RXR"]
  RejOp["CN:ZmienKluczRej","4"]
  RejOp["C:otworzrejsprawdz","PODATNIK.RXR"]
  RejOp["E:otworzrejsprawdz","PLARCH.RXR"]
  RejOp["arch:otworzrej1","PLARCH.RXR"]
  rejop["arch:zmienkluczrej","17"]
  RejOp["SUM:otworzrej1","SUMYNART.RXR"]
  RejOp["J:otworzrejsprawdz","PLCHOR.RXR"]
  RejOp["J:ZmienKluczRej","2"]
  RejOp["chor1:otworzrejsprawdz","PLCHOR1.RXR"]
  RejOp["chor1:ZmienKluczRej","1"]
  if(rejop["chor1:pustyrej",""])  callalg["uzupelnij_rekordy_chor1"]
  RejOp["chor2:otworzrejsprawdz","PLCHOR2.RXR"]
  RejOp["chor2:ZmienKluczRej","1"]
  RejOp["G:OtworzRej","STALE.RXR"]
  RejOp["G:ZmienKluczRej","1"]
  RejOp["GG:OtworzRej","PLSKLAD_PROC.RXR"]
  RejOp["GG:ZmienKluczRej","3"]
  RejOp["Q:otworzrejsprawdz","SUMYNAR.RXR"]
  RejOp["Q:ZmienKluczRej","2"]
  RejOp["X:otworzrej1","PLSKLAD.RXR"]
  RejOp["IP:OtworzRejsprawdz","PLPODST.RXR"]
  RejOp["IP:Zmienkluczrej","5"]
  RejOp["Y:OtworzRejsprawdz","PLPOWIAZ.RXR"]
//  REjOp["Y:ZmienKluczRej","8"]
  REjOp["Y:ZmienKluczRej","11"]
  RejOp["POW:otworzrej1","PLPOWIAZ.RXR"]
  REjOp["POW:ZmienKluczRej","10"]
  Rejop["PPX:otworzrej1","PRZEBIEG.RXR"]
  Rejop["PPX:zmienkluczrej","5"]
  rejop["spx:otworzrejsprawdz","sklad_powiaz.rjr"]
  Rejop["spx:zmienkluczrej","2"]
  rejop["tt:otworzrejtemp","pltmp.rxr"]
  rejop["hc:otworzrejtemp","h_chor.rxr"]
  rejop["hc:zmienkluczrej","3"]
  rejop["hc2:otworzrejtemp","h_chor2.rxr"]
  rejop["hc2:zmienkluczrej","4"]
  IF(Not(RejOp["Y:Szukajrek",symlisty+"*0*T*0"])) goto dalej
Ustawczekajinfo["start4","Pobieranie danych .... prosz|e czeka|c"]
// ustalenie daty poczatku gromadzenia danych w module
data_pocz_mod_s := ""
callalgfile["place/place_odtwarzanie_sum.alg","ustal_pocz_modulu"]
first_cykl := .T.
powrot:
  if(not(Rejwezp_s["y:symlista"]==symlisty)) goto koniec
// sprawdzenie czy skladnik jest przypisany do listy a w przypadku korekty - czy nie wystepowal na liscie korygowanej
if(korektalisty) goto sprawdz_zrodlo
  if(Not(RejWezP_L["Y:zaznacz"])) goto next
goto wspolne_zaznacz
sprawdz_zrodlo:
if(RejWezP_L["Y:zaznacz"]) goto wspolne_zaznacz
  RejOp["E:ZmienKluczRej","7"]
  IF(RejOp["E:ZnajdzRek",symlisty+"*"+ToStr["#numerlisty#S:0"]+"*"+RejWezP_S["Y:pracownik"]+"*"+RejWezP_S["Y:skladnik"]]) goto wspolne_zaznacz
goto next
wspolne_zaznacz:
if(not(rejop["c:znajdzrek",RejWezP_S["Y:pracownik"]])) goto next
  if(RejWezP_S["Y:pracownik"]== xpracownik and not(first_cykl)) goto omin_platnosci
  if(RejWezP_S["Y:pracownik"]== xpracownik) goto pobierz_zmienne
        dataprzelm0 := ''
        dataprzel  := ''
        kwotaprzel  := .
        kwotaprzel2 := .
        kwotagotowka := .
        kordwypl := ''
        dataprzel2  := ''
// odczytanie danych z kadr dla pracownika
xpracownik := RejWezP_S["Y:pracownik"]
pobierz_zmienne:
first_cykl := .N.
%< POBIERZ-DANE-Z-MODULU-KADRY-PRZED.ALG
//okalert["maria1 pracownik="+xpracownik+"$wynagr_zasadnicz="+wynagr_zasadnicz+"$wynagr_podstawa="+wynagr_podstawa]
   if(podstawowa) goto omin_ustawienia_kdr
   il_godz_robocz := 1
   il_dni_robocz := 1
   rzil_godz_robocz := 1
   rzil_dni_robocz := 1
   dni_choroby := 0
   gdz_choroby := 0
//
//podst_til_gdz_all := 1
   rzil_dni_all := 1
   rztil_dni_all := 1
   dla_chor := 30
   ildnirob_bezplatny := 0
   ildnirob_nn := 0
   ildnirob_bww := 0
   il_dni_przeprac := 1
   il_godz_przeprac := 1
   omin_ustawienia_kdr:
//if(RejWezP_S["Y:pracownik"]="001") godz1 := wezgodzine[0]
// odczytanie skladek zus przypisanych pracownikowi
// odczytanie skladnikow wchodzacych do osobistego zaszeregowania(zasadn+ dod. funkc)
podstawa_zz := .
podstawa_oko := .
nadgodz_bn := .
nadgodz_bd := .
wyrownanie_1 := .
wyrownanie_2 := .
wyr_rok := .
wyr_mies := .
wyr_dni := .
last_data_zm := ''
last_stawka11 := .
last_miegodz := ""
sklad_zd := ""
sk1 := ""
sk2 := ""
// zmienne  dotyczace zmiany wymiaru czasu pracy - wykorzystywane  do celow wyliczenia chorobowego
last_wymiar_zm := ''
czy_kom_wymiar := .N.
wymiar_old := 0
wymiar_new := 0
wymiar_prac := 0
wymiar_prac_s := ""
wykaz_zmian_wymiarow := ""
wykaz_zmian_wymiarow1 := ""
//wymiar czasu pracy w miesiacu z ktorego wyplata wymiar_prac_m
wymiar_prac_m := .
dd1 := stringnadate[mieswypl+".01"]
d_data := dd1
 CallSl["PLACE_G->daj_koniec_mies()"]
dd2 := d_data
if(not(rejop["ppx:szukajrek",RejWezP_S["Y:pracownik"]+"*70.01.01"])) goto po_pp
 petlapp:
 if(not(rejwezp_s["ppx:sym"]==RejWezP_S["Y:pracownik"])) goto po_pp
 sk1 := rejwezp_s["ppx:skladnik1"]
 sk2 := rejwezp_s["ppx:skladnik2"]
if(rejwezp_s["ppx:miegodz"]=="Miesi|ac") goto dane_pp
if(last_stawka11=rejwezp_k["ppx:wynagrodz"]) goto dane_pp
last_stawka11 := rejwezp_k["ppx:wynagrodz"]
last_miegodz := rejwezp_s["ppx:miegodz"]
last_data_zm := rejwezp_d["ppx:dataod"]
dane_pp:
// wyliczenie przepracowanego w firmie czasu - dla potrzeb ustalenia % minimalnej
lata := .
miesiace := .
dni := .
dataod := rejwezP_d["ppx:dataod"]
datado := rejwezp_d["ppx:datado"]
if(not(datado='')) goto omin_przebieg
d_data := stringnadate[mieswypl+".01"]
if(d_data>dataod) goto omin_przebieg1
 CallSl["PLACE_G->daj_koniec_mies()"]
datado := d_data
omin_przebieg:
callalg["WYLICZ-ROK-MIE-DZIE"]
wyr_rok := wyr_rok+lata
wyr_mies := wyr_mies+miesiace
wyr_dni := wyr_dni + dni
omin_przebieg1:
//
// osobiste zaszeregowanie pracownika od 03.04.2007 - tylko zasadnicza
sklad_zd := "--"+sk1+"--"
if(ch_zaszereg=2) sklad_zd := "--"+sk1+"--"+sk2+"--"
// kiedy zmieniany wymiar pracy
wymiar_prac := Roundn[stringnaliczbe[rejwezp_s["ppx:wymiar1"]]/stringnaliczbe[rejwezp_s["ppx:wymiar2"]],2]
//okalert["dataod="+dataod+"$datado="+datado+"$dd1="+dd1+"$dd2="+dd2]
if(dd2>= dataod and dd2 <= datado) wymiar_prac_m := Roundn[stringnaliczbe[rejwezp_s["ppx:wymiar1"]]/stringnaliczbe[rejwezp_s["ppx:wymiar2"]],2]
wymiar_prac_s := rejwezp_s["ppx:wymiar1"]+"/"+rejwezp_s["ppx:wymiar2"]
if(wymiar_prac = wymiar_new) goto nastepny_ppx
wymiar_old := wymiar_new
wymiar_new := wymiar_prac
last_wymiar_zm := rejwezp_d["ppx:dataod"]
wykaz_zmian_wymiarow := wykaz_zmian_wymiarow+last_wymiar_zm+"---" 
wykaz_zmian_wymiarow1 := wykaz_zmian_wymiarow1+"--"+last_wymiar_zm+":"+Tostr["#wymiar_old#R4:2"]+"--"
nastepny_ppx:
 if(rejop["ppx:weznastepnyrek",""]) goto petlapp
if (wymiar_new=0) wymiar_new := 1
 po_pp:
// tu okreslenie ilosci lat przepracowanych w zakladzie
if(wyr_rok>=1) goto omin_wyliczenie_lat
wyr_mx := Tostr["#wyr_dni/30#S:2"]
wyr_dni := wyr_dni- 30*stringnaliczbe[strcut[wyr_mx,0,strlen[wyr_mx]-3]]
wyr_mies := wyr_mies+stringnaliczbe[strcut[wyr_mx,0,strlen[wyr_mx]-3]]
wyr_mx := Tostr["#wyr_mies/12#S:2"] 
wyr_mies := wyr_mies- 12*stringnaliczbe[strcut[wyr_mx,0,strlen[wyr_mx]-3]]
wyr_rok := wyr_rok+stringnaliczbe[strcut[wyr_mx,0,strlen[wyr_mx]-3]]
omin_wyliczenie_lat:
//
//okalert["pracownik="+RejWezP_S["Y:pracownik"]+"$wykaz_zmian_wymiarow="+wykaz_zmian_wymiarow]
// sprawdzenie czy lista za pierwszy miesiac zatrudnienia lub pierwszy pe�ny miesiac zatrudnienia
pierwszy_mies := .N.
pocz_data := rejwezp_d["c:dzatrud"]
// tu sprawdzenie czy zatrudniony od pierwszego dnia roboczego
pel_mies := .N.
czy_roboczy := .N.
dataod := pocz_data - A_date[pocz_data,"D"]+1
if(dataod = pocz_data) pel_mies := .T.
d_data := pocz_data
callsl["PLACE_G->daj_koniec_mies()"]
if(pel_mies) goto zatr_caly_mies
if(strcut[studatas[d_data+1],2,5]<xmieswypl) goto nie_sprawdzaj_mies
datado := pocz_data-1
date_beg := dataod
 KL_D_ROK := A_DATE[Poczrok_ksieg,"Y"]
 KL_D_LITERA := "K:"
 KL_D_LICZBA := .
 KL_D_LICZBAMIN := .
 KL_D_PRAC := .N.
KL_D_GRUPA := rejwezp_s["c:kalengrupa"]
if(KL_D_GRUPA = "") KL_D_GRUPA := "<podstawowy>"
 CallAlg["KL-OTWORZ-KALENDARZ"]


date_end := datado
callalg["czy_jest_roboczy"]
CallAlg["KL-ZAMKNIJ-KALENDARZ"]
if(not(czy_roboczy)) pel_mies := .T.
zatr_caly_mies:
if(strcut[studatas[pocz_data],2,5]==xmieswypl) pierwszy_mies := .T.
if(not(pel_mies) and strcut[studatas[d_data+1],2,5]==xmieswypl) pierwszy_mies := .T.
nie_sprawdzaj_mies:
rejop["tt:wyczyscrej",""]
// sprawdzenie czy nalezy na nowo wyliczyc podstawe chorobowego, ostatnia stawka i %
czy_liczyc_podstchor := .T.
kw_podstchor_old := .
pr_podstchor_old := .
lista_odlo_l := .N.
czy_byl_reh := .N.
xxpracownik := rejwezp_s["y:pracownik"]
dataod3 := ''
datado3 := ''
kod_chor3 := ""
lista_old := ""
skladnik_old := ""
//if(xxpracownik=="1AZ")okalert["wchodze do sprawdz_czy_liczyc_podstchor="+xxpracownik]
callalg["sprawdz_czy_liczyc_podstchor"]
//if(xxpracownik="1AZ") okalert["dataod3="+dataod3+"$datado3="+datado3+"$czy_liczyc_podstchor="+czy_liczyc_podstchor]
// odczytanie przyslugujacych pracownikowi skladnikow plac stalych i zmiennych
// sklad_chor -skladniki wchodzace do chorobowego aktualnie przyporzadkowane  pracownikowi
// sklad_chor_grupy - grupy skladnikow wchodzace do chorobowego aktualnie przyporzadkowane  pracownikowi
// sklad_zns - skladniki sta�e wchodzace do wynagrodzenia normalnego aktualnie przyporzadkowane pracownikowi
// sklad_znz - skladniki zmienne wchodzace do wynagrodzenia normalnego aktualnie przyporzadkowane pracownikowi
// sklad_zmiennew - wszystkie skladniki zzmienne przyporzadkowane aktualnie pracownikowi
sklad_stale := ""
sklad_zmienne := ""
sklad_stale_ekw := ""
sklad_zmienne_ekw := ""
sklad_zmiennew := ""
sklad_kody := ""
sklad_kody_ekw := ""
sklad_chor := ""
sklad_chor_grupy := ""
sklad_lista := ""
kwota_stale := 0
kwota_zmienne := 0
sklad_zns := ""
sklad_znz := ""
rejop["pow:wezpierwszyrek",""]
if(not(rejop["POW:znajdzrek",RejWezP_S["Y:pracownik"]+"*T"])) goto koniec
petla_pow:
pskladnik := rejwezp_s["pow:skladnik"]
rejop["x:znajdzrek",pskladnik]
if(not(rejwezp_l["x:czystaly"])) sklad_zmiennew := sklad_zmiennew +"--"+pskladnik+"--"
if(rejwezp_l["x:ekwiwalent"] and rejwezp_l["x:czystaly"] and not(rejwezp_l["x:ponad_mies"])) sklad_stale := sklad_stale +"--"+pskladnik+"--"
if(rejwezp_l["x:ekwiwalent"] and rejwezp_l["x:czystaly"] and rejwezp_l["x:ponad_mies"]) sklad_stale_ekw := sklad_stale_ekw +"--"+pskladnik+"--"
if(rejwezp_l["x:ekwiwalent"] and not(rejwezp_l["x:czystaly"]) and not(rejwezp_l["x:ponad_mies"])) sklad_zmienne := sklad_zmienne +"--"+pskladnik+"--"
if(rejwezp_l["x:ekwiwalent"] and not(rejwezp_l["x:czystaly"]) and rejwezp_l["x:ponad_mies"]) sklad_zmienne_ekw := sklad_zmienne_ekw +"--"+pskladnik+"--"
if(rejwezp_l["x:ekwiwalent"] and not(rejwezp_l["x:czystaly"]) and not(rejwezp_l["x:ponad_mies"])) sklad_kody := sklad_kody + "--"+ rejwezp_s["x:rodzskl"]+"--"
if(rejwezp_l["x:ekwiwalent"] and not(rejwezp_l["x:czystaly"]) and rejwezp_l["x:ponad_mies"]) sklad_kody_ekw := sklad_kody_ekw + "--"+ rejwezp_s["x:rodzskl"]+"--"
if(rejwezp_l["x:chorobowe"]) sklad_chor := sklad_chor +"--"+pskladnik+"--"
if(rejwezp_l["x:chorobowe"] and not(rejwezp_s["x:grupa"]="")) sklad_chor_grupy := sklad_chor_grupy +"--"+rejwezp_s["x:grupa"]+"--"
if(rejwezp_l["x:czynadgodz"] and rejwezp_l["x:czystaly"]) sklad_zns := sklad_zns+"--"+pskladnik+"--"
if(rejwezp_l["x:czynadgodz"] and not(rejwezp_l["x:czystaly"])) sklad_znz := sklad_znz+"--"+pskladnik+"--"
if(rejwezp_S["pow:symlista"]==symlisty) sklad_lista := sklad_lista+"--"+pskladnik+"--"
if(rejop["pow:weznastepnyrekN",""]) goto petla_pow
//if(xpracownik="006") okalert["xpracownik="+RejWezP_S["Y:pracownik"]+"$sklad_stale="+sklad_stale+"$sklad_zmienne="+sklad_zmienne+"sklad_kody="+sklad_kody]
// odczytanie stalych z rejestru stalych lub do potrzeb naliczen poprzedniej listy
// odczytanie zdefiniowanych skladnikow wchodzacych do podstawy urlopowego
sklad_urlop := ""
if(not(rejop["x:wezpierwszyrek",""])) goto omin_sklad_urlop
petla_sklad_urlop:
if(rejwezp_l["x:ekwiwalent"]) sklad_urlop := sklad_urlop +"--"+rejwezp_s["x:symsklad"]+"--"
if(rejop["x:weznastepnyrek",""]) goto petla_sklad_urlop
omin_sklad_urlop:
//if(RejWezP_S["Y:pracownik"]="001") godz2 := wezgodzine[0]
// zmienna dla stazu
procstaz := .
procstaz1 := .
if(korektalisty) goto omin_platnosci
if(not(nowa_lista) and jestlista) goto przepisz_z_probnych
goto omin_platnosci
przepisz_z_probnych:
  omin_platnosci:
        xpracownik   := RejWezP_S["Y:pracownik"]
        xskladnik  := RejWezP_S["Y:skladnik"]
// odczytanie danych z kadr dla pracownika
        xrodz      := ""
        xtyp := ""
        xkodprac   := ""
        xmiegodz   := "" 
        xlista     := ""
        xnrlisty   := .
        xstawka    := .
        xgnorma    := .
        xlgodzin   := .
        gdzpracy := .
        gdzpracyu := .
        gdzpracyu_all := .
        gdzpracyu_nn := .
        dnipracyu := .
        dnipracyu_all := .
        dnipracyu_nn := .
        dnipracyu_bww := .
        dnipracyu_kal := .
		gdzuop_szk := .
        xgroznica  := .
        xzbrutto   := .
        zbrutto    := .
        xzbrutton   := .
        zbrutton    := .
        xzk_uzys   := .
        sk_uzys    := .
        xzpodstopod := .
        xzprocpod  := .
        xznalpod   := .
        xk_zw      := .
        xk_uzys    := .
        sk_zw      := .
        xzk_zw     := .
        xzzalpod   := .
        xznetto    := .
        spodstopod := 0
        spodstopod1 := 0
        sprocpod   := 0
        szalpod    := 0
        snalpod    := 0
        snetto     := 0
        sbrutto    := 0
        spodst_er  := 0
        spodst_cw  := 0
        spodst_z   := 0
        spodst_z1   := 0
        spodstkup   := 0
        spodstkup1   := 0
        sbr_odj_chor := 0
	sbr_odj_wyp := 0
	spodst_er_opod := 0
	spodst_cw_opod := 0
	szus_opod := 0
	szdrownobn := 0
	spodst_z1_opod := 0
	spodst_er_nobn := 0
	spodst_cw_nobn := 0
	szus_nobn := 0
	szalzdr_nobn := 0
        sueu       := 0
        suru       := 0
        sucu       := 0
        szalzdr    := 0
        szalzdrn    := 0
        snalzdr    := 0
        suep       := 0
        sfep       := 0
        sfgp       := 0
        sfpp       := 0
        surp       := 0
        suwp       := 0
        ueu        := 0
        uru        := 0 
        ucu        := 0
        uep        := 0
        urp        := 0
        uwp        := 0
        szasilek   := 0
        skorpod    := 0
        skorzdrow  := 0
        skorpit    := 0
        podst_z    := 0
        kw_obniz   := .
        os_rodz    := .
        kw_rodz    := .
        czywychow  := ""
        kw_wych    := .
        kw_inne    := .
        os_piel    := .
        kw_piel    := .
        dnipracy   := .
        wynpodst   := .
        placabp := .
        reh_procent := .
        dataod1    := ''
        datado1    := ''
        kod_chor   := ""
        dataod2    := ''
        datado2    := ''
        kod_chor2  := ""
//        dataod3    := ''
//        datado3    := ''
//        kod_chor3  := ""
        dataod4    := ''
        datado4    := ''
        kod_chor4  := ""
        dataod5    := ''
        datado5    := ''
        kod_chor5  := ""
        spotrac    := .
        dowypl     := .
        xdokid     := .
        xdokid1    := ""
        xpnaliczac := .N.
        xppobierac := .T.
        xczyprock_uz := .N.
        premsklad1  :=""
        premsklad2  :=""
        stazsklad1 := ""
        stazsklad2 := ""
        msklad1 := ""
        msklad2 := ""
        mproc := .
	form_symbol := ""
	form_proc   := .
        dokid_prac  := .
        xwydzial    := ""
        rodzwynagr  := .
        rodzzwoln  := .
        kwota_zw   := .
        procnadlicz := .
        n_normalne := .T.
        n_dodatek := .T.
        n_podstawa := .N.
        procnocne   := .
        n_procpodst := .
        n_podst := ""
        stazpocz := .
        stazprocpocz := .
        stazskok := .
        stazokres := . 
        stazprockon := .
        uzupelniany := .N.
        uzupelnianynu := .N.
        uzupelnianynn := .N.
        uzupelnianycm := .N.
        xczyczescpodst := .N.
        xczy_pow_zl := .N.
        xchorobowe := .N.
        xczynadgodz := .N.
        xponad_mies := .N.
        xczyzz := .N.
	xczystaly := .N.
        xmnozyc := .N.
        xtrzyproc := .
        xtrzybiez := .N.
        xtrzylaczyc := .N.
        xpoziom := "01"
        xmies_url := 1
        xmies_kwartal := 1
        xod_mies := 0  
	placab_uzu := .
	mies_uzu := ""
        xplacabp := . 
        defzmiennaS["takczynie","1"]
    CallAlg["POBIERZ-DANE-PRACOWNIK1"]
data_zat := rejwezp_d["c:dzatrud"]
data_zw := rejwezp_d["c:dzwolnien"]
    if(takczynie="2") goto next
    CallAlg["POBIERZ-DANE-SKLADNIK"]
gdz_urlop := ilgdzrob_wypoczynk + ilgdzrob_oko + ilgdzrob_szk
   xrodz_str := "--1--2--3--11--12--13--14--19--111--311--312--313--314--319--321--322--325--327--331--332--"
   rodzwynagr_str := "--2--3--6--7--8--9--"
////okalert["XPRACOWNIK="+XPRACOWNIK+"$]
//if(xpracownik=="1AZ") okalert["1.sprawdzenie dataod3="+dataod3+"$datado3="+datado3+"$lista_old="+lista_old]
    if(rej_stalych)                   CallAlg["POBIERZ-ZE-STALYCH"]
    if(nowa_lista and jestlista)      CallAlg["POBIERZ-Z-ARCHIWUM"]
//if(xpracownik=="1AZ") okalert["2.sprawdzenie dataod3="+dataod3+"$datado3="+datado3+"$lista_old="+lista_old]
//    if(nowa_lista and jestlista)      CallAlg["POBIERZ-Z-ARCHIWUM-PRZEPISZDOZMIENNYCH"]
    if(Not(nowa_lista) and jestlista) CallAlg["POBIERZ-Z-PROBNYCH"]
    if(Not(xpnaliczac) and Not(przegladanie))    goto next
    if(korektalisty and not(podstawowa)) goto pomijam
    if(korektalisty and not(danezkadr)) goto pomijam
//    okalert["nowa_lista="+nowa_lista+"$jestlista="+jestlista]
    defzmiennaL["zmien_stawka",.T.]
    if(Not(nowa_lista) and jestlista) goto pomijam1
    if(korektalisty) goto pomijam1
//okalert["xxx przeszedl"]
//    okalert["rej_stalych="+rej_stalych+"$rodzwynagr="+rodzwynagr+"$premsklad1="+premsklad1]
    if(rej_stalych and rodzwynagr=1 and Not(premsklad1="" and premsklad2="")) CallAlg["WYLICZ-PREMIE"]
//    if(rej_stalych and rodzwynagr=4)
   omin_ustawienia:
    if(rodzwynagr=2) CallAlg["WYLICZ-GODZINY-NADLICZBOWE"]
    if(rodzwynagr=3) CallAlg["WYLICZ-GODZINY-NOCNE"]
    if(rej_stalych and rodzwynagr=5) CallAlg["WYLICZ-DODATEK-STAZOWY"]
    if(rodzwynagr=6) CallAlg["WYLICZ-SKLADKE-ZWIAZKOWA"]
//okalert["wynagr_zasadnicz="+wynagr_zasadnicz]
    if(rodzwynagr=8) CallAlg["WYLICZ-TRZYNASTKE"]
    if(rodzwynagr=9) CallAlg["WYLICZ-kwartalne"]
    if(rodzwynagr=10) CallAlg["WYLICZ-Z-PODSTAWY"]
    if(rodzwynagr=7) CallAlg["WYLICZ-FORMULE"]
//    IF(xrodz=="5011") CallAlg["WYLICZ-ZAS_RODZINNY"]
//    IF(xrodz=="5012") CallAlg["WYLICZ-ZAS_PIELEGNAC"]
//    IF(xrodz=="5013") CallAlg["WYLICZ-ZAS_WYCHOWAWCZY"]
//    If(xrodz=="5020") CallAlg["ZNAJDZ-KREDYT1"]
//    If(xrodz=="5021") CallAlg["ZNAJDZ-KREDYT2"]
    xplacabp := xzbrutto 
    if(not(danezkadr)) goto pomijam
    if(jestlista) goto pomijam
//    if(rej_stalych) goto pomijam
//    if(not(podstawowa)) goto pomijam
    if(not(podstawowa)) goto pomijam_zkadr
    zmien_stawka := .T.
//    if(xrodz=="111") okalert["mmm jest"]
    IF(xrodz=="1")   CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="2")   CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="3")   CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="9")   CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="11")  CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="12")  CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="13")  CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="14")  CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="19")  CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="111") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="311") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="312") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="313") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="314") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="319") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="321") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="322") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="325") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="327") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="331") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="332") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
wykaz_kodow_kadry := "--1--2--3--9--11--12--13--14--19--111--311--312--313--314--319--321--322--325--327--331--332--50--"
if(strin["--"+xrodz+"--",wykaz_kodow_kadry]<0) callalg["wylicz-liczbe-dni-pozostale"]
pomijam_zkadr:
    xplacabp := xzbrutto
// ustalenie  danych dotyczacych dni i godzin pracy
   dnipracy := il_dni_przeprac
   gdzpracy := il_godz_przeprac
   gdzpracyu := il_godz_przeprac+ilgdzrob_oko+ ilgdzrob_wypoczynk+ilgdzrob_szk
   gdzuop_szk := ilgdzrob_oko+ilgdzrob_szk
   gdzpracyu_all := rzil_godz_robocz
   gdzpracyu_nn := ilgdzrob_nn
   dnipracyu := il_dni_przeprac+ildnirob_wypoczynk + ildnirob_oko + ildnirob_szk
   dnipracyu_all := rzil_dni_robocz
   dnipracyu_nn :=  ildnirob_nn
   dnipracyu_bww :=  ildnirob_bww
   dnipracyu_kal := il_dni_robocz
   if(rodzwynagr=8) goto pomijam
   if(rodzwynagr=9 and not(xmies_kwartal=1 and xod_mies=0)) goto pomijam
// korekta wartosci skladnikow  nie wchodzacych do podstawy chorobowego i przyslugujacych w okresie niepl skladek zus
// maria
// tu w przypadku skladnika miesiecznego i niewpisanej ilosci - wpisanie 1
   if(xmiegodz=="Miesi|ac" and xlgodzin=.) xlgodzin := 1  
   if(xlgodzin=. or xlgodzin=0) goto pomijam
   if(xstawka=. or xstawka=0) goto pomijam
//   xxbrutto := roundn[xstawka*xlgodzin,2]
   xxbrutto := xzbrutto
//if(xpracownik="MMMM1" and xrodz=="50") okalert["xzbrutto="+xzbrutto+ "$rzil_godz_robocz="+rzil_godz_robocz+"$il_godz_robocz="+il_godz_robocz+"$uzupelnianycm="+uzupelnianycm]
   if(uzupelnianycm and strin["--"+xrodz+"--",xrodz_str]<0 and xmiegodz=="Miesi|ac" ) xxbrutto := roundn[xplacabp*rzil_godz_robocz/il_godz_robocz,2]
   if(uzupelnianycm and strin["--"+xrodz+"--",xrodz_str]<0 and xmiegodz=="Miesi|ac" ) xzbrutton := xxbrutto
//if(xpracownik="MMMM1" and xrodz=="50") okalert["xxbrutto="+xxbrutto]
   if(not(xczynadgodz)) goto omin_to
// przyjmowane wynagrodzenie jakie by�oby gdyby pracowa� ca�y miesi�c
   if(not(xrodz=="11")) nadgodz_bn := nadgodz_bn+ xxbrutto
   if(xrodz=="11")  nadgodz_bn := nadgodz_bn + wynagr_podstawa1
//
   if(not(xrodz=="11") and strin["--"+xskladnik+"--",sklad_zd]>-1) nadgodz_bd := nadgodz_bd+ xxbrutto
//   if(xrodz=="11" and strin["--"+xskladnik+"--",sklad_zd]>-1) nadgodz_bd := nadgodz_bd + wynagr_podstawa
   if(xrodz=="11" and strin["--"+xskladnik+"--",sklad_zd]>-1) nadgodz_bd := nadgodz_bd + wynagr_podstawa1
   omin_to:
   dla_chor := rzil_dni_all
   if(rzil_dni_all=rztil_dni_all) dla_chor := 30
   xxstawka_ch := roundn[xxbrutto/dla_chor,2]
   dni_choroby := ildniall_lekarsk00+ildniall_lekarsk80+ildniall_lekarsk70+ildniall_lekarsk75+ildniall_lekarsk90
   gdz_choroby := ilgdzall_lekarsk00+ilgdzall_lekarsk80+ilgdzall_lekarsk70+ilgdzall_lekarsk75+ilgdzall_lekarsk90
//   dni_nu := ildnirob_bezplatny-ildnirob_nn
//   dni_nn := ildnirob_nn
   dni_nu := ilgdzrob_bezplatny-ilgdzrob_nn
   dni_nn := ilgdzrob_nn
   xodjac_ch := roundn[xxstawka_ch* dni_choroby,2]
   if(rzil_godz_robocz- gdz_choroby<=0) xodjac_ch := xxbrutto
   xodjac_nu := roundn[(xxbrutto/rzil_godz_robocz)* dni_nu,2]
   xodjac_nn := roundn[(xxbrutto/rzil_godz_robocz)* dni_nn,2]
   if(xchorobowe) goto sprawdz_uzu
   if(not(xczyczescpodst)) goto sprawdz_uzu
   if(xczy_pow_zl) xybrutto := xodjac_ch
   if(not(xczy_pow_zl)) xybrutto := xxbrutto-xodjac_ch
   xstawka := xybrutto
   if(xmnozyc) xstawka := roundn[xybrutto/xlgodzin,2]
   xzbrutto := xstawka
   if(xmnozyc) xzbrutto := roundn[xstawka*xlgodzin,2]
   xxbrutto := xzbrutto
   if(uzupelnianynu or uzupelnianynn) goto sprawdz_uzu
    goto pomijam
    sprawdz_uzu:
// tu wyliczenie dla skladnikow godzinowych liczonych jak premie
   if(not(rodzwynagr=1)) goto omin_premie
   if( xmiegodz="" or xmiegodz=="Miesi|ac") goto omin_premie
   xzbrutto := xstawka
   if(xmnozyc and xmiegodz=="Godzin|e") xzbrutto := xstawka * il_godz_przeprac 
   if(xmiegodz=="Godzin|e") xlgodzin := il_godz_przeprac
   if(xmnozyc and xmiegodz=="Dzie|n") xzbrutto := xstawka * il_dni_przeprac 
   if(xmiegodz=="Dzie|n") xlgodzin := il_dni_przeprac
   goto pomijam 
//
omin_premie:
//    if(xrodz="19") okalert["xbrutton="+xzbrutton] 
    if(xrodz=="11" or xrodz=="19" or xponad_mies) goto pomijam
//if(xpracownik="MMMM1" and xrodz=="50") okalert["000 xxbrutto="+xxbrutto]
    xybrutto := xxbrutto
    if(not(uzupelniany or uzupelnianynu or uzupelnianynn or uzupelnianycm)) goto pomijam
    if(not(uzupelniany or uzupelnianynu or uzupelnianynn)) goto pomijam_licz
//   okalert["xybrutto="+xybrutto+"$xodjac_ch="+xodjac_ch +"$xodjac_nu="+xodjac_nu +"$xodjac_nn="+xodjac_nn]
   if(not(xczyczescpodst) and uzupelniany and xchorobowe) xybrutto := xybrutto-xodjac_ch
   if(uzupelnianynu) xybrutto := xybrutto-xodjac_nu
   if(uzupelnianynn) xybrutto := xybrutto-xodjac_nn
   if(xmiegodz=="Dzie|n") xlgodzin := il_dni_przeprac
   if(xmiegodz=="Godzin|e")  xlgodzin := il_godz_przeprac
   pomijam_licz:
//   if(not(uzupelnianycm or strin["--"+xrodz+"--",xrodz_str]<0 or xmiegodz=="Miesi|ac")) goto pomijam
//if(xpracownik="MMMM1" and xrodz=="50") okalert["aaa xybrutto="+xybrutto]
   xstawka := xybrutto
   if(xmnozyc) xstawka := roundn[xybrutto/xlgodzin,2]
   if(xstawka<0) xstawka := 0
   xzbrutto := xstawka
   if(xmnozyc) xzbrutto := roundn[xstawka*xlgodzin,2]
   goto pomijam
pomijam1:
//if(xpracownik=="1AZ") okalert["pomijam1 dataod3="+dataod3+"$datado3="+datado3+"$lista_old="+lista_old]
//    okalert["odczytaj_k="+odczytaj_k]
    zestalych := .N.
    defzmiennaK["odczytaj_k",0]
    xplacabp := placabp
// 
// dla wszystkich list przepisywanych - dopisanie danych do rejestru podstaw chorobowego
// wykluczenie tylko list korygowanych pobierajacych dane z kadr
    klucz := symlistynum+"*"+xpracownik+"*"+xskladnik
rej_hch := "hch:"
rej_hch2 := "hch2:"
if(korektalisty) rej_hch := "hch1:"
if(korektalisty) rej_hch2 := "hch3:"
//okalert["klucz="+klucz]
//rejop[rej_hch+"zobaczdbf",""]

    if(rejop["hc:znajdzrek","*"+xpracownik+"*"+xskladnik]) rejop["hc:usunrek",""] 
    if(not(rejop[rej_hch+"znajdzrek",klucz])) goto sprawdz_dlugie
    rejop["hc:dodajtemprek",""]
    rejop[rej_hch+"przeniespola","hc:"]
    xrejwstawp_s["hc:lista",""]
    xrejwstawp_k["hc:nrlisty",.]
    xrejwstawp_s["hc:listanr",""]
    rejop["hc:zapiszrek",""]
    sprawdz_dlugie:
    petla_usun_hc2:
    if(not(rejop["hc2:znajdzrek","*"+xpracownik+"*"+xskladnik])) goto pomin_usun_hc2
    rejop["hc2:usunrek",""] 
    goto petla_usun_hc2
    pomin_usun_hc2:
//    okalert["kluczxx="+klucz+"$hch2 ustawiony="+rejwezp_k["hch2:szukajklucz"]]
//    rejop["hch2:zobaczdbf",""]
    if(not(rejop[rej_hch2+"znajdzrek",klucz])) goto po_hc2
    petla_dodaj_hc2:
    rejop["hc2:dodajtemprek",""]
//    okalert["dane="+rejwezp_s["hch2:listanr"]+"*"+rejwezp_s["hch2:sym"]+"*"+rejwezp_s["hch2:skladnikr"]]
    rejop[rej_hch2+"przeniespola","hc2:"]
    xrejwstawp_s["hc2:listar",""]
    xrejwstawp_k["hc2:nrlistyr",.]
    xrejwstawp_s["hc2:listanr",""]
    rejop["hc2:zapiszrek",""]
    if(rejop[rej_hch2+"weznastepnyrekn",""]) goto petla_dodaj_hc2
    po_hc2:
//
    if(odczytaj_k = 0) goto pomijam
    if(not(odczytaj_k = 1)) goto omin_stale
//    if(not(xrodz="11")) CallAlg["POBIERZ-ZE-STALYCH"]
    if(strin["--"+xrodz+"--",xrodz_str]>-1) goto omin_pobierz_stale
    if(strin["--"+Tostr["#rodzwynagr#S:0"]+"--",rodzwynagr_str]>-1) goto omin_pobierz_stale
    CallAlg["POBIERZ-ZE-STALYCH"]
    xplacabp := xzbrutto 
    omin_pobierz_stale:
    if(rodzwynagr=1 and Not(premsklad1="" and premsklad2="")) CallAlg["WYLICZ-PREMIE"]
    if(rodzwynagr=5) CallAlg["WYLICZ-DODATEK-STAZOWY"]
    if(rodzwynagr=1 or rodzwynagr=5) xplacabp := xzbrutto
    omin_stale:
    if(not(podstawowa)) goto pomijam_kadry
    zmien_stawka := .N.
//st-przed - poprzednia stawka brutto przed skorygowaniem - dla list uzupelniajacych
    st_przed := xzbrutton
    if(uzupelniany or xczyczescpodst) zmien_stawka := .T.
    if(odczytaj_k = 1 and (xrodz=="19" or xrodz=="3")) zmien_stawka := .T.
    IF(xrodz=="1")   CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="2")   CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="3")   CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="11")  CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="12")  CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="13")  CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="14")  CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="19")  CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="111") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="311") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="312") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="313") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="314") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="319") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="321") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="322") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="325") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="327") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="331") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    IF(xrodz=="332") CallAlg["POBIERZ-DANE-Z-MODULU-KADRY"]
    if(strin["--"+xrodz+"--",xrodz_str]>0 and zmien_stawka) xplacabp := xzbrutto
// korekta wartosci skladnikow  nie wchodzacych do podstawy chorobowego i przyslugujacych w okresie niepl skladek zus
// maria
pomijam_kadry:
// korekta sk�adnika o nieobecnosci tylko dla premii,dodatku stazowego i skladnika podawanego jako kwota
   if(rodzwynagr=1 or rodzwynagr=5 or rodzwynagr=4) goto pomniejsz
   goto pomijam
   pomniejsz:
   if(xlgodzin=. or xlgodzin=0) goto pomijam
   if((xstawka=. or xstawka=0) and not(rodzwynagr=5)) goto pomijam
// xxbrutto := roundn[xstawka*xlgodzin,2]
   if(wyrownanie and xrodz="11") xzbrutton :=  st_przed
   xxbrutto := xzbrutton
   if(xmnozyc and not(xmiegodz=="Miesi|ac")) xxbrutto := roundn[xzbrutton*xlgodzin,2]
// tu sprawdzenie czy skladnik nie jest juz wyliczany algorytmami przy pobieraniu danych z kadr
if(odczytaj_k=2) goto omin_pomniejsz
if(uzupelnianycm and (rodzwynagr=1 or rodzwynagr=5 or(rodzwynagr=4 and zestalych))) goto omin_nieuzupelniany
   if(strin["--"+xrodz+"--",xrodz_str]<0 and xmiegodz=="Miesi|ac") xxbrutto := xplacabp
   if(strin["--"+xrodz+"--",xrodz_str]<0  and xmiegodz=="Miesi|ac") xzbrutton := xxbrutto
goto omin_pomniejsz
omin_nieuzupelniany:
   if(strin["--"+xrodz+"--",xrodz_str]<0 and xmiegodz=="Miesi|ac") xxbrutto := roundn[xplacabp*rzil_godz_robocz/il_godz_robocz,2]
   if(strin["--"+xrodz+"--",xrodz_str]<0  and xmiegodz=="Miesi|ac") xzbrutton := xxbrutto
  omin_pomniejsz:
//   xxstawka := roundn[xxbrutto/rzil_dni_robocz,2]
   xxstawka := roundn[xxbrutto/rzil_godz_robocz,2]
   dla_chor := rzil_dni_all
   if(rzil_dni_all=rztil_dni_all) dla_chor := 30
   xxstawka_ch := roundn[xxbrutto/dla_chor,2]
   dni_choroby := ildniall_lekarsk00+ildniall_lekarsk80+ildniall_lekarsk70+ildniall_lekarsk75+ildniall_lekarsk90
   gdz_choroby := ilgdzall_lekarsk00+ilgdzall_lekarsk80+ilgdzall_lekarsk70+ilgdzall_lekarsk75+ilgdzall_lekarsk90
//   dni_nu := ildnirob_bezplatny-ildnirob_nn
//   dni_nn := ildnirob_nn
   dni_nu := ilgdzrob_bezplatny-ilgdzrob_nn
   dni_nn := ilgdzrob_nn
   xodjac_ch := roundn[xxstawka_ch* dni_choroby,2]
   if(rzil_godz_robocz- gdz_choroby<=0) xodjac_ch := xxbrutto
   xodjac_nu := roundn[(xxbrutto/rzil_godz_robocz)* dni_nu,2]
   xodjac_nn := roundn[(xxbrutto/rzil_godz_robocz)* dni_nn,2]
   if(xchorobowe) goto sprawdz_uzu1
   if(not(xczyczescpodst)) goto sprawdz_uzu1
   if(xczy_pow_zl) xybrutto := xodjac_ch
   if(not(xczy_pow_zl)) xybrutto := xxbrutto-xodjac_ch
   xstawka := xybrutto
   if(xmnozyc) xstawka := roundn[xybrutto/xlgodzin,2]
   xzbrutto := xstawka
   if(xmnozyc) xzbrutto := roundn[xstawka*xlgodzin,2]
   xxbrutto := xzbrutto
   if(uzupelnianynu or uzupelnianynn) goto sprawdz_uzu1
    goto pomijam
    sprawdz_uzu1:
// tu wyliczenie dla skladnikow godzinowych liczonych jak premie
   if(not(rodzwynagr=1)) goto omin_premie1
   if( xmiegodz="" or xmiegodz=="Miesi|ac") goto omin_premie1
   xzbrutto := xstawka
   if(xmnozyc and xmiegodz=="Godzin|e") xzbrutto := xstawka * il_godz_przeprac 
   if(xmiegodz=="Godzin|e") xlgodzin := il_godz_przeprac
   if(xmnozyc and xmiegodz=="Dzie|n") xzbrutto := xstawka * il_dni_przeprac 
   if(xmiegodz=="Dzie|n") xlgodzin := il_dni_przeprac
   goto pomijam 
//
omin_premie1:
    if(xrodz=="11" or xponad_mies) goto pomijam
   xybrutto := xxbrutto
//     if(not(uzupelniany or uzupelnianynu or uzupelnianynn)) goto pomijam_licz1
     if(not(uzupelniany or uzupelnianynu or uzupelnianynn)) goto pomijam_licz1
   xybrutto := xxbrutto
   if(not(xczyczescpodst) and uzupelniany and xchorobowe) xybrutto := xybrutto - xodjac_ch
   if(uzupelnianynu) xybrutto := xybrutto - xodjac_nu
   if(uzupelnianynn) xybrutto := xybrutto - xodjac_nn
   if(xmiegodz=="Dzie|n") xlgodzin := il_dni_przeprac
   if(xmiegodz=="Godzin|e")  xlgodzin := il_godz_przeprac
   pomijam_licz1:
   xstawka := xybrutto
   if(xmnozyc) xstawka := roundn[xybrutto/xlgodzin,2]
   if(xstawka<0) xstawka := 0
   xzbrutto := xstawka
   if(xmnozyc) xzbrutto := roundn[xstawka*xlgodzin,2]
pomijam:
//maria
   if(xczyzz) podstawa_zz := podstawa_zz + xzbrutto
   if(strin["--"+xskladnik+"--",sklad_zmienne]>-1) podstawa_oko := podstawa_oko + xzbrutto
   if(danezkadr) CallAlg["POBIERZ-DANE-PODSTAWOWA"]
//maria
//tu podstawienie danych dotyczacych miesiaca - gdy lista nie jest z kadr
if(podstawowa) goto omin_ustawieniaxx
if(odczytaj_k = 0) goto omin_ustawieniaxx1
   dnipracy := rejwezp_k["DK:til_dni_prze"]
//okalert["dnipracy="+dnipracy]
   gdzpracy := RejWezP_K["DK:til_gdz_prze"]
   gdzpracyu := RejWezP_K["DK:til_gdz_prze"]+RejWezP_K["DK:KDR_gdz_oko"]+ RejWezP_K["DK:KDR_gdz_wyp"]+RejWezP_K["DK:KDR_gdz_szk"]
   gdzuop_szk := RejWezP_K["DK:KDR_gdz_oko"]+RejWezP_K["DK:KDR_gdz_szk"]
   gdzpracyu_all := RejWezP_K["DK:rztil_gdz_rob"]
   gdzpracyu_nn := RejWezP_K["DK:KDR_gdz_nn"]
   dnipracyu := rejwezp_k["DK:til_dni_prze"]+RejWezP_K["DK:KDR_dni_wyp"] + RejWezP_K["DK:KDR_dni_oko"] + RejWezP_K["DK:KDR_dni_szk"]
   dnipracyu_all := RejWezP_K["DK:rztil_dni_rob"]
   dnipracyu_nn := RejWezP_K["DK:KDR_dni_nn"]
   dnipracyu_bww := RejWezP_K["DK:KDR_dni_bww"]
   dnipracyu_kal := RejWezP_K["DK:til_dni_rob"]
goto omin_ustawieniaxx
omin_ustawieniaxx1:
rejw := "z:"
if(korektalisty) rejw := "e:"
        gdzpracy := rejwezp_k[rejw+"gdzpracy"]
        gdzpracyu := rejwezp_k[rejw+"gdzpracyu"]
        gdzpracyu_all := rejwezp_k[rejw+"gdzpracyu_all"]
        gdzpracyu_nn := rejwezp_k[rejw+"gdzpracyu_nn"]
        dnipracy := rejwezp_k[rejw+"dnipracy"]
        dnipracyu := rejwezp_k[rejw+"dnipracyu"]
        dnipracyu_all := rejwezp_k[rejw+"dnipracyu_all"]
        dnipracyu_nn := rejwezp_k[rejw+"dnipracyu_nn"]
        dnipracyu_bww := rejwezp_k[rejw+"dnipracyu_bww"]
        dnipracyu_kal := rejwezp_k[rejw+"dnipracyu_kal"]
        gdzuop_szk := rejwezp_k[rejw+"gdzuop_szk"]        
omin_ustawieniaxx:
// tu sprawdzenie sumy zarobkow dla porownania z wynagrodzeniem minimalnym z biezacej listy
   xxrodz := stringnaliczbe[xrodz]  
   czy_wyr := .N. 
   if((xxrodz<=50 and not(xxrodz=12 or xxrodz=31 or xxrodz=32 or xxrodz=19)) or xxrodz=331) czy_wyr := .T.
   if(not(czy_wyr)) goto omin_wyrownanie
//if(xpracownik="004") okalert["wejscie w procedure naliczania skladnik="+xskladnik+"$wyrownanie_2="+wyrownanie_2+"$xxrodz="+xxrodz]
   wyrownanie_1 := wyrownanie_1 + xzbrutto
//if(xpracownik="004") okalert["po wyrownanie_1 skladnik="+xskladnik+"$wyrownanie_2="+wyrownanie_2+"$xxrodz="+xxrodz]
   if(strin["--"+xskladnik+"--",sklad_zmiennew]>-1 and xxrodz>10 and not(xrodz="331")) wyrownanie_2 := wyrownanie_2 + xzbrutto 
//   if(xpracownik="004" and strin["--"+xskladnik+"--",sklad_zmienne]>-1 and xxrodz>10 and not(xrodz="331")) okalert["zmiennexskladnik="+xskladnik+"$xzbrutto="+xzbrutto+"$wyrownanie_2="+wyrownanie_2]
   if(strin["--"+xskladnik+"--",sklad_zmiennew]>-1) goto omin_wyrownanie
//   if(xpracownik="004") okalert[" kazdy staly"+xskladnik+"$xzbrutto="+xzbrutto]
   if(xxrodz>10 and not(xrodz="331")) wyrownanie_2 := wyrownanie_2 + xzbrutto*il_godz_przeprac/(il_godz_przeprac+ilgdzrob_oko+ilgdzrob_wypoczynk+ilgdzrob_szk)
  omin_wyrownanie:
//  if(xpracownik="004") okalert["skladnik ="+xskladnik+"$xzbrutto="+xzbrutto+"$ biezace wyrownanie_2="+wyrownanie_2]
// dla skladnikow kwartalnych i rocznych wyznaczenie dat dla ktorych obowiazuja i ilosci miesiecy
if(not(xponad_mies)) goto omin_okres_kwart
if(not(xrodz=="22" or xrodz=="31")) goto omin_okres_kwart
if(not(dataod5='')) goto omin_okres_kwart
//
miesx := A_date[xdatawyp,"M"]
rokx := A_date[xdatawyp,"Y"]
if(xrodz=="31") goto roczny_x
if(miesx>=1 and miesx<=3) dataod5 := C_date[rokx-1,10,1]
if(miesx>=1 and miesx<=3) datado5 := C_date[rokx-1,12,31]
if(miesx>=4 and miesx<=6) dataod5 := C_date[rokx,1,1]
if(miesx>=4 and miesx<=6) datado5 := C_date[rokx,3,31]
if(miesx>=7 and miesx<=9) dataod5 := C_date[rokx,4,1]
if(miesx>=7 and miesx<=9) datado5 := C_date[rokx,6,30]
if(miesx>=10 and miesx<=12) datado5 := C_date[rokx,7,1]
if(miesx>=10 and miesx<=12) datado5 := C_date[rokx,9,30]
goto wspolne_x
roczny_x:
dataod5 := C_date[rokx-1,1,1]
datado5 := C_date[rokx-1,12,31]
wspolne_x:
if(data_zat>dataod5) dataod5 := data_zat
if(data_zw<datado5) datado5 := data_zw
mies_uzu := dataod5+"-"+datado5+"Nw1/1"
wymiar_d := ""
czy_zm := "N"
n := 0
petla_p:
dataxx := strcut[wykaz_zmian_wymiarow,n*11,8]
if(dataxx="") goto koniec_p
dataxx_d := stringnadate[dataxx]
if(dataxx_d<=datado5) wymiar_d := dataxx
if(dataod5< dataxx_d and datado5>=dataxx_d) czy_zm := "T"
n := n+1
goto petla_p
koniec_p:
wymiar_prac_sx := ""
if(wymiar_d="") goto omin_wymiar_prac
if(rejop["ppx:znajdzrek",xpracownik+"*"+wymiar_d]) wymiar_prac_sx := rejwezp_s["ppx:wymiar1"]+"/"+rejwezp_s["ppx:wymiar2"]
omin_wymiar_prac:
//
mies_uzu := dataod5+"-"+datado5+czy_zm+"w"+wymiar_prac_sx
placab_uzu := xzbrutto
//
omin_okres_kwart:
//
  CallAlg["PRZEPISZ-ZAPISUJE-DANE"]
//if(RejWezP_S["Y:pracownik"]="001") okalert["godz1 := "+wezgodzine[0]+"- godz0= "+godz2+"xrodz="+xrodz+"$xskladnik="+xskladnik+"$procstaz="+procstaz]
next:
ustawczekajinfo["nastepny",""]
  IF (RejOp["Y:WezNastepnyRek",""]) goto powrot
koniec:
// tu dla korekty listy przepisanie danych odnosnie szczeg.chorobowego z listy zrodlowej
if(not(korektalisty)) goto po_korekta
if(danezkadr) goto po_korekta
//okalert["symlistynum="+symlistynum+"$xpracownik="+xpracownik]
//rejop["hch1:zobaczdbf",""]
rejop["hch1:zmienkluczrej","10"]
if(not(rejop["hch1:znajdzrek",symlistynum])) goto spr_dl_kor
petla_krkor:
rejop["hc1:dodajrek",""]
rejop["hch1:przeniespola","hc1:"]
xrejwstawp_s["hc1:lista","KOREKTA"]
xrejwstawp_k["hc1:nrlisty",.]
xrejwstawp_s["hc1:listanr","KOREKTA"]
rejop["hc1:zapiszrek",""]
if(rejop["hch1:weznastepnyrekn",""]) goto petla_krkor
spr_dl_kor:
//okalert["zobacz korekta hc"]
//rejop["hc1:zobaczdbf",""]
rejop["hch1:zmienkluczrej","3"]
rejop["hch3:zmienkluczrej","10"]
if(not(rejop["hch3:znajdzrek",symlistynum])) goto po_korekta1
petla_krkor2:
rejop["hc3:dodajrek",""]
rejop["hch3:przeniespola","hc3:"]
xrejwstawp_s["hc3:listar","KOREKTA"]
xrejwstawp_k["hc3:nrlistyr",.]
xrejwstawp_s["hc3:listanr","KOREKTA"]
rejop["hc3:zapiszrek",""]
if(rejop["hch3:weznastepnyrekn",""]) goto petla_krkor2
po_korekta1:
rejop["hch3:zmienkluczrej","4"]
po_korekta:
//okalert["pocz="+godz0+"$kon="+wezgodzine[0]]
// maria  tu sprawdzenie czy wszystkie nieobecnosci zostaly rozliczone
// nieobecnosc rozliczona na innej oczekujacej - traktowana jak rozliczona 11.11.06
lista_mm1 := rejwezp_s["a:lista"]+Tostr["#rejwezp_k[""a:nrlisty""]#S:0"]
lista_mm2 := lista_mm1
if(not(nowa_lista)) lista_mm1 := symlistynum
lista_mm := "@"+lista_mm1
listy_x := ""
rejop["cee:otworzrejtemp","nieobec.rxr"]
if(not(Rejop["ce:wezpierwszyrek",""])) goto omin_sprawdz_nieo
if(korektalisty) goto omin_sprawdz_nieo
petla_ce:
if(not(strin["@",RejWezP_S["CE:lista"]]>-1)) goto nastepny_ce
listyx := RejWezP_S["CE:lista"]
if(strcut[listyx,0,1]=="@") listyx := strcut[listyx,1,strlen[listyx]-1]
if(not(listyx==lista_mm1) and strin["--"+listyx+"--",listy_x]<0) listy_x := listy_x +"--"+listyx+"--"
listyx := RejWezP_S["CE:lista1"]
if(strcut[listyx,0,1]=="@") listyx := strcut[listyx,1,strlen[listyx]-1]
if(not(listyx==lista_mm1) and strin["--"+listyx+"--",listy_x]<0) listy_x := listy_x +"--"+listyx+"--"
if(not(rejwezp_s["ce:lista"]==lista_mm)) goto nastepny_ce
if(not(rejwezp_s["ce:lista1"]="")) goto nastepny_ce
rejop["cee:dodajrek",""]
rejop["ce:przeniespola","cee:"]
rejop["cee:zapiszrek",""]
nastepny_ce:
if(rejop["ce:weznastepnyrek",""]) goto petla_ce
if(rejop["cee:pustyrej",""]) goto omin_sprawdz_nieo
if(YesAlert["Napotkano pracownik|ow, kt|orym  nie przyporz|adkowano $sk|ladnik|ow rozliczaj|acych nieobecno|sci! $ $ Czy wydrukowa|c wykaz?"]) callalg["wykaz_nierozliczonych_nieobecnosci"] 
//
omin_sprawdz_nieo:
//okalert["listy_x="+listy_x+"$lista_mm="+lista_mm1]
if(not(listy_x = "")) Okalert["UWAGA!!!! $W buforze znajduj|a si|e niezaakceptowane listy.$ Nieobecno|sci rozliczonych na nich nie uwzgl|edniono na bie|z|acej li|scie!!!"]
rejop["cee:zamknijrej",""]
rejop["hc:zmienkluczrej","0"]
if(not(rejop["hc:wezpierwszyrek",""])) goto omin_wstaw_hc
petla_hc:
//okalert["lista="+rejwezp_s["a:lista"]+rejwezp_k["a:nrlisty"]+"$listanr="+lista_mm1+"$pracownik="+rejwezp_s["hc:sym"]+"$skladnik="+rejwezp_s["hc:skladnik"]]
if(korektalisty) goto inny_hc
xrejwstawp_s["hc:listanr",lista_mm2]
xrejwstawp_s["hc:lista",rejwezp_s["a:lista"]]
xrejwstawp_k["hc:nrlisty",rejwezp_k["a:nrlisty"]]
//okalert["5 lista="+ rejwezp_s["hc:lista"]]
goto wspolny_hc
inny_hc:
xrejwstawp_s["hc:listanr","KOREKTA"]
xrejwstawp_s["hc:lista","KOREKTA"]
xrejwstawp_k["hc:nrlisty",.]
wspolny_hc:
rejop["hc:zapiszrek",""]
if(rejop["hc:weznastepnyrek",""])goto petla_hc
// tu zapisanie danych do rejestru oczekujacych
// oczyszczenie danych z rejestru h_chor
rejop["hc1:zmienkluczrej","6"]
hc1_s := Tostr["#rejwezp_k[""a:nrlisty""]#S:0"]
if(korektalisty) hc1_s := ""
petla_hc1:
if(not(rejop["hc1:znajdzrek",hc1_s])) goto koniec_hc
rejop["hc1:usunrek",""]
goto petla_hc1
koniec_hc:
//okalert["hc"]
//rejop["hc:zobaczdbf",""]
rejop["hc:wezpierwszyrek",""]
petla_hc2:
rejop["hc1:dodajrek",""]
rejop["hc:przeniespola","hc1:"]
rejop["hc1:zapiszrek",""]
if(rejop["hc:weznastepnyrek",""]) goto petla_hc2
omin_wstaw_hc:
// tu dostawienie danych do rejestru hc2
//
//okalert["hc2"]
//rejop["hc2:zobaczdbf",""]
rejop["hc2:zmienkluczrej","0"]
if(not(rejop["hc2:wezpierwszyrek",""])) goto omin_wstaw_hc2
petla_hc3:
//okalert["lista="+rejwezp_s["a:lista"]+rejwezp_k["a:nrlisty"]+"$listanr="+lista_mm1+"$pracownik="+rejwezp_s["hc:sym"]+"$skladnik="+rejwezp_s["hc:skladnik"]]
if(korektalisty) goto inny_hc2
xrejwstawp_s["hc2:listanr",lista_mm1]
xrejwstawp_s["hc2:listar",rejwezp_s["a:lista"]]
xrejwstawp_k["hc2:nrlistyr",rejwezp_k["a:nrlisty"]]
//okalert["5 lista="+ rejwezp_s["hc:lista"]]
goto wspolny_hc2
inny_hc2:
xrejwstawp_s["hc2:listanr","KOREKTA"]
xrejwstawp_s["hc2:listar","KOREKTA"]
xrejwstawp_k["hc2:nrlistyr",.]
wspolny_hc2:
rejop["hc2:zapiszrek",""]
if(rejop["hc2:weznastepnyrek",""])goto petla_hc3
// tu zapisanie danych do rejestru oczekujacych
// oczyszczenie danych z rejestru h_chor2
rejop["hc3:zmienkluczrej","6"]
hc1_s := Tostr["#rejwezp_k[""a:nrlisty""]#S:0"]
if(korektalisty) hc1_s := ""
petla_hc4:
if(not(rejop["hc3:znajdzrek",hc1_s])) goto koniec_hc2
rejop["hc3:usunrek",""]
goto petla_hc4
koniec_hc2:
rejop["hc2:wezpierwszyrek",""]
petla_hc5:
rejop["hc3:dodajrek",""]
rejop["hc2:przeniespola","hc3:"]
rejop["hc3:zapiszrek",""]
if(rejop["hc2:weznastepnyrek",""]) goto petla_hc5
//okalert["hc3"]
//rejop["hc1:zobaczdbf",""]
omin_wstaw_hc2:
//
ustawczekajinfo["stop",""]
  kom := .N.
dalej:
//rejop["b:zobaczdbf",""]
  RejOp["Y:ZamknijRej",""]
  RejOp["X:ZamknijRej",""]
  RejOp["C:ZamknijRej",""]
  RejOp["E:ZamknijRej",""]
  RejOp["J:ZamknijRej",""]
  RejOp["chor1:ZamknijRej",""]
  RejOp["G:ZamknijRej",""]
  RejOp["GG:ZamknijRej",""]
  RejOp["Q:ZamknijRej",""]
  RejOp["CE:ZamknijRej",""]
  RejOp["CN:ZamknijRej",""]
  RejOp["CB:ZamknijRej",""]
  RejOp["POW:ZamknijRej",""]
  RejOp["IP:ZamknijRej",""]
  RejOp["PPX:ZamknijRej",""]
  RejOp["sPX:ZamknijRej",""]
  RejOp["tt:ZamknijRej",""]
  RejOp["ARCH:ZamknijRej",""]
  RejOp["SUM:ZamknijRej",""]
  RejOp["hc:ZamknijRej",""]
  RejOp["hc2:ZamknijRej",""]
    
% wykaz_nierozliczonych_nieobecnosci.alg
rejop["cee:zmienkluczrej","4"]
rejop["cee:wezpierwszyrek",""]
drukujakcja["Dialogparam"]
if(d_przerwane) Exitalg[0]
opisxx :=  WezZmiennaSrod["P_opis"]
drukujustawnaglowek[.T.,"nierozlicz_nieobec",4]
petla_cee:
nazwiskox := ""
imiex := ""
symbolx := rejwezp_s["cee:sym"]
rodznieox := rejwezp_s["cee:kodnieob"]
opisnieox := rejwezp_s["cee:nazwanieob"]
if(not(rejop["c:znajdzrek",rejwezp_s["cee:sym"]])) goto omin_c
nazwiskox := rejwezp_s["c:nazwisko"]
imiex := rejwezp_s["c:imie1"]
omin_c:
linia := Tostr["�@L#symbolx#L10@@�@L#nazwiskox#L25@@�@L#imiex#L15@@�@L#rodznieox#L10@@�@L#opisnieox#L30@@�"]
drukujlinia["@T"+linia+"@@"]
if(rejop["cee:weznastepnyrek",""]) goto petla_cee
linia := "������������������������������������������������������������������������������������������������"
drukujlinia[linia]
drukujakcja["drukujkoniec"]
exitalg[0]
//
% nierozlicz_nieobec.alg
if(opisxx="przegladarka") goto inna_linia 
linia := "����������������������������������������������������������������������������������������������Ŀ"
drukujlinia[linia]
linia := "�Symbol    � Nazwisko                � Imi|e          � Symbol   � Opis nieobecno|sci            �"
drukujlinia[linia]
linia :=  "�pracownika�                         �               �nieobecn. �                              �"
drukujlinia[linia]
linia := "����������������������������������������������������������������������������������������������Ĵ"
drukujlinia[linia]
Exitalg[0]
inna_linia:
linia := "@T@L Symbol @J@@ pracownika@@@L Nazwisko@@@L Imi|e@@@L Symbol @J@@ nieobecno|sci@@@L Opis nieobecno|sci@@@@"
drukujlinia[linia]
Exitalg[0]
// -------------------------------------------------------
// sprawdzenie czy liczyc podstawe chorobowego na nowo
//  -----------------------------------------------------

% sprawdz_czy_liczyc_podstchor.alg
//if(xxpracownik="1AZ") okalert["jestem w sprawdz_czy_liczyc_podstchor poczatek_choroby="+poczatek_choroby]
czy_liczyc_podstchor := .T.
czy_byl_reh := .N.
kw_podstchor_old := .
pr_podstchor_old := .
dataod3 := ''
datado3 := ''
lista_old := ""
skladnik_old := ""
lista_odlo_l := .N. 
// ustalenie daty konca poszukiwan - trzy pelne miesiace wstecz
if(poczatek_choroby = '') exitalg[0]
//if(xxpracownik=="1AZ") okalert["poczatek_choroby="+poczatek_choroby]
rok_end := A_date[poczatek_choroby,"Y"]
mies_end := A_date[poczatek_choroby,"M"]-3
if(mies_end<1) rok_end := rok_end-1
if(mies_end<1) mies_end := mies_end+12
data_end := C_date[rok_end,mies_end,1]
data_pocz := poczatek_choroby - A_date[poczatek_choroby,"D"]
if(data_end<last_wymiar_zm) data_end := last_wymiar_zm
//if(xxpracownik=="1AZ") okalert["data_end="+data_end+"$data_pocz="+data_pocz+"$xxpracownik="+xxpracownik]
wykaz_kodow := "--311--312--313--314--319--321--322--325--327--331--332--"
wykaz_kodow_reh := "--321--322--"
tura := 1
rej_arch := "arch:"
rej_ce := "ce:"
rej_cb := "cb:"
klucz_ce := tostr["#rejwezp_k[rej_ce+""szukajklucz""]#S:0"]
klucz_arch := tostr["#rejwezp_k[rej_arch+""szukajklucz""]#S:0"]
rejop[rej_ce+"zmienkluczrej","6"]
rejop[rej_arch+"zmienkluczrej","21"]
rejop["z:otworzrej","place.rxr"]
rejop["z:zmienkluczrej","21"]
// teraz poszukiwanie ostatniej nieobecnosci
petla_tura:
rejop[rej_ce+"szukajrek",xxpracownik+"*"+data_end]
//if(xxpracownik="1AZ") okalert["pracownik="+rejwezp_s[rej_ce+"sym"]+"$DATA="+rejwezp_d[rej_ce+"dataod"]]
if(not(rejwezp_s[rej_ce+"sym"]== xxpracownik)) goto koniec
petla_ce:
if(not(rejwezp_s[rej_ce+"sym"]== xxpracownik)) goto koniec
//if(xxpracownik="1AZ") okalert["petla pracownik="+rejwezp_s[rej_ce+"sym"]+"$data ="+rejwezp_d[rej_ce+"dataod"]]
if(rejwezp_l[rej_ce+"anulowana"]) goto nastepny_ce
if(rejwezp_d[rej_ce+"datado"]>data_pocz) goto koniec
if(rejwezp_s[rej_ce+"lista1"]="") goto nastepny_ce
//if(xxpracownik="1AZ") okalert["xx $pracownik="+rejwezp_s[rej_ce+"sym"]+"$data ="+rejwezp_d[rej_ce+"dataod"]]
if(not(rejop[rej_cb+"znajdzrek",rejwezp_s[rej_ce+"kodnieob"]])) goto nastepny_ce
if(strin["--"+rejwezp_s[rej_cb+"rodzsklad"]+"--",wykaz_kodow]<0) goto nastepny_ce
lista_odlo_l := .N. 
if(strcut[rejwezp_s[rej_ce+"lista1"],0,1]=="@") lista_odlo_l := .T.
if(lista_odlo_l) goto sprawdz_odlo
//if(xxpracownik="1AZ") okalert["klucz arch="+ rejwezp_s[rej_ce+"lista1"]+"*"+rejwezp_s[rej_ce+"sym"]+"*"+rejwezp_s[rej_cb+"skladnieo"]]
 if(not(rejop[rej_arch+"znajdzrek",rejwezp_s[rej_ce+"lista1"]+"*"+rejwezp_s[rej_ce+"sym"]+"*"+rejwezp_s[rej_cb+"skladnieo"]])) goto nastepny_ce
//okalert["1"]
if(not(rejop["x:znajdzrek",rejwezp_s[rej_arch+"skladnik"]])) goto nastepny_ce
//okalert["2"]
if(strin["--"+rejwezp_s["x:rodzskl"]+"--",wykaz_kodow]<0) goto nastepny_ce
//okalert["3"]
//if(xxpracownik="1AZ") okalert["pracownik ="+rejwezp_s[rej_arch+"pracownik"]+"$dataod3="+rejwezp_d[rej_arch+"dataod3"]+"$datado3="+rejwezp_d[rej_arch+"datado3"]]
kw_podstchor_old := rejwezp_k[rej_arch+"stawka"]
procent_reh := rejwezp_k[rej_arch+"reh_procent"]
dataod3 := rejwezp_d[rej_arch+"dataod3"]
datado3 := rejwezp_d[rej_arch+"datado3"]
kod_chor3 := rejwezp_s[rej_arch+"kod_chor3"]
lista_old := rejwezp_s[rej_ce+"lista1"]
skladnik_old := rejwezp_s[rej_arch+"skladnik"]
czy_liczyc_podstchor := .N.
//if(xxpracownik=="1AZ") okalert["zaakceptowane kw_podstchor_old="+kw_podstchor_old+"$dataod3="+dataod3+"$lista_old="+lista_old]
goto wspolne_dane
sprawdz_odlo:
if(rejwezp_s[rej_ce+"lista1"]=="@"+symlisty) goto nastepny_ce
if(not(yesnalert["Poprzednia nieobecno|s|c zosta|la rozliczona $na li|scie oczekuj|acej "+rejwezp_s[rej_ce+"lista1"]+". $ Czy przyj|a|c podstaw|e z tej listy?"])) goto nastepny_ce
lista_x1 := rejwezp_s[rej_ce+"lista1"]
 if(not(rejop["z:znajdzrek",strcut[lista_x1,1,strlen[lista_x1]-1]+"*"+rejwezp_s[rej_ce+"sym"]+"*"+rejwezp_s[rej_cb+"skladnieo"]])) goto nastepny_ce
if(not(rejop["x:znajdzrek",rejwezp_s["z:skladnik"]])) goto nastepny_ce
if(strin["--"+rejwezp_s["x:rodzskl"]+"--",wykaz_kodow]<0) goto nastepny_ce
kw_podstchor_old := rejwezp_k["z:stawka"]
procent_reh := rejwezp_k["z:reh_procent"]
dataod3 := rejwezp_d["z:dataod3"]
datado3 := rejwezp_d["z:datado3"]
kod_chor3 := rejwezp_s["z:kod_chor3"]
lista_old := strcut[lista_x1,1,strlen[lista_x1]-1]
skladnik_old := rejwezp_s["z:skladnik"]
czy_liczyc_podstchor := .N.
//okalert["oczekujace kw_podstchor_old="+kw_podstchor_old+"$dataod3="+dataod3+"$lista_old="+lista_old]
wspolne_dane:
typ := rejwezp_s["x:typsklad"]
if(typ="1") pr_podstchor_old := 1
if(typ="2") pr_podstchor_old := 0.8
if(typ="3") pr_podstchor_old := 0.7
if(typ="4") pr_podstchor_old := 0.75
if(typ="5") pr_podstchor_old := 0.9
if(strin["--"+rejwezp_s["x:rodzskl"]+"--",wykaz_kodow_reh]<0) goto po_reh
czy_byl_reh := .T.
po_reh:
//if(not(kw_podstchor_old+0=0)) goto koniec
//okalert["xx="+rejwezp_s[rej_arch+"skladnik"]]
nastepny_ce:
if(rejop[rej_ce+"weznastepnyrek",""]) goto petla_ce
koniec:
if(tura<2) goto wyjdz
rejop["cbx:zamknijrej",""]
rejop["cex:zamknijrej",""]
rejop["archx:zamknijrej",""]
rejop["z:zamknijrej",""]
Finnop["Close",""]
//okalert["jestem w badaniu kw_podstchor_old="+kw_podstchor_old+"$tura="+tura]
exitalg[0]
wyjdz:
//okalert["2  jestem w badaniu kw_podstchor_old="+kw_podstchor_old+"$tura="+tura]
rejop["z:zamknijrej",""]
rejop[rej_arch+"zmienkluczrej",klucz_arch]
rejop[rej_ce+"zmienkluczrej",klucz_ce]
//if(xxpracownik=="1AZ") okalert["KONIEC zaakceptowane kw_podstchor_old="+kw_podstchor_old+"$dataod3="+dataod3+"$lista_old="+lista_old]
if(not(kw_podstchor_old=. and data_end<poczatek_roku)) exitalg[0]
tura := 2
if(ch_ksieg="") ExitAlg[0]
if(not(Finnop["Openmainx",ch_ksieg])) exitalg[0]
rej_arch := "archx:"
rej_ce := "cex:"
rej_cb := "cbx:"
rejop["archx:otworzrejsprawdz","plarch.rxr"]
rejop["archx:zmienkluczrej","21"]
RejOp["CBx:otworzrejsprawdz","RODZNIEO.RXR"]
RejOp["CEx:otworzrejsprawdz","NIEOBEC.RXR"]
rejop["CEx:zmienkluczrej","6"]
rejop["z:otworzrejsprawdz","place.rxr"]
goto petla_tura
//if(xxpracownik=="1AZ") okalert["KONIEC XX zaakceptowane kw_podstchor_old="+kw_podstchor_old+"$dataod3="+dataod3+"$lista_old="+lista_old]
//if(xxpracownik=="1AZ")okalert["pracownik="+xxpracownik+"$lista-old="+lista_old+"$kw_podstchor_old="+kw_podstchor_old+"$data_podstchor_old="+data_podstchor_old]
//if(xxpracownik=="P014")okalert["mmmmm pracownik="+xxpracownik+"$lista-old="+lista_old+"$kw_podstchor_old="+kw_podstchor_old]
// -------------------
% sprawdz_czy_liczyc_podstchor_old.alg # nieuzywane
czy_liczyc_podstchor := .T.
czy_byl_reh := .N.
kw_podstchor_old := .
pr_podstchor_old := .
lista_old := ""
skladnik_old := ""
data_podstchor_old := ''
// ustalenie daty konca poszukiwan - trzy pelne miesiace wstecz
if(poczatek_choroby = '') exitalg[0]
rok_end := A_date[poczatek_choroby,"Y"]
mies_end := A_date[poczatek_choroby,"M"]-3
if(mies_end<1) rok_end := rok_end-1
if(mies_end<1) mies_end := mies_end+12
data_end := C_date[rok_end,mies_end,1]
//if(xxpracownik=="GA01") okalert["data_end="+data_end]
if(data_end<last_wymiar_zm) data_end := last_wymiar_zm
//if(xxpracownik=="BA01") okalert["data_end="+data_end]
wykaz_kodow := "--311--312--313--314--319--321--322--325--327--331--332--"
wykaz_kodow_reh := "--321--322--"
tura := 1
rej_arch := "arch:"
rej_ce := "ce:"
rej_cb := "cb:"
petla_tura:
rejop[rej_arch+"szukajrek",xxpracownik+"*00.01.01"]
//okalert["klucz_arch="+rejwezp_k["arch:szukajklucz"]]
petla_arch:
if(not(rejwezp_s[rej_arch+"pracownik"]== xxpracownik)) goto koniec
if(rejwezp_l[rej_arch+"anulowana"]) goto nastepny_arch
if(rejwezp_s[rej_arch+"lista"]=="KOREKTA") goto nastepny_arch
//if(xxpracownik=="GA01") okalert["data="+stringnadate[rejwezp_s[rej_arch+"mieswypl"]+".01"]+"$lista="+rejwezp_s[rej_arch+"lista"]+" "+rejwezp_k[rej_arch+"nrlisty"]]
if(not(pustepole[rej_arch+"datado4"])) goto inny_war4
if(stringnadate[rejwezp_s[rej_arch+"mieswypl"]+".01"]<data_end) goto nastepny_arch
goto wspolny_war4
inny_war4:
if(rejwezp_d[rej_arch+"datado4"]<data_end) goto nastepny_arch
wspolny_war4:
if(not(rejop["x:znajdzrek",rejwezp_s[rej_arch+"skladnik"]])) goto nastepny_arch
if(strin["--"+rejwezp_s["x:rodzskl"]+"--",wykaz_kodow]<0) goto nastepny_arch
kw_podstchor_old := rejwezp_k[rej_arch+"stawka"]
// tu zapamietanie okresu z ktorego liczono podstawe i podstawy
dataod3 := rejwezp_d[rej_arch+"dataod3"]
datado3 := rejwezp_d[rej_arch+"datado3"]
kod_chor3 := rejwezp_s[rej_arch+"kod_chor3"]
lista_old := tostr["#rejwezp_s[rej_arch+""lista""]#S#rejwezp_k[rej_arch+""nrlisty""]#S:0"]
skladnik_old := rejwezp_s[rej_arch+"skladnik"]
//if(xxpracownik=="BA01") okalert["dataod3="+dataod3+"$datado3="+datado3+"$kod_chor3="+kod_chor3]
typ := rejwezp_s["x:typsklad"]
if(typ="1") pr_podstchor_old := 1
if(typ="2") pr_podstchor_old := 0.8
if(typ="3") pr_podstchor_old := 0.7
if(typ="4") pr_podstchor_old := 0.75
if(typ="5") pr_podstchor_old := 0.9
if(strin["--"+rejwezp_s["x:rodzskl"]+"--",wykaz_kodow_reh]<0) goto nastepny_arch
czy_byl_reh := .T.
//okalert["xx="+rejwezp_s[rej_arch+"skladnik"]]
nastepny_arch:
if(rejop[rej_arch+"weznastepnyrek",""]) goto petla_arch
koniec:
if(kw_podstchor_old=.) goto koniec1
rejop[rej_ce+"zmienkluczrej","5"]
//rejop[rej_ce+"szukajrek",rejwezp_s["y:pracownik"]+"*"+lista_old+"*00.01.01"]
rejop[rej_ce+"szukajrek",xxpracownik+"*"+lista_old+"*00.01.01"]
petla_ce:
if(not(rejwezp_s[rej_ce+"sym"]+"*"+rejwezp_s[rej_ce+"lista1"]== xxpracownik+"*"+lista_old)) goto koniec1
if(rejwezp_l[rej_ce+"anulowana"]) goto nastepny_ce
if(not(rejop[rej_cb+"znajdzrek",rejwezp_s[rej_ce+"kodnieob"]])) goto nastepny_ce
if(strin["--"+rejwezp_s[rej_cb+"rodzsklad"]+"--",wykaz_kodow]<0) goto nastepny_ce
data_podstchor_old := rejwezp_d[rej_ce+"datado"]
nastepny_ce:
if(rejop[rej_ce+"weznastepnyrek",""]) goto petla_ce
koniec1:
rejop[rej_ce+"zmienkluczrej","4"]
if(tura<2) goto wyjdz
rejop["cbx:zamknijrej",""]
rejop["cex:zamknijrej",""]
rejop["archx:zamknijrej",""]
Finnop["Close",""]
exitalg[0]
wyjdz:
if(not(kw_podstchor_old=. and data_end<poczatek_roku)) exitalg[0]
tura := 2
if(ch_ksieg="") ExitAlg[0]
if(not(Finnop["Openmainx",ch_ksieg])) exitalg[0]
rej_arch := "archx:"
rej_ce := "cex:"
rej_cb := "cbx:"
rejop["archx:otworzrejsprawdz","plarch.rxr"]
rejop["archx:zmienkluczrej","17"]
RejOp["CBx:otworzrejsprawdz","RODZNIEO.RXR"]
RejOp["CEx:otworzrejsprawdz","NIEOBEC.RXR"]
goto petla_tura
//if(xxpracownik=="I05")okalert["pracownik="+xxpracownik+"$lista-old="+lista_old+"$kw_podstchor_old="+kw_podstchor_old+"$pr_podstchor_old="+pr_podstchor_old+"$data_podstchor_old="+data_podstchor_old+"$typ="+typ]
// -------------------
// dane do stawki
//  -----------------

% WYLICZ-DANE-STAWKI.ALG
// zmienna wyjsciowa procent podatku ==> xproc, 
//                   suma kosztu uzysk.przych. ==> sk_uzys,
//                   suma kwot wolnych od podatku ==>  sk_zw
bo_podstopod := .
  If(Not(RejWezP_S["E:lista"]=="KOREKTA")) CallAlg["WYLICZ-DANE-STAWKI-LISTA"]
  If(RejWezP_S["E:lista"]=="KOREKTA")      CallAlg["WYLICZ-DANE-STAWKI-KOREKTA"]

% WYLICZ-DANE-STAWKI-LISTA.ALG
//  okalert["1"]
  podstubez  := .
  If(listanumer==(RejWezP_S["E:lista"]+ToStr["#RejWezP_K[""E:nrlisty""]#S:0"]) and xpracownik==RejWezP_S["E:pracownik"]) ExitAlg[0]
  If(listanumer==(RejWezP_S["E:lista"]+ToStr["#RejWezP_K[""E:nrlisty""]#S:0"]) and xpracownik==RejWezP_S["E:pracownik"]) ExitAlg[0]
  listanumer := RejWezP_S["E:lista"]+ToStr["#RejWezP_K[""E:nrlisty""]#S:0"]
  xpracownik := RejWezP_S["E:pracownik"]
  if(RejWezP_L["E:anulowana"]) ExitAlg[0]
//    if(Not(rok=StrCut[RejWezP_S["E:rokmie"],0,2]))  ExitAlg[0]
  miestxt1   := StrCut[RejWezP_S["E:rokmie"],3,2]
  if(miesiac<miestxt1)     ExitAlg[0]
  If(Not(RejOp["X:ZnajdzRek",RejWezP_S["E:skladnik"]])) goto no_sklad
  if(RejWezP_L["X:ryczalt"]) ExitAlg[0]
no_sklad:
  xproc      := proc1
  sum_wyn    := .
  sk_uzys := RejWezP_K["E:sk_uzys"]-RejWezP_K["E:sk_uzys_r"]
  sk_zw   := RejWezP_K["E:sk_zw"]
  if(Not(miesiac=miestxt1)) sum_wyn := RejWezP_K["E:spodstopod"]
  podstubez := RejWezP_K["E:spodst_er"]
  CallAlg["POBIERZ-DANE-PRACOWNIK-CZESC1"]
  CallAlg["POBIERZ-DANE-PRACOWNIK-CZESC7"]
//  okalert["podatek naliczony:"+ RejWezP_K["E:snalpod"]+"$-suma skladekna nfz:"+RejWezP_K["E:szalzdr"]+"$-suma skladek nie odliczonych:"+RejWezP_K["E:szalzdrn"]+"$-ulga:"+RejWezP_K["E:sk_zw"]+"$-zaliczka na podatek:"+RejWezP_K["E:szalpod"]]
  zaliczka  := RejWezP_K["E:snalpod"]-RejWezP_K["E:szalzdr"]-RejWezP_K["E:szalzdrn"]-RejWezP_K["E:sk_zw"]-RejWezP_K["E:szalpod"]
  if(Not(dzaniech='')and (RejWezP_D["E:datawypl"]<dzaniech)) zaliczka  := 0
  if(Not(korektalisty)) CallAlg["ZAPISUJE-SUMY"]
  if(korektalisty) CallAlg["ZAPISUJE-SUMY-KOREKTA"]
// dane wyjsciowe to procent podatku, suma wyplat, sk_uzys i sk_zw
// zapisane w rejestrze plksieg.rxr

% WYLICZ-DANE-STAWKI-KOREKTA.ALG
  podstubez  := .
  tasamalista := .N.
  If(listanumer==(RejWezP_S["E:lista"]+ToStr["#RejWezP_K[""E:nrlisty""]#S:0"]) and xpracownik==RejWezP_S["E:pracownik"]) tasamalista := .T.
  listanumer := RejWezP_S["E:lista"]+ToStr["#RejWezP_K[""E:nrlisty""]#S:0"]
  xpracownik := RejWezP_S["E:pracownik"]
  if(RejWezP_L["E:anulowana"]) ExitAlg[0]
  if(Not(tasamalista)) sumaujemnych  := .N.
  if(Not(tasamalista)) sumadodatnich := .N.
//    if(Not(rok=StrCut[RejWezP_S["E:rokmie"],0,2]))  ExitAlg[0]
  miestxt1   := StrCut[RejWezP_S["E:rokmie"],3,2]
//    if(miesiac<miestxt1)   ExitAlg[0]
  If(Not(RejOp["X:ZnajdzRek",RejWezP_S["E:skladnik"]])) goto no_sklad
  if(RejWezP_L["X:ryczalt"]) ExitAlg[0]
no_sklad:
  if(sumaujemnych and (RejWezP_K["E:sbrutto"] < 0))       ExitAlg[0]
  if(sumadodatnich and (Not(RejWezP_K["E:sbrutto"] < 0))) ExitAlg[0]
  if(RejWezP_K["E:sbrutto"] < 0)      sumaujemnych  := .T.
  if(Not(RejWezP_K["E:sbrutto"] < 0)) sumadodatnich := .T.
  xproc      := proc1
  sum_wyn    := .
//    if(miesiac=miestxt1)      sk_uzys := RejWezP_K["E:sk_uzys"]
//    if(miesiac=miestxt1)      sk_zw   := RejWezP_K["E:sk_zw"]
//        sk_uzys := RejWezP_K["E:sk_uzys"]
  sk_uzys := RejWezP_K["E:sk_uzys"]-RejWezP_K["E:sk_uzys_r"]
  sk_zw   := RejWezP_K["E:sk_zw"]
  if(Not(miesiac=miestxt1)) sum_wyn := RejWezP_K["E:spodstopod"]
  podstubez := RejWezP_K["E:spodst_er"]
  CallAlg["POBIERZ-DANE-PRACOWNIK-CZESC1"]
  CallAlg["POBIERZ-DANE-PRACOWNIK-CZESC7"]
//  okalert["podatek naliczony:"+ RejWezP_K["E:snalpod"]+"$-suma skladekna nfz:"+RejWezP_K["E:szalzdr"]+"$-suma skladek nie odliczonych:"+RejWezP_K["E:szalzdrn"]+"$-ulga:"+RejWezP_K["E:sk_zw"]+"$-zaliczka na podatek:"+RejWezP_K["E:szalpod"]]
  zaliczka  := RejWezP_K["E:snalpod"]-RejWezP_K["E:szalzdr"]-RejWezP_K["E:szalzdrn"]-RejWezP_K["E:sk_zw"]-RejWezP_K["E:szalpod"]
  if(Not(dzaniech='')and (RejWezP_D["E:datawypl"]<dzaniech)) zaliczka  := 0
  if(Not(korektalisty)) CallAlg["ZAPISUJE-SUMY"]
  if(korektalisty) CallAlg["ZAPISUJE-SUMY-KOREKTA"]
  
// ------------------
// zapisuje sumy
// ------------------

% ZAPISUJE-SUMY.ALG
// zapisuje do rejestru plksieg
  rok_listy := StrCut[RejWezP_S["E:rokmie"],0,2]
  RejOp["q:ZmienKluczRej","10"]  
//  n_klucz := RejWezP_K["Q:SzukajKlucz"]
//  OkALert["zapisuje sumy klucz="+xpracownik+"*"+rok_listy] 
  IF(RejOp["Q:ZnajdzRek",xpracownik+"*"+rok_listy]) goto zmien
    RejOp["Q:DodajRek",""]
    xRejWstawP_S["Q:pracownik",xpracownik]
    xRejWstawP_S["Q:rok",rok_listy]
zmien:
  xRejWstawP_K["Q:k_zw"+miestxt1,RejWezP_K["Q:k_zw"+miestxt1]+sk_zw]
  xRejWstawP_K["Q:k_uzys"+miestxt1,RejWezP_K["Q:k_uzys"+miestxt1]+sk_uzys]
//  okalert["zaliczka="+zaliczka+"$podatekp="+RejWezP_K["Q:podatekp"]]
  xRejWstawP_K["Q:podatekp",RejWezP_K["Q:podatekp"]+zaliczka]
  xRejWstawP_K["Q:placan",RejWezP_K["Q:placan"]+podstubez]
//  okalert["sum_wyn="+sum_wyn]
  if(sum_wyn=. or sum_wyn=0) goto pomin
  if(not(RejWezP_K["Q:proc"]=.)) xproc := RejWezP_K["Q:proc"]
  if(miesiac>miestxt1) CallAlg["OKRESL-STAWKE-PROCENTOWA"]
  xRejWstawP_K["Q:placab",sum_wyn+RejWezP_K["Q:placab"]]
  xRejWstawP_K["Q:proc",xproc]
pomin:
  RejOp["Q:ZapiszRek",""]
  sum_wyn    := .
  sk_zw      := .
  sk_uzys    := .
  podstubez  := .
  
% OKRESL-STAWKE-PROCENTOWA.ALG
    if(sum_wyn+bo_podstopod>prog1 and not(wspolneopod)) xproc := proc2
    if(sum_wyn+bo_podstopod>prog1 and wspolneopod)      xproc := proc1
    if(sum_wyn+bo_podstopod>prog2 and not(wspolneopod)) xproc := proc3
    if(sum_wyn+bo_podstopod>prog2 and wspolneopod)      xproc := proc2
    if(sum_wyn+bo_podstopod>prog3 and not(wspolneopod)) xproc := proc4
    if(sum_wyn+bo_podstopod>prog3 and wspolneopod)      xproc := proc3  

% ZAPISUJE-SUMY-KOREKTA.ALG
// zapisuje do rejestru plksieg
  rok_listy := StrCut[RejWezP_S["E:rokmie"],0,2]
//  OkALert["zapisuje-sumy-korekta: klucz="+xpracownik+"*"+rok_listy] 
  RejOp["q:ZmienKluczRej","10"]  
  IF(RejOp["Q:ZnajdzRek",xpracownik+"*"+rok_listy]) goto zmien
    RejOp["Q:DodajRek",""]
    xRejWstawP_S["Q:pracownik",xpracownik]
    xRejWstawP_S["Q:rok",rok_listy]
zmien:
//  okalert["e:nrlisty="+ RejWezP_K["E:nrlisty"]+"$numerlisty="+numerlisty]
  if(Not(RejWezP_K["E:nrlisty"] < numerlisty)) goto pomin1
  xRejWstawP_K["Q:k_zw"+miestxt1,RejWezP_K["Q:k_zw"+miestxt1]+sk_zw]
  xRejWstawP_K["Q:k_uzys"+miestxt1,RejWezP_K["Q:k_uzys"+miestxt1]+sk_uzys]
//  xRejWstawP_K["Q:k_zw",sk_zw+RejWezP_K["Q:k_zw"]]
//  xRejWstawP_K["Q:k_uzys",sk_uzys+RejWezP_K["Q:k_uzys"]]
pomin1:
//  okalert["zaliczka="+zaliczka+"$podatekp="+RejWezP_K["Q:podatekp"]]
  xRejWstawP_K["Q:podatekp",zaliczka+RejWezP_K["Q:podatekp"]]
  xRejWstawP_K["Q:placan",RejWezP_K["Q:placan"]+podstubez]
//  okalert["sum_wyn="+sum_wyn]
  if(sum_wyn=. or sum_wyn=0) goto pomin
  if(not(RejWezP_K["Q:proc"]=.)) xproc := RejWezP_K["Q:proc"]
  if(miesiac>miestxt1) CallAlg["OKRESL-STAWKE-PROCENTOWA"]
  xRejWstawP_K["Q:placab",sum_wyn+RejWezP_K["Q:placab"]]
  xRejWstawP_K["Q:proc",xproc]
pomin:
  RejOp["Q:ZapiszRek",""]
  sum_wyn    := .
  sk_zw      := .
  sk_uzys    := .
  podstubez  := .
  

// --------------------
// dlugosc urlopu
// --------------------
    
% OKRESL-MIESIAC-URLOP.ALG
// urlop-okreslam miesia poczatkowy don naliczania podstawy urlopu
   miesiac1  := StringNaLiczbe[miesiac]-ur_lmies
   miestxt1  := ToStr["#roundn[miesiac1,0]#S"]
   miespocz3 := StrCut[zero,0,StrLen[miestxt1]]+miestxt1
   miespocz4 := ""
   if(miesiac1=0 or miesiac1<0) miespocz3 := "01"
   if(miesiac1=0 or miesiac1<0) miespocz4 := ToStr["#12+miesiac1#S:0"]
//okalert["miespocz3="+miespocz3+"$miespocz4="+miespocz4]
// --------------------------
// pobierz dane pracownika
// --------------------------


% POBIERZ-DANE-PRACOWNIK1.ALG
  defzmiennaS["mpracold",""]
  defzmiennaK["dla_zwolnionych",1]
  defzmiennaD["datazw_od",'']
  defzmiennaD["datazw_do",'']
//  if(mpracold==xpracownik) Exitalg[0]
znajdz_prac:
  If(RejOp["C:ZnajdzRek",xpracownik]) goto ok_pracownik
    OkAlert[" Brak pracownika => "+xpracownik+" w rejestrze pracownik|ow !$Nale|zy to uzupe|lni|c !"]
    CallAlg["SCN-PLACE-PODATNIK"]
    goto znajdz_prac
ok_pracownik:
    xnazw      := RejWezP_S["C:nazwisko"]+" "+RejWezP_S["C:imie1"]
    xwydzial   := RejWezP_S["C:wydzial"]
    xstanow    := RejWezP_S["C:stanow"]
    xpnaliczac := RejWezP_L["C:pnaliczac"]
    xppobierac := RejWezP_L["C:ppobierac"]
    os_rodz    := RejWezP_K["C:os_rodz"]
    os_piel    := RejWezP_K["C:os_piel"]
    dokid_prac := RejWezP_K["C:dokid"]
    czywychow  := RejWezP_S["C:czywychow"]
    rodzmalzonek  := RejWezP_L["C:rodzmalzonek"]
//    rodzaj_wyplaty := RejWezp_K["C:rodzaj_wyplaty"]
    CallPyt["import place_g | place_g.ustaw_rodzaj_wyplaty()"]
//    if(xkodprac=="") xkodprac := RejWezP_S["C:kodprac"]
    xkodprac := RejWezP_S["C:kodprac"]
    if(mpracold==xpracownik) goto pomin_dialog
    if(dla_zwolnionych=1) goto wszyscy_prac
    if(dla_zwolnionych=3  and RejWezP_L["C:czyzatrud"] and RejWezP_D["C:dzwolnien"]='') goto wszyscy_prac
    if(dla_zwolnionych=3) goto pomin_prac
// zwolnieni
    if(RejWezP_L["C:czyzatrud"] and RejWezP_D["C:dzwolnien"]='') goto pomin_prac
    if(not(datazw_od='') and  RejWezP_D["C:dzwolnien"] < datazw_od) goto pomin_prac
    if(not(datazw_do='') and  RejWezP_D["C:dzwolnien"] > datazw_do) goto pomin_prac
    goto wszyscy_prac
    pomin_prac:
    mpracold := xpracownik
    xpnaliczac := .N.
    takczynie := "2"
    goto pomin_dialog
    wszyscy_prac:
    takczynie := "1"
    if(Not(RejWezP_L["C:czyzatrud"])and Not(RejWezP_D["C:dzwolnien"]='')and xpnaliczac) CallAlg["PODATNIK-ZWOLNIONY-LOOK"]
    mpracold := xpracownik
    pomin_dialog:
    if(kwotaprzel=.) kwotaprzel := RejWezp_K["C:dobanku1"]
    if(kwotaprzel2=.) kwotaprzel2 := RejWezp_K["C:dobanku2"]
    if(kwotagotowka=.) kwotagotowka := RejWezP_K["C:dogotowka"]
% PODATNIK-ZWOLNIONY-LOOK.ALG
  takczynie := "1"
  ExDialogOp["IdzDoDialogu","PODATNIK-ZWOLNIONY"]
    if(takczynie="1") ExitAlg[0]
//  if(CallAlg["SPRAWDZ-CZY-JEST-PRZEBIEG"]=0) ExitAlg[0]
        xpnaliczac := .N.
    if(takczynie="3") RejWstawP_L["C:pnaliczac",.N.]

% SPRAWDZ-CZY-JEST-PRZEBIEG.ALG
  RejOp["PP:OtworzRejsprawdz","PRZEBIEG.RXR"]
  RejOp["PP:ZmienKluczRej","4"]
  if(RejOp["PP:ZnajdzRek",xpracownik]) goto koniec
  RejOp["PP:ZamknijRej",""]
  ExitAlg[0]
koniec:
  RejOp["PP:ZamknijRej",""]
  ExitAlg[1]

% PODATNIK-ZWOLNIONY.DLG
##DEFWINDOW = ,,,,ADPHS,,,,,"Komunikat"
##10,LBGT,ADP,,"%T%AK"
##11,LBGT,ADP,,"%N%IE"
##12,LBGT,ADP,,"NIE NI%G%DY"
##13,FD,AD,,,,&&lblue/white,&&lblue/white,,,zmienna:TYTUL1


 #13                                                   #


 Pracownik zosta|l zwolniony.
 Czy mimo to wyst|api na li|scie p|lac?


   #10      #          #11      #          #12      #
% TABLICA-AKCJI-PODATNIK-ZWOLNIONY
"AKCJA-PRZED-WYSWIETLENIEM",PODATNIK-ZWOLNIONY-PRZED
"AKCJA-BUTTON10",PODATNIK-ZWOLNIONY-PO10
"AKCJA-BUTTON11",PODATNIK-ZWOLNIONY-PO11
"AKCJA-BUTTON12",PODATNIK-ZWOLNIONY-PO12
//
% PODATNIK-ZWOLNIONY-PRZED.ALG
        TYTUL1 := xpracownik+"   ==>   "+xnazw
  ExDialogOp["IdzDoPozycji","10"]
% PODATNIK-ZWOLNIONY-PO10.ALG
        takczynie := "1"
  ExDialogOp["KoniecWykonywania",""]
  Exitalg[0]
% PODATNIK-ZWOLNIONY-PO11.ALG
        takczynie := "2"
  ExDialogOp["KoniecWykonywania",""]
  Exitalg[0]
% PODATNIK-ZWOLNIONY-PO12.ALG
        takczynie := "3"
  ExDialogOp["KoniecWykonywania",""]
  Exitalg[0]
//
%
// -------------------------
// pobierz skladniki
// -------------------------
          
% POBIERZ-DANE-SKLADNIK.ALG
znajdz_skl:
If(RejOp["X:ZnajdzRek",xskladnik]) goto jest_skl
  OkAlert["Brak sk|ladnika => "+xskladnik+" w rejestrze sk|ladnik|ow !$Nale|zy to uzupe|lni|c !"]
  CallAlg["LOOK-PLSKLAD"]
  goto znajdz_skl
jest_skl:
        xnazsklad   := RejWezP_S["X:nazsklad"]
        xmiegodz    := RejWezP_S["X:miegodz"]
        xrodz       := RejWezP_S["X:rodzskl"]
        xtyp := rejwezp_s["x:typsklad"]
        xmies_url := rejwezp_k["x:mies_url"]
        xmies_kwartal := rejwezp_k["x:mies_kwartal"]
        xod_mies := rejwezp_k["x:od_mies"]
        xdopodstawy := RejWezP_L["X:dopodstawy"]
        xujemny     := RejWezP_L["X:ujemny"]
	xczystaly   := rejwezp_l["x:czystaly"]
        xmnozyc     := RejWezP_L["X:mnozyc"]
        premsklad1  := RejWezP_S["X:premsklad1"]
        premproc1   := RejWezP_K["X:premproc1"]
        premsklad2  := RejWezP_S["X:premsklad2"]
        premproc2   := RejWezP_K["X:premproc2"]
        premind := rejwezp_l["x:premind"] 
        rodzwynagr  := RejWezP_K["X:rodzwynagr"]
        rodzzwoln  := RejWezP_K["X:rodzzwoln"]
        kwota_zw  := RejWezP_K["X:kwota_zw"]
        procnadlicz := RejWezP_K["X:procnadlicz"]
        procnocne   := RejWezP_K["X:procnocne"]
        n_normalne  := RejWezP_L["X:n_normalne"]
        n_dodatek  := RejWezP_L["X:n_dodatek"]
        n_podstawa  := RejWezP_L["X:n_podstawa"]
        n_procpodst := rejwezp_k["x:n_procpodst"]
        n_podst := rejwezp_s["x:n_podst"]
        npodst_ind := rejwezp_l["x:npodst_ind"]
        stazpocz := RejWezP_K["X:stazpocz"]
        stazprocpocz := RejWezP_K["X:stazprocpocz"]
        stazskok := RejWezP_K["X:stazskok"]
        stazokres := RejWezP_K["X:stazokres"]
        stazprockon := RejWezP_K["X:stazprockon"]
        uzupelniany := rejwezp_l["x:uzupelniany"]
        uzupelnianynu := rejwezp_l["x:uzupelnianynu"]
        uzupelnianynn := rejwezp_l["x:uzupelnianynn"]
        uzupelnianycm := rejwezp_l["x:uzupelnianycm"]
        xczyczescpodst := rejwezp_l["x:czyczescpodst"]
        xczy_pow_zl := rejwezp_l["x:czy_pow_zl"]
        xchorobowe := rejwezp_l["x:chorobowe"]
        xczynadgodz := rejwezp_l["x:czynadgodz"]
        xponad_mies := rejwezp_l["x:ponad_mies"]
        xczyzz := rejwezp_l["x:czyzz"]
        stazsklad1  := RejWezP_S["X:stazsklad1"]
        stazsklad2  := RejWezP_S["X:stazsklad2"]
        msklad1  := RejWezP_S["X:msklad1"]
        msklad2  := RejWezP_S["X:msklad2"]
        mproc := RejWezP_K["X:mproc"]
	form_symbol := rejwezp_s["x:form_symbol"]
	form_proc := rejwezp_k["x:form_proc"]
	xtrzyproc := rejwezp_k["x:trzyproc"]
        xtrzybiez := rejwezp_l["x:trzybiez"]
        xtrzylaczyc := rejwezp_l["x:trzylaczyc"]
        xpoziom  := RejWezP_S["X:poziom"]
        xkwart_proc := rejwezp_k["x:kwart_proc"]
        xkwart_ind := rejwezp_l["x:kwart_ind"]
% WYLICZ-PREMIE.ALG
rej_g := "G:"
rej_x := "X:"
rej_gg := "GG:" 
sklad_gg := xskladnik
czy_ponownie := .N.
pole_lgodzin := "lgodzin"
pole_zbrutto := "stawka"
callalg["WYLICZ-PREMIE-xx"]
% WYLICZ-PREMIE-xx.ALG
//okalert["premie"]
// maria
  xzbrutto := .
  xzbrutton := .
  placabp1 := .
  placabpx := .
  tura := 1
  premproc_gg := .
  if(rejop[rej_gg+"znajdzrek",xpracownik+"*"+sklad_gg]) premproc_gg := rejwezp_k[rej_gg+"stawka"]
  petla:
  if(tura=2) goto tura_2
  premskladx := premsklad1
  premprocx := premproc1
  if(premind) premprocx := premproc_gg
// okalert["premskladx="+premskladx+"$premprocx="+premprocx]
  goto wspolne_tura
  tura_2:
  premskladx := premsklad2
  premprocx := premproc2
  if(premind) premprocx := premproc_gg
  wspolne_tura:
  xzbrutto1 := .
  klucz := xpracownik+"*"+premskladx
  if(czy_ponownie) klucz := premskladx
  if(not(czy_ponownie) and strin["--"+premskladx+"--",sklad_lista]<0) goto prem2
  IF(not(RejOp[rej_g+"ZnajdzRek",klucz])) goto prem2
  xzbrutto1 := RejWezP_K[rej_g+pole_zbrutto]
  placabp1 := RejWezP_K[rej_g+pole_zbrutto]
  if(not(rejop[rej_x+"znajdzrek",premskladx])) goto stawka1
if(czy_ponownie and RejWezP_S[rej_x+"miegodz"]=="Miesi|ac") placabp1 := RejWezP_K[rej_g+"placabp"]
//okalert["2="+ xzbrutto1+"$il-godz_robocz="+il_godz_robocz]
  if(not(RejWezP_L[rej_x+"mnozyc"])) goto stawka1
  if(rejwezp_k[rej_g+pole_lgodzin]= . and not(czy_ponownie)) goto przemnazanie
  if(rejwezp_k[rej_g+pole_lgodzin]= . and czy_ponownie) goto przemnazanie1
  if(RejWezP_S[rej_x+"miegodz"]=="Godzin|e" and rejwezp_k[rej_g+pole_lgodzin]= il_godz_przeprac) goto przemnazanie    
  if(RejWezP_S[rej_x+"miegodz"]=="Dzie|n" and rejwezp_k[rej_g+pole_lgodzin]= il_dni_przeprac) goto przemnazanie    
  if(not(rejwezp_k[rej_g+pole_lgodzin]=.) and RejWezP_L[rej_x+"mnozyc"]) xzbrutto1 := RejWezP_K[rej_g+pole_zbrutto]*rejwezp_k[rej_g+pole_lgodzin]
  if(not(rejwezp_k[rej_g+pole_lgodzin]=.) and RejWezP_L[rej_x+"mnozyc"]) placabp1 := RejWezP_K[rej_g+pole_zbrutto]*rejwezp_k[rej_g+pole_lgodzin]
  if(not(rejwezp_k[rej_g+pole_lgodzin]=.)) goto stawka1
  przemnazanie:
//  if(not(RejWezP_L[rej_x+"mnozyc"])) goto stawka1
  if(RejWezP_S[rej_x+"miegodz"]=="Godzin|e") xzbrutto1 := RejWezP_K[rej_g+pole_zbrutto]*rzil_godz_robocz
  if(RejWezP_S[rej_x+"miegodz"]=="Dzie|n") xzbrutto1 := RejWezP_K[rej_g+pole_zbrutto]*rzil_dni_robocz
  if(RejWezP_S[rej_x+"miegodz"]=="Godzin|e") placabp1 := RejWezP_K[rej_g+pole_zbrutto]*il_godz_robocz
  if(RejWezP_S[rej_x+"miegodz"]=="Dzie|n") placabp1 := RejWezP_K[rej_g+pole_zbrutto]*il_dni_robocz
  goto stawka1
  przemnazanie1:
  xzbrutto1 := RejWezP_K[rej_g+pole_zbrutto]*rejwezp_k[rej_g+pole_lgodzin]
  placabp1 := RejWezP_K[rej_g+pole_zbrutto]*rejwezp_k[rej_g+pole_lgodzin]
  stawka1:
  xzbrutto := xzbrutto+xzbrutto1*(premprocx/100)
  placabpx := placabpx+placabp1*(premprocx/100)
//if(xpracownik="029") okalert["xzbrutto1="+xzbrutto1+"$premprocx="+premprocx+"$placabp1="+placabp1]
  prem2:
  tura := tura+1
  if(tura<3) goto petla
//if(xpracownik="029") okalert["skladnik="+xskladnik+"   xzbrutto="+xzbrutto]
  stawka_p := .
  if(strin["--"+xskladnik+"--",sklad_stale]>-1) stawka_p := xzbrutto
//  if(xpracownik="001") okalert["stawka_p="+stawka_p]
if(czy_ponownie) goto licz_ponownie
//okalert["nie licz ponownie"]
  xstawka     := roundn[xzbrutto/il_godz_robocz*rzil_godz_robocz,2]
//if(xpracownik="029") okalert["xstawka="+xstawka]
  if(xlgodzin=. and xmiegodz=="Miesi|ac") xlgodzin    := 1
  if(xmiegodz=="Dzie|n") xstawka := roundn[xzbrutto/il_dni_robocz,2]
  if(xmiegodz=="Dzie|n" and rejwezp_k[rej_g+pole_lgodzin]=.) xlgodzin := rzil_dni_robocz
  if(xmiegodz=="Godzin|e") xstawka := roundn[xzbrutto/il_godz_robocz,2]
  if(xmiegodz=="Godzin|e"  and rejwezp_k[rej_g+pole_lgodzin]=.) xlgodzin := rzil_godz_robocz
  if(xzbrutto=. or xzbrutto=0) xlgodzin    := .
goto licz_wspolne
licz_ponownie:
//okalert["licz ponownie"]
  xstawka     := roundn[xzbrutto/il_godz_robocz*rzil_godz_robocz,2]
//okalert["aaaaxlgodzin="+xlgodzin+"$xstawka="+xstawka]
  if(xlgodzin=. and xmiegodz=="Miesi|ac") xlgodzin    := 1
  if(xmiegodz=="Dzie|n") xstawka := roundn[xzbrutto/il_dni_robocz,2]
  if(xmiegodz=="Dzie|n") xlgodzin := rzil_dni_robocz
  if(xmiegodz=="Godzin|e") xstawka := roundn[xzbrutto/il_godz_robocz,2]
  if(xmiegodz=="Godzin|e") xlgodzin := rzil_godz_robocz
//okalert["xlgodzin="+xlgodzin+"$xstawka="+xstawka]
  if(xzbrutto=. or xzbrutto=0) xlgodzin    := .
licz_wspolne:
  xzbrutto := xstawka
  if(xmnozyc) xzbrutto := Roundn[xstawka *xlgodzin,2]
  xzbrutton := xstawka
  if(not(xmiegodz=="Miesi|ac")) Exitalg[0]
  xzbrutto := placabpx
//if(xpracownik="029") okalert["placabpx="+placabpx]
  if(xmnozyc) xzbrutto := Roundn[placabpx *xlgodzin,2]
  xzbrutton := placabpx
if(not(czy_ponownie)) exitalg[0]
xstawka := placabpx
if(uzupelnianycm) xstawka := roundn[placabpx/il_godz_robocz*rzil_godz_robocz,2]
  xzbrutto := xstawka
  if(xmnozyc) xzbrutto := Roundn[xstawka *xlgodzin,2]
//okalert["premiass  xlgodzin= "+ xlgodzin+"$xstawka="+xstawka+"$xzbrutto="+xzbrutto]
exitalg[0]
//
% WYLICZ-FORMULE.ALG
if(form_symbol="") Exitalg[0]
xzbrutton := .
stawka := .
callfrm["ff_form\w"+form_symbol]
//okalert["stawka="+stawka]
xstawka := roundn[(stawka*form_proc)/100,2]
if(not(xmnozyc))   xzbrutto  := xstawka
    if(Not(xlgodzin=.) and xmnozyc) xzbrutto := xstawka*xlgodzin
xzbrutton := xstawka
//
% WYLICZ-GODZINY-NADLICZBOWE.ALG
if(not(zmien_stawka) and not(xstawka=.)) Exitalg[0]
xzbrutton := .
        wyn_dod     := .
        wyn_godz    := .
        til_gdz_all := .
 CallAlg["WYLICZ-STAWKE-GODZINOWA"]
//        xstawka   := roundn[(wyn_godz*procnadlicz)/100,2]
//if(xpracownik=="01001") okalert["nadgodz_bd="+nadgodz_bd+"$nadgodz_bn="+nadgodz_bn+"$til_gdz_all="+til_gdz_all+"$n_normalne="+n_normalne+"$n_dodatek="+n_dodatek]
// tu sprawdzenie rodzaju listy - gdy podstawowa ( nie uzupe�niaj�ca)- odczytanie danych wyplaconych na innych listach w miesiacu
nadgodz_bdp := .
nadgodz_bnp := .
if(podstawowa and not(wyrownanie)) callalg["nadgodziny_pozostale_listy"]
//if(xpracownik=="01001") okalert["nadgodz_bn="+nadgodz_bn+"$nadgodz_bnp="+nadgodz_bnp]
        wyn_dod := (nadgodz_bd+nadgodz_bdp)/til_gdz_all
        wyn_dod := (wyn_dod*procnadlicz)/100
        wyn_godz  := (nadgodz_bn+nadgodz_bnp)/til_gdz_all
//if(xpracownik=="G03") okalert["wyn_dod="+wyn_dod+"$wyn_godz="+wyn_godz]
        if(n_normalne) xstawka   := roundn[wyn_godz,2]
        if(n_dodatek) xstawka   := roundn[wyn_dod,2]
        if(n_normalne and n_dodatek) xstawka := roundn[wyn_godz+wyn_dod,2]
    if(not(xmnozyc))   xzbrutto  := xstawka
    if(Not(xlgodzin=.) and xmnozyc) xzbrutto := xstawka*xlgodzin
xzbrutton := xstawka
if(strin["--"+xskladnik+"--",sklad_stale]>-1) kwota_stale := kwota_stale+xzbrutto
//

% nadgodziny_pozostale_listy.alg
  RejOp["archxx:otworzrej1","PLARCH.RXR"]
  rejop["archxx:zmienkluczrej","19"]
//okalert["klucz="+rejwezp_k["x:szukajklucz"]+"$datawypl="+datawypl+"$mieswypl="+mieswypl+"$xpracownik="+xpracownik+"$sklad_zd="+sklad_zd+"$nadgodz_bdp="+nadgodz_bdp+"$nadgodz_bnp="+nadgodz_bnp]
 if(not(rejop["archxx:znajdzrek",xpracownik+"*"+mieswypl])) goto omin_to
petla_archxx:
if(not(rejop["x:znajdzrek",rejwezp_s["archxx:skladnik"]])) goto nastepny_archxx
   if(not(rejwezp_l["x:czynadgodz"])) goto nastepny_archxx
// przyjmowane wynagrodzenie jakie by�oby gdyby pracowa� ca�y miesi�c
//   if(not(xrodz=="11")) nadgodz_bnp := nadgodz_bnp+ rejwezp_k["placabn"]
przelicznik := 1
if(rejwezp_l["x:mnozyc"] and rejwezp_s["x:miegodz"]=="godzin|e" and rejwezp_k["archxx:gdzpracy"]=rejwezp_k["archxx:lgodzin"]) przelicznik := gdzpracyu_all
if(rejwezp_l["x:mnozyc"] and rejwezp_s["x:miegodz"]=="godzin|e" and not(rejwezp_k["archxx:gdzpracy"]=rejwezp_k["archxx:lgodzin"])) przelicznik := rejwezp_k["archxx:lgodzin"]
if(rejwezp_l["x:mnozyc"] and rejwezp_s["x:miegodz"]=="dzie|n" and rejwezp_k["archxx:dnipracy"]=rejwezp_k["archxx:lgodzin"]) przelicznik := dnipracyu_all
if(rejwezp_l["x:mnozyc"] and rejwezp_s["x:miegodz"]=="dzie|n" and not(rejwezp_k["archxx:dnipracy"]=rejwezp_k["archxx:lgodzin"])) przelicznik := rejwezp_k["archxx:lgodzin"]
//if(xpracownik=="01001") okalert["przelicznik="+przelicznik]
   nadgodz_bnp := nadgodz_bnp+ rejwezp_k["archxx:placabn"]*przelicznik
//   if(xrodz=="11")  nadgodz_bnp := nadgodz_bnp + wynagr_podstawa
//if(xpracownik=="01001") okalert["datawypl="+datawypl+"$mieswypl="+mieswypl+"$xpracownik="+xpracownik+"$sklad_zd="+sklad_zd+"$skladnik="+rejwezp_s["archxx:skladnik"]+"$kwota="+rejwezp_k["archxx:placabn"]*przelicznik+"$nadgodz_bdp="+nadgodz_bdp+"$nadgodz_bnp="+nadgodz_bnp]
//
//   if(not(xrodz=="11") and strin["--"+xskladnik+"--",sklad_zd]>-1) nadgodz_bdp := nadgodz_bdp+ rejwezp_k["archxx:placabn"]
   if(strin["--"+rejwezp_s["archxx:skladnik"]+"--",sklad_zd]>-1) nadgodz_bdp := nadgodz_bdp+ rejwezp_k["archxx:placabn"]*przelicznik
//   if(xrodz=="11" and strin["--"+xskladnik+"--",sklad_zd]>-1) nadgodz_bd := nadgodz_bd + wynagr_podstawa1
nastepny_archxx:
if(rejop["archxx:weznastepnyrekn",""]) goto petla_archxx
omin_to:
//okalert["nadgodz_bnp="+nadgodz_bnp+"$nadgodz_bdp="+nadgodz_bdp]
rejop["archxx:zamknijrej",""]
//
% wyrownanie_pozostale_listy.alg
//okalert["wyrownanie_pozostale"]
  RejOp["archxx:otworzrej1","PLARCH.RXR"]
  rejop["archxx:zmienkluczrej","19"]
 if(not(rejop["archxx:znajdzrek",xpracownik+"*"+mieswypl])) goto omin_to
//okalert["xlgodzin="+xlgodzin]
petla_archxx:
if(rejwezp_l["archxx:anulowana"]) goto nastepny_archxx
if(not(rejop["x:znajdzrek",rejwezp_s["archxx:skladnik"]])) goto nastepny_archxx
   yrodz := rejwezp_s["x:rodzskl"]
//okalert["skladnik="+rejwezp_s["archxx:skladnik"]+"$yrodz="+yrodz+"$sklad_zmienne="+sklad_zmienne]
   xyrodz := stringnaliczbe[yrodz]  
   czy_wyr := .N. 
   if((xyrodz<50 and not(yrodz="12" or yrodz="31" or yrodz="32" or yrodz="19")) or yrodz="331") czy_wyr := .T.
   if(not(czy_wyr)) goto nastepny_archxx
//okalert["1"]
   wyrownanie_1p := wyrownanie_1p + rejwezp_k["archxx:placab"]
   if(strin["--"+rejwezp_s["archxx:skladnik"]+"--",sklad_zmiennew]>-1 and xyrodz>10 and not(yrodz="331")) wyrownanie_2p := wyrownanie_2p + rejwezp_k["archxx:placab"] 
   if(strin["--"+rejwezp_s["archxx:skladnik"]+"--",sklad_zmiennew]>-1) goto nastepny_archxx
   wyrownanie_2p := wyrownanie_2p + rejwezp_k["archxx:placab"]*rejwezp_k["archxx:gdzpracy"]/rejwezp_k["archxx:gdzpracyu"]
nastepny_archxx:
if(rejop["archxx:weznastepnyrekn",""]) goto petla_archxx
omin_to:
//okalert["nadgodz_bnp="+nadgodz_bnp+"$nadgodz_bdp="+nadgodz_bdp]
rejop["archxx:zamknijrej",""]
//
% WYLICZ-Z-PODSTAWY.ALG
        xzbrutton := .
wyn_podst := 0
dn1 := stringnadate[xmieswypl+".01"]
d_data := dn1
callsl["PLACE_G->daj_koniec_mies()"]
dn2 := d_data
if(n_podst="") goto omin_inne
if(not(rejop["IP:szukajrek",n_podst+"*80.01.01"])) goto omin_inne
petla_ip:
if(not(rejwezp_s["IP:pracownik"]==n_podst)) goto omin_inne
if(dn1 >= rejwezp_d["IP:dataod"] and dn2 <= rejwezp_d["IP:datado"]) wyn_podst := 0+rejwezp_k["IP:stawka"]
if(not(wyn_podst=0)) goto omin_inne
if(rejop["ip:weznastepnyrek",""]) goto petla_ip
omin_inne:
xx_procpodst := n_procpodst
if(not(npodst_ind)) goto wylicz_stawke1
xx_procpodst := .
if(rejop["gg:znajdzrek",xpracownik+"*"+xskladnik]) xx_procpodst := rejwezp_k["gg:stawka"]
wylicz_stawke1:
//
if(xmiegodz=="Miesi|ac") xlgodzin := 1
        xstawka := roundn[wyn_podst*xx_procpodst/100,2]
    if(not(xmnozyc))    xzbrutto  := xstawka
    if(Not(xlgodzin=.) and xmnozyc) xzbrutto := xstawka*xlgodzin
if(strin["--"+xskladnik+"--",sklad_stale]>-1) kwota_stale := kwota_stale+xzbrutto
xzbrutton := xstawka
//
//
% WYLICZ-GODZINY-NOCNE.ALG
// 11.01.01 - zmiana sposobu wyliczania - godziny nocne odnosz� si� do godzin wynikajacych z indywidualnego harmonogramu a nie harmonogramu podstawowego
// w przypadku podstawy z minimalnego wynagrodzenia i czesci etatu - wynagrodzenie = wynagrodzenie minimalne* wymiar etatu
if(not(zmien_stawka) and not(xstawka=.)) Exitalg[0]
        ch_najniwyn := .
        wyn_godz    := .
        xzbrutton := .
 CallAlg["WYLICZ-STAWKE-GODZINOWA"]
 CallAlg["POBIERZ-PARCHOR"]
//        xstawka   := wyn_godz+roundn[(ch_najniwyn*procnocne)/100,2]
wyn_godz := ch_najniwyn* wymiar_prac_m
//okalert["podst_til_gdz-all="+podst_til_gdz_all]
if(n_podstawa and wynagr_podstawa1>ch_najniwyn) wyn_godz := wynagr_podstawa1
if(n_podstawa and ch_najniwyn=.)  wyn_godz := wynagr_podstawa1
//okalert["wyn_godz="+wyn_godz+"$podst_til_gdz_all="+podst_til_gdz_all+"$til_gdz_all="+til_gdz_all+"$procnocne="+procnocne+"$xpracownik="+xpracownik+"$wymiar_prac="+wymiar_prac+"$wymiar_prac_m="+wymiar_prac_m]
//        xstawka   := roundn[wyn_godz/podst_til_gdz_all,2]
        xstawka   := roundn[wyn_godz/til_gdz_all,2]
if(n_podstawa and wynagr_podstawa1>ch_najniwyn) xstawka   := roundn[wyn_godz/til_gdz_all,2]
        xstawka := roundn[xstawka*procnocne/100,2]
    if(not(xmnozyc))    xzbrutto  := xstawka
    if(Not(xlgodzin=.) and xmnozyc) xzbrutto := xstawka*xlgodzin
if(strin["--"+xskladnik+"--",sklad_stale]>-1) kwota_stale := kwota_stale+xzbrutto
xzbrutton := xstawka
//
% WYLICZ-STAWKE-GODZINOWA.ALG
//        idx       := "##"+kl_d_grupa+StrCut[xrokmie,0,2]+StrCut[xrokmie,3,2]
        idx       := "##"+kl_d_grupa+StrCut[mieswypl,0,2]+StrCut[mieswypl,3,2]
//okalert["idx="+idx]
  if(Not(RejOp["DK:ZnajdzRek",idx])) ExitAlg[0]
        til_gdz_all     := RejWezP_K["DK:til_gdz_all"]
  if(Not(RejOp["DK:ZnajdzRek",xpracownik])) ExitAlg[0]
        wynagr_podstawa := RejWezP_K["DK:KDR_wyn_baz"]
//        okalert["wynagr_podstawa="+wynagr_podstawa+"$til_gdz_all="+til_gdz_all]
        wyn_godz  := roundn[wynagr_podstawa/til_gdz_all,2]

% WYLICZ-TRZYNASTKE.ALG
xzbrutton := .
xzbrutto := .
xstawka := .
placab_uzu := .
mies_uzu := ""
// sprawdzenie roku w ktorym naliczenie
rej_arch := "arch:"
rej_x := "x:"
rej_sum := "sum:"
if(xtrzybiez) goto wylicz_podstawe
if(ch_ksieg="") Exitalg[0]
Finnop["@0openmain",ch_ksieg]
//okalert["ch_ksieg="+ch_ksieg]
rejop["arch_st:otworzrej","PLARCH.RXR"]
rejop["x_st:otworzrej","plsklad.rxr"]
rejop["sum_st:otworzrej","sumynart.rxr"]
rej_arch := "arch_st:"
rej_x := "x_st:"
rej_sum := "sum_st:"
rejop[rej_sum+"zmienkluczrej","3"]
// wyliczenie podstawy trzynastki
wylicz_podstawe:
//wylicz_czas_pracy - miesiace po zmianie wymiaru pracy
// 1. ustalenie poczatku okresu branego do podstawy chorobowego 
data_ptrz := poczrok_ksieg 
data_ktrz := koniecroku[data_ptrz]
dataod5 := data_ptrz
if(dataod5<data_zat) dataod5 := data_zat
datado5 := data_ktrz
if(datado5>data_zw) datado5 := data_zw
n := 0
czy_zm := "N"
wymiar_d := ""
//
data_ptrz := dataod5
data_ktrz := datado5
wymiar_prac_sx := ""
dataxx_d := ''
callalg["ustal_zakres"]
//
// wyliczenie podstawy
podstawa_13 := .
podstawa_13_u := .
brutto_13 := .
// okreslenie symboli pracownikow dla ktorych wyliczona trzynastka
symbol_prac := xpracownik
rejop["trzy:otworzrej","podatnik.rxr"]
rejop["trzy1:otworzrejtemp","nrlistx.rxr"]
if(not(pustepole["trzy:sym_prac"]) and xtrzylaczyc) symbol_prac := rejwezp_s["trzy:sym_prac"]
rejop["trzy:znajdzrek",symbol_prac]
rejop["trzy1:dodajrek",""]
xrejwstawp_s["trzy1:listanumer",symbol_prac]
xrejwstawp_s["trzy1:lista",rejwezp_s["trzy:nazwisko"]+" "+rejwezp_s["trzy:imie1"]]
rejop["trzy1:zapiszrek",""]
if(not(xtrzylaczyc)) goto dalej1
rejop["trzy:zmienkluczrej","10"]
if(not(rejop["trzy:znajdzrek",symbol_prac])) goto dalej1
petla1:
rejop["trzy1:dodajrek",""]
xrejwstawp_s["trzy1:listanumer",rejwezp_s["trzy:sym"]]
xrejwstawp_s["trzy1:lista",rejwezp_s["trzy:nazwisko"]+" "+rejwezp_s["trzy:imie1"]]
rejop["trzy1:zapiszrek",""]
if(rejop["trzy:weznastepnyrekn",""]) goto petla1
dalej1:
//if(xpracownik="009") rejop["trzy1:zobaczdbf",""]
rejop[rej_arch+"zmienkluczrej","2"]
if(not(rejop[rej_arch+"wezpierwszyrek",""])) goto koniec
//if(not(rejop[rej_arch+"znajdzrek",xpracownik])) goto koniec
rejop["trzy1:wezpierwszyrek",""]
petla_trzy:
if(not(rejop[rej_arch+"znajdzrek",rejwezp_s["trzy1:listanumer"]])) goto koniec1
//okalert["pracownik="+xpracownik]
petla_arch1:
brutto_13_u := .
if(rejwezp_l[rej_arch+"anulowana"]) goto petla_arch
skladnik := rejwezp_s[rej_arch+"skladnik"]
if(not(rejop[rej_x+"znajdzrek",skladnik])) goto petla_arch
if(rejwezp_l[rej_x+"ekwiwalent"] or rejwezp_s[rej_x+"rodzskl"]=="1" or rejwezp_s[rej_x+"rodzskl"]=="33") goto wylicz 
goto petla_arch
wylicz:
brutto_13 := rejwezp_k[rej_arch+"placab"]
if(stringnadate[rejwezp_s[rej_arch+"mieswypl"]+".01"]>= dataxx_d) brutto_13_u := rejwezp_k[rej_arch+"placab"]
//okalert["brutto_13="+brutto_13]
if(not(rejwezp_l[rej_x+"czystaly"])) goto podstawa
if(rejwezp_l[rej_x+"ponad_mies"]) goto podstawa
if(not(pustepole[rej_arch+"gdzuop_szk"]) and rejwezp_k[rej_arch+"gdzuop_szk"]>0) brutto_13 := brutto_13 -(brutto_13 * rejwezp_k[rej_arch+"gdzuop_szk"]/ rejwezp_k[rej_arch+"gdzpracyu"])
if(not(pustepole[rej_arch+"gdzuop_szk"]) and rejwezp_k[rej_arch+"gdzuop_szk"]>0) brutto_13_u := brutto_13_u -(brutto_13_u * rejwezp_k[rej_arch+"gdzuop_szk"]/ rejwezp_k[rej_arch+"gdzpracyu"])
podstawa:
//if(rejwezp_s[rej_arch+"pracownik"]=="U001") okalert["lista="+rejwezp_s[rej_arch+"lista"]+rejwezp_k[rej_arch+"nrlisty"]+"$skladnik="+rejwezp_s[rej_arch+"skladnik"]+"$brutto="+brutto_13+"$podstawa_13="+podstawa_13]
podstawa_13 := podstawa_13 + brutto_13
podstawa_13_u := podstawa_13_u + brutto_13_u
petla_arch:
if(rejop[rej_arch+"weznastepnyrekn",""]) goto petla_arch1
koniec1:
if(rejop["trzy1:weznastepnyrek",""]) goto petla_trzy
//if(podstawa_13_u=.) podstawa_13_u := podstawa_13
xstawka := xtrzyproc*podstawa_13/100
placab_uzu := xtrzyproc*podstawa_13_u/100
mies_uzu := data_ptrz+"-"+data_ktrz+czy_zm+"w"+wymiar_prac_sx
xzbrutto := xstawka
xzbrutton := xstawka
xlgodzin := 1
koniec:
rejop["trzy:zamknijrej",""]
rejop["trzy1:zamknijrej",""]
if(xtrzybiez) goto omin_zamknij
rejop[rej_arch+"zamknijrej",""]
rejop[rej_x+"zamknijrej",""]
rejop[rej_sum+"zamknijrej",""]
finnop["close",""]
omin_zamknij:
rejop["arch:zmienkluczrej","17"]
rejop["sum:zmienkluczrej","1"]
exitalg[0]
//
% ustal_zakres.alg
// ustalenie daty poczatku okresu liczonego do chorobowego - przyjmowanie daty zmiany wymiaru czasu pracy
// dane wejsciowe data_ptrz i data_ktrz
wymiar_d := ""
petla_ptrz:
dataxx := strcut[wykaz_zmian_wymiarow,n*11,8]
if(dataxx="") goto koniec_ptrz
dataxx_d := stringnadate[dataxx]
if(dataxx_d<=data_ktrz) wymiar_d := dataxx
if(data_ptrz<= dataxx_d and data_ktrz>=dataxx_d and not(dataod5=data_zat)) czy_zm := "T"
if(data_ptrz< dataxx_d and data_ktrz>=dataxx_d) data_ptrz := dataxx_d
n := n+1
goto petla_ptrz
koniec_ptrz:
// tu ustalenie data_ptrz w przypadku gdy zmiana wymiaru w trakcie miesiaca -> poczatek nastepnego miesiaca
// tu sprawdzenie czy dzien data_ptrz jest piewszym dniem roboczym w miesiacu
pocz_data := data_ptrz
if(callalg["sprawdz_czy_poczatek_mies"]=1) goto omin_koniec
d_data := data_ptrz
  CallSl["PLACE_G->daj_koniec_mies()"]
data_ptrz := d_data+1
omin_koniec:
//
if(wymiar_d="") goto omin_wymiar_prac
if(rejop["ppx:znajdzrek",xpracownik+"*"+wymiar_d]) wymiar_prac_sx := rejwezp_s["ppx:wymiar1"]+"/"+rejwezp_s["ppx:wymiar2"]
omin_wymiar_prac:
rejop[rej_sum+"zmienkluczrej","3"]
klucz := xpracownik+"*"+strcut[studatas[dataxx_d],0,4]+strcut[studatas[dataxx_d],5,2]
rejop[rej_sum+"znajdzrek",klucz]
if(rejwezp_k[rej_sum+"s_dnirobu_all"]=rejwezp_k[rej_sum+"s_dnirobu_kal"]) goto omin_to
d_data := stringnadate[wymiar_d]
  CallSl["PLACE_G->daj_koniec_mies()"]
dataxx_d := d_data+1
omin_to:
//
% WYLICZ-KWARTALNE.ALG
//okalert["dataod5="+dataod5+"$data_zat="+data_zat+"$xpracownik="+xpracownik+"last_wymar_zm="+last_wymiar_zm]
xzbrutton := .
xzbrutto := .
xstawka := .
if(xmies_kwartal=.) xmies_kwartal := 1
if(xod_mies=.) xod_mies := 0
// ustalenie miesiaca poczatkowego i koncowego wyliczania podstawy
rok_kwart := stringnaliczbe[rokwypl]
mies_kwart := stringnaliczbe[miesiacwypl]
if(mies_kwart>xod_mies) goto ok
mies_kwart := mies_kwart+12
rok_kwart := rok_kwart-1
ok:
mies_kwart := mies_kwart - xod_mies
datak_kwart := C_date[rok_kwart,mies_kwart,1]
d_data := datak_kwart
  CallSl["PLACE_G->daj_koniec_mies()"]
datak_kwart := d_data
 if(mies_kwart>xmies_kwartal-1) goto ok_p
rok_kwart := rok_kwart-1
mies_kwart := mies_kwart +12
ok_p:
mies_kwart := mies_kwart - xmies_kwartal+1
datap_kwart := C_date[rok_kwart,mies_kwart,1]
dataod5 := datap_kwart
// sprawdzenie daty zatrudnienia
//data_zat1 := data_zat
//if(A_date[data_zat,"D"]=1) goto porownaj
//d_data := data_zat1
//  CallSl["PLACE_G->daj_koniec_mies()"]
//data_zat1 := d_data+1
//porownaj:
if(dataod5<data_zat) dataod5 := data_zat
datado5 := datak_kwart
if(datak_kwart>data_zw) datado5 := data_zw
//
n := 0
czy_zm := "N"
wymiar_d := ""
data_ptrz := dataod5
data_ktrz := datado5
wymiar_prac_sx := ""
dataxx_d := ''

//okalert["data_kon="+datak_kwart+"$data-pocz="+datap_kwart]
// sprawdzenie roku w ktorym naliczenie
rej_arch := "arch:"
rej_sum := "sum:"
// wyliczenie podstawy kwartalnego
wylicz_podstawe:
podstawa_kwartn := .
podstawa_kwart := .
podstawa_kwart_u := .
tura := 1
druga_tura:
rejop[rej_arch+"zmienkluczrej","2"]
rejop[rej_sum+"zmienkluczrej","3"]
if(not(rejop[rej_arch+"wezpierwszyrek",""])) goto koniec_rok
if(not(rejop[rej_arch+"znajdzrek",xpracownik])) goto koniec_rok
callalg["ustal_zakres"]
petla_arch1:
data_kwart := stringnadate[rejwezp_s[rej_arch+"mieswypl"]+".01"]
if(data_kwart<datap_kwart or data_kwart>datak_kwart) goto petla_arch
if(rejwezp_l[rej_arch+"anulowana"]) goto petla_arch
skladnik := rejwezp_s[rej_arch+"skladnik"]
klucz := xskladnik+tostr["--#rodzwynagr#S:0*"+skladnik]
if(not(rejop["spx:znajdzrek",klucz])) goto petla_arch
// podstawa_kwartn := podstawa_kwart+rejwezp_k[rej_arch+"placab"]
 podstawa_kwart := podstawa_kwart+rejwezp_k[rej_arch+"placab"]
if(stringnadate[rejwezp_s[rej_arch+"mieswypl"]+".01"]>= dataxx_d) podstawa_kwart_u := podstawa_kwart_u + rejwezp_k[rej_arch+"placab"]
 rodzaj_stawki := rejwezp_s[rej_arch+"miegodz"]
//okalert["rodzaj_stawki="+rodzaj_stawki]
 if(rodzaj_stawki=="Miesi|ac" or rodzaj_stawki="") podstawa_kwartn := podstawa_kwartn+rejwezp_k[rej_arch+"placabn"]
if(rejwezp_k[rej_arch+"gdzpracy"] = rejwezp_k[rej_arch+"lgodzin"] and rodzaj_stawki=="Godzin|e") podstawa_kwartn := podstawa_kwartn+rejwezp_k[rej_arch+"placabn"]*(rejwezp_k[rej_arch+"gdzpracyu_all"]-rejwezp_k[rej_arch+"gdzpracyu_nn"]-rejwezp_k[rej_arch+"gdzpracyu"]+rejwezp_k[rej_arch+"gdzpracy"])
if(not(rejwezp_k[rej_arch+"gdzpracy"] = rejwezp_k[rej_arch+"lgodzin"]) and rodzaj_stawki=="Godzin|e") podstawa_kwartn := podstawa_kwartn+rejwezp_k[rej_arch+"placabn"]*(rejwezp_k[rej_arch+"lgodzin"])
if(rejwezp_k[rej_arch+"dnipracy"] = rejwezp_k[rej_arch+"lgodzin"] and rodzaj_stawki=="Dzie|n") podstawa_kwartn := podstawa_kwartn+rejwezp_k[rej_arch+"placabn"]*(rejwezp_k[rej_arch+"dnipracyu_all"]-rejwezp_k[rej_arch+"dnipracyu_nn"]-rejwezp_k[rej_arch+"dnipracyu"]+rejwezp_k[rej_arch+"dnipracy"])
if(not(rejwezp_k[rej_arch+"dnipracy"] = rejwezp_k[rej_arch+"lgodzin"]) and rodzaj_stawki=="Dzie|n") podstawa_kwartn := podstawa_kwartn+rejwezp_k[rej_arch+"placabn"]*(rejwezp_k[rej_arch+"lgodzin"])
petla_arch:
if(rejop[rej_arch+"weznastepnyrekn",""]) goto petla_arch1
koniec_rok:
if(poczrok_ksieg <= datap_kwart) goto wylicz_stawke
// gdy okres zawiera dane poprzedniego roku
if(tura>1) goto wylicz_stawke
if(ch_ksieg="") goto wylicz_stawke
tura := tura+1
Finnop["@0openmain",ch_ksieg]
rejop["arch_st:otworzrej","PLARCH.RXR"]
rej_arch := "arch_st:"
rejop["sum_st:otworzrej","sumynart.rxr"]
rej_sum := "sum_st:"
goto druga_tura
wylicz_stawke:
procentx := xkwart_proc
if(not(xkwart_ind)) goto wylicz_stawke1
procentx := .
if(rejop["gg:znajdzrek",xpracownik+"*"+xskladnik]) procentx := rejwezp_k["gg:stawka"]
wylicz_stawke1:
//xstawka := xkwart_proc*podstawa_kwart/100
xstawka := procentx * podstawa_kwart/100
//okalert["podstawa_kwartn="+podstawa_kwartn+"$xkwart_proc="+xkwart_proc+"$xstawka="+xstawka]
xzbrutto := xstawka
xzbrutton := procentx * podstawa_kwartn/100
placab_uzu := procentx * podstawa_kwart_u/100
if(xchorobowe) goto omin_stawki
xstawka := xzbrutton
xzbrutto := xzbrutton
placab_uzu := xstawka
omin_stawki:
mies_uzu := data_ptrz+"-"+data_ktrz+czy_zm+"w"+wymiar_prac_sx
xlgodzin := 1
koniec:
if(tura=1) goto omin_zamknij
rejop[rej_arch+"zamknijrej",""]
rejop[rej_sum+"zamknijrej",""]
finnop["close",""]
omin_zamknij:
rejop["arch:zmienkluczrej","17"]
exitalg[0]
//
//
% WYLICZ-SKLADKE-ZWIAZKOWA.ALG
//MARIA
xueu := .
xuru := .
xucu := .
xzbrutton := .
callalg["pl_par-stawki-ubezp"]
zabor_zus := Roundn[podstawa_zz * (xueu + xuru + xucu)/100,2]
xstawka := podstawa_zz - zabor_zus
//if(xpracownik="071") okalert["podstawa="+podstawa_zz+"$zabor-zus="+zabor_zus+"$xstawka="+xstawka+"$mproc="+mproc]
xstawka := Roundn[mproc* xstawka/100,2]
xzbrutto  := xstawka
if(xlgodzin=. and xmiegodz=="Miesi|ac") xlgodzin := 1
if(Not(xlgodzin=.) and xmnozyc) xzbrutto := xstawka*xlgodzin
//if(strin["--"+xskladnik+"--",sklad_stale]>-1) kwota_stale := kwota_stale+xzbrutto
//okalert["wynagr_podstawa="+wynagr_podstawa+"$proc="+proc+"$xstawka="+xstawka+"xzbrutto="+xzbrutto]
xzbrutton := xstawka
% WYLICZ-DODATEK-STAZOWY.ALG
rej_g := "G:"
rej_x := "X:"
pole_lgodzin := "lgodzin"
pole_zbrutto := "stawka"
czy_ponownie := .N.
callalg["WYLICZ-DODATEK-STAZOWY-xx"]
% WYLICZ-DODATEK-STAZOWY-xx.ALG
// wyliczenie stazu
pracownik := xpracownik
porzadek := 1
xrokwypl := stringnaliczbe[rokwypl]
xmiesiacwypl := stringnaliczbe[miesiacwypl]
datamax := c_date[xrokwypl+1,1,1]-1
if(xmiesiacwypl<12) datamax := c_date[xrokwypl,xmiesiacwypl+1,1]-1
//okalert["datamax="+datamax]
//datamax := datalisty
full_list := 2
dzn_nal := 0
slata := .
smiesiace := .
sdni := .
xzbrutton := .
placabp1 := .
placabpx := .
//okalert["procstaz="+procstaz]
if(not(procstaz=.)) goto oblicz_stawke
callalgfile["kadry\kadry_pracownik_staz.py;place\drukuj_place_jubileusz.py","wylicz_staz_dla_jednego"]
//
// wyliczenie procentu
if(smiesiace>0) goto procent
if(slata>1 and a_date[datamax,"D"] > sdni) slata := slata-1
procent:
proc := .
gorka := .
gorka1 := .
if(slata< stazpocz) xstawka := .
if(slata< stazpocz) goto omin_wylicz
gorka := Round[(slata-stazpocz)/stazokres,0]
if((gorka*stazokres) > (slata-stazpocz)) gorka := gorka -1
oblicz_stawke:
if(not(procstaz=.)) gorka := procstaz
proc := stazprocpocz+ stazskok*gorka
if(proc>stazprockon) proc := stazprockon
//okalert["proc="+proc]
//if(not(procstaz=.)) proc := procstaz
procstaz := gorka
oblicz_stawke1:
// obliczenie podstawy
  wynagr_podstawa := .
  tura := 1
  petla:
  if(tura=1) stazskladx := stazsklad1
  if(tura=2) stazskladx := stazsklad2
  xzbrutto1 := .
  klucz := xpracownik+"*"+stazskladx
  if(czy_ponownie) klucz := stazskladx
  if(not(czy_ponownie) and strin["--"+stazskladx+"--",sklad_lista]<0) goto prem2
  IF(not(RejOp[rej_g+"ZnajdzRek",klucz])) goto prem2
  xzbrutto1 := RejWezP_K[rej_G+pole_zbrutto]
  placabp1 := RejWezP_K[rej_G+pole_zbrutto]
  if(not(rejop[rej_x+"znajdzrek",stazskladx])) goto stawka1
 if(czy_ponownie and RejWezP_S[rej_x+"miegodz"]=="Miesi|ac") placabp1 := RejWezP_K[rej_g+"placabp"]
  if(not(RejWezP_L[rej_x+"mnozyc"])) goto stawka1
  if(not(rejwezp_k[rej_g+pole_lgodzin]=.)) xzbrutto1 := RejWezP_K[rej_G+pole_zbrutto]*rejwezp_k[rej_g+pole_lgodzin]
  if(not(rejwezp_k[rej_g+pole_lgodzin]=.)) placabp1 := RejWezP_K[rej_G+pole_zbrutto]*rejwezp_k[rej_g+pole_lgodzin]
  if(not(rejwezp_k[rej_g+pole_lgodzin]=.)) goto stawka1
  if(czy_ponownie) goto inne_xzbrutto1
  if(RejWezP_S[rej_x+"miegodz"]=="Godzin|e") xzbrutto1 := RejWezP_K[rej_g+pole_zbrutto]*rzil_godz_robocz
  if(RejWezP_S[rej_x+"miegodz"]=="Godzin|e") placabp1 := RejWezP_K[rej_g+pole_zbrutto]*il_godz_robocz
  if(RejWezP_S[rej_x+"miegodz"]=="Dzie|n") xzbrutto1 := RejWezP_K[rej_g+pole_zbrutto]*rzil_dni_robocz
  if(RejWezP_S[rej_x+"miegodz"]=="Dzie|n") placabp1 := RejWezP_K[rej_g+pole_zbrutto]*il_dni_robocz
goto stawka1
inne_xzbrutto1:
  xzbrutto1 := RejWezP_K[rej_G+pole_zbrutto]*rejwezp_k[rej_g+pole_lgodzin]
  placabp1 := RejWezP_K[rej_g+pole_zbrutto]*rejwezp_k[rej_g+pole_lgodzin]
  stawka1:
  wynagr_podstawa := wynagr_podstawa+xzbrutto1
  placabpx := placabpx+placabp1
  prem2:
  tura := tura+1
  if(tura<3) goto petla
//okalert["wynagr_podstawa="+wynagr_podstawa]
//
wynagr_podstawa1 := wynagr_podstawa
if(not(czy_ponownie) and uzupelnianycm) wynagr_podstawa := roundn[wynagr_podstawa1/il_godz_robocz*rzil_godz_robocz,2]
if(RejWezP_S["X:miegodz"]=="Dzie|n" and uzupelnianycm and not(czy_ponownie)) wynagr_podstawa := roundn[wynagr_podstawa1/il_dni_robocz*rzil_dni_robocz,2]
//if(RejWezP_S["X:miegodz"]=="Dzie|n" and czy_ponownie) wynagr_podstawa := roundn[wynagr_podstawa1/il_dni_robocz*rzil_dni_robocz,2]
xstawka := proc* wynagr_podstawa/100
omin_wylicz:
xzbrutto  := xstawka
if(xlgodzin=. and xmiegodz=="Miesi|ac") xlgodzin := 1
if(Not(xlgodzin=.) and xmnozyc) xzbrutto := xstawka*xlgodzin
if(strin["--"+xskladnik+"--",sklad_stale]>-1) kwota_stale := kwota_stale+xzbrutto
xzbrutton := xstawka
if(not(xmiegodz=="Miesi|ac")) Exitalg[0]
xstawka := proc*placabpx/100
xzbrutto := xstawka
xzbrutton := xstawka
if(not(czy_ponownie)) exitalg[0]
if(uzupelnianycm) xstawka := roundn[xstawka/il_godz_robocz*rzil_godz_robocz,2]
xzbrutto := xstawka
xzbrutton := xstawka
% WYLICZ-ZAS_RODZINNY.ALG
        xzbrutto   := .
//  RejOp["H:otworzrejsprawdz","PARCHOR.RXR"]
 CallAlg["POBIERZ-PARCHOR"]
//  RejOp["H:ZamknijRej",""]
 CallAlg["WYLICZ-RODZ"]
        xstawka    := xzbrutto
        xlgodzin   := os_rodz

% WYLICZ-ZAS_PIELEGNAC.ALG
        xzbrutto   := .
        ch_piel    := .
//  RejOp["H:otworzrejsprawdz","PARCHOR.RXR"]
 CallAlg["POBIERZ-PARCHOR"]
//  RejOp["H:ZamknijRej",""]
        xzbrutto   := os_piel*ch_piel
        xstawka    := xzbrutto
        xlgodzin   := os_piel

% WYLICZ-ZAS_WYCHOWAWCZY.ALG
    if(czywychow="") ExitAlg[0]
        ch_wych1   := .
        ch_wych2   := .
//  RejOp["H:otworzrejsprawdz","PARCHOR.RXR"]
 CallAlg["POBIERZ-PARCHOR"]
//  RejOp["H:ZamknijRej",""]
    if(czywychow="1") xzbrutto := ch_wych1
    if(czywychow="1") xstawka  := ch_wych1
    if(czywychow="2") xzbrutto := ch_wych2
    if(czywychow="2") xstawka  := ch_wych2
        xlgodzin   := 1

% POBIERZ-PARCHOR.ALG
  If(RejOp["H:WezPierwszyRek",""]) goto jestklucz
jeszczeraz:
    If(Not(YesAlert["Brak parametr|ow  do wyliczania zasi|lk|ow !$Czy chcesz je uzupe|lni|c ?"])) ExitAlg[0]
    CallAlg["LOOK-PARCHOR"]
  If(Not(RejOp["H:WezPierwszyRek",""])) goto jeszczeraz
jestklucz:  
        ch_rodz1   := RejWezP_K["H:ch_rodz1"]
        ch_rodz2   := RejWezP_K["H:ch_rodz2"]
        ch_rodz3   := RejWezP_K["H:ch_rodz3"]
        ch_rodz4   := RejWezP_K["H:ch_rodz4"]
        ch_piel    := RejWezP_K["H:ch_piel"]
        ch_macierz := RejWezP_K["H:ch_macierz"]
        ch_opiek   := RejWezP_K["H:ch_opiek"]
        ch_wych1   := RejWezP_K["H:ch_wych1"]
        ch_wych2   := RejWezP_K["H:ch_wych2"]
        ch_pogrz   := RejWezP_K["H:ch_pogrz"]
        ch_najniwyn := RejWezP_K["H:ch_najniwyn"]
        u_lmies    := rejwezp_k["h:u_lmies"]
        wsp_ekw := rejwezp_k["h:wsp_ekw"]
// ---------------------------
// dane z archiwum
// ---------------------------

% POBIERZ-Z-ARCHIWUM.ALG
  numertxt  := ToStr["#numerlisty#S:0"]
  RejOp["E:ZmienKluczRej","7"]
  IF(RejOp["E:ZnajdzRek",symlisty+"*"+numertxt+"*"+xpracownik+"*"+xskladnik]) goto przepisz_dane
   xzbrutton := .
exitalg[0]
   przepisz_dane:
        xlista    := RejWezP_S["E:lista"]
        xrodz     := RejWezP_S["E:rodz"]
        xtyp := RejWezP_S["E:typsklad"]
        xkodprac  := RejWezP_S["E:kodprac"]
        xstawka   := RejWezP_K["E:stawka"]
        xlgodzin  := RejWezP_K["E:lgodzin"]
        xzbrutto  := RejWezP_K["E:placab"]
        xzbrutton  := RejWezP_K["E:placabn"]
//    goto pominsumy
    if(Not(korektalisty)) goto pominsumy
        sk_uzys   := RejWezP_K["E:sk_uzys"]
        sk_uzys_m := RejWezP_K["E:sk_uzys_m"]
        sk_uzys_r := RejWezP_K["E:sk_uzys_r"]
        spodstopod := RejWezP_K["E:spodstopod"]
        spodstopod1 := RejWezP_K["E:spodstopod1"]
        sprocpod  := RejWezP_K["E:sprocpod"]
        szalpod   := RejWezP_K["E:szalpod"]
        sk_zw     := RejWezP_K["E:sk_zw"]
        snalpod   := RejWezP_K["E:snalpod"]
        snetto    := RejWezP_K["E:snetto"]
        sbrutto   := RejWezP_K["E:sbrutto"]
        spodst_er := RejWezP_K["E:spodst_er"]
        spodst_cw := RejWezP_K["E:spodst_cw"]
        spodst_z  := RejWezP_K["E:spodst_z"]
        spodst_z1  := RejWezP_K["E:spodst_z1"]
        spodstkup  := RejWezP_K["E:spodstkup"]
        spodstkup1  := RejWezP_K["E:spodstkup1"]
        sueu      := RejWezP_K["E:sueu"]
        suru      := RejWezP_K["E:suru"]
        sucu      := RejWezP_K["E:sucu"]
        szalzdr   := RejWezP_K["E:szalzdr"]
        snalzdr   := RejWezP_K["E:snalzdr"]
        szalzdrn  := RejWezP_K["E:szalzdrn"]
        suep      := RejWezP_K["E:suep"]
        surp      := RejWezP_K["E:surp"]
        suwp      := RejWezP_K["E:suwp"]
        szasilek  := RejWezP_K["E:szasilek"]
        skorpod   := RejWezP_K["E:skorpod"]
        skorzdrow := RejWezP_K["E:skorzdrow"]
        skorpit   := RejWezP_K["E:skorpit"]
        spotrac   := RejWezP_K["E:spotrac"]
        ueu       := RejWezP_K["E:ueu"]
        uru       := RejWezP_K["E:uru"]
        ucu       := RejWezP_K["E:ucu"]
        uep       := RejWezP_K["E:uep"]
        urp       := RejWezP_K["E:urp"]
        uwp       := RejWezP_K["E:uwp"]
        podst_z   := RejWezP_K["E:podst_z"]
        kw_obniz  := RejWezP_K["E:kw_obniz"]
        sbr_odj_chor  := RejWezP_K["E:sbr_odj_chor"]
	sbr_odj_wyp  := RejWezP_K["E:sbr_odj_wyp"]
	spodst_er_opod := RejWezP_K["E:spodst_er_opod"]
	spodst_cw_opod := RejWezP_K["E:spodst_cw_opod"]
	szus_opod := RejWezP_K["E:szus_opod"]
	szdrownobn := RejWezP_K["E:szdrownobn"]
	spodst_z1_opod := RejWezP_K["E:spodst_z1_opod"]
	spodst_er_nobn := RejWezP_K["E:spodst_er_nobn"]
	spodst_cw_nobn := RejWezP_K["E:spodst_cw_nobn"]
	szus_nobn := RejWezP_K["E:szus_nobn"]
	szalzdr_nobn := RejWezP_K["E:szalzdr_nobn"]
        sfep       := RejWezP_K["E:sfep"]
        sfgp       := RejWezP_K["E:sfgp"]
        sfpp      := RejWezP_K["E:sfpp"]
pominsumy:
        dowypl    := RejWezP_K["E:dowypl"]
        os_rodz   := RejWezP_K["E:os_rodz"]
        kw_rodz   := RejWezP_K["E:kw_rodz"]
        kw_wych   := RejWezP_K["E:kw_wych"]
        kw_inne   := RejWezP_K["E:kw_inne"]
        os_piel   := RejWezP_K["E:os_piel"]
        kw_piel   := RejWezP_K["E:kw_piel"]
        dnipracy  := RejWezP_K["E:dnipracy"]
        gdzpracy  := RejWezP_K["E:gdzpracy"]
        gdzpracyu  := RejWezP_K["E:gdzpracyu"]
        gdzpracyu_all  := RejWezP_K["E:gdzpracyu_all"]
        gdzpracyu_nn  := RejWezP_K["E:gdzpracyu_nn"]
        dnipracyu  := RejWezP_K["E:dnipracyu"]
        dnipracyu_all  := RejWezP_K["E:dnipracyu_all"]
        dnipracyu_nn  := RejWezP_K["E:dnipracyu_nn"]
        dnipracyu_bww  := RejWezP_K["E:dnipracyu_bww"]
        dnipracyu_kal  := RejWezP_K["E:dnipracyu_kal"]
        gdzuop_szk := rejwezp_k["e:gdzuop_szk"]
	placab_uzu := rejwezp_k["E:placab_uzu"]
	mies_uzu := rejwezp_s["E:mies_uzu"]
        dataod1   := RejWezP_D["E:dataod1"]
        datado1   := RejWezP_D["E:datado1"]
        kod_chor  := RejWezP_S["E:kod_chor"]
        dataod2   := RejWezP_D["E:dataod2"]
        datado2   := RejWezP_D["E:datado2"]
        kod_chor2 := RejWezP_S["E:kod_chor2"]
if(korektalisty and odczytaj_k=2) goto omin_daty_chor
        dataod3   := RejWezP_D["E:dataod3"]
        datado3   := RejWezP_D["E:datado3"]
        kod_chor3 := RejWezP_S["E:kod_chor3"]
omin_daty_chor:
        dataod4   := RejWezP_D["E:dataod4"]
        datado4   := RejWezP_D["E:datado4"]
        kod_chor4 := RejWezP_S["E:kod_chor4"]
        dataod5   := RejWezP_D["E:dataod5"]
        datado5   := RejWezP_D["E:datado5"]
        kod_chor5 := RejWezP_S["E:kod_chor5"]
        rodzaj_wyplaty := RejWezP_K["E:rodzaj_wyplaty"]
        kwotaprzel := RejWezP_K["E:kwotaprzel"]
        kwotaprzel2 := RejWezP_K["E:kwotaprzel2"]
        kwotagotowka := rejwezp_k["E:kwotagotowka"]
        kordwypl := rejwezp_d["E:kordwypl"]
    if(dataprzel='')  dataprzel  := dataprzel0
    if(dataprzel2='') dataprzel2 := dataprzel0
    dataprzelm0 := rejwezp_d["E:dataprzel0"]
    if(dataprzelm0='') dataprzelm0 := dataprzel0
    xplacabp := rejwezp_k["e:placabp"]
    wynpodst := RejWezP_K["e:wynpodst"]

// --------------------
// pobierz ze stalych
// --------------------

% POBIERZ-ZE-STALYCH.ALG
  defzmiennaL["zestalych",.N.]
  xzbrutton := .
  IF(Not(RejOp["G:ZnajdzRek",xpracownik+"*"+xskladnik])) ExitAlg[0]
  if(RejWezP_K["G:stawka"] = .) ExitAlg[0]
  xstawka   := RejWezP_K["G:stawka"]
  xlgodzin  := RejWezP_K["G:lgodzin"]
  if(xstawka=.) exitalg[0]
  xzbrutto  := .
  zestalych := .T.
// maria
// tu sprawdzenie w przypadku pustego pola xlgodzin czy skladnik ma sie odnosic do dni/godz. przepracowanych w miesiacu
// przyjmuje ze jezeli skladnik nie jest uzupelniany - to odnosi sie do xlgodzin zapisanych w rejestrze
  if(xmiegodz=="Miesi|ac" and xlgodzin=.) xlgodzin := 1
  if(not(uzupelniany)) goto pomin_dni_przeprac
  if(xmiegodz=="Dzie|n" and xlgodzin=.) xlgodzin := il_dni_przeprac
  if(xmiegodz=="Godzin|e" and xlgodzin=.) xlgodzin := il_godz_przeprac
  pomin_dni_przeprac:
  if(not(xlgodzin=.) and xmnozyc) xzbrutto := xstawka*xlgodzin
  if(not(xmnozyc)) xzbrutto  := xstawka
  xzbrutton := xstawka
//  if(xpracownik=="029" and xskladnik=="GD") okalert["xstawka="+xstawka+"$xlgodzin="+xlgodzin]
exitalg[0]
// czesc zaslepiona - dzielenie skladnika stalego na czesc urlopowa i czesc wypracowana
if(strin["--"+xskladnik+"--",sklad_stale]<0) exitalg[0]
 stawka_p := roundn[xzbrutto/il_godz_robocz,2]
 kwota_stale := kwota_stale+ stawka_p
// gdz_urlop := ilgdzrob_wypoczynk + ilgdzrob_oko + ilgdzrob_szk
// if(xpracownik="001") okalert["gdz_urlop="+gdz_urlop]
 xstawka_o := roundn[stawka_p * gdz_urlop,2]
 xstawka := xstawka - xstawka_o
 xlgodzin := 1
 xzbrutto := xstawka
// ---------------------
// zapisuje dane
// ---------------------

% PRZEPISZ-ZAPISUJE-DANE.ALG
  if(dataprzel='')  dataprzel  := dataprzel0
  if(dataprzel2='') dataprzel2 := dataprzel0
  RejOp["A:ZmienKluczRej","2"]
  If(Not(dla_skladnikow) and RejOp["A:ZnajdzRek",xpracownik]) goto zmieniam
  If(dla_skladnikow and RejOp["A:ZnajdzRek",xskladnik])       goto zmieniam
  RejOp["A:DodajRek",""]
  xRejWstawP_S["A:lista",symlisty]
  xRejWstawP_K["A:nrlisty",xnrlisty]
  xRejWstawP_D["A:datawypl",xdatawyp]
  xRejWstawP_S["A:mieswypl",mieswypl]
  xRejWstawP_S["A:rokmie",xrokmie]
  if(Not(dla_skladnikow)) xRejWstawP_S["A:pracownik",xpracownik]
  if(Not(dla_skladnikow)) xRejWstawP_S["A:nazw",xnazw]
  if(Not(dla_skladnikow)) xRejWstawP_S["A:stanow",xstanow]
  if(dla_skladnikow)      xRejWstawP_S["A:pracownik",xskladnik]
  if(dla_skladnikow)      xRejWstawP_S["A:nazw",xnazsklad]
  if(dla_skladnikow)      xRejWstawP_S["A:stanow",xrodz]
  xRejWstawP_S["A:wydzial",xwydzial]
  xRejWstawP_S["A:rodz",xrodz]
  
//  if(porzadek_prac=2) xRejWstawP_S["A:klucz_zloz",xwydzial+"_"+xpracownik]
//  if(porzadek_prac=3) xRejWstawP_S["A:klucz_zloz",xwydzial+"_"+xnazw]
  xRejWstawP_S["A:klucz_zloz",xwydzial+"_"+xpracownik]
  xRejWstawP_S["A:klucz_zloz2",xwydzial+"_"+xnazw]
  RejOp["A:ZapiszRek",""]
zmieniam:
  if(pustepole["A:nrlisty"]) xRejWstawP_K["A:nrlisty",xnrlisty]
  xRejWstawP_K["A:nrlisty",xnrlisty]
  xRejWstawP_S["A:kodprac",xkodprac]
  xRejWstawP_K["A:rodzaj_wyplaty",rodzaj_wyplaty]
  xRejWstawP_K["A:kwotaprzel",kwotaprzel]
  xRejWstawP_K["A:kwotaprzel2",kwotaprzel2]
  xRejWstawP_K["A:kwotagotowka",kwotagotowka]
  if(xstawka=. or xstawka=0) goto pomijam
  if(Not(dla_skladnikow)) xRejWstawP_K["A:dowypl",dowypl]
  xRejWstawP_D["A:dataprzel",dataprzel]
  xRejWstawP_D["A:dataprzel2",dataprzel2]
pomijam:
  RejOp["A:ZapiszRek",""]
  dokidtmp := RejWezP_K["A:dokid"]
  RejOp["B:DodajRek",""]
  if(Not(dla_skladnikow)) xRejWstawP_S["B:zskladnik",xskladnik]
  if(Not(dla_skladnikow)) xRejWstawP_S["B:zpracownik",xpracownik]
  if(Not(dla_skladnikow)) xRejWstawP_S["B:znazw",xnazsklad]
  if(dla_skladnikow)      xRejWstawP_S["B:zskladnik",xpracownik]
  if(dla_skladnikow)      xRejWstawP_S["B:zpracownik",xskladnik]
  if(dla_skladnikow)      xRejWstawP_S["B:znazw",xnazw]
     xRejWstawP_S["B:zmiegodz",xmiegodz]
     xRejWstawP_S["B:poziom",xpoziom]
     xRejWstawP_S["B:kodprac",xkodprac]
     xRejWstawP_K["B:zstawka",xstawka]
     xRejWstawP_K["B:zlgodzin",xlgodzin]
     if(xmiegodz=="Miesi|ac" and xlgodzin=.) xrejwstawp_k["B:zlgodzin",1]
     xRejWstawP_K["B:zbrutto",xzbrutto]
     xRejWstawP_K["B:zbrutton",xzbrutton]
     xRejWstawP_K["B:dokidzap",dokidtmp]
     xRejWstawP_D["B:zdatawypl",xdatawyp]
     xRejWstawP_S["B:zlista",xlista]
     xRejWstawP_K["B:znrlisty",xnrlisty]
     xRejWstawP_S["B:rodz",xrodz]
     xRejWstawP_S["B:typsklad",xtyp]
     if(Not(korektalisty)) goto pominsumy
     xRejWstawP_K["B:sbrutto",sbrutto]
//     OkAlert["uzys=" + sk_uzys]     
     xRejWstawP_K["B:sk_uzys",sk_uzys]
     xRejWstawP_K["B:spodstopod",spodstopod]
     xRejWstawP_K["B:spodstopod1",spodstopod1]
     xRejWstawP_K["B:sprocpod",sprocpod]
     xRejWstawP_K["B:snalpod",snalpod]
     xRejWstawP_K["B:sk_zw",sk_zw]
     xRejWstawP_K["B:szalpod",szalpod]
     xRejWstawP_K["B:snetto",snetto]
     xRejWstawP_K["B:spodst_er",spodst_er]
     xRejWstawP_K["B:spodst_cw",spodst_cw]
     xRejWstawP_K["B:spodst_z",spodst_z]
     xRejWstawP_K["B:spodst_z1",spodst_z1]
     xRejWstawP_K["B:spodstkup",spodstkup]
     xRejWstawP_K["B:spodstkup1",spodstkup1]
     xRejWstawP_K["B:sbr_odj_chor",sbr_odj_chor]
     xRejWstawP_K["B:sbr_odj_wyp",sbr_odj_wyp]
xRejWstawP_K["B:spodst_er_opod",spodst_er_opod]
xRejWstawP_K["B:spodst_cw_opod",spodst_cw_opod]
xRejWstawP_K["B:szus_opod",szus_opod]
xRejWstawP_K["B:szdrownobn",szdrownobn]
xRejWstawP_K["B:spodst_z1_opod",spodst_z1_opod]
xRejWstawP_K["B:spodst_er_nobn",spodst_er_nobn]
xRejWstawP_K["B:spodst_cw_nobn",spodst_cw_nobn]
xRejWstawP_K["B:szus_nobn",szus_nobn]
xRejWstawP_K["B:szalzdr_nobn",szalzdr_nobn]
     xRejWstawP_K["B:sueu",sueu]
     xRejWstawP_K["B:suru",suru]
        xRejWstawP_K["B:sucu",sucu]
        xRejWstawP_K["B:szalzdr",szalzdr]
        xRejWstawP_K["B:snalzdr",snalzdr]
        xRejWstawP_K["B:szalzdrn",szalzdrn]
        xRejWstawP_K["B:suep",suep]
        xRejWstawP_K["B:surp",surp]
        xRejWstawP_K["B:suwp",suwp]
        xRejWstawP_K["B:spotrac",spotrac]
        xRejWstawP_K["B:szasilek",szasilek]
        xRejWstawP_K["B:skorpod",skorpod]
        xRejWstawP_K["B:skorzdrow",skorzdrow]
        xRejWstawP_K["B:skorpit",skorpit]
        xRejWstawP_K["B:dowypl",dowypl]
        xRejWstawP_K["B:ueu",ueu]
        xRejWstawP_K["B:uru",uru]
        xRejWstawP_K["B:ucu",ucu]
        xRejWstawP_K["B:uep",uep]
        xRejWstawP_K["B:urp",urp]
        xRejWstawP_K["B:uwp",uwp]
        xRejWstawP_K["B:podst_z",podst_z]
        xRejWstawP_K["B:sfpp",sfpp]
        xRejWstawP_K["B:sfgp",sfgp]
        xRejWstawP_K["B:sfep",sfep]
pominsumy:
        xRejWstawP_K["B:kw_obniz",kw_obniz]
        xRejWstawP_K["B:os_rodz",os_rodz]
        xRejWstawP_K["B:kw_rodz",kw_rodz]
        xRejWstawP_K["B:kw_wych",kw_wych]
        xRejWstawP_K["B:kw_inne",kw_inne]
        xRejWstawP_K["B:os_piel",os_piel]
        xRejWstawP_K["B:kw_piel",kw_piel]
        xRejWstawP_K["B:dnipracy",dnipracy]
        xRejWstawP_K["B:gdzpracy",gdzpracy]
        xRejWstawP_K["B:gdzpracyu",gdzpracyu]
        xRejWstawP_K["B:gdzpracyu_all",gdzpracyu_all]
        xRejWstawP_K["B:gdzpracyu_nn",gdzpracyu_nn]
        xRejWstawP_K["B:dnipracyu",dnipracyu]
        xRejWstawP_K["B:dnipracyu_all",dnipracyu_all]
        xRejWstawP_K["B:dnipracyu_nn",dnipracyu_nn]
        xRejWstawP_K["B:dnipracyu_bww",dnipracyu_bww]
        xRejWstawP_K["B:dnipracyu_kal",dnipracyu_kal]
        xRejWstawP_K["B:placab_uzu",placab_uzu]
        xRejWstawP_s["B:mies_uzu",mies_uzu]
        xRejWstawP_K["B:gdzuop_szk",gdzuop_szk]
        xRejWstawP_K["B:wynpodst",wynpodst]
        xRejWstawP_K["B:placabp",xplacabp]
        if(xrodz="11") xRejWstawP_K["B:placabp",wynpodst]
        xRejWstawP_K["B:reh_procent",procent_reh]
        xRejWstawP_D["B:dataod1",dataod1]
        xRejWstawP_D["B:datado1",datado1]
        xRejWstawP_S["B:kod_chor",kod_chor]
        xRejWstawP_D["B:dataod2",dataod2]
        xRejWstawP_D["B:datado2",datado2]
        xRejWstawP_S["B:kod_chor2",kod_chor2]
        xRejWstawP_D["B:dataod3",dataod3]
        xRejWstawP_D["B:datado3",datado3]
        xRejWstawP_S["B:kod_chor3",kod_chor3]
        xRejWstawP_D["B:dataod4",dataod4]
        xRejWstawP_D["B:datado4",datado4]
//        xRejWstawP_S["B:kod_chor4",kod_chor4]
        xRejWstawP_D["B:dataod5",dataod5]
        xRejWstawP_D["B:datado5",datado5]
        xRejWstawP_S["B:kod_chor5",kod_chor5]
        xRejWstawP_K["B:kwotaprzel",kwotaprzel]
        xRejWstawP_K["B:kwotaprzel2",kwotaprzel2]
        xRejWstawP_K["B:kwotagotowka",kwotagotowka]
        xrejwstawp_d["b:kordwypl",kordwypl]
zapisz:
 RejOp["B:ZapiszRek",""]
if(not(pierwszy_mies)) goto next
rejop["tt:dodajrek",""]
rejop["b:przeniespola","tt:"]
rejop["tt:zapiszrek",""]
next:
// -----------------------------
// drukuj - naglowek
// -----------------------------
% LISTA-DRUKUJ-PORZADEK.DIC
"pracownik",1,Estring,"Symbol pracownika"
"nazwisko",2,Estring,"Nazwisko pracownika"

% UMOWY-DRUKUJ-PODAJ-PARAMETRY.ALG
// T_NAGLOWEK
DefZmiennaS["T_KLUCZ_PARAM_ID",""]
T_LISTA_PROBNA := .T.
T_LISTA_NUMER := .
T_LISTA_NUMER_S := ""
zbiorczo := .N.
petla:
  if (T_KLUCZ_PARAM_ID = "") goto dialog1
    ExDialogOp["IdzDoDialogu","UMOWY-DRUKUJ-PODAJ-PARAMETRY-NUMER"]
    goto dialog2 
  dialog1:
    ExDialogOp["IdzDoDialogu","UMOWY-DRUKUJ-PODAJ-PARAMETRY"]
  dialog2:
  PLACE_LISTA_NAZWA := "Wykaz list p|lac do um|ow/zlece|n"
  if (D_POS = 3) goto przelewy_zlisty
  if (not (D_POS = 2)) goto koniec_p
    plik_op["Otworzrejsprawdz","PLACE-LISTA-NUMEROW.REX"]
    if (not plik_op["Wywolajmenu","0"]) goto dalej
       CallPyt["import place_g | place_g.li_drukuj_poprzednia()"]
       plik_op["Zamknijrej",""]
       D_POS := 2       
       goto koniec_p       
   dalej: 
    plik_op["Zamknijrej",""]
    goto petla 

  przelewy_zlisty:
    plik_op["Otworzrejsprawdz","PLACE-LISTA-NUMEROW.REX"]
    if (not plik_op["Wywolajmenu","0"]) goto dalej1
       CallPyt["import place_g | place_g.li_drukuj_poprzednia()"]
       przegladaj_e := .N.
       lista := ""
       xnrostlisty := 0
       datalisty := D_DZISIAJ
       przel_indyw := .T.                
       CallAlg["ZAPISZ-PRZELEWY-DO-WYSLANIA"]
       plik_op["Zamknijrej",""]
       D_POS := 1
       goto koniec_p
   dalej1:
    plik_op["Zamknijrej",""]
    goto petla 
    
koniec_p:
rezygnujesz := .T.
if (not (D_POS = 1)) rezygnujesz := .N.
konczstrone := .N.
DefZmiennaL["miesiacami",.N.]
T_LISTA_NUMER_S := ToStr["#T_LISTA_NUMER#S:0"]
if (T_LISTA_PROBNA) T_LISTA_NUMER_S := "LISTA PR|OBNA"

% uzupelnij_wykaz_umow.alg
rejop["usunplikrej","nrlistux.rxr"]
rejop["X:otworzrej","nrlistux.rxr"]
rejop["xx:otworzrej","zllisty.rxr"]
if(not(rejop["xx:wezpierwszyrek",""])) goto zamknij_rej
petla_xx:
if(rejop["x:znajdzrek",rejwezp_s["xx:symlista"]]) goto nastepny_xx
rejop["x:dodajrek",""]
xrejwstawp_s["x:listanumer",rejwezp_s["xx:symlista"]]
xrejwstawp_s["x:listaopis",rejwezp_s["xx:nazlista"]]
rejop["x:zapiszrek",""]
nastepny_xx:
if(rejop["xx:weznastepnyrek",""]) goto petla_xx
zamknij_rej:
rejop["xx:zamknijrej",""]
rejop["x:zamknijrej",""]

% UMOWY-DRUKUJ-PODAJ-PARAMETRY12.ALG
zbiorczo := .N.
z_opisem := 1
ze_skladnikami := .N.
callalg["uzupelnij_wykaz_umow"]
    ExDialogOp["IdzDoDialogu","UMOWY-DRUKUJ-PODAJ-PARAMETRY12"]
rezygnujesz := .T.
if (D_POS = 0) rezygnujesz := .N.

//
% UMOWY-DRUKUJ-PODAJ-PARAMETRY1.ALG
// T_NAGLOWEK
zbiorczo := .N.
ExDialogOp["IdzDoDialogu","UMOWY-DRUKUJ-PODAJ-PARAMETRY1"]
rezygnujesz := .T.
konczstrone := .N.
if (D_POS = 0) rezygnujesz := .N.

% PLACE-DRUKUJ-PODAJ-PARAMETRY1.ALG
// T_NAGLOWEK
zbiorczo := .N.
miesiacami := .N.
ExDialogOp["IdzDoDialogu","PLACE-DRUKUJ-PODAJ-PARAMETRY1"]
rezygnujesz := .T.
konczstrone := .N.
if (D_POS = 0) rezygnujesz := .N.

% PLACE-DRUKUJ-PODAJ-PARAMETRY11.ALG
// T_NAGLOWEK
zbiorczo := .N.
miesiacami := .N.
okres := .N.
ExDialogOp["IdzDoDialogu","PLACE-DRUKUJ-PODAJ-PARAMETRY11"]
rezygnujesz := .T.
konczstrone := .N.
if (D_POS = 0) rezygnujesz := .N.

% PLACE-DRUKUJ-PODAJ-PARAMETRY.ALG
// T_NAGLOWEK
miesiacami := .N.
ExDialogOp["IdzDoDialogu","PLACE-DRUKUJ-PODAJ-PARAMETRY"]
konczstrone := .N.
rezygnujesz := .T.
if (D_POS = 0) rezygnujesz := .N.

% PLACE-DRUKUJ-PODAJ-PARAMETRY2.ALG
// T_NAGLOWEK
zbiorczo := .N.
miesiacami := .N.
ExDialogOp["IdzDoDialogu","PLACE-DRUKUJ-PODAJ-PARAMETRY2"]
rezygnujesz := .T.
if (D_POS = 0) rezygnujesz := .N.

% PLACE-DRUKUJ-PODAJ-PARAMETRY3.ALG
// T_NAGLOWEK
konczstrone := .N.
miesiacami := .N.
ExDialogOp["IdzDoDialogu","PLACE-DRUKUJ-PODAJ-PARAMETRY3"]
rezygnujesz := .T.
//zbiorczo := .T.
if (D_POS = 0) rezygnujesz := .N.
 zapisy := not zbiorczo

% PLACE-DRUKUJ-PODAJ-PARAMETRY12.ALG
// T_NAGLOWEK
konczstrone := .N.
miesiacami := .N.
ExDialogOp["IdzDoDialogu","PLACE-DRUKUJ-PODAJ-PARAMETRY12"]
rezygnujesz := .T.
//zbiorczo := .T.
if (D_POS = 0) rezygnujesz := .N.
 zapisy := not zbiorczo

% PLACE-DRUKUJ-PODAJ-PARAMETRY13.ALG
// T_NAGLOWEK
konczstrone := .N.
miesiacami := .N.
ExDialogOp["IdzDoDialogu","PLACE-DRUKUJ-PODAJ-PARAMETRY13"]
rezygnujesz := .T.
//zbiorczo := .T.
if (D_POS = 0) rezygnujesz := .N.
 zapisy := not zbiorczo

% TABLICA-AKCJI-UMOWY-DRUKUJ-PODAJ-PARAMETRY-NUMER
"AKCJA-F2-POLE12",PLACE-F2-LISTA-ZLBIORCA
"AKCJA-PO-POLU12",PLACE-PO-ZLBIORCA
"AKCJA-F2-POLE13",PLACE-F2-LISTA-NUMER
%< TABLICA-AKCJI-PLACE-DRUKUJ-PODAJ-PARAMETRY
"AKCJA-BUTTON30",!PYT.import place_g | place_g.li_zmien_numer()
"AKCJA-BUTTON31",!PYT.import place_g | place_g.li_zmien_numer()
"AKCJA-PO-POLU24",!CallPyt["import place_g | place_g.dr_lista_po_porzadek()"]
% TABLICA-AKCJI-UMOWY-DRUKUJ-PODAJ-PARAMETRY,TABLICA-AKCJI-UMOWY-DRUKUJ-PODAJ-PARAMETRY1,TABLICA-AKCJI-UMOWY-DRUKUJ-PODAJ-PARAMETRY12
"AKCJA-PO-POLU24",!CallPyt["import place_g | place_g.place_drukuj_porzadek_po_nazwa()"]
%< TABLICA-AKCJI-PLACE-DRUKUJ-PODAJ-PARAMETRY
"AKCJA-BUTTON17",!SL.gl_zobacz_rejestr("nrlistux.RxR")
//
% TABLICA-AKCJI-PLACE-DRUKUJ-PODAJ-PARAMETRY,TABLICA-AKCJI-PLACE-DRUKUJ-PODAJ-PARAMETRY1,TABLICA-AKCJI-PLACE-DRUKUJ-PODAJ-PARAMETRY3,TABLICA-AKCJI-PLACE-DRUKUJ-PODAJ-PARAMETRY12
"AKCJA-PRZED-WYSWIETLENIEM",PLACE-PODAJ-PARAMETRY-przed
"AKCJA-PRZED-WYKONYWANIEM",!ExDialogOp["IdzDoPozycji","13"]
"AKCJA-BUTTON0",PLACE-PODAJ-PARAMETRY-DRUKUJ-AKCE
"AKCJA-F2-POLE13",PLACE-F2-LISTA-NUMER
"AKCJA-F2-POLE12",PLACE-F2-LISTA-PRACOWNIK
"AKCJA-PO-POLU12",PLACE-PO-PRACOWNIK
//"AKCJA-PO-POLU24",!CallPyt["import place_g | place_g.dr_lista_po_porzadek()"]
//
% TABLICA-AKCJI-PLACE-DRUKUJ-PODAJ-PARAMETRY11,TABLICA-AKCJI-PLACE-DRUKUJ-PODAJ-PARAMETRY13
"AKCJA-PRZED-WYSWIETLENIEM",PLACE-PODAJ-PARAMETRY-przed
"AKCJA-PRZED-WYKONYWANIEM",!ExDialogOp["IdzDoPozycji","17"]
"AKCJA-BUTTON0",PLACE-PODAJ-PARAMETRY-DRUKUJ-AKCE
"AKCJA-BUTTON17",!SL.gl_zobacz_rejestr("nrlistx.RxR")
"AKCJA-F2-POLE12",PLACE-F2-LISTA-PRACOWNIK
"AKCJA-PO-POLU12",PLACE-PO-PRACOWNIK
% TABLICA-AKCJI-PLACE-DRUKUJ-PODAJ-PARAMETRY2
"AKCJA-PRZED-WYSWIETLENIEM",PLACE-PODAJ-PARAMETRY-przed
"AKCJA-PRZED-WYKONYWANIEM",!ExDialogOp["IdzDoPozycji","13"]
"AKCJA-BUTTON0",PLACE-PODAJ-PARAMETRY-DRUKUJ-AKCE2
"AKCJA-F2-POLE13",PLACE-F2-LISTA-NUMER
"AKCJA-F2-POLE12",PLACE-F2-LISTA-PRACOWNIK
"AKCJA-PO-POLU12",PLACE-PO-PRACOWNIK
% PLACE-PODAJ-PARAMETRY-przed.alg
exdialogop["ustawmenuparam","13:listanumer"]
if(callalg["umowy"]=0) exdialogop["ustawmenuparam","13:listanumer,string:242"]
//if(callalg["umowy"]=0) exdialogop["ustawmenuparam","17:listanumer,string:274"]
ExDialogOp["ZmienNaglowek",T_NAGLOWEK]

% PLACE-F2-LISTA-PRACOWNIK.ALG
L_TT_PRAC_REJESTR := ""
  L_TT_ZLEC_REJESTR := ""
CallAlg["PLACE-USTAW-M-PARAM"]
CallSl["gl_f2_rejestr("""+L_TT_PRAC_REJESTR +""",""sym"")"]

% PLACE-PO-PRACOWNIK.ALG
L_TT_PRAC_REJESTR := ""
  L_TT_ZLEC_REJESTR := ""
defzmiennas["pracownik",""]
CallAlg["PLACE-USTAW-M-PARAM"]
//CallSl["gl_popolu_rejestr("""+L_TT_PRAC_REJESTR+""",""sym"",""1"",""" + pracownik +""","""")"]
if(pracownik = "") Exitalg[0]
rejop["mx:otworzrej1",L_TT_PRAC_REJESTR]
if(rejop["mx:znajdzrek",pracownik]) Exitalg[0]
if(L_TT_PRAC_REJESTR=="PODATNIK.RXR") OkAlert["W rejestrze pracownik|ow brak pracownika o symbolu "+pracownik+"!"]
if(L_TT_PRAC_REJESTR=="ZLBIORCA.RXR") OkAlert["W rejestrze zleceniobiorc|ow brak zleceniobiorcy o symbolu "+pracownik+"!"]
ExDialogOp["IdzDoPozycji","12"]
rejop["mx:zamknijrej",""]
ExitAlg[0]

% PLACE-F2-LISTA-NUMER.ALG
//okalert["xxx"]
CallPyt["import place_g | place_g.place_f2_wybierz_w_list()"]

% PLACE-PODAJ-PARAMETRY-DRUKUJ-AKCE.ALG
  DefZmiennaL["P_SPRAWDZAC_D1",.N.]
  DefZmiennaL["P_SPRAWDZAC_pD1",.N.]
  defzmiennaD["pd1",'']
  defzmiennaD["pd2",'']
  if (not P_SPRAWDZAC_D1) goto dalej1
  if (not (d1 = '')) goto dalej1
    OkAlert["Wprowad|x dat|e pocz|atku okresu !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
 dalej1:   
  if ((d1 = '') OR (d2 = '') Or (d1 < d2) Or (d1 = d2)) Goto dalej2
     OkAlert["Data pocz|atkowa nie mo|ze by|c p|o|xniejsza ni|z ko|ncowa !"]
     ExDialogOp["IdzDoPozycji","10"]
     ExitAlg[0]
 dalej2:
  if (not(d2 = '')) Goto dalej4
      OkAlert["Wprowad|x dat|e ko|nca okresu  !"]
      ExDialogOp["IdzDoPozycji","11"]
      ExitAlg[0]
 dalej4:
// tu sprawdzenie dat ksiegowania dla umow
  if(not(p_sprawdzac_pd1)) goto dalej5
  if(pd1='' and pd2= '') goto dalej5
  if(not(pd1='')) goto ok_pd1
    OkAlert["Wprowad|x dat|e pocz|atku okresu !"]
    ExDialogOp["IdzDoPozycji","50"]
    ExitAlg[0]
  ok_pd1:
  if(not(pd2='')) goto ok_pd2
    OkAlert["Wprowad|x dat|e ko|nca okresu !"]
    ExDialogOp["IdzDoPozycji","51"]
    ExitAlg[0]
  ok_pd2:
    if(pd1<=pd2) goto dalej5
     OkAlert["Data pocz|atkowa nie mo|ze by|c p|o|xniejsza ni|z ko|ncowa !"]
     ExDialogOp["IdzDoPozycji","50"]
     Exitalg[0]
  dalej5:
  if(zbiorczo and Not(pracownik="")) zbiorczo := .N.
  ExDialogOp["KoniecWykonywania",""]
% PLACE-PODAJ-PARAMETRY-DRUKUJ-AKCE2.ALG
  DefZmiennaL["P_SPRAWDZAC_D1",.N.]
  if(not(listanumer="")) goto dalej4
  Okalert["Wprowad|x symbol i numer listy!"]
  ExDialogOp["idzdopozycji","13"]
  Exitalg[0]
 dalej4:
  if(zbiorczo and Not(pracownik="")) zbiorczo := .N.
  ExDialogOp["KoniecWykonywania",""]
% PLACE-DRUKUJ-PODAJ-PARAMETRY-DEF.XXX
##DEFWINDOW=,,,,ADPHS
PRZYCISK_CANCELID = 1
##10,0,PAC,,,,,,,,ZMIENNA:d1,ydate
##11,0,ACP,,,,,,,,ZMIENNA:d2,ydate
##50,0,ACP,,,,,,,,ZMIENNA:pd1,ydate
##51,0,ACP,,,,,,,,ZMIENNA:pd2,ydate
##13,0,P,,,,,,,,ZMIENNA:listanumer
##17,,ADP,,"Wyb|or z listy"
##12,0,P,,,,,,,,ZMIENNA:pracownik,string:2
##19,0,P,,,,,,,,ZMIENNA:wydzial1,string:496
##20,0,P,,"a%n%alitycznie",,,,,,ZMIENNA:zbiorczo,,A,1,"N"
##21,0,P,,"%z%biorczo",,,,,,ZMIENNA:zbiorczo,,O,20,"T"
##22,0,P,,@21,,&&black/lwhite,&&black/lblue,,,ZMIENNA:konczstrone,,A,2,"T"
##23,0,P,,@22,,,,,,ZMIENNA:konczstrone,,O,22,"N"
##200,DZ,ADP
##201,DZ,ADPH,,"Drukowa|c"
##202,DZ,ADPH,,"Jeden pasek na stronie"
##203,0,P,,"Sum|e za ka|zdy miesi|ac",,,,,,ZMIENNA:miesiacami,,A,1,"T"
##204,0,P,,"Sum|e tylko za ca|ly okres",,,,,,ZMIENNA:miesiacami,,O,203,"N"
##205,DZ,ADPH,,"wydruk skr|ocony"
//
// Zestawienie za okres:      #10    #  -  #11    #                                     
% PLACE-DRUKUJ-PODAJ-PARAMETRY.XXX

#200
  Lista p|lac numer:     #13                    #
  Dla pracownika:       #12           #   
  Dla  wydzia|lu:        #19           #   
                                                 #200<
  
% PLACE-DRUKUJ-PODAJ-PARAMETRYX.XXX

#200

  Listy p|lac :          #17                    #


  Dla pracownika:       #12           #
  Dla  wydzia|lu:        #19           #   
                                                 #200<
  
% PLACE-DRUKUJ-PODAJ-PARAMETRY.DLG
%< PLACE-DRUKUJ-PODAJ-PARAMETRY-DEF.XXX
      
 Zestawienie za okres:      #10    #  -  #11    #                                     
%< PLACE-DRUKUJ-PODAJ-PARAMETRY.XXX
						 
 #201                                #0,,ADP,,@3#
   #20             #
   #21             #
                     #201            #1,,ADP,,@4#
% PLACE-DRUKUJ-PODAJ-PARAMETRY1.DLG
%< PLACE-DRUKUJ-PODAJ-PARAMETRY-DEF.XXX
      
 Zestawienie za okres:      #10    #  -  #11    #                                     
%< PLACE-DRUKUJ-PODAJ-PARAMETRY.XXX

 #0,,ADP,,@3#         #1,,ADP,,@4# 
//
% PLACE-DRUKUJ-PODAJ-PARAMETRY11.DLG
##60,0,D,,"Listy za okres",,&&black/white,&&white/lblue,,,ZMIENNA:okres,,0,60,T
##61,0,D,,"Listy wyp|lacone w okresie",,&&black/white,&&white/lblue,,,ZMIENNA:okres,,O,60,N
%< PLACE-DRUKUJ-PODAJ-PARAMETRY-DEF.XXX
      
 Zestawienie za okres:      #10    #  -  #11    #                                     

 Uwzgl|ednia|c: #60                     #
              #61                       #
%< PLACE-DRUKUJ-PODAJ-PARAMETRYX.XXX

 #201                                #0,,ADP,,@3#
   #20             #
   #21             #
                     #201            #1,,ADP,,@4#
// #0,,ADP,,@3#         #1,,ADP,,@4# 
//
% PLACE-DRUKUJ-PODAJ-PARAMETRY2.DLG
%< PLACE-DRUKUJ-PODAJ-PARAMETRY-DEF.XXX
%< PLACE-DRUKUJ-PODAJ-PARAMETRY.XXX

#202                                 #0,,ADP,,@3#
          
     #22    #   #23    #               
                           #202<    #1,,ADP,,@4#       
% PLACE-DRUKUJ-PODAJ-PARAMETRY3.DLG
%< PLACE-DRUKUJ-PODAJ-PARAMETRY-DEF.XXX
      
 Zestawienie za okres:      #10    #  -  #11    #                                     
				   
 #200

    Dla pracownika:     #12           #   
    Dla  wydzia|lu:      #19           #   

                                          #200<
                                               
						 
 #201                                #0,,ADP,,@3#
   #20             #
   #21             #
                     #201            #1,,ADP,,@4#
//
% PLACE-DRUKUJ-PODAJ-PARAMETRY12.DLG
%< PLACE-DRUKUJ-PODAJ-PARAMETRY-DEF.XXX
      
 Zestawienie za okres:      #10    #  -  #11    #                                     
				   
 #200

    Dla pracownika:     #12           #   
    Dla  wydzia|lu:      #19           #   

                                          #200<
                                               
						 
    #0,,ADP,,@3#         #1,,ADP,,@4#
//
//
% PLACE-DRUKUJ-PODAJ-PARAMETRY13.DLG
%< PLACE-DRUKUJ-PODAJ-PARAMETRY-DEF.XXX
      
 Zestawienie za okres:      #10    #  -  #11    #                                     
				   

    Dla pracownik|ow:     #17        #   
                                               
						 
    #0,,ADP,,@3#         #1,,ADP,,@4#
//
% UMOWY-DRUKUJ-PODAJ-PARAMETRY.XXX
%< PLACE-DRUKUJ-PODAJ-PARAMETRY-DEF.XXX
      
 Zestawienie za okres:      #10    #  -  #11    #                                     
				   
#200
 Rodzaj umowy:         #13                    #
 Dla pracownika:       #12           #   
 Dla  wydzia|lu:        #19           #   
                                                 #200<
% UMOWY-DRUKUJ-PODAJ-PARAMETRY.YYY
%< PLACE-DRUKUJ-PODAJ-PARAMETRY-DEF.XXX
      
 Zestawienie za okres:           #10    #  -  #11    #                                     

 Rachunki ksi|egowane w okresie:  #50    #  -  #51    #				   

#200

 Rodzaj umowy:         #17                    #

 Dla pracownika:       #12           #   
 Dla  wydzia|lu:        #19           #   
                                                 #200<
% UMOWY-DRUKUJ-PODAJ-PARAMETRY.DLG
//##30,0,P,,"Wszystkie",,&&lwhite/blue,&&lwhite/yellow,,,ZMIENNA:wyplata,,A,30,"1"
//##31,0,P,,"Tylko wyp|laty przelewem",,&&lwhite/blue,&&lwhite/yellow,,,ZMIENNA:wyplata,,,30,"2"
//##32,0,P,,"Tylko wyp|laty got|owk|a",,&&lwhite/blue,&&lwhite/yellow,,,ZMIENNA:wyplata,,,30,"3"
%< UMOWY-DRUKUJ-PODAJ-PARAMETRY.XXX
//
//    #30                                    #
//    #31                                    #
//    #32                                    #
						 
 #201                                #0,,ADP,,@3#
   #20             #
   #21             #
                     #201            #1,,ADP,,@4#
% UMOWY-DRUKUJ-PODAJ-PARAMETRY1.DLG
%< UMOWY-DRUKUJ-PODAJ-PARAMETRY.XXX
##206,DZ,ADPH,,"Porz|adek drukowania"
##24,0,P,,,,,,,,SLOWNIK:PLACE_WEDLUG,PODATNIK-PORZADEK-DRUKOWANIA
##25,D,P,,,,,,,,WYRAZENIE:PLACE_WEDLUG_NAZWA
##27,0,P,,@21,,,,,,ZMIENNA:PLACE_PORZADEK,,A,27,"T"
##28,0,P,,@22,,,,,,ZMIENNA:PLACE_PORZADEK,,O,27,"N"
%< UMOWY-DRUKUJ-PORZADEK-DIALOG.XXX
						 
 #201                                #0,,ADP,,@3#
  #203                        #
  #204                        #
                               #201  #1,,ADP,,@4#
% UMOWY-DRUKUJ-PODAJ-PARAMETRY12.DLG
##30,0,P,,"Wszystkie",,&&lwhite/blue,&&lwhite/yellow,,,ZMIENNA:wyplata,,A,30,"1"
##31,0,P,,"Tylko wyp|laty przelewem",,&&lwhite/blue,&&lwhite/yellow,,,ZMIENNA:wyplata,,,30,"2"
##32,0,P,,"Tylko wyp|laty got|owk|a",,&&lwhite/blue,&&lwhite/yellow,,,ZMIENNA:wyplata,,,30,"3"
##34,0,P,,"uwzgl|ednia|c sk|ladniki p|lacowe",,,,,,ZMIENNA:ze_skladnikami,,A,34,T
##35,0,P,,@22,,,,,,ZMIENNA:ze_skladnikami,,O,34,N
%< UMOWY-DRUKUJ-PODAJ-PARAMETRY.YYY

    #30                                    #
    #31                                    #
    #32                                    #
						 
  #34                                      #
						 
#201             #205                      #0,,ADP,,@3#
 #20          #                       
 #21          #    #22  #  #23  # 
               #201<                #205<#1,,ADP,,@4#      
                                         
% UMOWY-DRUKUJ-PODAJ-PROBNA.XXX
##30,B,P,,"pr|obna",,,,,,ZMIENNA:T_LISTA_PROBNA,,A,30,"T"
##31,B,P,,"ko|ncowa",,,,,,ZMIENNA:T_LISTA_PROBNA,,O,30,"N"
##32,D,0,,,,&&blue/white,,,,ZMIENNA:T_LISTA_NUMER,word
##205,DZ,ADPH,,"Lista:"
##2,,ADP,,"Wydrukuj poprzedni|a list|e"
##3,,ADP,,"Zr|ob przelewy z listy"
% UMOWY-DRUKUJ-PORZADEK-DIALOG.XXX

#206
 #24         # #25              # 

 Ustawia|c rosn|aco: #27 #  #28 #
                                 #206<
% UMOWY-DRUKUJ-PODAJ-PARAMETRY-NUMER.DLG
%< UMOWY-DRUKUJ-PODAJ-PARAMETRY.XXX
##206,DZ,ADPH,,"Porz|adek drukowania"
##24,0,P,,,,,,,,SLOWNIK:PLACE_WEDLUG,LISTA-DRUKUJ-PORZADEK
##25,D,P,,,,,,,,WYRAZENIE:PLACE_WEDLUG_NAZWA
##27,0,P,,@21,,,,,,ZMIENNA:PLACE_PORZADEK,,A,27,"T"
##28,0,P,,@22,,,,,,ZMIENNA:PLACE_PORZADEK,,O,27,"N"
##33,0,0,," ",,&&black/lwhite,&&lwhite/blue,,,ZMIENNA:UMOWY_ZATWIERDZAJ,,0,33,"T"
##34,0,P,,,,,,,,ZMIENNA:UMOWY_ZATWIERDZAJ,,O,33,"N"
%< UMOWY-DRUKUJ-PORZADEK-DIALOG.XXX

%< UMOWY-DRUKUJ-PODAJ-PROBNA.XXX
#201                   #205
                        #30      #
  #20             #                 
  #21             #     #31      # numer #32   #
                               #33 #<Zatwierdza|c
                    #201<                       #205<

 #0,,ADP,,@3#     #3                            #
                           
                    
 #1,,ADP,,@4#     #2                            #
// --------------------------
% PLACE-REZYGNUJESZ-DIALOG.ALG
//  okalert["111111"]
  rezygnujesz := .T.
  ExDialogOp["KoniecWykonywania",""]
  
// --------------------------
% ZAPISZ-DO-REJESTRU-KONTROLI.ALG
  RejOp["XX:otworzrejsprawdz","KONTROLA.RXR"]
  RejOp["XX:DodajRek",""]
  RejWstawP_S["XX:symlista",xlista]
  RejOp["XX:ZamknijRej",""]
  
// --------------------------

% SPRAWDZ-SUME-KWOT-PRZELEWU.ALG
  kw1 := roundn[RejWezP_K[ra+"dowypl"],2]
  kw2 := roundn[RejWezP_K[ra+"kwotaprzel"]+RejWezP_K[ra+"kwotaprzel2"]+RejWezP_K[ra+"kwotagotowka"],2]
  if(kw2=. or kw2=0)       ExitAlg[0]
  if(kw1>=kw2) ExitAlg[0]
  OkAlert["Suma kwot  jest wy|zsza od kwoty do wyp|laty !$Przelew 1  => "+RejWezP_K[ra+"kwotaprzel"]+"$Przelew 2  => "+RejWezP_K[ra+"kwotaprzel2"]+"$Got|owka    => "+RejWezP_K[ra+"kwotagotowka"]+"$ $               -------------------------------$Suma       => "+kw2+"$Do wyp|laty => "+kw1+"$R|o|znica    => "+roundn[kw2-kw1,2]]
  ExitAlg[1]  
  
// ---------------------------

% PITMENU.MEN
D=,"",A
1,,,,10,"Symbol"
2,,,,45,"Nazwa deklaracji"

// ------------------------------------------------
// Rejestr pozycji z deklaracjami PIT
// ------------------------------------------------
% POZYCJAALGO.XXX
"AKCJA-BUTTON31-POZYCJA-MENU-?.DLG",POZYCJA-GENERUJ
"AKCJA-PRZED-WYSWIETLENIEM-POZYCJA-REKORD-1.DLG",POZYCJAREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-POZYCJA-REKORD-3.DLG",POZYCJAREKORD-DODAJSTART1
"AKCJA-PRZED-WYSWIETLENIEM-POZYCJA-REKORD-0.DLG",POZYCJAREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-POZYCJA-REKORD-2.DLG",POZYCJAREKORD-DODAJLOOK
"AKCJA-BUTTON1-POZYCJA-REKORD-?.DLG",POZYCJAREKORD-AKCEPTUJESZ

% POZYCJAMENU-USUN.ALG
  if (not YesNAlert["Usun|a|c pozycj|e "+pozycja+" z rejestru ?"]) ExitAlg[0]
  RejOp["UsunRek",""]
  ExDialogOp["UsunRekordzMenu","100"]    

% POZYCJA-GENERUJ.ALG
  if(Not(YesAlert["Wygenerowa|c brakuj|ace pozycje ??$Utworzone b|ed|a pozycje od 10 do 99 dla wszystkich deklaracji !"])) ExitAlg[0]
  RejOp["ZmienKluczRej","1"]
  petla1 := 5  
  pit    := ""
  klucz  := ""
petla1:
    if(petla1=5) pit := "PIT11"
    if(petla1=4) pit := "PIT4"
    if(petla1=3) pit := "PIT40"
    if(petla1=2) pit := "PIT8a"
    if(petla1=1) pit := "PIT8b"
        petla2 := 99
petla2:
  klucz := ToStr["P#petla2#S:0*#pit#S"]
  if(RejOp["ZnajdzRek",klucz]) goto next
  RejOp["DodajRek",""]
  xRejWstawP_S["pozycja",ToStr["P#petla2#S:0"]]
  xRejWstawP_S["pitpoz",pit]
  RejOp["ZapiszRek",""]
next:
  petla2 := petla2-1
  if(petla2 > 9) goto petla2

  petla1 := petla1-1
  if(petla1 > 0) goto petla1
  
  RejOp["WezPierwszyRek",""]
  ExDialogOp["WyswietlPozycje","100"]
  ExDialogOp["IdzDoPozycji","100"]

% POZYCJAREKORD-AKCEPTUJESZ.ALG   
// ----- sprawdzenie poprawnosci
 if(not(pozycja="")) goto dalej1
    OkAlert["Wprowad|x symbol pozycji !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
dalej1:
  if(StrCut[pozycja,0,1] == "P") goto dalej2
    OkAlert["Symbol pozycji powinien zaczyna|c si|e od litery: P  !!!"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
dalej2:
  if(modyfikuj) goto dalej3
  If(Not(RejOp["ZnajdzRek",pozycja+"*"+pitpoz])) goto dalej3
    OkAlert["Taka para ju|z istnieja w rejestrze  !$"+pozycja+"  ==>  "+pitpoz]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
dalej3:
dalej4:
 if(not(pitpoz="")) goto dalej5
    OkAlert["Wprowad|x symbol pitu !"]
    ExDialogOp["IdzDoPozycji","12"]
    ExitAlg[0]
dalej5:
  ExDialogOp["KoniecWykonywania",""]

% POZYCJAREKORD-DODAJSTART1.ALG 
  modyfikuj := .N.
// wolane przy dodawanie nowego rekordu z pola
%< POZYCJAREKORD-DODAJSTART.ALG
  modyfikuj := .N.

% POZYCJAREKORD-DODAJSTART.ALG 
  modyfikuj := .N.
  ExDialogOp["PozycjaAktywna","10"]
  ExDialogOp["IdzDoPozycji","10"]

% POZYCJAREKORD-DODAJMODIF.ALG 
  modyfikuj := .T.
  ExDialogOp["PozycjaNieAktywna","10"]
  ExDialogOp["IdzDoPozycji","11"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["IdzDoPozycji","10"]
//
% POZYCJAREKORD-DODAJLOOK.ALG
  modyfikuj := .N.
  ExDialogOp["PozycjaNiewprowadzana","*"]
//
% POZYCJA-MENU-0.DLG
%< POZYCJA-MENU-X.XXX1
PRZYCISK_CANCELID = 3
 #1       #   #3        #  #101                      # 
%< POZYCJA-MENU-X.XXX2
//
% POZYCJA-MENU-1.DLG
%< POZYCJA-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% POZYCJA-MENU-3.DLG
%< POZYCJA-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% POZYCJA-MENU-2.DLG
%< POZYCJA-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% POZYCJA-MENU-ROZWIJANE
*90,"Operacje"
5,@18
6,@20
4,@19
*31,"Generuj"
% POZYCJA-MENU-X.XXX1
##DEFWINDOW = 3,,,,ADPSH,,,,,"Wykaz pozycji z deklaracji PIT"
##100,0,BCMP,,,,,,,,MENU_NA_REKORDY:POZYCJAMENU,,KLUCZ,1
##101,0,P,,,,,,,,MENU_ROZWIJANE:POZYCJA-MENU-ROZWIJANE
##1,,ADP,,@17
##3,,ADP,,@4
##7,0,P

% POZYCJA-MENU-X.XXX2



#100                                                               #100

% POZYCJA-MENU-MODIF.XXX
%< POZYCJA-MENU-X.XXX
##7,0,AC,,,,&&black/lwhite,&&white/lblue
          Symbol: #7             #  #5      # #4        # #6       #
                                    #31     #
% POZYCJA-MENU-LOOK.XXX
%< POZYCJA-MENU-X.XXX
##7,0,AC,,,,&&black/lwhite,&&white/lblue
          Symbol: #7             #  #2       #

% POZYCJA.XXX
##DEFWINDOW = ,,,,ADPH,,,,,"Pozycja deklaracji PIT"
##10,0,ACP,,,,,,,,POLE:pozycja
##11,0,ACP,,,,,,,,POLE:nazpoz
##12,0,ACP,,,,,,,,POLE:pitpoz
##200,DZ,ADPH

            #200

Symbol:       #10         #      
    
             (np: P36 dla pozycji 36 w deklaracji PIT)


Opis:         #11                                           #


Symbol PIT:   #12         #
    
                                                               #200<

% POZYCJA-REKORD-1.DLG,POZYCJA-REKORD-0.DLG,POZYCJA-REKORD-3.DLG
%<POZYCJA.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% POZYCJA-REKORD-2.DLG
%<POZYCJA.XXX
%<REKORD-OK-BUTT.XXX
//
% POZYCJAMENU-KOLUMNY.DIC
"POZYCJA",0

% POZYCJAMENU.MEN
D=,"",AB
LINIA-DIALOG = POZYCJAMENU-KOLUMNY,"Opis kolumn do pozycji PIT"
100,,,,15,"Symbol"
102,,,,10,"PIT"
101,,,,45,"Opis pozycji"

// ---------------------------------

% PPRAPORTALGO.XXX
"AKCJA-PRZED-WYSWIETLENIEM-PPRAPORT-REKORD-1.DLG",PPRAPORTREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-PPRAPORT-REKORD-3.DLG",PPRAPORTREKORD-DODAJSTART1
"AKCJA-PRZED-WYSWIETLENIEM-PPRAPORT-REKORD-0.DLG",PPRAPORTREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-PPRAPORT-REKORD-2.DLG",PPRAPORTREKORD-DODAJLOOK
"AKCJA-BUTTON1-PPRAPORT-REKORD-?.DLG",PPRAPORTREKORD-AKCEPTUJESZ
"AKCJA-BUTTON20-PPRAPORT-MENU-?.DLG",PPRAPORTMENU-USUN
"AKCJA-BUTTON21-PPRAPORT-MENU-?.DLG",PPRAPORTMENU-WYDRUK


% PPRAPORTMENU-WYDRUK.ALG
%< SYMBOLEREKORD-ZMIENNE.XXX
  CallSl["PLACE_G->drukuj_symbole()"]

% PPRAPORT-DAJDANE.ALG
  symbol_pole_rej := "symrap"
  symbol_pole_brak := "Wprowad|x symbol raportu"
  symbol_menu := "PPRAPORTMENU"
  symbol_tytul := "Rejestr danych do p|latnika"  
  
  symbol_jest_modif := "PPRAPORT.RXR"
  symbol_jest_modif1 := "PPRAPORT.RXR"
//  symbol_jest_modif1 := ""
  symbol_modif_glowny_rej := "symrap"
  symbol_usun_glowny_rej := "Nie mo|zna usun|a|c tego RAPORTU !$ S|a pracownicy na tym stanowisku."


% PPRAPORTMENU-USUN.ALG
  if (ExDialogOp["PusteOkno","100"]) ExitAlg[0]
  symrap := RejWezP_S["symrap"]
  if (not YesNAlert["Usun|a|c raport "+symrap+" z rejestru ?"]) ExitAlg[0]
  RejOp["UsunRek",""]
  ExDialogOp["UsunRekordzMenu","100"]
//
% PPRAPORTREKORD-AKCEPTUJESZ.ALG   
  if(not PustePole["symrap"]) goto dalej1
     OkAlert["Wprowad|x symbol raportu !"]
     ExDialogOp["IdzDoPozycji","10"]
     ExitAlg[0]
  dalej1:
  ExDialogOp["KoniecWykonywania",""]
  
//
% PPRAPORTREKORD-DODAJSTART1.ALG 
%< PPRAPORTREKORD-DODAJSTART.ALG
//
% PPRAPORTREKORD-DODAJSTART.ALG 
  CallAlg["PRAPORT-USTAW-STRONA"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["IdzDoPozycji","10"]
//
% PPRAPORTREKORD-DODAJMODIF.ALG 
  CallAlg["PRAPORT-USTAW-STRONA"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["IdzDoPozycji","10"]
//
% PPRAPORTREKORD-DODAJLOOK.ALG
  CallAlg["PRAPORT-USTAW-STRONA"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
//

% KADRY-REJESTRY-MENU-ROZWIJANE-PPRAPORT
*91,"Szukaj"
8,@8
9,@9
10,@10

% PPRAPORT-MENU-1.DLG
##99,0,P,,,,,,,,MENU_ROZWIJANE:KADRY-REJESTRY-MENU-ROZWIJANE-PPRAPORT
//##99,0,P,,,,,,,,MENU_ROZWIJANE:KADRY-REJESTRY-MENU-ROZWIJANE
%< KADRY-REJESTRY-MENU-1.XXX
%< PPRAPORT-MENU-MODIF.XXX
//
% PPRAPORT-MENU-0.DLG
##99,0,P,,,,,,,,MENU_ROZWIJANE:KADRY-REJESTRY-MENU-ROZWIJANE-PPRAPORT
//##99,0,P,,,,,,,,MENU_ROZWIJANE:KADRY-REJESTRY-MENU-ROZWIJANE
%< KADRY-REJESTRY-MENU-0.XXX
%< PPRAPORT-MENU-MODIF.XXX
//
% PPRAPORT-MENU-MODIF.XXX
##DEFWINDOW = ,,,,ADPSH,,,,,"Rejestr danych do raport|ow"
##100,0,PBCM,,,,,,,,MENU_NA_REKORDY:PPRAPORTMENU,,KLUCZ,1
#100                                                                 #100
% PPRAPORTMENU.MEN
D=,"",A
1,,,,10,"Symbol"
2,,,,10,"Ident"
3,,,,20,"Nazwisko"
4,,,,15,"Imi|e"
6,,,,15,"PESEL/dow|od"
// --------
// REKORD
// --------
% PRAPORT-USTAW-STRONA.ALG
  exdialogop["dodajstrone","100:PPRAPORT-STRONA-0"]
  exdialogop["dodajstrone","100:PPRAPORT-STRONA-1"]
  exdialogop["dodajstrone","100:PPRAPORT-STRONA-2"]

% PPRAPORT-STRONA-0.DLG
##10,0,0,,,,,,,,POLE:symrap
##11,0,P,,,,,,,,POLE:identrap
##12,0,P,,,,,,,,POLE:nazwisko
##13,0,P,,,,,,,,POLE:imie
##14,0,P,,,,,,,,POLE:typid
##15,0,P,,,,,,,,POLE:ident
##16,0,P,,,,,,,,POLE:kodubez
##17,0,P,,,,,,,,POLE:ktoinfo
##18,0,P,,,,,,,,POLE:wymiar
##19,0,P,,,,,,,,POLE:spodst_er
##20,0,P,,,,,,,,POLE:spodst_cw
##21,0,P,,,,,,,,POLE:spodst_z
##22,0,P,,,,,,,,POLE:sueu
##23,0,P,,,,,,,,POLE:suru
##24,0,P,,,,,,,,POLE:sucu
##25,0,P,,,,,,,,POLE:suzu
##26,0,P,,,,,,,,POLE:suep
##27,0,P,,,,,,,,POLE:surp
##28,0,P,,,,,,,,POLE:suwp
##29,0,P,,,,,,,,POLE:kw_obniz
##30,0,P,,,,,,,,POLE:susuma
##31,D,P,,,,,,,,POLE:ksiega
##200,DZ,ADP
##201,DZ,ADPH,,"Ubezpieczenie"
#200
 Symbol raportu           #10     #
 Identyfikator raportu    #11      #
 Nazwisko ubezpieczonego  #12                          #
 Imi|e ubezpieczonego      #13                  #
 Typ identyfikatora       #14#<    Identyfikator            #15       #
 Kod tytu|lu ubezpieczenia #16  #              
 Ksi|ega : #31       #
 Kto przekazuje informacj|e o przekrocz.rocznej podst.wym.sk|ladki(1,2,3) #17#<
 Wymiar czasu pracy w postaci u|lamka(np:001001,001002) #18  #
                                                                            #200< 
									       
#201									       
                   Emerytalne    Rentowe     Chorobowe/wypadkowe  Zdrowotne
 Podstawa wymiaru 
     sk|ladki        #19    #                        #20    #      #21    #
   Finansuje
 ubezpieczony       #22    #     #23    #           #24    #      #25    #

 P|laci p|latnik      #26    #     #27    #           #28    #

 Kwota obni|zenia podstawy wymiaru sk|ladki                         #29    #
 |L|aczna kwota sk|ladek                                             #30    #
                                                                            #201< 
% PPRAPORT-STRONA-1.DLG
##31,0,P,,,,,,,,POLE:os_rodz
##32,0,P,,,,,,,,POLE:kw_rodz
##33,0,P,,,,,,,,POLE:kw_wych
##34,0,P,,,,,,,,POLE:os_piel
##35,0,P,,,,,,,,POLE:kw_piel
##36,0,P,,,,,,,,POLE:zas_suma
##37,0,P,,,,,,,,POLE:dnipracy
##38,0,P,,,,,,,,POLE:dninorma
##39,0,P,,,,,,,,POLE:kod1
##40,0,P,,,,,,,,POLE:dataod1
##41,0,P,,,,,,,,POLE:datado1
##42,0,P,,,,,,,,POLE:kw_skl1
##43,0,P,,,,,,,,POLE:kod2
##44,0,P,,,,,,,,POLE:dataod2
##45,0,P,,,,,,,,POLE:datado2
##46,0,P,,,,,,,,POLE:kw_skl2
##47,0,P,,,,,,,,POLE:kod3
##48,0,P,,,,,,,,POLE:dataod3
##49,0,P,,,,,,,,POLE:datado3
##50,0,P,,,,,,,,POLE:kw_skl3
##51,0,P,,,,,,,,POLE:kod4
##52,0,P,,,,,,,,POLE:dataod4
##53,0,P,,,,,,,,POLE:datado4
##54,0,P,,,,,,,,POLE:kw_skl4
##55,0,P,,,,,,,,POLE:kod5
##56,0,P,,,,,,,,POLE:dataod5
##57,0,P,,,,,,,,POLE:datado5
##58,0,P,,,,,,,,POLE:kw_skl5
##59,0,P,,,,,,,,POLE:kod6
##60,0,P,,,,,,,,POLE:dataod6
##61,0,P,,,,,,,,POLE:datado6
##62,0,P,,,,,,,,POLE:kw_skl6
##63,0,P,,,,,,,,POLE:kod7
##64,0,P,,,,,,,,POLE:dataod7
##65,0,P,,,,,,,,POLE:datado7
##66,0,P,,,,,,,,POLE:kw_skl7
##67,0,P,,,,,,,,POLE:kod8
##68,0,P,,,,,,,,POLE:dataod8
##69,0,P,,,,,,,,POLE:datado8
##70,0,P,,,,,,,,POLE:kw_skl8
##71,0,P,,,,,,,,POLE:kod9
##72,0,P,,,,,,,,POLE:dataod9
##73,0,P,,,,,,,,POLE:datado9
##74,0,P,,,,,,,,POLE:kw_skl9
##75,0,P,,,,,,,,POLE:kod10
##76,0,P,,,,,,,,POLE:dataod10
##77,0,P,,,,,,,,POLE:datado10
##78,0,P,,,,,,,,POLE:kw_skl10
##79,0,P,,,,,,,,POLE:wyn_suma
##202,DZ,ADP
##203,DZ,ADP
#202
 L.osob na kt|ore wyp|lacono zasi|lek rodzinny      #31#
 Kwota wyp|laconego zasi|lku rodzinnego            #32    #
 Kwota wyp|laconego zasi|lku wychowawczego         #33    #
 L.os|ob na kt|ore wyp|lacono zasi|lek piel|egnacyjny #34#
 Kwota wyp|laconego zasi|lku piel|egnacyjnego       #35    #
 |Laczna kwota wyp|laconych zasi|lkow              #36    #
 Liczba dni przepracowanych #37# Liczba dni wynikaj|acych z obowi|azku #38#
                                                                            #202<
#203									    
 Kod sk|ladnika     Data od      Data do             Kwota wyp|laconego
  wynagrodze|n                                           wynagrodzenia
   #39    #         #40    #     #41    #                  #42    #
   #43    #         #44    #     #45    #                  #46    #
   #47    #         #48    #     #49    #                  #50    #
   #51    #         #52    #     #53    #                  #54    #
   #55    #         #56    #     #57    #                  #58    #
   #59    #         #60    #     #61    #                  #62    #
   #63    #         #64    #     #65    #                  #66    #
   #67    #         #68    #     #69    #                  #70    #
   #71    #         #72    #     #73    #                  #74    #
   #75    #         #76    #     #77    #                  #78    #
                           Suma kwot                       #79    #
                                                                          #203<
% PPRAPORT-STRONA-2.DLG
##DEFWINDOW = ,,,,AD,white/black&white/black,black/white&black/white,lgreen/black&white/black
##80,0,P,,,,,,,,POLE:pod_zdr
##81,0,P,,,,,,,,POLE:kw_zdr
##82,0,P,,,,,,,,POLE:kod_sw
##83,0,P,,,,,,,,POLE:dataod_sw
##84,0,P,,,,,,,,POLE:datado_sw
##85,0,P,,,,,,,,POLE:dni_sw
##86,0,P,,,,,,,,POLE:kod_chor
##87,0,P,,,,,,,,POLE:kw_sw
##88,0,P,,,,,,,,POLE:datarap
##204,DZ,ADPH,,"ZUS RZA"
##205,DZ,ADPH,,"ZUS RSA"
#204
 Podstawa wymiaru sk|ladki na ub.zdrowotne #80   #
 Kwota sk|ladki na ub.zdrowotne            #81   #
                                                  #204< 

#205			  
 Kod |swiadczenia/przerwy                  #82#
 Data od pocz|atek |swiadczenia/przerwy     #83    #
 Data do pocz|atek |swiadczenia/przerwy     #84    #
 L.dni zasi|lkowych                        #85#
 Kod choroby                              #86#<
 Kwota |swiadczenia z tytu|lu przerwy       #87    #

 Data wype|lnienia raportu                 #88    #
                                                    #205<
//
% PPRAPORT-REKORD-1.DLG,PPRAPORT-REKORD-0.DLG,PPRAPORT-REKORD-3.DLG
%<PPRAPORT.XXX
//
% PPRAPORT-REKORD-2.DLG
%<PPRAPORT.XXX
%<REKORD-OK-BUTT.XXX
% PPRAPORT.XXX
##DEFWINDOW=3,,,,ADPS
PRZYCISK_CANCELID = 1
##100,0,BDPM,,,,,,,,WLASCIWOSCIKOLEJNY:doprzodu=1,dotylu=5
##5,,ADP
##1,,ADP
##2,,ADP,,@4

     
#100                                                                        #

 
 #5     #  #1        #             #2        #
// ---------------------------------

% UZUPELNIAM-NUMER-INFO.DLG
PRZYCISK_CANCELID = 1
##50,D,P,,,,,,,,WYRAZENIE:UZU_INFO
##200,DZ,ADPH
##0,,ADP,,"Uzupe|lniasz"
##1,,ADP,,@4
 #200
  Brak danych do wy|swietlania.
  #50
  

                               #
                                #200<
			      
  #0            #
  
  
  
  #1            #  
//
% KONWERSJA_REJx.ALG
g1 := wezgodzine[0]
rejop["A:otworzrejsprawdz","PLACE.RXR"]
rejop["a:zamknijrej",""]
rejop["A:otworzrejsprawdz","PLARCH.RXR"]
// tu konwersja zwiazana z dojsciem nowych pol 
if(not(rejop["A:wezpierwszyrek",""])) goto zamknij_plarch
if(not(pustepole["A:spodst_er_opod"])) goto zamknij_plarch
petla_plarch:
if(pustepole["A:spodst_er_opod"]) xrejwstawp_k["A:spodst_er_opod",0+rejwezp_k["A:spodst_er"]]
if(pustepole["A:spodst_cw_opod"]) xrejwstawp_k["A:spodst_cw_opod",0+rejwezp_k["A:spodst_cw"]]
if(pustepole["A:szus_opod"]) xrejwstawp_k["A:szus_opod",0+rejwezp_k["A:sueu"]+rejwezp_k["A:sucu"]+rejwezp_k["A:suru"]]
if(pustepole["A:spodst_z1_opod"]) xrejwstawp_k["A:spodst_z1_opod",0+rejwezp_k["A:spodst_z1"]]
rejop["A:zapiszrek",""]
if(rejop["A:Weznastepnyrek",""]) goto petla_plarch
zamknij_plarch:
rejop["a:zamknijrej",""]
rejop["a:otworzrejsprawdz","plsklad.rxr"]
// tu konwersja danych - w przypadku dodatku stazowego gdy puste pole stazokres wpisanie 1
if(not(rejop["a:wezpierwszyrek",""])) goto zamknij_plsklad
petla_plsklad:
if(rejwezp_k["a:rodzwynagr"]=5 and pustepole["a:stazokres"]) rejwstawp_k["a:stazokres",1]
if(rejop["a:weznastepnyrek",""]) goto petla_plsklad
zamknij_plsklad:
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","pllisty.rxr"]
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","pllistyx.rxr"]
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","stale.rxr"]
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","parchor.rxr"]
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","plzap.rxr"]
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","plprez2.rxr"]
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","sumynart.rxr"]
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","ppraport.rxr"]
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","plksieg_his.rxr"]
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","plpowiaz.rxr"]
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","kontrola.rxr"]
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","plchor1.rxr"]
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","plchor2.rxr"]
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","zwolnienia.rxr"]
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","fep.rxr"]
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","stanow.rxr"]
rejop["a:zamknijrej",""]
rejop["a:otworzrejsprawdz","urzad.rxr"]
rejop["a:zamknijrej",""]
//PLCPOD.RXR
rejop["a:otworzrejsprawdz","plcpod.rxr"]
if(not(rejop["a:wezpierwszyrek",""])) goto zamknij_plcpod
petla_plcpod:
if(pustepole["a:epkonto"]) xrejwstawp_s["a:epkonto",rejwezp_s["a:ekonto"]]
if(pustepole["a:rpkonto"]) xrejwstawp_s["a:rpkonto",rejwezp_s["a:rkonto"]]
if(pustepole["a:epkontown"]) xrejwstawp_s["a:epkontown",rejwezp_s["a:ekontown"]]
if(pustepole["a:rpkontown"]) xrejwstawp_s["a:rpkontown",rejwezp_s["a:rkontown"]]
rejop["a:zapiszrek",""]
if(rejop["a:weznastepnyrek",""]) goto petla_plcpod
zamknij_plcpod:
rejop["A:zamknijrej",""]
rejop["a:otworzrejsprawdz","rodzskl.rxr"]
// konwersja - pole klucza wypelnione 11 znakami ( pola poprzedzajace=0)
rejop["a:wezpierwszyrek",""]
petla_rodzsklad:
if(strlen[rejwezp_s["a:klucz"]]=11) goto nastepny_rodzsklad
klucz := fillstring[11-strlen[rejwezp_s["a:rodzskl"]],"0"]+rejwezp_s["a:rodzskl"]
rejwstawp_s["a:klucz",klucz]
nastepny_rodzsklad:
if(rejop["a:weznastepnyrek",""]) goto petla_rodzsklad
// dopisanie brakujacych rodzajow skladnikow z zalaczonego wzorca
rejop["b:otworzrejtemp","rodzskl.rxr"]
rejop["b:importujustawieniastart",""]
rejop["b:importustawseparator",","]
rejop["b:importujrejestr","$$(FINN-LIB)\place\rodzskl.std"]
rejop["b:zmienkluczrej","1"]
rejop["b:wezpierwszyrek",""]
petla_rodzskl:
if(rejop["a:znajdzrek",rejwezp_s["b:rodzskl"]]) goto dopisz_rodzskl
rejop["a:dodajrek",""]
rejop["b:przeniespola","a:"]
rejop["a:zapiszrek",""]
goto nastepny_rodzskl
dopisz_rodzskl:
rejwstawp_s["a:nazwarodz",rejwezp_s["b:nazwarodz"]]
nastepny_rodzskl:
if(rejop["b:weznastepnyrek",""]) goto petla_rodzskl
rejop["b:zamknijrej",""]
rejop["A:zamknijrej",""]
//
callalg["KONWERSJA_GDZUOP_SZK"]
callalg["KONWERSJA_dni_bww"]
callalg["sprawdz_czas_pracy"]
callalg["KONWERSJA-UMOWY-ZLECENIA"]
callalg["konwersjarej_kadr"]
// konwwersja skladnikow dluzszych niz miesiac- dopisanie dat obowiazywania oraz kwot podlegajacych rachunkowi
callalgfile["place\place_odtwarzanie_sum.alg;kadry\kadry.py;place\place.py","ODTWARZANIE-SUMYNART"]
callalg["uzupelnij_kwartalne"]
callalg["konwersja_fpp_fgp"]
callalg["dopisz_okresy_liczenia_podstaw"]
// konwersja plarch - dopisanie wartosci do pola placabp z pola placabn
rejop["A:otworzrej","PLARCH.RXR"]
rejop["A:wezpierwszyrek",""]
pp_a:
if(not(pustepole["A:placabp"])) goto nn_a
if(rejwezp_s["A:rodz"]="11") rejwstawp_k["A:placabp",rejwezp_k["A:wynpodst"]]
if(not(rejwezp_s["A:rodz"]="11")) rejwstawp_k["A:placabp",rejwezp_k["A:placabn"]]
if(pustepole["A:placabp"]) rejwstawp_k["A:placabp",rejwezp_k["A:placabn"]]
nn_a:
if(rejop["A:weznastepnyrek",""]) goto pp_a
rejop["a:zamknijrej",""]
// konwersja - wypelnienie pola kod_chor4 - 11.06.13
rejop["A:otworzrej","PLARCH.RXR"]
rejop["A:wezpierwszyrek",""]
petla_kod_chor4:
if(pustepole["A:kod_chor4"]) rejwstawp_s["a:kod_chor4",rejwezp_s["a:lista"]+ tostr["#rejwezp_k[""a:nrlisty""]#S:0"]]
if(rejop["a:weznastepnyrek",""]) goto petla_kod_chor4
rejop["a:zamknijrej",""]
//
rejop["A:otworzrej","PLACE.RXR"]
rejop["A:wezpierwszyrek",""]
petla_kod_chor4o:
if(pustepole["A:kod_chor4"]) rejwstawp_s["a:kod_chor4",rejwezp_s["a:lista"]+ tostr["#rejwezp_k[""a:nrlisty""]#S:0"]]
if(rejop["a:weznastepnyrek",""]) goto petla_kod_chor4o
rejop["a:zamknijrej",""]
g2 := wezgodzine[0]
//okalert["czas="+g1+"$kon="+g2]
//
// do korzus wypelnienie pola spodstopod i spodstopod1
kod := ""
rejop["x:otworzrej","plsklad.rxr"]
if(rejop["x:znajdzrek","KORZUS"]) kod := rejwezp_s["x:rodzskl"]
rejop["x:zamknijrej",""]
if(kod="") kod := "999"
rejop["a:otworzrej","plarch.rxr"]
rejop["a:zmienkluczrej","8"]
rejop["a:znajdzrek","KORZUS"]
petla_korzus:
if(pustepole["a:rodz"]) rejwstawp_s["a:rodz",kod]
zus := 0-(rejwezp_k["a:sueu"]+rejwezp_k["a:suru"]+rejwezp_k["a:sucu"])
if(pustepole["a:spodstopod"]) rejwstawp_k["a:spodstopod",zus]
if(pustepole["a:spodstopod1"]) rejwstawp_k["a:spodstopod1",zus]
if(rejop["a:weznastepnyrekn",""]) goto petla_korzus
rejop["a:zamknijrej",""]
callalgfile["place\place_odtwarzanie_sum.alg;kadry\kadry.py;place\place.py","ODTWARZANIE-SUMYNART"]
//

% dopisz_okresy_liczenia_podstaw.alg
Ustawczekajinfo["start4","Konwersja danych....."]
ch_ksieg := ""
ch_lmies := .
callalg["wez-parchor"]
wykaz_kodow := "--311--312--313--314--319--321--322--325--327--331--332--"
Rejop["e:otworzrej","plarch.rxr"]
rejop["e:zmienkluczrej","1"]
rejop["x:otworzrej","plsklad.rxr"]
if(not(rejop["e:wezpierwszyrek",""])) goto koniec3
petla_e1:
if(rejwezp_l["e:anulowana"]) goto nastepny_e1
if(not(rejop["x:znajdzrek",rejwezp_s["e:skladnik"]])) goto nastepny_e1
if(strin["--"+rejwezp_s["x:rodzskl"]+"--",wykaz_kodow]<0) goto nastepny_e1
//okalert["data="+rejwezp_d["e:dataod3"]+"$inne="+rejwezp_k["e:nrlisty"]+rejwezp_s["e:pracownik"]+" "+rejwezp_s["e:skladnik"]]
if(not(rejwezp_d["e:dataod3"]='')) goto koniec3
goto zrob_konwersje
nastepny_e1:
Ustawczekajinfo["nastepny",""]
if(rejop["e:weznastepnyrek",""]) goto petla_e1
zrob_konwersje:
tura := 1
rej_ce := "ce:"
rej_cb := "cb:"
RejOp["CB:otworzrejsprawdz","RODZNIEO.RXR"]
RejOp["CE:otworzrejsprawdz","NIEOBEC.RXR"]
Rejop["a:otworzrejtemp","NIEOBEC.RXR"]
if(not(rejop["ce:wezpierwszyrek",""])) goto wyjdz
petla_tura:
if(rejwezp_s[rej_ce+"lista1"]= "" or strin["@",rejwezp_s[rej_ce+"lista1"]]>-1) goto nastepny_ce
if(rejwezp_l[rej_ce+"anulowana"]) goto nastepny_ce
if(not(rejop[rej_cb+"znajdzrek",rejwezp_s[rej_ce+"kodnieob"]])) goto nastepny_ce
if(strin["--"+rejwezp_s[rej_cb+"rodzsklad"]+"--",wykaz_kodow]<0) goto nastepny_ce
rejop["a:dodajrek",""]
rejop[rej_ce+"przeniespola","a:"]
xrejwstawp_s["a:nazwanieob",rejwezp_s[rej_cb+"rodzsklad"]]
if(tura=1) xrejwstawp_l["a:dojubil",.T.]
if(tura=2) xrejwstawp_l["a:dojubil",.N.]
rejop["a:zapiszrek",""]
Ustawczekajinfo["nastepny",""]
nastepny_ce:
if(rejop[rej_ce+"weznastepnyrek",""]) goto petla_tura
if(tura<2) goto wyjdz
rejop["cbx:zamknijrej",""]
rejop["cex:zamknijrej",""]
Finnop["Close",""]
goto koniec1
wyjdz:
tura := 2
if(ch_ksieg="") goto koniec1
if(not(Finnop["Openmainx",ch_ksieg])) goto koniec1
rej_ce := "cex:"
rej_cb := "cbx:"
RejOp["CBx:otworzrejsprawdz","RODZNIEO.RXR"]
RejOp["CEx:otworzrejsprawdz","NIEOBEC.RXR"]
goto petla_tura
koniec1:
rejop["ce:zamknijrej",""]
rejop["cb:zamknijrej",""]
// tu przepisanie dat z przebiegu gdy zmienia� si� wymiar pracy
Rejop["PP:otworzrej","PRZEBIEG.RXR"]
Rejop["PP:zmienkluczrej","5"]
Rejop["b:otworzrejtemp","PRZEBIEG.RXR"]
if(not(rejop["pp:wezpierwszyrek",""])) goto po_przebiegu
prac_old := ""
wymiar_old := .
petla_pp:
if(not(prac_old==rejwezp_s["pp:sym"])) wymiar_old := .
wymiar_prac := Roundn[stringnaliczbe[rejwezp_s["pp:wymiar1"]]/stringnaliczbe[rejwezp_s["pp:wymiar2"]],2]
if( wymiar_old = wymiar_prac) goto nastepny_pp
rejop["b:dodajrek",""]
rejop["pp:przeniespola","b:"]
rejop["b:zapiszrek",""]
Ustawczekajinfo["nastepny",""]
nastepny_pp:
wymiar_old := wymiar_prac
prac_old := rejwezp_s["pp:sym"]
if(rejop["pp:weznastepnyrek",""]) goto petla_pp
po_przebiegu:
rejop["pp:zamknijrej",""]
rejop["b:zmienkluczrej","5"]
rejop["a:zmienkluczrej","3"]
mies_k := .
mies1_k := .
if(not(rejop["a:wezpierwszyrek",""])) goto koniec
petla:
datax := rejwezp_d["a:dataod"]
rejwstawp_l["a:dostazu",.T.]
data_kon := rejwezp_d["a:datado"]
rejwstawp_d["a:datawypl",datax]
prac := rejwezp_s["a:sym"]
petla1:
if(not(rejop["a:weznastepnyrek",""])) goto koniec
if(not(prac == rejwezp_s["a:sym"])) goto petla
data_pocz := rejwezp_d["a:dataod"]
mies_k := a_date[data_pocz,"M"]
mies1_k := a_date[data_kon,"M"]
if(mies1_k > mies_k) mies_k := 12+mies_k
rejwstawp_l["a:dostazu",.N.]
if(mies_k - mies1_k >3) rejwstawp_l["a:dostazu",.T.]
if(mies_k -mies1_k >3) datax := rejwezp_d["a:dataod"]
rejwstawp_d["a:datawypl",datax]
Ustawczekajinfo["nastepny",""]
goto petla1
koniec:
// -------------------
data_x := poczrok_ksieg
rejop["a:zmienkluczrej","5"]
if(rejop["a:pustyrej",""]) goto koniec2
rejop["ch:otworzrej","plchor1.rxr"]
//sprawdzenie plarch i dopisanie danych
if(not(rejop["e:wezpierwszyrek",""])) goto koniec2
petla_e:
if(rejwezp_l["e:anulowana"]) goto nastepny_e
if(not(rejop["x:znajdzrek",rejwezp_s["e:skladnik"]])) goto nastepny_e
if(strin["--"+rejwezp_s["x:rodzskl"]+"--",wykaz_kodow]<0) goto nastepny_e
rejop["a:szukajrek",rejwezp_s["e:pracownik"]+"*"+rejwezp_s["e:lista"]+tostr["#rejwezp_k[""e:nrlisty""]#S:0"]+"*"+data_x]
nastepny_a:
if(not(rejwezp_s["e:pracownik"]==rejwezp_s["a:sym"])) goto nastepny_e
if(rejwezp_s["a:nazwanieob"]== rejwezp_s["x:rodzskl"]) goto po_a
if(rejop["a:weznastepnyrek",""]) goto nastepny_a
po_a:
dataod := rejwezp_d["a:datawypl"]
// ustalenie okresu z ktorego liczone chorobowe
datak := dataod - A_Date[dataod,"D"]
rokx := A_DATE[datak,"Y"]
miesx := A_date[datak,"M"]
if(miesx>=ch_lmies) goto ustal_data_pocz
petla_rokx:
rokx := rokx-1
miesx := miesx+12
if(miesx<ch_lmies) goto petla_rokx
ustal_data_pocz:
datap  :=  C_date[rokx,miesx - ch_lmies + 1,1]
// sprawdzenie czy byla zmiana wymiaru czasu pracy w podanym okresie
rejop["b:szukajrek",rejwezp_s["a:sym"]+"*"+datap]
petla_b:
if(not(rejwezp_s["b:sym"]== rejwezp_s["a:sym"])) goto wstaw_dane
if(rejwezp_d["b:dataod"]>datak) goto wstaw_dane
datap := rejwezp_d["b:dataod"]
if(rejop["b:weznastepnyrek",""]) goto petla_b
wstaw_dane:
datap_s := strcut[studatas[datap],2,5]
datak_s := strcut[studatas[datak],2,5]
wykaz := ""
rejop["ch:szukajrek",rejwezp_s["a:sym"]+"*"+datap_s] 
petla_ch:
if(not(rejwezp_s["a:sym"]==rejwezp_s["ch:sym"])) goto dodaj
if(stringnadate[rejwezp_s["ch:rokmie"]+".01"] > stringnadate[datak_s+".01"]) goto dodaj
if(rejwezp_l["ch:ptaszek"]) wykaz := wykaz+strcut[rejwezp_s["ch:rokmie"],3,2]+","
if(rejop["ch:weznastepnyrek",""]) goto petla_ch
dodaj:
typ := rejwezp_s["x:typsklad"]
proc := 0
if(typ="1") proc := 1
if(typ="2") proc := 0.8
if(typ="3") proc := 0.7
if(typ="4") proc := 0.75
if(typ="5") proc := 0.9
kwota := rejwezp_k["e:stawka"]*30/proc
rejwstawp_d["e:dataod3",datap]
rejwstawp_d["e:datado3",datak]
rejwstawp_s["e:kod_chor3",wykaz+"--"+tostr["#kwota#S:2"]]
Ustawczekajinfo["nastepny",""]
nastepny_e:
if(rejop["e:weznastepnyrek",""]) goto  petla_e
koniec2:
rejop["a:zamknijrej",""]
rejop["b:zamknijrej",""]
koniec3:
rejop["e:zamknijrej",""]
rejop["x:zamknijrej",""]
Ustawczekajinfo["Stop",""]
//
% uzupelnij_kwartalne.alg
Ustawczekajinfo["start4","Konwersja danych....."]
rejop["c:otworzrej","podatnik.rxr"]
rejop["skl:otworzrej","plsklad.rxr"]
rejop["e:otworzrej","plarch.rxr"]
Rejop["PPX:otworzrej","PRZEBIEG.RXR"]
Rejop["PPX:zmienkluczrej","5"]
rejop["e:zmienkluczrej","2"]
if(not(rejop["e:wezpierwszyrek",""])) goto zamknijrej
pracownik_old := ""
petla_e:
if(not(rejop["skl:znajdzrek",rejwezp_s["e:skladnik"]])) goto nastepny_e
if(not(rejwezp_s["skl:rodzskl"]="22" or rejwezp_s["skl:rodzskl"]="31" or rejwezp_s["skl:rodzskl"]="34")) goto nastepny_e
if(not(pustepole["e:dataod5"])) goto nastepny_e
dataod5 := ''
datado5 := ''
miesx := stringnaliczbe[strcut[rejwezp_s["e:mieswypl"],3,2]]
rokx := stringnaliczbe[strcut[rejwezp_s["e:mieswypl"],0,2]]
if(rejwezp_s["skl:rodzskl"]="31" or rejwezp_s["skl:rodzskl"]="34") goto roczny
if(miesx>=1 and miesx<=3) dataod5 := C_date[rokx-1,10,1]
if(miesx>=1 and miesx<=3) datado5 := C_date[rokx-1,12,31]
if(miesx>=4 and miesx<=6) dataod5 := C_date[rokx,1,1]
if(miesx>=4 and miesx<=6) datado5 := C_date[rokx,3,31]
if(miesx>=7 and miesx<=9) dataod5 := C_date[rokx,4,1]
if(miesx>=7 and miesx<=9) datado5 := C_date[rokx,6,30]
if(miesx>=10 and miesx<=12) datado5 := C_date[rokx,7,1]
if(miesx>=10 and miesx<=12) datado5 := C_date[rokx,9,30]
goto wspolne
roczny:
dataod5 := C_date[rokx-1,1,1]
datado5 := C_date[rokx-1,12,31]
wspolne:
mies_uzu := dataod5+"-"+datado5+"Nw1/1"
if(not(rejop["c:znajdzrek",rejwezp_s["e:pracownik"]])) goto dalej
if(rejwezp_s["e:pracownik"]==pracownik_old) goto zapisz_dane
data_zat := rejwezp_d["c:dzatrud"]
data_zw := rejwezp_d["c:dzwolnien"]
//if(data_zat>dataod5) dataod5 := data_zat
//if(data_zw<datado5) datado5 := data_zw
//
last_wymiar_zm := ''
wymiar_old := 0
wymiar_new := 0
wymiar_prac := 0
wymiar_prac_s := ""
wykaz_zmian_wymiarow := ""
if(not(rejop["ppx:szukajrek",RejWezP_S["e:pracownik"]+"*70.01.01"])) goto po_pp
 petlapp:
 if(not(rejwezp_s["ppx:sym"]==RejWezP_S["e:pracownik"])) goto po_pp
last_data_zm := rejwezp_d["ppx:dataod"]
wymiar_prac := Roundn[stringnaliczbe[rejwezp_s["ppx:wymiar1"]]/stringnaliczbe[rejwezp_s["ppx:wymiar2"]],2]
wymiar_prac_s := rejwezp_s["ppx:wymiar1"]+"/"+rejwezp_s["ppx:wymiar2"]
if(wymiar_prac = wymiar_new) goto nastepny_ppx
wymiar_old := wymiar_new
wymiar_new := wymiar_prac
last_wymiar_zm := rejwezp_d["ppx:dataod"]
wykaz_zmian_wymiarow := wykaz_zmian_wymiarow+last_wymiar_zm+"---" 
nastepny_ppx:
 if(rejop["ppx:weznastepnyrek",""]) goto petlapp
if (wymiar_new=0) wymiar_new := 1
 po_pp:
zapisz_dane:
if(data_zat>dataod5) dataod5 := data_zat
if(data_zw<datado5) datado5 := data_zw
//
wymiar_d := ""
czy_zm := "N"
n := 0
petla_p:
dataxx := strcut[wykaz_zmian_wymiarow,n*11,8]
if(dataxx="") goto koniec_p
dataxx_d := stringnadate[dataxx]
if(dataxx_d<=datado5) wymiar_d := dataxx
if(dataod5< dataxx_d and datado5>=dataxx_d) czy_zm := "T"
n := n+1
goto petla_p
koniec_p:
wymiar_prac_sx := ""
if(wymiar_d="") goto omin_wymiar_prac
if(rejop["ppx:znajdzrek",xpracownik+"*"+wymiar_d]) wymiar_prac_sx := rejwezp_s["ppx:wymiar1"]+"/"+rejwezp_s["ppx:wymiar2"]
omin_wymiar_prac:
//
mies_uzu := dataod5+"-"+datado5+czy_zm+"w"+wymiar_prac_sx
dalej:
if(pustepole["e:dataod5"]) xrejwstawp_d["e:dataod5",dataod5]
if(pustepole["e:datado5"]) xrejwstawp_d["e:datado5",datado5]
if(pustepole["e:placab_uzu"]) xrejwstawp_k["e:placab_uzu",rejwezp_k["e:placab"]]
if(pustepole["e:mies_uzu"]) xrejwstawp_s["e:mies_uzu",mies_uzu]
rejop["e:zapiszrek",""]
//
pracownik_old := rejwezp_s["e:pracownik"]
ustawczekajinfo["Nastepny",""]
nastepny_e:
if(rejop["e:weznastepnyrek",""]) goto petla_e
zamknijrej:
rejop["ppx:zamknijrej",""]
rejop["c:zamknijrej",""]
rejop["e:zamknijrej",""]
ustawczekajinfo["Stop",""]
% sprawdz_czas_pracy.alg
// w oparciu o dane z list podstawowych
Ustawczekajinfo["start4","Konwersja danych....."]
rejop["x:otworzrejsprawdz","pllistyx.rxr"]
wykaz_list := ""
if(not(rejop["x:wezpierwszyrek",""])) goto koniec
petla_x:
if(rejwezp_l["x:podstawowa"] and strin["--"+rejwezp_s["x:symlista"]+"--",wykaz_list]<0) wykaz_list := wykaz_list+"--"+rejwezp_s["x:symlista"]+"--"
ustawczekajinfo["Nastepny",""]
if(rejop["x:weznastepnyrek",""]) goto petla_x
koniec:
rejop["x:zamknijrej",""]
rejop["sum:otworzrejtemp","sumynart.rxr"]
rejop["sum:zmienkluczrej","3"]
rejop["e:otworzrejsprawdz","plarch.rxr"]
rejop["e:zmienkluczrej","19"]
klucz := ""
if(not(rejop["e:wezpierwszyrek",""])) goto koniec1
petla_e:
if(strin["--"+rejwezp_s["e:lista"]+"--",wykaz_list]<0) goto nastepny_e
okresxx := rejwezp_s["e:mieswypl"]
if(klucz == rejwezp_s["e:pracownik"]+"*"+okresxx) goto nastepny_e
if(rejop["sum:znajdzrek",rejwezp_s["e:pracownik"]+"*"+okresxx]) goto nastepny_e
rejop["sum:dodajrek",""]
xrejwstawp_s["sum:pracownik",rejwezp_s["e:pracownik"]]
xrejwstawp_s["sum:mies_wypl",okresxx]
xrejwstawp_k["sum:s_godzrobu_all",rejwezp_k["e:gdzpracyu_all"]]
xrejwstawp_k["sum:s_dnirobu_all",rejwezp_k["e:dnipracyu_all"]]
xrejwstawp_k["sum:s_dnirobu_kal",rejwezp_k["e:dnipracyu_kal"]]
rejop["sum:zapiszrek",""]
klucz := rejwezp_s["e:pracownik"]+"*"+okresxx
nastepny_e:
ustawczekajinfo["Nastepny",""]
if(rejop["e:weznastepnyrek",""]) goto petla_e
rejop["e:wezpierwszyrek",""]
petla_ee:
klucz := rejwezp_s["e:pracownik"]+"*"+rejwezp_s["e:mieswypl"]
if(not(rejop["sum:znajdzrek",klucz])) goto nastepny_ee
xrejwstawp_k["e:gdzpracyu_all",rejwezp_k["sum:s_godzrobu_all"]]
xrejwstawp_k["e:dnipracyu_all",rejwezp_k["sum:s_dnirobu_all"]]
xrejwstawp_k["e:dnipracyu_kal",rejwezp_k["sum:s_dnirobu_kal"]]
rejop["e:zapiszrek",""]
nastepny_ee:
ustawczekajinfo["Nastepny",""]
if(rejop["e:weznastepnyrek",""]) goto petla_ee
koniec1:
rejop["sum:zamknijrej",""]
rejop["e:zamknijrej",""]
ustawczekajinfo["Stop",""]

% sprawdz_czas_pracyx.alg
Ustawczekajinfo["start4","Konwersja danych....."]
rejop["c:otworzrejsprawdz","podatnik.rxr"]
rejop["e:otworzrejsprawdz","plarch.rxr"]
rejop["e:zmienkluczrej","10"]
rejop["dk:otworzrejtemp","PLC_KDR.RJR"]
RejOp["PP:OtworzRejsprawdz","PRZEBIEG.RXR"]
RejOp["PP:zmienkluczrej","4"]
klucz := ""
if(not(rejop["e:wezpierwszyrek",""])) goto koniec
petla_e:
if(not(rejop["c:znajdzrek",rejwezp_s["e:pracownik"]])) goto nastepny_e
okresxx := rejwezp_s["e:mieswypl"]
if(klucz == rejwezp_s["e:pracownik"]+"*"+okresxx) goto wstaw_dane
idx_prc := RejWezP_S["C:sym"]
data_zat := rejwezp_d["c:dzatrud"]
data_zw := rejwezp_d["c:dzwolnien"]
datapocz := stringnadate[okresxx+".01"]
d_data := datapocz
  CallSl["PLACE_G->daj_koniec_mies()"]
datakon := d_data
pwynagrodz := .
xokres := ""
xokres_placa := ""
KL_D_GRUPA := rejwezp_s["c:kalengrupa"]
if(KL_D_GRUPA = "") KL_D_GRUPA := "<podstawowy>"
rztil_gdz_rob := .
rztil_dni_rob := .
til_dni_rob := .
til_gdz_rob := .
xil_dni_all := .
xil_gdz_all := .
xil_dni_rob :=  .
xil_gdz_rob := .
xil_gdz_rob := 0
il_dni_all := 0
il_gdz_all := 0
il_dni_rob := 0
il_gdz_rob := 0
KL_D_ROK := A_DATE[Poczrok_ksieg,"Y"]
KL_D_LITERA := "K:"
KL_D_LICZBA := .
KL_D_LICZBAMIN := .
KL_D_PRAC := .N.
CallAlg["KL-OTWORZ-KALENDARZ"]
CallAlg["ZEROWANIE_LICZNIKOW"]
CallAlg["LICZ_WYNAGRODZENIE"]
//okalert["pracownik="+rejwezp_s["e:pracownik"]+"$okres="+okresxx+"$gdzpracyu_all="+rztil_gdz_rob+"$dnipracyu_all="+rztil_dni_rob+"$dnipracyu_kal="+til_dni_rob]
wstaw_dane:
xrejwstawp_k["e:gdzpracyu_all",rztil_gdz_rob]
xrejwstawp_k["e:dnipracyu_all",rztil_dni_rob]
xrejwstawp_k["e:dnipracyu_kal",til_dni_rob]
rejop["e:zapiszrek",""]
klucz := rejwezp_s["e:pracownik"]+"*"+okresxx
nastepny_e:
ustawczekajinfo["Nastepny",""]
if(rejop["e:weznastepnyrek",""]) goto petla_e
koniec:
rejop["e:zamknijrej",""]
rejop["c:zamknijrej",""]
rejop["dk:zamknijrej",""]
rejop["pp:zamknijrej",""]
ustawczekajinfo["stop",""]

% konwersja_fpp_fgp.alg
Ustawczekajinfo["start4","Konwersja danych....."]
  rejop["e:otworzrej","plarch.rxr"]
  rejop["e:zmienkluczrej","10"] 
if(not(rejop["e:wezpierwszyrek",""])) goto koniec
  RejOp["P:otworzrejsprawdz","PLCPOD.RXR"]
  RejOp["C:otworzrejsprawdz","PODATNIK.RXR"]
  RejOp["kod:otworzrejsprawdz","kodprac.RXR"]
  RejOp["zw:otworzrejsprawdz","zwolnienia.rxr"]
  Rejop["zw:zmienkluczrej","2"]
klucz := ""
klucz_old := ""
klucz1 := ""
klucz1_old := ""
petla_e:
if(not(pustepole["e:sfpp"])) goto nastepny_e
klucz1 := tostr["#rejwezp_s[""e:lista""]#S*#rejwezp_k[""e:nrlisty""]#S:0"]
if(klucz1==klucz1_old) goto brakklucza
//data_fpp := rejwezp_d["e:datawypl"]
data_fpp := C_Date[Stringnaliczbe[strcut[rejwezp_s["e:mieswypl"],0,2]],Stringnaliczbe[strcut[rejwezp_s["e:mieswypl"],3,2]],1]                                                                   
if(rejwezp_s["e:lista"]=="KOREKTA" or rejwezp_s["e:lista"]=="KORZUS") data_fpp := rejwezp_d["e:kordwypl"]
xfpp := 0 
xfgp := 0
 xrok       := ToStr["#data_fpp#S"]
 RejOp["P:Wezostatnirek",""]
 petla_p:
 if(rejwezp_s["p:rokpod"]<=xrok) goto pobierz
 if(rejop["p:wezpoprzednirek",""]) goto petla_p
 goto brakklucza
 pobierz:
 xfgp := 0+ rejwezp_k["P:fgp"]
 xfpp := 0+ rejwezp_k["P:fpp"]
 brakklucza:
klucz := tostr["#rejwezp_s[""e:lista""]#S*#rejwezp_k[""e:nrlisty""]#S:0*#rejwezp_s[""e:pracownik""]#S"]
if(klucz==klucz_old) goto petla_wstaw
    fpp := xfpp
    fgp := xfgp
    if(not(RejOp["C:ZnajdzRek",rejwezp_s["e:pracownik"]])) goto nopracownik
      xkodprac    := rejwezp_s["c:kodprac"]
    if(not(rejop["kod:znajdzrek",xkodprac])) goto nopracownik
      if(not(pustepole["kod:fgp"])) fgp := rejwezp_k["kod:fgp"]
      if(not(pustepole["kod:fpp"])) fpp := rejwezp_k["kod:fpp"]
 nopracownik:
// sprawdzenie czy w miesiacu wyplaty nie jest zwolniony z fp i fgsp
 czy_zw_fp := .N.
 czy_zw_fgsp := .N.
 prac_pp := xpracownik
 data_pp := stringnadate[xrok]
 callsl["PLACE_G->sprawdz_czy_zw_fp()"] 
 if(czy_zw_fgsp) fgp := 0
 if(czy_zw_fp) fpp := 0
petla_wstaw:
rejwstawp_k["e:sfpp",RejWezP_K["e:spodst_cw"]*(fpp/100)]
rejwstawp_k["e:sfgp",RejWezP_K["e:spodst_cw"]*(fgp/100)]
klucz_old := klucz
klucz1_old := klucz1
ustawczekajinfo["Nastepny",""]
nastepny_e:
if(rejop["e:weznastepnyrek",""]) goto petla_e 
rejop["p:zamknijrej",""]
rejop["c:zamknijrej",""]
rejop["kod:zamknijrej",""]
rejop["zw:zamknijrej",""]
koniec:
rejop["e:zamknijrej",""]
ustawczekajinfo["stop",""]

% KONWERSJA_dni_bww.ALG
Ustawczekajinfo["start4","Konwersja danych....."]
rejop["cp:otworzrejsprawdz","plarch.rxr"]
rejop["cp:zmienkluczrej","6"]
if(not(rejop["cp:wezpierwszyrek",""])) goto zamknij_cp
if(not(pustepole["cp:dnipracyu_bww"])) goto zamknij_cp
wykaz_nieo := ""
RejOp["CB:OtworzRejsprawdz","RODZNIEO.RXR"]
if(not(rejop["cb:wezpierwszyrek",""])) goto zamknij_rej
//
wykaz_list := ""
lista_old := ""
rejop["cl:otworzrej","PLLISTY.rxr"]
rejop["cl:wezpierwszyrek",""]
petla_cl:
if(rejwezp_l["cl:wyrownanie"]) wykaz_list := wykaz_list+"--"+rejwezp_s["cl:symlista"]+"--"
lista_old := rejwezp_s["cl:symlista"]
petla1:
if(rejop["cl:weznastepnyrekn",""]) goto petla1 
if(not(lista_old == rejwezp_s["cl:symlista"])) goto petla_cl
rejop["cl:zamknijrej",""]
//
petla_cb:
if((rejwezp_s["cb:kodalgo"]="0" or rejwezp_s["cb:kodalgo"]="2")  and not(rejwezp_s["cb:rodzsklad"]=="2" or rejwezp_s["cb:rodzsklad"]=="3" or rejwezp_s["cb:rodzsklad"]=="1" orrejwezp_s["cb:rodzsklad"]=="152")) wykaz_nieo := wykaz_nieo+"--"+rejwezp_s["cb:rodznieo"]+"--"
if(rejop["cb:weznastepnyrek",""]) goto petla_cb
zamknij_rej:
rejop["CB:Zamknijrej",""]
if(wykaz_nieo="") goto zamknij_cp
pole_cp := "dnipracyu_bww"
lgodzin := "ldnirob"
callalg["KONWERSJA_GDZUOP_SZKxx"]
zamknij_cp:
rejop["CP:Zamknijrej",""]
ustawczekajinfo["stop",""]


% KONWERSJA_GDZUOP_SZK.ALG
// MARIA
Ustawczekajinfo["start4","Konwersja danych....."]
rejop["cp:otworzrejsprawdz","plarch.rxr"]
rejop["cp:zmienkluczrej","6"]
if(not(rejop["cp:wezpierwszyrek",""])) goto zamknij_cp
if(not(pustepole["cp:gdzuop_szk"])) goto zamknij_cp
wykaz_nieo := ""
RejOp["CB:OtworzRejsprawdz","RODZNIEO.RXR"]
if(not(rejop["cb:wezpierwszyrek",""])) goto zamknij_rej
//
wykaz_list := ""
lista_old := ""
rejop["cl:otworzrej","PLLISTY.rxr"]
rejop["cl:wezpierwszyrek",""]
petla_cl:
if(rejwezp_l["cl:wyrownanie"]) wykaz_list := wykaz_list+"--"+rejwezp_s["cl:symlista"]+"--"
lista_old := rejwezp_s["cl:symlista"]
petla1:
if(rejop["cl:weznastepnyrekn",""]) goto petla1 
if(not(lista_old == rejwezp_s["cl:symlista"])) goto petla_cl
rejop["cl:zamknijrej",""]
//
petla_cb:
if(rejwezp_s["cb:rodzsklad"]=="2" or rejwezp_s["cb:rodzsklad"]=="3") wykaz_nieo := wykaz_nieo+"--"+rejwezp_s["cb:rodznieo"]+"--"
if(rejop["cb:weznastepnyrek",""]) goto petla_cb
zamknij_rej:
rejop["CB:Zamknijrej",""]
if(wykaz_nieo="")  goto zamknij_cp
pole_cp := "gdzuop_szk" 
lgodzin := "lgodzin"
callalg["KONWERSJA_GDZUOP_SZKxx"]
zamknij_cp:
rejop["CP:Zamknijrej",""]
ustawczekajinfo["stop",""]
//
% KONWERSJA_GDZUOP_SZKxx.alg
rejop["ce:otworzrejsprawdz","nieobec.rxr"]
if(not(rejop["ce:wezpierwszyrek",""])) goto zamknij_ce
rejop["cp:zmienkluczrej","2"]
rejop["cd:otworzrejtemp","sumynart.rxr"]
lista := ""
lista1 := ""
pracownik := ""
// dopisywanie godzin szkoleniowych do list bezposrednio wskazanych w nieobecnosciach
petla_ce:
if(rejwezp_l["ce:anulowana"]) goto nastepny_ce
if(strin["--"+rejwezp_s["ce:kodnieob"]+"--",wykaz_nieo]<0) goto nastepny_ce
lista := rejwezp_s["ce:lista"]
lista1 := rejwezp_s["ce:lista1"]
pracownik := rejwezp_s["ce:sym"]
kwota := rejwezp_k["ce:"+lgodzin]
if(lista="" and lista1="") goto nastepny_ce
if(not(rejop["cp:znajdzrek",pracownik])) goto nastepny_ce
petla_cp:
ustawczekajinfo["Nastepny",""]
listax := tostr["#rejwezp_s[""cp:lista""]#S#rejwezp_k[""cp:nrlisty""]#S:0"]
if((listax==lista or listax==lista1) and pustepole["cp:"+pole_cp]) rejwstawp_k["cp:"+pole_cp,rejwezp_k["cp:"+pole_cp]+kwota]
if(rejop["cp:weznastepnyrekn",""]) goto petla_cp
// dopisanie do rejestru cd
if(wykaz_list = "") goto nastepny_ce
miesiac := strcut[studatas[rejwezp_d["ce:dataod"]],5,2]
if(rejop["cd:znajdzrek",pracownik]) goto dopiszdane_cd
rejop["cd:dodajrek",""]
rejwstawp_s["cd:pracownik",pracownik]
dopiszdane_cd:
if(miesiac ="01") rejwstawp_k["cd:s_brutto",rejwezp_k["cd:s_brutto"]+kwota]
if(miesiac ="02") rejwstawp_k["cd:s_podst_er",rejwezp_k["cd:s_podst_er"]+kwota]
if(miesiac ="03") rejwstawp_k["cd:s_podst_cw",rejwezp_k["cd:s_podst_cw"]+kwota]
if(miesiac ="04") rejwstawp_k["cd:s_podst_z",rejwezp_k["cd:s_podst_z"]+kwota]
if(miesiac ="05") rejwstawp_k["cd:s_ueu",rejwezp_k["cd:s_ueu"]+kwota]
if(miesiac ="06") rejwstawp_k["cd:s_uru",rejwezp_k["cd:s_uru"]+kwota]
if(miesiac ="07") rejwstawp_k["cd:s_ucu",rejwezp_k["cd:s_ucu"]+kwota]
if(miesiac ="08") rejwstawp_k["cd:s_uep",rejwezp_k["cd:s_uep"]+kwota]
if(miesiac ="09") rejwstawp_k["cd:s_urp",rejwezp_k["cd:s_urp"]+kwota]
if(miesiac ="10") rejwstawp_k["cd:s_uwp",rejwezp_k["cd:s_uwp"]+kwota]
if(miesiac ="11") rejwstawp_k["cd:s_nalzdr",rejwezp_k["cd:s_nalzdr"]+kwota]
if(miesiac ="12") rejwstawp_k["cd:s_zalzdrn",rejwezp_k["cd:s_zalzdrn"]+kwota]
//
nastepny_ce:
if(rejop["ce:weznastepnyrek",""]) goto petla_ce
// dopisywanie godzin szkoleniowego do list uzupelniajacych
//if(wykaz_list="") rejop["cd:zamknijrej",""]
//if(wykaz_list="") goto zamknij_ce
rejop["cp:wezpierwszyrek",""]
petla_cpx:
ustawczekajinfo["Nastepny",""]
if(strin["--"+rejwezp_s["cp:lista"]+"--",wykaz_list]<0) goto dopisz0_cpx
// tu dopisanie kwoty  z rej cd
if(not(rejop["cd:znajdzrek",rejwezp_s["cp:pracownik"]])) goto dopisz0_cpx
miesiac := strcut[rejwezp_s["cp:mieswypl"],3,2]
kwota := 0
if(miesiac ="01") kwota := rejwezp_k["cd:s_brutto"]
if(miesiac ="02") kwota := rejwezp_k["cd:s_podst_er"]
if(miesiac ="03") kwota := rejwezp_k["cd:s_podst_cw"]
if(miesiac ="04") kwota := rejwezp_k["cd:s_podst_z"]
if(miesiac ="05") kwota := rejwezp_k["cd:s_ueu"]
if(miesiac ="06") kwota := rejwezp_k["cd:s_uru"]
if(miesiac ="07") kwota := rejwezp_k["cd:s_ucu"]
if(miesiac ="08") kwota := rejwezp_k["cd:s_uep"]
if(miesiac ="09") kwota := rejwezp_k["cd:s_urp"]
if(miesiac ="10") kwota := rejwezp_k["cd:s_uwp"]
if(miesiac ="11") kwota := rejwezp_k["cd:s_nalzdr"]
if(miesiac ="12") kwota := rejwezp_k["cd:s_zalzdrn"]
if(pustepole["cp:"+pole_cp]) rejwstawp_k["cp:"+pole_cp,kwota]
dopisz0_cpx:
if(pustepole["cp:"+pole_cp]) rejwstawp_k["cp:"+pole_cp,0]
nastepny_cpx:
if(rejop["cp:weznastepnyrek",""]) goto petla_cpx
//rejop["cd:zobaczdbf",""]
rejop["cd:zamknijrej",""]
zamknij_ce:
rejop["CE:Zamknijrej",""]


//
% odczytaj_nieobecnosci.alg
// dane wejsciowe xspracownik, urlop, szk_oko,nn, bww, listy_z_okresu
if(not(rejop["ce:znajdzrek",xspracownik])) exitalg[0]
petla_ce:
if(rejwezp_l["ce:anulowana"]) goto nastepny_ce
//data := strcut[tostr["#rejwezp_d[""ce:dataod""]#S"],0,5]
//if(not(data==xxdatas)) goto nastepny_ce
// poprawka: rozliczenie nieobecnosci zwiazane z list� na ktorej pomniejszone zasadnicze
//if(rejwezp_s["ce:lista"]="" or rejwezp_s["ce:lista1"]="")  goto nastepny_ce
if(rejwezp_s["ce:lista"]="")  goto nastepny_ce
//okalert["listy_z_okresu="+listy_z_okresu]
if(strin["--"+rejwezp_s["ce:lista"]+"--",listy_z_okresu]<0) goto nastepny_ce
//if(strin["--"+rejwezp_s["ce:lista1"]+"--",listy_z_okresu]<0) goto nastepny_ce
gdzpracy := gdzpracy - rejwezp_k["ce:lgodzin"]
if(strin["--"+rejwezp_s["ce:kodnieob"]+"--",urlop+szk_oko]<0) gdzpracyu := gdzpracyu-rejwezp_k["ce:lgodzin"]
if(strin["--"+rejwezp_s["ce:kodnieob"]+"--",urlop+szk_oko]<0) dnipracyu := dnipracyu-rejwezp_k["ce:ldnirob"]
if(strin["--"+rejwezp_s["ce:kodnieob"]+"--",szk_oko]>-1) gdzuop_szk := gdzuop_szk+rejwezp_k["ce:lgodzin"]
if(strin["--"+rejwezp_s["ce:kodnieob"]+"--",nn]>-1) gdzpracyu_nn := gdzpracyu_nn +rejwezp_k["ce:lgodzin"]
if(strin["--"+rejwezp_s["ce:kodnieob"]+"--",nn]>-1) dnipracyu_nn := dnipracyu_nn +rejwezp_k["ce:ldnirob"]
if(strin["--"+rejwezp_s["ce:kodnieob"]+"--",bww]>-1) dnipracyu_bww := dnipracyu_bww +rejwezp_k["ce:ldnirob"]
nastepny_ce:
if(rejop["ce:weznastepnyrekn",""]) goto petla_ce
//
% ustal_kody_nieobecnosci.alg
rejop["cb:otworzrejsprawdz","RODZNIEO.RXR"]
if(rejop["cb:wezpierwszyrek",""]) goto ustal_nieo
rejop["cb:zamknijrej",""]
ustal_nieo:
if(rejwezp_s["cb:rodzsklad"]="2" or rejwezp_s["cb:rodzsklad"]="3") szk_oko := szk_oko+"--"+rejwezp_s["cb:rodznieo"]+"--"
if(rejwezp_s["cb:rodzsklad"]="1") urlop := urlop+"--"+rejwezp_s["cb:rodznieo"]+"--"
if(rejwezp_s["cb:rodzsklad"]="152") nn := nn+"--"+rejwezp_s["cb:rodznieo"]+"--"
if((rejwezp_s["cb:kodalgo"]="0" or rejwezp_s["cb:kodalgo"]="2") and strin["--"+rejwezp_s["cb:rodznieo"]+"--",urlop+szk_oko+nn]<0) bww := bww+"--"+rejwezp_s["cb:rodznieo"]+"--"
if(strin["--"+rejwezp_s["cb:rodznieo"]+"--",urlop+szk_oko+nn+bww]<0) chor := chor+"--"+rejwezp_s["cb:rodznieo"]+"--"
if(rejop["cb:weznastepnyrek",""]) goto ustal_nieo
rejop["cb:zamknijrej",""]
//
% ustal_listy_w_miesiacu.alg
rejop["ex:otworzrej","PLARCH.rxr"]
rejop["ex:zmienkluczrej","1"]
rejop["ex:wezpierwszyrek",""]
nowy_z_okresu:
if(not(rejwezp_s["ex:mieswypl"]==xmieswypl)) goto nastepny_z_okresu
if(rejwezp_l["ex:anulowana"]) goto nastepny_z_okresu
listy_z_okresu := listy_z_okresu+"--"+rejwezp_s["ex:lista"]+tostr["#rejwezp_k[""ex:nrlisty""]#S:0"]+"--"
nastepny_z_okresu:
if(not(rejop["ex:weznastepnyrek",""])) goto po_z_okresu
if(not(rejop["ex:nowyklucz",""])) goto nastepny_z_okresu
goto nowy_z_okresu
po_z_okresu:
rejop["ex:zamknijrej",""]
//

// ========================================
// PLACE-ZAWODY.RXR
// rejestr zawodow
// ========================================  
% SL.place-rejestr-zawodow

implements("PLACE_ZAWODY");

define rej_param(pp)
{
//  pp.usun_sprawdz = "REC_WALOR_POKOJ->usun_sprawdz";
  pp.menu_tytul = "Wykaz zawod|ow";  
}

//define usun_sprawdz()
//{
//  return gl_sprawdz_usun_rejestr_sekw("symbol","REC-POKOJE.REX","p_walor","Nie mo|zna usun|a|c tego waloru - s|a pokoje !");  
//}

% PLACE-ZAWODY.RXR
%< REJESTR-SYMBOLE-DEF.XXX(SYMBOL_REJ=ZAWOD)
% PLACE-ZAWODY.DBF 
%< REJESTR-SYMBOLE-DBF.XXX
% PLACE-ZAWODY.DIC
%< REJESTR-SYMBOLE-DIC.XXX
% PLACE-ZAWODY.BOX
%< REJESTR-SYMBOLE-WARUNEK-BOX.XXX
% PLACE-ZAWODY-MENU-0.DLG
%< REJESTR-SYMBOLE-MENU-0.XXX
% PLACE-ZAWODY-MENU-1.DLG
%< REJESTR-SYMBOLE-MENU-1.XXX
% PLACE-ZAWODY-REKORD-0.DLG
%< REJESTR-REKORD-0.XXX
% PLACE-ZAWODY-REKORD-1.DLG
%< REJESTR-REKORD-1.XXX
% PLACE-ZAWODY-REKORD-2.DLG
%< REJESTR-REKORD-2.XXX
% PLACE-ZAWODY-REKORD-3.DLG
%< REJESTR-REKORD-3.XXX
% TABLICA-SL-AKCJI-PLACE-ZAWODY-REKORD-0
%< TABLICA-SL-AKCJI-REKORD-0.XXX
% TABLICA-SL-AKCJI-PLACE-ZAWODY-REKORD-1
%< TABLICA-SL-AKCJI-REKORD-1.XXX
% TABLICA-SL-AKCJI-PLACE-ZAWODY-REKORD-2
%< TABLICA-SL-AKCJI-REKORD-2.XXX
% TABLICA-SL-AKCJI-PLACE-ZAWODY-REKORD-3
%< TABLICA-SL-AKCJI-REKORD-3.XXX
% TABLICA-SL-AKCJI-PLACE-ZAWODY-MENU-0
%< TABLICA-SL-AKCJI-MENU-0.XXX
% TABLICA-SL-AKCJI-PLACE-ZAWODY-MENU-1
%< TABLICA-SL-AKCJI-MENU-1.XXX


// ========================================
// GRUPA.RXR
// rejestr grup
// ========================================  
% SL.place-rejestr-grup

implements("PLACE_GRUPY");

define usun_sprawdz()
{
  return gl_sprawdz_usun_rejestr_sekw("symbol","PLSKLAD.RXR","grupa","Grupa zosta|la przypisana do sk|ladnik|ow. $Nie mo|zna jej usun|a|c!");  
}

define rej_param(pp)
{
  pp.menu_tytul = "Wykaz grup";  
  pp.nazwa_menu = "GRUPA";
}

define rejestr_usun()
{
  gl_menu_usun_rekord("","100",NULL,"PLACE_GRUPY->usun_sprawdz");
}


% GRUPA.RXR
%< REJESTR-SYMBOLE-DEF.XXX(SYMBOL_REJ=GRUPA)
% GRUPA.DBF 
0,log,,,,,D  
1,string,10,2,1,,N    # grupa
2,string,50		#opis grupy
% GRUPA.DIC
"symbol",1,Estring,"Symbol"
"nazwa",2,Estring,"Nazwa"
% GRUPA.BOX
D = "Rejestr grup"
"Symbol:",1,A
"Nazwa:",2,A
% GRUPA-MENU-0.DLG
%< REJESTR-SYMBOLE-MENU-0.XXX
% GRUPA-MENU-1.DLG
%< REJESTR-SYMBOLE-MENU-1.XXX
% GRUPA-REKORD-0.DLG
%< REJESTR-NAZWA-REKORD-0.XXX
% GRUPA-REKORD-1.DLG
%< REJESTR-NAZWA-REKORD-1.XXX
% GRUPA-REKORD-2.DLG
%< REJESTR-NAZWA-REKORD-2.XXX
% GRUPA-REKORD-3.DLG
%< REJESTR-NAZWA-REKORD-3.XXX
% TABLICA-SL-AKCJI-GRUPA-REKORD-0
%< TABLICA-SL-AKCJI-REKORD-0.XXX
% TABLICA-SL-AKCJI-GRUPA-REKORD-1
%< TABLICA-SL-AKCJI-REKORD-1.XXX
% TABLICA-SL-AKCJI-GRUPA-REKORD-2
%< TABLICA-SL-AKCJI-REKORD-2.XXX
% TABLICA-SL-AKCJI-GRUPA-REKORD-3
%< TABLICA-SL-AKCJI-REKORD-3.XXX
% TABLICA-SL-AKCJI-GRUPA-MENU-0
%< TABLICA-SL-AKCJI-MENU-0.XXX
% TABLICA-SL-AKCJI-GRUPA-MENU-1
"AKCJA-BUTTON20",PLACE_GRUPY->rejestr_usun()
%< TABLICA-SL-AKCJI-MENU-1.XXX

// ========================================
// WSKAZNIK_REH.RXR
// rejestr wskaznikow do swiadczenia rehabilitacyjnego
// ========================================  
% SL.place-rejestr-wskaznikow

implements("PLACE_WSKAZNIKI");


define menu_przed()
{
  
  () = exdialogop("ustawmenuparam","100:WSKAZNIK_REH,,KLUCZ,1");
  () = exdialogop("zmiennaglowek","Wykaz wska|xnik|ow rewaloryzacji");
}

define rekord_akce()
{
 if(pustepole("symbol"))
    {
     okalert("Wprowad|x rok i miesi|ac pocz|atku okresu obowi|azywania wska|xnika!","Wymagany format RRRR.MM");  
     () = exdialogop("idzdopozycji","10");
     return;}
if (not(okzewzorcem(rejwezp_s("symbol"),"YYYY.YY")))
    {
     okalert("Nieprawid|lowy format pocz|atku okresu obowi|azywania wska|xnika!","Wymagany format RRRR.MM");  
     () = exdialogop("idzdopozycji","10");
     return;}
if(pustepole("wskaznik"))
   {
    okalert("Wprowad|x warto|s|c wska|xnika");
    () = exdialogop("idzdopozycji","13");
    return;}  
  () = exdialogop("koniecwykonywania");
}

define rekord_rez()
{
  () = exdialogop("koniecwykonywania");
}

define rej_param(pp)
{
  pp.menu_tytul = "Wykaz wska|xnik|ow rewaloryzacji";  
  pp.nazwa_menu = "WSKAZNIK-REH";
}

define usun_sprawdz()
{
return 1;
}
define rejestr_usun()
{
  gl_menu_usun_rekord("","100",NULL,"PLACE_WSKAZNIKI->usun_sprawdz");
}


% WSKAZNIK_REH.RXR
%< REJESTR-SYMBOLE-DEF.XXX(SYMBOL_REJ=WSKAZNIK_REH)
% WSKAZNIK_REH.DBF 
0,log,,,,,D  
1,string,7,2,1,,N    # miesiac poczatku obowiazywania
2,string,50
3,kwota  	# kwota wskaznika
% WSKAZNIK_REH.DIC
"symbol",1,Estring,"Pocz. obow."
"nazwa",2,Estring
"wskaznik",3,Ekwota,"Wska|xnik"
% WSKAZNIK_REH.BOX
D = "Rejestr wska|xnik|ow"
"Miesi|ac:",1,A
"Wska|xnik:",3,A
//
% WSKAZNIK_REH.MEN
D=,"",AB
1,,,,12,"RRRR.MM"
3,,,,,"Wska|xnik"

% WSKAZNIK_REH-MENU-0.DLG
%< REJESTR-SYMBOLE-MENU-0.XXX
% WSKAZNIK_REH-MENU-1.DLG
%< REJESTR-SYMBOLE-MENU-1.XXX
//% WSKAZNIK_REH-REKORD-0.DLG
//%< REJESTR-NAZWA-REKORD-0.XXX
//% WSKAZNIK_REH-REKORD-1.DLG
//%< REJESTR-NAZWA-REKORD-1.XXX
% WSKAZNIK_REH-REKORD-2.DLG
%< REJESTR-NAZWA-REKORD-2.XXX
//% WSKAZNIK_REH-REKORD-3.DLG
//%< REJESTR-NAZWA-REKORD-3.XXX
% TABLICA-SL-AKCJI-WSKAZNIK_REH-REKORD-0
%< TABLICA-SL-AKCJI-REKORD-0.XXX
% TABLICA-SL-AKCJI-WSKAZNIK_REH-REKORD-1
"AKCJA-BUTTON1",PLACE_WSKAZNIKI->rekord_akce()
"AKCJA-BUTTON0",PLACE_WSKAZNIKI->rekord_rez()
%< TABLICA-SL-AKCJI-REKORD-1.XXX
% TABLICA-SL-AKCJI-WSKAZNIK_REH-REKORD-2
%< TABLICA-SL-AKCJI-REKORD-2.XXX
% TABLICA-SL-AKCJI-WSKAZNIK_REH-REKORD-3
%< TABLICA-SL-AKCJI-REKORD-3.XXX
% TABLICA-SL-AKCJI-WSKAZNIK_REH-MENU-0
%< TABLICA-SL-AKCJI-MENU-0.XXX
% TABLICA-SL-AKCJI-WSKAZNIK_REH-MENU-1
"AKCJA-PRZED-WYSWIETLENIEM",PLACE_WSKAZNIKI->menu_przed()
"AKCJA-BUTTON20",PLACE_WSKAZNIKI->rejestr_usun()
%< TABLICA-SL-AKCJI-MENU-1.XXX

% WSKAZNIK_REH-REKORD-0.DLG,WSKAZNIK_REH-REKORD-1.DLG,WSKAZNIK_REH-REKORD-3.DLG
//% REJESTR-NAZWA-REKORD-1.XXX,REJESTR-NAZWA-REKORD-0.XXX,REJESTR-NAZWAREKORD-3.XXX
##DEFWINDOW = ,,,,ADPS
##200,DZ,ACPH,,"Wprowad|x wska|xnik"
##10,0,P,,,,,,,,POLEUNIKALNE:symbol
##13,0,P,,,,,,,,POLE:wskaznik

 #200
  Pocz|atek obowi|azywania ( RRRR.MM): #10   #
 
  Wska|xnik waloryzacji: #13      #%
                                                      #200
					      

//

%<REKORD-AKCEPTUJESZ-BUTT.XXX

// ------------------------------------
% WERYFIKUJ-POWIAZANIA-DLA-JEDNEGO.ALG
  SemOp["PodniesCzekaj","WERYFIKUJ-POWIAZANIA-DLA-JEDNEGO",""]
  RejOp["ZZ:otworzrejsprawdz","PLPOWIAZ.RXR"]
  RejOp["ZZ:ZmienKluczRej","3"]
  CallAlg["ZNAJDZ-I-USUN-POWIAZANIE"]
  RejOp["ZZ:ZamknijRej",""]
  SemOp["Opusc","WERYFIKUJ-POWIAZANIA-DLA-JEDNEGO",""]

% ZNAJDZ-I-USUN-POWIAZANIE.ALG
powrot:
  IF(Not(RejOp["ZZ:ZnajdzRek",pracownik])) ExitAlg[0]
  RejOp["ZZ:UsunRek",""]
  goto powrot
// ---------------------

// --------------------------------------------
// Pomocniczy rejestr do wyliczania pitu
// --------------------------------------------
% PITLICZALGO.XXX
%< TABLICA-AKCJI-REJESTRSYMBOLE.XXX(SYMBOL_D=PITLICZ)

% PITLICZ-DAJDANE.ALG
  symbol_pole_rej := "sympoz"
  symbol_pole_brak := "Wprowad|x symbol pozycji !"
  symbol_tytul := "Wyliczone kwoty pozycji do deklaracji PIT"
  symbol_key_field := 10
  
//  symbol_jest_modif := "REJESTR_PRACOWNIKOW"
//  symbol_modif_glowny_rej := "urzad"
//  symbol_usun_glowny_rej := "Nie mo|zna usun|a|c tego urz|edu !$ Wyst|epuje w rejestrze pracownik|ow."


% PITLICZ-MENU-1.DLG
##99,0,P,,,,,,,,MENU_ROZWIJANE:KADRY-REJESTRY-MENU-ROZWIJANE
%< KADRY-REJESTRY-MENU-1.XXX
%< PITLICZ-MENU-X.XXX
//
% PITLICZ-MENU-0.DLG
##99,0,P,,,,,,,,MENU_ROZWIJANE:KADRY-REJESTRY-MENU-ROZWIJANE
%< KADRY-REJESTRY-MENU-0.XXX
%< URZAD-MENU-X.XXX
% PITLICZ-MENU-X.XXX
##DEFWINDOW = ,,,,ADPSH,,,,,"Wyliczone kwoty do deklaracji PIT"
##100,0,BCMP,,,,,,,,MENU_NA_REKORDY:PITLICZMENU
#100                                                                   #100

% PITLICZMENU.MEN
D=,"",A
10,,,,5,"Symbol"
11,,,,45,"Nazwa pozycji"
12,,,,15,"Kwota"

% PITLICZ-REKORD-1.DLG,PITLICZ-REKORD-0.DLG,PITLICZ-REKORD-3.DLG
%<PITLICZ.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% PITLICZ-REKORD-2.DLG
%<PITLICZ.XXX
%<REKORD-OK-BUTT.XXX
% PITLICZ.XXX
##DEFWINDOW = ,,,,ADPH,,,,,"Dane do deklaracji PIT"
##10,0,ACP,,,,,,,,POLEUNIKALNE:sympoz
##20,0,P,,,,,,,,POLE:nazpoz
##21,0,P,,,,,,,,POLE:kwota
##200,DZ,ADPH

                 #200
		
 Symbol pozycji:    #10 #

 Nazwa pozycji:    #20                                                   #



 Wyliczona kwota:  #21             #
                                                                          #200<
									  
// ------------------------------------

% ZAPISZ-PRZELEWY-DO-WYSLANIA.ALG
  L_TT_PRAC_REJESTR := ""
  L_TT_ZLEC_REJESTR := ""
  L_TT_PLARCH := ""
  CallAlg["PLACE-USTAW-M-PARAM"]
  rejprac := L_TT_PRAC_REJESTR
  przelew_rejplac := L_TT_PLARCH
  RejOp["UsunPlikRej","PLPRZEL.RXR"]
  RejOp["AA:otworzrejsprawdz","PLPRZEL.RXR"]    
//  IdzDowydruku["place\place_zapisz_przelew",""]
  CallAlgFile["place\place_zapisz_przelew.py","!PYT.from place_zapisz_przelew_p import pisz | pisz()"]
  CallPyt["import place_g | place_g.place_zapisz_przelew_plik()"]
  RejOp["AA:ZamknijRej",""]

% PLACE-DEKRET-ZMIEN-KLASYFIKACJE.ALG
// nic nie robi

% PLACE-USTAW-M-PARAM.ALG
PL_NAZWA_PRAC := "Lista pracownik|ow"
L_TT_NAZWA_D := "p|lac"
L_TT_PLARCH := "PLARCH.RXR"
L_TT_DATA_D := "datawypl"
L_TT_PRAC_REJESTR := "PODATNIK.RXR"
L_TT_ZLEC_REJESTR := "ZLBIORCA.RXR"
L_TT_DEKR_PARAM := "DEKRET-LISTA-PLAC"
L_TT_NAZWA_DEKRETOW := "Lista ksi|egowa|n do listy p|lac"
L_TT_ROBICPRZELEW := .N.
L_TT_SKLAD_REJESTR := "PLSKLAD.RXR"
L_TT_PLACE := .T.

% PLACE-PARAMETRY-INIT.ALG  
  k_uzys := .
  k_zw   := .
  uep := .
  urp := .
  uwp := .
  ueu := .
  uru := .
  ucu := .
  xproc := .
  progub := .
  proc1 := .
  prog1 := .
  proc2 := .
  prog2 := .
  proc3 := .
  prog3 := .
  proc4 := .
  prog4 := .
  xubezzdr := .
  ekonto := ""
  rkonto := ""
  wkonto := ""
  ckonto := ""
  zkonto := ""
  fgkonto := ""
  fpkonto := ""
  fekonto := ""
  ekontown  := ""
  rkontown  := ""
  wkontown  := ""
  fgkontown := ""
  fpkontown := ""
  fepkontown := ""
  fgp := .
  fpp := .
  fep := .
  epkontown := ""
  rpkontown := ""
  epkonto := ""
  rpkonto := ""
% PLACE-PARAMETRY-PRZEPISZ.ALG  
  k_uzys := RejWezP_K["P:k_uzys"]
  k_zw   := RejWezP_K["P:k_zw"]
  xproc  := RejWezP_K["P:proc1"]
  progub := RejWezP_K["P:progub"]
  proc1 := RejWezP_K["P:proc1"]
  prog1 := RejWezP_K["P:prog1"]
  proc2 := RejWezP_K["P:proc2"]
  prog2 := RejWezP_K["P:prog2"]
  proc3 := RejWezP_K["P:proc3"]
  prog3 := RejWezP_K["P:prog3"]
  proc4 := RejWezP_K["P:proc4"]
  prog4 := RejWezP_K["P:prog4"]
  xubezzdr := RejWezP_K["P:uzu"]
  xubezzdro := RejWezP_K["P:uzo"]
  ekonto := RejWezP_S["P:ekonto"]
  rkonto := RejWezP_S["P:rkonto"]
  wkonto := RejWezP_S["P:wkonto"]
  ckonto := RejWezP_S["P:ckonto"]
  zkonto := RejWezP_S["P:zkonto"]
  fgkonto := RejWezP_S["P:fgkonto"]
  fpkonto := RejWezP_S["P:fpkonto"]
  ekontown  := RejWezP_S["P:ekontown"]
  rkontown  := RejWezP_S["P:rkontown"]
  wkontown  := RejWezP_S["P:wkontown"]
  fgkontown := RejWezP_S["P:fgkontown"]
  fpkontown := RejWezP_S["P:fpkontown"]
  fekonto := RejWezP_S["P:fekonto"]
  fekontown := RejWezP_S["P:fekontown"]
  epkontown  := RejWezP_S["P:epkontown"]
  rpkontown  := RejWezP_S["P:rpkontown"]
  epkonto  := RejWezP_S["P:epkonto"]
  rpkonto  := RejWezP_S["P:rpkonto"]
callalg["place-stawki-przepisz"]
% place-stawki-przepisz.alg
  uep := RejWezP_K["P:uep"]
  urp := RejWezP_K["P:urp"]
  uwp := RejWezP_K["P:uwp"]
  ueu := RejWezP_K["P:ueu"]
  uru := RejWezP_K["P:uru"]
  ucu := RejWezP_K["P:ucu"]
  fgp := RejWezP_K["P:fgp"]
  fpp := RejWezP_K["P:fpp"]
  fep := RejWezP_K["P:fep"]
  uzd := Rejwezp_k["P:uzu"]
  uzo := rejwezp_k["p:uzo"]
puer := RejWezP_K["P:progub"]
// -----------------------------
% PLACE-USTAW-IDENT-PLATNIK.ALG
  typid         := "P"
  ident         := RejWezP_S["C:pesel"]
  if(ident="")  typid := "1"
  if(ident="")  ident := RejWezP_S["C:dowod"]
  if(ident="")  typid := "N"
  if(ident="")  ident := RejWezP_S["C:nip"]

  k_nip := RejWezP_S["C:nip"]
  k_pesel := RejWezP_S["C:pesel"]

% PLACE-USTAW-IDENT-ZLECENIA-ZGLOSZ.ALG
  typid         := "1"
  ident         := RejWezP_S["C:dowod"]
  if(ident="")  typid := "2"
  if(ident="")  ident := RejWezP_S["C:paszport"]
  if(ident="")  typid := ""
  k_nip := RejWezP_S["C:nip"]
  k_pesel := RejWezP_S["C:pesel"]

// -----------------------------
% ZAPISZ-WYBRANY-RAPORT.ALG
  Plik_Op["ZMienKluczRej","1"]  
  if (not Plik_Op["Znajdzrek",symrap]) goto dodaj
  petla:
    if (RowneP_S["sym",xpracownik] and RowneP_S["ksiega",AKTUA_KSIEGA]) ExitAlg[0]
    if (Plik_Op["WeznastepnyRekN",""]) goto petla
 dodaj:             
//  OkAlert[xpracownik + " = " + dowod]         
  RejOp["DodajRek",""]
  xRejWstawp_S["ksiega",AKTUA_KSIEGA]
  xRejWstawP_S["symrap",symrap]
  xRejWstawP_S["identrap",identrap]
  xRejWstawP_S["typid",typid]
  xRejWstawP_S["ident",ident]
  xRejWstawP_D["datarap",xdatarap]
  xRejWstawP_S["sym",xpracownik]
  xRejWstawP_S["nazwisko",nazwisko]
  xRejWstawP_S["imie",imie]
  xRejWstawP_S["imie1",imie1]
  xRejWstawP_S["imie2",imie2]
  xRejWstawP_S["dowod",dowod]
  xRejWstawP_S["paszport",paszport]
  xRejWstawP_S["pesel",k_pesel]
  xRejWstawP_S["nip",k_nip]
  xRejWstawP_S["miasto",miasto]
  xRejWstawP_S["kod",kod]
  xRejWstawP_S["gmina",gmina]
  xRejWstawP_S["ulica",ulica]
  xRejWstawP_S["dom",dom]
  xRejWstawP_S["lokal",lokal]
//
  xRejWstawP_S["miasto1",miasto1]
  xRejWstawP_S["kod1",kod1]
  xRejWstawP_S["ulica1",ulica1]
  xRejWstawP_S["dom1",dom1]
  xRejWstawP_S["lokal1",lokal1]
  xRejWstawP_S["miasto2",miasto2]
  xRejWstawP_S["kod2",kod2]
  xRejWstawP_S["ulica2",ulica2]
  xRejWstawP_S["gmina2",gmina2]
  xRejWstawP_S["dom2",dom2]
  xRejWstawP_S["lokal2",lokal2]
//
  xRejWstawP_D["datau",data_u]
  xRejWstawP_S["miejsce_u",miejsce_u]
  xRejWstawP_S["telefon",telefon]
  xRejWstawP_S["kodprac",kodprac]
  xRejWstawP_S["nazwisko_pan",nazwisko_pan]
  xRejWstawP_S["plec",plec]
  xRejWstawP_D["dzatrud",dzatrud]
  xRejWstawP_D["dzwolnien",dzwolnien]
  xRejWstawP_S["wymiar",wymiar]
  xRejWstawP_S["obywatel",obywatelstwo]
// xRejWstawP_S["wykszt",wykszt]
  xRejWstawP_S["kodniezdol",kodniezdol]
  xRejWstawP_D["dniezdol1",dniezdol1]
  xRejWstawP_D["dniezdol2",dniezdol2]
  xRejWstawP_S["kodzawodu",kodzawodu]
  xRejWstawP_S["kodwykszt",kodwykszt]
  xRejWstawP_S["kodpracszczeg",kodpracszczeg]
  xRejWstawP_D["dpoczszczeg",dpoczszczeg]
  xRejWstawP_D["dkonszczeg",dkonszczeg]
  xRejWstawP_S["kodkasychor",kodkasychor]
  xRejWstawP_S["nazkasychor",nazkasychor]
  xRejWstawP_D["datapoczkasy",datapoczkasy]
  xRejWstawP_S["kodpokrew",kodpokrew]
  xRejWstawP_L["czyrodzina",czyrodzina]
  xRejWstawP_S["st_nazwisko",st_nazwisko]
  xRejWstawP_S["st_imie1",st_imie1]
  xRejWstawP_D["st_datau",st_datau]
  xRejWstawP_S["st_ident",st_ident]
  xRejWstawP_S["st_pesel",st_pesel]
  xRejWstawP_S["st_nip",st_nip]
  xRejWstawP_D["st_dzmiany",st_dzmiany]
  xRejWstawP_S["st_typid",st_typid]
  xRejWstawP_L["ubezp_dobrow",ubezp_dobrow]
  xRejWstawP_L["zglaszac_wypadkowe",zglaszac_wypadkowe]
  xRejWstawP_L["zglaszac_chorobowe",zglaszac_chorobowe]
  RejOp["ZapiszRek",""]
  
// ------------------------
// przepisz archiwum
// ------------------------
% PLACE-ARCH-PRZEPISZ-POLE.DIC
"pracownik",,,"xpracownik"
"skladnik",,,"xskladnik"
"wydzial",,,"xwydzial"
"rodz",,,"xrodz"
"kodprac",,,"xkodprac"
"miegodz",,,"xmiegodz"
"rokmie",,,"xrokmie"
"datawypl",,,"xdatawypl"
"stawka",,,"xstawka"
"lgodzin",,,"xlgodzin"
"placab",,,"xplacab"
"k_uzys",,,"xk_uzys"
"podstawa",,,"xpodstawa"
"procent",,,"xprocent"
"podatekn",,,"xpodatekn"
"k_zw",,,"xk_zw"
"podatekp",,,"xpodatekp"
"placan",,,"xplacan"
"wymiar",,,"xwymiar"
"sbrutto",,,"sbrutto"
"spodst_er",,,"spodst_er"
"spodst_cw",,,"spodst_cw"
"sueu",,,"sueu"
"suru",,,"suru"
"sucu",,,"sucu" 
"suep",,,"suep"
"surp",,,"surp"
"suwp",,,"suwp"
"sk_uzys",,,"sk_uzys"
"sk_uzys_m",,,"sk_uzys_m"
"sk_uzys_r",,,"sk_uzys_r"
"spodstopod",,,"spodstopod"
"spodstopod1",,,"spodstopod1"
"sprocpod",,,"sprocpod"
"spodst_z",,,"spodst_z"
"spodst_z1",,,"spodst_z1"
"spodstkup",,,"spodstkup"
"spodstkup1",,,"spodstkup1"
"szalzdr",,,"szalzdr"
"snalzdr",,,"snalzdr"
"szalzdrn",,,"szalzdrn"
"snalpod",,,"snalpod"
"sk_zw",,,"sk_zw"
"szalpod",,,"szalpod"
"snetto",,,"snetto"
"szasilek",,,"szasilek"
"skorpod",,,"skorpod"
"skorzdrow",,,"skorzdrow"
"skorpit",,,"skorpit"
"spotrac",,,"spotrac"
"dowypl",,,"dowypl"
"dataod1",,,"dataod1"
"datado1",,,"datado1"
"kod_chor",,,"kod_chor"
"dataod2",,,"dataod2"
"datado2",,,"datado2"
"kod_chor2",,,"kod_chor2"
"dataod3",,,"dataod3"
"datado3",,,"datado3"
"kod_chor3",,,"kod_chor3"
"dataod4",,,"dataod4"
"datado4",,,"datado4"
"kod_chor4",,,"kod_chor4"
"dataod5",,,"dataod5"
"datado5",,,"datado5"
"kod_chor5",,,"kod_chor5"
"ueu",,,"ueu"
"uru",,,"uru"
"ucu",,,"ucu"
"uep",,,"uep"
"urp",,,"urp"
"uwp",,,"uwp"
"podst_z",,,"podst_z"
"wynpodst",,,"wynpodst"
"korygowany",,,"korygowany"  
"kordwypl",,,"kordwypl"
"typsklad",,,"xtyp"
"sbr_odj_chor",,,"sbr_odj_chor"
"sbr_odj_wyp",,,"sbr_odj_wyp"
"spodst_er_opod",,,"spodst_er_opod"
"spodst_cw_opod",,,"spodst_cw_opod"
"szus_opod",,,"szus_opod"
"szdrownobn",,,"szdrownobn"
"spodst_z1_opod",,,"spodst_z1_opod"
"spodst_er_nobn",,,"spodst_er_nobn"
"spodst_cw_nobn",,,"spodst_cw_nobn"
"szus_nobn",,,"szus_nobn"
"szalzdr_nobn",,,"szalzdr_nobn"
"placab_uzu",,,"placab_uzu"
"mies_uzu",,,"mies_uzu"
"placabp",,,"placabp"
"reh_procent",,,"reh_procent"
// --------------------------
// przegladaj wyliczone kwoty
// --------------------------

% LOOK-PITLICZ.ALG

  CallSl["gl_zobacz_rejestr(""PITLICZ.RXR"")"]
  
// -----------------------
// dane o pracowniku
// -----------------------

% POBIERZ-DANE-PRACOWNIK.ALG
  znajdz_prac:
   if (RejOp["C:ZnajdzRek",xzpracownik]) goto ok_prac
      OkAlert["W rejestrze nie ma zleceniobiorcy " + xzpracownik + " !"]
      ExitAlg[0]
  ok_prac:      
   if(xkodprac="") xkodprac := RejWezP_S["C:kodprac"]
   bo_wyplat   := RejWezP_K["C:bo_wyplat"]
   bo_dnichor   := RejWezP_K["C:bo_dnichor"]
   bo_ildnizop   := RejWezP_K["C:bo_ildnizop"]
   bo_datakchor   := RejWezP_d["C:bo_datakchor"]
   bo_podst_er := RejWezP_K["C:bo_podst_er"]
   bo_podstopod := RejWezP_K["C:bo_podstopod"]
   rodzaj_wyplaty  := RejWezP_K["C:rodzaj_wyplaty"]
   dobanku1    := RejWezP_K["C:dobanku1"]
   dobanku2    := RejWezP_K["C:dobanku2"]
   zaniechanie := RejWezP_K["C:zaniechanie"]
   kwotazaniech := RejWezP_K["C:kwotazaniech"]
   dzaniech     := RejWezP_D["C:dzaniech"]
   if(Not(xkodprac="")) ExitAlg[0]
   OkAlert["Brak kodu tytu|lu ubezpieczenia dla pracownika => "+xzpracownik+"$ w rejestrze pracownik|ow !$Nale|zy to uzupe|lni|c !"]
   CallAlg["SCN-PLACE-PODATNIK"]
   goto znajdz_prac
   
// =====================================
// przepisz dane o placach z kartoteki
// =====================================

// Z: PLARCH.RXR
// do -
// A: PL_PAR.RXR
// B: PLZAP.RXR
// C: - rejestr pracownikow
// X: - rejestr skladnikow

// przepisuj_place .T.  .N.
// dla_skladnikow
// kartoteka

% PLACE-PAR-PRZEPISZ-USTAW.ALG
// maria
   xlista     := RejWezP_S["Z:lista"]
   xnrlisty   := RejWezP_K["Z:nrlisty"]
   nrumowy    := RejWezP_K["Z:nrwzorca"]
   
   xrokmie    := rejwezp_s["z:rokmie"]
   xmieswypl  := rejwezp_s["z:mieswypl"]
   xpracownik := RejWezP_S["Z:pracownik"]
   xskladnik  := RejWezP_S["Z:skladnik"]
   xwydzial   := RejWezP_S["Z:wydzial"]
   xrodz      := RejWezP_S["Z:rodz"]
   xtyp      := RejWezP_S["Z:typsklad"]
   xmiegodz   := RejWezP_S["Z:miegodz"]
   tresc1     := RejWezP_S["Z:tresc1"]
   tresc2     := RejWezP_S["Z:tresc2"]
   tresc3     := RejWezP_S["Z:tresc3"]
   xkodprac   := RejwezP_S["Z:kodprac"]
   dodnia     := RejWezP_D["Z:dodnia"]
   datawyplaty := RejWezP_D["Z:datawyplaty"]
   dataksieg  := RejWezP_D["Z:dataksieg"]
   xmiegodz   := RejWezP_S["Z:miegodz"]
   xdatawypl  := RejWezP_D["Z:datawypl"]
//   xrodz      := RejWezP_S["Z:rodz"]
   xstawka    := RejWezP_K["Z:stawka"]
   xlgodzin   := RejWezP_K["Z:lgodzin"]
   xzbrutto   := RejWezP_K["Z:placab"]
   xzbrutton   := RejWezP_K["Z:placabn"]
   sk_uzys    := RejWezP_K["Z:sk_uzys"]
   spodstopod := RejWezP_K["Z:spodstopod"]
   spodstopod1 := RejWezP_K["Z:spodstopod1"]
   sprocpod   := RejWezP_K["Z:sprocpod"]
   szalpod    := RejWezP_K["Z:szalpod"]
   snalpod    := RejWezP_K["Z:snalpod"]
   sk_zw      := RejWezP_K["Z:sk_zw"]
   szalpod    := RejWezP_K["Z:szalpod"]
   snetto     := RejWezP_K["Z:snetto"]
   sbrutto    := RejWezP_K["Z:sbrutto"]
   spodst_er  := RejWezP_K["Z:spodst_er"]
   spodst_cw  := RejWezP_K["Z:spodst_cw"]
   spodst_z   := RejWezP_K["Z:spodst_z"]
   spodst_z1   := RejWezP_K["Z:spodst_z1"]
   spodstkup   := RejWezP_K["Z:spodstkup"]
   spodstkup1   := RejWezP_K["Z:spodstkup1"]
   sbr_odj_chor   := RejWezP_K["Z:sbr_odj_chor"]
   sbr_odj_wyp   := RejWezP_K["Z:sbr_odj_wyp"]
//
   spodst_er_opod := RejWezP_K["Z:spodst_er_opod"]
   spodst_cw_opod := RejWezP_K["Z:spodst_cw_opod"]
   szus_opod := RejWezP_K["Z:szus_opod"]
   szdrownobn := RejWezP_K["Z:szdrownobn"]
   spodst_z1_opod := RejWezP_K["Z:spodst_z1_opod"]
   spodst_er_nobn := RejWezP_K["Z:spodst_er_nobn"]
   spodst_cw_nobn := RejWezP_K["Z:spodst_cw_nobn"]
   szus_nobn := RejWezP_K["Z:szus_nobn"]
   szalzdr_nobn := RejWezP_K["Z:szalzdr_nobn"]
//
   sueu       := RejWezP_K["Z:sueu"]
   suru       := RejWezP_K["Z:suru"]
   sucu       := RejWezP_K["Z:sucu"]
   szalzdr    := RejWezP_K["Z:szalzdr"]
   if (PustePole["Z:szalzdrn"]) CallAlg["POPRAW-SKLADKI-ZDROW"]	
   snalzdr    := RejWezP_K["Z:snalzdr"]
   szalzdrn   := RejWezP_K["Z:szalzdrn"]
   suep       := RejWezP_K["Z:suep"]
   surp       := RejWezP_K["Z:surp"]
   suwp       := RejWezP_K["Z:suwp"]
   kw_obniz   := RejWezP_K["Z:kw_obniz"]
   dnipracy   := RejWezP_K["Z:dnipracy"]
   gdzpracy   := RejWezP_K["Z:gdzpracy"]
   gdzpracyu   := RejWezP_K["Z:gdzpracyu"]
   gdzpracyu_all   := RejWezP_K["Z:gdzpracyu_all"]
   gdzpracyu_nn   := RejWezP_K["Z:gdzpracyu_nn"]
   dnipracyu   := RejWezP_K["Z:dnipracyu"]
   dnipracyu_all   := RejWezP_K["Z:dnipracyu_all"]
   dnipracyu_nn   := RejWezP_K["Z:dnipracyu_nn"]
   dnipracyu_bww   := RejWezP_K["Z:dnipracyu_bww"]
   dnipracyu_kal   := RejWezP_K["Z:dnipracyu_kal"]
   gdzuop_szk   := RejWezP_K["Z:gdzuop_szk"]
   placab_uzu := rejwezp_k["z:placab_uzu"]
   mies_uzu := rejwezp_s["z:mies_uzu"]
   wynpodst   := RejWezP_K["Z:wynpodst"]
   placabp   := RejWezP_K["Z:placabp"]
   procent_reh   := RejWezP_K["Z:reh_procent"]
   szasilek   := RejWezP_K["Z:szasilek"]
   skorpod    := RejWezP_K["Z:skorpod"]
   skorzdrow  := RejWezP_K["Z:skorzdrow"]
   skorpit    := RejWezP_K["Z:skorpit"]
   spotrac    := RejWezP_K["Z:spotrac"]
   dowypl     := RejWezP_K["Z:dowypl"]
   ueu        := RejWezP_K["Z:ueu"]
   uru        := RejWezP_K["Z:uru"]
   ucu        := RejWezP_K["Z:ucu"]
   uep        := RejWezP_K["Z:uep"]
   urp        := RejWezP_K["Z:urp"]
   uwp        := RejWezP_K["Z:uwp"]
   podst_z    := RejWezP_K["Z:podst_z"]
   rodzaj_wyplaty  := RejwezP_K["Z:rodzaj_wyplaty"]
   if (PustePole["z:rodzaj_wyplaty"]) rodzaj_wyplaty := 1   
   dataprzel  := RejwezP_D["Z:dataprzel"]
   dataprzel2 := RejwezP_D["Z:dataprzel2"]
   dataprzelm0 := rejwezp_d["z:dataprzel0"]
   kwotaprzel  := RejwezP_K["Z:kwotaprzel"]
   kwotaprzel2 := RejwezP_K["Z:kwotaprzel2"]
   ksiegowana  := RejwezP_L["Z:ksiegowana"]
   kwotagotowka := RejWezp_K["Z:kwotagotowka"]
   kordwypl := rejwezp_d["z:kordwypl"]
   czy_anu := Rejwezp_l["z:anulowana"]
   CallPyt["import place_g | place_g.konto_ustaw_zm(""z:"")"]   
      
   data_rachunku := ''
   if (not przepisuj_place) data_rachunku := RejWezP_D["Z:data_rachunku"]    
   nrlisty_br :=.
   if (not przepisuj_place) nrlisty_br := RejWezP_K["Z:nrlisty_br"]    
   sufpp := .
   sufgp := .
   if (not przepisuj_place) sufpp := RejWezP_K["Z:sfpp"]    
   if (not przepisuj_place) sufgp := RejWezP_K["Z:sfgp"]    

   If(Not RejOp["X:ZnajdzRek",xskladnik]) goto blad1
   xnazsklad   := RejWezP_S["X:nazsklad"]
   xdopodstawy := RejWezP_L["X:dopodstawy"]
   xujemny     := RejWezP_L["X:ujemny"]
   xrodz       := RejWezP_S["X:rodzskl"]
   
   If(Not(RejOp["C:ZnajdzRek",xpracownik])) goto blad2
   xpnaliczac  := RejWezP_L["C:pnaliczac"]
   xnazw := rejwezp_s["C:nazwisko"]+ "  "+ rejwezp_s["C:imie1"]
   if(not(L_TT_PLACE)) RejOp["A:ZmienKluczRej","1"]
   if(L_TT_PLACE) RejOp["A:ZmienKluczRej","2"]
   if (przepisuj_place) goto p_nast01
   if (CallPyt["import place_u | place_u.nr_li_jest()"] = 1) goto niedodawaj
   goto p_nast02   

  p_nast01:   
   If(Not(dla_skladnikow) and RejOp["A:ZnajdzRek",xpracownik]) goto niedodawaj
   If(dla_skladnikow and RejOp["A:ZnajdzRek",xskladnik])  xrejdodajp_k["a:dowypl",xzbrutto]
   If(dla_skladnikow and RejOp["A:ZnajdzRek",xskladnik])       goto niedodawaj

  p_nast02:   
    RejOp["A:DodajRek",""]
    xRejWstawP_S["A:lista",xlista]
    xRejWstawP_K["A:nrlisty",xnrlisty]
    xRejWstawP_K["A:nrwzorca",nrumowy]
   If(dla_skladnikow) xrejwstawp_k["a:dowypl",xzbrutto]
   if (not(przepisuj_place)) xRejWstawP_K["A:sfpp",sufpp]    
   if (not(przepisuj_place)) xRejWstawP_K["A:sfgp",sufgp]    
    CallPyt["import place_g | place_g.wpisz_nazwisko(""a:"")"]
//    xnazw := wezpole_s["a:nazw"]    
    xRejWstawP_S["A:pracownik",xpracownik]
//    if(Not(dla_skladnikow)) xRejWstawP_S["A:pracownik",xpracownik]
//    if(Not(dla_skladnikow)) xRejWstawP_S["A:nazw",xnazw]
    if(dla_skladnikow)      xRejWstawP_S["A:pracownik",xskladnik]
    if(dla_skladnikow)      xRejWstawP_S["A:nazw",xnazsklad]
    if(Not(dla_skladnikow)) xRejWstawP_S["A:stanow",RejWezP_S["C:stanow"]]
    if(dla_skladnikow)      xRejWstawP_S["A:stanow",xrodz]
    if(Not(dla_skladnikow)and Not(kartoteka)) xRejWstawP_K["A:dowypl",dowypl]
//    xRejWstawP_K["A:dowypl",dowypl]
    xRejWstawP_S["A:wydzial",xwydzial]
    xRejWstawP_S["A:rokmie",xrokmie]
    xRejWstawP_S["A:mieswypl",xmieswypl]
    xRejWstawP_D["A:datawypl",xdatawypl]
    xRejWstawP_l["A:anulowana",czy_anu]
//    xRejWstawP_S["A:rodz",xrodz]
    xRejWstawP_K["A:rodzaj_wyplaty",rodzaj_wyplaty]
    xRejWstawP_D["A:dataprzel",dataprzel]
    xRejWstawP_K["A:kwotaprzel",kwotaprzel]
    xRejWstawP_K["A:kwotaprzel2",kwotaprzel2]
    xRejWstawP_D["A:dataprzel2",dataprzel2]
    xRejWstawP_S["A:tresc1",tresc1]
    xRejWstawP_S["A:tresc2",tresc2]
    xRejWstawP_S["A:tresc3",tresc3]
    xRejWstawP_S["A:kodprac",xkodprac]
    xRejWstawP_L["A:ksiegowana",ksiegowana]
    xRejWstawP_D["A:dodnia",dodnia]
    xRejWstawP_D["A:datawyplaty",datawyplaty]
    xRejWstawP_D["A:dataksieg",dataksieg]
    if (not przepisuj_place) xRejWstawP_D["A:data_rachunku",data_rachunku]
    if (not przepisuj_place) xRejWstawP_K["A:nrlisty_br",nrlisty_br]
    xRejWstawP_K["A:kwotagotowka",kwotagotowka]
    CallPyt["import place_g | place_g.konto_zapam_zm(""a:"")"]  
    RejOp["A:ZapiszRek",""]
niedodawaj:
  if(not(L_TT_PLACE)) rejop["A:znajdzrek",xlista+"*"+tostr["#xnrlisty#S:0"]]
  dokidtmp := RejWezP_K["A:dokid"]
  RejOp["B:DodajRek",""]
  xRejWstawP_S["B:zskladnik",xskladnik]
  xRejWstawP_S["B:zpracownik",xpracownik]
  xRejWstawP_S["B:znazw",xnazsklad]
  if(dla_skladnikow)      xRejWstawP_S["B:zskladnik",xpracownik]
  if(dla_skladnikow)      xRejWstawP_S["B:zpracownik",xskladnik]
  if(dla_skladnikow)      xRejWstawP_S["B:znazw",xnazw]
  xRejWstawP_S["B:kodprac",xkodprac]
  xRejWstawP_S["B:zmiegodz",xmiegodz]
  xRejWstawP_K["B:zstawka",xstawka]
//okalert["tu jestem"]
  xRejWstawP_K["B:zlgodzin",xlgodzin]
  xRejWstawP_K["B:zbrutto",xzbrutto]
  xRejWstawP_K["B:zbrutton",xzbrutton]
  xRejWstawP_K["B:dokidzap",dokidtmp]
  xRejWstawP_D["B:zdatawypl",xdatawypl]
  xRejWstawP_S["B:zlista",xlista]
  xRejWstawP_K["B:znrlisty",xnrlisty]
  xRejWstawP_S["B:rodz",xrodz]
  xRejWstawP_S["B:typsklad",xtyp]
  xRejWstawP_K["B:sbrutto",sbrutto]
  xRejWstawP_K["B:sk_uzys",sk_uzys]
  xRejWstawP_K["B:spodstopod",spodstopod]
  xRejWstawP_K["B:spodstopod1",spodstopod1]
  xRejWstawP_K["B:sprocpod",sprocpod]
  xRejWstawP_K["B:szalpod",szalpod]
  xRejWstawP_K["B:sk_zw",sk_zw]
  xRejWstawP_K["B:szalpod",szalpod]
  xRejWstawP_K["B:snalpod",snalpod]
  xRejWstawP_K["B:snetto",snetto]
  xRejWstawP_K["B:spodst_er",spodst_er]
  xRejWstawP_K["B:spodst_cw",spodst_cw]
  xRejWstawP_K["B:spodst_z",spodst_z]
  xRejWstawP_K["B:spodst_z1",spodst_z1]
  xRejWstawP_K["B:spodstkup",spodstkup]
  xRejWstawP_K["B:spodstkup1",spodstkup1]
  xRejWstawP_K["B:sbr_odj_chor",sbr_odj_chor]
  xRejWstawP_K["B:sbr_odj_wyp",sbr_odj_wyp]
  xRejWstawP_K["B:spodst_er_opod",spodst_er_opod]
  xRejWstawP_K["B:spodst_cw_opod",spodst_cw_opod]
  xRejWstawP_K["B:szus_opod",szus_opod]
  xRejWstawP_K["B:szdrownobn",szdrownobn]
  xRejWstawP_K["B:spodst_z1_opod",spodst_z1_opod]
  xRejWstawP_K["B:spodst_er_nobn",spodst_er_nobn]
  xRejWstawP_K["B:spodst_cw_nobn",spodst_cw_nobn]
  xRejWstawP_K["B:szus_nobn",szus_nobn]
  xRejWstawP_K["B:szalzdr_nobn",szalzdr_nobn]
//
  xRejWstawP_K["B:sueu",sueu]
  xRejWstawP_K["B:suru",suru]
  xRejWstawP_K["B:sucu",sucu]
  xRejWstawP_K["B:szalzdr",szalzdr]
  xRejWstawP_K["B:snalzdr",snalzdr]
  xRejWstawP_K["B:szalzdrn",szalzdrn]
  xRejWstawP_K["B:suep",suep]
  xRejWstawP_K["B:surp",surp]
  xRejWstawP_K["B:suwp",suwp]
  xRejWstawP_K["B:kw_obniz",kw_obniz]
  xRejWstawP_K["B:dnipracy",dnipracy]
  xRejWstawP_K["B:gdzpracy",gdzpracy]
  xRejWstawP_K["B:gdzpracyu",gdzpracyu]
  xRejWstawP_K["B:gdzpracyu_all",gdzpracyu_all]
  xRejWstawP_K["B:gdzpracyu_nn",gdzpracyu_nn]
  xRejWstawP_K["B:dnipracyu",dnipracyu]
  xRejWstawP_K["B:dnipracyu_all",dnipracyu_all]
  xRejWstawP_K["B:dnipracyu_nn",dnipracyu_nn]
  xRejWstawP_K["B:dnipracyu_bww",dnipracyu_bww]
  xRejWstawP_K["B:dnipracyu_kal",dnipracyu_kal]
  xRejWstawP_K["B:gdzuop_szk",gdzuop_szk]
  xRejWstawP_K["B:placab_uzu",placab_uzu]
  xRejWstawP_s["B:mies_uzu",mies_uzu]
  xRejWstawP_K["B:wynpodst",wynpodst]
  xRejWstawP_K["B:placabp",placabp]
  xRejWstawP_K["B:reh_procent",procent_reh]
  xRejWstawP_K["B:spotrac",spotrac]
  xRejWstawP_K["B:szasilek",szasilek]
  xRejWstawP_K["B:skorpod",skorpod]
  xRejWstawP_K["B:skorzdrow",skorzdrow]
  xRejWstawP_K["B:skorpit",skorpit]
  xRejWstawP_K["B:dowypl",dowypl]
  xRejWstawP_K["B:ueu",ueu]
  xRejWstawP_K["B:uru",uru]
  xRejWstawP_K["B:ucu",ucu]
  xRejWstawP_K["B:uep",uep]
  xRejWstawP_K["B:urp",urp]
  xRejWstawP_K["B:uwp",uwp]
  xRejWstawP_K["B:podst_z",podst_z]
  xRejWstawP_K["B:kwotaprzel",kwotaprzel]
  xRejWstawP_K["B:kwotaprzel2",kwotaprzel2]
  xrejwstawp_d["B:dataprzel0",dataprzelm0]
    if(L_TT_PLACE) goto zapiszrek_b
  xrejwstawp_l["b:korygowany",.N.] 
  if(xujemny) xrejwstawp_l["b:korygowany",.T.] 
  zapiszrek_b:
RejOp["B:ZapiszRek",""]
  goto koniec  
  
 blad1:
  OkAlert["Nieznany sk|ladnik " + xskladnik + " !"]
  goto koniec
  
 blad2:
  OkAlert["Nieznany pracownik " + xpracownik + " !"]
  
 koniec:
 Rejop["A:wezpierwszyrek",""]    
% POPRAW-SKLADKI-ZDROW.ALG
  xubezzdr := .
  xubezzdro := .
  xnalzdr := .
  xzalzdr := .
  xzalzdrn := .  
  CallPyt["import place_g | place_g.place_sprawdz_parametry()"]
  CallAlg["WYLICZ-ZALICZKE-ZDROWOTNE"]  
  
  snalzdr := xnalzdr
  szalzdrn := xzalzdrn  
    
// ----------------------------
// zapisuje dane o placach
// ----------------------------
// Z: PLARCH.RXR
// do -
// A: PL_PAR.RXR
// B: PLZAP.RXR
// C: - rejestr pracownikow
// X: - rejestr skladnikow
//  dla_skladnikow
//  przepisuj_place

% PLACE-PAR-ZAPISZ-USTAW.ALG
rejop["x:otworzrejsprawdz","plsklad.rxr"]

if(Not(RejOp["B:WezPierwszyRek",""])) ExitAlg[0]
defzmiennal["poprawa",.N.]
powrot:
    xxskladnik := ""
    czy_zapis := .N.
    xzbrutto   := RejWezP_K["B:zbrutto"]
    xzbrutton   := RejWezP_K["B:zbrutton"]
        xzskladnik := RejWezP_S["B:zskladnik"]
        xrodz      := RejWezP_S["B:rodz"]
        xtyp      := RejWezP_S["B:typsklad"]
        xzmiegodz  := RejWezP_S["B:zmiegodz"]
        xwymiar    := RejWezP_S["B:wymiar"]
        xkodprac   := RejWezP_S["B:kodprac"]
        przekrocz  := RejWezP_S["B:przekrocz"]
        xzstawka   := RejWezP_K["B:zstawka"]
        xzlgodzin  := RejWezP_K["B:zlgodzin"]
        sbrutto    := RejWezP_K["B:sbrutto"]
        spodst_er  := RejWezP_K["B:spodst_er"]
        spodst_cw  := RejWezP_K["B:spodst_cw"]
        sueu       := RejWezP_K["B:sueu"]
        suru       := RejWezP_K["B:suru"]
        sucu       := RejWezP_K["B:sucu"]
        suep       := RejWezP_K["B:suep"]
        surp       := RejWezP_K["B:surp"]
        suwp       := RejWezP_K["B:suwp"]
        sk_uzys    := RejWezP_K["B:sk_uzys"]
        spodstopod := RejWezP_K["B:spodstopod"]
        spodstopod1 := RejWezP_K["B:spodstopod1"]
        sprocpod   := RejWezP_K["B:sprocpod"]
        spodst_z   := RejWezP_K["B:spodst_z"]
        spodst_z1   := RejWezP_K["B:spodst_z1"]
        spodstkup   := RejWezP_K["B:spodstkup"]
        spodstkup1   := RejWezP_K["B:spodstkup1"]
        sbr_odj_chor   := RejWezP_K["B:sbr_odj_chor"]
        sbr_odj_wyp   := RejWezP_K["B:sbr_odj_wyp"]
        wynpodst := RejWezP_K["B:wynpodst"]
        placabp := RejWezP_K["B:placabp"]
        procent_reh := RejWezP_K["B:reh_procent"]
//
spodst_er_opod   := RejWezP_K["B:spodst_er_opod"]
spodst_cw_opod   := RejWezP_K["B:spodst_cw_opod"]
szus_opod   := RejWezP_K["B:szus_opod"]
szdrownobn   := RejWezP_K["B:szdrownobn"]
spodst_z1_opod   := RejWezP_K["B:spodst_z1_opod"]
spodst_er_nobn   := RejWezP_K["B:spodst_er_nobn"]
spodst_cw_nobn   := RejWezP_K["B:spodst_cw_nobn"]
szus_nobn   := RejWezP_K["B:szus_nobn"]
szalzdr_nobn   := RejWezP_K["B:szalzdr_nobn"]
        szalzdr    := RejWezP_K["B:szalzdr"]
        snalzdr    := RejWezP_K["B:snalzdr"]
        szalzdrn   := RejWezP_K["B:szalzdrn"]
        snalpod    := RejWezP_K["B:snalpod"]
        sk_zw      := RejWezP_K["B:sk_zw"]
        szalpod    := RejWezP_K["B:szalpod"]
        snetto     := RejWezP_K["B:snetto"]
        szasilek   := RejWezP_K["B:szasilek"]
        skorpod    := RejWezP_K["B:skorpod"]
        skorzdrow  := RejWezP_K["B:skorzdrow"]
        skorpit    := RejWezP_K["B:skorpit"]
        spotrac    := RejWezP_K["B:spotrac"]
        dowypl     := RejWezP_K["B:dowypl"]
        ueu        := RejWezP_K["B:ueu"]
        uru        := RejWezP_K["B:uru"]
        ucu        := RejWezP_K["B:ucu"]
        uep        := RejWezP_K["B:uep"]
        urp        := RejWezP_K["B:urp"]
        uwp        := RejWezP_K["B:uwp"]
        podst_z    := RejWezP_K["B:podst_z"]
        xdokid     := RejWezP_K["B:dokidzap"]
        gdzpracy := rejwezp_k["b:gdzpracy"]
        gdzpracyu := rejwezp_k["b:gdzpracyu"]
        gdzpracyu_all := rejwezp_k["b:gdzpracyu_all"]
        gdzpracyu_nn := rejwezp_k["b:gdzpracyu_nn"]
        dnipracy := rejwezp_k["b:dnipracy"]
        dnipracyu := rejwezp_k["b:dnipracyu"]
        dnipracyu_all := rejwezp_k["b:dnipracyu_all"]
        dnipracyu_nn := rejwezp_k["b:dnipracyu_nn"]
        dnipracyu_bww := rejwezp_k["b:dnipracyu_bww"]
        dnipracyu_kal := rejwezp_k["b:dnipracyu_kal"]
        gdzuop_szk := rejwezp_k["b:gdzuop_szk"]
        placab_uzu := rejwezp_k["b:placab_uzu"]
        mies_uzu := rejwezp_s["b:mies_uzu"]
        dataod5 := rejwezp_d["b:dataod5"]
        datado5 := rejwezp_d["b:datado5"]
        datado4 := rejwezp_d["b:datado4"]
        dataod3 := rejwezp_d["b:dataod3"]
        datado3 := rejwezp_d["b:datado3"]
        kod_chor3 := rejwezp_s["b:kod_chor3"]
//        dataprzelm0 := rejwezp_d["b:dataprzel0"]
        xdokidtxt  := ToStr["#xdokid#S:0"]
  RejOp["A:ZmienKluczRej","6"]
  if(RejOp["A:ZnajdzRek",xdokidtxt]) goto ok_dalej
      LOG_OPIS :=   "Lokalny identyfikator: " + xdokidtxt
      LOG_ID := DodajLogElem["BLAD_UZUPELNIANIE+RACHUNKOW","Nie mo|zna znale|x|c klucza","", LOG_OPIS]
      DodajLogElemKoniec[LOG_ID,""]
      goto next
  ok_dalej:
  if((not przepisuj_place) and Not(RejWezP_L["A:modyfikowana"])) goto next
  if (not przepisuj_place) data_rachunku := RejWezP_D["A:data_rachunku"]    
        xlista     := RejWezP_S["A:lista"]
        if (not przepisuj_place) xnrlisty   := RejWezP_K["A:nrlisty"]
        if (not przepisuj_place) xnrlisty_br   := RejWezP_K["A:nrlisty_br"]
        nrumowy    := RejWezP_K["A:nrwzorca"]
        xpracownik := RejWezP_S["A:pracownik"]
// sprawdzenie czy dane zapisac do bazy - zapisywane wszystkie dla ktorych brutton lub brutto rozne od 0 oraz skladniki dluzsze niz miesiac
        xxskladnik := xzskladnik
        if(dla_skladnikow) xxskladnik := xpracownik
        if(rejop["x:znajdzrek",xxskladnik]) czy_zapis := rejwezp_l["x:ponad_mies"]
//    okalert["xxskladnik="+xxskladnik+"$czy_zapis="+czy_zapis]
    IF(poprawa and (xzbrutto=. or xzbrutto=0) and (xzbrutton=. or xzbrutton=0) and not(czy_zapis)) goto next
//
        xrokmie    := RejWezP_S["A:rokmie"]
        xwydzial   := RejWezP_S["A:wydzial"]
        xanulowana := RejWezP_L["A:anulowana"]
        xdodnia    := RejWezP_D["A:dodnia"]
        datawyplaty := RejWezP_D["A:datawyplaty"]
        dataksieg  := RejWezP_D["A:dataksieg"]
        xdatawypl  := RejWezP_D["A:datawypl"]
        dataprzel  := RejWezP_D["A:dataprzel"]
        kwotaprzel := RejWezP_K["A:kwotaprzel"]
        kwotaprzel2 := RejWezP_K["A:kwotaprzel2"]
        dataprzel2  := RejWezP_D["A:dataprzel2"]
        mieswypl   := RejWezP_S["A:mieswypl"]
        tresc1     := RejWezP_S["A:tresc1"]
        tresc2     := RejWezP_S["A:tresc2"]
        tresc3     := RejWezP_S["A:tresc3"]
        xkodprac   := RejWezP_S["A:kodprac"]
        ksiegowana := RejWezP_L["A:ksiegowana"]  
        kwotagotowka := RejWezP_K["A:kwotagotowka"]
        rodzaj_wyplaty := RejWezP_K["A:rodzaj_wyplaty"]
	CallPyt["import place_g | place_g.konto_ustaw_zm(""a:"")"]
	
  RejOp["Z:DodajRek",""]
  xRejWstawP_S["Z:pracownik",xpracownik]
  xRejWstawP_S["Z:skladnik",xzskladnik]
  if(dla_skladnikow)      xRejWstawP_S["Z:pracownik",xzskladnik]
  if(dla_skladnikow)      xRejWstawP_S["Z:skladnik",xpracownik]
  
  xRejWstawP_S["Z:lista",xlista]
  xRejWstawP_K["Z:nrlisty",xnrlisty]
  xRejWstawP_K["Z:nrwzorca",nrumowy]
  xRejWstawP_S["Z:miegodz",xzmiegodz]
  xRejWstawP_S["Z:rokmie",xrokmie]
  xRejWstawP_S["Z:wydzial",xwydzial]
  xRejWstawP_S["Z:rodz",xrodz]
  xRejWstawP_S["Z:typsklad",xtyp]
  xRejWstawP_S["Z:przekrocz",przekrocz]
  xRejWstawP_S["Z:tresc1",tresc1]
  xRejWstawP_S["Z:tresc2",tresc2]
  xRejWstawP_S["Z:tresc3",tresc3]
  xRejWstawP_S["Z:kodprac",xkodprac]
  xRejWstawP_L["Z:ksiegowana",ksiegowana]
  xRejWstawP_L["Z:anulowana",xanulowana]
  xRejWstawP_D["Z:datawypl",xdatawypl]
  xRejWstawP_D["Z:dodnia",xdodnia]
  xRejWstawP_D["Z:datawyplaty",datawyplaty]
  xRejWstawP_D["Z:dataksieg",dataksieg]
  xRejWstawP_S["Z:mieswypl",mieswypl]
  xRejWstawP_K["Z:stawka",xzstawka]
  xRejWstawP_K["Z:lgodzin",xzlgodzin]
  xRejWstawP_K["Z:placab",xzbrutto]
  xRejWstawP_K["Z:placabn",xzbrutton]
  xRejWstawP_K["Z:wynpodst",wynpodst]
  xRejWstawP_K["Z:placabp",placabp]
  xRejWstawP_K["Z:reh_procent",procent_reh]
  xRejWstawP_K["Z:dnipracy",dnipracy]
  xRejWstawP_K["Z:gdzpracy",gdzpracy]
  xRejWstawP_K["Z:gdzpracyu",gdzpracyu]
  xRejWstawP_K["Z:gdzpracyu_all",gdzpracyu_all]
  xRejWstawP_K["Z:gdzpracyu_nn",gdzpracyu_nn]
  xRejWstawP_K["Z:dnipracyu",dnipracyu]
  xRejWstawP_K["Z:dnipracyu_all",dnipracyu_all]
  xRejWstawP_K["Z:dnipracyu_nn",dnipracyu_nn]
  xRejWstawP_K["Z:dnipracyu_bww",dnipracyu_bww]
  xRejWstawP_K["Z:dnipracyu_kal",dnipracyu_kal]
  xRejWstawP_K["Z:gdzuop_szk",gdzuop_szk]
  xRejWstawP_K["Z:placab_uzu",placab_uzu]
  xRejWstawP_s["Z:mies_uzu",mies_uzu]
  xRejWstawP_d["Z:dataod5",dataod5]
  xRejWstawP_d["Z:datado5",datado5]
  xRejWstawP_d["Z:dataod3",dataod3]
  xRejWstawP_d["Z:datado3",datado3]
  xrejwstawp_s["Z:kod_chor3",kod_chor3]
  xrejwstawp_s["Z:kod_chor4",xlista+tostr["#xnrlisty#S:0"]]
//if(xpracownik="32") okalert["xxx datado4="+datado4]
  xRejWstawP_d["Z:datado4",datado4]
//  
  xRejWstawP_K["Z:sbrutto",sbrutto]
  xRejWstawP_K["Z:sk_uzys",sk_uzys]
  xRejWstawP_K["Z:spodstopod",spodstopod]
  xRejWstawP_K["Z:spodstopod1",spodstopod1]
  xRejWstawP_K["Z:sprocpod",sprocpod]
  xRejWstawP_K["Z:snalpod",snalpod]
  xRejWstawP_K["Z:sk_zw",sk_zw]
  xRejWstawP_K["Z:szalpod",szalpod]
  xRejWstawP_K["Z:snetto",snetto]
  xRejWstawP_S["Z:wymiar",xwymiar]
  xRejWstawP_K["Z:spodst_er",spodst_er]
  xRejWstawP_K["Z:spodst_cw",spodst_cw]
  xRejWstawP_K["Z:sueu",sueu]
  xRejWstawP_K["Z:suru",suru]
  xRejWstawP_K["Z:sucu",sucu]
  xRejWstawP_K["Z:suep",suep]
  xRejWstawP_K["Z:surp",surp]
  xRejWstawP_K["Z:suwp",suwp]
  xRejWstawP_K["Z:spodst_z",spodst_z]
  xRejWstawP_K["Z:spodst_z1",spodst_z1]
  xRejWstawP_K["Z:spodstkup",spodstkup]
  xRejWstawP_K["Z:spodstkup1",spodstkup1]
  xRejWstawP_K["Z:sbr_odj_chor",sbr_odj_chor]
  xRejWstawP_K["Z:sbr_odj_wyp",sbr_odj_wyp]
//
  xRejWstawP_K["Z:spodst_er_opod",spodst_er_opod]
  xRejWstawP_K["Z:spodst_cw_opod",spodst_cw_opod]
  xRejWstawP_K["Z:szus_opod",szus_opod]
  xRejWstawP_K["Z:szdrownobn",szdrownobn]
  xRejWstawP_K["Z:spodst_z1_opod",spodst_z1_opod]
  xRejWstawP_K["Z:spodst_er_nobn",spodst_er_nobn]
  xRejWstawP_K["Z:spodst_cw_nobn",spodst_cw_nobn]
  xRejWstawP_K["Z:szus_nobn",szus_nobn]
  xRejWstawP_K["Z:szalzdr_nobn",szalzdr_nobn]
//
  xRejWstawP_K["Z:szalzdr",szalzdr]
  xRejWstawP_K["Z:snalzdr",snalzdr]
  xRejWstawP_K["Z:szalzdrn",szalzdrn]
  xRejWstawP_K["Z:szasilek",szasilek]
  xRejWstawP_K["Z:skorpod",skorpod]
  xRejWstawP_K["Z:skorzdrow",skorzdrow]
  xRejWstawP_K["Z:skorpit",skorpit]
  xRejWstawP_K["Z:spotrac",spotrac]
  xRejWstawP_K["Z:dowypl",dowypl]
  xRejWstawP_K["Z:ueu",ueu]
  xRejWstawP_K["Z:uru",uru]
  xRejWstawP_K["Z:ucu",ucu]
  xRejWstawP_K["Z:uep",uep]
  xRejWstawP_K["Z:urp",urp]
  xRejWstawP_K["Z:uwp",uwp]
  xRejWstawP_K["Z:podst_z",podst_z]
  xRejWstawP_D["Z:dataprzel",dataprzel]
  xRejWstawP_K["Z:kwotaprzel",kwotaprzel]
  xRejWstawP_K["Z:kwotaprzel2",kwotaprzel2]
  xRejWstawP_D["Z:dataprzel2",dataprzel2]
//  xrejwstawp_d["z:kordwypl",kordwypl]
  CallPyt["import place_g | place_g.konto_zapam_zm(""Z:"")"]
  if(not(przepisuj_place)) dataprzel0 := ''
  if(przepisuj_place) xrejwstawp_d["z:dataprzel0",dataprzel0]
  if(not( przepisuj_place)) callalg["umowy_dopisz_fpp"]
  if (not przepisuj_place)  kordwypl := ''
  xrejwstawp_d["z:kordwypl",kordwypl]
  xRejWstawP_K["Z:rodzaj_wyplaty",rodzaj_wyplaty]
  xRejWstawP_K["Z:kwotagotowka",kwotagotowka]  
  RejOp["Z:ZapiszRek",""]
//okalert["zapisuje"]
  if (not przepisuj_place) callalgfile["place\umowy_prezentacja.py","zapisz-do-sumynart"]
  LOG_OPIS :=   "Umowa:" + xlista + " / " + ToStr["#nrumowy#S:0"] + " Rachunek:" + ToStr["#xnrlisty#S:0"]
  LOG_ID := DodajLogElem["DODANIE_RACHUNKU","Dodanie rachunku po modyfikacji","", LOG_OPIS]
  DodajLogElemKoniec[LOG_ID,""]
next:
  IF (RejOp["B:WezNastepnyRek",""]) goto powrot
rejop["x:zamknijrej",""]
//
% umowy_dopisz_fpp.alg
  xRejWstawP_K["Z:sfpp",rejwezp_k["a:sfpp"]]
  xRejWstawP_K["Z:sfgp",rejwezp_k["a:sfgp"]]
  xRejWstawP_D["Z:data_rachunku",data_rachunku]
  xrejwstawp_k["z:nrlisty_br",xnrlisty_br]
// --------------------------
// dane uzytownika
// --------------------------

% PLACE-DANE-UZYTKOWNIKA.ALG
CallAlg["ODCZYTAJ-DANE-UZYTKOWNIKA"]
CallAlg["PLACE-PRZEPISZ-DANE-UZYTKOWNIKA"]

% PLACE-PRZEPISZ-DANE-UZYTKOWNIKA.ALG
dluznazwa1 := std_firma1
dluznazwa2 := std_firma2
dluzadres := std_ulica
kod := std_kodpoc
miasto := std_miasto
bank1 := std_bank1
bank2 := std_bank2
dluznumerbanku := std_banknr
nip := std_nip
regon := std_regon

% WYPLATY-FORMA-WYPLATY.XXX
// -------------------------
##60,0,P,,"na rachunek 1",,,,,,POLE:$$(RODZAJ-FORMA-WYPLATY)rodzaj_wyplaty,,A,17,1
##61,0,P,,"na rachunek 2",,,,,,POLE:$$(RODZAJ-FORMA-WYPLATY)rodzaj_wyplaty,,A,17,2
##75,0,P,,"w got|owce",,,,,,POLE:$$(RODZAJ-FORMA-WYPLATY)rodzaj_wyplaty,,A,17,0
##63,0,P,,,,,,,,POLE:$$(RODZAJ-FORMA-WYPLATY)kwotaprzel,xkwota:X
##62,0,P,,,,,,,,POLE:$$(RODZAJ-FORMA-WYPLATY)dataprzel
##64,0,P,,,,,,,,POLE:$$(RODZAJ-FORMA-WYPLATY)kwotaprzel2,xkwota:X
##65,0,P,,,,,,,,POLE:$$(RODZAJ-FORMA-WYPLATY)dataprzel2
##76,0,P,,,,,,,,POLE:$$(RODZAJ-FORMA-WYPLATY)kwotagotowka,xkwota:X
##203,DZ,ACPH,,"Spos|ob wyp|laty"
% WYPLATY-FORMA-WYPLATY-DLG.XXX
             #203
 #2       #		
              #60                 #  #63       #  Dnia:  #62    #
              #61                 #  #64       #  Dnia : #65    #
 #1       #   #75                 #  #76       # 
                                                                   #203<
% WYPLATY-FORMA-WYPLATY-DLG.XXY
 #203
      
   #60                 #         #63       #      Dnia:  #62    #
   #61                 #         #64       #      Dnia : #65    #
   #75                 #         #76       # 
                                                                   #203<
// ---------------------------  
// -------------------------
// slowniki
// -------------------------
% 47.DIC # charakter zatrudnienia
"Etat",0,,""
"Dora|xne",1,,""

% 48.DIC # rodzaje kwot do PIT-ow
"B",1,,"Przych|od"
"U",2,,"Kwota sk|ladek na ubezpieczenie spo|leczne"
"R",3,,"Doch|od b|ed|acy r|o|znic|a przychodu i kosztu uzyskania przychodu"
"D",4,,"Doch|od po odj|eciu sk|ladki na ubezpieczenia spo|leczne"
"Z",5,,"Zaliczka odprowadzana na ubezpieczenia zdrowotne"
"Z775",14,,"Zaliczka 7.75 % na ubezpieczenie zdrowotne"
"K",6,,"Koszt uzyskania przychodu"
"O",7,,"Doch|od do opodatkowania"
"P",8,,"Zaliczka podatku"
"N",9,,"Doch|od netto"
"S",10,,"Zasi|lki (rodzinny,piel|egnacyjny)"
"L",11,,"Liczba os|ob"
"PZ",12,,"Nadp|lata podatku za poprzedni rok z PIT-40"
"PN",13,,"Niedop|lata podatku za poprzedni rok z PIT-40"

% 110.DIC # kod choroby
"A",0,,"Niezdolno|s|c do pracy po przerwie<60 dni (ta sama choroba)."
"B",1,,"Niezdolno|s|c do pracy - przypadaj|aca w czasie ci|a|zy."
"C",2,,"Niezdolno|s|c do pracy - spowodowana nadu|zyciem alkoholu."
"D",3,,"Niezdolno|s|c do pracy - spowodowana gru|xlic|a."
"E",4,,"Niezdolno|s|c do pracy - spowodowana chorob|a (art.7 pkt2.)."

% 111.DIC # plec
"M",0,,"M|e|zczyzna"
"K",1,,"Kobieta"

% 112.DIC # kod do algorytmow wyliczenia placy zasadniczej
"0",0,,"Bez wp|lywu na wynagrodzenie zasadnicze"
"1",1,,"Liczy|c jak urlop bezp|latny"
"2",2,,"Liczy|c jak urlop wypoczynkowy"
"3",3,,"Ekwiwalent za urlop"
"4",4,,"Zwolnienie lekarskie 80%"
"5",5,,"Zwolnienie lekarskie 100%"
"6",6,,"Zwolnienie lekarskie 70%"
"7",7,,"Zwolnienie lekarskie 75%"
"8",8,,"Zwolnienie lekarskie 90%"
% 41.DIC # rodzaj p|lacy
"UZ",1,,"- Umowa zlecenie  "
"UD",2,,"- Umowa o dzie|lo "
"UA",3,,"- Umowa agencyjna "
"I",10,,"- Inne"

% 42.DIC # kod dokumentu tozsamosci
"1",0,,"- Dow|od osobisty"
"2",1,,"- Paszport"

% 45.DIC # miesiac czy godzina
"Miesi|ac",0
"Dzie|n",1
"Godzin|e",2

% 46.DIC # rodzaj PIT-u
"PIT11",0
"PIT8b",1
"PIT4",2
"PIT40",3
"PIT8a",4

% 114.DIC # rodzaj zatrudnienia
"CZAS NIE OKRE|SLONY",0
"CZAS OKRE|SLONY",1
"OKRES PR|OBNY",2
"CZAS WYKONYWANIA OKRE|SLONEJ PRACY",3
"INNE",4

% 115.DIC # rodzaj zatrudnienia
"01R",0,,"DOLNO|SL|ASKA RKCH"
"02R",1,,"KUJAWSKO-POMORSKA RKCH"
"03R",2,,"LUBELSKA RKCH"
"04R",3,,"LUBUSKA RKCH"
"05R",4,,"|L|ODZKA RKCH"
"06R",5,,"MA|LOPOLSKA RKCH"
"07R",6,,"MAZOWIECKA RKCH"
"08R",7,,"OPOLSKA RKCH"
"09R",8,,"PODKARPACKA RKCH"
"10R",9,,"PODLASKA RKCH"
"11R",10,,"POMORSKA RKCH"
"12R",11,,"|SL|ASKA RKCH"
"13R",12,,"|SWI|ETOKRZYSKA RKCH"
"14R",13,,"WARMI|NSKO-MAZURSKA RKCH"
"15R",14,,"WIELKOPOLSKA RKCH"
"16R",15,,"ZACHODNIPOMORSKA RKCH"
"17B",16,,"BKCH S|LU|ZB MUNDUROWYCH"

% 116.DIC # rodzaje kwot do GUS
"B",1,,"Wynagrodzenia brutto og|o|lem"
"Z",2,,"Wyp|laty: z zysku, nadwy|zki bilansowej oraz roczne"
"U",3,,"Sk|ladki na ubezp.: emeryt,rent. i chorob.-ubezpieczony"
"P",4,,"Podatek dochodowy od os|ob fizycznych"

% 117.DIC # Zasilek wychowawczy
" ",0,,"Brak zasi|lku wychowawczego"
"1",1,,"Zasi|lek wychowawczy w rodzinie pe|lnej"
"2",2,,"Zasi|lek wychowawczy dla rodzica samotnie wychowuj|acego"

% 118.DIC # Dokumenty zgloszeniowe
" ",0,,"Nie wystawia|c dokumentu zg|loszeniowego"
"ZUS ZUA",1,,"Pracownik zostanie zg|loszony do ZUS dokumentem - ZUS ZUA"
"ZUS ZZA",2,,"Pracownik zostanie zg|loszony do ZUS dokumentem - ZUS ZZA"

% 119.DIC # rodzaj platnosci umowy zlecenia
"Jedn",0,,"Umowa jednorazowa"
"Mies",1,,"Umowa miesi|eczna"
"Inne",2,,"P|latno|s|c inaczej"

% 120.dic #typ skladnika - chodzi o rodzaj zwolnienia lekarskiego
"0",0,,"Nie zwi|azany ze zwolnieniem lekarskim"
"1",1,,"Zwolnienie lekarskie 100%"
"2",2,,"Zwolnienie lekarskie 80%"
"3",3,,"Zwolnienie lekarskie 70%"
"4",4,,"Zwolnienie lekarskie 75%"
"5",5,,"Zwolnienie lekarskie 90%"
//---------------------------------------

% WYLICZ-ROK-MIE-DZIE.ALG
  datawylicz := ''
  lata       := 0
  miesiace   := 0
  dni        := 0
// okalert["dataod="+dataod+"$datado="+datado]
  datap := dataod - 1
  dataodr := studatas[dataod]
  dataodp :=  studatas[datap]
  rokp := stringnaliczbe[strcut[dataodp,0,4]]
  datador :=  studatas[datado]
  rokk := stringnaliczbe[strcut[datador,0,4]]
//okalert["dataodr="+dataodr+"$datador="+datador]
//sprawdz czy obejmuje wiecej niz rok
datax := c_date[a_date[datado,"Y"],a_date[datap,"M"],a_date[datap,"D"]]
if(dataod= c_date[a_date[dataod,"Y"],3,1]) datax := c_date[a_date[datado,"Y"],3,1]-1
if(a_date[dataod,"Y"]=a_date[datado,"Y"]) datax := datap
if(a_date[dataod,"Y"]=a_date[datado,"Y"]) goto licz_miesiace
//datax := c_date[a_date[datado,"Y"],a_date[datap,"M"],a_date[datap,"D"]]
//okalert["xxxdatax="+datax+"$datado="+datado]
if(datax<= datado) lata := rokk-rokp
if(datax=datado) Exitalg[0]
if(datax<datado) goto licz_miesiace
if(datax>datado) lata := rokk-rokp-1
if(a_date[datado,"Y"]=0) datax := c_date[99,a_date[datax,"M"],a_date[datax,"D"]] 
if(not(a_date[datado,"Y"]=0)) datax := c_date[a_date[datado,"Y"]-1,a_date[datax,"M"],a_date[datax,"D"]]
if(not(a_date[datado,"Y"]=0) and dataod= c_date[a_date[dataod,"Y"],3,1]) datax := c_date[a_date[datado,"Y"]-1,3,1]-1
licz_miesiace:
callalg["WYLICZ-ROK-MIE-DZIE-x"]

% WYLICZ-ROK-MIE-DZIE-x.ALG
  datawylicz := ''
  dzien0txt  := StrCut[ToStr["#dataod#S"],6,2]
  dzien0     := StringNaLiczbe[dzien0txt]
//okalert["dzien0="+dzien0]
  datawylicz := datax
petla:
  dni        := dni+1
  datawylicz := datawylicz+1
//okalert["datawylicz="+datawylicz]
  CallAlg["WYLICZ-WERSJA-0"]
//okalert["miesiace="+miesiace+"$dni="+dni]
  if(datawylicz>=datado) ExitAlg[0]
  goto petla
  
% WYLICZ-WERSJA-0.ALG
//okalert["datax="+datax+"$datawylicz="+datawylicz +"$dni="+dni]
  if(datax+1=datawylicz) ExitAlg[0]
  dzien1txt := StrCut[ToStr["#datawylicz#S"],6,2]
  mies1 := stringnaliczbe[StrCut[ToStr["#datawylicz#S"],3,2]]
  mies1przed := stringnaliczbe[StrCut[ToStr["#datawylicz-1#S"],3,2]]
  mies1po := stringnaliczbe[StrCut[ToStr["#datawylicz+1#S"],3,2]]
  dzien1    := StringNaLiczbe[dzien1txt]
if(dzien0>28 and mies1>mies1przed) goto inne_miesiace
//okalert["dzien1="+dzien1]
  if(dzien0=dzien1) miesiace := miesiace+1
  if(dzien0=dzien1) dni      := 1
  if(dzien0=dzien1) goto lata
  if(datawylicz=datado and mies1po>mies1 and dzien1=dni) miesiace := miesiace+1
  if(datawylicz=datado and mies1po>mies1 and dzien1=dni) dni := 0
  if(datawylicz=datado and dzien1+1=dzien0) miesiace := miesiace+1
  if(datawylicz=datado and dzien1+1=dzien0) dni := 0
  goto lata
  inne_miesiace:
 if(stringnaliczbe[StrCut[ToStr["#datawylicz-1#S"],6,2]]>=dzien0) goto lata
 miesiace := miesiace+1
 dni := 1
// okalert["datawylicz ="+datawylicz]
 lata:
  if(miesiace=12)   lata     := lata+1
  if(miesiace=12)   miesiace := 0
//  if(miesiace=12)   okalert["miesiace datwylicz ="+datawylicz]
  
  
% ZAMIANA-DATY-NA-DZIEN-MIESIAC-ROK.ALG
// zmienna wejsciowa: data_konw
// zmienna wyjsciowa: d_txt  -->  dzien.miesiac.rok(pelny)
  d_txt := ToStr["#data_konw#S"]
  if(StrCut[d_txt,0,1]="0") rok_txt := "20"
  if(StrCut[d_txt,0,1]>"0") rok_txt := "19"
  if(d_txt="") rok_txt := ""
  datastr1 := StrCut[d_txt,6,2]+"-"+StrCut[d_txt,3,2]+"-"+rok_txt+StrCut[d_txt,0,2]      

// ----------------------------------
% KADRY-REJESTRY-MENU-ROZWIJANE
P = 3,,ADS
%< KADRY-REJESTRY-MENU-ROZWIJANE-OPERACJE
%< KADRY-REJESTRY-MENU-ROZWIJANE-SZUKAJ
% KADRY-REJESTRY-MENU-ROZWIJANE-OPERACJE
*90,"Operacje"
5,@18
20,@20
4,@19
% KADRY-REJESTRY-MENU-ROZWIJANE-SZUKAJ
*91,"Szukaj"
8,@8
9,@9
10,@10
*21,@7
% KADRY-REJESTRY-MENU-0.XXX
PRZYCISK_CANCELID = 3
##1,,ADP,,@17
##3,,ADP,,@4
##7,0,AC,,,,&&black/lwhite,&&white/lblue
                                                  
 #1      #  #3       #   #99                              # #7        #
     
     
          
% KADRY-REJESTRY-MENU-1.XXX
PRZYCISK_CANCELID = 0
##0,,ADP,,@5
##7,0,AC,,,,&&black/lwhite,&&white/lblue
					    
 #0      #               #99                              # #7        #
     
  
     
% KADRY-REJESTRY-MENUx-1.XXX
PRZYCISK_CANCELID = 0
##0,,ADP,,@5
##7,0,AC,,,,&&black/lwhite,&&white/lblue
					    
 #0      #               #99                              # 
     
  
     
// ---------------------------------------
// rejestry symbolow
// ---------------------------------------
% REJESTR-SYMBOLE-DALEJ.XXX
#
#
"Powt|orzony kod !" 
"Zmieniasz dane ?"
"Dodajesz nowy kod ?" 
"Usun|a|c ten kod z rejestru ?" 
"Chcesz doda|c jeszcze jeden kod ?" 
"%s - nie ma takiego kodu w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnego kodu w rejestrze !"
"Rejestr kod|ow pusty - wstawiasz pierwszy ?"
"Nie ma kodu o takim symbolu.$Znale|x|c nast|epny ?"
"%s - brak kodu o takim symbolu !"

% TABLICA-AKCJI-REJESTRSYMBOLE.XXX
"AKCJA-PRZED-WYSWIETLENIEM-$$(SYMBOL_D)-REKORD-0.DLG",SYMBOLEREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-$$(SYMBOL_D)-REKORD-1.DLG",SYMBOLEREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-$$(SYMBOL_D)-REKORD-2.DLG",SYMBOLEREKORD-DODAJLOOK
"AKCJA-PRZED-WYSWIETLENIEM-$$(SYMBOL_D)-REKORD-3.DLG",SYMBOLEREKORD-DODAJSTART1
"AKCJA-BUTTON1-$$(SYMBOL_D)-REKORD-?.DLG",SYMBOLEREKORD-AKCEPTUJESZ
"AKCJA-BUTTON20-$$(SYMBOL_D)-MENU-?.DLG",SYMBOLEMENU-USUN
"AKCJA-BUTTON21-$$(SYMBOL_D)-MENU-?.DLG",SYMBOLEMENU-DRUKUJ
"AKCJA-PRZED-WYSWIETLENIEM-$$(SYMBOL_D)-MENU-?.DLG",SYMBOLEMENU-PRZED

% SYMBOLEREKORD-ZMIENNE.XXX
  symbol_pole_rej := ""
  symbol_pole_brak := ""  
  symbol_menu := ""
  symbol_tytul := ""      
  symbol_key_field := 1
  
  symbol_jest_modif := ""
  symbol_jest_modif1 := ""
  symbol_modif_glowny_rej := ""
  symbol_usun_glowny_rej := ""
  CallSl["PLACE_G->daj_dane()"]

% SYMBOLEREKORD-AKCEPTUJESZ.ALG   
%< SYMBOLEREKORD-ZMIENNE.XXX
  if(not pustepole[symbol_pole_rej]) goto dalej1
    OkAlert[symbol_pole_brak]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
  dalej1:
if(symbol_menu=="RODZSKLMENU") rejwstawp_s["klucz",fillstring[11-strlen[rejwezp_s["rodzskl"]],"0"]+rejwezp_s["rodzskl"]]
  ExDialogOp["KoniecWykonywania",""]

% SYMBOLEREKORD-DODAJSTART.ALG
%< SYMBOLEREKORD-ZMIENNE.XXX
  CallSl["PLACE_G->start_symbol(1)"]
  
% SYMBOLEREKORD-DODAJSTART1.ALG
%< SYMBOLEREKORD-ZMIENNE.XXX
  CallSl["PLACE_G->start_symbol(2)"]
  
% SYMBOLEREKORD-DODAJMODIF.ALG
%< SYMBOLEREKORD-ZMIENNE.XXX
  CallSl["PLACE_G->start_symbol(3)"]
  
% SYMBOLEMENU-USUN.ALG
%< SYMBOLEREKORD-ZMIENNE.XXX
  CallSl["PLACE_G->usun_symbole"]

% SYMBOLEREKORD-DODAJLOOK.ALG
  ExDialogOp["PozycjaNiewprowadzana","*"]
  
% SYMBOLEMENU-PRZED.ALG
%< SYMBOLEREKORD-ZMIENNE.XXX
  ExDialogOp["ZmienNaglowek",symbol_tytul]
  ExDialogOp["UstawMenuParam","100:" +symbol_menu+",,KLUCZ,1"]
if(symbol_menu=="RODZSKLMENU")   ExDialogOp["UstawMenuParam","100:" +symbol_menu+",,KLUCZ,3"]
% SYMBOLEMENU-DRUKUJ.ALG  
%< SYMBOLEREKORD-ZMIENNE.XXX
  CallSl["PLACE_G->drukuj_symbole()"]
  
% SYMBOLE-MENU-1.DLG
##99,0,P,,,,,,,,MENU_ROZWIJANE:KADRY-REJESTRY-MENU-ROZWIJANE
%< KADRY-REJESTRY-MENU-1.XXX
%< SYMBOLE-MENU-X.XXX
//
% SYMBOLE-MENUx-1.DLG
##99,0,P,,,,,,,,MENU_ROZWIJANE:KADRY-REJESTRY-MENU-ROZWIJANE
%< KADRY-REJESTRY-MENUx-1.XXX
%< SYMBOLE-MENU-X.XXX
//
% SYMBOLE-MENU-0.DLG
##99,0,P,,,,,,,,MENU_ROZWIJANE:KADRY-REJESTRY-MENU-ROZWIJANE
%< KADRY-REJESTRY-MENU-0.XXX
%< SYMBOLE-MENU-X.XXX
// 
% SYMBOLE-MENU-X.XXX
##DEFWINDOW = ,,,,ADPSH
##100,0,BCMP,,,,,,,,MENU_NA_REKORDY
#100                                                                   #100
// --------
// REKORD
// --------
% SYMBOLE.XXX
##DEFWINDOW = ,,,,ADPHS,,,,,"Nowy symbol"
##200,DZ,ACPH,,"Wprowad|x symbol"
##10,0,AC,,,,&&black/lwhite,&&white/lblue,,,POLEUNIKALNE


 #10                           #


% SYMBOLE-REKORD-1.DLG,SYMBOLE-REKORD-0.DLG,SYMBOLE-REKORD-3.DLG
%<SYMBOLE.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% SYMBOLE-REKORD-2.DLG
%<SYMBOLE.XXX
%<REKORD-OK-BUTT.XXX
//
% PLACE-WOLAJ-HTML.ALG
platforma := .N.
DyskOp["WezSystemX","",""]
if(D_STRING = "X-") platforma := .T.
program := ""
CallAlgFile["$$(FINN-LIB)\wspolne\podrecznik.perseus","USTAL-DANE-DO-HTML"]
if(not(platforma) and program="") program := "c:\progra~1\intern~1\iexplore"
if (platforma) goto dalej_1
dyskop["pelnanazwa",nazwa_sprawozdania,""]
l_system := program + " " + D_STRING
WolajSystem[l_system,.N.]
ExitAlg[0]
dalej_1:
l_system := "../binary/www_pity  c:\\progra~1\\intern~1\\iexplore "+nazwa_sprawozdania
WolajSystem[l_system,.N.]
ExitAlg[0]

% PLACE-ZROB-FORMULARZ.ALG
// wdrukowywanie danych do gotowego formularza. Przed wywo?aniem alga nalezy
// zdefiniowac zmienne:
// katalog_wz - rok rozpoczynajacy rok obrotowy (RRRR)
// nazwa_sprawozdania - KONIECZNIE malymi literami; 
//      plik z danymi do formularza musi miec nazwe= <nazwa_sprawozdania>_run
//      formularz w katalogu druki/<katalog_wz> musi miec nazwe <nazwa_sprawozdania>wzor.htm
//      z tych plikow tworzony jest plik <nazwa_sprawozdana>.html i wyswietlany w
//      przegladarce
// TT_PLIK_WYNIK : // plik z wynikowym formularzem
platforma := .N.
DyskOp["WezSystemX","",""]
if(D_STRING = "X-") platforma := .T.
DyskOp["OdczytajBiezacy","",""]
katalog := D_string
sciezka := WezZmiennaSrod["P*q2"]
TE_PLIK_WYNIK := sciezka+"/"+nazwa_sprawozdania+".html"
if(platforma) goto inne_linie1 
linia1 := "sed -f "+sciezka+"\"+nazwa_sprawozdania+"_run ""$$(FINN-LIB)\..\druki\"+katalog_wz+"\"+nazwa_sprawozdania+"wzor.htm"" > "+TE_PLIK_WYNIK
goto wspolne1
inne_linie1:
linia1 := "sed -f "+sciezka+"/"+nazwa_sprawozdania+"_run ""$$(FINN-LIB)/../druki/"+katalog_wz+"/"+nazwa_sprawozdania+"wzor.htm"" > "+TE_PLIK_WYNIK
wspolne1:
WolajSystem[linia1,.N.]    
// -----------------------------
// uzupelnianie rejestru  danych do wyliczania zasilkow
% uzupelnij_rekordy_chor1.alg
defzmiennaS["symbol_chor",""]
miesiace_s := ""
callalg["odczytaj_miesiace"]
//okalert["miesiace_s="+miesiace_s]
rejop["pod:otworzrej1","podatnik.rxr"]
if(not(rejop["pod:wezpierwszyrek",""])) goto koniec
if(symbol_chor = "") goto petla_pod
if(not(rejop["pod:znajdzrek",symbol_chor])) goto koniec
petla_pod:
//if(not(rejwezp_l["pod:czyzatrud"])) goto nastepny_pod
n := 0
petla_n:
rejop["chor1:dodajtemprek",""]
xrejwstawp_s["chor1:sym",rejwezp_s["pod:sym"]]
xrejwstawp_s["chor1:imie",rejwezp_s["pod:imie1"]]
xrejwstawp_s["chor1:nazwisko",rejwezp_s["pod:nazwisko"]]
xokres := strcut[miesiace_s,n*9+2,5]
xrejwstawp_s["chor1:rokmie",xokres]
rejop["chor1:zapiszrek",""]
n := n+1
if(n<25) goto petla_n
nastepny_pod:
if(not(symbol_chor="")) goto koniec
if(rejop["pod:weznastepnyrek",""]) goto petla_pod
koniec:
rejop["pod:zamknijrej",""]

% odczytaj_miesiace.alg
// odczytanie miesiecy z biezacego i poprzedniego roku
finnop["openmainx",""]
//okalert["poczrok_ksieg="+poczrok_ksieg]
data :=  poczrok_ksieg
n := 1
mies_k := A_date[poczrok_ksieg,"M"]
petla_m:
data1 := Tostr["#c_date[a_date[data,""Y""]-1,A_date[data,""M""],1]#S"]
data2 := ToStr["#data#S"]
data3 := Tostr["#c_date[a_date[data,""Y""]-2,A_date[data,""M""],1]#S"]
miesiace_s := miesiace_s+"--"+strcut[ data1,0,5]+"----"+ strcut[ data2,0,5]+"--"
if(n=12) miesiace_s := miesiace_s+"--"+strcut[ data3,0,5]+"--"
n := n+1
if(n>12) goto koniec
mies_k := mies_k+1
if(mies_k>12) mies_k := mies_k - 1
data := Zrokiem[C_date[255,mies_k,1]]
goto petla_m
koniec:
finnop["close",""]
Exitalg[0]
//
% tworz_wspolne_sum.alg
// z ksiegi biezacego roku
rejop["summ:otworzrej","sumynart.rxr"]
if(not(rejop["summ:wezpierwszyrek",""])) goto stary_rok
petla_nowy:
rejop["sumx:dodajrek",""]
rejop["summ:przeniespola","sumx:"]
rejop["sumx:zapiszrek",""]
if(rejop["summ:weznastepnyrek",""]) goto petla_nowy
stary_rok:
rejop["summ:zamknijrej",""]
if(ch_ksieg="") Exitalg[0]
if(not(Finnop["openmain",ch_ksieg])) exitalg[0]
rejop["summ:otworzrej","sumynart.rxr"]
if(not(rejop["summ:wezpierwszyrek",""])) goto end
petla_stary:
rejop["sumx:dodajrek",""]
rejop["summ:przeniespola","sumx:"]
rejop["sumx:zapiszrek",""]
if(rejop["summ:weznastepnyrek",""]) goto petla_stary
end:
rejop["summ:zamknijrej",""]
finnop["close",""]
//
% dodaj_chor1.alg
// dane wejsciowe reje(z plarch), rejsk(plsklad.rxr), rejc(podatnik.rxr),rej_chor(plchor1), znak(dodawanie czy odejmowanie, liczba),rej_sum (sumynart.rxr), rej_chor2 (plchor2
// sprawdzenie jakiego rodzaju skladnik
defzmiennaS["grupa","T"]
xskladnik := rejwezp_s[reje+"skladnik"]
if(not(rejop[rejsk+"znajdzrek",xskladnik])) exitalg[0]
if(grupa="T" and not(rejwezp_l[rejsk+"chorobowe"])) exitalg[0]
xpracownik := rejwezp_s[reje+"pracownik"]
rejop[rejc+"znajdzrek",xpracownik]
if(tura_chor1=2 and not(pustepole[rejc+"sym_prac"])) xpracownik := rejwezp_s[rejc+"sym_prac"]
if(xpracownik ="" or not(rejwezp_l[rejc+"czyzatrud"])) exitalg[0]
//okalert["xpracownik="+xpracownik+"$xskladnik="+xskladnik+"$lista="+rejwezp_k[reje+"nrlisty"]]
pocz_zat := ''
kon_zat := ''
if(tura_chor1=2) goto omin_daty
pocz_zat := rejwezp_d[rejc+"dzatrud"]
kon_zat := rejwezp_d[rejc+"dzwolnien"]
omin_daty:
if(tura_chor1=1) xokres := rejwezp_s[reje+"mieswypl"]
if(tura_chor1=2) xokres := Strcut[studatas[rejwezp_d[reje+"datawyplaty"]],2,5]
//if(tura=2) okalert["xpracownik="+xpracownik+"$xokres="+xokres]
//if(xpracownik=="002") OKALERT["KLUCZ="+xpracownik+"*"+strcut[studatas[stringnadate[xokres+".01"]],0,4]+strcut[xokres,3,2]+"$ustawienie="+rejwezp_k[rej_sum+"szukajklucz"]]
rejop[rej_sum+"znajdzrek",xpracownik+"*"+strcut[studatas[stringnadate[xokres+".01"]],0,4]+strcut[xokres,3,2]]
if(rejop[rej_chor+"znajdzrek",xpracownik+"*"+xokres]) goto dopisz_dane
rejop[rej_chor+"dodajtemprek",""]
xrejwstawp_s[rej_chor+"sym",xpracownik]
xrejwstawp_s[rej_chor+"imie",rejwezp_s[rejc+"imie1"]]
xrejwstawp_s[rej_chor+"nazwisko",rejwezp_s[rejc+"nazwisko"]]
xrejwstawp_s[rej_chor+"rokmie",xokres]
dopisz_dane:
zus := Roundn[rejwezp_k[reje+"ueu"]/10000 + rejwezp_k[reje+"uru"]/10000 + rejwezp_k[reje+"ucu"]/10000,2]
if(rejwezp_k[reje+"spodst_er"]=rejwezp_k[reje+"spodst_cw"]) goto omin_zus_prz
if(rejwezp_k[reje+"spodst_er"]=0 or rejwezp_k[reje+"spodst_er"]=.) goto omin_zus_prz
zus := Roundn[rejwezp_k[reje+"placab"]*(rejwezp_k[reje+"sueu"]+rejwezp_k[reje+"suru"]+rejwezp_k[reje+"sucu"])/rejwezp_k[reje+"spodst_cw"],2]
omin_zus_prz:
//
if(rejwezp_l[rejsk+"ponad_mies"]) goto wstaw_ponad_mies
//
if(rejwezp_s[rejsk+"rodzskl"]="11") goto wstaw_11
if(rejwezp_l[rejsk+"czystaly"] and rejwezp_l[rejsk+"uzupelniany"]) xrejwstawp_k[rej_chor+"ch_stalen",rejwezp_k[rej_chor+"ch_stalen"]+znakk*rejwezp_k[reje+"placabp"]]
if(rejwezp_l[rejsk+"czystaly"] and rejwezp_l[rejsk+"uzupelniany"]) xrejwstawp_k[rej_chor+"ch_stale",rejwezp_k[rej_chor+"ch_stale"]+znakk*rejwezp_k[reje+"placab"]]
if(rejwezp_l[rejsk+"czystaly"] and rejwezp_l[rejsk+"uzupelniany"]) xrejwstawp_k[rej_chor+"ch_stale_zus",rejwezp_k[rej_chor+"ch_stale_zus"]+znakk*zus]
if(not(rejwezp_l[rejsk+"czystaly"]) and rejwezp_l[rejsk+"uzupelniany"]) xrejwstawp_k[rej_chor+"ch_zm",rejwezp_k[rej_chor+"ch_zm"]+znakk*rejwezp_k[reje+"placab"]]
if(not(rejwezp_l[rejsk+"czystaly"]) and rejwezp_l[rejsk+"uzupelniany"]) xrejwstawp_k[rej_chor+"ch_zm_zus",rejwezp_k[rej_chor+"ch_zm_zus"]+znakk*zus]
if(rejwezp_l[rejsk+"uzupelniany"]) xrejwstawp_k[rej_chor+"ch_uzu",rejwezp_k[rej_chor+"ch_uzu"]+znakk*rejwezp_k[reje+"placab"] - znakk*zus]
if(not(rejwezp_l[rejsk+"uzupelniany"])) xrejwstawp_k[rej_chor+"ch_skl_nuzu",rejwezp_k[rej_chor+"ch_skl_nuzu"]+znakk*rejwezp_k[reje+"placab"]]
if(not(rejwezp_l[rejsk+"uzupelniany"])) xrejwstawp_k[rej_chor+"ch_skl_nuzu_zus",rejwezp_k[rej_chor+"ch_skl_nuzu_zus"]+znakk*zus]
if(not(rejwezp_l[rejsk+"uzupelniany"])) xrejwstawp_k[rej_chor+"ch_nuzu",rejwezp_k[rej_chor+"ch_nuzu"]+znakk*rejwezp_k[reje+"placab"]-znakk*zus]
goto wspolne_dane
wstaw_11:
if(rejwezp_l[rejsk+"czystaly"] and not(pustepole[reje+"wynpodst"])) xrejwstawp_k[rej_chor+"ch_stalen",rejwezp_k[rej_chor+"ch_stalen"]+znakk*rejwezp_k[reje+"wynpodst"]]
if(rejwezp_l[rejsk+"czystaly"] and pustepole[reje+"wynpodst"]) xrejwstawp_k[rej_chor+"ch_stalen",rejwezp_k[rej_chor+"ch_stalen"]+znakk*rejwezp_k[reje+"placabp"]]
if(rejwezp_l[rejsk+"czystaly"]) xrejwstawp_k[rej_chor+"ch_stale",rejwezp_k[rej_chor+"ch_stale"]+znakk*rejwezp_k[reje+"placab"]]
if(rejwezp_l[rejsk+"czystaly"]) xrejwstawp_k[rej_chor+"ch_stale_zus",rejwezp_k[rej_chor+"ch_stale_zus"]+znakk*zus]
if(not(rejwezp_l[rejsk+"czystaly"])) xrejwstawp_k[rej_chor+"ch_zm",rejwezp_k[rej_chor+"ch_zm"]+znakk*rejwezp_k[reje+"placab"]]
if(not(rejwezp_l[rejsk+"czystaly"])) xrejwstawp_k[rej_chor+"ch_zm_zus",rejwezp_k[rej_chor+"ch_zm_zus"]+znakk*zus]
xrejwstawp_k[rej_chor+"ch_uzu",rejwezp_k[rej_chor+"ch_uzu"]+znakk*rejwezp_k[reje+"placab"] - znakk*zus]
wspolne_dane:
xrejwstawp_k[rej_chor+"ch_ldnin",rejwezp_k[rej_sum+"s_dnirobu_all"]]
xrejwstawp_k[rej_chor+"ch_ldni",rejwezp_k[rej_sum+"s_dnirobu"]+rejwezp_k[rej_sum+"s_dnirobu_bww"]]
xrejwstawp_k[rej_chor+"ch_ldnik",rejwezp_k[rej_sum+"s_dnirobu_kal"]]
if(rejwezp_k[rej_chor+"ch_ldnin"]<rejwezp_k[rej_chor+"ch_ldnik"]) xrejwstawp_l[rej_chor+"ptaszek",.N.]
if(rejwezp_k[rej_chor+"ch_ldnin"]<rejwezp_k[rej_chor+"ch_ldnik"]) goto omin_ptaszek
if(rejwezp_k[rej_chor+"ch_ldnin"]-rejwezp_k[rej_chor+"ch_ldni"]<rejwezp_k[rej_chor+"ch_ldni"]) xrejwstawp_l[rej_chor+"ptaszek",.T.]
omin_ptaszek:
ch_skl_uzu := roundn[rejwezp_k[rej_chor+"ch_uzu"] * rejwezp_k[rej_chor+"ch_ldnin"] / rejwezp_k[rej_chor+"ch_ldni"],2]
// w przypadku gdy wynagrodzenie w miesiacu sklada sie tylko ze skladnikow stalych
if(rejwezp_k[rej_chor+"ch_zm"]= . or rejwezp_k[rej_chor+"ch_zm"]= 0) ch_skl_uzu := roundn[(rejwezp_k["chor:ch_stale"]-rejwezp_k["chor:ch_stale_zus"])*rejwezp_k["chor:ch_stalen"]/rejwezp_k["chor:ch_stale"],2]
if(0+rejwezp_k[rej_chor+"ch_zm"]= 0 and ch_skl_uzu +0 = 0) ch_skl_uzu := roundn[rejwezp_k[rej_chor+"ch_uzu"] * rejwezp_k[rej_chor+"ch_ldnin"] / rejwezp_k[rej_chor+"ch_ldni"],2]
//if(xpracownik=="P0009") okalert["pracownik="+xpracownik+"$skladnik="+xskladnik+"$zmienny="+rejwezp_k[rej_chor+"ch_zm"]+"$ch_skl_uzu="+ch_skl_uzu+"$ kwota="+rejwezp_k[reje+"placab"]+"$xokres="+xokres+"$ch_stale="+rejwezp_k["chor:ch_stale"]+"$ch_stalen="+rejwezp_k["chor:ch_stalen"]]
xrejwstawp_k[rej_chor+"ch_skl_uzu",ch_skl_uzu]
rejop[rej_chor+"zapiszrek",""]
exitalg[0]
wstaw_ponad_mies:
// rejestr skladnikow wyplacanych za okresy dluzsze niz miesiac
if(rejop[rej_chor2+"znajdzrek",xpracownik+"*"+xskladnik+"*"+xokres]) goto dopisz_dane2
rejop[rej_chor2+"dodajtemprek",""]
xrejwstawp_s[rej_chor2+"sym",xpracownik]
xrejwstawp_s[rej_chor2+"imie",rejwezp_s[rejc+"imie1"]]
xrejwstawp_s[rej_chor2+"nazwisko",rejwezp_s[rejc+"nazwisko"]]
xrejwstawp_s[rej_chor2+"rokmie",xokres]
xrejwstawp_s[rej_chor2+"skladnik",xskladnik]
xrejwstawp_k[rej_chor2+"proczna_m",1]
dopisz_dane2:
kwota_uzu := .
kwotab := rejwezp_k[reje+"placab_uzu"]
if(kwotab= .) kwotab := rejwezp_k[reje+"placab"] 
zus_uzu := RoundN[zus*kwotab/rejwezp_k[reje+"placab"],2]
pocz_u := stringnadate[strcut[rejwezp_s[reje+"mies_uzu"],0,8]]
kon_u := stringnadate[strcut[rejwezp_s[reje+"mies_uzu"],9,6]+"01"]
if(pocz_u='') pocz_u := rejwezp_d[reje+"dataod5"]
if(kon_u='') kon_u := rejwezp_d[reje+"datado5"]
if(pocz_u='') pocz_u := stringnadate[xokres+".01"]
if(kon_u='') kon_u := stringnadate[xokres+".01"]
// tu sprawdzenie czy dzien pocz_u jest piewszym dniem roboczym w miesiacu
pocz_data := pocz_u
if(callalg["sprawdz_czy_poczatek_mies"]=1) goto omin_koniec
d_data := pocz_u
  CallSl["PLACE_G->daj_koniec_mies()"]
pocz_u := d_data+1
omin_koniec:
//kon_u := stringnadate[strcut[rejwezp_s[reje+"mies_uzu"],9,8]]
wymiar := strcut[rejwezp_s[reje+"mies_uzu"],19,strlen[rejwezp_s[reje+"mies_uzu"]]]
if(wymiar="") wymiar := "1/1"
czy_zmiana := stringnalog[strcut[rejwezp_s[reje+"mies_uzu"],17,1]]
dnipracyu_all_uzu := .
dnipracyu_uzu := .
rejop[rej_sum+"znajdzrek",xpracownik+"*"+strcut[studatas[pocz_u],0,4]+strcut[studatas[pocz_u],5,2]]
//okalert["pracownik="+rejwezp_s[rej_sum+"pracownik"]+"$miesiac="+rejwezp_s[rej_sum+"mies_wypl"]]
n := 0
petla_uzu:
if(not(rejwezp_s[rej_sum+"pracownik"]==xpracownik)) goto po_petli_uzu
if(strcut[rejwezp_s[rej_sum+"mies_wypl"],4,2]="13") goto nastepny_uzu
//okalert["pracownik="+rejwezp_s[rej_sum+"pracownik"]+"pocz_u="+pocz_u+"$kon_u="+kon_u+"$data="+stringnadate[strcut[rejwezp_s[rej_sum+"mies_wypl"],2,2]+"."+strcut[rejwezp_s[rej_sum+"mies_wypl"],4,2]+".01"]]
if(stringnadate[strcut[rejwezp_s[rej_sum+"mies_wypl"],2,2]+"."+strcut[rejwezp_s[rej_sum+"mies_wypl"],4,2]+".01"]>kon_u) goto po_petli_uzu
//okalert["pracownik="+rejwezp_s[rej_sum+"pracownik"]+"$n="+n]
if(rejwezp_k[rej_sum+"s_dnirobu_all"]=rejwezp_k[rej_sum+"s_dnirobu_kal"]) n := n+1
dnipracyu_all_uzu := dnipracyu_all_uzu+rejwezp_k[rej_sum+"s_dnirobu_all"]
dnipracyu_uzu := dnipracyu_uzu+rejwezp_k[rej_sum+"s_dnirobu"]+rejwezp_k[rej_sum+"s_dnirobu_bww"]
//okalert["data="+rejwezp_s[rej_sum+"mies_wypl"]+"$dni="+rejwezp_k[rej_sum+"s_dnirobu"]]
nastepny_uzu:
if(rejop[rej_sum+"weznastepnyrek",""]) goto petla_uzu
 po_petli_uzu:
if(not(n=0)) goto po_n
n := A_date[kon_u,"M"]-A_date[pocz_u,"M"]+1
if(A_date[kon_u,"M"]<A_date[pocz_u,"M"]) n := A_date[kon_u,"M"]-A_date[pocz_u,"M"]+13
dnipracyu_all_uzu := 1
dnipracyu_uzu := 1
po_n: 
if(rejwezp_l[rejsk+"uzupelniany"]) goto wstaw_uzu
xrejwstawp_k[rej_chor2+"ch_skl_nuzu",rejwezp_k[rej_chor2+"ch_skl_nuzu"]+znakk*kwotab]
xrejwstawp_k[rej_chor2+"ch_skl_nuzu_zus",rejwezp_k[rej_chor2+"ch_skl_nuzu_zus"]+znakk*zus_uzu]
kwota_uzu := kwotab-zus_uzu
xrejwstawp_k[rej_chor2+"ch_nuzu",rejwezp_k[rej_chor2+"ch_nuzu"]+znakk*kwota_uzu]
//if(xpracownik=="019") okalert["skladniki="+rejwezp_k[rej_chor2+"ch_skl_nuzu"]+"$zus="+rejwezp_k[rej_chor2+"ch_skl_nuzu_zus"]+"$pozostaje="+rejwezp_k[rej_chor2+"ch_nuzu"]]
goto zapisz_rek2
wstaw_uzu:
xrejwstawp_k[rej_chor2+"ch_stale",rejwezp_k[rej_chor2+"ch_stale"]+znakk*kwotab]
xrejwstawp_k[rej_chor2+"ch_stale_zus",rejwezp_k[rej_chor2+"ch_stale_zus"]+znakk*zus_uzu]
kwota_uzu := kwotab-zus_uzu
xrejwstawp_k[rej_chor2+"ch_uzu",rejwezp_k[rej_chor2+"ch_uzu"]+znakk*kwota_uzu]
if(pustepole[rej_chor2+"ch_ldnin"]) xrejwstawp_k[rej_chor2+"ch_ldnin",dnipracyu_all_uzu]
if(pustepole[rej_chor2+"ch_ldni"]) xrejwstawp_k[rej_chor2+"ch_ldni",dnipracyu_uzu]
 kwota_uzu := Roundn[kwota_uzu*dnipracyu_all_uzu/dnipracyu_uzu,2]
xrejwstawp_k[rej_chor2+"ch_skl_uzu",rejwezp_k[rej_chor2+"ch_skl_uzu"]+znakk*kwota_uzu]
zapisz_rek2:
xrejwstawp_d[rej_chor2+"dataod",pocz_u]
xrejwstawp_d[rej_chor2+"datado",kon_u]
xrejwstawp_s[rej_chor2+"wymiar",wymiar]
xrejwstawp_s[rej_chor2+"lista",rejwezp_s[reje+"lista"]]
xrejwstawp_k[rej_chor2+"kwart_m",n]
xrejwstawp_l[rej_chor2+"zm_wym",czy_zmiana]
xrejwstawp_k[rej_chor2+"inna",rejwezp_k[reje+"nrlisty"]]
rejop[rej_chor2+"zapiszrek",""]
//
% dodaj_chor2.alg
// dane wejsciowe reje(z plarch), rejsk(plsklad.rxr), rejc(podatnik.rxr),rej_chor(plchor1), znak(dodawanie czy odejmowanie, liczba),
//xpracownik
// sprawdzenie jakiego rodzaju skladnik
xmskladnik := rejwezp_s[reje+"zskladnik"]
if(not(rejop[rejsk+"znajdzrek",xmskladnik])) exitalg[0]
if(not(rejwezp_l[rejsk+"chorobowe"])) exitalg[0]
if(xpracownik ="" or not(rejwezp_l[rejc+"czyzatrud"])) exitalg[0]
xokres := mieswypl
if(rejop[rej_chor+"znajdzrek",xpracownik+"*"+xokres]) goto dopisz_dane
rejop[rej_chor+"dodajtemprek",""]
xrejwstawp_s[rej_chor+"sym",xpracownik]
xrejwstawp_s[rej_chor+"imie",rejwezp_s[rejc+"imie1"]]
xrejwstawp_s[rej_chor+"nazwisko",rejwezp_s[rejc+"nazwisko"]]
xrejwstawp_s[rej_chor+"rokmie",xokres]
dopisz_dane:
zus := .
if(rejwezp_l[rejsk+"odjaczus"]) zus := zus+rejwezp_k[reje+"zbrutto"]*(xueu+xuru)/100 
if(rejwezp_l[rejsk+"odj_chorobowe"]) zus := zus+rejwezp_k[reje+"zbrutto"]*xucu/100 
//if(rejwezp_k[reje+"spodst_er"]=rejwezp_k[reje+"spodst_cw"]) goto omin_zus_prz
if(rejwezp_k[reje+"spodst_er"]=0 or rejwezp_k[reje+"spodst_er"]=.) goto omin_zus_prz
zus := Roundn[rejwezp_k[reje+"zbrutto"]*(rejwezp_k[reje+"sueu"]+rejwezp_k[reje+"suru"]+rejwezp_k[reje+"sucu"])/rejwezp_k[reje+"spodst_cw"],2]
omin_zus_prz:
if(rejwezp_s[rejsk+"rodzskl"]="11") goto wstaw_11
//if(rejwezp_l[rejsk+"czystaly"] and rejwezp_l[rejsk+"uzupelniany"]) xrejwstawp_k[rej_chor+"ch_stalen",rejwezp_k[rej_chor+"ch_stalen"]+znakk*rejwezp_k[reje+"zbrutton"]]
//if(rejwezp_l[rejsk+"uzupelniany"] and rejwezp_l[rejsk+"czystaly"]) okalert["xskladnik="+xskladnik+"ch_skl_uzu="+rejwezp_k[reje+"zbrutto"]+"   -   "+zus]
if(rejwezp_l[rejsk+"czystaly"] and rejwezp_l[rejsk+"uzupelniany"]) xrejwstawp_k[rej_chor+"ch_stalen",rejwezp_k[rej_chor+"ch_stalen"]+znakk*rejwezp_k[reje+"placabp"]]
if(rejwezp_l[rejsk+"czystaly"] and rejwezp_l[rejsk+"uzupelniany"]) xrejwstawp_k[rej_chor+"ch_stale",rejwezp_k[rej_chor+"ch_stale"]+znakk*rejwezp_k[reje+"zbrutto"]]
if(rejwezp_l[rejsk+"czystaly"] and rejwezp_l[rejsk+"uzupelniany"]) xrejwstawp_k[rej_chor+"ch_stale_zus",rejwezp_k[rej_chor+"ch_stale_zus"]+znakk*zus]
if(not(rejwezp_l[rejsk+"czystaly"]) and rejwezp_l[rejsk+"uzupelniany"]) xrejwstawp_k[rej_chor+"ch_zm",rejwezp_k[rej_chor+"ch_zm"]+znakk*rejwezp_k[reje+"zbrutto"]]
if(not(rejwezp_l[rejsk+"czystaly"]) and rejwezp_l[rejsk+"uzupelniany"]) xrejwstawp_k[rej_chor+"ch_zm_zus",rejwezp_k[rej_chor+"ch_zm_zus"]+znakk*zus]
if(rejwezp_l[rejsk+"uzupelniany"]) xrejwstawp_k[rej_chor+"ch_uzu",rejwezp_k[rej_chor+"ch_uzu"]+znakk*rejwezp_k[reje+"zbrutto"] - znakk*zus]
//if(not(rejwezp_l[rejsk+"uzupelniany"])) okalert["xskladnik="+xskladnik+"ch_skl_nuzu="+rejwezp_k[reje+"zbrutto"]+"   -   "+zus]
if(not(rejwezp_l[rejsk+"uzupelniany"])) xrejwstawp_k[rej_chor+"ch_skl_nuzu",rejwezp_k[rej_chor+"ch_skl_nuzu"]+znakk*rejwezp_k[reje+"zbrutto"]]
if(not(rejwezp_l[rejsk+"uzupelniany"])) xrejwstawp_k[rej_chor+"ch_skl_nuzu_zus",rejwezp_k[rej_chor+"ch_skl_nuzu_zus"]+znakk*zus]
if(not(rejwezp_l[rejsk+"uzupelniany"])) xrejwstawp_k[rej_chor+"ch_nuzu",rejwezp_k[rej_chor+"ch_nuzu"]+znakk*rejwezp_k[reje+"zbrutto"]-znakk*zus]
goto wspolne_dane
wstaw_11:
if(rejwezp_l[rejsk+"czystaly"]) xrejwstawp_k[rej_chor+"ch_stalen",rejwezp_k[rej_chor+"ch_stalen"]+znakk*rejwezp_k[reje+"wynpodst"]]
if(rejwezp_l[rejsk+"czystaly"]) xrejwstawp_k[rej_chor+"ch_stale",rejwezp_k[rej_chor+"ch_stale"]+znakk*rejwezp_k[reje+"zbrutto"]]
if(rejwezp_l[rejsk+"czystaly"]) xrejwstawp_k[rej_chor+"ch_stale_zus",rejwezp_k[rej_chor+"ch_stale_zus"]+znakk*zus]
if(not(rejwezp_l[rejsk+"czystaly"])) xrejwstawp_k[rej_chor+"ch_zm",rejwezp_k[rej_chor+"ch_zm"]+znakk*rejwezp_k[reje+"zbrutto"]]
if(not(rejwezp_l[rejsk+"czystaly"])) xrejwstawp_k[rej_chor+"ch_zm_zus",rejwezp_k[rej_chor+"ch_zm_zus"]+znakk*zus]
xrejwstawp_k[rej_chor+"ch_uzu",rejwezp_k[rej_chor+"ch_uzu"]+znakk*rejwezp_k[reje+"zbrutto"] - znakk*zus]
wspolne_dane:
xrejwstawp_k[rej_chor+"ch_ldnin",dnipracyu_all]
xrejwstawp_k[rej_chor+"ch_ldni",dnipracyu+dnipracyu_bww]
xrejwstawp_k[rej_chor+"ch_ldnik",dnipracyu_kal]
xrejwstawp_l[rej_chor+"ptaszek",.T.]
//okalert["ch_uzu="+rejwezp_k[rej_chor+"ch_uzu"]+"ch_ldnin="+rejwezp_k[rej_chor+"ch_ldnik"]+"/ch_ldni="+rejwezp_k[rej_chor+"ch_ldni"]]
ch_skl_uzu := roundn[rejwezp_k[rej_chor+"ch_uzu"] * rejwezp_k[rej_chor+"ch_ldnin"] / rejwezp_k[rej_chor+"ch_ldni"],2]
// w przypadku gdy wynagrodzenie w miesiacu sklada sie tylko ze skladnikow stalych
if(rejwezp_k[rej_chor+"ch_zm"]= . or rejwezp_k[rej_chor+"ch_zm"]= 0) ch_skl_uzu := roundn[(rejwezp_k[rej_chor+"ch_stale"]-rejwezp_k[rej_chor+"ch_stale_zus"])*rejwezp_k[rej_chor+"ch_stalen"]/rejwezp_k[rej_chor+"ch_stale"],2]
xrejwstawp_k[rej_chor+"ch_skl_uzu",ch_skl_uzu]
rejop[rej_chor+"zapiszrek",""]
exitalg[0]
//
% sprawdz_czy_poczatek_mies.alg
// tu sprawdzenie czy dzien jest pierwszym dniem roboczym miesiaca dla danego pracownika
// dane wejsciowe : pracownik (xpracownik)oraz sprawdzana data(pocz_data)
czy_roboczy := .N.
dataod := pocz_data - A_date[pocz_data,"D"]+1
if(dataod = pocz_data) exitalg[1]
datado := pocz_data-1
date_beg := dataod
 KL_D_ROK := A_DATE[dataod,"Y"]
 KL_D_LITERA := "K:"
 KL_D_LICZBA := .
 KL_D_LICZBAMIN := .
 KL_D_PRAC := .N.
 KL_D_GRUPA := ""
 CallAlg["KL-OTWORZ-KALENDARZ"]
rejop["px:otworzrejsprawdz","przebieg.rxr"]
rejop["px:zmienkluczrej","5"]
klucz := xpracownik+"*"+pocz_data
if(rejop["px:znajdzrek",klucz]) KL_D_GRUPA := rejwezp_s["px:kalengrupa"]
rejop["px:zamknijrej",""]
if(KL_D_GRUPA = "") KL_D_GRUPA := "<podstawowy>"
date_end := datado
callalg["czy_jest_roboczy"]
CallAlg["KL-ZAMKNIJ-KALENDARZ"]
if(not(czy_roboczy)) exitalg[1]
exitalg[0]

% SL.place-wartosc-ogolne

implements("PLACE_G");

define daj_koniec_mies()
{
   variable data = daj_zD("d_data");
   variable data_k = gl_daj_pusta_data(); 
    data_k = gl_koniec_miesiac(data);
   ustaw_zD("d_data",data_k);
}

define sprawdz_czy_zw_fp()
{
 variable prac = daj_zS("prac_pp"),data = daj_zD("data_pp");
 if(rejop("zw:znajdzrek",prac))
  { 
   do
     {
      if(gl_por_daty(rejwezp_d("zw:dataod"),rejwezp_d("zw:datado"),data)==0)
       {
        ustaw_zL("czy_zw_fp",1);
        if(not(rejwezp_l("zw:czy_fp"))) ustaw_zL("czy_zw_fgsp",1);
        break;
         } 
      } while(rejop("zw:weznastepnyrekn"));  
   }
}

define sprawdz_czy_zw_fep()
{
 variable prac = daj_zS("prac_pp"),data = daj_zD("data_pp");
 if(rejop("fep:znajdzrek",prac))
  { 
   do
     {
      if(gl_por_daty(rejwezp_d("fep:dataod"),rejwezp_d("fep:datado"),data)==0)
       {
        ustaw_zL("czy_zw_fep",1);
        break;
         } 
      } while(rejop("fep:weznastepnyrekn"));  
   }
}

define daj_dane()
{
   variable s = dajrejmess("",0);
      callalg(s+"-DAJDANE");
}

define ustaw_stand()
{
  variable tt = PARAM_TAB_POLA[1];
   
  gl_drukuj_init_pola(tt);
  tt[0].fieldid = dajazmienna_S("symbol_pole_rej");
  tt[0].ftytul = dajazmienna_S("symbol_tytul");
  gl_drukuj_dodaj_pola(tt);   
}

private define daj_sym()
{
    variable sss = rejwezp_s(dajazmienna_S("symbol_pole_rej"));
    return sss;
}

private define szukaj_g_rej(rej,rej1)
{
  () = rejop("CCC:otworzrej1",rej);
EXIT_BLOCK 
{
  () = rejop("CCC:ZamknijRej");
}
  variable rej_p = dajazmienna_S("symbol_modif_glowny_rej");
  variable sym = daj_sym();
  variable mozna_m = 1;
  if (rejop("CCC:wezpierwszyrek")){
  do {
    if (rownep_s("CCC:"+rej_p,sym)) {
      mozna_m = 0;
      break;
    }                                          
  } while (rejop("ccc:weznastepnyrek"));
 }
 if(mozna_m==0) return 0;
 if(rej1==rej) return mozna_m;
 () = rejop("CCC:ZamknijRej");
 () = rejop("CCC:otworzrej1",rej1);
 if (rejop("CCC:wezpierwszyrek")) {
  do {
    if (rownep_s("CCC:"+rej_p,sym)) {
      mozna_m = 0;
      break;
    }                                          
  } while (rejop("ccc:weznastepnyrek"));
 }
  return mozna_m;
}
          
private define czy_mozna_zmien_symbol() 
{
  variable jest_m = dajazmienna_S("symbol_jest_modif");
  variable jest_m1 = dajazmienna_S("symbol_jest_modif1");
  if (jest_m == "") return 1;
  if (jest_m == "REJESTR_PRACOWNIKOW") return szukaj_g_rej("PODATNIK.RXR","PODATNIK.RXR");
  return szukaj_g_rej(jest_m,jest_m1);
}

private define ustaw_s() 
{
  () = exdialogop("UstawMenuParam","10:"+dajazmienna_S("symbol_pole_rej"));
  () = exdialogop("PozycjaWprowadzana","*");
}

private define idz_10()
{
   () = exdialogop("PozycjaAktywna","10");
   () = exdialogop("IdzDoPozycji","10");
}

private define idz_11()
{
   () = exdialogop("pozycjanieaktywna","10");
   () = exdialogop("idzdopozycji","11");
}

private define sprawdz_10() 
{
   if (czy_mozna_zmien_symbol()) {
     idz_10();
     return;
   }
   idz_11();
}

define start_symbol(co)
{
  ustaw_s();
  switch (co) 
  { case 1: % zaloz nowy
     idz_10();
  }
  { case 3: % zmien z linii
     sprawdz_10();     
  }
  { case 2: % zablokowany symbol
     idz_11();
  }           
}

define usun_symbole() 
{
  if (not czy_mozna_zmien_symbol()) 
  {
    okalert(dajazmienna_S("symbol_usun_glowny_rej"));
    return;
  }

  variable sss = daj_sym();

  variable pyt = sprintf(dajrejmess("",6),sss);

  if(not yesnalert(pyt)) return;
  () = rejop("UsunRek");
  () = exdialogop("UsunRekordzMenu","100");
}

define drukuj_symbole() 
{
  variable param = @PARAM_TAB_DRUKUJ;
      
  gl_drukuj_init_param(param);
  
  param.rejname = dajrejmess("",-1);
  param.nazwa = dajazmienna_S("symbol_tytul");
  param.slow = dajrejmess("",0);
  param.fieldklucz = dajazmienna_S("symbol_pole_rej");
  param.keyfield = dajazmienna_I("symbol_key_field");
  param.wardialog = dajrejmess("",0);
  param.wydruk_nazwa = "@T@W" + dajazmienna_S("symbol_tytul") + "@@@@";
  param.wydruk_id = dajazmienna_S("symbol_tytul");
//  param.pole_stand = "SL.PLACE_G->ustaw_stand";
  param.pole_stand = "KOL-DRUKUJ-STANDARDOWE-KOLUMNY";
  
  gl_drukuj_rejestr(param);   
}  
// ------------
// klasyfikacje
// --------------

public define place_usun_klasyfikacje(r,prac)
{
  while (rejop(r+"znajdzrek",prac)) 
    () = rejop(r+"usunrek");
}

public define place_usun_klasyfikacje_alg()
{
  () = rejop("x:otworzrejsprawdz","PLCROZPKLAS.RJR");
  place_usun_klasyfikacje("x:",gl_daj_dstring());
  () = rejop("x:zamknijrej");
}

define place_usun_klasyfikacje_prac_alg(r)
{
  () = rejop(r+"zmienkluczrej","2");
    
  place_usun_klasyfikacje(r,gl_daj_dstring());
}

define place_przepisz_klasyfikacje(sou,dest,prac)
{
//  okalert("prac="+prac+".","sou="+sou,"dest="+dest);
  place_usun_klasyfikacje(dest,prac);
//  rejop(dest+"zobaczdbf");
//  rejop(sou+"zobaczdbf");
  if (rejop(sou+"znajdzrek",prac))
    do {
      () = rejop(dest + "dodajrek");
      () = rejop(sou + "przeniespola",dest);
      () = rejop(dest + "zapiszrek");
    } while (rejop(sou + "weznastepnyrekn"));
}


public define place_zmien_klasyfikacje(poprz,prac)
{
  if (prac == poprz) return;
  
  () = rejop("kl:zmienkluczrej","1");
  while (rejop("kl:znajdzrek",poprz)) {
    rejwstawp_s("kl:plc_nr",prac);
  }
}

// -----------------
// prac - symbol pracownika
// rodzaj - liczba ( 0 - kls konta wynagrodzen, 1-kls kosztow
// zobacz - 1: przegladanie3
// ----------------
  
public define place_klasyfikacje_dialog(prac,rodzaj,zobacz)
{
//okalert("2 prac="+prac,"rodzaj="+string(rodzaj),"zobacz="+string(zobacz));
//ustawazmienna_K("umowa",callalg("umowy"));
    variable  ss = "(\"" + prac + "\"," + string(rodzaj) + "," + string(zobacz) + ",\"klx:\")";
    () = callpyt("import place_klasyfikacje | place_klasyfikacje.dialog" + ss);
}
private define place_zapam_klasyfikacje_x()
{
  if (not rejop("kl:wezpierwszyrek")) return;
  () = rejop("x:otworzrejsprawdz","PLCROZPKLAS.RJR");
  do {
    () = rejop("x:dodajrek");
    () = rejop("kl:przeniespola","x:");
//  rejwstawp_i("x:plc_dokid",nr);
 if(dajazmienna_L("czy_nowy")) rejwstawp_s("x:plc_nr",rejwezp_s("sym"));
  } while (rejop("kl:weznastepnyrek"));
  () = rejop("x:zamknijrej");
}


define place_czytaj_klasyfikacje(r) 
{ 
//  variable prac = daj_zS("plc_nr");
  variable prac = rejwezp_s("sym");
  () = plik_op("x:otworzrej1","PLCROZPKLAS.RJR");
  () = rejop("x:zmienkluczrej","1");
  place_przepisz_klasyfikacje("x:",r,prac);
//  okalert("place_czytaj_klasyfikacje");
//  () = rejop("x:zobaczdbf");
  () = plik_op("x:zamknijrej");
}    

define przepisz_klas()
{
  if(rejop("klx:wezpierwszyrek"))
   {
    do
     {
      if(not(rejwezp_s("kl:plc_nr")== rejwezp_s("sym"))) rejwstawp_s("kl:plc_nr",rejwezp_s("sym"));
     }while (rejop("kl:weznastepnyrek"));
   }
}

public define place_zapam_klasyfikacje()
{
     ustawazmienna_L("czy_nowy",0);
//ustawazmienna_K("umowy",callalg("umowy"));
//okalert("umowy="+string(dajazmienna_K("umowy")));
place_zapam_klasyfikacje_x(); 
}


define rozpisz_klasyfikacje(rodzaj,zobacz)
{
  if (pustepole("sym")) {
    okalert("Symbol pracownika nie jest wprowadzony !");
    return;
  }
    
//   przepisz_klas();
   place_klasyfikacje_dialog(rejwezp_s("sym"),rodzaj,zobacz);
}


//
% PY.aaa-place-wartosc-ogolne$MODUL=place_g$

import pers
import pers_g

def place_init() :
   pa = "$$(PROSYSPATH).."
   pers.dyskop("pelnanazwa",pa)
   pers.dyskop("plikdosciezki",pers_g.gl_daj_dstring(),"place")   
   import sys
   sys.path.append(pers_g.gl_daj_dstring())
   
place_init()

import pla_u.zapam_zmienne

   
// ----------

def wartosci_poczatkowe() :
    pers.callalgfile("place\place_wartosc_poczatkowe.py","!PYT.import place_poczatkowe | place_poczatkowe.pokaz_poczatkowe()")
    
def podatnik_param_banki() :
    pers.callalgfile("place\place_param_banki.py","!PYT.import place_p_banki | place_p_banki.akce()")
    #pers.callalgfile("place\place_param_banki.py","!PYT.import place_p_banki | place_p_banki.parametry_banki()")

def podatnik_param_reszta_danych() :
    pers.callalgfile("place\place_param_reszta_danych.py","!PYT.import place_reszta_danych | place_reszta_danych.reszta_danych()")

def podatnik_konta_pracownicze() :
   pers.callalgfile("place/place_parametry_przelewy.py","!PYT.import place_parametry_przelewy | place_parametry_przelewy.parametry_do_kont_pracowniczych()")
   
def place_parametry_platnik() :
   pers.callalgfile("place/place_parametry_przelewy.py","!PYT.import place_parametry_przelewy | place_parametry_przelewy.parametr_platnik()")

def place_parametry_globalne() :
   pers.callalgfile("place/place_parametry_przelewy.py","!PYT.import place_parametry_przelewy | place_parametry_przelewy.parametry_globalne()")
   
def place_skladnik_premia() :
    pers.callalgfile("place\place_skladnik_premia.py","!PYT.import place_skladnik_premia | place_skladnik_premia.premia()")
    
class WSPOLNE_ZAPAM_ZMIENNE_WYBIERZ_CLASS(pla_u.zapam_zmienne.WSPOLNE_ZAPAM_ZMIENNE_CLASS) :
    
  def __init__(self) :
    pla_u.zapam_zmienne.WSPOLNE_ZAPAM_ZMIENNE_CLASS.__init__(self)
    pers.defzmiennas("xpracownik","")    
    self.dodaj_z("xpracownik")     	    

def place_definiowanie_w_list(d = "", p = "") :
    if d == "" :    
      wo = pers_g.WOLAJ_ALG_PLIK("place\place_definiuj_wzorcowe.py")
      wo.wolaj("place_wzorcowe","wzorcowe()")
    else :      
      wo = pers_g.WOLAJ_ALG_PLIK("place\place_definiuj_wzorcowe.py",p)
      wo.wolaj_str("place_wzorcowe","wzorcowe",d)
      
def place_wybierz_w_list(d = "", p = "") :
#    za = pla_u.zapam_zmienne.WSPOLNE_ZAPAM_ZMIENNE_WYBIERZ_CLASS()
    za = WSPOLNE_ZAPAM_ZMIENNE_WYBIERZ_CLASS()
    za.zapam_v()    
    if d == "" :    
      wo = pers_g.WOLAJ_ALG_PLIK("place\place_definiuj_wzorcowe.py")
      wo.wolaj("place_wzorcowe","wzorcowe_wybierz()")
    else :      
      wo = pers_g.WOLAJ_ALG_PLIK("place\place_definiuj_wzorcowe.py",p)
      wo.wolaj_str("place_wzorcowe","wzorcowe_wybierz",d)
    za.przywroc_v()      
      
def place_f2_wybierz_w_list(d="",p="") :
    #pers.okalert("1")
    place_wybierz_w_list(d,p)
    if pers.apuste("D_STRING") :
      pers_g.gl_ustaw_nie_ok()
      return
    pers_g.gl_ustaw_ok()  
    
def place_popolu_w(d,kom) :
   if pers_g.gl_nie_zmienione(): return
   if d == "" : return   
   pers.plik_op("otworzrej1","PLLISTY.RXR")
   jest = pers.plik_op("znajdzrek",d)
   pers.plik_op("zamknijrej")
   if jest : return
   pers.okalert(kom)
   pers_g.gl_ustaw_nie_ok()   

def place_przyporzadkowania() :
    pers.callalgfile("place\place_przyporzadkowania.py","!PYT.import place_przyporzadkowania | place_przyporzadkowania.dialog()")

def place_wybierz_lista() :
    return pers.callalgfile("place\place_wybierz_lista.py","!PYT.import place_wybierz_lista | place_wybierz_lista.wybierz_lista()")


def place_opracuj_liste() :
    pers.callalgfile("place\place_oprac_lista_plac.py","!PYT.import place_oprac_lista | place_oprac_lista.oprac()")

def place_patrz_podatnik(pr = "",param="Rejestr_pracownikow_place",rejname="PODATNIK.RXR") :
    pers.ustawazmienna_S("tytul1")
    pers.ustawazmienna_S("URZAD")
    pers.ustawazmienna_K("porzadek",1)
    pers.ustawazmienna_K("kwota2",1)
    pers.ustawazmienna_S("nazwa_frm",param)
    pers.callalg("PL_PAR_READ_PARAM")
    if not pers.apuste("kwota2") :
        pers.ustawazmienna_K("porzadek",pers.dajazmienna_K("kwota2"))
    pers.rejop("OtworzRejSprawdz",rejname)
    if rejname == "PODATNIK.RXR" : pers.rejop("mm:otworzrej1","ZLBIORCA.RXR")
    else : pers.rejop("mm:otworzrej1","PODATNIK.RXR")
    if pr == "" :  pers.rejop("WezostatniRek")
    else : pers.rejop("znajdzrek",pr)
    pers.rejop("kl:otworzrej","PLCROZPKLAS.RJR")
    #pers.rejop("klx:otworzrejtemp","PLCROZPKLAS.RJR")
    pers.rejop("WywolajMenuX","1")
    pers.rejop("ZamknijRej")
    pers.rejop("KL:ZamknijRej")
    #pers.rejop("KLX:ZamknijRej")
    pers.ustawazmienna_K("kwota2",pers.dajazmienna_K("porzadek"))
    pers.callalg("PL_PAR_WRITE_PARAM")
    
def place_patrz_podatnik_dstring() :
    place_patrz_podatnik(pers_g.gl_daj_dstring())    
    
def place_patrz_skladniki() :
    pers.ustawazmienna_S("nazwarodz")
    pers_g.gl_zobacz_rejestr("PLSKLAD.RXR")    

def place_patrz_stale() :
    pers.callalgfile("place\place_patrz_stale.py","!PYT.import place_stale_dodatki | place_stale_dodatki.patrz_scn()")

def place_patrz_zwolnienia() :
    pers.callalgfile("place\place_patrz_zwolnienia.py","!PYT.import place_zwolnienia | place_zwolnienia.patrz_scn()")
    
def place_patrz_podstawy() :
    pers.callalgfile("place\place_podstawy.py","!PYT.import place_podstawy | place_podstawy.patrz_scn()")
    
def place_patrz_zwolnienia_fep() :
    pers.callalgfile("place\place_patrz_zwolnienia.py","!PYT.import place_zwolnienia | place_zwolnienia.patrz_scn_fep()")
    
def place_zapisz_przelew_plik() :
    pers.callalgfile("place\place_zapisz_przelewy_plik.py","!PYT.import place_zapisz_przelew_plik | place_zapisz_przelew_plik.zapisz()")        
        
def place_wydruk_listy() :
    pers.callalgfile("place\place_wydruk_listy_plac.py","!PYT.import place_wydruk_listy | place_wydruk_listy.drukuj()")        

def place_usun_liste() :
    pers.callalgfile("place\place_usun_liste.py","!PYT.import place_usun_liste | place_usun_liste.usun_liste()")

def place_ksiegowanie_za_okres() :
    pers.callalgfile("place\place_ksiegowanie_za_okres.py","!PYT.import place_ksiegowanie_za | place_ksiegowanie_za.ksieguj()")

def place_korekta_listy_plac() :
    pers.callalgfile("place\place_korekty_listy.py","!PYT.import place_korekta_listy | place_korekta_listy.korekta()")

def place_korekta_zus() :
    pers.callalgfile("place\place_korekty_zus.py","!PYT.import place_korekta_zus | place_korekta_zus.korekta()")
    
def place_korekta_zus1() :
    pers.callalgfile("place\place_korekty_zus1.py","!PYT.import place_korekta_zus1 | place_korekta_zus1.korekta()")
    
def place_dekretowanie_listy() :
    pers.callalgfile("place\place_dekretowanie_listy.py","!PYT.import place_dekretowanie_listy | place_dekretowanie_listy.dekretowanie()")

def place_lista_plac_patrz() :
    pers.callalgfile("place\place_lista_plac_patrz.py","!PYT.import place_lista_plac | place_lista_plac.zobacz()")
    
def place_lista_plac_patrz1() :
    pers.callalgfile("place\place_lista_plac_patrz.py","!PYT.import place_lista_plac | place_lista_plac.zobacz1()")
    
def place_lista_plac_patrz_listy() :
    pers.callalgfile("place\place_lista_plac_patrz.py","!PYT.import place_lista_plac | place_lista_plac.zobacz_listy()")
    
def place_kartoteka_pracownika_zobacz() :    
    pers.callalgfile("place\place_lista_plac_patrz.py","!PYT.import place_lista_plac | place_lista_plac.place_kartoteka_pracownika_zobacz()")
    
def place_kartoteka_skladnik_zobacz() :
    pers.callalgfile("place\place_lista_plac_patrz.py","!PYT.import place_lista_plac | place_lista_plac.place_kartoteka_skladnik_zobacz()")

def place_kadry_nieobecnosci_zobacz() :
    pers.callalgfile("kadry\kadry_nieobecnosci.py","!PYT.import kadry_nieobecnosci | kadry_nieobecnosci.nieobecnosci_zobacz()")

def place_kadry_nadgodziny_zobacz() :
    pers.callalgfile("kadry\kadry_nadgodziny.py","!PYT.import kadry_nadgodziny | kadry_nadgodziny.nadgodziny_zobacz()")

def place_kadry_dane_poczatkowe() :
    pers.callalgfile("kadry\kadry_dane_poczatkowe.py","!PYT.import kadry_poczatkowe | kadry_poczatkowe.pobierz()")

def place_zobacz_pit() :
   pers.callalgfile("place\umowy_pity.py","!PYT.import place_umowy_pit | place_umowy_pit.place()")    

def place_drukuj_pit(co) :
    s = "pit(\"" + co + "\")"
    pers.callalgfile("place\place_drukuj_pit.py","!PYT.import place_drukuj_pity | place_drukuj_pity." + s)

def place_zobacz_kredyt() :
    pers_g.wolaj_sl_param("gl_zobacz_rejestr","KREDYT.RXR")
    
def place_drukuj_kartoteka() :
   pers.callalgfile("place\place_drukuj_kartoteka.py","!PYT.import place_drukuj_ka | place_drukuj_ka.drukuj()")    

def place_drukuj_kolumnami() :
   pers.callalgfile("place\drukuj_kartoteka_kolumnami.sl","!SL.PLACE_DRUKUJ_K->drukuj()")    

def place_drukuj_skladniki_w_okresie() :
   pers.callalgfile("place\drukuj_place_skladniki.py","!PYT.import drukuj_place_skladniki | drukuj_place_skladniki.drukuj()")
   
def place_drukuj_wyplaty_miesiace() :
   pers.callalgfile("place\drukuj_place_miesiace.py","!PYT.import place_drukuj_miesiace | place_drukuj_miesiace.drukuj()")

def place_drukuj_zbiorowke() :
   pers.callalgfile("place\drukuj_place_zbiorowka_plac.py","!PYT.import place_drukuj_zbiorowke | place_drukuj_zbiorowke.drukuj()")
    
def place_drukuj_lista_i_suma() :
   pers.callalgfile("place\drukuj_place_lista_i_suma.py","!PYT.import place_drukuj_lista_suma | place_drukuj_lista_suma.drukuj()")
    
def place_drukuj_lista_korygujaca() :
   pers.callalgfile("place\drukuj_place_lista_korygujaca.py","!PYT.import place_drukuj_lista_korygujaca | place_drukuj_lista_korygujaca.drukuj()")

def place_drukuj_detale_placy() :
   pers_g.gl_zobacz_rejestr("PLC_KDR.RJR")
   
def place_drukuj_jubileusz() :
   pers.callalgfile("place\drukuj_place_jubileusz.py","!PYT.import place_drukuj_jubileusz | place_drukuj_jubileusz.drukuj()")
    
def place_drukuj_obnizone_skladki() :
   pers.callalgfile("place/drukuj_place_obnizone_skladki.py","!PYT.import place_drukuj_obnizone_skladki | place_drukuj_obnizone_skladki.drukuj()")
    
def place_drukuj_karta_zasilkowa() :
   pers.callalgfile("place/drukuj_place_karta_zasilkowa.py","!PYT.import place_drukuj_karta_zasilkowa | place_drukuj_karta_zasilkowa.drukuj()")
    
def place_parametry_przelewy() :
   pers.callalgfile("place/place_parametry_przelewy.py","!PYT.import place_parametry_przelewy | place_parametry_przelewy.parametry()")

def raporty_do_programu_platnika() :
    pers_g.gl_zobacz_rejestr("PPRAPORT.RXR")

def place_wolaj_rej(rej,dialog) :
    pers.rejop("OtworzRejSprawdz",rej)
    pers.exdialogop("IdzDoDialogu",dialog)
    pers.rejop("zamknijrej")

def place_import_eksport() :
   pers.callalgfile("place/place_import_eksport.py","!PYT.import place_import_eksport | place_import_eksport.rob()")    \
   
def place_administrator_modulu():
   pers.callalgfile("place/place_administrator_modulu.py","!PYT.import place_administrator_modulu | place_administrator_modulu.administrator()")    

def place_ponowny_dekret():
   pers.callalgfile("place/place_administrator_modulu.py","!PYT.import place_administrator_modulu | place_administrator_modulu.ponowny_dekret()")    

def place_zeruj_stany() :
   pers.callalgfile("place/place_zeruj_stany.py","!PYT.import place_zeruj_stany | place_zeruj_stany.zeruj()")    
   
def place_rejestr_powiazan() :   
   pers.callalgfile("place/place_rejestr_powiazan.py","!PYT.import place_rejestr_powiazan | place_rejestr_powiazan.sprawdz()")

def place_wprowadz_przelew() :
   pers.callalgfile("place\place_wprowadz_przelew.py","!PYT.import place_przelew | place_przelew.wprowadz()")    

def dialog4() :
    pers.callalgfile("place\place_pit_dialogi.py","!PYT.import place_pit_dialog | place_pit_dialog.dialog4()")
    
def dialog8b() :
    pers.callalgfile("place\place_pit_dialogi.py","!PYT.import place_pit_dialog | place_pit_dialog.dialog8b()")
    
def dialog11() :
    pers.callalgfile("place\place_pit_dialogi.py","!PYT.import place_pit_dialog | place_pit_dialog.dialog11()")
    
def dialog40() :
    pers.callalgfile("place\place_pit_dialogi.py","!PYT.import place_pit_dialog | place_pit_dialog.dialog40()")
    
def s_rejestr(co) :
    if co == 0 :
      rejestr = "PLLISTY.RXR"
      rejestrtxt= "wzorcowych list p|lac"
      scn_id = 2613
    elif co == 1:
      rejestr = "PLPOWIAZ.RXR"
      rejestrtxt = "przyporz|adkowa|n"
      scn_id =2614
    elif co == 2:      
      rejestr = "PLSKLAD.RXR"
      rejestrtxt = "sk|ladnik|ow p|lac"
      scn_id = 2616
    elif co == 3:      
      rejestr = "PODATNIK.RXR"
      rejestrtxt = "podatnikow"
      scn_id = 2615
    elif co == 4:
      rejestr = "PARCHOR.RXR"
      rejestrtxt = "parametr|ow do wyliczania zasi|lk|ow"
      scn_id = 2612

    while 1:      
      #pers.okalert("1")            
      pers.rejop("otworzrej1",rejestr)
      pusty = pers.rejop("PustyRej")
      pers.rejop("ZamknijRej")
      #pers.okalert("2")      
      if not pusty :
        pers.ALG_RES = 1
        return		
      pers.ustawazmienna_S("UZU_INFO","Rejestr "+rejestrtxt+" jest pusty. Nale|zy wcze|sniej uzupe|lni|c ten rejestr.")
      pers.exdialogop("IdzDoDialogu","UZUPELNIAM-NUMER-INFO")
      if pers_g.gl_daj_dpos() == 1 :
        pers.ALG_RES = 0
        return	
      pers.finnmenufunkcja(scn_id)

def place_sprawdz_stawki(rok = "", przepisz=1) :
  if rok == "" : rok = pers.datanas(pers.dajazmienna_D("poczrok_ksieg"))
  #pers.okalert("rok="+rok)
  pers.rejop("P:otworzrej1","PLCPOD.RXR")
  #if przepisz == 1 : pers.callalg("PLACE-PARAMETRY-INIT")
  pers.rejop("P:wezostatnirek")
  while  pers.rejwezp_s("p:rokpod") > rok :
      #pers.okalert("rok="+ pers.rejwezp_s("p:rokpod"))
      if not pers.rejop("P:wezpoprzednirek") :
              if not pers.yesalert("1.Brak stawek podatkowych i ubezpieczeniowych dla roku: "+rok+" !","Czy chcesz je uzupe|lni|c ?") :
                 pers.rejop("P:zamknijrej")
                 pers.ALG_RES = 0 
                 return
              else : pers.callalg("SCN-PLACE-PODATKI")
  #rok = pers.rejwezp_s("p:rokpod")
  #pers.okalert("rokxxx = "+ pers.rejwezp_s("p:rokpod"))
  if przepisz == 1 :
     pers.callalg("PLACE-stawki-PRZEPISZ")
  pers.rejop("P:ZamknijRej")
  pers.ALG_RES = 1

def place_sprawdz_parametry(rok = "", przepisz=1) :
  if rok == "" : rok = pers.datanas(pers.dajazmienna_D("poczrok_ksieg"))
  #pers.okalert("rok="+rok)
  pers.rejop("P:OtworzRejSprawdz","PLCPOD.RXR")
  if przepisz == 1 : pers.callalg("PLACE-PARAMETRY-INIT")
  if pers.rejop("P:wezostatnirek") :
    while  pers.rejwezp_s("p:rokpod") > rok :
       #pers.okalert("rok="+ pers.rejwezp_s("p:rokpod"))
       if not pers.rejop("P:wezpoprzednirek") :
              if not pers.yesalert("2.Brak stawek podatkowych i ubezpieczeniowych dla roku: "+rok+" !","Czy chcesz je uzupe|lni|c ?") :
                 pers.rejop("P:zamknijrej")
                 pers.ALG_RES = 0 
                 return
              else : pers.callalg("SCN-PLACE-PODATKI")
       #else :
              
              #if not pers.yesalert("3.Brak stawek podatkowych i ubezpieczeniowych dla roku: "+rok+" !","Czy chcesz je uzupe|lni|c ?") :
                 #pers.rejop("P:zamknijrej")
                 #pers.ALG_RES = 0 
                 #return
              #else : pers.callalg("SCN-PLACE-PODATKI")

  #rok = pers.rejwezp_s("p:rokpod")
  #pers.okalert("rokxxx = "+ pers.rejwezp_s("p:rokpod"))
  if przepisz == 1 :
     pers.callalg("PLACE-PARAMETRY-PRZEPISZ")
  if przepisz == 2 :
      podstawapod = pers.kwotarop("+",pers.daj_zK("podstubez"),pers.daj_zK("bo_podstopod"),2)
      #if pers.apuste("podstubez") : podstawapod = 0
      podstawapod = pers.kwotarop("+",0,podstawapod,2)
      if pers.apuste("xproc") :
         pers.ustaw_zK("xproc",pers.wezpole_k("p:proc1"))
         if pers.daj_zL("wspolneopod") == 0 :
            if pers.kwotalop(">",podstawapod,pers.wezpole_k("p:prog1")) : pers.ustaw_zK("xproc",pers.wezpole_k("p:proc2"))
            if pers.kwotalop(">",podstawapod,pers.wezpole_k("p:prog2")) : pers.ustaw_zK("xproc",pers.wezpole_k("p:proc3"))
            if pers.kwotalop(">",podstawapod,pers.wezpole_k("p:prog3")) : pers.ustaw_zK("xproc",pers.wezpole_k("p:proc4"))
         else :
            if pers.kwotalop(">",podstawapod,pers.wezpole_k("p:prog1")) : pers.ustaw_zK("xproc",pers.wezpole_k("p:proc1"))
            if pers.kwotalop(">",podstawapod,pers.wezpole_k("p:prog2")) : pers.ustaw_zK("xproc",pers.wezpole_k("p:proc2"))
            if pers.kwotalop(">",podstawapod,pers.wezpole_k("p:prog3")) : pers.ustaw_zK("xproc",pers.wezpole_k("p:proc3"))
      #pers.okalert("podstawapod="+str(podstawapod),"xproc="+str(pers.daj_zK("xproc")))
      pers.ustaw_zK("progub",pers.wezpole_k("p:progub"))
      #pers.ustaw_zK("k_uzys",pers.wezpole_k("p:k_uzys"))
      #pers.ustaw_zK("k_zw",pers.wezpole_k("p:k_zw"))
      
  #pers.okalert("xubezzdr="+str(pers.daj_zK("xubezzdr")),"rok="+pers.rejwezp_s("p:rokpod"))
  pers.rejop("P:ZamknijRej")
  pers.ALG_RES = 1

def place_licz_skladnikami() :
   pers.callalgfile("place\place_licz_place.py","!PYT.import place_licz_place | place_licz_place.licz_skladnikami()")
   
def place_wylicz() :
   pers.callalgfile("place\place_licz_wylicz.py","!PYT.import place_licz_wyliczenie | place_licz_wyliczenie.licz()")
    
def place_dialog_ksieg() :
   pers.callalgfile("place\place_dialog_ksieg.py","!PYT.import place_dialog_ksieg | place_dialog_ksieg.dialog()")    

def place_eksport_platnik() :
   pers.callalgfile("place\place_eksport_platnik.py","!PYT.import place_eksport_platnik | place_eksport_platnik.eksport()")

def pracownik_gus() :
   pers.callalgfile("place\place_pracownik_gus.py","!PYT.import place_gus | place_gus.zobacz()")
   
// -------------------
// przepisac do gl
// -------------------

class f2_rejestr_ustaw_CLASS :
    
  def __init__(self,r,pole,zm="") :
    self.zm = zm
    self.pole = pole
    self.res = 0
    self.s = ""    
    pers.plik_op("otworzrejsprawdz",r)
    
  def __del__(self) :
    pers.plik_op("zamknijrej")
    pers.ustaw_zS("D_STRING",self.s)
    if self.res : pers_g.gl_ustaw_ok()
    else : 
      pers_g.gl_ustaw_nie_ok()    
      pers.ustaw_zS("D_STRING")
    
  def po_wybierz(self) :
    return 1

  def f2_rejestr(self) :    
    if self.zm != "" : pers.plik_op("znajdzrek",self.zm)
    else : pers.plik_op("wezpierwszyrek")
    if not pers.plik_op("wywolajmenux","0") : 
      #pers.okalert("nie") 
      return
    self.s = pers.rejwezp_s(self.pole)
    #pers.okalert("s="+str(self.s))
    if not self.po_wybierz() : return
    self.res = 1
    
  def f2_rejestr1(self) :    
    if self.zm != "" : pers.plik_op("znajdzrek",self.zm)
    else : pers.plik_op("wezpierwszyrek")
    if not pers.plik_op("wywolajmenu","0") : 
      #pers.okalert("nie1") 
      return
    self.s = pers.rejwezp_s(self.pole)
    #pers.okalert("s1="+str(self.s))
    if not self.po_wybierz() : return
    self.res = 1
    
class gl_przegladaj_numery_lista_CLASS :
    
  def __init__(self,r,p_klucz) :
    self.r = r
    self.p_klucz = p_klucz
    
  def __kol_rekord__(self) :
    return 1  
    
  def przegladaj(self,sym) :
    pers.plik_op("otworzrej1",self.r)
    pers.plik_op("zmienkluczrej",str(self.p_klucz))
    if pers.plik_op("znajdzrek",sym) :
       pocz = 1
       while pocz or pers.plik_op("weznastepnyrekn") :
          pocz = 0
          if not self.__kol_rekord__() : break
    pers.plik_op("zamknijrej")    
    
class gl_licz_kolejny_numer_listy_CLASS (gl_przegladaj_numery_lista_CLASS) :

  def __init__(self,r,p_num,p_klucz) :
    gl_przegladaj_numery_lista_CLASS.__init__(self,r,p_klucz)
    self.p_num = p_num    
    self.numer = 0
    
  def __kol_rekord__(self) :
    num_x = pers.wezpole_k(self.p_num)
    if self.numer < num_x : self.numer = num_x
    return 1    
    
  def licz_num(self,sym) :
    self.przegladaj(sym)
    return self.numer + 1    

class gl_sprawdz_powtarza_numer_listy_CLASS (gl_przegladaj_numery_lista_CLASS) :

  def __init__(self,r,p_num,p_klucz,r_id) :
    gl_przegladaj_numery_lista_CLASS.__init__(self,r,p_klucz)
    self.p_num = p_num    
    self.jest = 0    
    self.r_id = r_id    
    
  def __kol_rekord__(self) :
    if self.r_id == pers.wezpole_k("rejestrrekpos") : return 1
    num_x = pers.wezpole_k(self.p_num)
    if num_x == self.numer : 
      self.jest = 1
      return 0
    return 1  
    
  def sprawdz_num(self,sym,num) :
    self.numer = num      
    self.przegladaj(sym)
    return self.jest    

    
def daj_koniec_okr(d) :
      pers.fk_op("openmain")
      t_mie = pers.a_date(d,"M")
      t_dzien = pers.a_date(d,"D")
      d_temp = pers.finnokrd2(pers.c_date(255,t_mie,t_dzien))
      d_temp = pers.zrokiem(d_temp)      
      pers.fk_op("close","")
      return d_temp

def daj_koniec_dwyplaty(d) :
     return daj_koniec_okr(d)
 
def przepisz_temp() :
   # pogrupwanie danych
   pers.rejop("xx:otworzrejtemp","plksieg.rxr")
   pers.rejop("xx:zmienkluczrej","8")
   kl = pers.rejwezp_k("XV:szukajklucz")
   if pers.rejop("XV:wezpierwszyrek") :
    if pers.daj_zL("ksieg_indyw") :
      pocz = 1
      while pocz or pers.plik_op("xv:weznastepnyrek") :
       pocz = 0
       if pers.pustepole("xv:placab") or pers.kwotalop("=",pers.wezpole_k("xv:placab"),0) : continue
       prac = pers.wezpole_s("xv:pracownik")
       if pers.kwotalop(">",pers.wezpole_k("xv:rodzdekr"),9000) : prac = "ZZZZZZZZZZ"
       klucz = pers.wezpole_s("xv:nrlisty")+"*"+prac+"*"+str(pers.wezpole_i("xv:rodzdekr"))+"*"+pers.wezpole_s("xv:opisdekr")+"*"+pers.wezpole_s("xv:kontown")+"*"+pers.wezpole_s("xv:kontoma")+"*"+pers.wezpole_s("xv:kontorzl")+"*"+pers.wezpole_s("xv:kontorozlma")
       klucz1 = pers.wezpole_s("xv:nrlisty")+"*"+prac+"*"+str(pers.wezpole_i("xv:rodzdekr"))+"*"+pers.wezpole_s("xv:opisdekr")+"*"+pers.wezpole_s("xv:kontown")+"*"+pers.wezpole_s("xv:kontoma")
       if not pers.rejop("xx:znajdzrek",klucz) :
          pers.rejop("xx:dodajrek")
          pers.rejop("xv:przeniespola","xx:")
          pers.xrejwstawp_s("xx:klucz1",klucz1)
          pers.xrejwstawp_s("xx:klucz2",klucz)
       else :
          pers.xrejdodajp_k("xx:placab",pers.wezpole_k("xv:placab"))
       pers.rejop("xx:zapiszrek")
    else :
      pocz = 1
      pers.rejop("XV:zmienkluczrej","8")
      pers.rejop("XV:wezpierwszyrek") 
      kluczx = ""
      while pocz or pers.plik_op("xv:weznastepnyrek") :
       pocz = 0
       if pers.pustepole("xv:placab") or pers.kwotalop("=",pers.wezpole_k("xv:placab"),0) : continue
       prac = "ZZZZZZZZZZ"
       no = str(pers.wezpole_i("xv:rodzdekr"))
       if pers.kwotalop("<",pers.wezpole_k("xv:rodzdekr"),8000) : no = "000000"
       opis = pers.wezpole_s("xv:opisdekr")
       if pers.kwotalop("<",pers.wezpole_k("xv:rodzdekr"),8000) : opis = "WYNAGRODZENIE"
       klucz = pers.wezpole_s("xv:nrlisty")+"*"+prac+"*"+no+"*"+opis+"*"+pers.wezpole_s("xv:kontown")+"*"+pers.wezpole_s("xv:kontoma")+"*"+pers.wezpole_s("xv:kontorzl")+"*"+pers.wezpole_s("xv:kontorozlma")
       klucz1 = pers.wezpole_s("xv:nrlisty")+"*"+prac+"*"+no+"*"+opis+"*"+pers.wezpole_s("xv:kontown")+"*"+pers.wezpole_s("xv:kontoma")
       if not pers.rejop("xx:znajdzrek",klucz) :
          pers.rejop("xx:dodajrek")
          pers.rejop("xv:przeniespola","xx:")
          pers.xrejwstawp_s("xx:opisdekr",opis)
          pers.xrejwstawp_s("xx:klucz1",klucz1)
          pers.xrejwstawp_s("xx:klucz2",klucz)
       else :
          if pers.kwotalop("<",pers.wezpole_k("xv:rodzdekr"),8000) : 
              pers.xrejdodajp_k("xx:placab",pers.wezpole_k("xv:placab"))
          #elif pers.kwotalop(">=",pers.wezpole_k("xv:rodzdekr"),9990) : 
              #pers.xrejdodajp_k("xx:placab",pers.wezpole_k("xv:placab"))
          else :
           if not pers.rejwezp_s("XV:klucz2")==kluczx :
              pers.xrejdodajp_k("xx:placab",pers.wezpole_k("xv:placab"))
       pers.rejop("xx:zapiszrek")
       kluczx = pers.rejwezp_s("xv:klucz2")  
      pers.rejop("XV:zmienkluczrej",str(kl)) 

   #pers.rejop("xx:zobaczdbf")
   pers_g.gl_kopiuj_rej("XX:","X:")
   pers.rejop("xx:zamknijrej")
   #pers.rejop("x:zobaczdbf")

def przepisz_temp_his() :
   pers_g.gl_kopiuj_rej("XV:","XH:")

def jest_umowa_mies(zm) :
   v = pers.daj_zS(zm)
   return v == "Mies"

def jest_umowa_mies_r(re) :
   return pers.rownep_s(re+"fplatnosc","Mies")    

// -----------
def wpisz_nazwisko(r) :
   na =  pers.wezpole_s("C:nazwisko")+ "  "+ pers.wezpole_s("C:imie1")
   pers.xrejwstawp_s(r+"nazw",na)
   pers.xrejwstawp_s(r+"stanow",pers.wezpole_s("c:stanow"))
   
def ustaw_rodzaj_wyplaty(r="c:") :
   if not pers.pustepole(r+"rodzaj_wyplaty") : ro = pers.wezpole_k(r+"rodzaj_wyplaty")
   else :
     ro = 0
     if not pers.pustepole(r+"nazwa_bank2") : ro = 2
     if not pers.pustepole(r+"nazwa_bank") : ro = 1     
   pers.ustaw_zK("rodzaj_wyplaty",ro)                    
   
def ustaw_rodzaj_wyplaty_prac() :
  if not pers.pustepole("rodzaj_wyplaty") : return    
  ustaw_rodzaj_wyplaty("")
  pers.xrejwstawp_k("rodzaj_wyplaty",pers.daj_zK("rodzaj_wyplaty"))

// -----------

def __ustaw_k(kw,k1,p) :
  k2 = pers.wezpole_k(p)
  if pers.pustepole(p) : return k2
  k_sum = pers.kwotarop("+",k1,k2,2)
  if pers.kwotalop("<",kw,k_sum) :
     k2 = pers.kwotarop("-",kw,k1,2)
     pers.xrejwstawp_k(p,k2)     
  return k2     

def __ustaw_kwoty(kw,p_d,p1,p2) :
  k1 = pers.wezpole_k(p1)        
  if not pers.pustepole(p1) :
    if pers.kwotalop("<",kw,k1) :
        k1 = kw
        pers.xrejwstawp_k(p1,k1)
  k2 = __ustaw_k(kw,k1,p2)	
  k_sum = pers.kwotarop("+",k1,k2,2)  
  k3 = pers.kwotarop("-",kw,k_sum,2)
  pers.xrejwstawp_k(p_d,k3)  

def ustaw_kwoty_przelew(r="a:") :
   #pers.okalert("r="+r)
   if pers.pustepole(r+"dowypl") :
      pers.xrejwstawp_k(r+"kwotaprzel")       
      pers.xrejwstawp_k(r+"kwotaprzel2")       
      pers.xrejwstawp_k(r+"kwotagotowka")       
      return
       
   if pers.pustepole(r+"rodzaj_wyplaty") : rodzaj = 1
   else : rodzaj = pers.wezpole_i(r+"rodzaj_wyplaty")   
   kw = pers.wezpole_k(r+"dowypl")   
   if rodzaj == 0 : __ustaw_kwoty(kw,r+"kwotagotowka",r+"kwotaprzel",r+"kwotaprzel2")
   elif rodzaj == 1 : __ustaw_kwoty(kw,r+"kwotaprzel",r+"kwotaprzel2",r+"kwotagotowka")
   elif rodzaj == 2 : __ustaw_kwoty(kw,r+"kwotaprzel2",r+"kwotaprzel",r+"kwotagotowka")
   else : pers.okalert("Nieznanny rodzaj wyp|laty " + str(rodzaj) + " !")          
 
// ----------------------

def ustaw_kwoty_przelewx() :
   if pers.pustepole("a:dowypl") :
      pers.xrejwstawp_k("a:kwotaprzel")       
      pers.xrejwstawp_k("a:kwotaprzel2")       
      pers.xrejwstawp_k("a:kwotagotowka")       
      return
       
   if pers.pustepole("a:rodzaj_wyplaty") : rodzaj = 1
   else : rodzaj = pers.wezpole_i("a:rodzaj_wyplaty")   
   kw = pers.wezpole_k("a:dowypl")   
   if rodzaj == 0 : __ustaw_kwoty(kw,"a:kwotagotowka","a:kwotaprzel","a:kwotaprzel2")
   elif rodzaj == 1 : __ustaw_kwoty(kw,"a:kwotaprzel","a:kwotaprzel2","a:kwotagotowka")
   elif rodzaj == 2 : __ustaw_kwoty(kw,"a:kwotaprzel2","a:kwotaprzel","a:kwotagotowka")
   else : pers.okalert("Nieznanny rodzaj wyp|laty " + str(rodzaj) + " !")          
 
// ----------------------
def drukuj_nominaly_init() :
  from pla_u import drukuj_nominaly      
  global dr_nom
  dr_nom = drukuj_nominaly.drukuj_nominaly_CLASS()

def drukuj_nominaly_dodaj() :
  dr_nom.dodaj_got()
  
def drukuj_nominaly_koniec() :
  global dr_nom
  del dr_nom
      
def drukuj_nominaly() :
  dr_nom.drukuj()
  
def drukuj_nominaly_gotowka() :
  gotowka = pers.daj_zK("gotowka")    
  dr_nom.drukuj_k(gotowka)  

// -------------

def dr_lista_place_init(sort=0) :
  from pla_u import lista_numer
  global list_numer
  list_numer = lista_numer.placa_lista_numer_CLASS(sort)
  
def dr_lista_po_porzadek() :
  list_numer.ustaw_porzadek_nazwa()
  pers.dialog_op("wyswietlpozycje","25")         
  
def dr_lista_place_stop(zapam) :  
  global list_numer
  list_numer.koniec(zapam)  
  del list_numer
    
def dr_lista_place_stop_umowa() :
  global list_numer
  list_numer.koniec(1)
  li_koniec_umowa()
  del list_numer

def dr_lista_daj_numer() :
  list_numer.daj_numer()    
  
def drukuj_place_zatwierdzaj() :
  list_numer.p_zatwierdzaj()

def li_zmien_numer() :
  probna = pers.daj_zL("T_LISTA_PROBNA")    
  if probna : pers.ustaw_zK("T_LISTA_NUMER")
  else : list_numer.daj_numer()
  pers.dialog_op("wyswietlpozycje","32")
  
def li_ustaw_jeszcze_raz() :
  list_numer.ustaw_jeszcze_raz()    
  
def li_wez_rachunek(pocz,zapam=1) :
  pers.ALG_RES = list_numer.wez_rachunek(pocz,zapam,0)
  
def li_wez_rachunek_pom(pocz,zapam=1) :
  pers.ALG_RES = list_numer.wez_rachunek(pocz,zapam,1)
  
def li_zapam_rachunek() :
  list_numer.zapam_rachunek()     
  
def li_zapam_umowa() :
  list_numer.zapam_umowa()

def li_koniec_umowa() :
  list_numer.koniec_umowa()

def li_drukuj_poprzednia() :
  list_numer.poprzednia_lista()
  
def li_sortuj_prac() :
  list_numer.sortuj_prac()
        
def li_znajdz_zlecenie_alg() :
  if list_numer.znajdz_umowa("Z:") :
    pers.ALG_RES = 1
    return
  pers.ALG_RES = 0


// -----------

def dr_lista_szukaj_init() :
  from pla_u import lista_szukaj
  global list_szukaj
  list_szukaj = lista_szukaj.lista_drukuj_szukaj_CLASS()
  
def dr_lista_szukaj_nast(pocz) :
  pers.ALG_RES = list_szukaj.daj_nast(pocz)
  
def dr_lista_szukaj_stop() :
  global list_szukaj
  del list_szukaj    
  
// ------------


def konto_przelew_f2() :
#  pers.ustaw_zS("id_modul","PLC_")        
#  pers_g.gl_f2_rejestr_ustaw("PLC_KONTABANK.RXR","konto_bank",pers.daj_zS("dluzkonto"))

  pers.callalgfile("przelewy\\przelewy.alg","!PYT.import place_p_g | place_p_g.p_konto_przelew_f2()")
  
def konto_przelew_po_pole() :
    pers.ustaw_zS("id_modul","PLC_")        
    if pers.apuste("dluzkonto") :
      pers.ustawazmienna_S("dluznazwabanku")
      pers.ustawazmienna_S("dluznumerbanku")
    else :      
      ko = pers.dajazmienna_S("dluzkonto")
      import place_p_g
      place_p_g.ustaw_ko(ko)
      pers.callalgfile("przelewy\\przelewy.alg","!PYT.import place_p_g | place_p_g.p_konto_przelew_po_pole()")
      
def konto_ustaw_zm(r) :    
    pers.ustaw_zS("dluzkonto",pers.wezpole_s(r+"dluzkonto"))
    pers.ustaw_zS("dluznazwabanku",pers.wezpole_s(r+"dluznazwabanku"))
    pers.ustaw_zS("dluznumerbanku",pers.wezpole_s(r+"dluznumerbanku"))
    
def konto_zapam_zm(r) :    
    pers.xrejwstawp_s(r+"dluzkonto",pers.daj_zS("dluzkonto"))    
    pers.xrejwstawp_s(r+"dluznazwabanku",pers.daj_zS("dluznazwabanku"))    
    pers.xrejwstawp_s(r+"dluznumerbanku",pers.daj_zS("dluznumerbanku"))    
      
def konto_przelew_po_pole_rej() :
    konto_ustaw_zm("")        
    konto_przelew_po_pole()    
    konto_zapam_zm("")    
    
// ------
def place_nalicz_platnik() :
  pers.callalgfile("place\place_nalicz_platnik.py","!PYT.import place_nalicz_platnik | place_nalicz_platnik.licz()")
  
//  -----

def zamien_date_alg(r,min=0) :
    if pers.pustepole(r) :
            pers.ustaw_zS("D_STRING")
            return
    da = pers.wezpole_d(r)
    if min != 0 : da = pers.datarop("-",da,min)    
    da_s = pers.studatas(da)
    na_s = pers.strcut(da_s,8,2) + pers.strcut(da_s,5,2) + pers.strcut(da_s,0,4)
    pers.ustaw_zS("D_STRING",na_s)
    
def ustaw_data_platnik_u_z(min) :
    n = pers.fillstring(1," ")
    zamien_date_alg("datarap",min)
    pers.ustaw_zS("x_dataobow",n)
    pers.ustaw_zS("x_datadobrow",n)
    if pers.pustepole("ubezp_dobrow") or not pers.wezpole_l("ubezp_dobrow") : 
       pers.ustaw_zS("x_dataobow",pers.daj_zS("D_STRING"))
    else :
       pers.ustaw_zS("x_datadobrow",pers.daj_zS("D_STRING"))
       # 2005.06.02
       pers.ustaw_zS("x_dataobow",pers.daj_zS("D_STRING"))


def sprawdz_rodzaj_wyplaty(r,r_p="") :
    if not pers.pustepole(r+"rodzaj_wyplaty") : return
    if r_p == "" :
        pers.defzmiennas("L_TT_PRAC_REJESTR","ZLBIORCA.RXR")
        rej = pers.daj_zS("L_TT_PRAC_REJESTR")
        pers.plik_op("xxx:otworzrej1",rej)
        prac = pers.wezpole_s(r+"pracownik")
        if not pers.plik_op("xxx:znajdzrek",prac) : pers.okalert(rej,"Nie znaleziono pracownika " + prac)
        ustaw_rodzaj_wyplaty("xxx:")
        rodz = pers.daj_zK("rodzaj_wyplaty")
        pers.plik_op("xxx:zamknijrej")
    else :
        ustaw_rodzaj_wyplaty(r_p)
        rodz = pers.daj_zK("rodzaj_wyplaty")
    pers.xrejwstawp_k(r+"rodzaj_wyplaty",rodz)
    if pers.pustepole(r+"rodzaj_wyplaty") :
       pers.okalert(pers.wezpole_s(r+"pracownik"),"Puste pole - rodzaj wyp|laty")
       pers.xrejwstawp_k(r+"rodzaj_wyplaty",0)

def jest_linux() :
  pers.dyskop("WezSystemX")
  if pers_g.gl_daj_dstring() == "X-" : return 1
  return 0  
  
# ---- porzadek drukowania

def place_drukuj_porzadek_init() :
  import pla_u.umowy_sortuj_lista
  global so_lista
  so_lista = pla_u.umowy_sortuj_lista.umowy_lista_sort_CLASS()

def place_drukuj_porzadek_po_nazwa() :
  so_lista.ustaw_porzadek_nazwa()
  pers.dialog_op("wyswietlpozycje","25")
  
def place_drukuj_porzadek_stop() :
  global so_lista         
  so_lista.stop()
  del so_lista
        
def place_drukuj_wez_e_alg(pocz) :
  pers.ALG_RES = so_lista.wez_e(pocz)        
      
% PY.place-konto-przelewy-obsluga$MODUL=place_p_g$

import pers,pers_g

def p_konto_przelew_f2() :
  pers.ustaw_zS("id_modul","PLC_")        
  pers_g.gl_f2_rejestr_ustaw("PLC_KONTABANK.RXR","konto_bank",pers.daj_zS("dluzkonto"))

def ustaw_ko(ko) :
   import place_p_g        
   place_p_g.ko = ko        
  
def p_konto_przelew_po_pole() :  
      import place_p_g        
      ko = place_p_g.ko        
      pers.rejop("otworzrej1","PLC_KONTABANK.RXR")
      if not pers.rejop("znajdzrek",ko) :
        pers.rejop("zamknijrej")
        pers.okalert("Nie ma banku z takim kontem !")
        pers_g.gl_ustaw_nie_ok()
        return 
      if  pers.rejop("x:otworzrejsprawdz","PARAMPRZELEW.RJR") :
         #pers.rejop("x:zobaczdbf")
         if not pers.rejop("x:wezpierwszyrek") :
              pers.rejop("x:dodajrek")
              pers.xrejwstawp_s("x:nazwa1",pers.daj_zS("dluznazwa1"))
              pers.xrejwstawp_s("x:nazwa2",pers.daj_zS("dluznazwa2"))
              pers.xrejwstawp_s("x:kodmiasto",pers.daj_zS("dluzkodmiasto"))
              pers.xrejwstawp_s("x:adres",pers.daj_zS("dluzadres"))
              pers.xrejwstawp_s("x:konto",pers.daj_zS("dluzkonto"))
              pers.rejop("x:zapiszrek")
         pers.rejop("x:zamknijrej")      
      pers.ustawazmienna_S("dluznazwabanku",pers.rejwezp_s("nazwa_bank"))
      pers.ustawazmienna_S("dluznumerbanku",pers.rejwezp_s("numer_bank"))
      pers.rejop("zamknijrej")           
        
