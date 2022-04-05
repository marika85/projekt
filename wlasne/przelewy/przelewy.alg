//////////////////////////////////////////////////////////////////////////////
//
// Perseus Spolka z o.o 
// Wszystkie prawa zastrzezone
// 
// Data utworzenia: 2001.09.01
// Historia zmian
// Data:2001.09.12
//   Zmieniono .....
//   
// wersja 2.01 z 06.11.17
//
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// ============================================================================
//////////////////////////////////////////////////////////////////////////////
% NA_DZIEN.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Termin"
##10,0,ACP,,,,,,,,ZMIENNA:T_NA_DZIEN,ydate
##0,,ADP,,@3
##1,,ADP,,@4

  Do dnia: #10    #
  
  
      #0          #
      
      
      #1          #
//
% WEZ-KURS-KUPNA.ALG
  callalg["X-WEZ-KURS"]
% WEZ-KURS-SPRZEDAZY.ALG
  callalg["X-WEZ-KURS"]
//  
% XX-WEZ-KURS-KUPNA.ALG
// pobranie z rejestry kursow 
// zmienne wejsciowe:
//     kurs_data := zmienna data   (do klucza musi byc)
//     kurs_waluta := zmienna tekst symbol waluty (do klucza musi byc) 
//     kurs_tryb := 0 - bez dodania 1 - dodanie kursu 
//     moze byc kurs_opis := zmienna tekst
// zmienne wyjsciowe:
//  A_OK: .T., jest kurs .N. - nie  ma kursu, uzytkownik zrezygnowal
//     kurs_kwota := zmienna kwota
//  brak   kurs_przelicznik := zmienna kwota
//     kurs_opis := zmienna tekst
//
  kurs_kwota := .
  kurs_opis := ""
  a_ok := .N.
  if ((kurs_data = '') or (kurs_waluta = "")) ExitAlg[0]
  if (not(kurs_waluta == "PLN")) goto waluta_00
    kurs_kwota := 1
    ExitAlg[0]
  waluta_00:
  if (RejOp["OtworzRejSprawdz","KURSY.RXR"]) goto dalej0
    OkAlert["Nie mog|e otworzy|c tabeli kurs|ow !"]
    ExitAlg[0]  
  dalej0:
  if (RejOp["ZnajdzRek",ToStr["#kurs_data#S*#kurs_waluta#S"]]) goto dalej1
   if (not(kurs_tryb = 0)) goto tr0
     OkAlert["Brak kursu waluty "+kurs_waluta+" na dzie|n "+kurs_data+" !"]
     goto koniec
   tr0:
   if (not(kurs_tryb = 1)) goto tr1
     if (not(YesAlert["Brak kursu waluty "+kurs_waluta+" na dzie|n "+kurs_data+" !$ Czy doda|c ?"])) goto koniec
     kursy_klucz := 1
     a_ok := .N.
     RejOp["DodajRek",""]
     RejWstawP_D["kurs_data",kurs_data]
     RejWstawP_S["kurs_waluta",kurs_waluta]
     RejWstawP_S["kurs_opis","|Sredni kurs NBP"]
     RejOp["WywolajBox","0"]
     if (not(a_ok)) goto tr10
       RejOp["ZapiszRek",""]
       goto dalej1
     tr10:
       RejOp["UsunRek",""]
     goto koniec
   tr1:
  dalej1:
  if (not(pustepole["kurs_kwota_k"])) goto dalej01
   if (not(kurs_tryb = 0)) goto tr001
     OkAlert["Brak kursu kupna waluty "+kurs_waluta+" na dzie|n "+kurs_data+" !"]
     goto koniec
   tr001:
   if (not(kurs_tryb = 1)) goto tr101
     if (not(YesAlert["Brak kursu kupna waluty "+kurs_waluta+" na dzie|n "+kurs_data+" !$ Czy doda|c ?"])) goto koniec
     kursy_klucz := 1
     a_ok := .N.
     RejOp["WywolajBox","0"]
     if (not(a_ok)) goto tr1001
       RejOp["ZapiszRek",""]
       goto dalej01
     tr1001:
       RejOp["UsunRek",""]
     goto koniec
   tr101:
  dalej01:
    a_ok := .T.
    kurs_kwota := RejWezP_K["kurs_kwota_k"]
    kurs_opis := RejWezP_S["kurs_opis"]
    if (((kurs_kwota = 0 ) or (kurs_kwota = .))) a_ok := .N.
    if (not(a_ok)) goto koniec
//  sprawdzenie kursu miejsc po przecinku 
        kurs_przelicznik := dewprzelkurs[kurs_waluta]
        if (kurs_kwota < 10) kurs_kwota := round[kurs_kwota*kurs_przelicznik,2]
//
  koniec:
  Rejop["ZamknijRej",""]
  ExitAlg[0]
//
% XX-WEZ-KURS-SPRZEDAZY.ALG
// pobranie z rejestry kursow 
// zmienne wejsciowe:
//     kurs_data := zmienna data   (do klucza musi byc)
//     kurs_waluta := zmienna tekst symbol waluty (do klucza musi byc) 
//     kurs_tryb := 0 - bez dodania 1 - dodanie kursu 
//     moze byc kurs_opis := zmienna tekst
// zmienne wyjsciowe:
//  A_OK: .T., jest kurs .N. - nie  ma kursu, uzytkownik zrezygnowal
//     kurs_kwota := zmienna kwota
//  brak   kurs_przelicznik := zmienna kwota
//     kurs_opis := zmienna tekst
//
  kurs_kwota := .
  kurs_opis := ""
  a_ok := .N.
  if ((kurs_data = '') or (kurs_waluta = "")) ExitAlg[0]
  if (not(kurs_waluta == "PLN")) goto waluta_00
    kurs_kwota := 1
    ExitAlg[0]
  waluta_00:
  if (RejOp["OtworzRejSprawdz","KURSY.RXR"]) goto dalej0
    OkAlert["Nie mog|e otworzy|c tabeli kurs|ow !"]
    ExitAlg[0]  
  dalej0:
  if (RejOp["ZnajdzRek",ToStr["#kurs_data#S*#kurs_waluta#S"]]) goto dalej1
   if (not(kurs_tryb = 0)) goto tr0
     OkAlert["Brak kursu waluty "+kurs_waluta+" na dzie|n "+kurs_data+" !"]
     goto koniec
   tr0:
   if (not(kurs_tryb = 1)) goto tr1
     if (not(YesAlert["Brak kursu waluty "+kurs_waluta+" na dzie|n "+kurs_data+" !$ Czy doda|c ?"])) goto koniec
     kursy_klucz := 1
     a_ok := .N.
     RejOp["DodajRek",""]
     RejWstawP_D["kurs_data",kurs_data]
     RejWstawP_S["kurs_waluta",kurs_waluta]
     RejWstawP_S["kurs_opis","|Sredni kurs NBP"]
     RejOp["WywolajBox","0"]
     if (not(a_ok)) goto tr10
       RejOp["ZapiszRek",""]
       goto dalej1
     tr10:
       RejOp["UsunRek",""]
     goto koniec
   tr1:
  dalej1:
  if (not(pustepole["kurs_kwota_k"])) goto dalej01
   if (not(kurs_tryb = 0)) goto tr001
     OkAlert["Brak kursu sprzeda|zy waluty "+kurs_waluta+" na dzie|n "+kurs_data+" !"]
     goto koniec
   tr001:
   if (not(kurs_tryb = 1)) goto tr101
     if (not(YesAlert["Brak kursu sprzeda|zy waluty "+kurs_waluta+" na dzie|n "+kurs_data+" !$ Czy doda|c ?"])) goto koniec
     kursy_klucz := 1
     a_ok := .N.
     RejOp["WywolajBox","0"]
     if (not(a_ok)) goto tr1001
       RejOp["ZapiszRek",""]
       goto dalej01
     tr1001:
       RejOp["UsunRek",""]
     goto koniec
   tr101:
  dalej01:
    a_ok := .T.
    kurs_kwota := RejWezP_K["kurs_kwota_s"]
    kurs_opis := RejWezP_S["kurs_opis"]
    if (((kurs_kwota = 0 ) or (kurs_kwota = .))) a_ok := .N.
    if (not(a_ok)) goto koniec
//  sprawdzenie kursu miejsc po przecinku 
        kurs_przelicznik := dewprzelkurs[kurs_waluta]
        if (kurs_kwota < 10) kurs_kwota := round[kurs_kwota*kurs_przelicznik,2]
//
  koniec:
  Rejop["ZamknijRej",""]
  ExitAlg[0]
//////////////////////////////////////////////////////////////////////////////
//
// Perseus Spolka z o.o 
// Wszystkie prawa zastrzezone
// 
// Data utworzenia: 2001.09.01
// Historia zmian
// Data:2001.09.12
//   Zmieniono .....
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// ============================================================================
// home banking dla:(bre.bre)
// Bank BRE - BRESOK  (bre.bre)
// Kredyt Bank S.A -(kredyt.txt)
// Polski Bank Inwestycyjny S.A - KONTAKT   - (pbi.txt)
// PeKaO S.A. - MultiCash  - (pkosa.pli)
// PeKaO S.A. - MultiCash v2.xx  - (pkosa1.pli)
// Bank Handlowy - GONIEC-K (stara wer.)  - (goniec.txt)
// Bank Handlowy - GONIEC-K (nowa wer.)  - (goniec2.txt)
// Bank Handlowy - IBIS  - (xtdtrp)
// Bank Handlowy - GONIEC  - (goniec3.txt)
// Hank Handlowy - GONIEC 2000 -(goniec4.txt)
// VEREINSBANK Polska SA -(verbank.pla)
// ING BANK - (intzv.int)
// Bank PH-KRAK|OW  - (ecimp3.txt)
// Societe Generale - Elixir  - (societe.txt)
// Societe Generale ver 3.1 - (societe1.txt)
// Wielkopolski Bank Handlowy (wbk.txt) i wbk_unl
// CITIBANK (citi.txt)
// BIG Bank (big.txt)
// Bank Ochrony Srodowiska (bos.txt)
// BANK PRZEMYSLOWY (DEFCOM 2000)
// CITY DIRECT (internetowy)
// VIDEOTEL 5.0
// SOFTBANK
// D.S
// ============================================================================
% KL-POWIAZANI.ALG
 if (rejop["otworzrej","KLPOWIAZANI.RXR"]) okalert["aa"]
 finnop["@3openmainx",""]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
 
 finnop["SETP","203/"]
 if (finnop["tofirstdok",""]) goto petla
 petla:
 if (k_klnazwa == "") goto next
 if (rejop["znajdzrek",k_klnazwa]) goto next
 rejop["dodajrek",""]
 rejwstawp_s["p_kl_sym",k_klnazwa]
 next:
 if (finnop["tonextdok",""]) goto petla
 finnop["close",""]
 rejop["zamknijrej",""]
//
% KASUJ-ZNAKI.ALG
  tekst := d_string
  znaczek := "'"
  CallAlg["pcut-znak"]
  znaczek := "\"
  CallAlg["pcut-znak"]
  znaczek := ":"
  CallAlg["pcut-znak"]
  znaczek := ","
  CallAlg["pcut-znak"]
  d_string := tekst
//
% PCUT-ZNAK.ALG 
// zmienne tekst := string znaczek := string
// obciecia znakow roznych i wstawia spacje
  lp := 1
  petla:
  czy := StrIn[znaczek,tekst]
  if (czy = -1) ExitAlg[0]
  temp1 := StrCut[tekst,0,czy]
  temp2 := StrCut[tekst,czy+lp,StrLen[tekst]-czy]
  tekst := temp1+" "+temp2
  goto petla
ExitALg[0]
//
% KONWERSJA.ALG
  exitalg[0]
  id_modul := ""
  if (not RejOp["SprawdzPlikRej","XPARAMPRZELEW.RJR"]) goto dalej1
    RejOp["V:OtworzRejSprawdz","XPARAMPRZELEW.RJR"]
    if (not(RejOp["V:WezPierwszyRek",""])) goto dalej0
      RejOp["V:ZamknijRej",""]
      rezygnujesz_konw := .N.
      CallAlg["przenies-nowa"]
    if (rezygnujesz_konw) ExitAlg[0]
    goto dalej1
    dalej0:
  RejOp["V:ZamknijRej",""]
// ---------------------------------------------------
  dalej1:
  wersja := "1.01"
  wersja_old := ""
  CallAlg["ustal-wersje-przel"]
  if (wersja == wersja_old) ExitAlg[0]
  CallAlg["konwersja-paramprzelew"]
  CallAlg["konwersja-kontabank"]  
  id_modul := "PLC_"
  CallAlg["konwersja-kontabank"]  
  CallAlg["konwersja-przelew"]
  CallAlg["konwersja-przelew-zapisy"]
  CallAlg["konwersja-przelew-zapisy1"]
  CallAlg["konwersja-klplus"]
//
//====================================================================
// slownik 99 mozna rozwijac tylko przyniesc do firmy
//====================================================================
% 99.DIC
"ieprzelew_1",24,,"Przelew z boczkiem (IExplorer t|lo)"
"ieprzelew",20,,"2x Przelew zwyk|ly (IExplorer)"
"ieprzelewzus",22,,"2x Przelew ZUS (IExplorer)"
"ieprzelewpod",21,,"2x Przelew podatkowy (IExplorer)"
"ieprzelew4",23,,"4x Przelew zwyk|ly (IExplorer)"
"przelew",15,,"Przelew zwyk|ly (Program zewn|etrzny)"
"przelewpod",16,,"Przelew podatkowy (Program zewn|etrzny)"
//"przstd",9,,"Wydruk do formatu STAND. od XX roku"
"laser4",10,,"Dr. laserowa (4 kopie na A4)"
"las__4pod",18,,"Dr. laserowa(4 kopie na A4 - uk|l.podatkowy)"
"laser2",12,,"Dr. laserowa (2 kopie na A4)"
"las__2",17,,"Dr. laserowej(2 kopie na A4 z boczkiem)"
"atram4",11,,"Dr. atramentowa(4 kopie na A4)"
"atram2",13,,"Dr. atramentowa(2 kopie na A4)"
"tasma",14,,"Dr. ig|lowa (wst|ega)"
//"raiff",1,,"RAIFFEISEN-CENTROBANK S.A."
//"amer",2,,"AmerBank Bank Ameryka|nski w Polsce"
//"przelew",3,,"Wydruk czterech kopii na formacie A4"
//"przell4",4,,"Wydruk (wielko|s|c L4) z kopiami"
//"przelew1",5,,"Druk przelewu 31 X 29,5 cm."
//"przelew2",6,,"Wydruk na papierze sk|ladankowym (3 na A4)"
//"przelew3",7,,"Wydruk na pap.sk|l.(3 na A4 BELLERDRUK)"
//"przelorb",8,,"Wydruk na pap.sk|l.(4 na A4)"
//
// slownik do emisji na plik txt
% 98.DIC
//"bre.bre",1,,"BRE Bank - BRESOK wersja 3.9"
"bre1.bre",19,,"BRE Bank - BRESOK wersja 4.0"
"bre2.pli",34,,"BRE Online"
"kredyt.txt",2,,"Kredyt Bank S.A"
"pbi.txt",3,,"Polski Bank Inwestycyjny S.A - KONTAKT"
//"pkosa.pli",4,,"PeKaO S.A. - MultiCash"
"pkosa1.pli",14,,"PeKaO S.A. - MultiCash v2.xx"
//"goniec4.txt",12,,"Bank Handlowy - GONIEC 2000 v2"
//"goniec5.txt",18,,"Bank Handlowy - GONIEC 2000 v3"
"verbank.pla",8,,"VEREINSBANK Polska SA"
"intzv.int",9,,"ING BANK"
"ecimp3.txt",11,,"Bank BPH-KRAK|OW"
"societe.txt",13,,"Societe Generale - Elixir"
"societe1.txt",15,,"Societe Generale ver 3.1"
"citi.txt",17,,"CITIBANK"
"big.txt",20,,"BIG Bank"
"pkobp.txt",21,,"PKOBP  NetBANK"
"ipkobp.txt",36,,"iPKOBP Biznes"
"bos.txt",22,,"BO|S - BOSCOM"
"defcom.txt",23,,"DEFCOM200 - Bank przemys|lowy"
"citidir.txt",24,,"Bank Handlowy CitiDirect"
"bzwbk.txt",35,,"BZWBK"
//"wbk.txt",16,,"Wielkopolski Bank Handlowy Mninibank"
"wbk_unl.txt",25,,"WBK Mninibank"
"wbk_uni.txt",29,,"Wielkopolski Bank Handlowy Minibank 24"
//"vtel1.txt",26,,"VIDEOTEL 5.0 Format I"
//"vtel2.txt",27,,"VIDEOTEL 5.0 Format II"
//"vtel3.txt",32,,"VIDEOTEL 5.5 Format I"
"vtel4.txt",33,,"VIDEOTEL 5.5 Format II"
"heba.txt",28,,"HEUTES BASET"
"raif.txt",30,,"Raiffeisen Bank Polska"
"softbank.txt",31,,"SoftBank"
"mt103",37,,"Mt103 Millenium"
// PS dla szpitala w Koszalinie
//"bosps.txt",99,,"BO|S - BOSCOM (nowa wersja)"
//
// ---------------------------------------------
// slownik oodzialow dla BRE
// ---------------------------------------------
% 97.DIC
"02",2,,"Warszawa"
"03",3,,"|L|od|x"
"04",4,,"Lublin"
"05",5,,"Olsztyn"
"06",6,,"Pozna|n"
"07",7,,"Krak|ow"
"08",8,,"Szczecin"
"09",9,,"Wroc|law"
"10",10,,"Gda|nsk"
"11",11,,"Katowice"
"15",15,,"Bydgoszcz"
"16",16,,"Bielsko-Bia|la"
"18",18,,"Gdynia"
"19",19,,"Rybnik"
"20",20,,"Rzesz|ow"
"21",21,,"Gliwice"
"22",22,,"D|abrowa G|ornicza"
"23",23,,"Cz|estochowa"
"31",31,,"Gorz|ow Wielkopolski"
"34",34,,"Opole"
"37",37,,"Bia|lystok"
"38",38,,"Warszawa2"
"40",40,,"Kalisz"
// -------------------- slownik std ------------
% 96.DIC
"01",1,,"Super"
"02",2,,"Wysoki"
"03",3,,"|Sredni"
"04",4,,"Normalny"
"05",5,,"Niski"
"06",6,,"Brak"
"98",98,,"Czasowa blokada kontrahenta"
"99",99,,"Blokada kontrahenta"
% 95.DIC
"01",1,,"Super"
"02",2,,"Wysoki"
"03",3,,"|Sredni"
"04",4,,"Normalny"
"05",5,,"Niski"
"06",6,,"Brak"
"98",98,,"Czasowa blokada kontrahenta"
"99",99,,"Blokada kontrahenta"
// ----------------------- slownik sod - dostawcy
% 95.DICX
"06",6,,"Brak"
"10",10,,"Odbiorca pewny"
"11",11,,"Odbiorca prawdopodobny"
"12",12,,"Odbiorca w|atpliwy"
"13",13,,"Odbiorca brak wp|lat"
"98",98,,"Czasowa blokada kontrahenta"
"99",99,,"Blokada kontrahenta"
// ----------------------- slownik sod - odbiorcy 
% 96.DICX
"01",1,,"Dost.Kontraktowi Super"
"02",2,,"Dost.Kontraktowi Wysoki"
"03",3,,"Dostawcy - Klienci |Sredni"
"04",4,,"MS BH Kontr. Normalny"
"05",5,,"MS Niekontr.potw. Niski"
"06",6,,"Inni - niekontraktowi Brak"
"07",7,,"Dost. zarz|ad niekontr."
"08",8,,"Dostawcy inni"
"97",97,,"Zak|lad Pracy Chronionej"
"98",98,,"Czasowa blokada kontrahenta"
"99",99,,"Blokada kontrahenta"
//
% 92.DIC
"UDEFA",5,,"Brak polskich liter"
"LATIN2",1,,"Latin2 PC852"
"MAZOVIA",2,,"Mazovia"
"ISO-LATIN2",3,,"Iso-latin2 WINDOWS"
"ISO8859-LATIN2",4,,"ISO-8859-2 ISO LATIN2"
//
% TABLICA-AKCJI
%<KLPLUSALGO.XXX
%<KONTABANKALGO.XXX
%<PLC_KONTABANKALGO.XXX
%<NKBALGO.XXX
%<PARAMBREALGO.XXX
%<KURSYALGO.XXX
%<SWIFTALGO.XXX
%<PRLDOKALGO.XXX
%<ZPRLDOKALGO.XXX
%<TYPPRLALGO.XXX
%<PCITYDEKRALGO.XXX
%<KLPOWIAZANIALGO.XXX
%<MULTI_DEKRETY_P_ALGO.XXX
%<MULTI_DEKRETY_R_ALGO.XXX
%<<TABLICA-AKCJI
//
//
% REJDEFTABLE
,0,0,"PARAMPRZELEW.RJR",przelew\pprzelew,1      # parametry przelewow
,0,0,"PARAMBRE.RXR",przelew\pbre,1              # parametry do emisji na plik dla BRE
,0,0,"PARAMGENOMIN.RXR",przelew\pgen_omin,0     # wykaz kont pomijanyc przez generator
//
30,0,0,"KONTABANK.RXR",przelew\kbank,1          # rejetsr k.bankowych
31,0,0,"KLPLUS.RXR",klplus,1                    # rejestr doad.kontrahentow
,0,0,"KLPRIOR.RXR",klprior,1                    # priorytety dla kontrahentow (dostawcy)
,0,0,"KLPRIORNAB.RXR",klpriornab,1              # priorytety dla kontrahentow (nabywcy)
,0,0,"KLPOWIAZANI.RXR",klpowiazani,1            # symbole kontrahentow powiazanych
29,0,0,"NKB.RXR",nkb,0                          # 29,rej numerow kierunkowych
,0,0,"SWIFT.RXR",swift,0                        # rej numerow swift zagr
,0,0,"PCITYDEKR.RXR",przelew\pcity_dekr,0       #
,0,0,"MULTI_DEKRETY_P.RXR",przelew\pmulti_dekr_p,0       #
,0,0,"MULTI_DEKRETY_R.RXR",przelew\pmulti_dekr_r,0       #
// 
,0,0,"PRZELEW.RJR",przelew\przelew,1            # plik naglowkowy do przelewow
,0,0,"ZPRZELEW.RJR",przelew\przelew,1           # plik naglowkowy do przelewow
,0,0,"PRZEZAP.RJR",przelew\przezap,1            # zapisy do przelewow
,0,0,"PRZEZAP1.RJR",przelew\przezap1,1          # zapisy do przelewow k.
,0,0,"TYPPRL.RXR",przelew\przelew_typ,1         # rejestr typow przelewow
,0,0,"GENDOKPRL.RXR",przelew\przelew_gen_dok,1  # rejestr dokumentow z generatora
// tmp
,0,0,"PRZETMP.RJR",.,2                          # tmp dla zapisow 
,0,0,"PRZETMP1.RJR",.,2                         # tmp dla zapisow k.
,0,0,"PRZETMP2.RJR",.,2                         # tmp dla wyszukiwanych zapisow po datach faktury
,0,0,"GLOB.TMP",glob,1                          # tmp dla okresu ksiegowego
,0,0,"DEWTMP.TMP",dewtmp,4                      # tmp dla dewiz ?
,0,0,"PSORT.TMP",psort				                  # tmp do sortowania przy ksiêgowaniu
,0,0,"PKONTA.RJR",.,2                           # tmp dla kont
,,0,"T-ROZPISZ-DEW-FIFO.RJR",.,2
// ================ rejestry starej wersji =========
,0,0,"XPARAMPRZELEW.RJR",pprzelew,1
,0,0,"XPRZELEW.RJR",przelew,1
,0,0,"XPRZEZAP.RJR",przezap,1
,0,0,"XKONTABANK.RXR",kbank,1
// =================================================
// modul przelewow dla plac
// =================================================
,0,0,"PLC_PRZELEW.RJR",bank\przelewy,1           # 
,0,0,"ZPLC_PRZELEW.RJR",bank\przelewy,1          # 
,0,0,"PLC_PRZEZAP.RJR",bank\przelzap,1           # 
,0,0,"PLC_PRZEZAP1.RJR",bank\przelrzl,1          # 
32,0,0,"PLC_KONTABANK.RXR",przelew\kbank,1       # 
,0,0,"PLC_PRZETMP.RJR",.,2                       # 
,0,0,"PLC_PRZETMP1.RJR",.,2                      # 
,0,0,"PLC_PRZETMP2.RJR",.,2                      # 
,0,0,"PLC_PARPRZEL.RXR",bank\parprzel,1          # 
// ================================================
// generator przelewow
// ================================================
,0,0,"I_KONTABANK.RXR",przelew\kbank,2            # import k bank
,0,0,"TMP_KONTABANK.RXR",przelew\kbank,1         # rejetsr k.bankowych
,0,0,"TMP_PRZELEW.RJR",przelew\przelewy,2       # 
,0,0,"TMP_PRZEZAP.RJR",przelew\przelzap,2       # 
,0,0,"TMP_PRZEZAP1.RJR",przelew\przelrzl,2      # 
,0,0,"TMP_PRZETMP.RJR",.,2                       # 
,0,0,"TMP_PRZETMP1.RJR",.,2                      # 
,0,0,"TMP_PRZETMP2.RJR",.,2                      # 
,0,0,"TEMP-PRLDOK.RXR",prldok,2
,0,0,"GPRLDOK.RXR",przelew\gprldok,2
,0,0,"NPRLDOK.RXR",przelew\nprldok,2
,0,0,"ZPRLDOK.RXR",przelew\prldok,2
,0,0,"PRLDOK.RXR",przelew\prldok,2
,0,0,"PRLDOK_DOK_KOM_TRANSAKCJE.RJR",przelew\dkomp_tr,2
,0,0,"PRLDOK_DOK_KOM_TRANSAKCJE_ZAP.RJR",przelew\dkomp_tr_zap,2
,0,0,"TMP_KL_KONTA.RJR",.,2		           		                        # tmp do zapisy klasyfikacje
,0,0,"TMP_ZPRZELEW.RJR",.,2                       # 
// ================================================
// import i wyci¹gi bankowe
// ================================================
,0,0,"EWYCIAG_BANK_RAPORT.RJR",przelew\ewyciag_bank_raport,0              # naglowek
,0,0,"EWYCIAG_BANK_RAP_N.RJR",przelew\ewyciag_bank_raport_ngl,0           # naglowek
,0,0,"EWYCIAG_BANK_RAP_Z.RJR",przelew\ewyciag_bank_raport_zap,0           # zapisy
,0,0,"EWYCIAG_BANK_RAP_ZT.RJR",przelew\ewyciag_bank_raport_zapt,0         # zapisy transakcje
,0,0,"EWYCIAG_BANK_RAP_ZK.RJR",przelew\ewyciag_bank_raport_zapk,0         # zapisy klasyfikacje
,0,0,"EWYCIAG_INBANK.RJR",EWYCIAG_inbank,2                                # tmp do importu
,0,0,"EWYCIAG_IZBANK.RJR",EWYCIAG_izbank,2                                # tmp do importu
,0,0,"EWYCIAG_IZTBANK.RJR",.,2                                            # tmp do zapisy transakcje
,0,0,"EWYCIAG_IZKBANK.RJR",.,2                                            # tmp do zapisy klasyfikacje
// ----------------------------------------------------------
,0,0,"EWYCIAG_BANK_TYP.RJR",przelew\ewyciag_bank_typ,1                    # typ przelewow
,0,0,"EWYCIAG_BANK_TEKST.RJR",przelew\ewyciag_bank_tekst,1                # tekst w tresci
//////////////////////////////////////////////////////////////////////////////
%<<REJDEFTABLE
//============================================================================
//============================================================================
//============================================================================
% T-ROZPISZ-DEW-FIFO.RJR
0
0
T-ROZPISZ-DEW-FIFO
//
% T-ROZPISZ-DEW-FIFO.DBF
3,2000,,2           # konto
4,dic,,150          # waluta
5,ydate             # data kursu 
6,xkwota,,4         # kwota kursu
7,xkwota,,x         # kwota waluty
8,ulong             # pozycja rek
9,log               # log 
10,string,12        # depozyt
11,ydate            # data kursu rozchodu
12,xkwota,,4        # kurs rozchodu
13,ydate            # data ksiegowania rozchodu
8,0,,,2
9,0,,,3

% R_DEW_FIFO_EDYCJA.DIC
"T-ROZPISZ-DEW-FIFO",0,,""

% T-ROZPISZ-DEW-FIFO.DIC
"r_df_symbol",3,Estring,"Konto"
"r_df_waluta",4,Estring,"Waluta"
"r_df_data",5,Edata,"Data kursu"
"r_df_kurs",6,Ekwota,"Kurs przych."
"r_df_kwota",7,Ekwota,"Kwota"
"r_rekpos",8,Ekwota,"Kwota"
"r_log",9,Elog,"log"
"r_df_depozyt",10,Estring,"Depozyt"
"r_df_data_r",11,Edata,"Data k.rozch"
"r_df_kurs_r",12,Ekwota,"Kurs rozch."
"r_df_data_k",13,Edata,"Data ksi|egow."
//
% TMP_ZPRZELEW.RJR
1
1
TMP_ZPRZELEW
% TMP_ZPRZELEW.DBF
0,log,,,,,D           # usuwanie "w miejscu"
1,ulong,,,1,,NM       # numer rekordu
2,ulong,,,2           # pozycja
% TMP_ZPRZELEW.DIC
"i_lp",1,Ekwota
"i_rpos",2,Ekwota

% TMP_KL_KONTA.RJR
%<REJESTRKL.RXR
% TMP_KL_KONTA.DBF
%<REJESTRKL.DBF
% TMP_KL_KONTA.DIC
%<REJESTRKL.DIC


% PLC_PARPRZEL.RXR # rejestr param.chorob.
1 # symbol pola - klucza
1 # identyfikator klucza
PLC_PARPRZEL # nazwa danych
# buttony - menu
# buttony - box
% PLC_PARPRZEL.DBF # rejestr  - struktura rekordu
0,log,,,,,D           # usuwanie "w miejscu"
1,string,10,2,1,,N    # symbol parametrow
2,log                 # czy przelewac wynagrodzenia
3,log                 # czy przelewac podatki
4,log                 # czy przelewac skladki na ubezpieczenia
5,2000,,0             # symbol konto bankowego
6,string,80           # nazwa 1
7,string,80           # nazwa 2
8,string,60           # kod,miasto
9,string,60           # adres
10,string,60          # nazwa banku
11,string,60          # konto bankowe
20,string,20          # Nip
21,string,20          # Regon
22,string,20          # Pasel
23,string,20,2        # Nazwa skrocona do P.P.
24,string,60,2        # Nazwisko
25,string,20,2        # Imie
26,ydate              # data urodzenia
27,string,20          # kod rodzaju dokumentu
28,string,20,2        # Seria i numer dokumentu
29,string,60          # Sciezka dostepu do danych w Programie Platnika
30,string,60          # Sciezka dostepu do katalogu 
31,log                # czy platnik jest uprawniony do wyplaty swiadczen z ZUS
% PLC_PARPRZEL.DIC # slownik  rejestru
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
"sciezkapro",30,Estring     # Sciezka dostepu do katalogu
"uprawniony",31,Elog        # Czy platnik jest uprawniony do wyplaty swiadczen z ZUS
// ------------------------------------------------------------
% ZPLC_PRZELEW.RJR
%<PLC_PRZELEW.RJR
"ZAZNACZAJ-MENU:98"
//
% PLC_PRZELEW.RJR,XPLC_PRZELEW.RJR
11
1
PLC_PRZELEW
PLC_PRZELEW
//
% PLC_PRZELEW-WAR.DIC,PLC_PRZELEW-FILTR.DIC
%<PRZELEW-WARX.DIC
"Symbol         :",1
"Priorytet      :",19
"Nazwa cz|e|s|c 1  :",3
"Nazwa cz|e|s|c 2  :",4
"Kod i miasto   :",5
"Adres          :",6
"Symbol innych  :",13
// 
//
//"Data przelewu",9
//"Symbol kontrahenta",1
//"Konto z planu kont",2
//"Nazwa cz|e|s|c 1",3
//"Nazwa cz|e|s|c 2",4
//"Kod i miasto kontrahenta",5
//"Kwota razem przelewu",10
//"Status przelewu",22
//"Symbol innych kontrahent|ow",13
//
% PLC_PRZELEW-WAR.BOX
D = "Warunek wyszukiwania i filtrowania"
%< PRZELEW-WARX.BOX
"Symbol kontrahenta",1,A
"Priorytet kontrahenta",19,A
"Nazwa cz|e|s|c 1",3,A
"Nazwa cz|e|s|c 2",4,A
"Kod i miasto kontrahenta",5,A
"Adres kontrahenta",6,A
"Symbol innych kontrahent|ow",13,A
//
//"Data przelewu",9,A
//"Symbol kontrahenta",1,A
//"Konto z planukont",2,A
//"Nazwa cz|e|s|c 1",3,A
//"Nazwa cz|e|s|c 2",4,A
//"Kod i miasto kontrahenta",5,A
//"Kwota razem przelewu",10,A
//"Status przelewu",22,A
//"Symbol innych kontrahent|ow",13
% PLC_PRZELEW.DBF
//%<PRZELEW.DBF
%<OLD_PLC_PRZELEW.DBF
//
% OLD_PLC_PRZELEW.DBF
0,log,,,,,D           # usuwanie "w miejscu"
1,string,20           # SYMBOL kontrahenta
2,2000,,0             # konto kontrahenta
3,string,80           # nazwa 1
4,string,80           # nazwa 2
5,string,40           # kod,miasto
6,string,40           # adres
7,string,40           # nazwa banku kontrahenta
8,string,40           # konto bankowe kontrahenta
9,string,40           # symbol kontrahenta w dodatkowym rej.(modul)
// dluznik
10,string,20          # SYMBOL kontrahenta
11,2000,,0            # konto kontrahenta
12,string,40          # nazwa 1
13,string,40          # nazwa 2
14,string,40          # kod,miasto
15,string,40          # adres
16,string,40          # nazwa banku kontrahenta
17,string,40          # konto bankowe kontrahenta
18,string,40          # symbol kontrahenta w dodatkowym rej.(modul)
19,ydate              # data przelewu
20,kwota              # kwota przelewy
21,2000,,0,5          # konto bankowe w planie kont
22,dic,,52            # status
23,dic,,0             # symbol waluty przelewu
24,kwota              # kwota przelewu w walucie
25,ydate              # data kursu
26,string,15,2        # symbol SWIFT do przelewu w walucie
27,string,20          # miejsce generowania danych (modul)
28,string,20          # kto generowal dane (osoba)
97,log                # zaznaczanie przelewu do usunecie
98,log                # zaznaczanie przel.do wyslanie modemem i do ksiegowanie
99,ulong,,,2,,NM      # numer rekordu
200,string,200         # do emisji po dlugosci
21,0,,,6              # klucz zlozony konto bankowe
22,0,,,6              # plus status 
21,0,,,1              # klucz konto + data przelewu
19,0,,,1              # 
21,0,,,4              # klucz konto + znacznik do wyslania przelewu
98,0,,,4              #
//
% PLC_PRZELEW.DIC
//%<PRZELEW.DIC
%<OLD_PLC_PRZELEW.DIC
//
% OLD_PLC_PRZELEW.DIC
"s_klient",1,Estring
"vatkontoplat",2,Estring
"nazwa_kl1",3,Estring
"nazwa_kl2",4,Estring
"kodmiasto_kl",5,Estring
"adres_kl",6,Estring
"nazwabanku_kl",7,Estring
"numerbanku_kl",8,Estring
//"wierzmodul",9,Estring
//"dluzsym",10,Estring
//"dluzkonto",11,Estring
//"dluznazwa1",12,Estring
//"dluznazwa2",13,Estring
//"dluzkodmiasto",14,Estring
//"dluzadres",15,Estring
//"dluznazwabanku",16,Estring
//"dluznumerbanku",17,Estring
"kl_plus",18,Estring
"data_przel",19,Edata
"kwota_przel",20,Ekwota
"konto_przel",21,Estring
"status",22,Estring
"waluta",23,Estring
"kwota_przel_dew",24,Ekwota
"data_kursu",25,Edata
"swift",26,Estring
//"modul",27,Estring
//"osoba",28,Estring
//"zaznaczusun",97,Elog
"zaznacz",98,Elog
"dokid",99,Ekwota
"emisja_txt",200,Estring,"Suma zapis|ow do emisji"
"typ_prl",200,Estring
"format_przel",200,Estring
//
//=========================================================================
//
% GENDOKPRL.RXR
1
1
GENDOKPRL
% GENDOKPRL.DIC
"gendok",1,Estring
% GENDOKPRL.DBF
1,string,10,,1
//=========================================================================
% GLOB.TMP
0
0
GLOB
# 
#
% GLOB.DIC
"okres",100,Edata
"data1",101,Edata
"data2",102,Edata
% GLOB.DBF # definicja pliku z danymi globalnymi
100,date                  # GDATAOSTI - data ostatniego ksiegowania
101,date                  # GOBRPOCZI - poczatkowa data okresu
102,date                  # GOBRKONI - koncowa data okresu
103,log                   # GOKRZAMI - okres zamkniety
//
% DEWTMP.TMP
1
1
DEWTMP
# 
#
% DEWTMP.DIC
"waluta",1,Estring
% DEWTMP.DBF
1,dic,,0,1         
//
% PSORT.TMP
1
1
PSORTTMP
# 
#
% PSORTTMP.DIC
"dokid",1,Ekwota
"kwota",2,Ekwota
"dokid_strona",3,Ekwota
% PSORTTMP.DBF
1,ulong,,,1,,NM        
2,kwota,,,2
3,kwota
3,0,,,3              # 
2,0,,,3              #

//
% ZPRZELEW.RJR
11
1
PRZELEW
PRZELEWM
"ZAZNACZAJ-MENU:98"













//prl_sql
//
//"ZAZNACZAJ-MENU:98"
//
% PRZELEW.RJR,XPRZELEW.RJR,TMP_PRZELEW.RJR
11
1
PRZELEW
PRZELEWM














//prl_sql
//
% PRZELEW-WAR-KL.DIC,PRZELEW-FILTR-KL.DIC
"K.Ksi|egowe banku",11
%<PRZELEW-WARX.DIC
//
% PRZELEW-WAR.DIC,PRZELEW-FILTR.DIC
%<PRZELEW-WARX.DIC
"Symbol         :",1
"Priorytet      :",19
"Nazwa cz|e|s|c 1  :",3
"Nazwa cz|e|s|c 2  :",4
"Kod i miasto   :",5
"Adres          :",6
"Symbol innych  :",13
// 
% PRZELEW-WARX.DIC
"Typ przelewu   :",20
"Data przelewu  :",9
"Data wys|lania  :",18
"K.ksi|egowe     :",2
"Nazwa banku    :",7
"Konto bankowe  :",8
"Swift          :",26
"Kwota Przelewu :",10
"Kwota dewizowa :",20
"Waluta         :",23
"Status         :",12
"Osoba          :",90
//"Zaznaczony",98
//
% PRZELEW-WAR-KL.BOX,PRZELEW-FILTR-KL.BOX
D = "Warunek do wyszukiwania i filtrowania"
"K.Ksi|egowe banku",11,A
%< PRZELEW-WARX.BOX
//
% PRZELEW-WAR-KL-ZAP.BOX
D = "Warunek do wyszukiwania i filtrowania"
"Opis zapisu",1,A
"Transakcja",2,A
"Kwota zapisu w z|l.",3,A
"Termin p|latno|sci",4,A
"Symbol kontrahenta",26,A
"Konto ksi|egowe kontrahenta",5,A
//
% PRZELEW-WAR.BOX
D = "Warunek do wyszukiwania i filtrowania"
%< PRZELEW-WARX.BOX
"Symbol kontrahenta",1,A
"Priorytet kontrahenta",19,A
"Nazwa cz|e|s|c 1",3,A
"Nazwa cz|e|s|c 2",4,A
"Kod i miasto kontrahenta",5,A
"Adres kontrahenta",6,A
"Symbol innych kontrahent|ow",13,A
//
% PRZELEW-WARX.BOX
"Typ przelewu",20,A
"Data przelewu",9,A
"Data wys|lania",18,A
"Konto z planu kont",2,A
"Nazwa banku kontrahenta",7,A
"Konto bankowe kontrahenta",8,A
"Kwota razem przelewu",10,A
"Status",12,A
"Osoba",90,A
"Zaznaczony",98
//
% PRZELEW.DBF
0,log,,,,,D            # usuwanie "w miejscu"
1,string,,848,3        # SYMBOL kontrahenta
2,2000,,0              # konto kontrahenta
3,string,80            # nazwa k 1
4,string,80            # nazwa 2
5,string,40            # kod,miasto
6,string,40            # adres
7,string,40            # nazwa banku
8,string,40            # konto bankowe
9,ydate                # data przelewu
10,kwota               # kwota przelewy
11,string,,480,5       # konto bankowe w planie kont
12,dic,,52             # status
13,string,,496         # dane pomocnicze
14,dic,,0              # symbol waluty przelewu
15,kwota               # kwota przelewu w walucie
16,ydate               # data kursu
17,string,11           # symbol swift do przelewow dew
18,ydate	             # data wysylki
19,dic,,96             # priorytet kontrahenta
20,string,11,2,14      # typ przelewu
21,dic,,99             # format wydruku przelewu
90,string,,57344,,,A   # osoba zakladajaca
91,ydate,,,,,A         # data zalozenia
92,string,,57344,,,C   # osoba modygikujaca
93,ydate,,,,,C         # data modyfikacji
98,log                 # do zaznaczania
99,ulong,,,2,,NM       # numer rekordu
200,string,200         # do emisji po dlugosci
11,0,,,6               # klucz zlozony konto bankowe
12,0,,,6               # plus status 
11,0,,,1               # klucz konto + data
9,0,,,1                # 
11,0,,,4               # klucz konto + znacznik
98,0,,,4               #
11,0,,,7               # klucz konto + data wysylki
18,0,,,7               # 
1,0,,,8                # symbol kontrahenta + data przelewu
9,0,,,8
20,0,,,9               # typ przelewu
98,0,,,10              # klucz zaznaczone
11,0,,,11              # klucz konto + data emisji
18,0,,,11              # 
11,0,,,12              # klucz konto + data przelewu
9,0,,,12               # 
11,0,,,13              # klucz konto + data przelewu
18,0,,,13               # 
//201,word               # do zaznaczania (value)
//
% PRZELEW.DIC,TMP_PRZELEW.DIC
"s_klient",1,Estring,"Symbol kontrahenta"
"vatkontoplat",2,Estring,"Konto kontrahenta"
"nazwa_kl1",3,Estring,"Nazwa cz.1 kontrahenta"
"nazwa_kl2",4,Estring,"Nazwa cz.2 kontrahenta"
"kodmiasto_kl",5,Estring,"Kod i miasto kontrahenta"
"adres_kl",6,Estring,"Adres kontrahentq"
"nazwabanku_kl",7,Estring,"Nazwa banku kontrahenta"
"numerbanku_kl",8,Estring,"Numer konta kontrahenta"
"data_przel",9,Edata,"Data przelewu"
"kwota_przel",10,Ekwota,"Suma przelewu"
"konto_przel",11,Estring,"Konto przelewu"
"status",12,Estring,"Status"
"kl_plus",13,Estring,"Symbol plus"
"waluta",14,Estring,"Waluta"
"kwota_przel_dew",15,Ekwota,"Suma w walucie"
"data_kursu",16,Edata,"Data kursu"
"swift",17,Estring,"Numer konta swift"
"data_out",18,Edata,"Data emisji"
"priorytet_kl",19,Estring,"Priorytet"
"typ_prl",20,Estring,"Typ przelewu"
"format_przel",21,Estring,"Format druku"
"konto_bank_ksiega",22,Estring,"Ksi|ega"
"dok_numer",23,Estring,"Kod"
"p_osoba",90,Estring,"Osoba"
"zaznacz",98,Elog,"Znacznik"
"dokid",99,Ekwota,"ID"
"emisja_txt",200,Estring,"Suma zapis|ow do emisji"
//"zaznacz_log",201,Ekwota,"Log"
// PRZETMP
//   wykorzystywane jest wprowadzania,
//   od FAKTZAP rozni sie tylko tym, ze w definicji pliku
//   nie moze miec 0,log,,,,D na poczatku
% PRZETMP.RJR,PLC_PRZETMP.RJR,TMP_PRZETMP.RJR
0
0
PRZETMP
% PRZEZAP.RJR,XPRZEZAP.RJR,PLC_PRZEZAP.RJR,TMP_PRZEZAP.RJR
0
0
PRZEZAP















//prl_sql
//
% PRZEZAP.DBF
0,log,,,,,D
%< PRZETMP.DBF
% PRZETMP.DBF
1,string,60           # tresc 1
2,2103                # transakcja
3,xkwota,,x           # wartosc
4,ydate               # termin platnosci
5,2000,,0             # konto kontrahenta dla wielu kont
6,xkwota,,x           # kwota dewiz dla kont dewizowych
7,xkwota,,4           # kurs dla dewiz
8,dic,,0              # symbol waluty
9,ydate               # data kursu
20,dic,,52            # status dokumentu
21,ulong              # numer (identyfikator) zapisu ksiegowego
22,log                # wn/ma
23,string,8,2         # stanowisko wprowadzajace
24,ulong              # numer dokumentu odlozonego
25,log                # wystawiony t/n
26,2100               # symbol kontrahenta
90,string,,57344,,,A  # osoba zakladajaca
91,ydate,,,,,A        # data zalozenia
92,string,,57344,,,C  # osoba modygikujaca
93,ydate,,,,,C        # data modyfikacji
98,ulong,,,2,,M       # dla klasyfikacji jako naglowek
99,ulong,,,1          # dowiazanie do naglowka (pole 99)
5,0,,,3               # klucz konto 
5,0,,,4               # klucz konto + transakcja
2,0,,,4               # klucz konto + transakcja
26,0,,,5              # kontrahent + transakcja
2,0,,,5               # kontrahent + transakcja
119,string,11,2,30     # numer 
26,0,,,31              # kontrahent + transakcja + nr
2,0,,,31               # kontrahent + transakcja + nr
119,0,,,31             # kontrahent + transakcja + nr

% PRZEZAP.DIC,PRZETMP.DIC,PLC_PRZEZAP.DIC,PLC_PRZETMP.DIC,TMP_PRZEZAP.DIC,TMP_PRZETMP.DIC
"tresc1",1,Estring,"Tre|s|c"
"trans",2,Estring,"Transakcja"
"wartosc",3,Ekwota,"Kwota w PLN"
"data_plat",4,Edata,"Termin"
"vatkontoplat",5,Estring,"Konto kontr."
"kwota_dew",6,Ekwota,"Kwota w DEW"
"kurs_dew",7,Ekwota,"Kurs"
"waluta",8,Estring,"Waluta"
"data_kurs",9,Edata,"Data kursu"
"k_status",20,Estring,"Status"
"k_finnid",21,Ekwota,"Nr.wew."
"k_wn",22,Elog,"Strona ks."
"k_stanow",23,Estring,"Stanowisko"
"k_numerodl",24
"k_wystaw",25,Elog,"Przelew ?"
"s_klient",26,Estring,"Kontrahent"
"osoba",90,Estring,"Osoba"
"datagen",91,Edata,"Data zapisu"
"dokidzap1",98,Ekwota
"dokidzap",99,Ekwota
"f_nr_numer",119,Estring,"Numeracja"
//
% PRZEZAP-WAR.BOX
D = "Warunek do wyszukiwania po zapisie przelewu"
"Opis zapisu",1,A
"Transakcja",2,A
"Kwota zapisu w z|l.",3,A
"Termin p|latno|sci",4,A
"Symbol kontrahenta",26,A
"Konto ksi|egowe kontrahenta",5,A
"Kwota zapisu dewizowa",6,A
"Kurs",7,A
"Symbol waluty",8,A
"Data kursu",9,A
"Status przelewu",20,A
// ==========
// PRZETMP1
//   wykorzystywane jest wprowadzania, konto 
//   nie moze miec 0,log,,,,D na poczatku
% PRZETMP1.RJR,PLC_PRZETMP1.RJR,TMP_PRZETMP1.RJR
0
0
PRZETMP1
% PRZEZAP1.RJR,PLC_PRZEZAP1.RJR,TMP_PRZEZAP1.RJR
0
0
PRZEZAP1















//prl_sql
//
% PRZEZAP1.DBF
0,log,,,,,D
%< PRZETMP1.DBF
% PRZETMP1.DBF
1,2002,,0             # konto kontrahenta dla wielu kont
2,xkwota,,x           # kwota zlotowa dla klasyfikacji
3,xkwota,,x           # kwota dewiz dla kont dewizowych
98,ulong,,,2          # dowiazanie do zapisu (pole 98)
99,ulong,,,1          # dowiazanie do naglowka (pole 99)
99,0,,,3              # klucz do ksiegowania
98,0,,,3              #  + 
% PRZEZAP1.DIC,PRZETMP1.DIC,PLC_PRZETMP1.DIC,TMP_PRZEZAP1.DIC,TMP_PRZETMP1.DIC
"konto_rzl",1,Estring
"kwota_rzl",2,Ekwota
"kwota_rzl_dew",3,Ekwota
"dokidzap1",98,Ekwota
"dokidzap0",99,Ekwota
//
// ====================
// PRZETMP2
//   dla zapisow przelewow przy wyszkiwani wg daty faktury
//   nie moze miec 0,log,,,,D na poczatku
% PRZETMP2.RJR,PLC_PRZETMP2.RJR,TMP_PRZETMP2.RJR
1
1
PRZETMP2
% PRZETMP2.DBF
1,2000,,0,1            # konto kontrahenta
2,ydate,,,1           # data faktury
3,string,20           # numer faktury
% PRZETMP2.DIC,PLC_PRZETMP2.DIC,TMP_PRZETMP2.DIC
"konto_tmp",1,Estring
"data_tmp",2,Edata
"trans_tmp",3,Estring
//
//
//
//
% BRE-RXR.ALG
  id_modul := ""
  CallAlg["konwersja"]
  RejOp["OtworzRejSprawdz","PARAMBRE.RXR"]
  RejOp["WywolajMenu","1"]
  RejOp["ZamknijRej",""]
//
% PARAMBREALGO.XXX
"AKCJA-PRZED-WYSWIETLENIEM-PARAMBRE-REKORD-1.DLG",PARAMBREREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-PARAMBRE-REKORD-3.DLG",PARAMBREREKORD-DODAJSTART1
"AKCJA-PRZED-WYSWIETLENIEM-PARAMBRE-REKORD-0.DLG",PARAMBREREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-PARAMBRE-REKORD-2.DLG",PARAMBREREKORD-DODAJLOOK
"AKCJA-PO-POLU10-PARAMBRE-REKORD-?.DLG",PARAMBREREKORD-KONTO
"AKCJA-BUTTON1-PARAMBRE-REKORD-?.DLG",PARAMBREREKORD-AKCEPTUJESZ
"AKCJA-BUTTON20-PARAMBRE-MENU-?.DLG",PARAMBREMENU-USUN
// ---------
// definicja rejestru
// --------
% PARAMBRE.RXR
1,1 # symbol pola - klucza
1 # identyfikator klucza
PARAMBRE
# 
#
"Powt|orzony symbol BRE !"
"Zmieniasz dane o BRE ?"
"Dodajesz now|a definicj|e BRE ?" 
"Usun|a|c wybrane BRE z wykazu ?" 
"Chcesz doda|c jeszcze jedn|a definicje BRE ?" 
"%s - nie ma takiego BRE.$Czy chcesz doda|c nowe ?" 
"Nie ma |zadnych BRE !"
"Rejestr BRE jest pusty - wstawiasz pierwsze ?"
"Nie ma BRE o takim symbolu.$Znale|x|c nast|epne ?"
"%s - nie ma takiego symbolu BRE !"
% PARAMBRE.DBF # rejestr klientow - struktura rekordu
1,string,,480,1,,N      # konto bankowe
2,dic,,97               # slownik oddzialow BRE
3,string,11             # numer kierunkowy 
4,string,6              # numer klienta w BRE
5,string,9              # rachunek klienta w bre
% PARAMBRE.DIC # slownik do danych o kliencie
"bre_konto",1,Estring       # 
"bre_oddzial",2,Estring     #
"bre_nkb",3,Estring         #
"bre_numer",4,Estring       #
"bre_rachunek",5,Estring     #
//
// ALGORYTMY
// --------
% PARAMBREREKORD-KONTO.ALG
  if (bre_konto = "") ExitAlg[0]
  plik := ""
  konto := ""
  konto_bre_nkb := ""
  numer_klienta_bre := ""
  numer_rachunku_bre := ""
  id_modul := ""
//
  RejOp["X:OtworzRejSprawdz","KONTABANK.RXR"]
  RejOp["X:ZnajdzRek",bre_konto]
  plik := RejWezP_S["X:format_modem"]
  konto := RejWezP_S["X:numer_bank"]
  konto_bre := konto
  RejOp["X:ZamknijRej",""]
  if ((plik == "bre.bre") or (plik == "bre1.bre")) goto dalej0
  OkAlert["Podane konto nie ma zdefiniowanego formatu $exportu na plik txt, lub nie jest numerm $ dla banku w BRE !"]
  a_ok := .N.
  ExitAlg[0]
  dalej0:
//
  numer_nkb := ""
  numer_nkb1 := ""
  a_ok := .N.
  CallAlg["ustal-numer-nkb"]
  if (a_ok) goto dalej1
  OkAlert["Podane konto "+konto_bre+", $ jest nieprawid|lowe.$ Koniecznie sprawd|x !"]
  ExitAlg[0]
  dalej1:
//
  a_ok := .N.
  CallAlg["ustal-czybre"]
  if (a_ok) goto dalej2
  OkALert["Podane konto "+konto_bre+" $ nie jest kontem w BRE S.A. lub brak takiego $ numeru:"+numer_nkb+" w rejestrze NKB !"] 
  ExitAlg[0]
  dalej2:
//
  a_ok := .N.
  numer_nkb_bene := numer_nkb
  if (not(numer_nkb1 = "")) numer_nkb_bene := numer_nkb1
  CallAlg["znajdz-numer-nkb"]
  if (a_ok) goto dalej3
  OkAlert["Brak numeru kierunkowego banku "+numer_nkb_bene+" w rejestrze NKB. $ Koniecznie sprawd|x !"]
  ExitAlg[0]
  dalej3:
  xRejWstawP_S["bre_nkb",konto_bre_nkb]
  xRejWstawP_S["bre_numer",numer_klienta_bre]
  xRejWstawP_S["bre_rachunek",numer_rachunku_bre]
  ExDialogOp["WyswietlPozycje","12"]
  ExDialogOp["WyswietlPozycje","13"]
  ExDialogOp["WyswietlPozycje","14"]
//
% USTAL-CZYBRE.ALG
// sprawdzenie czy numer nalezy do baku BRE SA
// ustala numer klient i numer rachunku w bre
// wejscie
// zmienna (numer_nkb:string)
// zmienna (numer_nkb1:string)
// zmienna (konto_bre_nkb:string)
// zmienna (numer_klienta_bre:string)
// zmienna (numer_rachunku_bre:string)
 a_ok := .T.
 if (RejOp["N:OtworzRejSprawdz","NKB.RXR"]) goto dalej01
 if (Yesalert["Nie mog|e otworzy|c listy z numerami kierunkowymi bank|ow !$ Czy i|s|c dalej ?"]) goto KONIEC
 a_ok := .N.
 ExitAlg[0]
 dalej01:
 numer_nkb_tmp := numer_nkb
 if (not(numer_nkb1 = "")) numer_nkb_tmp := numer_nkb1
 if (RejOp["N:ZnajdzRek",numer_nkb_tmp]) goto dalej02
 a_ok := .N.
 goto koniec1
 dalej02:
 konto_bre_nkb := numer_nkb_tmp
// RejWezP_S["N:nkb_numer"]
// ustalenie czy jest w bre wg nazwy 
 nazwa := RejWezP_S["N:nkb_nazwa"]
 czy := StrIn["BRE",nazwa]
 if (czy > -1) goto dalej03
 a_ok := .N.
 goto koniec1
 dalej03:
 tmp_konto := StrIn["CURR",konto_bre]
// ZMIANY DO USTALANIA RACHUNKU I NUMERU KLIENTA
// ustalenie numeru klienta po 1 kresce
// temp := StrCut[konto_bre,StrIn["-",konto_bre]+1,StrLen[konto_bre] - StrIn["-",konto_bre]]
// numer_klienta_bre := StrCut[temp,0,StrIn["-",temp]]
// ------------------------------
// ustalenie numeru rachunku po ostatniej kresce
// temp := konto_bre
// petlakreska:
// numer_rachunku_bre := temp
// czy := StrIn["-",temp]
// if (czy = -1) goto dalej04
// temp := StrCut[numer_rachunku_bre,StrIn["-",numer_rachunku_bre]+1,StrLen[numer_rachunku_bre] - StrIn["-",numer_rachunku_bre]]
// numer_rachunku_bre := StrCut[temp,0,StrIn["-",temp]]
// goto petlakreska
// dalej04:
// -------------------------------
  numer_klienta_bre := StrCut[konto_bre,tmp_konto-10,6]
  numer_rachunku_bre := StrCut[konto_bre,tmp_konto-3,9]
//
 koniec1:
 RejOp["N:ZamknijRej",""]
 koniec:
 ExitAlg[0]
//
% PARAMBREMENU-USUN.ALG
  if (not YesNAlert["Usun|a|c konto o symbolu "+bre_konto+" z listy ?"]) ExitAlg[0]
  RejOp["UsunRek",""]
  ExDialogOp["UsunRekordzMenu","100"]    
% PARAMBREREKORD-AKCEPTUJESZ.ALG   
// Opis: button AKCEPTUJESZ podczas dodawania
// ----- sprawdzenie poprawnosci
  if (not (bre_konto = "")) goto dalej1
    OkAlert["Wprowad|x symbol konta bankowego !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
  dalej1:
  if (not (bre_oddzial = "")) goto dalej2
    OkAlert["Wprowad|x symbol oddzia|lu banku !"]
    ExDialogOp["IdzDoPozycji","11"]
    ExitAlg[0]
  dalej2:
  if (not (bre_nkb = "")) goto dalej3
    OkAlert["Wprowad|x numer kierunkowy banku !"]
    ExDialogOp["IdzDoPozycji","12"]
    ExitAlg[0]
  dalej3:
  if (not (bre_numer = "")) goto dalej4
    OkAlert["Wprowad|x numer w systemie BRE SA !"]
    ExDialogOp["IdzDoPozycji","13"]
    ExitAlg[0]
  dalej4:
  if (not (bre_rachunek = "")) goto dalej5
    OkAlert["Wprowad|x numer rachunku banku (np PLNCURR01) !"]
    ExDialogOp["IdzDoPozycji","14"]
    ExitAlg[0]
  dalej5:
  ExDialogOp["KoniecWykonywania",""]
//
% PARAMBREREKORD-DODAJSTART1.ALG 
// wolane przy dodawanie nowego rekordu z pola
%< PARAMBREREKORD-DODAJSTART.ALG
  ExDialogOp["PozycjaNieAktywna","10"]
  ExDialogOp["IdzDoPozycji","11"]
//
% PARAMBREREKORD-DODAJSTART.ALG 
  ExDialogOp["PozycjaAktywna","10"]
  ExDialogOp["IdzDoPozycji","10"]
//
% PARAMBREREKORD-DODAJMODIF.ALG 
  ExDialogOp["PozycjaNieAktywna","10"]
  ExDialogOp["IdzDoPozycji","11"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
//
% PARAMBREREKORD-DODAJLOOK.ALG
  ExDialogOp["PozycjaNiewprowadzana","*"]
//
//
% PARAMBRE-MENU-1.DLG
%< PARAMBRE-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% PARAMBRE-MENU-0.DLG
%< PARAMBRE-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% PARAMBRE-MENU-3.DLG
%< PARAMBRE-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% PARAMBRE-MENU-2.DLG
%< PARAMBRE-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-0.XXX
// 
% PARAMBRE-MENU-X.XXX
PRZYCISK_CANCELID = 0
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Lista z definicj|a kont w banku BRE"
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:PARAMBREMENU,,KLUCZ,1
##101,TLD,0,,"Konto           Odz.    NKB  Numer  Rachunek",,yellow/blue&black/white&lwhite/blue
##1,,ADP,,"%W%yb|or"
##5,LBGT,P,,"%D%odaj"
##4,LBGT,P,,"Z%m%ie|n"
##10,LBGT,P,,"%F%iltr "
##8,LBGT,P,,"%S%zukaj "
##9,LBGT,P,,"%N%ast|epny "
##6,LBGT,P,,"%U%su|n"
##2,LBGT,P,,"%O%pis"

 #101                                                #

#100                                                  #100<
 
% PARAMBRE-MENU-MODIF.XXX
%< PARAMBRE-MENU-X.XXX
                                #5       # #8        # 
  Znajd|x: #7,0,AC  #           #4       # #9        #
                                #6       # #10       #

% PARAMBRE-MENU-LOOK.XXX
%< PARAMBRE-MENU-X.XXX
                                #2       # #8        # 
  Znajd|x: #7,0,AC  #                      #9        #
                                           #10       #

// --------
// REKORD
// --------
% PARAMBRE.XXX
PRZYCISK_CANCELID = 2
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dodaj/Zmie|n definicj|e konta"
##10,0,ACP,,,,,,,,POLEUNIKALNE:bre_konto
##11,0,P,,,,,,,,POLE:bre_oddzial
##12,0,P,,,,,,,,POLE:bre_nkb
##13,0,P,,,,,,,,POLE:bre_numer
##14,0,P,,,,,,,,POLE:bre_rachunek

Symbol konta           -  #10            #       

Oddzia|l banku          - #11#
Numer kierunkowy banku - #12       #     
Numer w systemie BRE   - #13       #
Numer rachunku w BRE   - #14       #

//
% PARAMBRE-REKORD-1.DLG,PARAMBRE-REKORD-0.DLG,PARAMBRE-REKORD-3.DLG
%<PARAMBRE.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% PARAMBRE-REKORD-2.DLG
%<PARAMBRE.XXX
%<REKORD-OK-BUTT.XXX
//
% PARAMBREMENU.MEN
D=50
1,,,,16
2,,,,2
3,,,,8
4,,,,6
5,,,,9
//
//
//
//
//
//
//
//
% PARAMPRZELEW.RJR,XPARAMPRZELEW.RJR # rejestr opisow
0 # symbol pola - klucza
0 # identyfikator klucza
PARAMPRZELEW
% PARAMPRZELEW.DBF # rejestr klientow - struktura rekordu
100,string,40           # NAZWA FIRMY 1
101,string,40           # NAZWA FIRMY 2
102,string,40           # KODMIAST
103,string,40           # ADRES
104,string,,480         # Konto bank glowne
105,string,50           # Tresc dla linnin
106,string,6            # numer wersji przelewow
107,log                 # numer wersji przelewow
% PARAMPRZELEW.DIC # slownik do danych o kliencie
"nazwa1",100,Estring       # 
"nazwa2",101,Estring       #
"kodmiasto",102,Estring    #
"adres",103,Estring        #
"konto",104,Estring        #
"tresc",105,Estring        #
"wersja",106,Estring       #
"kontrola",107,Elog        #
//
//
//
//
% KLPLUSALGO.XXX
"AKCJA-PRZED-WYSWIETLENIEM-KLPLUS-REKORD-1.DLG",KLPLUSREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-KLPLUS-REKORD-3.DLG",KLPLUSREKORD-DODAJSTART1
"AKCJA-PRZED-WYSWIETLENIEM-KLPLUS-REKORD-0.DLG",KLPLUSREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-KLPLUS-REKORD-2.DLG",KLPLUSREKORD-DODAJLOOK
"AKCJA-PO-POLU17-KLPLUS-REKORD-?.DLG",KLPLUSREKORD-KONTO
"AKCJA-BUTTON1-KLPLUS-REKORD-?.DLG",KLPLUSREKORD-AKCEPTUJESZ
//"AKCJA-BUTTON20-KLPLUS-MENU-?.DLG",KLPLUSMENU-USUN
// ---------
// definicja rejestru
// --------
% KLPLUS.RXR,XKLPLUS.RXR # opis rejestru
1
1
KLPLUS # nazwa danych
# 
#
"Powt|orzony symbol kontrahenta !"
"Zmieniasz dane o kontrahencie ?"
"Dodajesz nowego kontrahenta ?" 
"Usun|a|c tego kontrahenta z listy ?" 
"Chcesz doda|c jeszcze jednego kontrahenta ?" 
"%s - nie ma takiego kontrahenta. $Czy chcesz doda|c nowego ?" 
"Nie ma |zadnych kontrahent|ow !"
"Rejestr kontrahent|ow jest pusty - wstawiasz pierwszego ?"
"Nie ma kontrahenta o takim symbolu. $Znale|x|c nast|epnego ?"
"%s - nie ma takiego kontrahenta !"
KLPLUS-WAR
% KLPLUS.DBF
0,log,,,,,D          # usuwanie "w miejscu"
1,string,10,2,1,,N   # symbol X
2,string,40          # nazwa 1
3,string,40          # nazwa 2
4,string,40          # KOD MIASTO
5,string,40          # ADRES
6,string,40          # BANK
7,string,40          # NR BANK
8,2000,,2,2          # KONTO W PLANIE KONT
9,string,15,2
% KLPLUS.DIC # slownik do danych o X
"kl_sym",1,Estring
"kl_nazwa1",2,Estring
"kl_nazwa2",3,Estring
"kl_kodmiasto",4,Estring
"kl_adres",5,Estring
"kl_nazwabanku",6,Estring
"kl_konto",7,Estring
"kl_kontoplan",8,Estring
"kl_swift",9,Estring
% KLPLUS-WAR.DIC
"Symbol klienta",1
"Nazwa 1",2
"Nazwa 2",3
"Kod, miasto",4
"Adres",5
"Nazwa banku",6
"Swift",9
"Nr. k.bankowego",7
"Konto w planie kont",8
// ALGORYTMY
// --------
% KLPLUSMENU-USUN.ALG
  if (not YesNAlert["Usun|a|c klienta "+kl_sym+" z listy ?"]) ExitAlg[0]
  RejOp["UsunRek",""]
  ExDialogOp["UsunRekordzMenu","100"]    
% KLPLUSREKORD-AKCEPTUJESZ.ALG   // Opis: button AKCEPTUJESZ podczas dodawania
// ----- sprawdzenie poprawnosci
  if (not (kl_sym = "")) goto dalej1
    OkAlert["Wprowad|x symbol kontrahenta !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
  dalej1:
  if (not (kl_kontoplan = "")) goto dalej2
  OkAlert["Wprowad|x konto w planie kont !"]
  ExDialogOp["IdzDoPozycji","17"]
  ExitAlg[0]
  dalej2:
  ExDialogOp["KoniecWykonywania",""]
//
% KLPLUSREKORD-DODAJSTART1.ALG 
  naglowek_txt := "Dodanie nowego kontrahenta"
// wolane przy dodawanie nowego rekordu z pola
%< KLPLUSREKORD-DODAJSTART.ALG
  ExDialogOp["PozycjaNieAktywna","10"]
  ExDialogOp["IdzDoPozycji","11"]
//
% KLPLUSREKORD-DODAJSTART.ALG 
  naglowek_txt := "Dodanie nowego kontrahenta"
  ExDialogOp["PozycjaAktywna","10"]
  ExDialogOp["IdzDoPozycji","10"]
//
% KLPLUSREKORD-DODAJMODIF.ALG 
  naglowek_txt := "Modyfikacja kontrahenta"
  ExDialogOp["PozycjaNieAktywna","10"]
  ExDialogOp["IdzDoPozycji","11"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
//
% KLPLUSREKORD-DODAJLOOK.ALG
  naglowek_txt := "Opis kontrahenta"
  ExDialogOp["PozycjaNiewprowadzana","*"]
//
//
% KLPLUS-MENU-1.DLG
%< KLPLUS-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% KLPLUS-MENU-0.DLG
%< KLPLUS-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% KLPLUS-MENU-3.DLG
%< KLPLUS-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% KLPLUS-MENU-2.DLG
%< KLPLUS-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% KLPLUS-MENU-X.XXX
PRZYCISK_CANCELID = 0
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Lista kontrahent|ow nierozrachunkowych "
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:KLPLUSMENU,,KLUCZ,1
##101,TLD,0,,"Symbol     Nazwa kontrahenta              Konto",,yellow/blue&black/white&lwhite/blue
##1,,ADP,,"%W%yb|or"
##5,LBGT,P,,"%D%odaj"
##6,LBGT,P,,"%U%su|n"
##4,LBGT,P,,"Z%m%ie|n"
##8,LBGT,P,,"%S%zukaj"
##9,LBGT,P,,"%N%ast|epny "
##2,LBGT,P,,"%O%pis"

 #101                                                       #

#100                                                         #100<
 
% KLPLUS-MENU-MODIF.XXX
%< KLPLUS-MENU-X.XXX
                                #5       # #8        # 
  Znajd|x: #7,0,AC  #           #4       # #9        #
                                #6       # 

% KLPLUS-MENU-LOOK.XXX
%< KLPLUS-MENU-X.XXX
                                #2       # #8        # 
  Znajd|x: #7,0,AC  #                      #9        #
                                        
// --------
// REKORD
// --------
% KLPLUS.XXX
PRZYCISK_CANCELID = 2
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dodanie/Zmiana kontrahenta nierozrachunkowego"
##9,D,0,,,,lred/black&lwhite/black&blue/yellow,,,,ZMIENNA:naglowek_txt
##10,0,ACP,,,,,,,,POLEUNIKALNE:kl_sym
##17,0,ACP,,,,,,,,POLE:kl_kontoplan
##11,0,P,,,,,,,,POLE:kl_nazwa1
##12,0,P,,,,,,,,POLE:kl_nazwa2
##13,0,P,,,,,,,,POLE:kl_kodmiasto
##14,0,P,,,,,,,,POLE:kl_adres
##15,0,P,,,,,,,,POLE:kl_nazwabanku
##16,0,P,,,,,,,,POLE:kl_konto
##17,0,P,,,,,,,,POLE:kl_swift
 #9                                            #

Symbol kontrahenta - #10    #  


Konto z planu kont - #17            #

Nazwa cz|e|s|c 1      - #11                                   #
      cz|e|s|c 2      - #12                                   #
Kod i miasto       - #13                                   #
Adres              - #14                                   #

Nazwa banku        - #15                                   #
Nr konta bankowego - #16                                   #
SWIFT KOD          - #17                    #


//
% KLPLUS-REKORD-1.DLG,KLPLUS-REKORD-0.DLG,KLPLUS-REKORD-3.DLG
%<KLPLUS.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% KLPLUS-REKORD-2.DLG
%<KLPLUS.XXX
%<REKORD-OK-BUTT.XXX
//
% KLPLUSMENU.MEN
D=
1,,,,10
2,,,,30
8,,,,16
//
% KLPLUSREKORD-KONTO.ALG
  if (pustepole["kl_kontoplan"]) ExitAlg[0]
  if (not(pustepole["kl_nazwa1"])) ExitAlg[0]
  if (not(rejop["x:otworzrej","PLANRODZ.RJR"])) ExitAlg[0]
  if (not(rejop["x:znajdzrek",rejwezp_s["kl_kontoplan"]])) goto koniec
    rejwstawp_s["kl_nazwa1",rejwezp_s["x:plan_nazwa"]]
  koniec:
  rejop["x:zamknijrej",""]
//
//
// =================================================================
//               konta bankowe
// =================================================================
//
//
% KONTABANKALGO.XXX,PLC_KONTABANKALGO.XXX
"AKCJA-PRZED-WYSWIETLENIEM-KONTABANK-REKORD-1.DLG",KONTABANKREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-KONTABANK-REKORD-3.DLG",KONTABANKREKORD-DODAJSTART1
"AKCJA-PRZED-WYSWIETLENIEM-KONTABANK-REKORD-0.DLG",KONTABANKREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-KONTABANK-REKORD-2.DLG",KONTABANKREKORD-DODAJLOOK
"AKCJA-BUTTON1-KONTABANK-REKORD-?.DLG",KONTABANKREKORD-AKCEPTUJESZ
"AKCJA-F2-POLE40-KONTABANK-REKORD-?.DLG",PARAM-TYPPRL
"AKCJA-F2-POLE39-KONTABANK-REKORD-?.DLG",PARAM-KSIEGI
"AKCJA-BUTTON20-KONTABANK-MENU-?.DLG",KONTABANKMENU-USUN
"AKCJA-PRZED-WYSWIETLENIEM-KONTABANK-MENU-?.DLG",KONTABANKMENU-PRZED
// ---------
// definicja rejestru
// --------
% KONTABANKMENU-PRZED.ALG
  naglowek := "Lista zdefiniowanych kont bankowych <Przelewy>"
  if (id_modul == "PLC_") naglowek := "Definicja kont bankowych (P|lace)."
  ExDialogOp["ZmienNaglowek",naglowek] 
//

% KONTABANK.RXR,XKONTABANK.RXR,PLC_KONTABANK.RXR,PLC_XKONTABANK.RXR,TMP_KONTABANK.RXR # rejestr opisow
100 # symbol pola - klucza
1 # identyfikator klucza
KONTABANK # nazwa danych
# buttony - menu
# buttony - box
"Powt|orzony symbol konta bankowego !" 
"Zmieniasz dane banku ?"
"Dodajesz nowy bank ?" 
"Usun|a|c ten bank z listy ?" 
"Chcesz doda|c jeszcze jeden bank ?" 
"%s - nie ma takiego banku w rejestrze.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych kont bankowych w rejestrze !"
"Rejestr bank|ow pusty - wstawiasz pierwszy ?"
"Nie ma banku o takim symbolu konta.$Znale|x|c nast|epny ?"
"%s - brak banku o takim symbolu konta!"
% KONTABANK.DBF # rejestr klientow - struktura rekordu
0,log,,,,,D             # usuwanie "w miejscu"
100,2000,,2,1,,N        # symbol konta
101,string,40           # nazwa konta bankowego
102,string,40           # kontobankowe
103,2001,,1             # symbol dokumenu ksiegowego dla banku
104,dic,,99             # slownik formatu przelewu
105,log                 # czy konto bankowe do plliku (modem)
106,dic,,98             # slownik formtow do modemu
107,byte                # wersja zankowa do emisji 0 - 6 zankow 1 - 8 zn.
108,string,30           # sciezka gdzie zapisac plik
109,string,12           # nazwa pliku na jaki zapisac
110,string,30           # skrypty
111,2000,,2             # konto globalne jezeli brak w przelewie
112,log                 # czy ksiegowac zapisami
113,string,10		        # ksiega stara
114,string,10		        # typ przelewow
115,dic,,92		          # format polskich liter
116,string,40           # opis do wyciagu
117,word                # Ilosc/Dlugosc
118,string,3,2          # Slownik DOC
119,3001    		        # konto w ksiedze
120,string,11		        # swift
119,0,,,2
100,0,,,2
100,0,,,3
118,0,,,3
119,0,,,4
102,0,,,4
118,0,,,4
102,0,,,5
//
% KONTABANK.DIC,PLC_KONTABANK.DIC,TMP_KONTABANK.DIC # slownik do danych o kliencie
"konto_bank",100,Estring,"Symbol konta"      # 
"nazwa_bank",101,Estring,"Nazwa banku"       #
"numer_bank",102,Estring,"Numer konta"       #
"dok_bank",103,Estring,"Dok ks."             #
"format_bank",104,Estring,"Format modem"     #
"modem",105,Elog,"Czy emisja ?"              #
"format_modem",106,Estring,"Format emisji"   #
"sciezka",108,Estring,"|Scie|zka zapisu"     #
"format_plik",109,Estring,"Format pliku"     #
"program",110,Estring,"Program do konwersji" #
"konto_glob",111,Estring,"Konto og|olne"     #
"zapisy",112,Elog,"Czy ksi|egowa|c zapisami" #
"ksiega_old",113,Estring,"Ksi|ega old"       #
"typ_prl",114,Estring,"Typ przelew|ow"       #
"polskie",115,Estring,"Polskie litery"       #
"wyciag_opis",116,Estring,"Opis wyci|agu"    #
"generator_zapisy",117,Ekwota,"Ilo|s|c/D|lugo|s|c"    #
"ver",107,Ekwota                             #
"dok_numer",118,Estring,"Numeracja"          #
"konto_bank_ksiega",119,Estring,"Ksi|ega"
"swift_bank",120,Estring,"SWIFT konta"       #
// ---------
// ALGORYTMY
// --------
% PARAM-KSIEGI.ALG
  d_string := ""
  d_old := rejwezp_s["ksiega_old"]
  d_string := WybierzFinn["Ksiegozbior"]
  if (d_string = "") d_string := d_old
% KONTABANKMENU-USUN.ALG
  if (not YesNAlert["Usun|a|c konto "+konto_bank+" z listy ?"]) ExitAlg[0]
  RejOp["UsunRek",""]
  ExDialogOp["UsunRekordzMenu","100"]    
% KONTABANKREKORD-AKCEPTUJESZ.ALG 
// ----- sprawdzenie poprawnosci
  if (not ((konto_bank = "") and (StrLen[konto_bank] < 4))) goto dalej1
    OkAlert["Wprowad|x poprawne konto bankowe !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
  dalej1:
  if (not (nazwa_bank = "")) goto dalej2
    OkAlert["Wprowad|x nazw|e banku !"]
    ExDialogOp["IdzDoPozycji","11"]
    ExitAlg[0]
  dalej2:
  if (not (numer_bank = "")) goto dalej3
    OkAlert["Wprowad|x numer konta bankowego !"]
    ExDialogOp["IdzDoPozycji","12"]
    ExitAlg[0]
  dalej3:
   a_ok := .N.
   d_string := numer_bank
   callalg["kontrola-konta-alert"]
   if (a_ok) goto dalej_ustal
      ExDialogOp["IdzDoPozycji","12"]
      ExitAlg[0]
   dalej_ustal:
   a_ok := .T.
//
  if (not (dok_bank = "")) goto dalej4
    OkAlert["Wprowad|x symbol dokumentu ksi|egowego !"]
    ExDialogOp["IdzDoPozycji","13"]
    ExitAlg[0]
  dalej4:
  if (not (format_bank = "")) goto dalej5
    OkAlert["Wprowad|x format wydruku przelewu !"]
    ExDialogOp["IdzDoPozycji","14"]
    ExitAlg[0]
  dalej5:
  if (not (modem)) goto dalej9
  if (not(format_modem = "")) goto dalej6
    OkAlert["Wprowad|x format pliku dla emisji danych !"]
    ExDialogOp["IdzDoPozycji","32"]
    ExitAlg[0]
  dalej6:
  if (not(sciezka == "")) goto dalej7
     OkAlert["Podaj sciezk|e dla pliku gdzie ma by|c stworzony !"]
     ExDialogOp["IdzDoPozycji","33"]
     ExitAlg[0]
   dalej7:  
  if (not(format_plik = "")) goto dalej8
    If (YesAlert["Nazwa pliku jest pusta $ Czy stworzy|c nazw|e pliku automatycznie !"]) goto dalej8
    ExDialogOp["IdzDoPozycji","34"]
    ExitAlg[0]    
  dalej8:
  if (format_plik = "") RejWstawP_S["format_plik",format_modem]
  dalej9:
  if ((generator_zapisy > 0) and (generator_zapisy < 151)) goto dalej10
    OkAlert["Minimalna ilo|s|c lub d|lugo|s|c musi $ mie|sci|c si|e w zakresie od 0 do 150"]
    ExDialogOp["IdzDoPozycji","43"]
    ExitAlg[0]    
  dalej10:
  FinnOp["Close",""]
  ExDialogOp["KoniecWykonywania",""]
//
% KONTABANKREKORD-DODAJSTART1.ALG 
// wolane przy dodawanie nowego rekordu z pola
%< KONTABANKREKORD-DODAJSTART.ALG
//
% KONTABANKREKORD-DODAJSTART.ALG 
 FinnOp["openmainx",""]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  ExDialogOp["PozycjaAktywna","10"]
  ExDialogOp["IdzDoPozycji","10"]
//
% KONTABANKREKORD-DODAJMODIF.ALG 
 FinnOp["openmainx",""]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  ExDialogOp["PozycjaNieAktywna","10"]
  ExDialogOp["IdzDoPozycji","11"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
//
% KONTABANKREKORD-DODAJLOOK.ALG
  ExDialogOp["PozycjaNiewprowadzana","*"]
//
% KONTABANK-MENU-1.DLG
%< KONTABANK-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% KONTABANK-MENU-0.DLG
%< KONTABANK-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% KONTABANK-MENU-3.DLG
%< KONTABANK-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% KONTABANK-MENU-2.DLG
%< KONTABANK-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-0.XXX
// 
% KONTABANK-MENU-X.XXX
PRZYCISK_CANCELID = 0
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Lista zdefiniowanych kont bankowych <Przelewy>"
##100,0,ACP,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:KONTABANKMENU,,KLUCZ,1
//##101,TLD,0,,"Symbol konta     Nazwa banku                    Format  HOME BANKING",,yellow/blue&black/white&lwhite/lblue
##1,,ADP,,"%W%yb|or konto"
##5,LBGT,P,,"%D%odaj nowe konto"
##20,LBGT,P,,"%U%su|n istniej|ace konto"
##4,LBGT,P,,"Z%m%ie|n dane konta"
##2,LBGT,P,,"%O%pis konta"

// #101                                                               #

#100








                                                                               #100<
 
% KONTABANK-MENU-MODIF.XXX
%< KONTABANK-MENU-X.XXX
                                 #5                  #
  Znajd|x: #7,0,AC      #         #4                  #
                                 #20                 # 
//
% KONTABANK-MENU-LOOK.XXX
%< KONTABANK-MENU-X.XXX
  Znajd|x: #7,0,AC      #         #2                  #
//
// --------
// REKORD
// --------
% KONTABANK.XXX
PRZYCISK_CANCELID = 2
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Definicja konta bankowego <Przelewy>"
##200,DZ,ACPH,,"Opis konta bankowego:"
##201,DZ,ACPH,,"Dane ksi|egowe i wydruku:"
##202,DZ,ACPH,,"Dane do Home Banking:"
##44,0,ACP,,,,,,,,POLE:konto_bank_ksiega
##10,0,ACP,,,,,,,,POLEUNIKALNE:konto_bank
##11,0,P,,,,,,,,POLE:nazwa_bank
##12,0,P,,,,,,,,POLE:numer_bank
##45,0,P,,,,,,,,POLE:swift_bank
##40,0,P,,,,,,,,POLE:typ_prl
##39,0,P,,,,,,,,POLE:ksiega_old
##13,0,P,,,,,,,,POLE:dok_bank
##15,0,P,,,,,,,,POLE:dok_numer
##37,0,P,,"nie",,,,,,POLE:zapisy,,A,2,"N"
##38,0,P,,"tak",,,,,,POLE:zapisy,,,2,"T"
##36,0,P,,,,,,,,POLE:konto_glob
##14,0,P,,,,,,,,POLE:format_bank
##42,0,P,,,,,,,,POLE:wyciag_opis
##43,0,P,,,,,,,,POLE:generator_zapisy,word
##30,0,P,,"nie",,,,,,POLE:modem,,A,1,"N"
##31,0,P,,"tak",,,,,,POLE:modem,,,1,"T"
##32,0,P,,,,,,,,POLE:format_modem
##41,0,P,,,,,,,,POLE:polskie
##33,0,P,,,,,,,,POLE:sciezka
##34,0,P,,,,,,,,POLE:format_plik
##35,0,P,,,,,,,,POLE:program

#200

 Symbol ksi|egi dla konta  : #44    #


 Symbol konta z planu kont: #10             #       

 Nazwa - #11                                          #
 Numer - #12                                          #
 SWIFT - #45        #  Typ przelew|ow - #40     #
                                                           #200<
#201
 Ksi|ega stary rok         - #39         #
 Dokument ksi|egowy        - #13#           Numeracja - #15#
 Ksi|egowa|c zapisami       - #37 # #38 #
 Konto zamkni|ecia dekretu - #36         #
 Domy|slny format wydruku  - #14      #   
 Opis do wyci|agu          - #42                          #
 Dla generatora zapis|ow   - #43#
 (< ni|z 10 ilo|s|c zapis|ow)
 (> ni|z 10 d|lugo|s|c emisji)
                                                           #201<
#202
 Uruchamia|c emisj|e         - #30 #  #31 # 
 Format emisji             - #32            # 
 Format liter polskich     - #41            # 
 Zapisz plik w katalogu    - #33                          # 
 Zapisz plik pod nazw|a     - #34            #
 Po emisji uruchom program - #35                          #
                                                           #202<

//
% KONTABANK-REKORD-1.DLG,KONTABANK-REKORD-0.DLG,KONTABANK-REKORD-3.DLG
%<KONTABANK.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% KONTABANK-REKORD-2.DLG
%<KONTABANK.XXX
%<REKORD-OK-BUTT.XXX
//
% KONTABANKMENU-EDYCJA.DIC
"KONTABANK",0

% KONTABANKMENU.MEN
D=,"",AB
LINIA-DIALOG = KONTABANKMENU-EDYCJA,"Kolumny"
100,,,,16,"Konto"
118,,,,3,"Nr."
101,,,,30,"Nazwa"
104,,,,8,"Format"
106,,,,11,"Emisja"
//
% WYBIERZ-KONTABANK-RXR.ALG
  id_modul := ""
  d_string := ""
  RejOp["OtworzRejSprawdz","KONTABANK.RXR"]
  ok := RejOp["WywolajMenu","2"]
  if (not(ok)) goto koniec
    d_string := rejwezp_s["konto_bank"]
  koniec:
  RejOp["ZamknijRej",""]
//
% SPRAWDZ-KONTABANK-RXR.ALG
//  d_string zawiera konto do psrawdzenia
  RejOp["XX:OtworzRejSprawdz","KONTABANK.RXR"]
  RejOp["XX:ZmienKluczRej","1"]
  A_OK := .N.
  if (RejOp["XX:ZnajdzRek",D_STRING]) A_OK := .T.
  RejOp["XX:ZamknijRej",""]
//
% IL-ZAPISOW-KONTABANK-RXR.ALG
// pobranie ilosc z definicji konta
// ilosc_gen / tempkontobank  
  ilosc_gen := 3
  if (tempkontobank == "") ExitAlg[0]
  RejOp["XX:OtworzRejSprawdz","KONTABANK.RXR"]
  if (RejOp["XX:ZnajdzRek",tempkontobank]) ilosc_gen := rejwezp_k["XX:generator_zapisy"]
  RejOp["XX:ZamknijRej",""]
  if (ilosc_gen = .) ilosc_gen := 3
//
//
// =====================================================
//            numer NKB
// =====================================================
% NKB-RXR.ALG
  CallAlg["konwersja"]
  RejOp["OtworzRejSprawdz","NKB.RXR"]
  RejOp["WywolajMenu","1"]
  RejOp["ZamknijRej",""]
//
//
% NKBALGO.XXX
"AKCJA-PRZED-WYSWIETLENIEM-NKB-MENU-?.DLG",NKB-MENU-START
"AKCJA-PRZED-WYSWIETLENIEM-NKB-REKORD-1.DLG",NKBREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-NKB-REKORD-3.DLG",NKBREKORD-DODAJSTART1
"AKCJA-PRZED-WYSWIETLENIEM-NKB-REKORD-0.DLG",NKBREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-NKB-REKORD-2.DLG",NKBREKORD-DODAJLOOK
"AKCJA-BUTTON1-NKB-REKORD-?.DLG",NKBREKORD-AKCEPTUJESZ
//"AKCJA-BUTTON20-NKB-MENU-?.DLG",NKBMENU-USUN
"AKCJA-BUTTON30-NKB-MENU-?.DLG",NKB-ZMIANA-KLUCZA
"AKCJA-BUTTON31-NKB-MENU-?.DLG",NKB-ZMIANA-KLUCZA
// ---------
// definicja rejestru
// --------
% NKB.RXR # opis rejestru
1,1
1
NKB # nazwa danych
# 
#
"Powt|orzony symbol numeru kierunkowego !"
"Zmieniasz dane o numerze kierunkowym ?"
"Dodajesz nowy numer kierunkowy ?" 
"Usun|a|c ten numer kierunkowy z listy ?" 
"Chcesz doda|c jeszcze jeden numer kierunkowy ?" 
"%s - nie ma takiego numeru kierunkowego.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych numer|ow kierunkowych !"
"Rejestr numer|ow kierunkowych jest pusty - wstawiasz pierwszy numer ?"
"Nie ma numeru kierunkowego o takim numerze.$Znale|x|c nast|epny ?"
"%s - nie ma takiego numeru kierunkowego !"
NKB-WAR
% NKB.DBF
0,log,,,,,D          # usuwanie "w miejscu"
1,string,11,,1,,N    # numer
2,string,40,2,2      # nazwa banku
% NKB.DIC # slownik do danych o X
"nkb_numer",1,Estring
"nkb_nazwa",2,Estring
% NKB-WAR.DIC
"Numer kierunkowy banku",1
"Nazwa",2
//
// ALGORYTMY
// --------
% NKB-ZMIANA-KLUCZA.ALG
  if (NKB_klucz = NKB_staryklucz) goto koniec
  CallAlg["nkb-ustawmenu"]
//%< NKB-USTAWMENU.XXX
  ExDialogOp["WyswietlPozycje","100"]
  ExDialogOp["WyswietlPozycje","101"]
  ExDialogOp["WyswietlPozycje","7"]
  koniec:
% NKB-USTAWMENU.ALG
  NKB_staryklucz := NKB_klucz
// klucz sie zmienil 
  if (NKB_klucz = 1) nkb := "NKBMENUNR,,KLUCZ,1"
  if (NKB_klucz = 1) nkb_naglowek := ToStr["Numer        Nazwa"]
  if (NKB_klucz = 2) nkb := "NKBMENUNAZWA,,KLUCZ,2"
  if (NKB_klucz = 2) nkb_naglowek := "Nazwa                                    Numer "
//  
  ExDialogOp["UstawMenuParam","100:"+nkb]
% NKB-MENU-START.ALG
  NKB_klucz := RejWezP_K["KolejKlucz"]
  NKB_naglowek := "        Numer Nazwa"
  CallAlg["nkb-ustawmenu"]
//
% NKBMENU-USUN.ALG
  if (not YesNAlert["Usun|a|c numer "+nkb_numer+" z listy ?"]) ExitAlg[0]
  RejOp["UsunRek",""]
  ExDialogOp["UsunRekordzMenu","100"]    
% NKBREKORD-AKCEPTUJESZ.ALG   // Opis: button AKCEPTUJESZ podczas dodawania
// ----- sprawdzenie poprawnosci
  if (not (nkb_numer = "")) goto dalej1
    OkAlert["Wprowad|x numer kierunkowy banku !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
  dalej1:
  if (not (nkb_nazwa = "")) goto dalej2
  OkAlert["Wprowad|x nazw|e numeru kierunkowego banku !"]
  ExDialogOp["IdzDoPozycji","11"]
  ExitAlg[0]
  dalej2:
  ExDialogOp["KoniecWykonywania",""]
//
% NKBREKORD-DODAJSTART1.ALG 
// wolane przy dodawanie nowego rekordu z pola
%< NKBREKORD-DODAJSTART.ALG
  ExDialogOp["PozycjaNieAktywna","10"]
  ExDialogOp["IdzDoPozycji","11"]
//
% NKBREKORD-DODAJSTART.ALG 
  ExDialogOp["PozycjaAktywna","10"]
  ExDialogOp["IdzDoPozycji","10"]
//
% NKBREKORD-DODAJMODIF.ALG 
  ExDialogOp["PozycjaNieAktywna","10"]
  ExDialogOp["IdzDoPozycji","11"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
//
% NKBREKORD-DODAJLOOK.ALG
  ExDialogOp["PozycjaNiewprowadzana","*"]
//
//
% NKB-MENU-1.DLG
%< NKB-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% NKB-MENU-0.DLG
%< NKB-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% NKB-MENU-3.DLG
%< NKB-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% NKB-MENU-2.DLG
%< NKB-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% NKB-MENU-X.XXX
PRZYCISK_CANCELID = 0
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Lista numer|ow kierunkowych bank|ow"
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY
##101,D,0,,,,yellow/blue&black/white&lwhite/lblue,,,,ZMIENNA:NKB_NAGLOWEK
##1,,ADP,,"%W%yb|or"
##5,LBGT,P,,"%D%odaj"
##4,LBGT,P,,"Z%m%ie|n"
##10,LBGT,P,,"%F%iltr"
##8,LBGT,P,,"%S%zukaj"
##9,LBGT,P,,"%N%ast|epny "
##6,LBGT,P,,"%U%su|n"
##2,LBGT,P,,"%O%pis"
##30,B,P,,"numeru",,,,,,ZMIENNA:NKB_klucz,,,1,"1"
##31,B,P,,"nazwy",,,,,,ZMIENNA:NKB_klucz,,A,1,"2"
 Sortuj wed|lug: #30     # #31     #
 #101                                                              #

#100                                                                #100<
 
% NKB-MENU-MODIF.XXX
%< NKB-MENU-X.XXX
                                             #5       # #8        # 
  Znajd|x: #7,0,AC                       #    #4       # #9        #
                                             #6       # #10       #

% NKB-MENU-LOOK.XXX
%< NKB-MENU-X.XXX
                                             #2       # #8        # 
  Znajd|x: #7,0,AC                      #               #9        #
                                                        #10       #

// --------
// REKORD
// --------
% NKB.XXX
PRZYCISK_CANCELID = 2
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dodanie/Zmiana danych NKB"
##10,0,ACP,,,,,,,,POLEUNIKALNE:nkb_numer
##11,0,ACP,,,,,,,,POLE:nkb_nazwa

Numer kierunkowy 
banku            - #10       #       


Nazwa banku      - #11                                    #


//
% NKB-REKORD-1.DLG,NKB-REKORD-0.DLG,NKB-REKORD-3.DLG
%<NKB.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% NKB-REKORD-2.DLG
%<NKB.XXX
%<REKORD-OK-BUTT.XXX
//
% NKBMENUNR.MEN
D=
1,,,,12
2,,,,40
% NKBMENUNAZWA.MEN
D=
2,,,,40
1,,,,12
//
% IMPORT-NKB.ALG
// import rejestru
  plik := "nkb.txt"
  sciezka := ""
//"$$(PROG-KATALOG)..\library\przelewy\txt\"
  nkb_rezygnujesz := .N.
  ExDialogOp["IdzDoDialogu","NKB-DIALOGX"]
  if (nkb_rezygnujesz) goto koniec
  if (sciezka == "") sciezka := "$$(PROG-KATALOG)..\library\przelewy\txt\"
  OkAlert["Importowany b|edzie plik "+plik+" $ ze |scie|zki "+sciezka+" !"]
  if (YesAlert["Czy importowa|c rejestr NKB"]) goto dalej
    goto koniec
  dalej:  
  RejOp["OtworzRejSprawdz","NKB.RXR"]
  if (RejOp["ImportujRejestr",sciezka+plik]) goto koniec
  OkAlert["B|l|ad podczas importu do NKB !"]
  koniec:
  ExitAlg[0]
% NKB-DIALOGX.DLG
PRZYCISK_CANCELID = 21
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wczytanie danych NKB"
##10,0,ACP,,,,,,,,ZMIENNA:sciezka
##11,0,ACP,,,,,,,,ZMIENNA:plik
##20,,ADP,,@3
##21,,ADP,,@4

 Domy|slna |scie|zka: 
 (Je|zeli |scie|zka pusta to pobierany plik systemowy)
                     
 Plik: nkb.txt
  
 Nowa |scie|zka: 
 
 #10                                             #10


 Nowy plik:    #11        #
    
    
      #20           #          #21           #    
   
% TABLICA-AKCJI-NKB-DIALOGX
"AKCJA-BUTTON20",NKB-AKCEPTUJESZ
"AKCJA-BUTTON21",NKB-REZYGNUJESZ
//
% NKB-REZYGNUJESZ.ALG
  nkb_rezygnujesz := .T.
  ExDialogOp["KoniecWykonywania",""]
% NKB-AKCEPTUJESZ.ALG
  nkb_rezygnujesz := .N.
  ExDialogOp["KoniecWykonywania",""]
% USTAL-NUMER-NKB.ALG
// zmienna pelne konto bankowe (konto:string) 
// wyjscie (numer_nkb:string 8 znakowy )
// wyjscie (numer_nkb1:string 11 znakowy)
// ustala do pierwszaej kreski
// sprawdzenie czy kontrola NKB
   a_ok := .N.
   d_string := konto
   callalg["kontrola-konta-alert"]
   if (a_ok) goto dalej_ustal
      ExitAlg[0]
   dalej_ustal:
   goto dalej1
   a_ok := .T.
   gdzie := StrIn["-",konto]
   if (gdzie > 1) goto dalej0
   gdzie := StrIn[" ",konto]
   if (gdzie > 1) goto dalej1
   goto dalej1
   a_ok := .N.
   ExitAlg[0]
// ------------ stare uklady ------------
   dalej0:
   miejsce := 0
   if (gdzie = 2) miejsce := gdzie+1
   if (gdzie = 2) gdzie := gdzie +6
   numer_nkb := StrCut[konto,miejsce,gdzie]
   if (not(miejsce = 0)) numer_nkb1 := StrCut[konto,0,11]
   dl := StrLen[numer_nkb]
   if ((dl = 8) or (dl < 8)) goto koniec
   OkAlert["D|lugo|s|c numeru kierunkowego jest za d|luga !$ Mo|ze by|c max.8 znak|ow lub 11."]
   a_ok := .N.
   koniec:
   ExitAlg[0]
   dalej1:
// ------------ nowe uklady spacje ------------
   d_string := konto
   callalg["zrob_nowe_konto"]
   konto := d_string
   if ((strcut[konto,0,2] == "PL") and (strlen[konto] = 28) ) konto := strcut[d_string,2,26]
   miejsce := 2
   gdzie := 8
   numer_nkb := StrCut[konto,miejsce,gdzie]
   numer_nkb1 := StrCut[konto,0,10]
   dl := StrLen[numer_nkb]
   a_ok := .T.
   ExitAlg[0]
//
% ZNAJDZ-NUMER-NKB.ALG
// zmienna (numer_nkb:string 8 znakow)
// zmienna (numer_nkb1:string 11 znakow)
// ustala do pierwszaej kreski
 A_OK := .T.
 cz_k := .T.
exitalg[0]
// sprawdzenie czy kontrola NKB
  if (not (RejOp["X:OtworzRejSprawdz","PARAMPRZELEW.RJR"])) GOTO go_nkb00
  if (RejOp["X:WezPierwszyRek",""]) goto go_nkb02
     cz_k := .T.
     goto go_nkb01
  go_nkb02:
     cz_k := rejwezp_l["x:kontrola"]
  go_nkb01:
  rejop["x:zamknijrej",""]
  go_nkb00:
  if (not(cz_k)) ExitAlg[0]
//
 kontroluj_nkb:
 if (RejOp["N:OtworzRejSprawdz","NKB.RXR"]) goto dalej01
 if (Yesalert["Nie mog|e otworzy|c listy z numerami kierunkowymi bank|ow !$ Czy i|s|c dalej ?"]) goto KONIEC
 a_ok := .N.
 ExitAlg[0]
 dalej01:
 numer_nkb_tmp := numer_nkb
 if (not(numer_nkb1 = "")) numer_nkb_tmp := numer_nkb1
 goto skip01
 if (numer_nkb1 = "") goto skip01
 if (RejOp["N:ZnajdzRek",numer_nkb1]) goto dalej02
 skip01:
 if (RejOp["N:ZnajdzRek",numer_nkb]) goto dalej02
   a_ok := .N.
 dalej02:
 d_string := rejwezp_s["N:nkb_nazwa"]
 RejOp["N:ZamknijRej",""]
 KONIEC:
 ExitAlg[0]
//
% ZNAJDZ-NUMER-NKB-NAZWA.ALG
// zmienna (numer_nkb:string 8 znakow)
// zmienna (numer_nkb1:string 11 znakow)
// ustala do pierwszaej kreski
 A_OK := .T.
 cz_k := .T.
// sprawdzenie czy kontrola NKB
  if (not (RejOp["X:OtworzRejSprawdz","PARAMPRZELEW.RJR"])) GOTO go_nkb00
  if (RejOp["X:WezPierwszyRek",""]) goto go_nkb02
     cz_k := .T.
     goto go_nkb01
  go_nkb02:
     cz_k := rejwezp_l["x:kontrola"]
  go_nkb01:
  rejop["x:zamknijrej",""]
  go_nkb00:
//
 kontroluj_nkb:
 if (RejOp["N:OtworzRejSprawdz","NKB.RXR"]) goto dalej01
 if (Yesalert["Nie mog|e otworzy|c listy z numerami kierunkowymi bank|ow !$ Czy i|s|c dalej ?"]) goto KONIEC
 a_ok := .N.
 ExitAlg[0]
 dalej01:
 numer_nkb_tmp := numer_nkb
 if (not(numer_nkb1 = "")) numer_nkb_tmp := numer_nkb1
 goto skip01
 if (numer_nkb1 = "") goto skip01
 if (RejOp["N:ZnajdzRek",numer_nkb1]) goto dalej02
 skip01:
 if (RejOp["N:ZnajdzRek",numer_nkb]) goto dalej02
   a_ok := .N.
 dalej02:
 d_string := rejwezp_s["N:nkb_nazwa"]
 RejOp["N:ZamknijRej",""]
 KONIEC:
 ExitAlg[0]
% USTAL-NUMER-NKB-NAZWA.ALG
// zmienna pelne konto bankowe (d_string:string) 
// sprawdzenie czy kontrola NKB
  if (d_string = "") ExitAlg[0] 
  a_ok := .T.
  cz_k := .T.
  if (not (RejOp["X:OtworzRejSprawdz","PARAMPRZELEW.RJR"])) GOTO go_nkb00
    if (RejOp["X:WezPierwszyRek",""]) goto go_nkb02
        cz_k := .T.
        goto go_nkb01
   go_nkb02:
        cz_k := rejwezp_l["x:kontrola"]
   go_nkb01:
        rejop["x:zamknijrej",""]
   go_nkb00:
   if (cz_k) goto wykonuj
        d_string := ""
        ExitAlg[0]   
   wykonuj:
//     
   a_ok := .N.
   if (d_string = "") ExitAlg[0] 
   konto := d_string  
   callalg["ustal-numer-nkb"]
   if (numer_nkb = "") ExitAlg[0]
   a_ok := .T.
   callalg["ZNAJDZ-NUMER-NKB-NAZWA"]
   if (d_string = "") a_ok := .N.
   ExitAlg[0]
//
// =================================== WYSTAWIANIE PRZELEWOW ==========
//
//
% WYSTAW-PRZELEW.ALG
  czy_byl := .T.
  id_modul := ""
  odl_key := "3"
  odl := .N.
  konto_kontrahenta := ""
  konto_nr_kontrahenta := ""
  swift_kontrahenta := ""
  WER := "ZL"
  p_modif := .N.
  ksiega_old_gen := ""
  ksiega_act_gen := ""
  prl_ksiega := ""
  CallSl["PRZELEWY->daj_ksiega_old_gen"]
  prl_ksiega := ksiega_act_gen
  CallAlg["WYSTAW-PRZELEW-XXX"]
//
% WYSTAW-PRZELEW-DEW.ALG
// USTAWIENIEZMIENNEJ DLA MENU PRZELEWOW
   id_modul := ""
   odl_key := "3"
   odl := .N.
   konto_kontrahenta := ""
   konto_nr_kontrahenta := ""
   swift_kontrahenta := ""
   WER := "DEW"
   p_modif := .N.
   ksiega_old_gen := ""
   ksiega_act_gen := ""
   prl_ksiega := ""
   CallSl["PRZELEWY->daj_ksiega_old_gen"]
   prl_ksiega := ksiega_act_gen
   CallAlg["WYSTAW-PRZELEW-DEWIZY"]
//   
% WYSTAW-PRZELEW-DEWIZY.ALG
   WER := "ZL"
   CZY := (StrIn["D",cechy_wersji])
   IF (CZY > 0) WER := "DEW"
   if (WER == "DEW") goto dalej0
     If (YesAlert["Wersja systemu FK jest niedewizowego !$ Mo|zna wystawia|c tylko przelewy z|lot|owkowe !$ Czy kontynuowa|c wystawianie przelewu ?"]) goto dalej0
     ExitAlg[0]
    dalej0:
   ksiega_old_gen := ""
   ksiega_act_gen := ""
   prl_ksiega := ""
   CallSl["PRZELEWY->daj_ksiega_old_gen"]
   prl_ksiega := ksiega_act_gen
   CallAlg["WYSTAW-PRZELEW-XXX"]
//
% WYSTAW-PRZELEW-XXX.ALG
//  if (JestUprawnienie["PRZELEWY","A","Nie masz uprawnie|n do wystawiania",.T.]) goto dalej00
//    exitalg[0]
//  dalej00:
// konwersja dla nowych przelewow
czy_byl := .T.
CallAlg["konwersja"]
//
if (FinnOp["@1openmainx",""]) goto skip0
OkAlert["Nie mog|e otworzy|c ksi|egi !"]
goto koniec
skip0:
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
if (RejOp["OtworzRejTemp",id_modul+"PRZELEW.RJR"]) GOTO skip1
 Okalert["Nie mog|e otworzy|c listy z przelewami !"]
goto koniec
skip1:
if (RejOp["A:OtworzRejTemp",id_modul+"PRZETMP.RJR"]) goto skip2
 Okalert["Nie mog|e otworzy|c listy temp z przelewami !"]
goto koniec
skip2:
if (RejOp["AX:OtworzRejTemp",id_modul+"PRZETMP.RJR"]) goto skip21
 Okalert["Nie mog|e otworzy|c listy temp z przelewami !"]
goto koniec
skip21:
rejop["AX:zmienkluczrej","2"]
if (RejOp["B:OtworzRejTemp",id_modul+"PRZETMP1.RJR"]) goto skip3
 Okalert["Nie mog|e otworzy|c listy z zapisami !"]
goto koniec
skip3:
   RejOp["B:ZmienKluczRej","2"]
   data_przelewu := d_dzisiaj
   petla:
if (not RejOp["DodajRek",""]) goto koniec
//
  typ_prl_banku := ""
  nazwa_banku := ""
  numer_banku := ""
  swift_banku := ""
  firma_nip := ""
  firma_regon := ""
  firma_1 := ""
  firma_2 := ""
  firma_3 := ""
  firma_4 := ""
//
   konto_klient := ""
   xkontoklient := ""
   zapisy_rezygnujesz := .N.
   wydruk := .N.
   fifo := .N.
   rozr := .N.
   rozl := .N.
   dew := .N.
   atrybut := ""
   stara_tr := ""
   format_przelew := ""
   ksiega_old := ""
   modem := .N.
   tresc_temp := ""
   stary_klient := ""
   stary_sklient := ""
   stary_sklientplus := ""
   st_kwota := .
   no_kwota := .
   kwota_zapisu := .
   pozycja := .
   ilosc_gen := 3
   xilosc_gen := 0
   ExDialogOp["IdzDoDialogu","PRZELEW-"+WER]
if (ZAPISY_REZYGNUJESZ) goto dalej
// zapamietanie nowego dokumentu
   xRejWstawP_L["zaznacz",.N.]
   CallAlg["ZAPISZ-PRZELEW"]
//
   if (not(YesAlert["Czy wystawiasz nast|epny przelew ?"])) goto dalej
   RejOp["A:WyczyscRej",""]
   RejOp["B:WyczyscRej",""]
   goto petla
   dalej:
   RejOp["ZamknijRej",""]
   RejOp["A:ZamknijRej",""]
   RejOp["AX:ZamknijRej",""]
   FinnOp["Close",""]
koniec:
// 
% ZAPISZ-PRZELEW.ALG
   if (pustepole["status"]) xRejWstawP_S["status","wprow"]
   if (rejwezp_k["kwota_przel"] <= 0) xrejwstawp_s["status","b|l|ad"]
   callalg["PRZELEW-ZAPIS-SUMA-KWOT-ZL"]
   if (not(RejOp["E:OtworzRejSprawdz",id_modul+"PRZELEW.RJR"])) okalert["B|lad 01"]
   if (not(RejOp["F:OtworzRejSprawdz",id_modul+"PRZEZAP.RJR"])) okalert["B|lad 02"]
   if (not(RejOp["G:OtworzRejSprawdz",id_modul+"PRZEZAP1.RJR"])) okalert["B|lad 03"]
   ExDialogOp["PamietajDok",",A,E,F,99,1"]
   dokid := RejWezP_K["E:dokid"]
   numer_nkb := ""
   numer_nkb1 := ""
   konto := rejwezp_s["E:numerbanku_kl"]
   if (not(pustepole["E:nazwabanku_kl"])) goto dalej000
   if (pustepole["E:numerbanku_kl"]) goto dalej000
     d_string := rejwezp_s["E:numerbanku_kl"]
     CallAlg["ustal-numer-nkb-nazwa"]
     RejWstawP_S["E:nazwabanku_kl",d_string]
   dalej000:
// --------------------------- kopiowanie kont pomocniczych
   if (not(RejOp["B:WezPierwszyRek",""])) goto dalej1
   petla0:
   RejOp["G:DodajRek",""]
   RejOp["B:PrzeniesPola","G:"]
   RejWstawP_K["G:dokidzap0",dokid]
   RejOp["G:ZapiszRek",""]
   if (RejOp["B:WezNastepnyRek",""]) goto petla0
   dalej1:
   RejOp["E:ZamknijRej",""]
   RejOp["F:ZamknijRej",""]
   RejOp["G:ZamknijRej",""]
if (not(odl)) goto koniec1
     if (RejOp["PP:OtworzRejSprawdz","PRLDOK.RXR"]) goto skip04
       OkAlert["Nie mog|e otworzy|c listy z zapisami !"]
       goto koniec1
     skip04:
     RejOp["PP:ZmienKluczRej","4"]
     CallAlg["zaznacz-prldok"]
     RejOp["PP:ZmienKluczRej","14"]
     RejOp["PP:ZamknijRej",""]
koniec1:
//
% TABLICA-AKCJI-PRZELEW-ZL,TABLICA-AKCJI-PRZELEW-DEW,TABLICA-AKCJI-PLC_PRZELEW-ZL,TABLICA-AKCJI-PLC_PRZELEW-DEW,TABLICA-AKCJI-TMP_PRZELEW-ZL,TABLICA-AKCJI-TMP_PRZELEW-DEW
"AKCJA-PRZED-WYSWIETLENIEM",PRZELEW-PRZED
"AKCJA-PO-POLU10",PRZELEW-KONTOBANK
"AKCJA-PO-POLU13",PRZELEW-DATA-PRZELEW
"AKCJA-PRZED-POLEM15",PRZELEW-KLIENT-PRZED
"AKCJA-PO-POLU15",PRZELEW-KLIENT
"AKCJA-PRZED-POLEM23",PRZELEW-KLIENTPLUS-PRZED
"AKCJA-PO-POLU23",PRZELEW-KLIENTPLUS
"AKCJA-PRZED-POLEM16",PRZELEW-KLIENT-KONTO-PRZED
"AKCJA-PO-POLU16",PRZELEW-KLIENT-KONTO
"AKCJA-PO-POLU22",PRZELEW-KONTO-BANKOWE
"AKCJA-F2-POLE22",PRZELEW-KONTO-BANKOWE-WYBIERZ
"AKCJA-F2-POLE25",PRZELEW-SWIFT-WYBIERZ
"AKCJA-PO-POLU25",PRZELEW-SWIFT-ZNAJDZ
"AKCJA-BUTTON0",PRZELEW-AKCEPTUJESZ
"AKCJA-BUTTON1",PRZELEW-REZYGNUJESZ
"AKCJA-BUTTON2",LOOK-KLPLUS
"AKCJA-BUTTON3",PRZELEW-WYDRUK
"AKCJA-BUTTON4",PRZELEW-KARTROZR
"AKCJA-BUTTON5",PRZELEW-WLASCICIEL
"AKCJA-BUTTON6",LOOK-KONTABANK-XXX
"AKCJA-BUTTON7",PRZELEW-KONTRAHENCI
"AKCJA-BUTTON8",PRZELEW-TRANSAKCJE
"AKCJA-BUTTON9",PRZELEW-ZAPISY-CZYSC
"AKCJA-BUTTON10",ZAPIS-NA-KONTACH-ROZLICZ-LOOK
"AKCJA-BUTTON11",NKB-RXR
"AKCJA-BUTTON12",PRZELEW-ZALACZNIK
"AKCJA-BUTTON18",PRZELEW-TRANSAKCJE-PRZYCHODZACE-FA
"AKCJA-BUTTON19",PRZELEW-TRANSAKCJE-PRZYCHODZACE-KW
"AKCJA-BUTTON34",PRZELEW-ZAPIS-SUMA-KWOT-ZL-BUTTON
"AKCJA-F2-POLE32",PRZELEW-WYBOR-TYPPRL-RXR
//
% PRZELEW-ZAPIS-SUMA-KWOT-ZL-BUTTON.ALG
callalg["PRZELEW-ZAPIS-SUMA-KWOT-ZL"]
exdialogop["wyswietlpozycje","33"]
rejop["a:wezostatnirek",""]
ExDialogOp["UstawMenuParam","101:ZAPISY-PRZELEW-"+WER+",A"]
exdialogop["wyswietlpozycje","101"]
//
% PRZELEW-PRZED.ALG
  tresc_temp := ""
//  if (not(JestUprawnienie["PRZELEWY","B","Nie masz uprawnie|n do modyfikacji",.T.])) goto blokada
  if ((RejWezP_S["status"] = "wprow") or (RejWezP_S["status"] = "") or (RejWezP_S["status"] = "autom") or (RejWezP_S["status"] = "b|l|ad")) goto dalej0
  blokada:
  ExDialogOp["UstawMenuParam","100:ZAPISY-PRZELEW-MENU1-"+WER]
  ExDialogOp["UstawMenuParam","101:ZAPISY-PRZELEW-"+WER+",A"]
  ExDialogOp["PozycjaNieWprowadzana","*"]
  goto dalej01
  dalej0:
  ExDialogOp["UstawMenuParam","100:ZAPISY-PRZELEW-MENU-"+WER]
  ExDialogOp["UstawMenuParam","101:ZAPISY-PRZELEW-"+WER+",A"]
  ExDialogOp["PozycjaWprowadzana","*"]
  dalej01:
  if (not(RejWezP_D["data_przel"] = '')) goto dalej
  xRejWstawP_D["data_przel",data_przelewu]
  dalej:
  CallAlg["parambank"]
  D_POS := 15
//  ExDialogOp["IdzDoPozycji","15"]
//  if (konto_przel = "") ExDialogOp["IdzDoPozycji","10"]
  if (konto_przel = "") D_POS := 10
  if (odl) CallAlg["PRZENIES-PRLDOK"]
// -------------------------------
  ilosc_gen := 3
  tempkontobank := RejWezP_S["konto_przel"] 
  callalg["IL-ZAPISOW-KONTABANK-RXR"]
  callalg["PRZELEW-ZAPIS-SUMA-KWOT-ZL"]
// -------------------------------
  RejOp["A:WezPierwszyRek",""]
  if (not(pustepole["format_przel"])) format_przelew := rejwezp_s["format_przel"]
//  
% PRZELEW-DATA-PRZELEW.ALG
    data_przelewu := rejwezp_d["data_przel"]
% PRZELEW-KONTOBANK.ALG
  callalg["PRZELEW-KONTOBANK-GET"]
  if (id_modul == "PLC_") goto dalej1
    ExDialogOp["WyswietlPozycje","32"]
  dalej1:
    ExDialogOp["WyswietlPozycje","11"]
    ExDialogOp["WyswietlPozycje","12"]
    ExDialogOp["WyswietlPozycje","24"]
  exitalg[0]
% PRZELEW-KONTOBANK-GET.ALG
  tempkontobank := RejWezP_S["konto_przel"] 
  iF (not(tempkontobank = "")) goto dalej0
    typ_prl_banku := ""
    nazwa_banku := ""
    numer_banku := ""
    swift_banku := ""
    goto dalej1
  dalej0:
  CallAlg["kontabank"]
  xRejWstawP_S["konto_przel",tempkontobank]
  ilosc_gen := 3
  callalg["IL-ZAPISOW-KONTABANK-RXR"]
  if (id_modul == "PLC_") goto dalej1
    if (pustepole["typ_prl"]) xRejWstawP_S["typ_prl",typ_prl_banku]
  dalej1:
  koniec:
  exitalg[0]
% PARAMBANK.ALG
//
  if (not (RejOp["X:OtworzRejSprawdz","PARAMPRZELEW.RJR"])) GOTO KONIEC
  if (RejOp["X:WezPierwszyRek",""]) goto dalej
    OkAlert["Uzupe|lnij dane o w|lasnej firmie ?"]
    RejOp["X:ZamknijRej",""]
  goto koniec
  dalej:
  tempkontobank := RejWezP_S["konto_przel"]
  If (tempkontobank = "") tempkontobank := RejWezP_S["X:konto"]
//  
  tresc_temp := RejWezP_S["X:tresc"]
  CallAlg["param-dane-global"]
  RejOp["X:ZamknijRej",""]
  typ_prl_banku := ""
  CallAlg["kontabank"]
//
  kontobank := ""
  menu_gen_bank := "Z"
  metoda_gen_bank := 0
  klucz_gen_bank := 4
  znak_gen := .T.
  ksiega_old_gen := ""
  ksiega_act_gen := ""
  odloz_gen := .N.
  zaplaty_gen := .N.
  CallSl["PRZELEWY->daj_konto_prl"]
  CallSl["PRZELEWY->daj_menu_gen_prl"]
  CallSl["PRZELEWY->daj_metoda_gen_prl"]
  CallSl["PRZELEWY->daj_klucz_gen_prl"]
  CallSl["PRZELEWY->daj_znak_gen_prl"]
  CallSl["PRZELEWY->daj_odloz_gen_prl"]
  CallSl["PRZELEWY->daj_zaplaty_gen_prl"]
  CallSl["PRZELEWY->daj_ksiega_old_gen"]
  if (not(kontobank = "")) tempkontobank := kontobank
//
  if (pustepole["konto_przel"]) xRejWstawP_S["konto_przel",tempkontobank]
  if (id_modul == "PLC_") ExitAlg[0]
  if (pustepole["typ_prl"]) xRejWstawP_S["typ_prl",typ_prl_banku]
  KONIEC:
  EXITALG[0]
//
% DEF_KONTO_BANK.ALG
  if (not (RejOp["X:OtworzRejSprawdz","PARAMPRZELEW.RJR"])) Exitalg[0]
  if (RejOp["X:WezPierwszyRek",""]) goto dalej
     OkAlert["Uzupe|lnij dane o w|lasnej firmie ?"]
     RejOp["X:ZamknijRej",""]
  goto koniec
  dalej:
  tempkontobank := RejWezP_S["X:konto"]  
  RejOp["X:ZamknijRej",""]
  kontobank := tempkontobank
  CallSl["PRZELEWY->daj_konto_prl"]
  KONIEC:
  EXITALG[0]
//
% KONTABANK.ALG
  IF (NOT RejOp["X:OtworzRejSprawdz",id_modul+"KONTABANK.RXR"]) GOTO KONIEC
  IF (RejOp["X:ZnajdzRek",tempkontobank]) goto dalej
  if (tempkontobank = "") goto koniec1
    Okalert["Brak takiego konta bankowego "+tempkontobank+" !"]
  goto koniec1
  dalej:
  typ_prl_banku := RejWezP_S["X:typ_prl"]
  nazwa_banku := RejWezP_S["X:nazwa_bank"]
  numer_banku := RejWezP_S["X:numer_bank"]
  swift_banku := RejWezP_S["X:swift_bank"]
  format_przelew := RejWezP_S["X:format_bank"]
  ksiega_old := RejWezP_S["X:ksiega_old"]
  modem := RejWezP_L["X:modem"]
  koniec1:
  RejOp["X:ZamknijRej",""]
  KONIEC:
  EXITALG[0]
//
% PRZELEW-KLIENT-PRZED.ALG
  stary_sklient := RejWezP_S["s_klient"]
% PRZELEW-KLIENTPLUS-PRZED.ALG
  stary_sklientPLUS := RejWezP_S["kl_plus"]
//
% PRZELEW-KLIENT.ALG
  a_ok := .T.
  kluczkl := RejWezP_S["s_klient"]
  if (kluczkl = "") goto dalej
  if (stary_sklient = kluczkl) goto dalej
//
  if (pustepole["nazwa_kl1"]) goto nowy_wybrany
  if (not(stary_sklient = kluczkl)) goto nowy_wybrany
  if (YesAlert["Kontrahent ju|z by|l wybrany ! $ Czy przepisa|c dane na nowo ?"]) goto nowy_wybrany
  goto dalej
  nowy_wybrany:
  d_string := RejWezP_S["s_klient"]
  if (id_modul == "PLC_") goto dalej001
    callalg["USTAL-PRIORYTET-KONTRAHENTA"]
    if (not((d_string = "98") or (d_string = "99"))) goto dalej001
     OkAlert["Kontrahent ma wprowadzony priorytet blokady p|latno|sci !"]
     a_ok := .N.
     ExitAlg[0] 
  dalej001: 
//
    RejOp["C:OtworzRejSprawdz","REJESTRKL.RXR"]
    wstaw := .N.
    konto_klient := ""
    CallAlg["ustalkontoklienta"]
    xRejWstawP_S["vatkontoplat",konto_klient]
    if (konto_klient = "") goto klient_wielu
      CallAlg["plan-klient"]
      ExDialogOp["WyswietlPozycje","111"]
      goto przep
    klient_wielu:
     rozr := .T.
     rozl := .N.
     kluczkl := RejWezP_S["s_klient"] 
    przep:
      kluczkl := RejWezP_S["s_klient"] 
      CallAlg["KLIENT-XX"]
      RejOp["C:ZamknijRej",""]
      CallAlg["przelew-klient-konto-przed"]
      wydruk := .N.
  dalej:
  if (id_modul == "PLC_") ExitAlg[0]
  
  d_string := RejWezP_S["s_klient"]
  callalg["USTAL-PRIORYTET-KONTRAHENTA"]
  rejwstawp_s["priorytet_kl",d_string]

  d_string := RejWezP_S["s_klient"]
  d_string_konto := ""
  callalgfile["rejestrkontbank.sl","KONTRAHENT-KBANK-ILE"]
  if (stringnaliczbe[d_string] < 2) goto dalej_00
    okalert["Kontrahent posiada wi|ecej kont bankowych !"]
    exdialogop["idzdopozycji","22"]
    ExitAlg[0]
  dalej_00:
  if (not(stringnaliczbe[d_string] = 1)) goto dalej_01
    if (pustepole["numerbanku_kl"]) rejwstawp_s["numerbanku_kl",d_string_konto]
  dalej_01:
  
  ExitAlg[0]
//
% PRZELEW-KLIENTPLUS.ALG
    kluczkl := RejWezP_S["kl_plus"]
    if (kluczkl = "") goto dalej
    if (stary_sklientplus = kluczkl) goto dalej
    RejOp["C:OtworzRejSprawdz","KLPLUS.RXR"]
    rozr := .N.
    rozl := .N.
    CallAlg["KLIENT-XX"]
    xRejWstawP_S["vatkontoplat",RejWezP_S["C:kl_kontoplan"]]
    ExDialogOp["WyswietlPozycje","16"]
    RejOp["C:ZamknijRej",""]
    CallAlg["przelew-klient-konto-przed"]
  dalej:
  ExitAlg[0]
//
% PRZELEW-KLIENT-KONTO-PRZED.ALG
  STARY_KLIENT := RejWezP_S["vatkontoplat"]
% PRZELEW-KLIENT-KONTO.ALG
  IF (STARY_KLIENT = RejWezP_S["vatkontoplat"]) goto dalej01
  if (not(vatkontoplat = "")) goto dalej
  ExDialogOp["IdzDoPozycji","101"]
  ExitAlg[0]
  dalej:
  konto_klient := RejWezP_S["vatkontoplat"]
  if (stary_klient == konto_klient) goto dalej01
  CallAlg["plan-klient"]
  ExDialogOp["WyswietlPozycje","111"]
  if (rozr) goto konto_rozrachunkowe
  RejOp["C:OtworzRejSprawdz","KLPLUS.RXR"]
  RejOp["C:ZmienKluczRej","2"]
  kluczkl := konto_klient
  goto przepisz1
  konto_rozrachunkowe:
  RejOp["C:OtworzRejSprawdz","REJESTRKL.RXR"]
  przepisz1:
  CallAlg["klient-xx"]
  RejOp["C:ZamknijRej",""]
  wydruk := .N.
  dalej01:
  if (id_modul == "PLC_") ExitAlg[0]
  d_string := RejWezP_S["s_klient"]
  callalg["USTAL-PRIORYTET-KONTRAHENTA"]
  rejwstawp_s["priorytet_kl",d_string]
  a_ok := .T.
//
% PLAN-KLIENT-X.ALG
  FinnOp["@1openmainx",""]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  CallAlg["plan-klient"]
  FinnOp["@1Close",""]
% PLAN-KLIENT.ALG
  if (konto_klient = "") ExitAlg[0]
  FinnOp["@1openmainx",""]
  kluczkl := ""
  atrybut := ""
  rozr := .N.
  dew := .N.
  rozl := .N.
  fifo := .N.
  if (not(FinnOp["ZnajdzDok",konto_klient])) goto koniec
  kluczkl := k_klnazwa
  rozr := k_roz
  dew := k_dew
  rozl := k_rzl
  if (strin["I",k_cechy] > -1) fifo := .T.
  if (rozr) atrybut := atrybut + "RZR/"
  if (rozl) atrybut := atrybut + "KLS/"
  if (dew) atrybut := atrybut + "DEW/"
  if (fifo) atrybut := atrybut + "FIF/"
  FinnOp["@1Close",""]
  ExitAlg[0]
  koniec:
  FinnOp["@1Close",""]
  rejop["p:otworzrej","planrodz.rjr"]
  if (not(rejop["P:znajdzrek",konto_klient])) goto koniecx
  kluczkl := rejwezp_s["p:plan_klsym"]
  TEMP_K_CECHY := LiczbaNaFlage["KONTO-CECHY",RejWezP_K["p:plan_cechy"]]
  if (strin["R",TEMP_K_CECHY] >-1) rozr := .T.
  if (strin["D",TEMP_K_CECHY] >-1) dew := .T.
  if (strin["L",TEMP_K_CECHY] >-1) rozl := .T.
  if (strin["I",TEMP_K_CECHY] >-1) fifo := .T.
  if (rozr) atrybut := atrybut + "RZR/"
  if (rozl) atrybut := atrybut + "KLS/"
  if (dew) atrybut := atrybut + "DEW/"
  if (fifo) atrybut := atrybut + "FIFO/"
  koniecx:
  rejop["p:zamknijrej",""]
  ExitAlg[0]
% USTALKONTOKLIENTA.ALG
// wyszukaj konto nabywcy w planie kont
// wejscie ze zmienn logiczne (wstaw) I konto_klient
  LSYM := RejWezP_S["S_KLIENT"]
  RejOp["W:OtworzRejSprawdz","PLANRODZ.RJR"]
  RejOp["W:ZmienKluczRej","2"]
  if (NOT(LSYM = "")) goto SKOK
  LSYM := RejWezP_S["KL_PLUS"]
  if (LSYM = "") goto dalej0
// obliczenie liczby kont dla klienta C:kl_sym
   SKOK:
    if (not RejOp["W:ZnajdzRek",LSYM]) goto dalej0
    if (not RejOp["W:WezNastepnyRek",""]) goto dalej1
    if (RejWezP_S["W:plan_klsym"] == LSYM) goto dalej2
      RejOp["W:WezPoprzedniRek",""]
    goto dalej1
    dalej2:
    if (not(wstaw)) goto koniec
// wiele kont rozrachunkowych dla platnika
    REZYGNUJESZ := .T.
    VATPARAM_KLSYM := LSYM
    ExDialogOp["IdzDoDialogu","WYBORKONTAZKLIENTA"]
    if (not REZYGNUJESZ) goto dalej1
    goto koniec
    dalej0:
// brak konta dla kontrahenta
    konto_klient := ""
    goto dalej10
    dalej1:
    konto_klient := RejWezP_S["W:plan_symbol"]
    dalej10:
koniec:
RejOp["W:ZamknijRej",""]
//
% KLIENT-XX.ALG 
  RejOp["C:WezPierwszyRek",""]
  if (RejOp["C:ZnajdzRek",kluczkl]) goto okklient
  goto koniec
  okklient:
  s_klient := RejWezP_S["C:kl_sym"]
  nazwa_kl1 := RejWezP_S["C:kl_nazwa1"]
  nazwa_kl2 := RejWezP_S["C:kl_nazwa2"]
  kodmiasto_kl := RejWezP_S["C:kl_kodmiasto"]
  adres_kl := RejWezP_S["C:kl_adres"]
  bank := RejWezP_S["C:kl_nazwabanku"]
  nrbank := RejWezP_S["C:kl_konto"]
  swift := RejWezP_S["C:kl_swift"]
  
  if (rozr) xRejWstawP_S["s_klient",S_klient]
  if (rozr) xRejWstawP_S["kl_plus",""]
  if (not(rozr)) xRejWstawP_S["s_klient",""]
  if (not(rozr)) xRejWstawP_S["kl_plus",S_klient]
  
  xRejWstawP_S["nazwa_kl1",nazwa_kl1]
  xRejWstawP_S["nazwa_kl2",nazwa_kl2]
  xRejWstawP_S["kodmiasto_kl",kodmiasto_kl]
  xRejWstawP_S["adres_kl",adres_kl]
  xRejWstawP_S["nazwabanku_kl",bank]
  xRejWstawP_S["numerbanku_kl",nrbank]
  xRejWstawP_S["swift",swift]
//
  ExDialogOp["WyswietlPozycje","15"]
  ExDialogOp["WyswietlPozycje","16"]
  ExDialogOp["WyswietlPozycje","17"]
  ExDialogOp["WyswietlPozycje","18"]
  ExDialogOp["WyswietlPozycje","19"]
  ExDialogOp["WyswietlPozycje","20"]
  ExDialogOp["WyswietlPozycje","21"]
  ExDialogOp["WyswietlPozycje","22"]
  ExDialogOp["WyswietlPozycje","23"]
  kluczkl := ""
  if (not(nrbank = "")) goto dalej0
    OkAlert["Podaj numer konta bankowego !"]
    ExDialogOp["IdzDoPozycji","22"]
    ExitAlg[0]
  dalej0:
  if (not(modem)) goto koniec0
    konto := nrbank
    numer_nkb := ""
    numer_nkb1 := ""
    CallAlg["ustal-numer-nkb"]
    if (a_ok) goto koniec1
      if (wer =="ZL") OkAlert["B|l|edny numer konta bankowego dla podanego kontrahenta !"]
      A_OK := .T.
      ExDialogOp["IdzDoPozycji","22"]
      ExitAlg[0]
  koniec1:
    CallAlg["znajdz-numer-nkb"]
    if (a_ok) goto koniec0
      OkAlert["Brak takiego: "+numer_nkb+" numeru kierunkowego banku w rejstrze NKB !$ Dopisz numer konta NKB do listy kontrolnej !"]
      A_OK := .T.
      ExDialogOp["IdzDoPozycji","22"]
      ExitAlg[0]
  koniec0:
  if (not(bank = "")) goto koniec
  if (nrbank = "") goto koniec
  d_string := nrbank
//    okalert["0 "+a_ok]
  CallAlg["ustal-numer-nkb-nazwa"]
//    okalert["1 "+a_ok]
  xRejWstawP_S["nazwabanku_kl",d_string]
  ExDialogOp["WyswietlPozycje","21"]  
//
  koniec:
  ExitAlg[0]
// 
% PRZELEW-KONTO-BANKOWE-WYBIERZ.ALG
  konto_nr_kontrahenta := rejwezp_s["numerbanku_kl"]
  swift_kontrahenta :=  rejwezp_s["swift"]
  d_string := rejwezp_s["s_klient"]
  ddd_string := ""
  callalgfile["rejestrkontbank.sl","WYBOR-KONTRAHENT-KBANK"]
  if (d_string == "") goto koniec_out
  konto_nr_kontrahenta := d_string
  swift_kontrahenta := ddd_string
  ExitAlg[0]
  koniec_out:
  d_string := konto_nr_kontrahenta
  ExitAlg[0]
  
% PRZELEW-KONTO-BANKOWE.ALG
  a_ok := .T.
  if (wer == "DEW") ExitAlg[0]
  if (RejWezP_S["numerbanku_kl"] = "") ExitAlg[0]
  if (not(modem)) ExitAlg[0]
  if (pustepole["status"]) goto dalej00
  if (not(rejwezp_s["status"] == "wprow")) ExitAlg[0]
    dalej00:
    konto := RejWezP_S["numerbanku_kl"]
    numer_nkb := ""
    numer_nkb1 := ""
    CallAlg["ustal-numer-nkb"]
  if (a_ok) goto koniec1
    if (YesAlert["B|l|ad w numerze konta bankowego kontrahenta ! $ Czy pokaza|c rejestr NKB ?"]) goto koniec2
    ExitAlg[0]
  koniec1:
  CallAlg["znajdz-numer-nkb"]
  if (a_ok) goto koniec
  if (YesAlert["Brak takiego: "+numer_nkb+" numeru kierunkowego banku w rejestrze NKB !$ Czy pokaza|c rejestr NKB ?"]) goto koniec2
    ExitAlg[0]
  koniec2:
    CallAlg["NKB-RXR"]
    a_ok := .N.
    ExitAlg[0]
  koniec:
  if (not(pustepole["nazwabanku_kl"])) goto koniecc
// 
  if (pustepole["numerbanku_kl"]) goto koniecc
    d_string := rejwezp_s["numerbanku_kl"]
    CallAlg["ustal-numer-nkb-nazwa"]
    xRejWstawP_S["nazwabanku_kl",d_string]
    ExDialogOp["WyswietlPozycje","21"] 
  koniecc:
  ExitAlg[0]
//
% PRZELEW-AKCEPTUJESZ.ALG
// po wybraniu : akceptujesz
// -------------------------------
callalg["PRZELEW-ZAPIS-SUMA-KWOT-ZL"]
exdialogop["wyswietlpozycje","33"]
if ((ilosc_gen - xilosc_gen) > -1) goto dalej0
   if (YesNAlert["UWAGA !!! $  $ Przekroczona ilo|s|c/d|lugo|s|c przesy|lki do HOMEBANKING'u. $ Czy chcesz zapisa||c przelew ?"]) goto dalej0
   ExitAlg[0]
dalej0:
// -------------------------------
if (Not RejOp["A:PustyRej",""]) goto dalej1
   OkAlert["Wprowad|x zapisy w przelewie !"]
   ExDialogOp["IdzDoPozycji","101"]
   ExitAlg[0]
dalej1:
if (not (RejWezP_S["konto_przel"] = "")) goto dalej2
   OkAlert["Podaj konto bankowe dla przelewu !"]
   ExDialogOp["IdzDoPozycji","10"]
   ExitAlg[0]
dalej2:
if (not (RejWezP_D["data_przel"] = '')) goto dalej3
   OkAlert["Podaj dat|e przelewu !"]
   ExDialogOp["IdzDoPozycji","13"]
   ExitAlg[0]
dalej3:
if (modem) goto dalej5
if (not (RejWezP_S["nazwabanku_kl"] = "")) goto dalej5
   OkAlert["Podaj nazw|e banku kontrahenta !"]
   ExDialogOp["IdzDoPozycji","21"]
   ExitAlg[0]
dalej5:
if (not (RejWezP_S["numerbanku_kl"] = "")) goto dalej6
   OkAlert["Podaj numer konta bankowego kontrahenta !"]
   ExDialogOp["IdzDoPozycji","22"]
   ExitAlg[0]
dalej6:
//if (wer == "ZL") goto dalej7
//if (not(RejWezP_S["swift"] = "")) goto dalej7 
//   OkAlert["Podaj numer SWIFT dla kontrahenta !"]
//   ExDialogop["IdzDoPozycji","25"]
//   ExitAlg[0]
//dalej7:
   a_ok := .N.
   CallAlg["sprawdz-rozpisanie-kont"]
   if (a_ok) goto dalej4
   OkAlert["Kwota rozpisana na klasyfikacje $nie zagadza si|e z sum|a zapis|ow !"]
   ExDialogOp["IdzDoPozycji","101"]
   ExitAlg[0]
dalej4:   
if (wer == "ZL") goto zloty
  if (not(RejWezP_K["kwota_przel_dew"] < 0)) goto dalej8
  OkAlert["Przelew nie mo|ze by|c na kwot|e ujemn|a !"]
  ExitAlg[0]
zloty:
  if (not(RejWezP_K["kwota_przel"] < 0)) goto dalej8
  OkAlert["Przelew nie mo|ze by|c na kwot|e ujemn|a !"]
  ExitAlg[0]
dalej8:
// 
if ( not YesAlert["Akceptujesz przelew ?"]) ExitAlg[0]
   if (wydruk) goto dalej01 
   if (modem) goto dalej01
   if (id_modul == "TMP_") goto dalej01
   if (YesAlert["Czy drukowa|c przelew ?"]) CallAlg["przelew-wydruk"]
   dalej01:
   rejwstawp_s["format_przel",format_przelew]
   ExDialogOp["KoniecWykonywania",""]
   ZAPISY_REZYGNUJESZ := .N.
% PRZELEW-REZYGNUJESZ.ALG
if (not(rejwezp_s["status"] == "wprow")) goto koniec
if (YesAlert["Rezygnujesz z przelewu ?"]) goto koniec
   ExDialogOp["IdzDoPozycji","101"]
   exitalg[0]
koniec:   
  ZAPISY_REZYGNUJESZ := .T.
  ExDialogOp["KoniecWykonywania",""]   
// 
% PRZELEW-WYDRUK.ALG
  rpos0 := rejwezp_k["rejestrrekpos"]
  rpos1 := rejwezp_k["a:rejestrrekpos"]
  if (not(format_przelew = "")) goto dalej0
  OkALert["Brak formatu wydruku przelewu !"]
  a_ok := .N.
  rejop["ustawsprawdzrekpos",tostr["#rpos0#S:0"]]
  rejop["a:ustawsprawdzrekpos",tostr["#rpos1#S:0"]]
  ExitAlg[0]
  dalej0:
  DR_FILE := ""
  T_SPOSOB := 0
  IdzDowydruku["przelewy\format_druku.prn",""]
  if (wer == "ZL") goto dalej1
  if (YesAlert["Wydrukowa|c za|l|acznik do przelewu ?"]) CallAlg["przelew-zalacznik"]
  dalej1:
  if (not(strcut[format_przelew,0,2] == "ie")) goto dalej2
    look_prg := 1
    callpyt["import pro_tool | pro_tool.view_plik_html("""+DR_FILE+""","+look_prg+")"]
  dalej2:
  wydruk := .T.
  rejop["ustawsprawdzrekpos",tostr["#rpos0#S:0"]]
  rejop["a:ustawsprawdzrekpos",tostr["#rpos1#S:0"]]
  ExitAlg[0]
% PRZELEW-KARTROZR.ALG
//  wstaw := .N.
  konto_klient := ""
  RejOp["C:OtworzRejSprawdz","REJESTRKL.RXR"]
  wstaw := .T.
  CallAlg["ustalkontoklienta"]
  RejOp["C:ZamknijRej",""]
  if (konto_klient = "") goto koniec
  CallAlg["plan-klient"]
  ExDialogOp["WyswietlPozycje","111"]
  if (rozr) goto dalej
  IF (YesAlert["Konto kontrahenta:"+konto_klient+" jest kontem nierozrachunkowym !$Czy chcesz obejrze|c kartotek|e kont ?"]) goto dalej1
  goto koniec
  dalej:
  FinnIdzDo["KartRozr",konto_klient,""]
  goto koniec
  dalej1:
  FinnMenuFunkcja[151,""]
  KONIEC:
  konto_klient := ""
  ExitAlg[0]
% PRZELEW-WLASCICIEL.ALG
  CallAlg["ZMIANA-PARAM-PRZELEW"]
  ExitAlg[0]
% PRZELEW-KONTRAHENCI.ALG
  FinnMenuFunkcja[150,""]
  ExitAlg[0]
% PRZELEW-TRANSAKCJE.ALG
// WARUEK TERMINOW PLATNOSCI
  suma := RejWezP_K["kwota_przel"]
  konto_klient := RejWezP_S["vatkontoplat"]
  raz := .N.
  if (not(konto_klient = "")) raz := .T.
  st_ksiega := .N.
  if (ksiega_old = "") goto skip001
  if (not(ksiega_old = "" )) st_ksiega := .T.
  if (not(YesAlert["Czy przeszukiwa|c transakcje z poprzedniej ksi|egi ?"])) st_ksiega := .N.
  if (not(st_ksiega)) goto skip001
    finnop["@1openmainx",ksiega_old]   
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  skip001:  
  TERMPLAT_REZYGNUJESZ := .N.
  termplat1 := ''
  termplat2 := ''
  waluta_war := ""
  tryb_pracy := 1
  ExDialogOp["IdzDoDialogu","TERM-PLAT-WAR-"+WER]
  if (not(termplat_rezygnujesz)) goto skip002
    if (st_ksiega) finnop["@1close",""]
    exitalg[0]
  skip002:
  txt_komunikat := "Przegl|adanie transakcji.Prosz|e czeka|c !"
  CallAlg["komunikat-work"]
  IF ((RejWezP_S["s_klient"] = "") and (RejWezp_s["kl_plus"] = "")) goto dalejk01
  goto dalej
  dalejk01:
    Okalert["Podaj symbol kontrahenta lub symbol z listy dodatkowej kontrahent|ow !"]
    goto koniec
  dalej:
  
  if (tryb_pracy = 0) CallAlg["przelew-transakcje-0"]
  if (tryb_pracy = 1) CallAlg["przelew-transakcje-1"]
  
  koniec:
  if (st_ksiega) finnop["@1close",""]
  ExDialogOp["UsunDialog","TEMPDIALOG"]
  if (wer == "ZL") RejWstawP_K["Kwota_przel",suma]
  if (wer == "DEW") RejWstawP_K["Kwota_przel_dew",suma]
  if (wer == "DEW") RejWstawP_S["waluta",waluta_war]
  ExDialogOp["WyswietlPozycje","30"]
  if (wer == "DEW") ExDialogOp["WyswietlPozycje","31"]
  ExDialogOp["WyswietlPozycje","33"]
  RejOp["A:WezPierwszyRek",""]
  ExDialogOp["WyswietlPozycje","101"]
  ExDialogOp["IdzDoPozycji","101"]
  ExitAlg[0]
% PRZELEW-TRANSAKCJE-0.ALG
  jest := .N.
  if (raz) goto dalej01
  lsym := RejWezP_S["s_klient"]
  RejOp["W:OtworzRejSprawdz","PLANRODZ.RJR"]
  RejOp["W:ZmienKluczRej","2"]
  if (RejOp["W:ZnajdzRek",LSYM]) goto dalej001
    OkAlert["Brak konta dla kontrahenta o symbolu "+lsym+" !"]
    goto koniec1
  dalej001:
  petlacalosc:
  lsym := RejWezP_S["s_klient"]
  if (RejWezP_S["W:plan_klsym"] == LSYM) goto dalej002
  goto kkoniec
  dalej002:
  konto_klient := RejWezP_S["W:plan_symbol"]
  dalej003:
//
  CallAlg["plan-klient"]
  ExDialogOp["WyswietlPozycje","111"]
  if (rozr) goto dalej01
    OkAlert["Konto:"+konto_klient+" nie jest kontem rozrachunkowym !"]
    goto koniec1
  dalej01:
  if (wer == "ZL") goto dalej02
  if (dew) goto dalej02
    OkAlert["Konto:"+konto_klient+" nie jest kontem dewizowym !"]
    goto koniec1
  dalej02:
  if (FinnOp["ZnajdzDok",konto_klient]) goto dalej2
  goto koniec1
  dalej2:
// POBRANIE PIERWSZEJ TRANSAKCJI 
  if (RozrOp["ToFirstT",""]) goto dalej03
  if (rozr) OkAlert["Brak transakcji na koncie "+konto_klient+" !"]
  if (not(rozr)) OkALert["Konto "+konto_klient+" jest kontem nierozrachunkowym !"]
  goto koniec1
  DALEJ03:
// poczatek petli
  dalej3:
  if ((termplat_rezygnujesz) or ((termplat1 = '') and (termplat2 = ''))) goto dalej000
  if ((termplat < termplat1) or (termplat > termplat2)) goto nexttrans
  dalej000:
    Disptext["."]
    kowta := 0
    If (not(tr_rodz == "Dos")) goto nexttrans
//    
  d_string := "N"
  PRL_TRANSAKCJA := nrtr
  PRL_KLIENT := kl_sym
  PRL_KONTO_KLIENT := k_sym
  CallSl["PRZELEWY->czy_zakup_gotowka"]
  if (d_string == "T") goto nexttrans
//    
    if (wer == "ZL") goto robzloty
    if (RodzTraDew = "") goto nexttrans
    if (not(RodzTraDew = waluta_war)) goto nexttrans
      kwota := S[TransObrDewMa[waluta_war],TransObrDewWn[waluta_war]]
      if (not((kwota = .) OR (kwota = 0))) goto dodajrek1
      if ((TransObrDewMa[waluta_war] > 0) or (TransObrDewMa[waluta_war] = 0)) goto nexttrans
      kwota := S[TransObrDewWn[waluta_war],TransObrDewMa[waluta_war]]
      kwota := kwota * -1
      if ((kwota = .) or (kwota = 0)) goto nexttrans
      goto dodajrek1
      goto nexttrans
      dodajrek1:
      if (kwota = .) goto nexttrans
      RejOp["A:DodajRek",""]
      xRejWstawP_S["A:tresc1",tresc_temp]
      xRejWstawP_S["A:trans",NrTr]
      xRejWstawP_D["A:data_plat",termplat] 
      xRejWstawP_S["A:vatkontoplat",konto_klient]
      xRejWstawP_S["A:s_klient",RejWezP_S["s_klient"]]
      xRejWstawP_K["A:kwota_dew",kwota] 
      xRejWstawP_S["A:waluta",waluta_war] 
    goto zapiszrek
    robzloty:
      kwota := S[TrObrMa,TrObrWn]
      if (not((kwota = .) OR (kwota = 0))) goto dodajrek2
      if ((TrObrMa > 0) or (TrObrMa = 0)) goto nexttrans
      kwota := S[TrObrWn,TrObrMa]
      kwota := kwota * -1
      if ((kwota = .) or (kwota = 0)) goto nexttrans
      goto dodajrek2
      goto nexttrans
      dodajrek2:
      if (kwota = .) goto nexttrans
      RejOp["A:DodajRek",""]
      xRejWstawP_S["A:tresc1",tresc_temp]
      xRejWstawP_S["A:trans",NrTr]
      xRejWstawP_D["A:data_pLAT",termplat] 
      xRejWstawP_S["A:vatkontoplat",konto_klient]
      xRejWstawP_S["A:s_klient",RejWezP_S["s_klient"]]
      xRejWstawP_K["A:wartosc",kwota] 
    zapiszrek:
    RejOp["A:ZapiszRek",""]
    suma := suma + kwota
    nokwota:
    jest := .T.
    wydruk := .N.
    if (not(rozl)) goto nexttrans
    RejOp["X:OtworzRejTemp","KONTARZLTMP.RXR"]
    CallAlg["generuj-rozliczeniowe"]
    RejOp["X:ZamknijRej",""]
// -------------------- nastepna trans
  nexttrans:
  if (RozrOp["ToNextT",""]) goto dalej3
  if (raz) goto kkoniec
  if (RejOp["W:WezNastepnyRek",""]) goto petlacalosc
  kkoniec:
  if (jest) goto dalej4
  OkAlert["Brak transakcji z saldami !"]
  goto koniec1
  dalej4:
  koniec1:
// ==========================
// ==========================
// ==========================
% PRZELEW-TRANSAKCJE-1.ALG
  RejOp["AA:OtworzRejTemp","PRZETMP2.RJR"]
  jest := .N.
  if (raz) goto dalej003
  lsym := RejWezP_S["s_klient"]
  RejOp["W:OtworzRejSprawdz","PLANRODZ.RJR"]
  RejOp["W:ZmienKluczRej","2"]
  if (RejOp["W:ZnajdzRek",LSYM]) goto dalej001
    OkAlert["Brak konta dla kontrahenta o symbolu "+lsym+" !"]
    goto koniec1
  dalej001:
// ==========================
  petlacalosc:
  lsym := RejWezP_S["s_klient"]
  if (RejWezP_S["W:plan_klsym"] == LSYM) goto dalej002
  goto koniec_temp
  dalej002:
  konto_klient := RejWezP_S["W:plan_symbol"]
  dalej003:
//
  CallAlg["plan-klient"]
  ExDialogOp["WyswietlPozycje","111"]
  if (rozr) goto dalej01x
    OkAlert["Konto:"+konto_klient+" nie jest kontem rozrachunkowym !"]
    goto koniec1
  dalej01x:
//
// generowanie tempa wg konto + data faktury
//
  if (not(FinnOp["ZnajdzDok",konto_klient])) goto next_kontox
  if (not(RozrOp["ToFirstT",""])) goto next_kontox
  petla_trans_01:
  d_string := "N"
  PRL_TRANSAKCJA := nrtr
  PRL_KLIENT := kl_sym
  PRL_KONTO_KLIENT := k_sym
  CallSl["PRZELEWY->czy_zakup_gotowka"]
  if (d_string == "T") goto next_trans_01
  
    if ((termplat_rezygnujesz) or ((termplat1 = '') and (termplat2 = ''))) goto ok_trans_01
    if ((termplat < termplat1) or (termplat > termplat2)) goto next_trans_01
    ok_trans_01:
    data_faktury := ''
    CallAlg["GENERUJ-DATE-FAKTURY-TRANS"]
    RejOp["AA:DodajRek",""]
    xRejWstawP_S["AA:konto_tmp",konto_klient]
    xRejWstawP_D["AA:data_tmp",data_faktury]
    xRejWstawP_S["AA:trans_tmp",NrTr]
    RejOp["AA:ZapiszRek",""]  
    next_trans_01:
  if (RozrOp["ToNextT",""]) goto petla_trans_01
  next_kontox:
 if (raz) goto koniec_temp
 if (RejOp["W:WezNastepnyRek",""]) goto petlacalosc
 koniec_temp:
 if (not(RejOp["AA:WezPierwszyRek",""])) goto koniec1
//  ========================
  dalej01:
  konto_klient := RejWezP_S["AA:konto_tmp"]
  trans := RejWezP_S["AA:trans_tmp"]
  CallAlg["plan-klient"]
//
  if (wer == "ZL") goto dalej02
  if (dew) goto dalej02
    OkAlert["Konto:"+konto_klient+" nie jest kontem dewizowym !"]
    goto koniec1
  dalej02:
  if (FinnOp["ZnajdzDok",konto_klient]) goto dalej2
  goto koniec1
  dalej2:
  if (RozrOp["ZnajdzTra",trans]) goto ok_tra
  OkAlert["Brak transkcji"]
  goto next_temp
  ok_tra:
  dalej3:
  if ((termplat_rezygnujesz) or ((termplat1 = '') and (termplat2 = ''))) goto dalej000
  if ((termplat < termplat1) or (termplat > termplat2)) goto nexttrans
  dalej000:
    Disptext["."]
    kowta := 0
    If (not(tr_rodz == "Dos")) goto nexttrans
    if (wer == "ZL") goto robzloty
    if (RodzTraDew = "") goto nexttrans
    if (not(RodzTraDew = waluta_war)) goto nexttrans
      kwota := S[TransObrDewMa[waluta_war],TransObrDewWn[waluta_war]]
      if (not((kwota = .) OR (kwota = 0))) goto dodajrek1
      if ((TransObrDewMa[waluta_war] > 0) or (TransObrDewMa[waluta_war] = 0)) goto nexttrans
      kwota := S[TransObrDewWn[waluta_war],TransObrDewMa[waluta_war]]
      kwota := kwota * -1
      if ((kwota = .) or (kwota = 0)) goto nexttrans
      goto dodajrek1
      goto nexttrans
      dodajrek1:
      RejOp["A:DodajRek",""]
      xRejWstawP_S["A:tresc1",tresc_temp]
      xRejWstawP_S["A:trans",NrTr]
      xRejWstawP_D["A:data_pLAT",termplat] 
      xRejWstawP_S["A:vatkontoplat",konto_klient]
      xRejWstawP_S["A:s_klient",RejWezP_S["s_klient"]]
      xRejWstawP_K["A:kwota_dew",kwota] 
      xRejWstawP_S["A:waluta",waluta_war] 
    goto zapiszrek
    robzloty:
      kwota := S[TrObrMa,TrObrWn]
      if (not((kwota = .) OR (kwota = 0))) goto dodajrek2
      if ((TrObrMa > 0) or (TrObrMa = 0)) goto nexttrans
      kwota := S[TrObrWn,TrObrMa]
      kwota := kwota * -1
      if ((kwota = .) or (kwota = 0)) goto nexttrans
      goto dodajrek2
       goto nexttrans
      dodajrek2:
      if (kwota = .) goto nexttrans
      RejOp["A:DodajRek",""]
      xRejWstawP_S["A:tresc1",tresc_temp]
      xRejWstawP_S["A:trans",NrTr]
      xRejWstawP_D["A:data_pLAT",termplat] 
      xRejWstawP_S["A:vatkontoplat",konto_klient]
      xRejWstawP_S["A:s_klient",RejWezP_S["s_klient"]]
      xRejWstawP_K["A:wartosc",kwota] 
    zapiszrek:
    RejOp["A:ZapiszRek",""]
    suma := suma + kwota
    nokwota:
    jest := .T.
    wydruk := .N.
    if (not(rozl)) goto nexttrans
    RejOp["X:OtworzRejTemp","KONTARZLTMP.RXR"]
    CallAlg["generuj-rozliczeniowe"]
    RejOp["X:ZamknijRej",""]
// -------------------- nastepna trans
  nexttrans:
  next_temp:
  if (RejOp["AA:WezNastepnyRek",""]) goto dalej01
  kkoniec:
  if (jest) goto dalej4
    OkAlert["Brak transakcji z saldami !"]
  goto koniec1
  dalej4:
  koniec1:
  RejOp["AA:ZamknijRej",""]
// ==========================
// ==========================
// ==========================
//
% PRZELEW-ZAPISY-CZYSC.ALG
  IF (YesAlert["Czy oczy|sci|c zapisy w przelewie ?"]) goto dalej
  ExitAlg[0]
  dalej:
  If (YesNalert["Jeste|s pewien ?"]) GOTO DALEJ1
  ExitAlg[0]
  DALEJ1:
  RejOp["A:WyczyscRej",""]
  RejOp["B:WyczyscRej",""]
  xilosc_gen := 0
  if (wer == "ZL") RejWstawP_K["kwota_przel",0]
  if (wer == "DEW") RejWstawP_K["kwota_przel_dew",0]
  ExDialogOp["WyswietlPozycje","30"]
  if (wer == "DEW") ExDialogOp["WyswietlPozycje","31"]
  ExDialogOp["WyswietlPozycje","33"]
  ExDialogOp["WyswietlPozycje","101"]
  ExitAlg[0]
//
% ZAPISY-PRZELEW-MENU.XXX
*201," Przegl|adanie "
7," Kontrahenci                      <F6> ",,,,F6
4," %K%artoteka rozrachunkowa kontrahenta"
2," Dane dla kont nierozrachunkowych <F9> ",,,,F9
11," %N%umery kierunkowe bank|ow"

5," Informacja o wystawcy przelewu "
6," Definicje kont bankowych "
*202," %T%ransakcje "
10," Podg%l%|ad zapis|ow rozpisanych klasyfikacji"

8," Wczytanie transakcji z rozrachunk|ow"

//18," %F%aktura z rejestru faktur przychodz|acych"
//19," Kw%i%t z rejestru faktur przychodz|acych"
//
9," Usu|n wszystkie zapisy"
//
% ZAPISY-PRZELEW-MENU1.XXX
*201," Przegl|adanie "
7," Kontrahenci                      <F6> ",,,,F6
4," %K%artoteka rozrachunkowa kontrahenta"
2," Dane dla kont nierozrachunkowych <F9> ",,,,F9
11," %N%umery kierunkowe bank|ow"

5," Informacja o wystawcy przelewu "
6," Definicje kont bankowych "
*202," %T%ransakcje "
10," Podg%l%|ad zapis|ow rozpisanych klasyfikacji"

8," Wczytanie transakcji z rozrachunk|ow"
9," Usu|n wszystkie zapisy"
//
% ZAPISY-PRZELEW-MENU-ZL
P = 11,,ADS
*200," Za%k%o|ncz"
0,@3
1,@4

3," %W%ydruk"
%<ZAPISY-PRZELEW-MENU.XXX
//
% ZAPISY-PRZELEW-MENU-DEW
P = 11,,ADS
*200," Za%k%o|ncz"
0,@3
1,@4

3," %W%ydruk"
12," Za|l|acznik do przelewu"
%<ZAPISY-PRZELEW-MENU.XXX
//  
// ======== dla ogladania ====
//
% ZAPISY-PRZELEW-MENU1-ZL
P = 11,,ADS
*200," Za%k%o|ncz"
1,@5

3," %W%ydruk"
%<ZAPISY-PRZELEW-MENU1.XXX
//
% ZAPISY-PRZELEW-MENU1-DEW
P = 11,,ADS
*200," Za%k%o|ncz"
1,@5

3," %W%ydruk"
12," Za|l|acznik do przelewu"
%<ZAPISY-PRZELEW-MENU1.XXX 
//
% TABLICA-AKCJI-ZAPISY-PRZELEW-ZL,TABLICA-AKCJI-ZAPISY-PRZELEW-DEW,TABLICA-AKCJI-TMP_ZAPISY-PRZELEW-ZL
"AKCJA-PRZED-WYSWIETLENIEM",ZAPISY-PRZELEW-PRZED
"AKCJA-OKLINIA",ZAPISY-PRZELEW-OK
"AKCJA-PUSTALINIA",ZAPISY-PRZELEW-PUSTA
"AKCJA-USUNLINIE",ZAPISY-PRZELEW-USUN
"AKCJA-PRZED-POLEM41",ZAPISY-PRZELEW-TRESC
"AKCJA-PRZED-POLEM42",ZAPISY-PRZELEW-PRZEDTRANSAKCJA
"AKCJA-PO-POLU42",ZAPISY-PRZELEW-POTRANSAKCJA
"AKCJA-F2-POLE42",ZAPISY-PRZELEW-WYBIERZ-TRANS
"AKCJA-PRZED-POLEM43",ZAPISY-PRZELEW-PRZEDKWOTA
"AKCJA-PO-POLU43",ZAPISY-PRZELEW-POKWOTA
"AKCJA-PRZED-POLEM45",ZAPISY-PRZELEW-KONTO-PRZED
"AKCJA-PO-POLU45",ZAPISY-PRZELEW-KONTO
//
% ZAPISY-PRZELEW-PRZED.ALG
  ExDialogOp["IdzDoPozycji","41"]
  kwota_zapisu := 0
% ZAPISY-PRZELEW-TRESC.ALG
  if (tresc_temp = "") ExitAlg[0]
  if (RejWezP_S["A:tresc1"] = "") RejWstawP_S["A:tresc1",tresc_temp]
% ZAPISY-PRZELEW-KONTO-PRZED.ALG
  RejWstawP_S["A:s_klient",RejWezP_S["s_klient"]]
  xkontoklient := RejWezP_S["vatkontoplat"]
  if (not(xkontoklient = "")) goto dalej0
  xkontoklient := RejWezP_S["A:vatkontoplat"]
  if (not(xkontoklient = "")) goto dalej0
  RejOp["C:OtworzRejSprawdz","REJESTRKL.RXR"]
  wstaw := .T.
  konto_klient := ""
  CallAlg["ustalkontoklienta"]
  RejOp["C:ZamknijRej",""]
  RejWstawP_S["A:vatkontoplat",konto_klient]
  ExitAlg[0]
  dalej0:
  RejWstawP_S["A:vatkontoplat",xkontoklient]
% ZAPISY-PRZELEW-KONTO.ALG
  pozycja := d_pos
  if ((not(xkontoklient = "")) and (RejWezP_S["A:vatkontoplat"] = "")) goto koniec
  IF (RejWezP_S["A:vatkontoplat"] = "") goto dalej0
  goto koniec
  dalej0:
  RejOp["C:OtworzRejSprawdz","REJESTRKL.RXR"]
  wstaw := .T.
  konto_klient := ""
  CallAlg["ustalkontoklienta"]
  RejOp["C:ZamknijRej",""]
  RejWstawP_S["A:vatkontoplat",konto_klient]
  RejWstawP_S["A:s_klient",RejWezP_S["s_klient"]]
  koniec:
  CallAlg["plan-klient"]
  ExDialogOp["WyswietlPozycje","111"]
  ExitAlg[0]
% ZAPISY-PRZELEW-PRZEDTRANSAKCJA.ALG
  STARA_TR := RejWezP_S["A:trans"]
% ZAPISY-PRZELEW-POTRANSAKCJA.ALG
  pozycja := d_pos
  if (stara_tr == RejWezP_S["A:trans"]) goto koniec
  IF (RejWezP_S["A:trans"] = "") goto koniec 
  konto_klient := RejWezP_S["A:vatkontoplat"]
  if (konto_klient = "") goto koniec
  CallAlg["ustal-transakcje"]
  koniec:
  ExitAlg[0]
% ZAPISY-PRZELEW-WYBIERZ-TRANS.ALG
  pozycja := d_pos
  konto_klient := RejWezP_S["A:vatkontoplat"]
  if (konto_klient = "") goto koniec
  CallAlg["plan-klient"]
  ExDialogOp["WyswietlPozycje","111"]
  if (not (rozr)) goto koniec
  finn_konto := konto_klient
  st_ksiega := .N.
  if (ksiega_old = "") goto skip001
  if (not(ksiega_old = "" )) st_ksiega := .T.
  if (not(YesAlert["Czy pokaza|c transakcje z poprzedniej ksi|egi ?"])) st_ksiega := .N.
  if (not(st_ksiega)) goto skip001
    finnop["@1openmainx",ksiega_old]   
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  skip001:
  D_STRING := WybierzFinn["SymbolTrans"]
  IF (d_string = "") d_string := A:trans
  if (stara_tr == d_string) goto koniec1
    RejWstawP_S["A:trans",d_string]
    CallAlg["ustal-transakcje-x"]
  koniec1:
  if (st_ksiega) finnop["@1close",""]
  stara_tr := d_string
  koniec:
  ExDialogOp["WyswietlPozycje","45"]
  ExitAlg[0]
// ---------------------------------------------------
% USTAL-TRANSAKCJE.ALG
  konto_klient := RejWezP_S["A:vatkontoplat"]
  CallAlg["plan-klient"]
  ExDialogOp["WyswietlPozycje","111"]
  if (not (rozr)) goto koniec
  CallAlg["ustal-transakcje-x"]
  koniec:
  ExitAlg[0]
% USTAL-TRANSAKCJE-X.ALG
 finnop["@3openmainx",""]
  if (FinnOp["ZnajdzDok",RejWezP_S["A:vatkontoplat"]]) goto okklient
  OkAlert["Brak konta klienta w planie kont !"]
  goto koniec1
  okklient:   
  If (RozrOp["ZnajdzTra",RejWezP_S["A:trans"]]) goto oktra
    OkAlert["Brak takiej transakcji "+RejWezP_S["A:trans"]+" $w kartotece rozrachunkowej kontrahenta !"]
  goto koniec1
  OkTra:
  kwota := S[TrObrMa,trobrWn] 
  if (not((kwota = .) or (kwota = 0))) goto dal00
  if ((TrObrMa > 0) or (TrObrMa = 0)) goto dal00
  kwota := S[TrObrWn,trobrMa] 
  kwota := kwota *-1
  dal00:
  if (wer = "ZL") goto dewizy00
  if (not(RodzTraDew = "")) goto dewizy01
    kwota := 0
    OkAlert["Podana transakcja o numerze "+A:trans+" ma r|o|zne waluty w zapisach !$ Kwot|e i symbol waluty musisz podat|c r|ecznie !"]
    goto koniec1
  dewizy01:
  kwota := S[TransObrDewMa[RodzTraDew],TransObrDewWn[RodzTraDew]]
  if (not((kwota = .) or (kwota = 0))) goto dewizy00
  if ((TransObrDewMa[RodzTraDew] > 0)  or (TransObrDewMa[RodzTraDew] = 0)) goto dewizy00
  kwota := S[TransObrDewWn[RodzTraDew],TransObrDewMa[RodzTraDew]]
  kwota := kwota *-1
  dewizy00:
  if ((kwota = .) or (kwota = 0)) goto dalej00
  tak := YesAlert["Saldo transakcji wynosi "+ToStr["#kwota#S:X"]+" ! $ Czy przenie|s|c t|e kwot|e do zapisu przelewu ?"]
  if (not(tak)) goto koniec1
    xRejWstawP_D["A:data_plat",Termplat]
  if (wer = "DEW") goto skip01
    kwota_stara := RejWezP_K["A:Wartosc"]
    xRejWstawP_K["A:wartosc",kwota]
    xRejWstawP_K["Kwota_przel",RejWezP_K["kwota_przel"] - kwota_stara + kwota]
    goto skip00
  skip01:
    xRejWstawP_S["A:waluta",RodzTraDew]
    xRejWstawP_K["A:kwota_dew",kwota]
    xRejWstawP_K["Kwota_przel_dew",RejWezP_K["kwota_przel_dew"] + kwota]
  skip00:
  if (not(rozl)) goto dalej01
    RejOp["X:OtworzRejTemp","KONTARZLTMP.RXR"]
    CallAlg["generuj-rozliczeniowe"]
    CallAlg["ZAPIS-KONTO-ROZLICZ-DIALOG"]
  dalej01:
    ExDialogOp["WyswietlPozycje","30"]
    if (wer == "DEW") ExDialogOp["WyswietlPozycje","31"]
    if (wer == "DEW") ExDialogOp["WyswietlPozycje","46"]
    ExDialogOp["WyswietlPozycje","33"]
    ExDialogOp["WyswietlPozycje","44"]
    ExDialogOp["IdzDoPozycji","43"]
  goto koniec1
  dalej00: 
    OkAlert["Podane transakcja nie ma salda Ma !"]
  if (not(rozl)) goto koniec1
    RejOp["X:OtworzRejTemp","KONTARZLTMP.RXR"]
    CallAlg["generuj-rozliczeniowe"]
  koniec1:
  finnop["@3close",""]
// ---------------------------------------------------
//
% GENERUJ-ROZLICZENIOWE.ALG
// przeszukanie klasyfikacji dla zapisu
//
   kwota_rzl := 0
  if (not (RozrOp["ToFirstZ",""])) ExitAlg[0]
   rozl_kwota_wejscie := kwota
   rozl_kwota_jeszcze := .
   rozl_nazwa_naglowka := "Rozpisanie kkasyfikacji dla zapisu ."
   rozl_tryb := 0
  petla_rzr:
   if (zapiswn) goto next_rzr
   if (not(zap_rodz == "Tra")) goto next_rzr
   tryb := 0
   if ((kwota = KwotaZapMa) and (wer == "ZL")) tryb := 1
   if ((kwota = KwotaZapDew) and (wer == "DEW")) tryb := 1
   if (not(FinnOp["ToFirstRozl","N"])) goto next_rzr
   lp := 0
   petla_rzl:
    kwota_x_rzl := 0
    if ((tryb = 1) and (wer == "ZL")) kwota_x_rzl := KwotaRozl
    if ((tryb = 1) and (wer == "DEW")) kwota_x_rzl := KwotaDewRozl
    RejOp["X:DodajRek",""]
    RejWstawP_S["X:konto_rzl",KontoRozl]
    RejWstawP_K["X:kwota_rzl",kwota_x_rzl]
    RejOp["X:ZapiszRek",""]
    kwota_rzl := kwota_rzl + Kwota_x_rzl
    lp := lp + 1
   if (FinnOp["ToNextRozl","N"]) goto petla_rzl
   goto dalej02
   next_rzr:
    if (RozrOp["ToNextZ",""]) goto petla_rzr
// ----------------------------------------------------------
   dalej02:
//    if (not(lp = 1)) goto dalej03
   if (not(RejOp["X:WezPierwszyRek",""])) goto dalej03
   dalej04: 
    RejOp["B:DodajRek",""]
    RejOp["X:przeniesPola","B:"]
    if (wer == "ZL") goto zloty
      RejWstawP_K["B:kwota_rzl_dew",RejWezP_K["X:kwota_rzl"]]
      if (not(kwota = kwota_rzl)) RejWstawP_K["B:kwota_rzl_dew",kwota]
    goto zloty1    
    zloty:
      RejWstawP_K["B:kwota_rzl",RejWezP_K["X:kwota_rzl"]]
      if (not(kwota = kwota_rzl)) RejWstawP_K["B:kwota_rzl",kwota]
    zloty1:
     RejWstawP_K["B:dokidzap1",A:dokidzap1]
     RejOp["B:ZapiszRek",""]
    jest_next_rzl := RejOp["X:WezNastepnyRek",""]
    if (not(jest_next_rzl)) goto dalej03
    if (not(kwota = kwota_rzl)) goto dalej03
    if ((TrObrMa = kwota) and (wer == "ZL")) goto dalej04
    if ((TransObrDewMa[A:waluta] = kwota) and (wer == "DEW")) goto dalej04
   dalej03:
//
// -------------------------------------
% KONTA-ROZLICZENIOWE-ZAPIS-PRZED.ALG
  CallAlg["licz_suma_kont"]
  if (RejWezP_K["X:kwota_rzl"] = .) RejWstawP_K["X:kwota_rzl",rozl_kwota_jeszcze]
  ExDialogOp["IdzDoPozycji","300"]
// -------------------------------------
% ZAPISY-PRZELEW-PRZEDKWOTA.ALG
// przed polem kwota - zapamietanie liczby
   CallAlg["ZAPAM_KWOTA"]
% ZAPISY-PRZELEW-POKWOTA.ALG
// wolane po polu kwota - naliczenie sumy
   if (wer == "ZL") kwota_zapisu := A:wartosc
   if (wer == "DEW") kwota_zapisu := A:kwota_dew
   pozycja := d_pos
   CallALg["NOWA_KWOTA"]
   CallALg["LICZ_SUMA"]
% ZAPISY-PRZELEW-OK.ALG
// sprawdz poprawnosc linii: wolane po wyjsciu z linii
  A_OK := .N.
//  if (not (RejWezP_S["A:tresc1"] = "")) goto dalej2
//  OkAlert["Wprowad|x tresc zapisu przelewu !"]
//  ExDialogOp["IdzDoPozycji","41"]
//  ExitAlg[0]
// OK
  dalej2:
  if (wer == "DEW") goto dalej20
  if (not (RejWezP_K["A:wartosc"] = .)) goto dalej3
    OkAlert["Wprowad|x kwot|e zapisu przelewu !"]
    ExDialogOp["IdzDoPozycji","43"]
    ExitAlg[0]
  dalej20:
    if (not (RejWezP_K["A:kwota_dew"] = .)) goto dalej21
      OkAlert["Wprowad|x kwot|e zapisu przelewu !"]
      ExDialogOp["IdzDoPozycji","43"]
      ExitAlg[0]
    dalej21:
    if (not (RejWezP_S["A:waluta"] = "")) goto dalej22
      OkAlert["Wprowad|x symbol waluty przelewu !"]
      ExDialogOp["IdzDoPozycji","46"]
      ExitAlg[0]
    dalej22:
    if (A:waluta = waluta) goto dalej3
      if (not(RejWezP_K["A:LiczbaRekordow"] = 1)) goto dalej23
      RejWstawP_S["waluta",A:waluta]
      goto dalej3
    dalej23:
      OkAlert["Podana waluta w zapisie jest inna ni|z przelewu !"]
      ExDialogOp["IdzDoPozycji","46"]
      ExitAlg[0]
// 
  dalej3:
  A_OK := .T.
  CallAlg["sprawdz-zapis"]
  if (a_ok) goto skip_spr_zap
  CallAlg["ZAPIS-KONTO-ROZLICZ"]
  CallAlg["suma-zapisu-rozlicz"]
// ===============================
skip_spr_zap:
  if (p_modif) goto skip_spr_zap1
//  if (pustepole["a:vatkontoplat"] or pustepole["a:trans"]) goto skip_spr_zap1
  if (pustepole["a:trans"]) goto skip_spr_zap1
// -----------------------------------------------------  
  rejop["B:otworzrej","przezap.rjr"]
  byl_prl := ""
  a_ok := .T.
  kwota_byl := .
  kwota_dew_byl := .
  if (pustepole["a:vatkontoplat"]) goto spr_kontrahent
    rejop["B:zmienkluczrej","4"]
    d_string := ToStr["#rejwezp_s[""a:vatkontoplat""]#S*#rejwezp_s[""a:trans""]#S"]
    d_string_k_sym := rejwezp_s["a:s_klient"]
      d_string_k_sym := k_sym
      d_string_nrtr := rejwezp_s["a:trans"]
      d_string_dew := "PLN"
    callalg["sprawdz-czy-jest-transakcja"]
    goto spr_wyjdz
  spr_kontrahent:
    rejop["B:zmienkluczrej","5"]
    d_string := ToStr["#rejwezp_s[""a:s_klient""]#S*#rejwezp_s[""a:trans""]#S"]
    d_string_k_sym := rejwezp_s["a:s_klient"]
    d_string_nrtr := rejwezp_s["a:trans"]
    d_string_dew := "PLN"
    callalg["sprawdz-czy-jest-transakcja-1"]
  spr_wyjdz:  
  rejop["b:zamknijrej",""]
// -----------------------------------------------------  
  if (byl_prl = "") goto skip_spr_zap1
   txt := "Wystawiono ju|z przelewy $ $ na transakcj|e :"+rejwezp_s["a:trans"]+" $ w kwocie : $ "+ToStr1["#kwota_byl#S:X"]+" $ Czy zgadzasz si|e na kwot|e w zapisie przelewu ?"
   if ((kwota_byl = 0 ) or (kwota_byl = .)) txt := "Na podstawie p|latno|sci kontrahent zosta|l rozliczony ! $ Czy zgadzasz si|e na kwot|e w zapisie przelewu ?"
   if (YesNAlert[txt]) goto skip_spr_zap1
   a_ok := .N.
   ExitAlg[0]
// ===============================
  skip_spr_zap1:
  a_ok := .T.
  kontox := rejwezp_s["a:vatkontoplat"]
  transx := rejwezp_s["a:trans"]
  if ((kontox = "") or (transx = "")) ExitAlg[0]
  kwotax := rejwezp_k["a:wartosc"]
  zapis := rejwezp_k["a:dokidzap1"]
//
  if (not rejop["AX:wezpierwszyrek",""]) goto drzyj_koniec
  petla:
  if ((rejwezp_s["AX:vatkontoplat"] = kontox) and (rejwezp_s["AX:trans"] = transx) and (not(rejwezp_k["AX:dokidzap1"] = zapis))) goto drzyj  
  if (rejop["AX:weznastepnyrek",""]) goto petla
  a_ok := .T.
  goto drzyj_koniec
  drzyj:
    okalert[" Ju|z jest zapis w przelewie do transakcji: "+transx]
    a_ok := .t.
  drzyj_koniec:
  if (not(a_ok)) ExitAlg[0]
  if (not rejop["ax:znajdzrek",tostr["#zapis#S:0"]]) rejop["ax:dodajrek",""]
  rejop["a:przeniespola","ax:"]
  rejop["ax:zapiszrek",""]
% ZAPISY-PRZELEW-PUSTA.ALG
// sprawdz, czy linia jest pusta (moze byc usunieta bez pyania)
  A_OK := .N.
  if ((A:wartosc = .) and (A:vatkontoplat = "") and (A:trans = "")) A_OK := .T.
% ZAPISY-PRZELEW-USUN.ALG
// czy mozna usunac linie
  a_ok := .N.
  CallAlg["ZAPISY-PRZELEW-PUSTA"]
  if (not(A_OK)) goto dalej1
//
   petla2:
   if (Not(RejOp["B:ZnajdzRek",ToStr["#A:dokidzap1#S:0"]])) goto dalej2
   RejOp["B:UsunRek",""]
   goto petla2
  dalej2:
   if (rejop["ax:znajdzrek",tostr["#rejwezp_k[""a:dokidzap1""]#S:0"]]) rejop["ax:usunrek",""]
  ExitAlg[0]
//
  dalej1:
  A_OK := YesAlert["Usun|a|c lini|e zapisu przelewu ?"]
  if (a_ok) goto dalej
  ExDialogOp["WyswietlPozycje","43"]
  if (not(kwota_zapisu = .)) ExitAlg[0]
  st_kwota := kwota_zapisu
  CallAlg["nowa_kwota"] 
  CallAlg["licz_suma"]
  ExitAlg[0]
  dalej:
//
   petla1:
   if (Not(RejOp["B:ZnajdzRek",ToStr["#A:dokidzap1#S:0"]])) goto dalej0
   RejOp["B:UsunRek",""]
   goto petla1
  dalej0:
  if (rejop["ax:znajdzrek",tostr["#rejwezp_k[""a:dokidzap1""]#S:0"]]) rejop["ax:usunrek",""]
  if ((pozycja = 43) and (kwota_zapisu = .)) ExitAlg[0]
  CallAlg["ZAPAM_KWOTA"]
  NO_KWOTA := 0
  CallALg["LICZ_SUMA"]
% ZAPAM_KWOTA.ALG
  if (wer == "ZL") ST_KWOTA := a:wartosc
  if (wer == "DEW") ST_KWOTA := a:kwota_dew
% NOWA_KWOTA.ALG
  if (wer == "ZL") NO_KWOTA := a:wartosc
  if (wer == "DEW") NO_KWOTA := a:kwota_dew
% LICZ_SUMA.ALG
  if (wer == "ZL") xRejWstawP_K["Kwota_przel",kwota_przel + NO_KWOTA - ST_KWOTA]
  if (wer == "DEW") xRejWstawP_K["Kwota_przel_dew",kwota_przel_dew + NO_KWOTA - ST_KWOTA]
  ExDialogOp["WyswietlPozycje","30"]
  ExDialogOp["WyswietlPozycje","33"]
//
  if (wer == "ZL") goto dalej0
  if (RejWezP_K["A:LiczbaRekordow"] = 1) RejWstawP_S["waluta",A:waluta]
  if (wer == "DEW") ExDialogOp["WyswietlPozycje","31"]
  dalej0:
  wydruk := .N.
//
//
% KOMUNIKAT-WORK.ALG
  ExDialogOp["OdczytajDialog","TEMPDIALOG"]
  ExDialogOp["WyswietlDialog","TEMPDIALOG"]
  Displine[txt_komunikat+""]
  DispLine[" "]
% KOMUNIKAT-DOWN.ALG
  ExDialogOp["UsunDialog","TEMPDIALOG"]
//
% TEMPDIALOG.DLG
##DEFWINDOW = 16,10,18,60,ACPSH,,,,,"Przygotowywanie danych. Prosz|e czeka|c ..."

% TERM-PLAT-WAR-ZL.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Warunek do wyszukania."
##200,DZ,ADPH,,"Zakres termin|ow p|latno|sci:"
##10,0,ACP,,,,,,,,ZMIENNA:termplat1,ydate
##11,0,ACP,,,,,,,,ZMIENNA:termplat2,ydate
##201,DZ,ADPH,,"Sortuj dane wg.:"
##120,0,P,,"%t%ermin|ow p|latno|sci",'T',,,,,ZMIENNA:tryb_pracy,,A,1,"0"
##121,0,P,,"%d%aty transakcji",'D',,,,,ZMIENNA:tryb_pracy,,,1,"1"
        
#200

   od #10    #  do #11    #

                               #200<
 #201
    #120                 #
    #121                 #
                               #201<


  #0,,ADP,,@3 #  #1,,ADP,,@4 #  
//   
% TERM-PLAT-WAR-DEW.DLG
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Warunek do wyszukania."
##200,DZ,ADPH,,"Zakres termin|ow p|latno|sci:"
##10,0,ACP,,,,,,,,ZMIENNA:termplat1,ydate
##11,0,ACP,,,,,,,,ZMIENNA:termplat2,ydate
##12,0,ACP,,,,,,,,ZMIENNA:waluta_war,dic:0
##201,DZ,ADPH,,"Sortuj dane wg.:"
##120,0,P,,"%t%ermin|ow p|latno|sci",'T',,,,,ZMIENNA:tryb_pracy,,A,1,"0"
##121,0,P,,"%d%aty transakcji",'D',,,,,ZMIENNA:tryb_pracy,,,1,"1"
        
#200

   od #10    #  do #11    #

                               #200<
    
 Znajd|x dane dla waluty #12#
       
 #201
    #120                 #
    #121                 #
                               #201<


  #0,,ADP,,@3 #  #1,,ADP,,@4 #  
//
% TABLICA-AKCJI-TERM-PLAT-WAR-ZL,TABLICA-AKCJI-TERM-PLAT-WAR-DEW
"AKCJA-BUTTON0",TRANS-AKCEPTUJESZ
"AKCJA-BUTTON1",TRANS-REZYGNUJESZ
% TRANS-AKCEPTUJESZ.ALG
// po wybraniu : akceptujesz
   IF ((termplat1 = '') and (termplat2 = '')) goto dalej1
   If (termplat2 >= termplat1) goto dalej  
   OkAlert["Data do terminu p|latno|sci jest mniejsza od pierwszej !"]
   ExDialogOp["IdzDoPOzycji","11"]
   ExitAlg[0]
   dalej:
   if (termplat2 = '') termplat2 := termplat1
//
   dalej1:
   if (wer == "ZL") goto dalej00
    if (not(waluta_war = "")) goto dalej00
    OkAlert["Podaj symbol waluty dla transakcji !"]
    ExDialogOp["IdzDoPozycji","12"]
    ExitAlg[0]
   dalej00:
   if ( not YesAlert["Akceptujesz podany warunek ?"]) ExitAlg[0]
   ExDialogOp["KoniecWykonywania",""]
   TERMPLAT_REZYGNUJESZ := .N.
% TRANS-REZYGNUJESZ.ALG
if (YesAlert["Rezygnujesz z wykonania warunku ?"]) ExDialogOp["KoniecWykonywania",""]
   TERMPLAT_REZYGNUJESZ := .T.
// 
//
//
//  
//
//
% PLC_PRZELEW-ZL.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = 3,1,30,77,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wystawienie przelewu"
##101,0,ACPM,,,,,,,,WIELE_REKORDOW
##100,BSN,P,,,,,,,,MENU_ROZWIJANE
##10,0,0,,,,lred/black&white/black,lred/white&black/white,,,POLE:konto_przel
##11,D,0,,,,lred/black&white/black,,,,ZMIENNA:nazwa_banku
##12,D,0,,,,lred/black&white/black,,,,ZMIENNA:numer_banku
##13,0,0,,,,lred/black&white/black,lred/white&black/white,,,POLE:data_przel
##24,0,0,,,'F',yellow/blue&white/black,lred/blue&black/white,yellow/blue&black/white,,ZMIENNA:format_przelew,DIC:99
##32,0,0,,,'P',lred/black&white/black,lred/white&black/white,,,POLE:typ_prl
##200,DZ,ADPH,,"Dane konta bankowego:"
##201,DZ,ADPH,,"Dane wierzyciela:"
##15,0,P,,,,,,,,POLE:s_klient
##16,0,P,,,,,,,,POLE:vatkontoplat
##23,0,P,,,,,,,,POLE:kl_plus
##17,0,P,,,,,,,,POLE:nazwa_kl1
##18,0,P,,,,,,,,POLE:nazwa_kl2
##19,0,P,,,,,,,,POLE:kodmiasto_kl
##20,0,P,,,,,,,,POLE:adres_kl
##21,0,P,,,,,,,,POLE:nazwabanku_kl
##22,0,P,,,,,,,,POLE:numerbanku_kl
##30,D,P,,,,,,,,POLE:kwota_przel
##33,D,0,,,,&&green/white,,,,WYRAZENIE:ilosc_gen-xilosc_gen,word
##34,,0,,"<>",,&&yellow/gray
##110,TLD,0,,"Opis zapisu do przelewu        Konto         Transakcja  Na dzie|n     Kwota ",,yellow/blue&black/white&lwhite/blue
##111,D,0,,,,lred/black&white/black&yellow/white,,,,ZMIENNA:atrybut
#100                                                                        #
#200                                                     Przelew zapisz
  Symbol konta - #10          #                          na dzie|n - #13    #
  Nazwa banku  - #11                                  #  %F%ormat - #24    #
  Numer konta  - #12                                  #  Ty%p%    - #32      #
                                                        #200<        
#201
  Kontrahent  - #15        # Konto - #16          #     Inni - #23         #
  Nazwa       - #17                                     # 
                #18                                     # 
  Miasto      - #19                                     # 
  Adres       - #20                                     # 
  Nazwa banku - #21                                     # 
  Numer konta - #22                                     #            #111  #
                                                                            #201<
 #110                                                                      #

 #101                                                                      #

 #33#                                                  RAZEM: #30          #
//
//
% PRZELEW-ZL.DLG,TMP_PRZELEW-ZL.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = 3,1,30,77,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wystawienie przelewu"
##101,0,ACPM,,,,,,,,WIELE_REKORDOW
##100,BSN,P,,,,,,,,MENU_ROZWIJANE
##34,,0,,"<>",,&&yellow/gray
##10,0,0,,,,lred/black&white/black,lred/white&black/white,,,POLE:konto_przel
##11,D,0,,,,lred/black&white/black,,,,ZMIENNA:nazwa_banku
##12,D,0,,,,lred/black&white/black,,,,ZMIENNA:numer_banku
##13,0,0,,,,lred/black&white/black,lred/white&black/white,,,POLE:data_przel
##24,0,0,,,'F',yellow/blue&white/black,lred/blue&black/white,yellow/blue&black/white,,ZMIENNA:format_przelew,DIC:99
##32,0,0,,,'P',lred/black&white/black,lred/white&black/white,,,POLE:typ_prl
##200,DZ,ADPH,,"Dane konta bankowego:"
##201,DZ,ADPH,,"Dane wierzyciela:"
##15,0,P,,,,,,,,POLE:s_klient
##16,0,P,,,,,,,,POLE:vatkontoplat
##23,0,P,,,,,,,,POLE:kl_plus
##17,0,P,,,,,,,,POLE:nazwa_kl1
##18,0,P,,,,,,,,POLE:nazwa_kl2
##19,0,P,,,,,,,,POLE:kodmiasto_kl
##20,0,P,,,,,,,,POLE:adres_kl
##21,0,P,,,,,,,,POLE:nazwabanku_kl
##22,0,P,,,,,,,,POLE:numerbanku_kl
##30,D,P,,,,,,,,POLE:kwota_przel
##33,D,0,,,,&&green/white,,,,WYRAZENIE:ilosc_gen-xilosc_gen,word
##110,TLD,0,,"Opis zapisu do przelewu        Konto         Transakcja  Na dzie|n     Kwota ",,yellow/blue&black/white&lwhite/blue
##111,D,0,,,,lred/black&white/black&yellow/white,,,,ZMIENNA:atrybut
#100                                                                        #
#200                                                     Przelew zapisz
  Symbol konta - #10          #                          na dzie|n : #13    #
  Nazwa banku  - #11                                  #  %F%ormat:#24        #
  Numer konta  - #12                                  #  Ty%p%   :#32        #
                                                        #200<        
#201
  Kontrahent  - #15        # Konto - #16          #     Inni - #23         #
  Nazwa       - #17                                     # 
                #18                                     # 
  Miasto      - #19                                     # 
  Adres       - #20                                     # 
  Nazwa banku - #21                                     # 
  Numer konta - #22                                     #            #111  #
                                                                            #201<
 #110                                                                      #

 #101                                                                      #

 #33##34#<                                            RAZEM: #30          #
//
//
% ZAPISY-PRZELEW-ZL.DLG,TMP_ZAPISY-PRZELEW-ZL.DLG
##41,0,P,,,,,,,,POLE:A:tresc1
##45,0,P,,,,,,,,POLE:A:vatkontoplat
##42,0,P,,,,,,,,POLE:A:trans
##44,0,P,,,,,,,,POLE:A:data_plat
##43,0,P,,,,,,,,POLE:A:wartosc
#41                          # #45         # #42       # #44    # #43       # 
//
//
% PLC_PRZELEW-DEW.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wystawienie przelewu <Przelew dewizowy>"
##10,0,0,,,,lred/black&white/black,lred/white&black/white,,,POLE:konto_przel
##11,D,0,,,,lred/black&white/black,,,,ZMIENNA:nazwa_banku
##12,D,0,,,,lred/black&white/black,,,,ZMIENNA:numer_banku
##13,0,0,,,,lred/black&white/black,lred/white&black/white,,,POLE:data_przel
##24,0,0,,,'F',yellow/blue&white/black,lred/blue&black/white,yellow/blue&black/white,,ZMIENNA:format_przelew,DIC:99
##32,0,0,,,'P',lred/black&white/black,lred/white&black/white,,,POLE:typ_prl
##200,DZ,ADPH,,"Dane konta bankowego:"
##201,DZ,ADPH,,"Dane wierzyciela:"
##15,0,P,,,,,,,,POLE:s_klient
##16,0,P,,,,,,,,POLE:vatkontoplat
##23,0,P,,,,,,,,POLE:kl_plus
##17,0,P,,,,,,,,POLE:nazwa_kl1
##18,0,P,,,,,,,,POLE:nazwa_kl2
##19,0,P,,,,,,,,POLE:kodmiasto_kl
##20,0,P,,,,,,,,POLE:adres_kl
##21,0,P,,,,,,,,POLE:nazwabanku_kl
##22,0,P,,,,,,,,POLE:numerbanku_kl
##25,0,P,,,,,,,,POLE:swift
##30,D,P,,,,,,,,POLE:kwota_przel_dew
##31,D,0,,,,lred/black&lwhite/black,,,,POLE:waluta
##33,D,0,,,,&&green/white,,,,WYRAZENIE:ilosc_gen-xilosc_gen,word
##34,,0,,"<>",,&&yellow/gray
##101,0,ACPM,,,,,,,,WIELE_REKORDOW
##100,BSN,P,,,,,,,,MENU_ROZWIJANE
##110,TLD,0,,"Opis zapisu do przelewu       Konto         Transakcja Na dzie|n Waluta Kwota",,yellow/blue&black/white&lwhite/lblue
##111,D,0,,,,lred/black&white/black&yellow/white,,,,ZMIENNA:atrybut
#100                                                                        #
#200                                                      Przelew zapisz
  Symbol konta - #10          #                           na dzie|n - #13    #
  Nazwa banku  - #11                                  #   %F%ormat - #24    #
  Numer konta  - #12                                  #   Ty%p%    - #32      #
                                                        #200<      
#201
  Kontrahenci - #15        # Konto - #16          #     Inni - #23         #
  Nazwa       - #17                                     # 
                #18                                     # 
  Miasto      - #19                                     # 
  Adres       - #20                                     # Numer SWIFT:
  Nazwa banku - #21                                     # #25        #
  Numer konta - #22                                     #            #111  #
                                                                            #201< 
 #110                                                                      #

 #101                                                                      # 

 #33#                                           RAZEM: w #31#-#30          #
//
//
% PRZELEW-DEW.DLG,TMP_PRZELEW-DEW.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wystawienie przelewu <Przelew dewizowy>"
##10,0,0,,,,lred/black&white/black,lred/white&black/white,,,POLE:konto_przel
##11,D,0,,,,lred/black&white/black,,,,ZMIENNA:nazwa_banku
##12,D,0,,,,lred/black&white/black,,,,ZMIENNA:numer_banku
##13,0,0,,,,lred/black&white/black,lred/white&black/white,,,POLE:data_przel
##24,0,0,,,'F',yellow/blue&white/black,lred/blue&black/white,yellow/blue&black/white,,ZMIENNA:format_przelew,DIC:99
##32,0,0,,,'P',lred/black&white/black,lred/white&black/white,,,POLE:typ_prl
##200,DZ,ADPH,,"Dane konta bankowego:"
##201,DZ,ADPH,,"Dane wierzyciela:"
##15,0,P,,,,,,,,POLE:s_klient
##16,0,P,,,,,,,,POLE:vatkontoplat
##23,0,P,,,,,,,,POLE:kl_plus
##17,0,P,,,,,,,,POLE:nazwa_kl1
##18,0,P,,,,,,,,POLE:nazwa_kl2
##19,0,P,,,,,,,,POLE:kodmiasto_kl
##20,0,P,,,,,,,,POLE:adres_kl
##21,0,P,,,,,,,,POLE:nazwabanku_kl
##22,0,P,,,,,,,,POLE:numerbanku_kl
##25,0,P,,,,,,,,POLE:swift
##30,D,P,,,,,,,,POLE:kwota_przel_dew
##31,D,0,,,,lred/black&lwhite/black,,,,POLE:waluta
##33,D,0,,,,&&green/white,,,,WYRAZENIE:ilosc_gen-xilosc_gen,word
##34,,0,,"<>",,&&yellow/gray
##101,0,ACPM,,,,,,,,WIELE_REKORDOW
##100,BSN,P,,,,,,,,MENU_ROZWIJANE
##110,TLD,0,,"Opis zapisu do przelewu       Konto         Transakcja Na dzie|n Waluta Kwota",,yellow/blue&black/white&lwhite/lblue
##111,D,0,,,,lred/black&white/black&yellow/white,,,,ZMIENNA:atrybut
#100                                                                        #
#200                                                      Przelew zapisz
  Symbol konta - #10          #                           na dzie|n - #13    #
  Nazwa banku  - #11                                  #   %F%ormat - #24    #
  Numer konta  - #12                                  #   Ty%p%    - #32      #
                                                        #200<      
#201
  Kontrahenci - #15        # Konto - #16          #     Inni - #23         #
  Nazwa       - #17                                     # 
                #18                                     # 
  Miasto      - #19                                     # 
  Adres       - #20                                     # Numer SWIFT:
  Nazwa banku - #21                                     # #25        #
  Numer konta - #22                                     #            #111  #
                                                                            #201< 
 #110                                                                      #

 #101                                                                      # 

 #33#                                           RAZEM: w #31#-#30          #
//
% ZAPISY-PRZELEW-DEW.DLG,TMP_ZAPISY-PRZELEW-DEW.DLG
##41,0,P,,,,,,,,POLE:A:tresc1
##45,0,P,,,,,,,,POLE:A:vatkontoplat
##42,0,P,,,,,,,,POLE:A:trans
##44,0,P,,,,,,,,POLE:A:data_plat
##46,0,P,,,,,,,,POLE:A:waluta
##43,0,P,,,,,,,,POLE:A:kwota_dew
#41                        # #45         # #42       # #44    ##46##43      # 
//
// ====================================================
//                      poczatek przegladania
// ====================================================
//  
% WYBOR-LOOK-PRZELEW.ALG
  if (not(FinnOp["@1openmainx",""])) ExitAlg[0]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  czy_byl := .T.
  id_modul := ""
  rozr := .N.
  rozl := .N.
  dew := .N.
  atrybut := ""
  nazwabank := ""
  modem := .N.
  formatmodem := ""
  formatplik := ""
  formatpolskie := ""
  program := ""
  sciezka := ""
  ver := .
  look := .T.
  view := .T.
  swtyp_dok := ""
  rodzaj := ""
  CallAlg["wybor-look-przelew-xxx"]
  FinnOp["Close",""]

% LOOK-PRZELEW.ALG
  CallAlg["konwersja"]
  if (not(FinnOp["@1openmainx",""])) ExitAlg[0]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  czy_byl := .T.
  id_modul := ""
  rozr := .N.
  rozl := .N.
  dew := .N.
  atrybut := ""
  kontobank := ""
  nazwabank := ""
  modem := .N.
  formatmodem := ""
  formatplik := ""
  formatpolskie := ""
  program := ""
  sciezka := ""
  ver := .
  look := .T.
  view := .T.
  swtyp_dok := ""
  rodzaj := ""
  CallAlg["podaj-kontobanku-look"]
  if (kontobank = "") exitAlg[0]
  if (not (view)) CallAlg["ksieg-przelew-xxx1"]
  if (view) CallAlg["look-przelew-xxx"]
  FinnOp["Close",""]
//  
% LOOK-PRZELEW-PLACE.ALG
  CallAlg["konwersja"]
  if (not(FinnOp["@1openmainx",""])) ExitAlg[0]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  id_modul := "PLC_"
  rozr := .N.
  rozl := .N.
  dew := .N.
  atrybut := ""
  kontobank := ""
  nazwabank := ""
  modem := .N.
  formatmodem := ""
  formatplik := ""
  formatpolskie := ""
  program := ""
  sciezka := ""
  ver := .
  look := .T.
  view := .T.
  swtyp_dok := ""
  rodzaj := ""
  CallAlg["podaj-kontobanku-look"]
  if (kontobank = "") exitAlg[0]
  if (not (view)) CallAlg["ksieg-przelew-xxx1"]
  if (view) CallAlg["look-przelew-xxx"]
  FinnOp["Close",""]
//
% LOOK-PRZELEW-TMP.ALG
  CallAlg["konwersja"]
  if (not(FinnOp["@1openmainx",""])) ExitAlg[0]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  czy_byl := .T.
  id_modul := "TMP_"
  rozr := .N.
  rozl := .N.
  dew := .N.
  atrybut := ""
  kontobank := ""
  nazwabank := ""
  modem := .N.
  formatmodem := ""
  formatplik := ""
  formatpolskie := ""
  program := ""
  sciezka := ""
  ver := .
  look := .T.
  view := .T.
  swtyp_dok := ""
  rodzaj := ""
  CallAlg["podaj-kontobanku-look"]
  if (kontobank = "") exitAlg[0]
  if (not (view)) CallAlg["ksieg-przelew-xxx1"]
  if (view) CallAlg["look-przelew-xxx"]
//
  RejOp["PP:OtworzRejSprawdz","PRLDOK.RXR"]
  txt_komunikat := "Prosz|e czeka|c..."
  CallAlg["komunikat-work"]
  CallALG["oczysc-prldok"]
  CallAlg["komunikat-down"]
  RejOp["PP:ZamknijRej",""]
  if (not RejOp["P:WezPierwszyRek",""]) rejop["P:wstawpustepola",""]
  ExDialogOp["WyswietlPozycje","100"] 
//  
  FinnOp["Close",""]
//  
% LOOK-PRZELEW-XXX.ALG
//
  RejOp["E:OtworzRejSprawdz",id_modul+"PRZELEW.RJR"]
  RejOp["F:OtworzRejSprawdz",id_modul+"PRZEZAP.RJR"]
  RejOp["G:OtworzRejSprawdz",id_modul+"PRZEZAP1.RJR"]
  if (RejOp["E:WezPierwszyRek",""]) goto dalej
  OkAlert["Brak wystawionych przelew|ow !"]
  ExitALg[0]
  dalej:
  RejOp["E:WezPierwszyRek",""]
  ZAPISY := .T.
  pozycja := .
  data_przelew := ''
  data_przelewx := ''
  rodzaj := ""
  WER := "ZL"
// 
//  CZY := (StrIn["D",cechy_wersji])
//  IF (CZY > 0) WER := "DEW"
  ExDialogOp["IdzDoDialogu","PRZELEW-LOOK"]
  RejOp["E:ZamknijRej",""]
  RejOp["F:ZamknijRej",""]
  RejOp["G:ZamknijRej",""]
% WYBOR-LOOK-PRZELEW-XXX.ALG
//
  RejOp["E:OtworzRejSprawdz",id_modul+"PRZELEW.RJR"]
  RejOp["F:OtworzRejSprawdz",id_modul+"PRZEZAP.RJR"]
  RejOp["G:OtworzRejSprawdz",id_modul+"PRZEZAP1.RJR"]
  if (RejOp["E:WezPierwszyRek",""]) goto dalej
  OkAlert["Brak wystawionych przelew|ow !"]
  ExitALg[0]
  dalej:
  RejOp["E:WezPierwszyRek",""]
  ZAPISY := .T.
  pozycja := .
  data_przelew := ''
  data_przelewx := ''
  rodzaj := ""
  WER := "ZL"
// 
//  CZY := (StrIn["D",cechy_wersji])
//  IF (CZY > 0) WER := "DEW"
  ExDialogOp["IdzDoDialogu","PRZELEW-LOOK-WYBOR"]
  RejOp["E:ZamknijRej",""]
  RejOp["F:ZamknijRej",""]
  RejOp["G:ZamknijRej",""]

% TABLICA-AKCJI-PRZELEW-LOOK-WYBOR
"AKCJA-PRZED-WYSWIETLENIEM",PRZELEW-LOOK-WYBOR-PRZED
%<TABLICA-AKCJI-PRZELEW-LOOK.XXX
"AKCJA-BUTTON400",PRZELEW-WYBOR-REKORD

% PRZELEW-WYBOR-REKORD.ALG
  if (not(yesalert["Czy wybiersz wskazany przelew ?"])) ExitAlg[0]
  REK_POS_PRL := rejwezp_k["e:rejestrrekpos"]
  exdialogop["koniecwykonywania",""]

% TABLICA-AKCJI-PRZELEW-LOOK
"AKCJA-PRZED-WYSWIETLENIEM",PRZELEW-LOOK-PRZED
%<TABLICA-AKCJI-PRZELEW-LOOK.XXX
  
% TABLICA-AKCJI-PRZELEW-LOOK.XXX
"AKCJA-BUTTON13",PRZELEW-BUTTZAPISY1
"AKCJA-BUTTON14",PRZELEW-BUTTZAPISY2
"AKCJA-BUTTON20",PRZELEW-USUN
"AKCJA-BUTTON21",PRZELEW-MODYFIKUJ
"AKCJA-BUTTON22",PRZELEW-SZUKAJ
"AKCJA-BUTTON35",PRZELEW-SZUKAJ-OUT
"AKCJA-BUTTON23",PRZELEW-WARUNEK
"AKCJA-BUTTON24",PRZELEW-NASTEPNY
"AKCJA-BUTTON25",PRZELEW-PONOWNY-WYDRUK
"AKCJA-BUTTON26",PRZELEW-ZMIANA-STATUSU1
"AKCJA-BUTTON27",PRZELEW-ZMIANA-KONTA-BANK
"AKCJA-BUTTON28",PRZELEW-USTAW-FILTR
"AKCJA-BUTTON30",PRZELEW-KARTOTEKA
"AKCJA-BUTTON31",PRZELEW-KARTOTEKA-KONTO
"AKCJA-BUTTON32",PRZELEW-KONTRAHENCI
"AKCJA-BUTTON33",PRZELEW-ZAPISY-WARUNEK
"AKCJA-BUTTON34",PRZELEW-ZAPISY-NASTEPNY
"AKCJA-BUTTON40",PRZELEW-USUN-GROMADA
"AKCJA-BUTTON41",PRZELEW-MODYFIKUJ-PRZENIES
"AKCJA-BUTTON42",PRZELEW-ZMIANA-STATUSU-WARUNEK
"AKCJA-BUTTON50",NKB-RXR
"AKCJA-BUTTON60",PRZELEWY-WYKRES-MC
"AKCJA-BUTTON62",PRZELEWY-WYKRES-KW
"AKCJA-BUTTON61",PRZELEWY-WYKRES-KO
"AKCJA-BUTTON63",TMP_PRZELEW-ZAZNACZONE-ZESTAWIENIE
"AKCJA-BUTTON64",PRZELEW-MODYFIKUJ-PRZENIES-Z-TMP
"AKCJA-BUTTON65",PRZELEW-MODYFIKUJ-PRZENIES-Z-TMP-ALL
//
% PRZELEW-USTAW-FILTR.ALG
  ExDialogOp["UstawFiltr","100:"+id_modul+"PRZELEW-FILTR"]
  ExDialogOp["WyswietlPozycje","100"]
//  
% PRZELEW-USTAW-FILTR-KONTRAHENT.ALG
  ExDialogOp["UstawFiltr","100:"+id_modul+"PRZELEW-FILTR-KL"]
  ExDialogOp["WyswietlPozycje","100"]
// 
% PRZELEW-ZAPISY-USTAW-FILTR-KONTRAHENT.ALG
  ExDialogOp["Ustawfiltr","100:"+id_modul+"PRZELEW-FILTR-KL-ZAP"]
  ExDialogOp["WyswietlPozycje","100"]
//  
% PRZELEW-KARTOTEKA.ALG
 if(not(zapisy)) FinnIdzDo["KartRozr",RejWezP_S["F:vatkontoplat"],""]
 if (zapisy) FinnIdzDo["KartRozr",RejWezP_S["F:vatkontoplat"],RejWezP_S["F:trans"]]
//
% PRZELEW-KARTOTEKA-KONTO.ALG
  FinnIdzDo["KartRodz",RejWezP_S["F:vatkontoplat"],""]
//
% PRZELEW-ZMIANA-KONTA-BANK.ALG
  CallAlg["podaj-kontobanku-look"]
  CallAlg["przelew-look-przed"]
  ExDialogOp["WyswietlPozycje","100"]
  ExDialogOp["WyswietlPozycje","111"]
  ExDialogOp["WyswietlPozycje","112"]
  ExDialogOp["WyswietlPozycje","120"]
  ExDialogOp["WyswietlPozycje","121"]
  ExDialogOp["WyswietlPozycje","122"]
  ExDialogOp["WyswietlPozycje","123"]
  callalg["PRZELICZ-ZAZNACZ-KBANK-VIEW"]
  if (not(view)) ExDialogOp["WyswietlPozycje","113"]
//
% PRZELEW-ZAZNACZ-ZMIANA-KONTA-BANK.ALG
  CallAlg["podaj-kontobanku-look"]
  CallAlg["przelew-zaznacz-przed"]
  ExDialogOp["WyswietlPozycje","100"]
  ExDialogOp["WyswietlPozycje","111"]
  ExDialogOp["WyswietlPozycje","112"]
  ExDialogOp["WyswietlPozycje","120"]
  ExDialogOp["WyswietlPozycje","121"]
  ExDialogOp["WyswietlPozycje","122"]
  ExDialogOp["WyswietlPozycje","123"]
  callalg["PRZELICZ-ZAZNACZ-KBANK-VIEW"]
  if (not(view)) ExDialogOp["WyswietlPozycje","113"]
//
% PRZELEW-ZMIANA-STATUSU1.ALG
  status := RejWezP_S["E:status"]
  status1 := status
  temp_d := RejWezP_D["E:data_przel"]
  temp_1 := RejWezP_S["E:nazwa_kl1"]
  temp_txt0 := ToStr["Z dnia #temp_d#S dla kontrahenta:"]
  temp_txt1 := ToStr["#temp_1#S"]
  ExDialogOp["IdzDoDialogu","PRZELEW-STATUS-DIALOG"]
  if (status == status1) GOTO XX
    RejWstawP_S["E:status",status1]
    ExDialogOp["WyswietlPozycje","100"]
  XX:
    ExDialogOp["IdzDoPozycji","100"]
ExitAlg[0]
//
% PRZELEW-ZMIANA-STATUSU2.ALG
        rezygnujesz := .N.
        r_rekpos := RejWezP_K["E:RejestrRekPos"]
        status   := RejWezP_S["E:status"]
        status1  := status
        temp_d   := RejWezP_D["E:data_przel"]
        temp_txt0 := "."
        temp_txt1 := "ZMIANA STATUSU Z PODANEGO WARUNKU"
        data_stat1 := temp_d
        data_stat2 := temp_d
        osoba_p := os_ksieg
  ExDialogOp["IdzDoDialogu","PRZELEW-STATUS-ZAKRES-DIALOG"]
  if(rezygnujesz) ExitAlg[0]
  CallAlg["PRZELEW-ZMIANA-STATUSU2-WYKONAJ"]
  RejOp["E:ustawsprawdzrekpos",ToStr["#r_rekpos#S"]]
  ExDialogOp["WyswietlPozycje","100"]
//
% PRZELEW-ZMIANA-STATUSU2-WYKONAJ.ALG
  if(data_stat1='' or data_stat2='') RejWstawP_S["E:status",status1]
  if(data_stat1='' or data_stat2='') ExitAlg[0]
  if(Not(RejOp["E:WezPierwszyRek",""])) ExitAlg[0]
UstawCzekajInfo["Start5","Zmiana statusu przelew|ow. Prosz|e czeka|c ..."]
petla:
  UstawCzekajInfo["Nastepny",""]
  if (osoba_p == "") goto dalej_00
  if (not(osoba_p == rejwezp_s["e:p_osoba"])) goto next
  dalej_00:
  if(RejWezP_D["E:data_przel"] < data_stat1) goto next
  if(RejWezP_D["E:data_przel"] > data_stat2) goto next
  if(RejWezP_S["E:status"] == status1) goto next
  RejWstawP_S["E:status",status1]
next:
  if(RejOp["E:WezNastepnyRek",""]) goto petla
UstawCzekajInfo["Stop",""]   
// 
% PRZELEW-PONOWNY-WYDRUK.ALG
  if (not (YesAlert["Czy drukowa|c ten przelew ?"])) ExitAlg[0]
  druk := .T.
  CallAlg["przelew-modyfikuj-x"]
//
% PRZELEW-MODYFIKUJ.ALG
  if (not ExDialogOp["PusteOkno","100"]) goto dalej1
    OkAlert["Nie ma |zadnych wystawionych przelew|ow !"]
    ExitAlg[0]
  dalej1:
  if (id_modul == "PLC_") goto m_place
  if ((RejWezP_S["E:status"] == "wprow") or (RejWezP_S["E:status"] == "autom") or (RejWezP_S["E:status"] == "b|l|ad")) goto dalej2
    if (YesAlert["UWAGA !!! $ $ Przelew ma status inny ni|z wprow. $ Mo|zna tylko ogl|ada|c !$ Czy pokaza|c szczeg|o|ly ?"]) goto dalej2
    ExitAlg[0]
  m_place:
    if (YesAlert["UWAGA !!! $ $ Przelew zosta|l wystawiony $ z modu|lu p|lacowego. $ $ Mo|zna tylko ogl|ada|c !$ Czy pokaza|c szczeg|o|ly ?"]) goto dalej2
    ExitAlg[0]
  dalej2:
  DRUK := .N.
  odl_key := "3"
  odl := .N.
  konto_kontrahenta := ""
  konto_nr_kontrahenta := ""
  swift_kontrahenta := ""
  poz := RejWezP_K["E:RejestrRekPos"]
  CallAlg["przelew-modyfikuj-x"]
//  RejOp["E:UstawRekPos",ToStr["#poz#S:0"]]
  ExDialogOp["WyswietlPozycje","100"]
//
% PRZELEW-MODYFIKUJ-X.ALG
  data_przelewu := rejwezp_d["e:data_przel"]
  p_modif := .T.
  poz := .
  wydruk := .N.
  rozr := .N.
  rozl := .N.
  stara_tr := ""
  format_przelew := ""
  ksiega_old := ""
  tresc_temp := ""
  stary_klient := ""
  stary_sklient := ""
  st_kwota := .
  no_kwota := .
  kwota_zapisu := .
  pozycja := .
  atrybut := ""
  konto_klient := ""
//
  IF (RejOp["OtworzRejTemp",id_modul+"PRZELEW.RJR"]) goto dalej00
  OkAlert["Nie mog|e otworzy|c listy z przelewami"]
  ExitAlg[0]
  dalej00:
  if (RejOp["A:OtworzRejTemp",id_modul+"PRZETMP.RJR"]) goto dalej01
  OkAlert["Nie mog|e otworzy|c listy z zapisami do przelew|ow !"]
  ExitAlg[0]
  dalej01:
  if (RejOp["AX:OtworzRejTemp",id_modul+"PRZETMP.RJR"]) goto dalej011
  OkAlert["Nie mog|e otworzy|c listy z zapisami do przelew|ow !"]
  ExitAlg[0]
  dalej011:
  rejop["AX:zmienkluczrej","2"]
  if (RejOp["B:OtworzRejTemp",id_modul+"PRZETMP1.RJR"]) goto dalej02
  OkAlert["Nie mog|e otworzy|c pliku z zapisami na klasyfikacje !"]
  ExitAlg[0]
  dalej02:
//
  ExDialogOp["OdczytajDok",",A,E,F,99,1"]
// odczytanie klasyfikacji
  kluczngl := ToStr["#RejWezP_K[""dokid""]#S:0"]
  RejOp["G:ZmienKluczRej","1"]
  if (not (RejOp["G:ZnajdzRek",kluczngl])) goto dalej03
  petla_rzl0:
  if (not(RejWezP_K["G:dokidzap0"] = RejWezP_K["dokid"])) goto dalej03
  RejOp["B:DodajRek",""]
  RejOp["G:PrzeniesPola","B:"]
  RejOp["B:ZapiszRek",""]
  If (RejOp["G:WezNastepnyRek",""]) goto petla_rzl0
  dalej03:
  ZAPISY_REZYGNUJESZ := .N.
  RejOp["A:WezPierwszyRek",""]
  RejOp["B:ZmienKluczRej","2"]
  WER := "ZL"
  if (not(RejWezP_S["waluta"] = "")) WER := "DEW"
  if (druk) goto dalej2
  ilosc_gen := 3
  xilosc_gen := 0
  ExDialogOp["IdzDoDialogu",id_modul+"PRZELEW-"+WER]
  if (ZAPISY_REZYGNUJESZ) goto zamknij
// usun dokument
  CallALg["PRZELEW-USUNPRZE"]
// zapamietanie nowego dokumentu
   xRejWstawP_S["status","wprow"]
   if (rejwezp_k["kwota_przel"] <= 0) xrejwstawp_s["status","b|l|ad"]
   ExDialogOp["PamietajDok",",A,E,F,99,1"]
   poz := RejWezP_K["E:RejestrRekPos"]
   dokid := RejWezP_K["E:dokid"]
// ---------- kopiowanie klasyfikacji
   if (not(RejOp["B:WezPierwszyRek",""])) goto dalej04
   petla_rzl1:
   RejOp["G:DodajRek",""]
   RejOp["B:PrzeniesPola","G:"]
   RejWstawP_K["G:dokidzap0",dokid]
   RejOp["G:ZapiszRek",""]
   if (RejOp["B:WezNastepnyRek",""]) goto petla_rzl1
   dalej04:
//
  ExDialogOp["WyswietlPozycje","100"]
  goto zamknij
  dalej2:
  CallAlg["parambank"]
  tempkontobank := RejWezP_S["E:konto_przel"]
  typ_prl_banku := ""
  CallAlg["kontabank"]
  xRejWstawP_S["konto_przel",tempkontobank]
  if (id_modul == "PLC_") goto skip_notyp
  if (pustepole["typ_prl"]) xRejWstawP_S["typ_prl",typ_prl_banku]
  skip_notyp:
//
  if (not(format_przelew = "")) goto dalej05
  OkALert["Brak formatu wydruku dla tego przelewu !"]
  goto zamknij
  dalej05:
  DR_FILE := ""
  T_SPOSOB := 0
  IdzDoWydruku["przelewy\format_druku.prn",""]
  if (wer == "ZL") goto dalej0001
  if (YesAlert["Wydrukowa|c za|l|acznik do przelewu ?"]) CallAlg["przelew-zalacznik"]
  dalej0001:
  if (not(strcut[format_przelew,0,2] == "ie")) goto dalej0002
    look_prg := 1
    callpyt["import pro_tool | pro_tool.view_plik_html("""+DR_FILE+""","+look_prg+")"]
  dalej0002:
  zamknij:
  RejOp["ZamknijRej",""]
  RejOp["A:ZamknijRej",""]
  RejOp["AX:ZamknijRej",""]
  RejOp["B:ZamknijRej",""]
% PRZELEW-USUNPRZE.ALG
// ---- usuwanie "reczne"
  klucznagl := ToStr["#e:dokid#S:0"]
  RejOp["F:ZmienKluczRej","1"]
  RejOp["G:ZmienKluczRej","1"]
// usuwaj zapisy
  petla:
  if (not RejOp["F:ZnajdzRek",klucznagl]) goto dalej2
   RejOp["F:UsunRek",""]
  goto petla
  dalej2:
// usuwaj zapisy na klasyfikacji
  petla1:
  if (not RejOp["G:ZnajdzRek",klucznagl]) goto dalej3
   RejOp["G:UsunRek",""]
  goto petla1
  dalej3:
// usun naglowek
  RejOp["E:UsunRek",""]
//
% PRZELEW-USUN.ALG
  if (not ExDialogOp["PusteOkno","100"]) goto dalej1
    OkAlert["Nie ma |zadnych wystawionych przelew|ow !"]
    ExitAlg[0]
  dalej1:
  if ((RejWezP_S["E:status"] == "wprow") or (RejWezP_S["E:status"] == "autom") or (RejWezP_S["E:status"] == "b|l|ad")) goto dalej2
  OkAlert["Ten przelew ma inny status ni|z wprowadzony !"]
  ExitAlg[0]
  dalej2:
  if (not YesNAlert["Usun|a|c ten przelew ?"]) ExitAlg[0]
  callalg["PRZELEW-USUN-X"]
//  
% PRZELEW-USUN-X.ALG
  CallAlg["PRZELEW-USUNPRZE"]
  callalg["PRZELEW-LOOK-PRZED"]
  rejop["e:wezpoprzednirek",""]
  ExDialogOp["WyswietlPozycje","100"]
//
% PRZELEW-LOOK-WYBOR-PRZED.ALG  
  ustaw_menu := "PRZELEW-LOOK-WYBOR-GORNE-MENU"
  ExDialogOp["UstawMenuParam","101:"+ustaw_menu] 
  naglowek := "Wybierz przelew."
  ExDialogOp["ZmienNaglowek",naglowek] 
  RejOp["E:WezOstatniRek",""]
  ZAPISY := .T.
  CallAlg["PRZELEW-USTAW-ZAPISY"]
  RejOp["E:ZmienKluczRej","1"]
  RejOp["E:SzukajRek",kontobank+"*"+d_dzisiaj]
  RejOp["E:WezPoprzedniRek",""]
//  
% PRZELEW-LOOK-PRZED.ALG  
  ustaw_menu := "PRZELEW-LOOK-GORNE-MENU"
  if (id_modul == "TMP_") ustaw_menu := "TMP_PRZELEW-LOOK-GORNE-MENU"
  ExDialogOp["UstawMenuParam","101:"+ustaw_menu]
  
  naglowek := "Przegl|adanie wystawionych przelew|ow."
  if (id_modul == "PLC_") naglowek := "Przegl|adanie wystawionych przelew|ow (P|lace)."
  if (id_modul == "TMP_") naglowek := "Przegl|adanie przelew|ow tymczasowo zapisanych w generatorze."
  ExDialogOp["ZmienNaglowek",naglowek] 
  RejOp["E:WezOstatniRek",""]
  ZAPISY := .T.
  CallAlg["PRZELEW-USTAW-ZAPISY"]
  RejOp["E:ZmienKluczRej","1"]
  RejOp["E:SzukajRek",kontobank+"*"+d_dzisiaj]
  RejOp["E:WezPoprzedniRek",""]
//
% PRZELEW-USTAW-ZAPISY.ALG
  zap := RejWezP_K["E:RejestrRekPos"]
// 
//  CZY := (StrIn["D",cechy_wersji])
//  IF (CZY > 0) goto dewizy
    if (not(ZAPISY)) ExDialogOp["UstawMenuParam","100:"+id_modul+"PRZELEW-NAGLOWEK0,E,PIERWSZYKLUCZ,1,E,,DS"]
    if (ZAPISY) ExDialogOp["UstawMenuParam","100:"+id_modul+"PRZELEW-NAGLOWEK1,E,PIERWSZYKLUCZ,1,E,,DS"]
    ExDialogOp["UstawMenuKlucz","100:"+kontobank]
    if (ZAPISY) ExDialogOp["DodajNastepnyDialog","100:PRZELEW-LINIA-LOOK,F,JEDENKLUCZ,1,E,99,DS"]
  goto koniec
  dewizy:
    if (not(ZAPISY)) ExDialogOp["UstawMenuParam","100:"+id_modul+"PRZELEW-NAGLOWEK0DEW,E,PIERWSZYKLUCZ,1,E,,DS"]
    if (ZAPISY) ExDialogOp["UstawMenuParam","100:"+id_modul+"PRZELEW-NAGLOWEK1DEW,E,PIERWSZYKLUCZ,1,E,,DS"]
    ExDialogOp["UstawMenuKlucz","100:"+kontobank]
    if (ZAPISY) ExDialogOp["DodajNastepnyDialog","100:PRZELEW-LINIA-LOOKDEW,F,JEDENKLUCZ,1,E,99,DS"]
  koniec:
//  goto koniec_out
  if (zapisy) goto view_zap
    ExDialogOp["UstawMenuPtaszek",":14"]
    ExDialogOp["UsunMenuPtaszek",":13"]  
  goto koniec_out
  view_zap:
    ExDialogOp["UstawMenuPtaszek",":13"]
    ExDialogOp["UsunMenuPtaszek",":14"]
  koniec_out:
//  if (not(zap = .)) RejOp["E:UstawRekPos",ToStr["#zap#S:0"]]
//
% PRZELEW-BUTTZAPISY1.ALG
  zapisy := .T.
  ExDialogOp["UstawMenuPtaszek",":13"]
  ExDialogOp["UsunMenuPtaszek",":14"]
%<PRZELEW-BUTTZAPISY.ALG
//
% PRZELEW-BUTTZAPISY2.ALG
  zapisy := .N.
  ExDialogOp["UstawMenuPtaszek",":14"]
  ExDialogOp["UsunMenuPtaszek",":13"]
%<PRZELEW-BUTTZAPISY.ALG
//
% PRZELEW-BUTTZAPISY.ALG
  CallAlg["PRZELEW-USTAW-ZAPISY"]
  ExDialogOp["WyswietlPozycje","100"]
//
% PRZELEW-SZUKAJ.ALG
  temp_n := RejWezP_K["E:RejestrRekPos"]
  data_txt := ToStr["#data_przelew#S"]
  if (data_txt == "") ExitAlg[0]
  RejOp["X:OtworzRejSprawdz",id_modul+"PRZELEW.RJR"]
  RejOp["X:ZmienKluczRej","1"]
  if (view) goto petla_look-przelew
  IF (RejOp["X:ZnajdzRek",kontobank+"*"+data_txt]) goto okpetlax
  okpetlax:
  if (kontobank = RejWezP_S["X:konto_przel"]) goto okpetlax1
  OkAlert["Brak przelewu z dnia "+data_przelew+" !"]
  goto okjest_no
  okpetlax1:
  if (((data_przelew = RejWezP_D["X:data_przel"]) and (RejWezP_S["X:status"] == "wprow") or (data_przelew = RejWezP_D["X:data_przel"]) and (RejWezP_S["X:status"] == "autom"))) goto okjest
  if (RejOp["X:WezNastepnyRek",""]) goto okpetlax
  OkAlert["Brak przelewu z dnia "+data_przelew+" !"]
  goto okjest_no
//  
  petla_look-przelew:
  IF (RejOp["X:ZnajdzRek",kontobank+"*"+data_txt]) goto okjest
    if (not (Yesalert["Brak przelewu z dnia "+data_przelew+" !. $ Znale|x|c nast|epny !"])) goto exit
    RejOp["X:SzukajRek",kontobank+"*"+data_txt]
    goto okjest
    exit:
    RejOp["X:ZamknijRej",""]
//  ExitAlg[0]
  okjest:
  temp_n := RejWezP_K["X:RejestrRekPos"]
  okjest_no:
  RejOp["E:ustawsprawdzrekpos",ToStr["#temp_n#S"]]
  ExDialogOp["WyswietlPozycje","100"]
  RejOp["X:ZamknijRej",""]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
// 

% PRZELEW-SZUKAJ-OUT.ALG
  temp_n := RejWezP_K["E:RejestrRekPos"]
  data_txt := ToStr["#data_przelewx#S"]
  RejOp["X:OtworzRejSprawdz",id_modul+"PRZELEW.RJR"]
  RejOp["X:ZmienKluczRej","7"]
  if (view) goto petla_look-przelew
  IF (RejOp["X:ZnajdzRek",kontobank+"*"+data_txt]) goto okpetlax
  okpetlax:
  if (kontobank = RejWezP_S["X:konto_przel"]) goto okpetlax1
  OkAlert["Brak przelewu z dnia emisji "+data_przelewx+" !"]
  goto okjest_no
  okpetlax1:
  if (((data_przelew = RejWezP_D["X:data_out"]) and (RejWezP_S["X:status"] == "wprow") or (data_przelew = RejWezP_D["X:data_out"]) and (RejWezP_S["X:status"] == "autom"))) goto okjest
  if (RejOp["X:WezNastepnyRek",""]) goto okpetlax
  OkAlert["Brak przelewu z dnia emisji "+data_przelewx+" !"]
  goto okjest_no
//  
  petla_look-przelew:
  IF (RejOp["X:ZnajdzRek",kontobank+"*"+data_txt]) goto okjest
    if (not (Yesalert["Brak przelewu z dnia emisji "+data_przelewx+" !.Znale|x|c nast|epny !"])) goto exit
    RejOp["X:SzukajRek",kontobank+"*"+data_txt]
    goto okjest
    exit:
    RejOp["X:ZamknijRej",""]
//  ExitAlg[0]
  okjest:
  temp_n := RejWezP_K["X:RejestrRekPos"]
  okjest_no:
  RejOp["E:UstawRekPos",ToStr["#temp_n#S"]]
  ExDialogOp["WyswietlPozycje","100"]
  RejOp["X:ZamknijRej",""]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
// 

% PRZELEW-SZUKAJ-KONTRAHENT.ALG
  temp_n := RejWezP_K["E:RejestrRekPos"]
  data_txt := ToStr["#data_przelew#S"]
  RejOp["X:OtworzRejSprawdz",id_modul+"PRZELEW.RJR"]
  RejOp["X:ZmienKluczRej","8"]
  if (view) goto petla_look-przelew
  IF (RejOp["X:ZnajdzRek",kontobank+"*"+data_txt]) goto okpetlax
  okpetlax:
  if (kontobank = RejWezP_S["X:s_klient"]) goto okpetlax1
  OkAlert["Brak przelewu z dnia "+data_przelew+" !"]
  goto okjest_no
  okpetlax1:
  if (((data_przelew = RejWezP_D["X:data_przel"]) and (RejWezP_S["X:status"] == "wprow") or (data_przelew = RejWezP_D["X:data_przel"]) and (RejWezP_S["X:status"] == "autom"))) goto okjest
  if (RejOp["X:WezNastepnyRek",""]) goto okpetlax
  OkAlert["Brak przelewu z dnia "+data_przelew+" !"]
  goto okjest_no
//  
  petla_look-przelew:
  IF (RejOp["X:ZnajdzRek",kontobank+"*"+data_txt]) goto okjest
    if (not (Yesalert["Brak przelewu z dnia "+data_przelew+" !.Znale|x|c nast|epny !"])) goto exit
    RejOp["X:SzukajRek",kontobank+"*"+data_txt]
    goto okjest
    exit:
    RejOp["X:ZamknijRej",""]
//  ExitAlg[0]
  okjest:
  temp_n := RejWezP_K["X:RejestrRekPos"]
  okjest_no:
  RejOp["E:UstawRekPos",ToStr["#temp_n#S"]]
  ExDialogOp["WyswietlPozycje","100"]
  RejOp["X:ZamknijRej",""]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
// 
% PRZELEW-LOOK-WYBOR.DLG
%<PRZELEW-LOOK.DLG

% PRZELEW-LOOK.DLG
PRZYCISK_CANCELID = 10
##DEFWINDOW = 2,1,30,77,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Przegl|adanie wystawionych przelew|ow"
##100,0,ACPM,,,,,,,,WIELE_REKORDOW
##101,0,P,,,,yellow/blue&black/white&lblue/lwhite,,,,MENU_ROZWIJANE
##111,D,0,,,,yellow/black&black/white&blue/white,,,,ZMIENNA:kontobank
##112,D,0,,,,yellow/black&black/white&blue/white,,,,ZMIENNA:nazwabank
##120,D,0,,,,yellow/black&black/white&blue/white,,,,WYRAZENIE:O[kontobank+" Wn"],xkwota:X
##121,D,0,,,,yellow/black&black/white&blue/white,,,,WYRAZENIE:O[kontobank+" Ma"],xkwota:X
##122,D,0,,,,yellow/black&black/white&blue/white,,,,WYRAZENIE:"S[O[kontobank+"" Wn""],O[kontobank+"" Ma""]]",xkwota:X
##123,D,0,,,,yellow/black&black/white&blue/white,,,,WYRAZENIE:"S[O[kontobank+"" Ma""],O[kontobank+"" Wn""]]",xkwota:X
##22,B,P,,,,,,,,ZMIENNA:data_przelew
##35,B,P,,,,,,,,ZMIENNA:data_przelewx
##23,,P,,"%S%zukaj przelewu "
##24,,P,,"%N%ast|epny przelew"
##28,,P,,"%F%iltr            "
##25,,P,,"%W%ydruk przelewu     "
##21,,P,,"%M%odyfikacja przelewu"
##20,,P,,"%U%suni|ecie przelewu "
##26,,P,,"Zmiana s%t%atusu      "
##30,,P,,"Ka%r%toteka konto       "
##13,B,P,,"z zapisami",,,,,,ZMIENNA:ZAPISY,,A,1,T
##14,B,P,,"tylko nag|l|owki",,,,,,ZMIENNA:ZAPISY,,,1,N
##27,,P,,"%Z%miana konta       "
#101                                                                          #101<

 #100  















                                                                           #

 Znajd|x dzie|n - #22    # #35    #    Obroty: Wn #120       # Ma #121       #
 #111       ##112                   # Saldo: Wn #122       # Ma #123       #
//
% PRZELEW-LOOK-WYBOR-GORNE-MENU
P = 3,,ADS
*400,"%W%ybierz"
%<PRZELEW-LOOK-GORNE-MENU.XXX

% PRZELEW-LOOK-GORNE-MENU
P = 3,,ADS
%<PRZELEW-LOOK-GORNE-MENU.XXX

% PRZELEW-LOOK-GORNE-MENU.XXX
*300,"Zako|ncz"
10," Za%k%o|ncz"

27," Zmie|n konto"
*301,"Operacje"
25," Wydrukuj przelew"
21," Z%m%ie|n dane przelewu"

20," %U%su|n przelew"
26," Zmie|n status przelewu"
42," Zmie|n status przelew|ow (warunek)"

//40,"USUNI|ECIE PRZELEW|OW AUTOM"
//
*302,"Znajd|x"
23," %S%zukaj wed|lug warunku"
24," %N%ast|epny wed|lug warunku"
28," Ustaw %f%iltr"
//
//33," S%z%ukaj zapisu wg.warunku"
//34," Nast|e%p%ny zapis wg.warunku"
//35," Ustaw %f%iltr na zapis"
//
*303,"Wy|swietl",,M
13," Zapisy przelewu"
14," Tylko nag|l|owki"

32," Kontrahenci           <F6> ",,,,F6
30," Kartoteka rozrachunkowa    "
31," Kartoteka konta kontrahenta"
50," Lista numer|ow kierunkowych bank|ow"

*906,"Wykresy"
60," Przelewy miesi|ecznie"
62," Przelewy kwartalnie"

61," Przelewy na kontrahent|ow"
//
% PRZELEW-LOOK-GORNE-MENU-KONTRAHENT-WYBOR
P = 3,,ADS
*400,"%W%ybierz"
%<PRZELEW-LOOK-GORNE-MENU-KONTRAHENT.XXX

% PRZELEW-LOOK-GORNE-MENU-KONTRAHENT
P = 3,,ADS
%<PRZELEW-LOOK-GORNE-MENU-KONTRAHENT.XXX

% PRZELEW-LOOK-GORNE-MENU-KONTRAHENT.XXX
*300,"Zako|ncz"
10," Za%k%o|ncz"
*301,"Operacje"
21," Z%m%ie|n dane przelewu"
*302,"Znajd|x"
23," %S%zukaj wed|lug warunku"
24," %N%ast|epny wed|lug warunku"
28," Ustaw %f%iltr"
//
//33," S%z%ukaj zapisu wg.warunku"
//34," Nast|e%p%ny zapis wg.warunku"
//35," Ustaw %f%iltr na zapis"
//
*303,"Wy|swietl",,M
//13," Zapisy przelewu"
//14," Tylko nag|l|owki"
//
32," Kontrahenci           <F6> ",,,,F6
30," Kartoteka rozrachunkowa    "
31," Kartoteka konta kontrahenta"
50," Numery kierunkowe bank|ow"
//
% TMP_PRZELEW-LOOK-GORNE-MENU
P = 3,,ADS
*300,"Zako|ncz"
10," Za%k%o|ncz przegl|adanie"

27," Zmie|n konto bankowe"
*301,"Operacje"
21," Z%m%ie|n dane przelewu"
64," Zapisz wystawiony przelew do modu|lu"
65," Zapisz wszystkie wystawione przelewy do modu|lu"

63," Wydrukuj raport z przelew|ow"

20," %U%su|n przelew"
26," Zmie|n status przelewu"
42," Zmie|n status przelew|ow (warunek)"
//
*302,"Znajd|x"
23," %S%zukaj wed|lug warunku"
24," %N%ast|epny wed|lug warunku"
28," Ustaw %f%iltr"
//
*303,"Wy|swietl",,M
13," Zapisy przelewu"
14," Tylko nag|l|owki"

32," Kontrahenci           <F6> ",,,,F6
30," Kartoteka rozrachunkowa    "
31," Kartoteka konta kontrahenta"

*906,"Wykresy"
60," Przelewy miesi|ecznie"
62," Przelewy kwartalnie"

61," Przelewy na kontrahent|ow"
//
//
% PRZELEW-NAGLOWEK0.DLG,TMP_PRZELEW-NAGLOWEK0.DLG
##201,TLD,0,," ",,&&black/gray
%<PRZELEW-NAGLOWEK.DLG
//
% PRZELEW-NAGLOWEK1.DLG,TMP_PRZELEW-NAGLOWEK1.DLG
##201,TLD,0,,"Tre|s|c                 Konto       Transakcja       Termin          Kwota",,&&black/gray
%<PRZELEW-NAGLOWEK.DLG
//
//
% PLC_PRZELEW-NAGLOWEK0.DLG
##201,TLD,0,," ",,&&black/gray
%<PLC_PRZELEW-NAGLOWEK.DLG
//
% PLC_PRZELEW-NAGLOWEK1.DLG
##201,TLD,0,,"Tre|s|c                 Konto       Transakcja       Termin          Kwota",,&&black/gray
%<PLC_PRZELEW-NAGLOWEK.DLG
//
//
//
% PRZELEW-NAGLOWEK.DLG,TMP_PRZELEW-NAGLOWEK.DLG
##60,G,0,,,,&&blue/white,&&white/blue,,,POLE:E:data_przel
##63,D,0,,,,&&blue/white,,,,POLE:E:status
##66,D,0,,,,&&blue/white,,,,POLE:E:data_out
##61,D,P,,,,,,,,POLE:E:nazwa_kl1
##64,D,P,,,,,,,,POLE:E:numerbanku_kl
##67,D,P,,,,,,,,POLE:E:nazwabanku_kl
##62,D,P,,,,,,,,POLE:E:kwota_przel
##68,D,P,,,,,,,,POLE:E:priorytet_kl
##69,D,P,,,,,,,,POLE:E:typ_prl
##65,D,P,,,,lred/black&lwhite/black,,,,POLE:E:waluta
##70,D,P,,,,,,,,POLE:E:p_osoba
##200,DZ,ADP
##9,TLD,0,," ",,&&black/gray
#200
 Na dzie|n #60    # #61                                 # #69       # #68##9
 Status   #63   #  #67                                 # #70          #
 Wys|lano  #66    # #64                                 #   #62          #   
                                                                         #200<#9<
 #201                                                                     #
//
//
% PLC_PRZELEW-NAGLOWEK.DLG
##60,G,0,,,,&&blue/white,&&white/blue,,,POLE:E:data_przel
##63,D,0,,,,&&blue/white,,,,POLE:E:status
##61,D,P,,,,,,,,POLE:E:nazwa_kl1
##64,D,P,,,,,,,,POLE:E:numerbanku_kl
##67,D,P,,,,,,,,POLE:E:nazwabanku_kl
##62,D,P,,,,,,,,POLE:E:kwota_przel
##200,DZ,ADP
##9,TLD,0,," ",,&&black/gray
#200
 Na dzie|n #60    # #61                                    #              #9
 Status   #63   #  #67                                    # 
                   #64                                    ##62          #   
                                                                         #200<#9<
 #201                                                                     #
//
//
% PRZELEW-NAGLOWEK0DEW.DLG,TMP_PRZELEW-NAGLOWEK0DEW.DLG
##201,TLD,0,," ",,&&black/gray
%<PRZELEW-NAGLOWEKDEW.DLG
//
% PRZELEW-NAGLOWEK1DEW.DLG,TMP_PRZELEW-NAGLOWEK1DEW.DLG
##201,TLD,0,,"Tre|s|c                 Konto       Transakcja       Termin          Kwota",,&&black/gray
%<PRZELEW-NAGLOWEKDEW.DLG
//
% PLC_PRZELEW-NAGLOWEK0DEW.DLG
##201,TLD,0,," ",,&&black/gray
%<PLC_PRZELEW-NAGLOWEK.DLG
//
% PLC_PRZELEW-NAGLOWEK1DEW.DLG
##201,TLD,0,,"Tre|s|c                 Konto       Transakcja       Termin          Kwota",,&&black/gray
%<PLC_PRZELEW-NAGLOWEK.DLG
//
//
% PRZELEW-NAGLOWEKDEW.DLG,TMP_PRZELEW-NAGLOWEKDEW.DLG
##60,G,0,,,,&&blue/white,&&white/blue,,,POLE:E:data_przel
##63,D,0,,,,&&blue/white,,,,POLE:E:status
##66,D,0,,,,&&blue/white,,,,POLE:E:data_out
##61,D,P,,,,,,,,POLE:E:nazwa_kl1
##64,D,P,,,,,,,,POLE:E:numerbanku_kl
##67,D,P,,,,,,,,POLE:E:nazwabanku_kl
##62,D,P,,,,,,,,POLE:E:kwota_przel
##68,D,P,,,,,,,,POLE:E:priorytet_kl
##65,D,P,,,,lred/black&lwhite/black,,,,POLE:E:waluta
##69,D,P,,,,,,,,POLE:E:kwota_przel_dew
##200,DZ,ADP
##9,TLD,0,," ",,&&black/gray
#200
 Na dzie|n #60    # #61                                 #             #68##9
 Status   #63   #  #67                                 # #65##69        #               
 Wys|lano  #66    # #64                                 #     #62        #   
                                                                         #200<#9<
 #201                                                                     #
//
% PRZELEW-NAGLOWEK-KONTRAHENT.DLG
##60,G,0,,,,white&white,lred&black/white,,,POLE:E:data_przel
##66,G,0,,,,&&blue/white,,,,POLE:E:data_out
##64,D,P,,,,,,,,POLE:E:numerbanku_kl
##62,D,P,,,,,,,,POLE:E:kwota_przel
##63,D,0,,,,&&yellow/white,,,,POLE:E:status
##68,D,P,,,,&&yellow/white,,,,POLE:E:priorytet_kl
#60    # #66    # #63 # #68 # #64                           ##62          #
//
% TABLICA-AKCJI-PRZELEW-NAGLOWEK-KONTRAHENT
"AKCJA-PRZED-WYSWIETLENIEM",PRZELEW-NAGLOWEK-KONTRAHENT-KOLOR
"AKCJA-PRZED-WYKONYWANIEM",PRZELEW-NAGLOWEK-KONTRAHENT-KOLOR
//
% TABLICA-AKCJI-PRZELEW-NAGLOWEK0,TABLICA-AKCJI-PRZELEW-NAGLOWEK1,TABLICA-AKCJI-PLC_PRZELEW-NAGLOWEK0,TABLICA-AKCJI-PLC_PRZELEW-NAGLOWEK1,TABLICA-AKCJI-TMP_PRZELEW-NAGLOWEK0,TABLICA-AKCJI-TMP_PRZELEW-NAGLOWEK1
"AKCJA-PRZED-WYSWIETLENIEM",PRZELEW-NAGLOWEK-KOLOR
"AKCJA-PRZED-WYKONYWANIEM",PRZELEW-NAGLOWEK-KOLOR
//
% PRZELEW-NAGLOWEK-KONTRAHENT-KOLOR.ALG
%<PRZELEW-NAGLOWEK-KOLOR.ALG
//
% PRZELEW-NAGLOWEK-KOLOR.ALG
d_string := ""
d_string := "&&blue/white"
if ((rejwezp_s["e:status"] == "wprow") or (rejwezp_s["e:status"] == "autom")) d_string := "&&red/white"
if ((rejwezp_s["e:status"] == "odloz")) d_string := "&&green/white"
if ((rejwezp_s["e:status"] == "import")) d_string := "&&yellow/white"
exdialogop["ustawkolornorm","66"]
exdialogop["ustawkolornorm","60"]
if ((rejwezp_s["e:status"] == "b|l|ad")) d_string := "&&yellow/lred"
exdialogop["ustawkolornorm","63"]
//
% PRZELEW-LINIA-LOOK.DLG
##30,G,P,,,,lmagenta,magenta/white,,,POLE:F:TRESC1
##31,D,P,,,,lmagenta,,,,POLE:F:TRANS
##32,D,P,,,,lmagenta,,,,POLE:F:WARTOSC
##33,D,P,,,,lmagenta,,,,POLE:F:vatkontoplat
##35,D,P,,,,yellow/black,,,,POLE:F:data_plat
 #30                 # #33       # #31            # #35    ##32         #      
//
% PRZELEW-LINIA-LOOKDEW.DLG
##30,G,P,,,,lmagenta,magenta/white,,,POLE:F:TRESC1
##31,D,P,,,,lmagenta,,,,POLE:F:TRANS
##32,D,P,,,,lmagenta,,,,POLE:F:wartosc
##33,D,P,,,,lmagenta,,,,POLE:F:vatkontoplat
##35,D,P,,,,yellow/black,,,,POLE:F:data_plat
##36,D,P,,,,yellow/black,,,,POLE:F:waluta
##37,D,P,,,,yellow/black,,,,POLE:F:kwota_dew
 #30                 # #33       # #31            # #35    ##32         #      
                                                Dewizy: #36##37         #
//
% PRZELEW-LINIA-LOOK-KONTRAHENT.DLG
##30,G,P,,,,lmagenta,magenta/white,,,POLE:F:TRESC1
##31,D,P,,,,lmagenta,,,,POLE:F:TRANS
##32,D,P,,,,lmagenta,,,,POLE:F:WARTOSC
##33,D,P,,,,lmagenta,,,,POLE:F:vatkontoplat
##35,D,P,,,,yellow/black,,,,POLE:F:data_plat
#30             # #33       # #35    # #31                 # #32          #
//
% TABLICA-AKCJI-PRZELEW-LINIA-LOOK,TABLICA-AKCJI-PRZELEW-LINIA-LOOKDEW
"AKCJA-PRZED-WYSWIETLENIEM",PRZELEW-LINIA-LOOK-USTAL-TRANS
//
% PRZELEW-LINIA-LOOK-USTAL-TRANS.ALG
 rodzaj := ""
 konto := RejWezP_S["F:vatkontoplat"]
 ExitAlg[0]
// 
 if (not(FinnOp["ZnajdzDok",konto])) ExitAlg[0]
 if (not(RozrOp["ZnajdzTra",RejWezP_S["F:trans"]])) ExitAlg[0]
 if ((TrObrWn = TrObrMa) and (not(TrObrWn = 0))) rodzaj := "Zaplacona"
 if (TrObrWn > TrObrMa) st := "Nadplata"
 if (TrObrWn < TrObrMa) st := "Ok"
// if (TrObrMa = 0) st := "NieZ"
//
// 
% PRZELEW-STATUS-DIALOG.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Zmiana statusu przelewu"
##8,D,0,,,,yellow/blue&white/black&lblue/white,lred/blue&black/white,yellow/blue&black/white,,ZMIENNA:temp_txt0
##9,D,0,,,,yellow/blue&white/black&lblue/white,lred/blue&black/white,yellow/blue&black/white,,ZMIENNA:temp_txt1
##10,B,ACP,,,,,,,,ZMIENNA:status1,dic:52
##1,,ADP,,@4
 
 #8                                       #
 #9                                       #

 Zmie|n status przelewu na:  #10    #


             #1              #
% TABLICA-AKCJI-PRZELEW-STATUS-DIALOG
"AKCJA-BUTTON10",WYBOR-STATUSU
"AKCJA-BUTTON1",STATUS-REZYGNUJESZ
% WYBOR-STATUSU.ALG
 if (not(status1 = "")) goto dalej0
  OkALert["Podaj status na jaki chcesz zmieni|c !"]
  ExitAlg[0]
 dalej0:
  ExDialogOp["KoniecWykonywania",""]
% STATUS-REZYGNUJESZ.ALG
  status1 := status
  ExDialogOp["KoniecWykonywania",""]
//  
// 
//
% PRZELEW-STATUS-ZAKRES-DIALOG.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Zmiana statusu przelew|ow"
##8,D,0,,,,yellow/blue&white/black&lblue/white,lred/blue&black/white,yellow/blue&black/white,,ZMIENNA:temp_txt0
##9,D,0,,,,yellow/blue&white/black&lblue/white,lred/blue&black/white,yellow/blue&black/white,,ZMIENNA:temp_txt1
##12,0,ACP,,,,,,,,ZMIENNA:status1,dic:52
##13,0,ACP,,,,,,,,ZMIENNA:osoba_p
##200,DZ,ADPH,,"W okresie:"
##10,0,ACP,,,,,,,,ZMIENNA:data_stat1
##11,0,ACP,,,,,,,,ZMIENNA:data_stat2
##2,,ADP,,@3
##1,,ADP,,@4
 #8                                     #
 #9                                     #

 Zmienia|c status przelew|ow na:  #12   #
 

 Dla osoby wprowadzaj|acej: #13        #
 
 #200        

  od dnia #10    #  do dnia  #11    #

                                       #200<
  
     #2        #        #1        #
% TABLICA-AKCJI-PRZELEW-STATUS-ZAKRES-DIALOG
"AKCJA-BUTTON2",STATUSU-ZAKRES-AKCEPTUJESZ
"AKCJA-BUTTON1",STATUS-ZAKRES-REZYGNUJESZ
"AKCJA-F2-POLE13",PRL-OSOBA-WYBOR

% STATUSU-ZAKRES-AKCEPTUJESZ.ALG
        rezygnujesz := .N.
  if(data_stat2='' and data_stat1='') goto dalej2
  if(not(data_stat2 < data_stat1))    goto dalej2
  OkALert["Data ko|nca przedzia|lu nie mo|xe by|c wcze|sniejsza$od daty pocz|atku przedzia|lu czasu  !"]
  ExitAlg[0]
dalej2:
  if(not(status1="")) goto dalej3
  OkALert["Podaj status przelewu na jaki chcesz zmieni|c !"]
  ExitAlg[0]
dalej3:
  if(data_stat2='' or data_stat1='') goto dalej4
  if(Not(YesAlert["Zmiani|c status dla przelew|ow w okresie$od "+data_stat1+" do "+data_stat2+" ?"])) ExitAlg[0]
  goto koniec
dalej4:
  if(Not(YesAlert["Zmiani|c status dla bie|z|acego przelewu ?"])) ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]

% STATUS-ZAKRES-REZYGNUJESZ.ALG
  rezygnujesz := .T.
  ExDialogOp["KoniecWykonywania",""]
//
// 
//
// wydruk
//
% ZEST-PRZELEW.ALG
  CallAlg["konwersja"]
  id_modul := ""
  typ_prl := ""
  osoba_p := os_ksieg
  ExDialogOp["IdzDoDialogu","DRUK-ZEST"]
//
% ZEST-PRZELEW-PLACE.ALG
  CallAlg["konwersja"]
  id_modul := "PLC_"
  typ_prl := ""
  osoba_p := os_ksieg
  ExDialogOp["IdzDoDialogu","PLC_DRUK-ZEST"]
//
% TABLICA-AKCJI-DRUK-ZEST,TABLICA-AKCJI-PLC_DRUK-ZEST
"AKCJA-PRZED-WYSWIETLENIEM",DRUK-PRZED
"AKCJA-F2-POLE22",DRUK-KONTOBANKU-WYBIERZ
"AKCJA-F2-POLE26",PRL-OSOBA-WYBOR
"AKCJA-F2-POLE27",WYBOR-TYPPRL-RXR
"AKCJA-BUTTON10",DRUK-AKCEPTUJESZ
"AKCJA-BUTTON11",DRUK-REZYGNUJESZ
% DRUK-PRZED.ALG
  DATA_PRZELEW1 := d_dzisiaj
  dATA_PRZELEW2 := d_dzisiaj
  BANK := ""
  dat_naglowki := .T.
  naglowki := .T.
  status := "wprow"
  kontrahent := ""
  priorytet := ""
% DRUK-AKCEPTUJESZ.ALG
  if (id_modul = "") IdzDowydruku["przelewy\zestawienie_przelew.prn",""]
  if (id_modul == "PLC_") IdzDowydruku["przelewy\place_zestawienie_przelew.prn",""]
  ExDialogOp["KoniecWykonywania",""]
% DRUK-REZYGNUJESZ.ALG
  IF (YesAlert["Rezygnujesz z wykonania raportu !"]) ExDialogOp["KoniecWykonywania",""]
% DRUK-KONTOBANKU-WYBIERZ.ALG
  FinnOp["openmainx",""]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  d_string := bank
  if (RejOp["X:OtworzRejSprawdz",id_modul+"KONTABANK.RXR"]) goto dalej01
    OkAlert["Nie mog|e otworzy|c listy z definicj|a konta bankowych !"]
    exitalg[0]
  dalej01: 
  RejOp["X:WywolajMenu","2"]
  d_string := RejWezP_S["X:konto_bank"]
  if (d_string = "") d_string := RejWezP_S["konto_bank"]
  RejOp["X:ZamknijRej",""]
FinnOp["Close",""]
  ExitAlg[0]
// 
% DRUK-ZEST.DLG
PRZYCISK_CANCELID = 11
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Raport z wystawionych przelew|ow"
##200,DZ,ADPH,,"Zakres dni do raportu:"
##201,DZ,ADPH,,"Drukuj:"
##202,DZ,ADPH,,"Raport wykonaj dla:"
##203,DZ,ADPH,,"Zakres dat:"
##20,0,ACP,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:data_przelew1
##21,0,ACP,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:data_przelew2
##25,0,P,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:priorytet,dic:96
##22,0,P,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:bank
##24,0,P,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:kontrahent,string:848
##26,0,P,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:osoba_p
##23,0,0,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:status,dic:52
##27,0,P,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:typ_prl
##13,0,P,,"tylko nag|l|owki",,,,,,ZMIENNA:NAGLOWKI,,A,1,T
##14,0,P,,"zapisy przelew|ow",,,,,,ZMIENNA:NAGLOWKI,,,1,N
##15,0,P,,"daty przelew|ow",,,,,,ZMIENNA:Dat_NAGLOWKI,,A,2,T
##16,0,P,,"daty emisji",,,,,,ZMIENNA:Dat_NAGLOWKI,,,2,N
  
#202
                           (pusty - wszystkie)
    Przelewy o statusie    - #23   #          <<F2>
    Typ przelewu           - #27            # <<F2>
    Przelewy o priorytecie - #25#             <<F2>
    Konta bankowego        - #22            # <<F2>
    Kontrahenta            - #24            # <<F2>
    Dla os.wystawiaj|acej   - #26            # <<F2>
                                                    #202<

#200                       #201 
                              
  od #20    # do #21    #     #13              #
                              #14              #
                          #200<                    #201<
#203                              
     #15              #
     #16              #
                          #203<


          #10,,ADP,,@3#        #11,,ADP,,@4#   
//
% PLC_DRUK-ZEST.DLG
PRZYCISK_CANCELID = 11
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Raport z wystawionych przelew|ow (P|lace)"
##200,DZ,ADPH,,"Zakres dni do raportu:"
##201,DZ,ADPH,,"Drukuj:"
##202,DZ,ADPH,,"Raport wykonaj dla:"
##20,0,ACP,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:data_przelew1
##21,0,ACP,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:data_przelew2
##22,0,P,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:bank
##24,0,P,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:kontrahent,string:848
##23,0,0,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:status,dic:52
##13,0,P,,"tylko nag|l|owki",,,,,,ZMIENNA:NAGLOWKI,,A,1,T
##14,0,P,,"zapisy przelew|ow",,,,,,ZMIENNA:NAGLOWKI,,,1,N
  
#202
                           (pusty - wszystkie)
    Przelewy o statusie    - #23   #          <<F2>
    Konta bankowego        - #22            # <<F2>
    Kontrahenta            - #24            # <<F2>
                                                    #202<

#200                          
                             #201  
  od #20    # do #21    #     #13              #
                              #14              #   #201
                          #200<

         #10,,ADP,,@3#     #11,,ADP,,@4#   
//
// KSIEGOWANIE 
//
//
% PODAJ-KONTOBANKU-LOOK.ALG
  ExDialogOp["IdzDoDialogu",id_modul+"PODAJKONTOBANKU"]
//
// ----------------------
// Wprowadzenie symbolu rejestru faktur
// ----------------------
% TABLICA-AKCJI-PODAJKONTOBANKU,TABLICA-AKCJI-PLC_PODAJKONTOBANKU,TABLICA-AKCJI-TMP_PODAJKONTOBANKU
"AKCJA-PRZED-WYSWIETLENIEM",KONTOBANKU-PRZED
"AKCJA-F2-POLE10",KONTOBANKU-WYBIERZ
"AKCJA-BUTTON10",KONTOBANKU-PO
"AKCJA-BUTTON1",KONTOBANKU-REZYGNUJ
//
% KONTOBANKU-REZYGNUJ.ALG
  kontobank := ""
  exdialogop["koniecwykonywania",""]
//
% KONTOBANKU-PRZED.ALG
  callalg["DEF_KONTO_BANK"]
  ExDialogOp["IdzDoPozycji","10"]
% KONTOBANKU-WYBIERZ.ALG
  d_string := kontobank
  if (RejOp["X:OtworzRejSprawdz",id_modul+"KONTABANK.RXR"]) goto dalej01
    OkAlert["Nie mog|e otworzy|c listy z definicj|a konta bankowych !"]
    exitalg[0]
  dalej01: 
  RejOp["X:WywolajMenu","2"]
  d_string := RejWezP_S["X:konto_bank"]
  if (d_string = "") d_string := RejWezP_S["konto_bank"]
  RejOp["X:ZamknijRej",""]
  ExitAlg[0]
% KONTOBANKU-WYBIERZ-PLACE.ALG
  d_string := ""
  id_modul := "PLC_"
  if (RejOp["OtworzRejSprawdz",id_modul+"PARPRZEL.RXR"]) goto dalej00
    OkAlert["Nie mog|e otworzy|c listy parametr|ow plac !"]
    exitalg[0]
  dalej00: 
  if (not RejOp["WezPierwszyRek",""]) goto koniec
  if (RejOp["X:OtworzRejSprawdz",id_modul+"KONTABANK.RXR"]) goto dalej01
    OkAlert["Nie mog|e otworzy|c listy z definicj|a kont bankowych !"]
    exitalg[0]
  dalej01: 
  RejOp["X:WywolajMenu","2"]
  d_string := RejWezP_S["X:konto_bank"]
  RejWstawP_S["dluzkonto",RejWezP_S["X:konto_bank"]]
  RejWstawP_S["dluznazwabanku",RejWezP_S["X:nazwa_bank"]]
  RejWstawP_S["dluznumerbanku",RejWezP_S["X:numer_bank"]]
  RejOp["X:ZamknijRej",""]
  koniec:
  RejOp["ZamknijRej",""]
  ExitAlg[0]
% KONTOBANKU-PO.ALG
  A_OK := .N.
  IF (NOT(kontobank = "")) goto dalej0
  OkAlert["Podaj symbol konta bankowego !"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
  dalej0:
  if (kontobank = "") goto dalej01
  IF (not RejOp["X:OtworzRejSprawdz",id_modul+"KONTABANK.RXR"]) GOTO dalej01
  IF (REJOP["X:ZnajdzRek",kontobank]) goto dalej02
    OkAlert["Nie mog|e znale|x|c konta bankowego "+kontobank+" w rejestrze !"]
  RejOp["X:ZamknijRej",""]
  ExitAlg[0]
  dalej02:
  nazwabank := RejWezP_S["X:nazwa_bank"]
  modem := RejWezP_L["X:modem"]
  formatmodem := RejWezP_S["X:format_modem"]
  formatplik := RejWezP_S["X:format_plik"]
  formatpolskie := RejWezP_S["X:polskie"]
  sciezka := RejWezP_S["X:sciezka"]
  program := RejWezP_S["X:program"]
  ver := 1
  numerkonta := RejWezP_S["X:numer_bank"]
  swiftkonta := RejWezP_S["X:swift_bank"]
  dok_symbol := RejWezP_S["X:dok_bank"]
  koniec1:
  RejOp["X:ZamknijRej",""]
  dalej01:
  A_OK := .T.
  if (swtyp_dok = "") goto dalej03
  if (dok_symbol == swtyp_dok) goto dalej03
  OkAlert["Symbol dokumentu jest "+swtyp_dok+",a dla konta "+kontobank+" jest "+dok_symbol+" !"]
  ExitAlg[0]
  dalej03:
  ExDialogOp["KoniecWykonywania",""]
  Exitalg[0]
//
//##10,B,ADP,,,,,,,,ZMIENNA:kontobank,string:480
% PODAJKONTOBANKU.DLG,TMP_PODAJKONTOBANKU.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wyb|or konta bankowego"
##10,B,ACP,,,,,,,,ZMIENNA:kontobank,string:480
##1,,ADP,,@4


 Podaj symbol - #10          #

 
                #1           #
// 
% PLC_PODAJKONTOBANKU.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wyb|or konta bankowego <Przelewy>"
##10,B,ACP,,,,,,,,ZMIENNA:kontobank,string:512
##1,,ADP,,@4


 Podaj symbol - #10          #

 
                #1           #
//
//
//
% KSIEG-PRZELEW2.ALG
  CallAlg["ksieg-przelew1"]
% KSIEG-PRZELEW1.ALG
  CallAlg["konwersja"]
  if (not(FinnOp["@1openmainx",""])) ExitAlg[0]
  id_modul := ""
  rozr := .N.
  dew := .N.
  rozl := .N.
  atrybut := ""
  kontobank := ""
  nazwabank := ""
  modem := .N.
  formatmodem := ""
  program := ""
  formatplik := ""
  formatpolskie := ""
  sciezka := ""
  ver := .
  numerkonta := ""
  swiftkonta := ""
  view := .N.
  look := .T.
  swtyp_dok := ""
  wyciag := ""
  status_look := "wprow"
  status_look1 := "autom"
  dok_wyciag := ""
  CallAlg["podaj-kontobanku-look"]
  if (kontobank = "") exitAlg[0]
  if (not (view)) CallAlg["ksieg-przelew-xxx1"]
  if (view) CallAlg["look-przelew-xxx"]
  FinnOp["Close",""]
  
% KSIEG-PRZELEW-PLACE.ALG
  CallAlg["konwersja"]
  if (not(FinnOp["@1openmainx",""])) ExitAlg[0]
  id_modul := "PLC_"
  rozr := .N.
  dew := .N.
  rozl := .N.
  atrybut := ""
  kontobank := ""
  nazwabank := ""
  modem := .N.
  formatmodem := ""
  program := ""
  formatplik := ""
  formatpolskie := ""
  sciezka := ""
  ver := .
  numerkonta := ""
  swiftkonta := ""
  view := .N.
  look := .T.
  swtyp_dok := ""
  wyciag := ""
  status_look := "wprow"
  status_look1 := "autom"
  dok_wyciag := ""
  CallAlg["podaj-kontobanku-look"]
  if (kontobank = "") exitAlg[0]
  if (not (view)) CallAlg["ksieg-przelew-xxx1"]
  if (view) CallAlg["look-przelew-xxx"]
  FinnOp["Close",""]
  
% WYBOR-PRZELEW.ALG
  rejop["t:otworzrej","FRM_MEMO.RJR"]
//  CallAlg["konwersja"]
//  if (not(FinnOp["@3openmainx",""])) ExitAlg[0]

  id_modul := ""
  rozr := .N.
  dew := .N.
  rozl := .N.
  atrybut := ""
  kontobank := ""
  nazwabank := ""
  modem := .N.
  formatmodem := ""
  program := ""
  formatplik := ""
  formatpolskie := ""
  sciezka := ""
  ver := .
  numerkonta := ""
  swiftkonta := ""  
  view := .N.
  look := .N.
  dok_wyciag := ""
  swtyp_dok := swtyp
  data_dok_ks := Ddok
  wyciag := tresc
  ks_strona := .N.
  ks_wyciag := wyciag
  ks_tresc := ""
  ks_nr := .N.
  ks_sort := 0
  opis_dok := ""
  callalg["PARAM-CZYTAJ-PRZELEW-KS"]
  wyciag := ks_wyciag
//
  if (StrIn["/",wyciag] > 0) wyciag := StrCut[wyciag,0,StrIn["/",wyciag]]
  wyciag := ToStr["#wyciag#S"]
  status_look := "wprow"
  status_look1 := "autom"
  CallAlg["podaj-kontobanku-look"]
  if (kontobank = "") exitAlg[0]
  dok_rezygnujesz := .N.
  ExDialogOp["IdzDoDialogu","DOK-NAGLOWEK-ODL"]
  if (dok_rezygnujesz) ExitAlg[0]
//
  if (not (view)) CallAlg["ksieg-przelew-xxx1"]
  if (view) CallAlg["look-przelew-xxx"]
  rejop["t:zamknijrej",""]

% WYBOR-RAP-PRZELEW.ALG
  if (not(FinnOp["@1openmainx",""])) ExitAlg[0]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  d_string := ""
  id_modul := ""
  rozr := .N.
  dew := .N.
  rozl := .N.
  atrybut := ""
  nazwabank := ""
  modem := .N.
  formatmodem := ""
  program := ""
  formatplik := ""
  formatpolskie := ""
  sciezka := ""
  ver := .
  numerkonta := ""
  swiftkonta := ""  
  view := .N.
  look := .N.
  swtyp_dok := swtyp
  data_dok_ks := Ddok
  wyciag := tresc
  if (StrIn["/",wyciag] > 0) wyciag := StrCut[wyciag,0,StrIn["/",wyciag]]
  wyciag := ToStr["#wyciag#S"]
  status_look := "wprow"
  status_look1 := "autom"
  dok_rezygnujesz := .N.
  if (not (view)) CallAlg["ksieg-przelew-xxx1"]
  if (dok_rezygnujesz) goto dalej
    if (id_modul = "") Callalg["wybor-rap-przenies-przelew"]
    if (not(id_modul = "")) Callalg["wybor-rap-przenies-przelew-znacz"]
  dalej:
  Finnop["close",""]
//
% WYBOR-RAP-PRZELEW-PLACE.ALG
  if (not(FinnOp["@1openmainx",""])) ExitAlg[0]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  d_string := ""
  id_modul := "PLC_"
  rozr := .N.
  dew := .N.
  rozl := .N.
  atrybut := ""
  nazwabank := ""
  modem := .N.
  formatmodem := ""
  program := ""
  formatplik := ""
  formatpolskie := ""
  sciezka := ""
  ver := .
  numerkonta := ""
  swiftkonta := ""
  view := .N.
  look := .N.
  swtyp_dok := swtyp
  data_dok_ks := Ddok
  wyciag := tresc
  if (StrIn["/",wyciag] > 0) wyciag := StrCut[wyciag,0,StrIn["/",wyciag]]
  wyciag := ToStr["#wyciag#S"]
  status_look := "wprow"
  status_look1 := "autom"
  dok_rezygnujesz := .N.
  if (not (view)) CallAlg["ksieg-przelew-xxx1"]
  if (dok_rezygnujesz) goto dalej
    if (id_modul = "") Callalg["wybor-rap-przenies-przelew"]
    if (not(id_modul = "")) Callalg["wybor-rap-przenies-przelew-znacz"]
  dalej:
  Finnop["close",""]
//
% PRZELICZ-ZAZNACZ-KBANK-VIEW.ALG
  p_zap_ok := 0
  p_dew_zap_ok := 0
  callalg["PRZELEW-ZAZNACZ-ZLICZ-SUME"]
  CallAlg["PRZELICZ-ZAZNACZ-KBANK"]
  ExDialogOp["WyswietlPozycje","124"]
  exdialogop["wyswietlpozycje","200"]
  
% PRZELICZ-ZAZNACZ-KBANK.ALG
  rejop["py:wyczyscrej",""]
  rejop["pyx:wezpierwszyrek",""]
  finnop["@3openmainx",""]
  petla:
    kwn := .
    kma := .
    tempkonto := rejwezp_s["pyx:konto_bank"]
    finnop["@3znajdzdok",tempkonto]
    if (not(rejop["py:znajdzrek",tempkonto]))  rejop["py:dodajrek",""]
    rejwstawp_s["py:p_konto",tempkonto]
    kwn := O[tempkonto+" BRWn"]
    kma := O[tempkonto+" BRMa"]
// PLN
    xrejwstawp_s["py:p_dew","PLN"]
    xrejwstawp_k["py:p_own",kwn]
    xrejwstawp_k["py:p_oma",kma]
    xrejwstawp_k["py:p_swn",S[kwn,kma]]
    xrejwstawp_k["py:p_sma",S[kma,kwn]]
    xrejwstawp_k["py:p_sswn",S[kwn,kma+p_zap_ok]]
    xrejwstawp_k["py:p_ssma",S[kma+p_zap_ok,kwn]]
    rejop["py:zapiszrek",""]
// DEW
    if(not(K_DEW)) goto next_rek
    
    if (not(FinnOp["Pierwszadew",""])) goto next_rek
     petla_dew:
     if (nazwadew == "PLN") goto next_dew
      kwn := O[tempkonto +" BRWn:"+NazwaDew]
      kma := O[tempkonto +" BRMa:"+NazwaDew]
      if ((kwn = .) and (kma = .)) goto next_dew
        rejop["py:dodajrek",""]
        xrejwstawp_s["py:p_konto",tempkonto]
        xrejwstawp_s["py:p_dew",NazwaDew]
        xrejwstawp_k["py:p_own",kwn]
        xrejwstawp_k["py:p_oma",kma]
        xrejwstawp_k["py:p_swn",S[kwn,kma]]
        xrejwstawp_k["py:p_sma",S[kma,kwn]]
        xrejwstawp_k["py:p_sswn",S[kwn,kma+p_zap_ok]]
        xrejwstawp_k["py:p_ssma",S[kma+p_zap_ok,kwn]]
        rejop["py:zapiszrek",""]
      next_dew:
     if (FinnOp["nastepnadew",""]) goto petla_dew 

    next_rek:
    
  if (rejop["pyx:weznastepnyrek",""]) goto petla
  finnop["@3close",""]
  rejop["py:wezpierwszyrek",""]
//
% KSIEG-PRZELEW-XXX1.ALG
  RejOp["GK:OtworzRejSprawdz","GPRLDOK.RXR"]  
  rejop["GK:zmienkluczrej","2"]
  RejOp["E:OtworzRejSprawdz","Z"+id_modul+"PRZELEW.RJR"]
  RejOp["E:ZmienKluczRej","6"]
  RejOp["F:OtworzRejSprawdz",id_modul+"PRZEZAP.RJR"]
  RejOp["G:OtworzRejSprawdz",id_modul+"PRZEZAP1.RJR"]
  Rejop["PY:OtworzrejTemp","PKONTA.RJR"]
  Rejop["PYx:otworzrej","KONTABANK.RXR"]
  Rejop["EZ:OtworzrejTemp","TMP_ZPRZELEW.RJR"]
  RejOp["EZ:zmienkluczrej","2"]
  if (RejOp["E:WezPierwszyRek",""]) goto dalej
  OkAlert["Brak wystawionych przelew|ow !"]
  ExitALg[0]
  dalej:
  RejOp["E:WezPierwszyRek",""]
  ZAPISY := .T.
  obroty_zaznaczone := 0
  data_przelew := ''
  data_przelewx := ''
  p_zap_ok := 0
  p_dew_zap_ok := 0
  p_zap_all := 0
  p_zap_blok := 0
  callalg["PRZELICZ-ZAZNACZ-KBANK"]
  
  ExDialogOp["IdzDoDialogu","ZAZNACZ-PRZELEW1"]
  
  rejop["PYx:zamknijrej",""]
  rejop["PY:zamknijrej",""]
  RejOp["EZ:ZamknijRej",""]
  RejOp["E:ZamknijRej",""]
  RejOp["F:ZamknijRej",""]
  RejOp["G:ZamknijRej",""]
  RejOp["GK:ZamknijRej",""]
//
//
% TABLICA-AKCJI-ZAZNACZ-PRZELEW1,TABLICA-AKCJI-ZAZNACZ-PRZELEW2
"AKCJA-PRZED-WYSWIETLENIEM",PRZELEW-ZAZNACZ-PRZED
"AKCJA-BUTTON10",PRZELEW-KONIEC
"AKCJA-BUTTON13",ZAZNACZ-PRZELEW-BUTTZAPISY1
"AKCJA-BUTTON14",ZAZNACZ-PRZELEW-BUTTZAPISY2
"AKCJA-BUTTON20",PRZELEW-ZAZNACZ
"AKCJA-LINIAMENU100",PRZELEW-ZAZNACZ
"AKCJA-PO-POLU100",PRZELICZ-ZAZNACZ-KBANK-VIEW
"AKCJA-BUTTON21",PRZELEW-WARUNEK
"AKCJA-BUTTON22",PRZELEW-POLECENIE
"AKCJA-BUTTON35",PRZELEW-PRZEPISZ
"AKCJA-BUTTON36",PRZELEW-PRZEPISZ-ZNACZ
"AKCJA-BUTTON23",PRZELEW-SZUKAJ
"AKCJA-BUTTON35",PRZELEW-SZUKAJ-OUT
"AKCJA-BUTTON24",PRZELEW-NASTEPNY
"AKCJA-BUTTON25",PRZELEW-NAPLIK-MODEM
"AKCJA-BUTTON26",PRZELEW-ZAZNACZ-WARUNEK
"AKCJA-BUTTON27",PRZELEW-ZMIANA-STATUSU
"AKCJA-BUTTON227",PRZELEW-ZMIANA-STATUSU
"AKCJA-BUTTON28",PRZELEW-ZAZNACZ-ZMIANA-KONTA-BANK
"AKCJA-BUTTON228",PRZELEW-ZAZNACZ-ZAPISZ-ZMIANA-KONTA-BANK
"AKCJA-BUTTON29",PRZELEW-USTAW-FILTR
"AKCJA-BUTTON30",PRZELEW-KARTOTEKA
"AKCJA-BUTTON31",PRZELEW-ZAZNACZONE-ZESTAWIENIE
"AKCJA-BUTTON32",PRZELEW-ZAZNACZONE-WYDRUK
"AKCJA-BUTTON33",PRZELEW-KONTRAHENCI
"AKCJA-BUTTON34",PRZELEW-KARTOTEKA-KONTO
"AKCJA-BUTTON41",PRZELEW-MODYFIKUJ-Z-PRZENIES
"AKCJA-F2-POLE114",PRZELEW-WYBOR-FORMATMODEM
"AKCJA-BUTTON50",NKB-RXR
// 
% PRZELEW-KONIEC.ALG
  dok_rezygnujesz := .T.
  d_string := ""
  ExDialogOp["KoniecWykonywania",""]

% PRZELEW-WYBOR-FORMATMODEM.ALG
d_string := WybierzZeSlownika["98"]
if (d_string == "") d_string := formatmodem
ExDialogOp["WyswietlPozycje","113"]
% PRZELEW-ZAZNACZ-WARUNEK.ALG
  WARUNEK_REZYGNUJESZ := .T.
  data1 := ''
  data2 := ''
  kl_priorytet := ""
  logi := .T.
  typ_prl := ""
  osoba_p := os_ksieg
  ExDialogOp["IdzDoDialogu",id_modul+"ZAZNACZ-PRZELEW-DIALOG"]
  if (WARUNEK_REZYGNUJESZ) GOTO KONIEC
//
  rekpos := rejwezp_k["e:rejestrrekpos"]
  CallAlg[id_modul+"wykonaj-zaznacz"]
  if (not(logi)) p_zap_ok := 0
  if (not(logi)) p_dew_zap_ok := 0
  if (not(logi)) obroty_zaznaczone := 0
  callalg["PRZELICZ-ZAZNACZ-KBANK"]
  rejop["e:ustawrekpos",ToStr["#rekpos#S:0"]]
  ExDialogOp["WyswietlPozycje","100"]
  ExDialogOp["WyswietlPozycje","200"]
  ExDialogOp["WyswietlPozycje","124"]
  KONIEC:
  ExitAlg[0]
% PRZELEW-POLECENIE.ALG
//
  rejop["t:otworzrej","FRM_MEMO.RJR"]
  DOK_REZYGNUJESZ := .T.
  dok_bank := ""
  dok_wyciag := ""
  d1 := ''
  d2 := ''
  konto_bank_glob := ""
  if (not(look)) goto ksiegowanie
  if (not(status_look == "odloz")) goto dalej0
  if (YesNAlert["UWAGA !!!$ $ Przelewy s|a ze statusem odloz .$Czy tak ma by|c ?"]) goto dalej0
  ExitAlg[0]
  dalej0:
  data_dok_ks := ''
  ks_strona := .N.
  ks_wyciag := ""
  ks_tresc := ""
  ks_nr := .N.
  ks_sort := 0
  opis_dok := ""
  callalg["PARAM-CZYTAJ-PRZELEW-KS"]
  wyciag := ks_wyciag
//  
  ExDialogOp["IdzDoDialogu","DOK-NAGLOWEK"]
  if (DOK_REZYGNUJESZ) goto dalej
  ksiegowanie:
  IF (Not YesAlert["Ksi|egowa|c zaznaczone przelewy ?"]) goto dalej
  ks_wyciag := wyciag
  callalg["PARAM-ZAPISZ-PRZELEW-KS"]
  CallAlg["przelew-dekret"]
// 
//  SysAlg["ZwolnijPamiec"]
  ExDialogOp["KoniecWykonywania",""]
  DALEJ:
  rejop["t:zamknijrej",""]
//
% PRZELEW-PRZEPISZ.ALG
//
  id_modul := ""
  dok_rezygnujesz := .N.
  IF (Not YesAlert["Przepisa|c przelew do raportu bankowego ?"]) goto dalej
    d_string := tostr["#rejwezp_k[""e:rejestrrekpos""]#S:0"]
  ExDialogOp["KoniecWykonywania",""]
  dalej:
//
% PRZELEW-PRZEPISZ-ZNACZ.ALG
  id_modul := "RAP"
  dok_rezygnujesz := .N.
  IF (Not YesAlert["Przepisa|c zaznaczone przelewy do raportu bankowego ?"]) goto dalej
    d_string := tostr["#rejwezp_k[""e:rejestrrekpos""]#S:0"]
  ExDialogOp["KoniecWykonywania",""]
  dalej:
//
% PRZELEW-ZAZNACZ.ALG
  rpos := rejwezp_k["e:rejestrrekpos"]
  if (not (RejWezP_L["E:zaznacz"])) ZNACZ := .T. 
  if (RejWezP_L["E:zaznacz"]) znacz := .N.
  
  if (not(RejWezP_L["E:zaznacz"])) goto ni_znacz
    if (rejop["ez:znajdzrek",tostr["#rpos#S:0"]]) goto nie_znacz
    rejop["ez:dodajrek",""]
    rejwstawp_k["ez:i_rpos",rpos]
    goto nie_znacz
  ni_znacz:
    if (not(rejop["ez:znajdzrek",tostr["#rpos#S:0"]])) goto nie_znacz
    rejop["ez:usunrek",""]
  nie_znacz:
//  RejWstawP_L["E:zaznacz",znacz]
//  CallAlg["PRZELEW-ZAZNACZ-SUMA"]
//
//  if (RejWezP_L["E:zaznacz"]) callalg["PRZELEW-ZAZNACZ-ZLICZ-SUME"]
//  if (RejWezP_L["E:zaznacz"]) callalg["PRZELICZ-ZAZNACZ-KBANK"]
//  ExDialogOp["WyswietlPozycje","1"]
//  ExDialogOp["WyswietlPozycje","200"]
//  ExDialogOp["WyswietlPozycje","124"]
//
% PRZELEW-ZAZNACZ-SUMA.ALG
  if (rejwezp_l["e:zaznacz"]) obroty_zaznaczone := obroty_zaznaczone + rejwezp_k["e:kwota_przel"]
  if (not(rejwezp_l["e:zaznacz"])) obroty_zaznaczone := obroty_zaznaczone - rejwezp_k["e:kwota_przel"]
  p_zap_ok := obroty_zaznaczone
  
//
% PRZELEW-WARUNEK.ALG
PARAM_KEYID := 1
RejInitN["E:SZUKAJX_WARUNEK"]
//
RejWarDialog[id_modul+"PRZELEW.RJR",id_modul+"PRZELEW-WAR","SZUKAJX_WARUNEK",0]
RejWpiszWartoscN_S["E:SZUKAJX_WARUNEK",11,.T.,kontobank] 
if (RejSzukajWartoscN["E:SZUKAJX_WARUNEK",PARAM_KEYID,.T.]) goto jest
  OkAlert["Nie znaleziono |zadnych danych z podanego warunku !"]
  ExitAlg[0]
jest:
pozycja := rejwezp_k["e:rejestrrekpos"]
ExDialogOp["WyswietlPozycje","100"]
ExDialogOp["IdzDopozycji","100"]
//  
% PRZELEW-WARUNEK-KONTRAHENT.ALG
PARAM_KEYID := 1
RejInitN["E:SZUKAJX_WARUNEK"]
RejWarDialog[id_modul+"PRZELEW.RJR",id_modul+"PRZELEW-WAR-KL","SZUKAJX_WARUNEK",0]
if (RejSzukajWartoscN["E:SZUKAJX_WARUNEK",PARAM_KEYID,.T.]) goto jest
   OkAlert["Nie znaleziono |zadnych danych z podanego warunku !"]
   ExitAlg[0]
jest:
ExDialogOp["WyswietlPozycje","100"]
ExDialogOp["IdzDopozycji","100"]
pozycja := rejwezp_k["e:rejestrrekpos"]
//  
% PRZELEW-NASTEPNY.ALG
PARAM_KEYID := 1
if (RejSzukajWartoscN["E:SZUKAJX_WARUNEK",PARAM_KEYID,.N.]) goto jest
   OkAlert["Brak przelewu z podanego warunku !"]
   rejop["e:ustawrekpos",tostr["#pozycja#S:0"]]
   ExDialogOp["WyswietlPozycje","100"]
   ExDialogOp["IdzDopozycji","100"]
   ExitAlg[0]
jest:
pozycja := rejwezp_k["e:rejestrrekpos"]
ExDialogOp["WyswietlPozycje","100"]
ExDialogOp["IdzDopozycji","100"]
//
% PRZELEW-ZAPISY-WARUNEK.ALG
PARAM_KEYIDX := 1
RejInitN["F:SZUKAJXY_WARUNEK"]
RejWarDialog[id_modul+"PRZEZAP.RJR",id_modul+"PRZEZAP-WAR","SZUKAJXY_WARUNEK",0]
//RejWpiszWartoscN_S["F:SZUKAJXY_WARUNEK",11,.T.,kontobank] 
if (RejSzukajWartoscN["F:SZUKAJXY_WARUNEK",PARAM_KEYIDX,.T.]) goto jest
  OkAlert["Nie znaleziono |zadnych danych z podanego warunku !"]
  ExitAlg[0]
jest:
zapxx := RejWezP_K["f:dokidzap"]
RejOp["E:ZnajdzRek",ToStr["#zapxx#S:0"]]
ExDialogOp["WyswietlPozycje","100"]
ExDialogOp["IdzDopozycji","100"]
//  
% PRZELEW-ZAPISY-NASTEPNY.ALG
PARAM_KEYIDX := 1
if (RejSzukajWartoscN["F:SZUKAJXY_WARUNEK",PARAM_KEYIDX,.N.]) goto jest
  OkAlert["Brak zapisu przelewu z podanego warunku !"]
ExitAlg[0]
jest:
ExDialogOp["WyswietlPozycje","100"]
ExDialogOp["IdzDopozycji","100"]
//
% PRZELEW-ZAZNACZ-PRZED.ALG
  ZAPISY := .T.
  CallAlg["PRZELEW-USTAW-ZAPISY-ZAZNACZ"]
  ExDialogOp["UstawMenuParam","101:KSIEG-PRZELEW1-GORNE-MENU"]
  CallAlg["PRZELEW-ZAZNACZ-ZLICZ-SUME"]
  callalg["PRZELICZ-ZAZNACZ-KBANK"]
//  
% PRZELEW-USTAW-ZAPISY-ZAZNACZ.ALG
    ExDialogOp["UstawMenuParam","100:"+id_modul+"ZAZNACZ-PRZELEW1MENU,E,PIERWSZYKLUCZ,1"]
    ExDialogOp["UstawMenuKlucz","100:"+kontobank]
    ExDialogOp["UstawFiltrAlg","100:PRZELEW-ZMIANA-FILTR"]
//    ExDialogOp["UstawFiltrAlg","200:PRZELEW-ZMIANA-FILTR-KONTO"]
    
% PRZELEW-USTAW-ZAPISY-ZAZNACZ.ALG.OLD
//  CZY := (StrIn["D",cechy_wersji])
//  IF (CZY > 0) goto dewizy
// darek
    if (not(zapisy)) ExDialogOp["UstawMenuParam","100:"+id_modul+"ZAZNACZ-NAGLOWEK0,E,PIERWSZYKLUCZ,1,E,,DS"]
    if (zapisy) ExDialogOp["UstawMenuParam","100:"+id_modul+"ZAZNACZ-NAGLOWEK1,E,PIERWSZYKLUCZ,1,E,,DS"]
    ExDialogOp["UstawMenuKlucz","100:"+kontobank]
    if (ZAPISY) ExDialogOp["DodajNastepnyDialog","100:PRZELEW-LINIA-ZAZNACZ,F,JEDENKLUCZ,1,E,99,DS"]
  goto koniec
  dewizy:
    if (not(zapisy)) ExDialogOp["UstawMenuParam","100:"+id_modul+"ZAZNACZ-NAGLOWEK0DEW,E,PIERWSZYKLUCZ,1,E,,DS"]
    if (zapisy) ExDialogOp["UstawMenuParam","100:"+id_modul+"ZAZNACZ-NAGLOWEK1DEW,E,PIERWSZYKLUCZ,1,E,,DS"]
    ExDialogOp["UstawMenuKlucz","100:"+kontobank]
    if (ZAPISY) ExDialogOp["DodajNastepnyDialog","100:PRZELEW-LINIA-ZAZNACZDEW,F,JEDENKLUCZ,1,E,99,DS"]
  koniec:
  ExDialogOp["UstawFiltrAlg","100:PRZELEW-ZMIANA-FILTR"]
//
% ZAZNACZ-PRZELEW-BUTTZAPISY1.ALG
  zapisy := .T.
  CallAlg["ZAZNACZ-PRZELEW-BUTTZAPISY"]
% ZAZNACZ-PRZELEW-BUTTZAPISY2.ALG
  zapisy := .N.
  CallAlg["ZAZNACZ-PRZELEW-BUTTZAPISY"]
//
% ZAZNACZ-PRZELEW-BUTTZAPISY.ALG
  temp_n := RejWezP_K["E:RejestrRekPos"]
  CallAlg["PRZELEW-USTAW-ZAPISY-ZAZNACZ"]
  temp_t := ToStr["#temp_n#S"]
  RejOp["E:ustawsprawdzrekpos",temp_t]
  ExDialogOp["WyswietlPozycje","100"]
//darek  
% PRZELEW-ZMIANA-STATUSU.ALG
  a_ok := .T.
//  if (d_pos = 27) status_look1 := status_look
  klucz := kontobank+"*"+status_look
  if (d_pos = 227) klucz := kontobank+"*"+status_look1
//
  CallAlg["przelew-zmiana-statusu-filtr-sprawdz"]
  if (not(a_ok)) ExitAlg[0]
  ExDialogOp["UstawFiltrAlg","100:PRZELEW-ZMIANA-FILTR"]
  rejop["e:wezostatnirek",""]
  ExDialogOp["WyswietlPozycje","100"]
  ExDialogOp["WyswietlPozycje","27"]
  ExDialogOp["WyswietlPozycje","227"]
  callalg["PRZELEW-ZAZNACZ-ZLICZ-SUME"]
  callalg["PRZELICZ-ZAZNACZ-KBANK"]
  ExDialogOp["WyswietlPozycje","200"]
  ExDialogOp["WyswietlPozycje","124"]
% PRZELEW-ZMIANA-FILTR.ALG
  a_ok := .N.
  if ((RejWezP_S["E:status"] == status_look) or (RejWezP_S["E:status"] == status_look1)) a_ok := .T.
%  PRZELEW-ZMIANA-FILTR-KONTO.ALG
  A_OK := .N.
  if (kontobank == rejwezp_s["py:p_konto"]) A_OK := .T.
% PRZELEW-ZMIANA-STATUSU-FILTR-SPRAWDZ.ALG
  if (status_look = "") status_look := "wprow"
  if (status_look1 = "") status_look1 := "autom"
  RejOp["E:ZmienKluczRej","6"]
  if (not RejOp["E:ZnajdzRek",klucz]) goto normal
    RejOp["E:ZmienKluczRej","1"]
    ExitAlg[0]
  normal:
  RejOp["E:ZmienKluczRej","1"]
  OkALert["Brak przelew|ow o statusie "+status_look+".$ Ustawiam na status wprow i autom !"]
  status_look := "wprow"
  status_look1 := "autom"
  ExDialogOp["WyswietlPozycje","100"]
  ExDialogOp["WyswietlPozycje","27"]
  ExDialogOp["WyswietlPozycje","227"]
  a_ok := .N.
//
//
% PLC_ZAZNACZ-PRZELEW1-EDYCJA.DIC
"PLC_PRZELEW",0
//
% PLC_ZAZNACZ-PRZELEW1MENU.MEN
D=,"",AB
LINIA-DIALOG = PLC_ZAZNACZ-PRZELEW1-EDYCJA,"Kolumny"
9,,,,8,"Data"
3,,,,20,"Nazwa"
8,,,,30,"Konto"
20,,,,12,"Kwota PLN"
23,,,,3,"Dew"
24,,,,10,"Kwota DEW"
22,,,,5,"Status"
//
% ZAZNACZ-PRZELEW1-EDYCJA.DIC
"PRZELEW",0
//
% ZAZNACZ-PRZELEW1MENU.MEN
D=,"",AB
LINIA-DIALOG = ZAZNACZ-PRZELEW1-EDYCJA,"Kolumny"
//20,,,,10,"Nr"
9,,,,8,"Data"
3,,,,30,"Nazwa"
//8,,,,30,"Konto"
10,,,,12,"Kwota PLN"
14,,,,3,"Dew"
15,,,,10,"Kwota DEW"
12,,,,5,"Status"
//  
% ZAZNACZ-PRZELEW1.DLG,ZAZNACZ-PRZELEW2.DLG  
PRZYCISK_CANCELID = 10
##DEFWINDOW = 2,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Operacje na zaznaczonych przelewach"
//##100,0,ACPM,,,,,,,,WIELE_REKORDOW
##100,0,ACPM,,,,,,,,MENU_NA_REKORDY
##101,0,P,,,,yellow/blue&black/white&lblue/lwhite,,,,MENU_ROZWIJANE
//##120,D,0,,,,yellow/black&black/white&blue/white,,,,WYRAZENIE:O[kontobank+" Wn"],xkwota:X
//##121,D,0,,,,yellow/black&black/white&blue/white,,,,WYRAZENIE:O[kontobank+" Ma"],xkwota:X
//##122,D,0,,,,yellow/black&black/white&blue/white,,,,WYRAZENIE:"S[O[kontobank+"" Wn""],O[kontobank+"" Ma""]]",xkwota:X
//##123,D,0,,,,yellow/black&black/white&blue/white,,,,WYRAZENIE:"S[O[kontobank+"" Ma""],O[kontobank+"" Wn""]]",xkwota:X
##124,D,0,,,,yellow/black&black/white&blue/white,,,,ZMIENNA:obroty_zaznaczone,xkwota:x
##200,0,ACP,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:POKAZ_PKONTA,PY
//##204,DZ,ADPH,,"Sumy kwot z zapis|ow:"
//##206,TLD,0,,"     Wszystkie  Niezaznaczone   Do przelew|ow",,yellow/blue&black/white&red/yellow
//##210,D,P,,,,,,,,ZMIENNA:p_zap_all,xkwota:x
//##211,D,P,,,,,,,,ZMIENNA:p_zap_blok,xkwota:x
//##212,D,P,,,,,,,,ZMIENNA:p_zap_ok,xkwota:x
##20,,P,,"Zaznacz przelew"
##26,,P,,"Zaznacz %w%arunek  "
##21,,P,,"%S%zukaj przelewu"
##24,,P,,"%N%ast|epny przelew"
##29,,P,,"%F%iltr            "
##28,,P,,"Zm%i%ana konta       "
##31,,P,,"W%y%druk zestawienia   "
##32,,P,,"Wy%d%ruk zaznaczonych  "
##22,,P,,"%P%olecenie ksi|egowania"
##25,,P,,"Plik TXT %m%odem        "
##30,,P,,"Ka%r%toteka konto"
##27,B,0,,,'t',yellow/blue&white/black,lred/blue&black/white,yellow/blue&black/white,,ZMIENNA:STATUS_LOOK,DIC:52
##227,B,0,,,,yellow/blue&white/black,lred/blue&black/white,yellow/blue&black/white,,ZMIENNA:STATUS_LOOK1,DIC:52
##114,0,0,,,,yellow/black&black/white,,,,ZMIENNA:formatmodem
##23,B,P,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:data_przelew
##35,B,P,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:data_przelewx
##13,B,P,,"z zapisami",,,,,,ZMIENNA:ZAPISY,,A,1,T
##14,B,P,,"tylko nag|l|owki",,,,,,ZMIENNA:ZAPISY,,,1,N
##111,D,0,,,,&&red/yellow,,,,ZMIENNA:kontobank
##112,D,0,,,,&&red/yellow,,,,ZMIENNA:nazwabank
##113,D,0,,,,&&red/yellow,,,,ZMIENNA:formatmodem
 #101                                       # #111     ##112                         ##113       #

 
#100
                                                                                                   #100<

 Znajd|x dzie|n  :#23    # Zaznaczono: #124      #   Poka|z o s%t%atusie: #27 # i #227#
// Znajd|x d.emisji :#35    # 
 
 
#200



 
 
                                                                                                   #200<
//
//                               #204
//                                #206                                       #
//                                #210         # #211         # #212         #
//                                                                            #204<
//
% KSIEG-PRZELEW1-GORNE-MENU,KSIEG-PRZELEW2-GORNE-MENU
P = 3,,ADS
*300,"Zako|ncz"
10," Za%k%o|ncz"
28," Zmie|n konto"

22," Ksi|eguj z%a%znaczone do dokumentu ksi|egowego"

35," %P%rzepisz do raportu bankowego"
36," Przepisz zaznaczone do raportu bankowego"

25," %E%misja do HOME BANKING"
*301,"Operacje"
// 20," Zaznacz/odznacz do emisji"
26," Zaznacz / odznacz wg.warunku"

228," Zapisz zaznaczone na inne konto"

31," %W%ydrukuj raport z zaznaczonych przelew|ow"

32," Drukuj przelewy (tylko zaznaczone)"

//40,"USUNI|ECIE PRZELEW|OW AUTOM"
//41," Zapisz przelew do innej ksi|egi (Kopiowanie)"
//
*302,"Znajd|x"
21," %S%zukaj wed|lug warunku"
24," %N%ast|epny wed|lug warunku"
29," Ustaw %f%iltr"
//
*303,"Wy|swietl",,M
//13," Zapisy przelewu"
//14," Tylko nag|l|owki"
//
33," Kontrahenci           <F6> ",,,,F6
30," Kartoteka rozrachunkowa    "
34," Kartoteka konta kontrahenta"
50," Lista numer|ow kierunkowych bank|ow"
//
% ZAZNACZ-NAGLOWEK0.DLG
##201,TLD,0,,"",,&&black/gray
%<ZAZNACZ-NAGLOWEK.DLG
//
% ZAZNACZ-NAGLOWEK1.DLG
##201,TLD,0,,"Tre|s|c                 Konto       Transakcja       Termin          Kwota",,&&black/gray
%<ZAZNACZ-NAGLOWEK.DLG
//
% ZAZNACZ-NAGLOWEK0DEW.DLG
##201,TLD,0,,"",,&&black/gray
%<ZAZNACZ-NAGLOWEKDEW.DLG
//
% ZAZNACZ-NAGLOWEK1DEW.DLG
##201,TLD,0,,"Tre|s|c                 Konto       Transakcja       Termin          Kwota",,&&black/gray
%<ZAZNACZ-NAGLOWEKDEW.DLG
//
% PLC_ZAZNACZ-NAGLOWEK0.DLG
##201,TLD,0,,"",,&&black/gray
%<PLC_ZAZNACZ-NAGLOWEK.DLG
//
% PLC_ZAZNACZ-NAGLOWEK1.DLG
##201,TLD,0,,"Tre|s|c                 Konto       Transakcja       Termin          Kwota",,&&black/gray
%<PLC_ZAZNACZ-NAGLOWEK.DLG
//
% PLC_ZAZNACZ-NAGLOWEK0DEW.DLG
%<PLC_ZAZNACZ-NAGLOWEK0DEW.DLG
//
% PLC_ZAZNACZ-NAGLOWEK1DEW.DLG
%<PLC_ZAZNACZ-NAGLOWEK1DEW.DLG
//
% ZAZNACZ-NAGLOWEK.DLG
##1,GB,P,,,'Z',yellow/blue&white/black,lred/white&black/white,yellow&white,,POLE:E:zaznacz
##61,D,P,,,,,,,,POLE:E:data_przel
##63,D,P,,,,,,,,POLE:E:nazwa_kl1
##67,D,P,,,,,,,,POLE:E:nazwabanku_kl
##62,D,P,,,,,,,,POLE:E:numerbanku_kl
##64,D,P,,,,,,,,POLE:E:kwota_przel
##65,D,0,,,,&&yellow/red,,,,POLE:E:status
##66,D,P,,,,,,,,POLE:E:data_out
##68,D,P,,,,,,,,POLE:E:priorytet_kl
##69,D,P,,,,,,,,POLE:E:typ_prl
##70,D,P,,,,,,,,POLE:E:p_osoba
##200,DZ,ADP
##9,TLD,0,," ",,&&black/gray
#200
 Wys|la|c ? #1#       #63                             # #69     # #68##65 ##9
 Na dzie|n #61    #  #67                             # #70          #                
 Wys|lano  #66    #  #62                              #     #64          #   
                                                                         #200<#9<
 #201                                                                     #
//
% PLC_ZAZNACZ-NAGLOWEK.DLG
##1,GB,P,,,'Z',yellow/blue&white/black,lred/white&black/white,yellow&white,,POLE:E:zaznacz
##61,D,P,,,,,,,,POLE:E:data_przel
##63,D,P,,,,,,,,POLE:E:nazwa_kl1
##67,D,P,,,,,,,,POLE:E:nazwabanku_kl
##62,D,P,,,,,,,,POLE:E:numerbanku_kl
##64,D,P,,,,,,,,POLE:E:kwota_przel
##65,D,0,,,,&&yellow/red,,,,POLE:E:status
##200,DZ,ADP
##9,TLD,0,," ",,&&black/gray
#200
 Wys|la|c ? #1#       #63                                            ##65 ##9
 Na dzie|n #61    #  #67                                             # 
                    #62                                   ##64          #   
                                                                         #200<#9<
 #201                                                                     #
//
% ZAZNACZ-NAGLOWEKDEW.DLG
##1,GB,P,,,'Z',yellow/blue&white/black,lred/white&black/white,yellow&white,,POLE:E:zaznacz
##61,D,P,,,,,,,,POLE:E:data_przel
##63,D,P,,,,,,,,POLE:E:nazwa_kl1
##67,D,P,,,,,,,,POLE:E:nazwabanku_kl
##62,D,P,,,,,,,,POLE:E:numerbanku_kl
##64,D,P,,,,,,,,POLE:E:kwota_przel
##65,D,0,,,,&&yellow/red,,,,POLE:E:status
##66,D,P,,,,,,,,POLE:E:data_out
##68,D,P,,,,,,,,POLE:E:priorytet_kl
##69,D,P,,,,,,,,POLE:E:waluta
##70,D,P,,,,,,,,POLE:E:kwota_przel_dew
##200,DZ,ADP
##9,TLD,0,," ",,&&black/gray
#200
 Wys|la|c ? #1#       #63                              #          #68##65 ##9
 Na dzie|n #61    #  #67                              #  #69##70         #
 Wys|lano  #66    #  #62                              #     #64          #   
                                                                         #200<#9<
 #201                                                                     #
//
% PRZELEW-LINIA-ZAZNACZ.DLG
##35,D,P,,,,yellow/black,,,,POLE:F:data_plat
##30,G,P,,,,magenta,magenta/white,,,POLE:F:TRESC1
##31,D,0,,,,magenta,magenta/white,,,POLE:F:TRANS
##32,D,0,,,,magenta,magenta/white,,,POLE:F:WARTOSC
##33,D,0,,,,magenta,magenta/white,,,POLE:F:vatkontoplat
 #30                 # #33       # #31            # #35    ##32         #      
% PRZELEW-LINIA-ZAZNACZDEW.DLG
##35,D,P,,,,yellow/black,,,,POLE:F:data_plat
##30,G,P,,,,magenta,magenta/white,,,POLE:F:TRESC1
##31,D,0,,,,magenta,magenta/white,,,POLE:F:TRANS
##32,D,0,,,,magenta,magenta/white,,,POLE:F:WARTOSC
##33,D,0,,,,magenta,magenta/white,,,POLE:F:vatkontoplat
##36,D,P,,,,yellow/black,,,,POLE:F:waluta
##37,D,P,,,,yellow/black,,,,POLE:F:kwota_dew
 #30                 # #33       # #31            # #35    ##32         #      
                                                Dewizy: #36##37         #
//
% TABLICA-AKCJI-PRZELEW-LINIA-ZAZNACZ,TABLICA-AKCJI-PRZELEW-LINIA-ZAZNACZDEW
//"AKCJA-PRZED-WYSWIETLENIEM",PRZELEW-LINIA-LOOK-USTAL-TRANS
% TABLICA-AKCJI-ZAZNACZ-NAGLOWEK0,TABLICA-AKCJI-ZAZNACZ-NAGLOWEK1,TABLICA-AKCJI-ZAZNACZ-NAGLOWEK0DEW,TABLICA-AKCJI-ZAZNACZ-NAGLOWEK1DEW,TABLICA-AKCJI-PLC_ZAZNACZ-NAGLOWEK0,TABLICA-AKCJI-PLC_ZAZNACZ-NAGLOWEK1,TABLICA-AKCJI-PLC_ZAZNACZ-NAGLOWEK0DEW,TABLICA-AKCJI-PLC_ZAZNACZ-NAGLOWEK1DEW
"AKCJA-PRZED-WYSWIETLENIEM",PRZELEW-ZAZNACZ-NAGLOWEK-KOLOR
"AKCJA-PRZED-WYKONYWANIEM",PRZELEW-ZAZNACZ-NAGLOWEK-KOLOR
"AKCJA-BUTTON1",PRZELEW-ZAZNACZ
//
% PRZELEW-ZAZNACZ-NAGLOWEK-KOLOR.ALG
d_string := ""
d_string := "&&blue/white"
if ((rejwezp_s["e:status"] == "wprow") or (rejwezp_s["e:status"] == "autom")) d_string := "&&red/white"
if ((rejwezp_s["e:status"] == "b|l|ad")) d_string := "&&yellow/lred"
exdialogop["ustawkolornorm","65"]
//
//
% DOK-NAGLOWEK.DLG
PRZYCISK_CANCELID = 2
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Ksi|egowanie przelew|ow"
##300,DZ,ADPH,,"Informacja"
##301,DZ,ADPH,,"Dane o dokumencie ksi|egowym"
##400,DZ,ADPH,,"Nag|l|owek dokumentu ksi|egowego"
##401,DZ,ADPH,,"Tre|s|c zapisu"
##402,DZ,ADPH,,"Zapisy"
##210,D,P,,,,,,,,ZMIENNA:D1,date
##211,D,P,,,,,,,,ZMIENNA:D2,date
##212,D,P,,,,,,,,WYRAZENIE:nazwa_ksieg
##213,D,P,,,,,,,,WYRAZENIE:opis_ksieg
##201,0,P,,,,,,,,ZMIENNA:OKRES_KS,DATE
##202,0,P,,,,,,,,ZMIENNA:data_dok_ks,ydate
##215,0,P,,,,,,,,ZMIENNA:opis_dok
##204,0,P,,,,,,,,ZMIENNA:wyciag
##207,0,P,,,,,,,,ZMIENNA:ks_tresc
##205,0,P,,"nie",,,,,,ZMIENNA:ks_strona,,A,1,"N"
##206,0,P,,"tak",,,,,,ZMIENNA:ks_strona,,,1,"T"
##208,0,P,,"nie",,,,,,ZMIENNA:ks_nr,,A,2,"N"
##209,0,P,,"tak",,,,,,ZMIENNA:ks_nr,,,2,"T"
##220,0,P,,"bez sortowania",,,,,,ZMIENNA:ks_sort,,A,3,"0"
##221,0,P,,"Kwoty narastaj|aco",,,,,,ZMIENNA:ks_sort,,,3,"1"
##222,0,P,,"Kwoty malej|aco",,,,,,ZMIENNA:ks_sort,,,3,"2"
##203,D,P,,,,lred&white,lred/magenta&black/white,yellow&white,,ZMIENNA:kontoBANK,string:482
##200,0,P,,,,lred&white,lred/magenta&black/white,yellow&white,,ZMIENNA:DOK_BANK,2001:1

#300   
  Ksi|ega: #212      # #213                           #
  Otwarty okres ksi|egowy: #210    # - #211    #
  Ksi|egowanie przelew|ow z konta bankowego: #203      # 
                                                        #300<
#400
  Symbol dokumentu ksi|egowego.........: #200#
  Zaksi|eguj pod dat|a ksi|egowania......: #201   # 
  Data dokumentu ksi|egowego...........: #202   #
  Opis dokumentu : #215                                #
                                                        #400<
#401
  Do tre|sci dopisz: #204                #
  Dodatkowa tre|s|c : #207                               #
   $$nazwa_kl - nazwa klienta 
   $$trans    - symbol transakcji
   $$tresc    - tre|s|c zapisu
                                                        #401<
#402
  Zamyka|c dekret kontem bankowym ? - #205# #206#
  Numerowa|c zapisy przy wyci|agu ? -  #208# #209#
  Sortowa|c:  #220                 #
             #221                 #
             #222                 #
                                                        #402<

           #1,,ADP,,@3 #          #2,,ADP,,@4 #
//  
//
% DOK-NAGLOWEK-ODL.DLG
PRZYCISK_CANCELID = 2
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wczytanie przelew|ow do dokumentu"
##300,DZ,ADPH,,"Informacja"
##301,DZ,ADPH,,"Dane o dokumencie ksi|egowym"
##210,D,P,,,,,,,,ZMIENNA:D1,date
##211,D,P,,,,,,,,ZMIENNA:D2,date
##212,D,P,,,,,,,,WYRAZENIE:nazwa_ksieg
##213,D,P,,,,,,,,WYRAZENIE:opis_ksieg
##201,0,P,,,,,,,,ZMIENNA:OKRES_KS,DATE
##202,0,P,,,,,,,,ZMIENNA:data_dok_ks,ydate
##204,0,P,,,,,,,,ZMIENNA:wyciag
##207,0,P,,,,,,,,ZMIENNA:ks_tresc
##205,0,P,,"nie",,,,,,ZMIENNA:ks_strona,,A,1,"N"
##206,0,P,,"tak",,,,,,ZMIENNA:ks_strona,,,1,"T"
##208,0,P,,"nie",,,,,,ZMIENNA:ks_nr,,A,2,"N"
##209,0,P,,"tak",,,,,,ZMIENNA:ks_nr,,,2,"T"
##220,0,P,,"bez sortowania",,,,,,ZMIENNA:ks_sort,,A,3,"0"
##221,0,P,,"Kwoty narastaj|aco",,,,,,ZMIENNA:ks_sort,,,3,"1"
##222,0,P,,"Kwoty malej|aco",,,,,,ZMIENNA:ks_sort,,,3,"2"
##203,D,C,,,,lred&white,lred/magenta&black/white,yellow&white,,ZMIENNA:kontoBANK,string:482
##200,D,C,,,,lred&white,lred/magenta&black/white,yellow&white,,ZMIENNA:DOK_BANK
#300   
  Ksi|ega #212      # #213                            # 
  Otwarty okres ksi|egowy #210    # - #211    #
  Ksi|egowanie przelew|ow z konta bankowego #203      # 
                                                       #300<
#301

 Symbol dokumentu ksi|egowego.........: #200#
 Zaksi|eguj pod dat|a ksi|egowania......: #201   # 
 Data dokumentu ksi|egowego...........: #202   #

 Do tre|sci dokumentu dopisz 
 podany numer wyciagu bankowego: #204                #
 Dodatkowa tre|s|c: #207                               #
   $$nazwa_kl - nazwa klienta 
   $$trans    - symbol transakcji
   $$tresc    - tre|s|c zapisu

 Zamyka|c dekret kontem bankowym ? - #205# #206#
 Numerowa|c zapisy przy wyci|agu ? -  #208# #209#
 Sortowa|c:  #220                 #
            #221                 #
            #222                 #
                                                       #301<

         #1,,ADP,,@3 #          #2,,ADP,,@4 #
//  
% TABLICA-AKCJI-DOK-NAGLOWEK,TABLICA-AKCJI-DOK-NAGLOWEK-ODL
"AKCJA-PRZED-WYSWIETLENIEM",DOK-PRZED
"AKCJA-PO-POLU201",DOK-OKRES
"AKCJA-PO-POLU203",DOK-KONTO
"AKCJA-PO-POLU200",DOK-DOK
"AKCJA-BUTTON1",DOK-AKCEPTUJESZ
"AKCJA-BUTTON2",DOK-REZYGNUJESZ
% DOK-OKRES.ALG
  A_OK := .T.
  IF (NOT (OKRES_KS = '')) GOTO DALEJ
  OkAlert["Podaj okres ksi|egowy w dokumencie !"]
  a_ok := .N.
  DALEJ:
% DOK-DOK.ALG
  A_OK := .T.
  IF (NOT (DOK_BANK = "")) GOTO DALEJ
  OkAlert["Wprowad|x symbol dokumentu ksi|egowego !"]
  a_ok := .N.
  dalej:
% DOK-PRZED.ALG
  exdialogop["pozycjaniewprowadzana","200"]
  if (DOK_BANK == "") exdialogop["pozycjawprowadzana","200"]
  RejOp["X:OtworzRejSprawdz","GLOB.TMP"]
  RejOp["X:WezPierwszyRek",""]
  d1 := RejWezP_D["X:data1"]
  d2 := RejWezP_D["X:data2"]
  OKRES_KS := RejWezP_D["X:okres"]
  RejOp["X:ZamknijRej",""]
  if (data_dok_ks = '') data_dok_ks := d_dzisiaj
  ExDialogOp["IdzDoPozycji","201"]
  CallAlg["dok-konto"]
//  wyciag := wyciag 
  opis_dok := wyciag+" "+dok_wyciag
//  opis_dok := DOK_BANK+" "+strcut[ks_wyciag,strin["-",ks_wyciag]+1,strlen[ks_wyciag]-strin["-",ks_wyciag]-1]
  EXITALG[0]
//  
% DOK-AKCEPTUJESZ.ALG
  if (not(data_dok_ks = '')) goto dalej0
  if (YesAlert["Brak podanej daty dokumentu.$ Je|zeli nie zostanie podana to $ na kontach nie b|edzie daty zap|laty w rozrachunkach !$ Czy tak ma by|c ?"]) goto dalej0
  ExDialogOp["IdzDoPozycji","202"]
  ExitAlg[0]
  dalej0:
  if (not(dok_bank == "")) goto dalej1
    okalert["Podaj symbol dokumentu ksi|egowego !"]
    ExDialogOp["IdzDoPozycji","200"]
    ExitAlg[0]
  dalej1:
if (not YesAlert["Akceptujesz nag|l|owek dokumentu ?"]) ExitAlg[0]
   ExDialogOp["KoniecWykonywania",""]
   DOK_REZYGNUJESZ := .N.
% DOK-REZYGNUJESZ.ALG
if (YesAlert["Rezygnujesz z polecenia ksi|egowania ?"]) ExDialogOp["KoniecWykonywania",""]
//   ExDialogOp["IdzDoPozycji","101"]
   DOK_REZYGNUJESZ := .T.
// 
% DOK-KONTO.ALG
  a_ok := .T.
  if (not(kontobank = "")) goto dalej00
  a_ok := .N.
  OkAlert["Podaj konto bankowe dla kt|orego wykona|c polecenie ksi|egowania !"]  
  goto koniec
  dalej00:
  IF (not RejOp["X:OtworzRejSprawdz",id_modul+"KONTABANK.RXR"]) GOTO KONIEC
  IF (REJOP["X:ZnajdzRek",kontobank]) goto dalej
    OkAlert["Nie mog|e znale|x|c konta bankowego "+kontobank+" w rejestrze !"]
  goto koniec1
  dalej:
  dok_bank := RejWezP_S["X:dok_bank"]
  dok_wyciag := rejwezp_s["x:wyciag_opis"]
  dok_bank_glob := RejWezP_S["X:konto_glob"]
  dok_zapisy := RejWezP_L["X:zapisy"]
  koniec1:
  RejOp["X:ZamknijRej",""]
  KONIEC:
  EXITALG[0]
// PARAMETRY
% PRZELEW-DEKRET.ALG
  txt_komunikat := "Ksi|egowanie przelew|ow.Prosz|e czeka|c !"
  numlp := 0
  tresc_zapx := ""
  CallAlg["komunikat-work"]
  jest := .N.
  if (not(look)) goto dalej00
  IF (FinnOp["OpenTemp",""]) goto dalej00
  OkAlert["Nie mog|e otworzy|c ksi|egi do ksi|egowania !"]
  goto koniec
  dalej00:
  IF (RejOp["Y:OtworzRejSprawdz",id_modul+"PRZELEW.RJR"]) goto dalej01
  OkAlert["Nie mog|e otworzy|c listy z przelewami !"]
  goto koniec  
  dalej01:
  RejOp["Y:ZmienKluczRej","4"]
  if (RejOp["Y:ZnajdzRek",kontobank+"*T"]) goto dalej02
  OkAlert["Brak zaznaczonych przelew|ow do zaksi|egowania !"]
  goto koniec1
  dalej02:
  IF (RejOp["Z:OtworzRejSprawdz",id_modul+"PRZEZAP.RJR"]) goto dalej03
  OkAlert["Nie mog|e otworzy|c listy z zapisami przelew|ow !"]
  goto koniec1
  dalej03:
  RejOp["Z:ZmienKluczRej","1"]  
  IF (RejOp["X:OtworzRejSprawdz",id_modul+"PRZEZAP1.RJR"]) goto dalej04
  OkAlert["Nie mog|e otworzy|c pliku z zapisami na klasyfikacje !"]
  goto koniec21
  dalej04:
  RejOp["X:ZmienKluczRej","3"]  
  RejOp["C:OtworzRejSprawdz","REJESTRKL.RXR"]
  dalejxx01:
  kurs_data := data_dok_ks
  kurs_waluta := ""
  kurs_tryb := 1
  kurs_kwota := .
//
//
//       sortowanie
//
  if (rejop["0:otworzrejSprawdz","PSORT.TMP"]) goto next_0
    goto koniec22
  next_0:
  RejOp["0:wyczyscrej",""]

  next_00:
  if (not(kontobank == RejWezP_S["Y:konto_przel"])) goto next_02
  if ((RejWezP_S["Y:status"] == status_look) or (RejWezP_S["Y:status"] == status_look1)) goto next_03
  goto next_01
  next_03:
     RejOp["0:dodajrek",""]
     rejwstawp_k["0:dokid",rejwezp_k["y:dokid"]]
     rejwstawp_k["0:kwota",rejwezp_k["y:kwota_przel"]] 
  next_01:
  if (rejop["Y:WezNastepnyRek",""]) goto next_00
  next_02:
  rejop["0:zmienkluczrej","2"]
  if (ks_sort = 0) rejop["0:zmienkluczrej","0"]
  rejop["y:zmienkluczrej","2"]
  if (ks_sort = 0) rejop["0:wezpierwszyrek",""]
  if (ks_sort = 1) rejop["0:wezpierwszyrek",""]
  if (ks_sort = 2) rejop["0:wezostatnirek",""]
//
// ===============     ksiegowanie naglowka dokumentu
  if (not(look)) goto petlaprzelew
  st := ToStr["*#dok_bank#S,'#data_dok_ks#S',,'#okres_ks#S',0,""#opis_dok#S"""]
  FinnLine[st]
//
//
// ----------------------------------------------------------
petlaprzelew:
  if (not(rejop["y:znajdzrek",ToStr["#rejwezp_k[""0:dokid""]#S:0"]])) goto koniec3
//  if (not(kontobank == RejWezP_S["Y:konto_przel"])) goto koniec3
//  if ((RejWezP_S["Y:status"] == status_look) or (RejWezP_S["Y:status"] == status_look1)) goto dalejxx02
//  goto nextprzelew
// ----------------------------------------------------------
//
//
  dalejxx02:
  jest := .T.
  konto_klient := RejWezP_S["Y:vatkontoplat"]
  klient := RejWezP_S["Y:s_klient"]
  dokid := RejwezP_K["Y:dokid"]
  dokid_txt := ToStr["#dokid#S"]
//
  if (RejOp["Z:ZnajdzRek",dokid_txt]) goto dalej10
  OkAlert["Brak zapis|ow w przelewie !"]
  goto nextprzelew
  dalej10:
  petlazapis:
  if (dokid = RejWezP_K["Z:dokidzap"]) goto dalej11
  goto nextprzelew
  dalej11:
//  ================= zmienne
    konto_klientx := "" 
    konto_klientx := RejWezP_S["Z:vatkontoplat"]
    if (konto_klient = "") konto_klientx := RejWezP_S["Z:vatkontoplat"]
    if (not(konto_klient = konto_klientx)) konto_klient := konto_klientx
    kwota := RejWezP_K["Z:wartosc"]
    if (kwota = 0) goto nextzapis
    tresc1 := RejWezP_S["Z:tresc1"]
    trans := RejWezP_S["Z:trans"]
    if (trans = "") trans := "przelew"
//
    if (not(konto_klient = "")) goto dalej001
    OkALert["W przelewie dla klienta o symbolu "+klient+",$ brak konta z planu kont !"]
    if (not(YesAlert["Czy ksi|egowa|c na konto domy|slne:"+dok_bank_glob+" ?"])) goto nextzapis
    if (not(dok_bank_glob = "")) goto dalej0010
    OkALert["Konto domy|slne nie jest zdefiniowane w rejestrze kont bankowych !"]
    goto nextzapis    
    dalej0010:
    konto_klient := dok_bank_glob
    dalej001:
    CallAlg["plan-klient-x"]
    ExDialogOp["WyswietlPozycje","111"]
    char := ""
    if (rozr) char := "R" 
    if (rozl) char := char+"L" 
    if (dew) char := char+"D"
    if (not(dew)) goto skipnodew
    kwota_dew := RejWezP_K["Z:kwota_dew"]
    kurs_waluta := RejWezP_S["Y:waluta"]
    CallAlg["X-WEZ-KURS"]
    if (not(a_ok)) OkAlert["Ksi|egowanie przelewu na koncie dewizowym jest niemo|zliwe. $ Brak kursu z dnia "+kurs_data+" dla waluty "+kurs_waluta+"! "]
    if (not(a_ok)) goto nextzapis
    kwota := Round[(kwota_dew * kurs_kwota) / dewprzelkurs[kurs_waluta],2]
// zapisanie wartosci dewizowych    
// naglowek
   xkwota := Round[(RejWezP_K["Y:kwota_przel_dew"] * kurs_kwota) / DewPrzelKurs[kurs_waluta],2] 
   RejWstawP_D["Y:data_kursu",kurs_data]
   RejWstawP_K["Y:kwota_przel",xkwota]
// zapis
   RejWstawP_D["Z:data_kurs",kurs_data]
   RejWstawP_K["Z:wartosc",kwota]
//    
    skipnodew:
    numlp := numlp +1
//
    wyciagx1 := wyciag +"/"+ToStr["#numlp#S"]
    if (not(ks_nr)) wyciagx1 := wyciag
    tresc_ks := wyciagx1+" "+ks_tresc
    tresc_tmp := trans
    callalg["wstaw_trans_tresc"]
    tresc_tmp := RejWezP_S["Z:tresc1"]
    callalg["wstaw_tresc_tresc"]
    tresc_tmp := rejwezp_s["Y:nazwa_kl1"]
    if (not(rejop["c:znajdzrek",klient])) goto zrob_nazwa_kl
      if (not(pustepole["c:kl_nazwa1"])) tresc_tmp := rejwezp_s["c:kl_nazwa1"]
      if (not(pustepole["c:kl_telex"])) tresc_tmp := rejwezp_s["c:kl_telex"]
    zrob_nazwa_kl:
    callalg["wstaw_nazwa_kl_tresc"]
//  
    Displine[tresc_ks+""]
    konto_ks := kontobank
    if (not(ks_strona)) konto_ks := ""
    st := ToStr["""#tresc_ks#S"",#konto_klient#S,#kwota#S:X,#konto_ks#S,,#char#S,#klient#S,,,,"]
    FinnLine[st]
    RejWstawP_S["Y:status","odloz"]
    if (not(dew)) goto skipnodew1
      st := ToStr["DEWWN = #kwota_dew#S:2,#kurs_waluta#S,#kurs_kwota#S:2,'#kurs_data#S'"]
      FinnLine[st]
    skipnodew1:
    jest := .T.
    data_plat := RejWezP_D["Z:data_plat"]
    if (not(dew)) kwota_dew := 0
    st := ToStr["ROZR = ""#trans#S"",'#data_dok_ks#S',#kwota#S:X,WZ,'#data_plat#S',DAC,#kwota_dew#S:2"]
    if (rozr) FinnLine[st]
// ------------------------------------------
    if (not(rozl)) goto nextzapis
    rozl_txt := "PRZELEW"
    if (RejOp["X:ZnajdzRek",ToStr["#RejWezP_K[""Z:dokidzap""]#S:0"]+"*"+ToStr["#RejWezP_K[""Z:dokidzap1""]#S:0"]]) goto petla_rozl
    st := ToStr["ROZLWN = #kwota#S:X,#rozl_txt#S,"]
    FinnLine[st]
    goto nextzapis    
    petla_rozl:
    if ((RejWezP_K["Z:dokidzap"] = RejWezP_K["X:dokidzap0"]) and (RejWezP_K["Z:dokidzap1"] = RejWezP_K["X:dokidzap1"])) goto dalej000
    goto nextzapis
    dalej000:
    kwota_rozl := RejWezP_K["X:kwota_rzl"]
    if (dew) kwota_rozl := Round[(RejWezP_K["X:kwota_rzl_dew"] * kurs_kwota) / dewprzelkurs[kurs_waluta],2]
    if (dew) RejWstawP_K["X:kwota_rzl",kwota_rozl]
      st := ToStr["ROZLWN = #kwota_rozl#S:X,#RejWezP_S[""X:konto_rzl""]#S,"]
      FinnLine[st]
    if (RejOp["X:WezNastepnyRek",""]) goto petla_rozl
// ------------------------------------------
  nextzapis:
  if (RejOp["Z:WezNastepnyRek",""]) goto petlazapis
//
//
// ----------------------------------------------------------
  nextprzelew:
  czyx := .N.
  if (ks_sort = 0) czyx := rejop["0:wezNastepnyrek",""]
  if (ks_sort = 1) czyx := rejop["0:wezNastepnyrek",""]
  if (ks_sort = 2) czyx := rejop["0:wezpoprzednirek",""]
  if (czyx) goto petlaprzelew
//if (RejOp["Y:WezNastepnyRek",""]) goto petlaprzelew
// ----------------------------------------------------------
//
//
  if (not(look)) goto koniec2
  koniec3:
  if (not(look)) goto koniec2
  if (jest) FinnOp["DokOdl",""]
//  SysAlg["ZwolnijPamiec"]
  koniec2:
  if (not(jest)) OkAlert["Brak danych do zaksi|egowania !"]
  koniec22:
  RejOp["0:Zamknijrej",""]
  RejOp["c:zamknijrej",""]
  RejOp["X:ZamknijRej",""]
  koniec21:
  RejOp["Z:ZamknijRej",""]
  koniec1:
  RejOp["Y:ZamknijRej",""]
  koniec:
  ExDialogOp["UsunDialog","TEMPDIALOG"]
// 
//
// -------------------------------------------------------------------------
% ZMIANA-PARAM-PRZELEW.ALG
// konwersja nowych przel
//
  wersja := ""
  id_modul := ""
  CallAlg["konwersja"]
  firma_nip := ""
  firma_regon := ""
  firma_1 := ""
  firma_2 := ""
  firma_3 := ""
  firma_4 := ""
  kontrola := .N.
  CallAlg["OTWORZ-PARAM-PRZELEW"]
  ExDialogOp["IdzDoDialogu","PARAM-PRZELEW"]
  CallAlg["ZAMKNIJ-PARAM-PRZELEW"]
//
% OTWORZ-PARAM-PRZELEW.ALG
  RejOp["X:OtworzRejSprawdz","PARAMPRZELEW.RJR"]
  if (RejOp["X:WezPierwszyRek",""]) goto koniec
  RejOp["X:DodajRek",""]
  koniec:
  RejWstawP_S["X:wersja",wersja]
//
  kontobank := ""
  menu_gen_bank := "Z"
  metoda_gen_bank := 0
  klucz_gen_bank := 0
  znak_gen := .T.
  ksiega_old_gen := ""
  ksiega_act_gen := ""
  odloz_gen := .N.
  zaplaty_gen := .N.
  callsl["PRZELEWY->daj_konto_prl"]
  callsl["PRZELEWY->daj_menu_gen_prl"]
  callsl["PRZELEWY->daj_metoda_gen_prl"]
  callsl["PRZELEWY->daj_klucz_gen_prl"]
  callsl["PRZELEWY->daj_znak_gen_prl"]
  callsl["PRZELEWY->daj_odloz_gen_prl"]
  callsl["PRZELEWY->daj_zaplaty_gen_prl"]
  CallSl["PRZELEWY->daj_ksiega_old_gen"]
  RejWstawP_S["X:wersja",kontobank]
// 
  CallAlg["PARAM-DANE-GLOBAL"]
  ExitAlg[0]
% ZAMKNIJ-PARAM-PRZELEW.ALG
  kontobank := rejwezp_s["X:konto"]
  callsl["PRZELEWY->pisz_konto_prl"]  
  callsl["PRZELEWY->pisz_menu_gen_prl"]  
  callsl["PRZELEWY->pisz_metoda_gen_prl"]  
  callsl["PRZELEWY->pisz_klucz_gen_prl"]  
  callsl["PRZELEWY->pisz_znak_gen_prl"]  
  callsl["PRZELEWY->pisz_odloz_gen_prl"]  
  callsl["PRZELEWY->pisz_zaplaty_gen_prl"]  
  callsl["PRZELEWY->pisz_ksiega_old_gen"]  
  RejOp["X:ZamknijRej",""]
//
% TABLICA-AKCJI-PARAM-PRZELEW
"AKCJA-BUTTON0",PARAM-PRZELEW-AKCEPTUJESZ
"AKCJA-BUTTON2",PARAM-PRZELEW-DANE
//
% PARAM-PRZELEW-AKCEPTUJESZ.ALG
  if (not RejOp["X:ZmienionyRek",""]) goto koniec
  if (not YesAlert["Akceptujesz zmiany ?"]) ExitAlg[0]
  RejOp["X:ZapiszRek",""]
  koniec:
  ExDialogOp["KoniecWykonywania",""]
% PARAM-PRZELEW-DANE.ALG
  FinnMenuFunkcja[99,""]
  CallAlg["PARAM-DANE-GLOBAL"]
  ExDialogOp["WyswietlPozycje","100"]
//
% GEN-PARAM-KSIEGI.ALG
  d_string := ""
  d_old := ksiega_old_gen
  d_string := WybierzFinn["Ksiegozbior"]
  if (d_string = "") d_string := d_old
//
% TABLICA-AKCJI-PARAM-PRZELEW-XXX
"AKCJA-F2-POLE68",GEN-PARAM-KSIEGI
//
% PARAM-PRZELEW-XXX.DLG
##300,DZ,ADPH,,"Dane do generatora:",,,,,&&white/blue
##200,DZ,ADPH,,"Dane u|zytkownika:",,,,,&&white/blue
##201,DZ,ADPH,,"Parametry startowe:",,,,,&&white/blue
##40,D,P,,,,,,,,ZMIENNA:firma_1
##41,D,P,,,,,,,,ZMIENNA:firma_2
##42,D,P,,,,,,,,ZMIENNA:firma_3
##43,D,P,,,,,,,,ZMIENNA:firma_4
##44,0,ACPH,,"Konto",,,,,,POLE:X:konto
##45,0,ACPH,,"Tre|s|c dla zapisu",,,,,,POLE:X:tresc,string
##50,0,P,,"kontrolowa|c NKB",,,,,,POLE:X:kontrola,,A,0,"T"
##51,0,P,,"nie kontrolowa|c NKB",,,,,,POLE:X:kontrola,,,0,"N"
##60,0,P,,"zaznaczana",,,,,,ZMIENNA:menu_gen_bank,,A,1,"Z"
##61,0,P,,"niezaznaczana",,,,,,ZMIENNA:menu_gen_bank,,,1,""
##62,0,0,,"saldem",,&&lblue,,,,ZMIENNA:metoda_gen_bank,,A,2,0
##63,0,0,,"r|o|znic|a",,&&lblue,,,,ZMIENNA:metoda_gen_bank,,,2,1
##79,0,0,,"odloz",,&&lblue,,,,ZMIENNA:odloz_gen,,0,5,T
##80,0,P,,,,,,,,ZMIENNA:odloz_gen,,O,79,N
##81,0,0,,"Zap",,&&lblue,,,,ZMIENNA:zaplaty_gen,,0,6,T
##82,0,P,,,,,,,,ZMIENNA:zaplaty_gen,,O,81,N
##64,0,P,,"konto+transakcja",,,,,,ZMIENNA:klucz_gen_bank,,A,3,4
##65,0,P,,"symbol+transakcja",,,,,,ZMIENNA:klucz_gen_bank,,,3,10
##69,0,P,,"konto+termin",,,,,,ZMIENNA:klucz_gen_bank,,,3,11
##70,0,P,,"symbol+termin",,,,,,ZMIENNA:klucz_gen_bank,,,3,12
##66,0,P,,"zaznaczone",,,,,,ZMIENNA:znak_gen,,A,4,"T"
##67,0,P,,"nie zaznaczone",,,,,,ZMIENNA:znak_gen,,,4,"N"
##68,0,P,,,,,,,,ZMIENNA:ksiega_old_gen
#200
  Nazwa        - #40                                        #
               - #41                                        # 
  Kod i miasto - #42                                        #   
  Adres        - #43                                        #
                                                             #200<
#201

  #44         #  #45                                       #
                                       
                                                             #201<
  Kontrola NKB: #50                # #51                 #   
  
#300  
  Lista generatora:  Sortowanie :          Spos|ob liczenia :
  #60            #   #64               #   #62     ##63     #
  #61            #   #65               #   Dolicz ze statusem
                     #69               #              #79   #
                     #70               #
                                        
  Dane wyszukane:    Ksi|ega stary rok:     Dolicz z zapisu
  #66            #   #68          #        ksi|egowego   #81 #
  #67            #                      
  
                                                             #300<

//  
% PARAM-PRZELEW.DLG
PRZYCISK_CANCELID = 0
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Ustawienia domy|slne do modu|lu przelew|ow"
##200,DT,0,,,,&&blue/lwhite,&&blue/lwhite,&&blue/lwhite,&&blue/lwhite
##0,,0,,@3,,&&blue/lwhite,&&lwhite/blue
##1,,0,,@4,,&&blue/lwhite,&&lwhite/blue
##2,,0,,"Zmie|n dane u|zytkownika",,&&blue/lwhite,&&lwhite/blue
##100,0,ACP,,,,lwhite/blue,lwhite/red&black/white,white/blue,,DIALOG:PARAM-PRZELEW-XXX

#200  #0        #     #1        #     #2                   #   #200<

 #100




 
 

 

 
 
 


 
 





                                                              #
//
// --------------------------------------------------------------------------
% LOOK-KONTABANK-PRZELEW.ALG
// konwersja dla nowych
  CallAlg["konwersja"]
  id_modul := ""
  CallAlg["LOOK-KONTABANK-XXX"]
% LOOK-KONTABANK-PLACE.ALG
// konwersja dla nowych
  CallAlg["konwersja"]
  id_modul := "PLC_"
  CallAlg["LOOK-KONTABANK-XXX"]
//
% LOOK-KONTABANK-XXX.ALG
//
  if (RejOp["OtworzRejSprawdz",id_modul+"KONTABANK.RXR"]) GOTO DALEJ
  OkAlert["Nie mog|e otworzy|c listy z kontami bankowymi !"]
  ExitAlg[0]
  dalej:
  RejOp["WywolajMenu","1"]
  RejOp["ZamknijRej",""]
//
% LOOK-KLPLUS.ALG
  CallAlg["konwersja"]
  if (RejOp["X:OtworzRejSprawdz","KLPLUS.RXR"]) GOTO DALEJ
  OkAlert["Nie mog|e otworzy|c listy !"]
  ExitAlg[0]
  dalej:
  RejOp["X:WywolajMenu","1"]
  RejOp["X:ZamknijRej",""]
//
% PRZELEW-NAPLIK-MODEM.ALG
  if (look) goto dalej
  OkAlert["Funkcja podczas wprowadzania danych jest niedost|epna !"]
  ExitAlg[0]
  dalej:
  a_ok := .N.
  if (modem) goto dalej0
  OkAlert["Konto bankowe o symbolu "+kontobank+" nie jest zaznaczone w rejestrze$ jako mo|zliwy do wysy|lania na plik !"]
  ExitAlg[0]
  dalej0:
  if (not(formatmodem = "")) goto dalej01
  OkAlert["Konto bankowe o symbolu "+kontobank+" nie ma podanego formatu emisji danych !"]
  ExitAlg[0]  
  dalej01:
  
  if (not(exdialogop["pusteokno","100"])) goto dalej011
    okalert["Brak danych do wysy|lki !"]
    ExitAlg[0]
  dalej011:
//
  wersja_emisji := .N.
  if (not(rejwezp_s["E:waluta"] == "PLN")) wersja_emisji := .T.
  if (pustepole["E:waluta"]) wersja_emisji := .N.
  
  CallAlg["PARAM-DANE-GLOBAL"]
  txt_komunikat := "Przygotowanie danych.Prosz|e czeka|c !"
  CallAlg["komunikat-work"]
  IF (RejOp["Y:OtworzRejSprawdz",id_modul+"PRZELEW.RJR"]) goto dalej02
  OkAlert["Nie mog|e otworzy|c listy z przelewami !"]
  goto koniec  
  dalej02:
  RejOp["Y:ZmienKluczRej","4"]
  if (RejOp["Y:ZnajdzRek",kontobank+"*T"]) goto dalej03
  OkAlert["Brak zaznaczonych danych !"]
  goto koniec2
  dalej03:
  IF (RejOp["Z:OtworzRejSprawdz",id_modul+"PRZEZAP.RJR"]) goto dalej04
  OkAlert["Nie mog|e otworzy|c listy z zapisami przelew|ow !"]
  goto koniec1  
  dalej04:
  RejOp["Z:ZmienKluczRej","1"]  
  rejop["EZ:Zmienkluczrej","1"]
  RejOp["EZ:wezpierwszyrek",""]
//
  data_przelew := d_dzisiaj
  data_rezygnujesz := .N.
  wersja_emisji := .N.
  data_emisji := .T.
  osoba_p := os_ksieg
  ExDialogOp["IdzDoDialogu",id_modul+"PODAJ-DATA-PRZELEW"]
  if (data_rezygnujesz) goto koniec1
  break_plik := .N.
  break_emisja := .N.
  kropa := StrIn[".",formatmodem]
  format := ""
  format := StrCut[formatmodem,0,kropa]
  if (not(format="defcom")) goto nodefcom
    IdzDowydruku["przelewy\hb\"+format+".kl",""]
    RejOp["Y:ZnajdzRek",kontobank+"*T"]
    RejOp["EZ:wezpierwszyrek",""]
  nodefcom:  
  RejOp["Y:ustawrekpos",tostr["#rejwezp_k[""EZ:i_rpos""]#S:0"]]
  RejOp["Y:ZnajdzRek",kontobank+"*T"]
  program_nazwa :=  ""
  IdzDowydruku["przelewy\hb\emisja_danych.exp",""]
  if (break_emisja) OkAlert["B|l|ad przy tworzeniu pliku ! $ B|l|edne przelewy zosta|ly okre|slone statusem 'b|l|ad' !!!"]
  if (not(break_plik)) OkAlert["Utworzono plik o nazwie "+formatplik+" $na katalogu "+sciezka+"$ Uruchom program HOME BANKING(modu|l bankowy) !i wczytaj wys|lane dane. $ $ $ UWAGA !!!$ Ponowne uruchomienie emisji $ NADPISZE wys|lane dane !"]
  CallAlg["wykonaj-programy"]
  koniec1:
  RejOp["Z:ZamknijRej",""]
  koniec2:
  RejOp["Y:ZamknijRej",""]
  koniec:
  ExDialogOp["UsunDialog","TEMPDIALOG"]
  CallAlg["przelew-zmiana-statusu"]
  ExDialogOp["WyswietlPozycje","100"]
  rejop["EZ:Zmienkluczrej","2"]
  a_ok := .T.
  ExitAlg[0]
//
% PRZELEW-ZAZNACZONE-WYDRUK.ALG
  IdzDoWydruku["przelewy\drukuj_seria.prn",""]
  
% TMP_PRZELEW-ZAZNACZONE-ZESTAWIENIE.ALG
  status_look := "wprow"
  status_look1 := "autom"
  callalg["PRZELEW-ZAZNACZONE-ZESTAWIENIE"]
//  
% PRZELEW-ZAZNACZONE-ZESTAWIENIE.ALG
  kontrahent := ""
  osoba_p := os_ksieg
  typ_prl := ""
  ExDialogOp["IdzDoDialogu",id_modul+"DRUK-ZEST-ZAZNACZONE"]
//
% TABLICA-AKCJI-DRUK-ZEST-ZAZNACZONE,TABLICA-AKCJI-PLC_DRUK-ZEST-ZAZNACZONE,TABLICA-AKCJI-TMP_DRUK-ZEST-ZAZNACZONE
"AKCJA-PRZED-WYSWIETLENIEM",ZDRUK-PRZED
"AKCJA-F2-POLE26",WYBOR-TYPPRL-RXR
"AKCJA-F2-POLE27",PRL-OSOBA-WYBOR
"AKCJA-BUTTON10",ZDRUK-AKCEPTUJESZ
"AKCJA-BUTTON11",ZDRUK-REZYGNUJESZ
% ZDRUK-PRZED.ALG
  dat_naglowki := .T.
  naglowki := .T.
  priorytet := ""
% ZDRUK-AKCEPTUJESZ.ALG
   if (not(osoba_p = "")) goto dalej01
    if (yesalert["Operacja wykonywana b|edzie na wszystkie przelewy ! $ Czy tak ma by|c ?"]) goto dalej01
   dalej01:
  if (id_modul = "") IdzDowydruku["przelewy\zestawienie_zprzelew.prn",""]
  if (id_modul == "PLC_") IdzDowydruku["przelewy\place_zestawienie_zprzelew.prn",""]
  if (id_modul = "TMP_") IdzDowydruku["przelewy\zestawienie_zprzelew.prn",""]
  ExDialogOp["KoniecWykonywania",""]
% ZDRUK-REZYGNUJESZ.ALG
  IF (YesAlert["Rezygnujesz z wykonania raportu !"]) ExDialogOp["KoniecWykonywania",""]
//
% DRUK-ZEST-ZAZNACZONE.DLG
PRZYCISK_CANCELID = 11
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Raport z zaznaczonych przelew|ow"
##201,DZ,ADPH,,"Drukuj:"
##202,DZ,ADPH,,"Informacja"
##21,D,P,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:kontobank
##22,D,P,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:nazwabank
##23,D,P,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:status_look,dic:52
##230,D,P,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:status_look1,dic:52
##25,0,P,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:priorytet,dic:96
##24,0,P,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:kontrahent,string:848
##26,0,P,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:typ_prl
##27,0,P,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:osoba_p
##13,0,P,,"tylko nag|l|owki",,,,,,ZMIENNA:NAGLOWKI,,A,1,T
##14,0,P,,"z zapisami",,,,,,ZMIENNA:NAGLOWKI,,,1,N

#202                       
 Przelewy o statusie - #23   # i #230  #
 Z konta bankowego   - #21            #
                       #22                   #
                                               #202<

#201  
 O priorytecie   <F2>: #25# 
 Dla kontrahenta <F2>: #24            # 
 Typ przelewu    <F2>: #26            # 
 Dla osoby       <F2>: #27            # 
                   Raport drukuj: 
                    #13              #
                    #14              #        
                                              #201<

         #10,,ADP,,@3#     #11,,ADP,,@4#   
//
% TMP_DRUK-ZEST-ZAZNACZONE.DLG
PRZYCISK_CANCELID = 11
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Raport z zaznaczonych przelew|ow tymczasowych"
##201,DZ,ADPH,,"Drukuj:"
##202,DZ,ADPH,,"Informacja"
##21,D,P,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:kontobank
##22,D,P,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:nazwabank
##23,D,P,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:status_look,dic:52
##230,D,P,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:status_look1,dic:52
##25,0,P,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:priorytet,dic:96
##24,0,P,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:kontrahent,string:848
##26,0,P,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:typ_prl
##27,0,P,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:osoba_p
##13,0,P,,"tylko nag|l|owki",,,,,,ZMIENNA:NAGLOWKI,,A,1,T
##14,0,P,,"z zapisami",,,,,,ZMIENNA:NAGLOWKI,,,1,N

#202                       
 Przelewy o statusie - #23   # i #230  #
 Z konta bankowego   - #21            #
                       #22                   #
                                               #202<
#201  
 O priorytecie   <F2>: #25# 
 Dla kontrahenta <F2>: #24            # 
 Typ przelewu    <F2>: #26            # 
                   Raport drukuj: 
                    #13              #
                    #14              #        
                                               #201<

         #10,,ADP,,@3#     #11,,ADP,,@4#   
//
% PLC_DRUK-ZEST-ZAZNACZONE.DLG
PRZYCISK_CANCELID = 11
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Raport z zaznaczonych przelew|ow"
##201,DZ,ADPH,,"Drukuj:"
##202,DZ,ADPH,,"Informacja"
##21,D,P,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:kontobank
##22,D,P,,,,lblue&white,red/magenta&black/white,lblue&white,,ZMIENNA:nazwabank
##23,D,P,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:status_look,dic:52
##230,D,P,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:status_look1,dic:52
##24,0,P,,,,yellow&white,red/magenta&black/white,lblue&white,,ZMIENNA:kontrahent,string:848
##13,0,P,,"tylko nag|l|owki",,,,,,ZMIENNA:NAGLOWKI,,A,1,T
##14,0,P,,"z zapisami",,,,,,ZMIENNA:NAGLOWKI,,,1,N

#202                       
 Przelewy o statusie - #23   # i #230  #
 Z konta bankowego   - #21            #
                       #22                   #
                                               #202<
#201  
 Dla kontrahenta <F2>: #24            # 
                   Raport drukuj: 
                    #13              #
                    #14              #         #201


         #10,,ADP,,@3#     #11,,ADP,,@4#   
//
//
% CIECIE-ZNAKU.ALG
//
// ALGORTM DO WYCINANIA ZNAKOW Z TEKSTOW
// DO EMISJI DANYCH NA PLIKI TEKSTOWE
// ZMIENNA := TEKST I ZNAK (WEJSCIOWE)
// ZMIENNA := TEKST (WYJSCIE PO WYCIECIU)
//
//
tekst_temp := tekst
petla:
temp1 := ""
temp2 := ""
numergdzie := .
numergdzie := StrIn[znak,tekst_temp]
if (numergdzie = -1) goto koniec
  dlugosc := StrLen[tekst_temp]
  temp1 := StrCut[tekst_temp,0,numergdzie]
  temp2 := StrCut[tekst_temp,numergdzie+1,dlugosc-numergdzie]
  tekst_temp := temp1+temp2
goto petla
koniec:
tekst := tekst_temp
ExitAlg[0]
//
// =======================================================
//
// ALGORYTMY DLA KONWERSJI PLIKOW
//
% KONWERSJA-X.ALG
  id_modul := ""
  rezygnujesz_konw := .N.
  CallAlg["przenies-nowa"]
  if (rezygnujesz_konw) ExitAlg[0]
  CallAlg["konwersja-paramprzelew"]
  CallAlg["konwersja-kontabank"]  
  id_modul := "PLC_"
  CallAlg["konwersja-kontabank"]  
  CallAlg["konwersja-przelew"]
  CallAlg["konwersja-przelew-zapisy"]
  CallAlg["konwersja-przelew-zapisy1"]
  CallAlg["konwersja-klplus"]
//
  id_modul := ""
  CallAlg["konwersja-przelew-zapisy-kontrahent"]
//
//
% USTAL-WERSJE-PRZEL.ALG
  if (not(RejOp["V:OtworzRejSprawdz","PARAMPRZELEW.RJR"])) ExitAlg[0]
  if (RejOp["V:WezPierwszyRek",""]) goto dalej0
  RejOp["V:DodajRek",""]
  wersja_old := wersja
  goto dalej1
  dalej0:
  if (not(RejOp["v:SprawdzPole","wersja"])) goto koniec1
  wersja_old := RejWezP_S["V:wersja"]
  dalej1:
  RejWstawP_S["V:wersja",wersja]
  koniec1:
  RejOp["V:ZamknijRej",""]
  ExitAlg[0]
//
% KONWERSJA-PARAMPRZELEW.ALG
  if (RejOp["V:OtworzRejSprawdz","PARAMPRZELEW.RJR"]) goto dalej001
  okalert["Nie mog|e otworzy|c parametr|ow modu|lu przelew|ow !"]
  ExitAlg[0]
  dalej001:
  if (not RejOp["y:OtworzRejTemp","PARAMPRZELEW.RJR"]) goto koniec
//
  txt_komunikat := "Konwersja parametr|ow przelew|ow.Prosz|e czeka|c !"
  CallAlg["komunikat-work"]
  if (not RejOp["v:WezPierwszyRek",""]) goto dalej1
  RejOp["y:DodajRek",""]
  RejOp["v:PrzeniesPola","y:"]
  if (not RejOp["v:SprawdzPole","tresc"]) xRejWstawP_S["y:tresc","Zap|lata"]
  if (not RejOp["v:SprawdzPole","kontrola"]) xRejWstawP_L["y:kontrola",.T.]
  RejOp["y:ZapiszRek",""]
  RejOp["y:KopiujPlikRej","v:"]
  dalej1:
  ExDialogOp["UsunDialog","TEMPDIALOG"]
  ExitAlg[0]
  Koniec:
  RejOp["V:ZamknijRej",""]
  ExitAlg[0]
% KONWERSJA-KONTABANK.ALG
  RejOp["V:OtworzRejSprawdz",id_modul+"KONTABANK.RXR"]
  if (not RejOp["y:OtworzRejTemp",id_modul+"KONTABANK.RXR"]) goto koniec
//
  txt_komunikat := "Konwersja listy kont bankowych.Prosz|e czeka|c !"
  CallAlg["komunikat-work"]
  if (not RejOp["v:WezPierwszyRek",""]) goto dalej1
  petla:
  RejOp["y:DodajRek",""]
  RejOp["v:PrzeniesPola","y:"]
  if (not RejOp["v:SprawdzPole","format_bank"]) xRejWstawP_S["y:format_bank","przelew"]
  IF (not RejOp["V:SprawdzPole","modem"]) xRejWstawP_L["y:modem",.N.]
  RejOp["y:ZapiszRek",""]
  IF (RejOp["v:WezNastepnyRek",""]) goto petla
  RejOp["y:KopiujPlikRej","v:"]
  dalej1:
  ExDialogOp["UsunDialog","TEMPDIALOG"]
  ExitAlg[0]
  Koniec:
  RejOp["V:ZamknijRej",""]
  ExitAlg[0]

% ustal_kontrahent_ko_plan.alg
//  callalgfile["przelewy\\przelewy_ewyciag.sl;przelewy\przelewy_ewyciagi_dekret.sl","prl_ustal_kontrahent_plan"]
  callalgfile["przelewy/przelewy_ewyciagi.sl","prl_ustal_kontrahent_plan"]
  
% KONWERSJA-PRZELEW.ALG
  RejOp["V:OtworzRejSprawdz","PRZELEW.RJR"]
// konwersja
  if (not RejOp["y:OtworzRejTemp","PRZELEW.RJR"]) goto koniec
  txt_komunikat := "Konwersja przelew|ow.Prosz|e czeka|c !"
  CallAlg["komunikat-work"]
  if (not RejOp["v:WezPierwszyRek",""]) goto dalej1
  petla:
  RejOp["y:DodajRek",""]
  RejOp["v:PrzeniesPola","y:"]
  RejOp["y:ZapiszRek",""]
  DispText["."]
  IF (RejOp["v:WezNastepnyRek",""]) goto petla
  RejOp["y:KopiujPlikRej","v:"]
  dalej1:
  ExDialogOp["UsunDialog","TEMPDIALOG"]
  ExitAlg[0]
  Koniec:
  RejOp["V:ZamknijRej",""]
  ExitAlg[0]
% KONWERSJA-PRZELEW-ZAPISY.ALG
  RejOp["V:OtworzRejSprawdz","PRZEZAP.RJR"]
  wykonaj:
// konwersja
//  if (not RejOp["y:OtworzRejTemp","PRZEZAP.RJR"]) goto koniec
//  txt_komunikat := "Konwersja zapis|ow przelew|ow.Prosz|e czeka|c !"
//  CallAlg["komunikat-work"]
//  if (not RejOp["v:WezPierwszyRek",""]) goto dalej1
//  petla:
//  RejOp["y:DodajRek",""]
//  RejOp["v:PrzeniesPola","y:"]
//  RejOp["y:ZapiszRek",""]
//  Disptext["."]
//  IF (RejOp["v:WezNastepnyRek",""]) goto petla
//  RejOp["y:KopiujPlikRej","v:"]
//  dalej1:
//  ExDialogOp["UsunDialog","TEMPDIALOG"]
//  ExitAlg[0]
//  Koniec:
  RejOp["v:ZamknijRej",""]
  ExitAlg[0]
//
% KONWERSJA-PRZELEW-ZAPISY-KONTRAHENT.ALG
  RejOp["V:OtworzRejSprawdz","PRZEZAP.RJR"]
  RejOp["XX:OtworzRejSprawdz","PRZELEW.RJR"]
  rejop["XX:zmienkluczrej","2"]
  wykonaj:
// konwersja
  txt_komunikat := "Konwersja zapis|ow przelew|ow.Prosz|e czeka|c !"
  CallAlg["komunikat-work"]
  if (not RejOp["v:WezPierwszyRek",""]) goto dalej1
  petla:
    id := rejwezp_k["v:dokidzap"]
    kl := ""
    if (not(rejop["xx:znajdzrek",tostr["#id#S:0"]])) goto dalej_go
        kl := rejwezp_s["xx:s_klient"]
    dalej_go:
    rejwstawp_s["v:s_klient",kl]
  Disptext["."]
  IF (RejOp["v:WezNastepnyRek",""]) goto petla
  dalej1:
  ExDialogOp["UsunDialog","TEMPDIALOG"]
  Koniec:
  RejOp["XX:ZamknijRej",""]
  RejOp["v:ZamknijRej",""]
  ExitAlg[0]
% KONWERSJA-PRZELEW-ZAPISY1.ALG
  RejOp["V:OtworzRejSprawdz","PRZEZAP1.RJR"]
  wykonaj:
// konwersja
//  if (not RejOp["y:OtworzRejTemp","PRZEZAP1.RJR"]) goto koniec
//  txt_komunikat := "Konwersja zapis|ow przelew|ow.Prosz|e czeka|c !"
//  CallAlg["komunikat-work"]
//  if (not RejOp["v:WezPierwszyRek",""]) goto dalej1
//  petla:
//  RejOp["y:DodajRek",""]
//  RejOp["v:PrzeniesPola","y:"]
//  RejOp["y:ZapiszRek",""]
//  Disptext["."]
//  IF (RejOp["v:WezNastepnyRek",""]) goto petla
//  RejOp["y:KopiujPlikRej","v:"]
//  dalej1:
//  ExDialogOp["UsunDialog","TEMPDIALOG"]
//  ExitAlg[0]
//  Koniec:
  RejOp["v:ZamknijRej",""]
  ExitAlg[0]
//
% KONWERSJA-KLPLUS.ALG
  RejOp["V:OtworzRejSprawdz","KLPLUS.RXR"]
  if (not RejOp["y:OtworzRejTemp","KLPLUS.RXR"]) goto koniec
//
  txt_komunikat := "Konwersja przelew|ow.Prosz|e czeka|c !"
  CallAlg["komunikat-work"]
  if (not RejOp["v:WezPierwszyRek",""]) goto dalej1
  petla:
  RejOp["y:DodajRek",""]
  RejOp["v:PrzeniesPola","y:"]
  RejOp["y:ZapiszRek",""]
  IF (RejOp["v:WezNastepnyRek",""]) goto petla
  RejOp["y:KopiujPlikRej","v:"]
  dalej1:
  ExDialogOp["UsunDialog","TEMPDIALOG"]
  ExitAlg[0]
  Koniec:
  RejOp["V:ZamknijRej",""]
  ExitAlg[0]
//
//
//
% ZAZNACZ-PRZELEW-DIALOG.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Zaznaczanie/Odznaczanie"
##202,DZ,ADPH,,"Bank:"
##200,DZ,ADPH,,"Zakres dat przelew|ow:"
##201,DZ,ADPH,,"Funkcj|e wykonaj jako:"
##12,D,0,,,,yellow/black&black/white,,,,ZMIENNA:kontobank
##13,D,0,,,,yellow/black&black/white,,,,ZMIENNA:nazwabank
##15,0,ACP,,,,,,,,ZMIENNA:kl_priorytet,dic:96
##16,0,ACP,,,,,,,,ZMIENNA:typ_prl
##17,0,ACP,,,,,,,,ZMIENNA:osoba_p
##10,0,ACP,,,,,,,,ZMIENNA:data1,ydate
##11,0,ACP,,,,,,,,ZMIENNA:data2,ydate
##50,0,P,,"zaznaczanie",,,,,,ZMIENNA:logi,,A,1,"T"
##51,0,P,,"odznaczanie",,,,,,ZMIENNA:logi,,,1,"N"
#202
  #12         # - #13                        #
                                               #202<

 Priorytet kontrahenta <F2>: #15 #        


 Typ przelewu          <F2>: #16        # 


 Osoba wystawiaj|aca    <F2>: #17        # 

#200 

     Od dnia #10    #  do dnia #11    #

                                               #200<
 
#201
      #50            #  #51            #
                                               #201<
                            

      #0,,ADP,,@3 #         #1,,ADP,,@4 #    
//   
% PLC_ZAZNACZ-PRZELEW-DIALOG.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Zaznaczanie/Odznaczanie"
##202,DZ,ADPH,,"Bank:"
##200,DZ,ADPH,,"Zakres dat przelew|ow:"
##201,DZ,ADPH,,"Funkcj|e wykonaj jako:"
##12,D,0,,,,yellow/black&black/white,,,,ZMIENNA:kontobank
##13,D,0,,,,yellow/black&black/white,,,,ZMIENNA:nazwabank
##10,0,ACP,,,,,,,,ZMIENNA:data1,ydate
##11,0,ACP,,,,,,,,ZMIENNA:data2,ydate
##50,0,P,,"zaznaczanie",,,,,,ZMIENNA:logi,,A,1,"T"
##51,0,P,,"odznaczanie",,,,,,ZMIENNA:logi,,,1,"N"
#202
  #12         # - #13                        #
                                               #202<

#200 

     Od dnia #10    #  do dnia #11    #

                                               #200<
 
#201
      #50            #  #51            #
                                               #201<
                            

      #0,,ADP,,@3 #         #1,,ADP,,@4 #    
//   
% TABLICA-AKCJI-ZAZNACZ-PRZELEW-DIALOG,TABLICA-AKCJI-PLC_ZAZNACZ-PRZELEW-DIALOG
"AKCJA-BUTTON0",PRZELEW-ZAZNACZ-WARUNEK-AKCEPTUJESZ
"AKCJA-BUTTON1",PRZELEW-ZAZNACZ-WARUNEK-REZYGNUJESZ
"AKCJA-F2-POLE17",PRL-OSOBA-WYBOR
"AKCJA-F2-POLE16",PRZELEW-ZAZNACZ-WYBOR-TYP
//
% PRZELEW-ZAZNACZ-WYBOR-TYP.ALG
  callalg["WYBOR-TYPPRL-RXR"]
  typ_prl := d_string
% PRZELEW-ZAZNACZ-WARUNEK-AKCEPTUJESZ.ALG
// po wybraniu : akceptujesz
   if (not(osoba_p = "")) goto dalej01
    if (yesalert["Operacja wykonywana b|edzie na wszystkie przelewy ! $ Czy tak ma by|c ?"]) goto dalej01
   dalej01:
   IF ((data1 = '') and (data2 = '')) goto dalej1
   If ((data2 > data1) or (data2 = data1)) goto dalej  
   OkAlert["Druga data w podanym warunku jest mniejsza od pierwszej !"]
   ExDialogOp["IdzDoPOzycji","11"]
   ExitAlg[0]
   dalej:
   if (data2 = '') data2 := data1
   DALEJ1:
   WARUNEK_REZYGNUJESZ := .N.
   ExDialogOp["KoniecWykonywania",""]
   ExitAlg[0]
% PRZELEW-ZAZNACZ-WARUNEK-REZYGNUJESZ.ALG
if (YesAlert["Rezygnujesz z wykonania funkcji ?"]) ExDialogOp["KoniecWykonywania",""]
   WARUNEK_REZYGNUJESZ := .T.
// 
% WYKONAJ-ZAZNACZ.ALG
//
  temp_n := RejWezP_K["E:RejestrRekPos"]
  txt_komunikat := "Zaznaczanie przelew|ow.Prosz|e czeka|c !"
  CallAlg["komunikat-work"]
  RejOp["E:ZmienKluczRej","6"]
  RejOp["E:WezPierwszyRek",""]
  dalej0:
  if (RejWezP_S["E:konto_przel"] == kontobank) goto dalej01
  goto next
  dalej01:
  if (kl_priorytet = "") goto dalej011
    temp_prio := rejwezp_s["e:priorytet_kl"]
    if (temp_prio = "") temp_prio := "06"
    if (temp_prio = kl_priorytet) goto dalej011
    goto next
  dalej011:
  if (typ_prl = "") goto dalej012
    if (typ_prl = rejwezp_s["e:typ_prl"]) goto dalej012
    if (strin[typ_prl,rejwezp_s["e:typ_prl"]] >-1) goto dalej012
    goto next
  dalej012:
  if (osoba_p = "") goto dalej013
    if (osoba_p == rejwezp_s["e:p_osoba"]) goto dalej013
    goto next
  dalej013:
  if ((data1 = '') and (data2 = '')) goto wstaw
  datax := RejWezP_D["E:data_przel"]
  if ((data1 < datax) or (data1 = datax)) goto dalej02
  goto next
  dalej02:  
  if ((data2 > datax) or (data2 = datax)) goto wstaw
  goto next
  wstaw:
  RejWstawP_L["E:zaznacz",logi]
  callalg["przelew-zaznacz-suma"]
  next:
  Disptext["."]
  if (RejOp["E:WezNastepnyRek",""]) goto dalej0
  koniec:
  ExDialogOp["UsunDialog","TEMPDIALOG"]
  temp_t := ToStr["#temp_n#S"]
  RejOp["E:ustawsprawdzrekpos",temp_t]
  ExDialogOp["WyswietlPozycje","100"]
  ExitAlg[0]
//
% PLC_WYKONAJ-ZAZNACZ.ALG
//
  temp_n := RejWezP_K["E:RejestrRekPos"]
  txt_komunikat := "Zaznaczanie przelew|ow.Prosz|e czeka|c !"
  CallAlg["komunikat-work"]
  RejOp["E:ZmienKluczRej","6"]
  RejOp["E:WezPierwszyRek",""]
  dalej0:
  if (RejWezP_S["E:konto_przel"] == kontobank) goto dalej01
  goto next
  dalej01:
  if ((data1 = '') and (data2 = '')) goto wstaw
  datax := RejWezP_D["E:data_przel"]
  if ((data1 < datax) or (data1 = datax)) goto dalej02
  goto next
  dalej02:  
  if ((data2 > datax) or (data2 = datax)) goto wstaw
  goto next
  wstaw:
  RejWstawP_L["E:zaznacz",logi]
  callalg["przelew-zaznacz-suma"]
  next:
  Disptext["."]
  if (RejOp["E:WezNastepnyRek",""]) goto dalej0
  koniec:
  ExDialogOp["UsunDialog","TEMPDIALOG"]
  temp_t := ToStr["#temp_n#S"]
  RejOp["E:ustawsprawdzrekpos",temp_t]
  ExDialogOp["WyswietlPozycje","100"]
  ExitAlg[0]
//
// ===========================================================================
//                            przeniesienie na nowa wersje
// ===========================================================================
% PRZENIES-NOWA.ALG
  if (not RejOp["SprawdzPlikRej","xPARAMPRZELEW.RJR"]) goto koniec
  rezygnujesz_konw := Yesalert["UWAGA !!!$ Nast|api|la zmiana organizacyjna w strukturze $ modu|lu przelew|ow ! $Dla pewno|sci zr|ob kopi|e archiwaln|a. $ Czy rezygnujesz z konwersji ?"]
  if (rezygnujesz_konw) goto koniec
  txt_komunikat := "Konfiguracja nowych przelew|ow.Prosz|e czeka|c !"
  CallAlg["komunikat-work"]
// kopiowanie plikow na katalog PRL
// parametry
  RejOp["V:OtworzRejSprawdz","XPARAMPRZELEW.RJR"]
  RejOp["y:OtworzRejSprawdz","PARAMPRZELEW.RJR"]
  RejOp["v:KopiujPlikRej","y:"]
  DispText[". "]
// kontabankowe
  RejOp["V:OtworzRejSprawdz","XKONTABANK.RXR"]
  RejOp["y:OtworzRejSprawdz",id_modul+"KONTABANK.RXR"]
  RejOp["v:KopiujPlikRej","y:"]
  DispText[". "]
// przelew
  RejOp["V:OtworzRejSprawdz","XPRZELEW.RJR"]
  RejOp["y:OtworzRejSprawdz","PRZELEW.RJR"]
  RejOp["v:KopiujPlikRej","y:"]
  DispText[". "]
// przelew zapisy
  RejOp["V:OtworzRejSprawdz","XPRZEZAP.RJR"]
  RejOp["y:OtworzRejSprawdz","PRZEZAP.RJR"]
  RejOp["v:KopiujPlikRej","y:"]
  DispText[". "]
// 
// usuwanie
//
  RejOp["UsunPlikRej","XPARAMPRZELEW.RJR"]
  DispText["v "]
  RejOp["UsunPlikRej","XKONTABANK.RXR"]
  DispText["v "]
  RejOp["UsunPlikRej","XPRZELEW.RJR"]
  DispText["v "]
  RejOp["UsunPlikRej","XPRZEZAP.RJR"]
  DispText["v "]
  ExDialogOp["UsunDialog","TEMPDIALOG"]
  koniec:
  ExitAlg[0]
//
// ===========================================================================
//  
// ===========================================================================
% WYSTAW-PRZELEW-X.ALG
  byl := .N.
  ilosc_zap := 0
  ilosc_zap_wyst := 0
  modul := "przelew|ow"
  tekst := modul
  nazwarejestru := "PRZELEW.RJR"
  dalej := .N.
  CallAlg["WERSJA-BADANIE"]
  if ((byl) and (dalej)) CallAlg["wystaw-przelew"]
  ExitAlg[0]
//
% WYSTAW-PRZELEW-X-DEW.ALG
  byl := .N.
  ilosc_zap := 0
  ilosc_zap_wyst := 0
  modul := "przelew|ow"
  tekst := modul
  nazwarejestru := "PRZELEW.RJR"
  dalej := .N.
  CallAlg["WERSJA-BADANIE"]
  if ((byl) and (dalej)) CallAlg["wystaw-przelew-dew"]
  ExitAlg[0]
//  
% ZMIANA_KWOTA_PRZECINEK.ALG
// algorytm na zmiane kwoty z kropka na przecinek
//
// zmienna (kwota_tekst) juz okreslona
   dlug := StrLen[kwota_tekst]
   kwota1 := StrCut[kwota_tekst,0,dlug-3]
   kwota2 := strcut[kwota_tekst,dlug-2,2]
   kwota_tekst := ToStr["#kwota1#S,#kwota2#S"]
   ExitAlg[0]
//
% ZNAK_NA_SPACJA.ALG 
// zmienne tekst := string
//         znaczek := string
// obciecia znakow roznych
// i wstawia spacje
  lp := 1
  petla:
  czy := StrIn[znaczek,tekst]
  if (czy = -1) ExitAlg[0]
  temp1 := StrCut[tekst,0,czy]
  temp2 := StrCut[tekst,czy+lp,StrLen[tekst]-czy]
  tekst := temp1+" "+temp2
  goto petla
//
  ExitALg[0]
% ZNAK.ALG 
// zmienne tekst := string
//         znaczek := string
// obciecia znakow roznych
// i wstawia spacje
  lp := 1
  petla:
  czy := StrIn[znaczek,tekst]
  if (czy = -1) ExitAlg[0]
  temp1 := StrCut[tekst,0,czy]
  temp2 := StrCut[tekst,czy+lp,StrLen[tekst]-czy]
  tekst := temp1+temp2
  goto petla
  ExitALg[0]
% ZNAK1.ALG 
// zmienne tekst := string
//         znaczek := string
// zamiana liter polskich na lacinskie
// i wstawia spacje
  lp := 1
  petla:
  czy := StrIn[znaczek,tekst]
  if (czy = -1) ExitAlg[0]
  xx := StrCut[tekst,czy,1]
  znakxx := znaczek2
  if(xx=znaczek) znakxx := znaczek1
  temp1 := StrCut[tekst,0,czy]
  temp2 := StrCut[tekst,czy+lp,StrLen[tekst]-czy]
  tekst := temp1+znakxx +temp2
  goto petla
  ExitALg[0]
//
% ZNAKI.ALG
  callalg["znaki-01"]
  callalg["znaki-02"]
% ZNAKIPL.ALG
  callalg["znaki-01"]
% ZNAKI-01.ALG
// zmienna wczesnie do badania
// tekst := string  
  znaczek := """"
  CallAlg["znak"]
  znaczek := ","
  CallAlg["znak"]
  znaczek := ":"
  CallAlg["znak"]
  znaczek := "*"
  CallAlg["znak"]
  znaczek := ";"
  CallAlg["znak"]
  znaczek := "'"
  CallAlg["znak"]
  znaczek := "`"
  CallAlg["znak"]
  znaczek := "~"
  CallAlg["znak"]
  znaczek := "!"
  CallAlg["znak"]
  znaczek := "+"
  CallAlg["znak"]
  znaczek := "?"
  CallAlg["znak"]
  znaczek := "|"
  CallAlg["znak"]
% ZNAKI-02.ALG
exitalg[0]
// polskie litery
  znaczek := "|z"
  znaczek1 := "z"
  znaczek2 := "Z"
  CallAlg["znak1"]
  znaczek := "|a"
  znaczek1 := "a"
  znaczek2 := "A"
  CallAlg["znak1"]
  znaczek := "|e"
  znaczek1 := "e"
  znaczek2 := "E"
  CallAlg["znak1"]
  znaczek := "|c"
  znaczek1 := "c"
  znaczek2 := "C"
  CallAlg["znak1"]
  znaczek := "|l"
  znaczek1 := "l"
  znaczek2 := "L"
  CallAlg["znak1"]
  znaczek := "|o"
  znaczek1 := "o"
  znaczek2 := "O"
  CallAlg["znak1"]
  znaczek := "|s"
  znaczek1 := "s"
  znaczek2 := "S"
  CallAlg["znak1"]
  znaczek := "|x"
  znaczek1 := "z"
  znaczek2 := "Z"
  CallAlg["znak1"]
  znaczek := "|n"
  znaczek1 := "n"
  znaczek2 := "N"
  CallAlg["znak1"]
ExitAlg[0]  
// ==========================================
% SPRAWDZ-ZAPIS.ALG
// ustalenie czy klient jest klasyfikacyjny
// zwraca a_ok
  a_ok := .T.
  konto_klient := RejWezP_S["A:vatkontoplat"]
  if (konto_klient = "") konto_klient := RejWezP_S["vatkontoplat"]
  if (konto_klient = "") ExitAlg[0]
  CallAlg["plan-klient"]
  ExDialogOp["WyswietlPozycje","111"]
  if (not(rozl)) ExitAlg[0]
  CallAlg["suma-zapisu-rozlicz"]
  ExitAlg[0]
% SUMA-ZAPISU-ROZLICZ.ALG
  A_OK := .N.
  suma := 0
  if (not(RejOp["B:ZnajdzRek",ToStr["#A:dokidzap1#S:0"]])) goto koniec
  petla:
  if (not(B:dokidzap1 = A:dokidzap1)) goto koniec
  if (wer = "ZL") suma := suma + B:kwota_rzl
  if (wer = "DEW") suma := suma + B:kwota_rzl_dew
  if (RejOp["B:WezNastepnyRek",""]) goto petla
  koniec:
  if ((suma = RejWezP_K["A:wartosc"]) and (wer == "ZL")) a_ok := .T.
  if ((suma = RejWezP_K["A:kwota_dew"]) and (wer == "DEW")) a_ok := .T.
  ExitAlg[0]
// ------------------------------------------------------------
% ZAPIS-NA-KONTACH-ROZLICZ-LOOK.ALG
  A_OK := .T.
  CallAlg["SPRAWDZ-ZAPIS"]
  if (rozl) goto dalej0
   OkAlert["Konto "+konto_klient+" nie ma atrybutu $ 'konto do klasyfikacji' !"]
   ExDialogOp["IdzDOPozycji","101"]
   ExitAlg[0]
  dalej0:
  CallAlg["ZAPIS-KONTO-ROZLICZ"]
// ------------------------------------------------------------
% ZAPIS-KONTO-ROZLICZ.ALG
// parametry
//  - rozl_kwota_wejscie (kwota) wartosc wejsciowa
//  - rozl_kwota_jeszcze (kwota) (tmp)
//  - rozl_nazwa_naglowka (string) opis dialogu
//  - rozl_tryb: 0 - akceptujesz (D_POS = 0) i rezygnujesz (D_POS)
//             : 1 - nie mozna zrezygnowac
   if (wer == "ZL") rozl_kwota_wejscie := RejWezP_K["A:wartosc"]
   if (wer == "DEW") rozl_kwota_wejscie := RejWezP_K["A:kwota_dew"]
   rozl_kwota_jeszcze := .
   rozl_nazwa_naglowka := "Rozpisanie klasyfikacji"
   rozl_tryb := 0
   RejOp["X:OtworzRejTemp","KONTARZLTMP.RXR"]
//
// ustalenie czy sa jakies zapisy do klasyfikacji
//
   if (not(RejOp["B:ZnajdzRek",ToStr["#A:dokidzap1#S:0"]])) goto wprowadzenie
   petla:
    if (A:dokidzap1 = B:dokidzap1) goto dalej
    RejOp["X:WezPierwszyRek",""]
   goto wprowadzenie
   dalej:
    RejOp["X:DodajRek",""]
    xRejWstawP_S["X:konto_rzl",RejWezP_S["B:konto_rzl"]]
    if (wer == "ZL") xRejWstawP_K["X:kwota_rzl",RejWezP_K["B:kwota_rzl"]]
    if (wer == "DEW") xRejWstawP_K["X:kwota_rzl",RejWezP_K["B:kwota_rzl_dew"]]
    RejOp["X:ZapiszRek",""]
    if (RejOp["B:WezNastepnyRek",""]) goto petla
   wprowadzenie:
   CallAlg["ZAPIS-KONTO-ROZLICZ-DIALOG"]
   ExDialogOp["IdzDoPozycji","101"]
//
% ZAPIS-KONTO-ROZLICZ-DIALOG.alg
   ExDialogOp["IdzDoDialogu","KONTA-ROZLICZENIOWE"]
   A_OK := .N.
   if (d_pos = 1) goto dalej00
   if ((RejWezP_S["status"] = "wprow") or (RejWezP_S["status"] = "autom") or (RejWezP_S["status"] = "")) goto dalej01
   dalej00:
   RejOp["X:ZamknijRej",""]
   ExitAlg[0]
   dalej01:
//
   if (not(RejOp["X:WezPierwszyRek",""])) goto koniec
// usuniecie poprzednich zapisow i przepisanie nowych
   petla1:
   if (Not(RejOp["B:ZnajdzRek",ToStr["#A:dokidzap1#S:0"]])) goto dalej0
   RejOp["B:UsunRek",""]
   goto petla1
   dalej0:
   RejOp["B:DodajRek",""]
   xRejWstawP_S["B:konto_rzl",RejWezP_S["X:konto_rzl"]]
   if (wer == "ZL") xRejWstawP_K["B:kwota_rzl",RejWezP_K["X:kwota_rzl"]]
   if (wer == "DEW") xRejWstawP_K["B:kwota_rzl_dew",RejWezP_K["X:kwota_rzl"]]
   xRejWstawP_K["B:dokidzap1",RejWezP_K["A:dokidzap1"]]      
   RejOp["B:ZapiszRek",""]
   if (RejOp["X:WezNastepnyRek",""]) goto dalej0
   A_OK := .T.
   koniec:
   RejOp["X:ZamknijRej",""]
   ExitAlg[0]
// ==========================================
% SPRAWDZ-ROZPISANIE-KONT.ALG
  if (Not (RejOp["A:WezPierwszyRek",""])) ExitAlg[0]
  petla: 
  a_ok := .N.
  CallAlg["sprawdz-zapis"]
  if (a_ok) goto dalej
  ExitAlg[0]
  dalej:
  if (RejOp["A:WezNastepnyRek",""]) goto petla
  ExitAlg[0]
// --------------------------------------------------------------
% PARAM-DANE-GLOBAL.ALG
//
  std_firma1 := "<brak danych>"
  std_firma2 := "<brak danych>"
  std_kodpoc := "<brak danych>"
  std_miasto := "<brak danych>"
  std_ulica := "<brak danych>"
  std_dom := "<brak danych>"
  std_lokal := "<brak danych>"
  std_nip := "<brak danych>"
  std_regon := "<brak danych>"
  std_bank1 := "<brak danych>"
  std_bank2 := "<brak danych>"
  std_banknr := "<brak danych>"
  std_tel1 := "<brak danych>"
  std_fax := "<brak danych>"
//
  firma_nip := ""
  firma_regon := ""
  firma_1 := ""
  firma_2 := ""
  firma_3 := ""
  firma_4 := ""
  CallAlg["ODCZYTAJ-DANE-UZYTKOWNIKA"]
//
  firma_nip := std_nip
  firma_regon := std_regon
  firma_1 := std_firma1
  firma_2 := std_firma2
  firma_3 := std_kodpoc+" "+std_miasto
  firma_4 := std_ulica
  if(not(std_dom ="")) firma_4 := firma_4+" " + std_dom
  if(not(std_lokal="")) firma_4 := firma_4+"/" + std_lokal
  if ((firma_1 = "") or (firma_3 = "") or (firma_4 = "")) OkAlert["UWAGA !!!$ $ Brak danych u|zytkownika systemu !$ Wejd|x do funkcji Obs|luga->Administrator-> $ Ustwienia->Dane o firmie $ i uzupe|lnij informacje !"]
// -------------------------------------------------------------- 
// 
% ZALACZNIK-DIALOG-WERSJA.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wersja wydruku za|l|acznika"
##200,DZ,ADPH,,"Drukuj za|lacznik:"
##0,,ADP,,@3
##1,,ADP,,@4
##10,0,P,,"w wersji pierwszej",'O',,,,,ZMIENNA:wersja_zal,,A,1,0
##11,0,P,,"w wersji drugiej",'E',,,,,ZMIENNA:wersja_zal,,,1,1
 
#200
   #10                 #
   #11                 #                   
                              #200<

 #0          #   #1          #
% TABLICA-AKCJI-ZALACZNIK-DIALOG-WERSJA
"AKCJA-BUTTON0",ZALACZNIK-AKCEPTUJESZ
"AKCJA-BUTTON1",ZALACZNIK-REZYGNUJESZ
% ZALACZNIK-REZYGNUJESZ.ALG
  zal_rezygnujesz := .T.
  ExDialogOp["KoniecWykonywania",""]
% ZALACZNIK-AKCEPTUJESZ.ALG
//
  zal_rezygnujesz := .N.
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
% PRZELEW-ZALACZNIK.ALG
  if (not(RejOp["A:PustyRej",""])) goto dalej
    OkAlert["Wprowad|x zapisy do przelewu !"]
    ExitAlg[0]
  dalej:
  wersja_zal := 0
  zal_rezygnujesz := .N.
  ExDialogOp["IdzDoDialogu","ZALACZNIK-DIALOG-WERSJA"]
  if (zal_rezygnujesz) goto koniec
  zalacznik := "przelew"+ToStr["#wersja_zal#S:0"]
  IdzDowydruku["przelewy\zalacznik_"+zalacznik+".prn",""]
  koniec:
  ExitAlg[0]
% USTAL-DATE-FAKTURY.ALG
  data_faktury := ''
  if (A:trans = "") ExitAlg[0]
  konto_klient := RejWezP_S["A:vatkontoplat"]
  if (konto_klient = "")  konto_klient := RejWezP_S["vatkontoplat"]
  if (konto_klient = "") ExitAlg[0]
  rozr := .N.
  CallAlg["plan-klient"]
  if (not(rozr)) ExitAlg[0]
//  if (not(FinnOp["ZnajdzDok",konto_klient])) ExitAlg[0]
  if (not(RozrOp["ZnajdzTra",A:trans])) ExitAlg[0]
  if (not(RozrOp["ToFirstZ",""])) ExitAlg[0]
  petla0:
    if (ZapisWn) goto next0
    if (Zap_Rodz == "Zap") goto next0
    data_faktury := DataZap
    ExitAlg[0]
  next0:
  if (RozrOp["ToNextZ",""]) goto petla0
ExitAlg[0]
//
//---------------------------------------------------------------
// 
//---------------------------------------------------------------
% PLC_PODAJ-DATA-PRZELEW.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"HOME BANKING (Data emisji) (P|lace)"
##200,DZ,ADPH,,"Ustawienia emisji"
##10,B,ACP,,,,,,,,ZMIENNA:data_przelew,ydate
##11,0,ACP,,,,,,,,ZMIENNA:osoba_p
##20,0,P,,"wersja z|lotowa",,,,,,ZMIENNA:wersja_emisji,,A,1,"N"
##21,0,P,,"wersja dewizowa",,,,,,ZMIENNA:wersja_emisji,,,1,"T"
##30,0,P,,"z przelewu",,,,,,ZMIENNA:data_emisji,,A,2,"T"
##31,0,P,,"na dzie|n",,,,,,ZMIENNA:data_emisji,,,2,"N"

 Podaj pod jak|a dat|a wys|la|c zaznaczone 
 przelewy do systemu bankowego (HOME BANKING).


 Na dzie|n - #10    #       #1,,ADP,,@4 #    

 #200

   Przelewy osoby <F2>: #11           #

   Wersja:                   Przyjmij dat|e: 
    #20                  #    #30                  #
    #21                  #    #31                  #
                                                    #200<
//   
% PODAJ-DATA-PRZELEW.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"HOME BANKING (Data emisji)"
##200,DZ,ADPH,,"Ustawienia emisji"
##10,B,ACP,,,,,,,,ZMIENNA:data_przelew,ydate
##11,0,ACP,,,,,,,,ZMIENNA:osoba_p
##20,0,P,,"wersja z|lotowa",,,,,,ZMIENNA:wersja_emisji,,A,1,"N"
##21,0,P,,"wersja dewizowa",,,,,,ZMIENNA:wersja_emisji,,,1,"T"
##30,0,P,,"z przelewu",,,,,,ZMIENNA:data_emisji,,A,2,"T"
##31,0,P,,"na dzie|n",,,,,,ZMIENNA:data_emisji,,,2,"N"

 Podaj pod jak|a dat|a wys|la|c zaznaczone 
 przelewy do systemu bankowego (HOME BANKING).


 Na dzie|n - #10    #       #1,,ADP,,@4 #    

 #200

   Przelewy osoby <F2>: #11           #

   Wersja:                   Przyjmij dat|e: 
    #20                  #    #30                  #
    #21                  #    #31                  #
                                                    #200<
//   
% TABLICA-AKCJI-PODAJ-DATA-PRZELEW,TABLICA-AKCJI-PLC_PODAJ-DATA-PRZELEW
"AKCJA-BUTTON10",PODAJ-DATA-PRZELEW-AKCEPTUJESZ
"AKCJA-F2-POLE11",PRL-OSOBA-WYBOR
"AKCJA-BUTTON1",PODAJ-DATA-PRZELEW-REZYGNUJESZ
% PODAJ-DATA-PRZELEW-AKCEPTUJESZ.ALG
// po wybraniu : akceptujesz
   if (not(osoba_p = "")) goto dalej01
    if (yesalert["Operacja wykonywana b|edzie na wszystkie przelewy ! $ Czy tak ma by|c ?"]) goto dalej01
   dalej01:
   if (not(data_przelew = '')) goto dalej0
     OkAlert["Podaj dat|e !"]
     ExDialogOp["IdzDoPozycji","10"]
     ExitAlg[0]   
   dalej0:
   data_rezygnujesz := .N.
   ExDialogOp["KOniecWykonywania",""]
   ExitAlg[0]
//
% PODAJ-DATA-PRZELEW-REZYGNUJESZ.ALG
   data_rezygnujesz := .T.
   ExDialogOp["KOniecWykonywania",""]
   ExitAlg[0]
//
% GENERUJ-DATE-FAKTURY-TRANS.ALG
// data_faktury zmienna
//
 if (not(RozrOp["ToFirstZ",""])) ExitAlg[0]
 If (not(tr_rodz == "Dos")) ExitAlg[0]
 petla:
   data_faktury := ''
   if (ZapisWn) goto next_zap
   if (zap_rodz == "Zap") goto next_zap
   if (datazap = '') goto next_zap
   data_faktury := datazap
   if (data_faktury = '') goto next_zap
     goto koniec
   next_zap:
 if (RozrOp["ToNextZ",""]) goto petla
 koniec:
 RozrOp["ToFirstZ",""]
 ExitAlg[0]
// =========================================
//
% WYKONAJ-PROGRAMY.ALG
// wykonanie operacji systemowej
 if ((program = "")) goto koniec
// wykonanie programow w petli
 prog2 := program
 pr1:
 if ((StrIn[",",prog2] = -1) and (StrLen[prog2] = 0)) goto koniec
 if (StrIn[",",prog2] = -1) prog1 := prog2
 if (StrIn[",",prog2] = -1) goto pr2
 prog1 := StrCut[prog2,0,StrIn[",",prog2]]
 prog2 := StrCut[prog2,StrIn[",",prog2]+1,StrLen[prog2]-StrIn[",",prog2]]
// wykonanie programow
 pr2:
 WolajSystem[prog1,.T.]
//
 goto koniec
 if (not(StrIn[",",prog2] = -1)) goto pr1
// WolajSystem[prog2,.T.]
//
 koniec:
 ExitAlg[0]
//
// =====================================================
//            numer SWIFT
// =====================================================
% SWIFT-RXR.ALG
  CallAlg["konwersja"]
  RejOp["OtworzRejSprawdz","SWIFT.RXR"]
  RejOp["WywolajMenu","1"]
  RejOp["ZamknijRej",""]
//
//
% SWIFTALGO.XXX
"AKCJA-PRZED-WYSWIETLENIEM-SWIFT-MENU-?.DLG",SWIFT-MENU-START
"AKCJA-PRZED-WYSWIETLENIEM-SWIFT-REKORD-1.DLG",SWIFTREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-SWIFT-REKORD-3.DLG",SWIFTREKORD-DODAJSTART1
"AKCJA-PRZED-WYSWIETLENIEM-SWIFT-REKORD-0.DLG",SWIFTREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-SWIFT-REKORD-2.DLG",SWIFTREKORD-DODAJLOOK
"AKCJA-BUTTON1-SWIFT-REKORD-?.DLG",SWIFTREKORD-AKCEPTUJESZ
//"AKCJA-BUTTON20-SWIFT-MENU-?.DLG",SWIFTMENU-USUN
"AKCJA-BUTTON30-SWIFT-MENU-?.DLG",SWIFT-ZMIANA-KLUCZA
"AKCJA-BUTTON31-SWIFT-MENU-?.DLG",SWIFT-ZMIANA-KLUCZA
"AKCJA-BUTTON40-SWIFT-MENU-?.DLG",SWIFT-WCZYTAJ-PDF
// ---------
// definicja rejestru
// --------
% SWIFT.RXR # opis rejestru
1,1
1
SWIFT # nazwa danych
# 
#
"Powt|orzony symbol numeru swift !"
"Zmieniasz dane o numerze swift ?"
"Dodajesz nowy numer swift ?" 
"Usun|a|c ten numer swift z listy ?" 
"Chcesz doda|c jeszcze jeden numer swift ?" 
"%s - nie ma takiego numeru swift.$Czy chcesz doda|c nowy ?" 
"Nie ma |zadnych numer|ow swift !"
"Rejestr numer|ow siwft jest pusty - wstawiasz pierwszy swift ?"
"Nie ma numeru swift o takim symbolu.$Znale|x|c nast|epny ?"
"%s - nie ma takiego numeru swift !"
SWIFT-WAR
% SWIFT.DBF
0,log,,,,,D          # usuwanie "w miejscu"
1,string,11,,1,,N    # numer swift
2,string,60,,2       # nazwa banku
3,string,20,,3       # miasto
4,string,2,,4        # iso - kod kraju
5,string,20,,5       # kraj
% SWIFT.DIC # slownik do danych o X
"swift_numer",1,Estring
"swift_nazwa",2,Estring
"swift_miasto",3,Estring
"swift_iso",4,Estring
"swift_kraj",5,Estring
% SWIFT-WAR.DIC
"Numer swift banku",1
"Nazwa banku",2
"Miasto banku",3
"Kod iso",4
"Kraj",5
//
// ALGORYTMY
// --------
% SWIFT-ZMIANA-KLUCZA.ALG
  if (SWIFT_klucz = SWIFT_staryklucz) goto koniec
  CallAlg["swift-ustawmenu"]
//%< SWIFT-USTAWMENU.XXX
  ExDialogOp["WyswietlPozycje","100"]
  ExDialogOp["WyswietlPozycje","101"]
  ExDialogOp["WyswietlPozycje","7"]
  koniec:
% SWIFT-USTAWMENU.ALG
  SWIFT_staryklucz := SWIFT_klucz
// klucz sie zmienil 
  if (SWIFT_klucz = 1) swift := "SWIFTMENUNR,,KLUCZ,1"
  if (SWIFT_klucz = 1) swift_naglowek := ToStr["Numer       Nazwa"]
  if (SWIFT_klucz = 2) swift := "SWIFTMENUNAZWA,,KLUCZ,2"
  if (SWIFT_klucz = 2) swift_naglowek := "Nazwa                          Numer "
//  
  ExDialogOp["UstawMenuParam","100:"+swift]
% SWIFT-MENU-START.ALG
  SWIFT_klucz := RejWezP_K["KolejKlucz"]
  SWIFT_naglowek := ToStr["Numer       Nazwa"]
  CallAlg["swift-ustawmenu"]
//
% SWIFTMENU-USUN.ALG
  if (not YesNAlert["Usun|a|c numer "+swift_numer+" z listy ?"]) ExitAlg[0]
  RejOp["UsunRek",""]
  ExDialogOp["UsunRekordzMenu","100"]    
% SWIFTREKORD-AKCEPTUJESZ.ALG   // Opis: button AKCEPTUJESZ podczas dodawania
// ----- sprawdzenie poprawnosci
  if (not (swift_numer = "")) goto dalej1
    OkAlert["Wprowad|x numer swift banku !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
  dalej1:
  if (not (swift_nazwa = "")) goto dalej2
  OkAlert["Wprowad|x nazw|e banku !"]
  ExDialogOp["IdzDoPozycji","11"]
  ExitAlg[0]
  dalej2:
  ExDialogOp["KoniecWykonywania",""]
//
% SWIFTREKORD-DODAJSTART1.ALG 
// wolane przy dodawanie nowego rekordu z pola
%< SWIFTREKORD-DODAJSTART.ALG
  ExDialogOp["PozycjaNieAktywna","10"]
  ExDialogOp["IdzDoPozycji","11"]
//
% SWIFTREKORD-DODAJSTART.ALG 
  ExDialogOp["PozycjaAktywna","10"]
  ExDialogOp["IdzDoPozycji","10"]
//
% SWIFTREKORD-DODAJMODIF.ALG 
  ExDialogOp["PozycjaNieAktywna","10"]
  ExDialogOp["IdzDoPozycji","11"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
//
% SWIFTREKORD-DODAJLOOK.ALG
  ExDialogOp["PozycjaNiewprowadzana","*"]
//
//
% SWIFT-MENU-1.DLG
%< SWIFT-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% SWIFT-MENU-0.DLG
%< SWIFT-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% SWIFT-MENU-3.DLG
%< SWIFT-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% SWIFT-MENU-2.DLG
%< SWIFT-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% SWIFT-MENU-X.XXX
PRZYCISK_CANCELID = 0
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Lista numer|ow bank|ow zachodnich SWIFT"
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY
##101,D,0,,,,yellow/blue&black/white&lwhite/blue,,,,ZMIENNA:SWIFT_NAGLOWEK
##1,,ADP,,"%W%yb|or"
##5,LBGT,P,,"%D%odaj"
##4,LBGT,P,,"Z%m%ie|n"
##10,LBGT,P,,"%F%iltr"
##8,LBGT,P,,"%S%zukaj"
##9,LBGT,P,,"%N%ast|epny "
##6,LBGT,P,,"%U%su|n"
##2,LBGT,P,,"%O%pis"
##30,B,P,,"num%e%ru",,,,,,ZMIENNA:SWIFT_klucz,,,1,"1"
##31,B,P,,"nazw%y%",,,,,,ZMIENNA:SWIFT_klucz,,A,1,"2"
##40,LBGT,P,,"Wc%z%ytaj",'Z'
 Sortuj wed|lug: #30    # #31    #
 #101                                                              #

#100                                                                #100<
 
//
% SWIFT-MENU-MODIF.XXX
%< SWIFT-MENU-X.XXX
                                             #5       # #8        # 
  Znajd|x: #7,0,AC              #  #40    #   #4       # #9        #
                                             #6       # #10       #

% SWIFT-MENU-LOOK.XXX
%< SWIFT-MENU-X.XXX
                                             #2       # #8        # 
  Znajd|x: #7,0,AC                      #               #9        #
                                                        #10       #

// --------
// REKORD
// --------
% SWIFT.XXX
PRZYCISK_CANCELID = 2
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dodanie/Zmiana numeru SWIFT"
##10,0,ACP,,,,,,,,POLEUNIKALNE:swift_numer
##11,0,P,,,,,,,,POLE:swift_nazwa
##12,0,P,,,,,,,,POLE:swift_miasto
##13,0,P,,,,,,,,POLE:swift_iso
##14,0,P,,,,,,,,POLE:swift_kraj

Numer SWIFT -  #10        #       

Opis SWIFT  -  #11                                         #
Miasto      -  #12                  #
Kod ISO     - #13#<  
Kraj        -  #14                  #

//
% SWIFT-REKORD-1.DLG,SWIFT-REKORD-0.DLG,SWIFT-REKORD-3.DLG
%<SWIFT.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% SWIFT-REKORD-2.DLG
%<SWIFT.XXX
%<REKORD-OK-BUTT.XXX
//
% SWIFTMENUNR.MEN
D=
1,,,,11
2,,,,30
3,,,,15
5,,,,15
% SWIFTMENUNAZWA.MEN
D=
2,,,,30
1,,,,11
3,,,,15
5,,,,15
//
% IMPORT-SWIFT.ALG
// import rejestru
  plik := "swift.txt"
  sciezka := "wspolne\"
  swift_rezygnujesz := .N.
  ExDialogOp["IdzDoDialogu","SWIFT-DIALOGX"]
  if (swift_rezygnujesz) goto koniec
  OkAlert["Importowany b|edzie plik "+plik+" $ ze |scie|zki "+sciezka+" !"]
  if (YesAlert["Czy importowa|c rejestr SWIFT"]) goto dalej
    goto koniec
  dalej:  
  RejOp["OtworzRejSprawdz","SWIFT.RXR"]
  RejOp["ImportUstawSeparator",";"]
  if (RejOp["ImportujRejestr",sciezka+plik]) goto koniec
  OkAlert["B|l|ad podczas importu do SWIFT!"]
  koniec:
  ExitAlg[0]
% SWIFT-DIALOGX.DLG
PRZYCISK_CANCELID = 21
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wczytanie numer|ow SWIFT"
##10,0,ACP,,,,,,,,ZMIENNA:sciezka
##11,0,ACP,,,,,,,,ZMIENNA:plik
##20,,ADP,,@3
##21,,ADP,,@4
      
 Domy|slna |scie|zka: config\
 Plik: swift.txt
  
 Nowa |scie|zka: #10                                   #


 Nowy plik:    #11        #
    
    
    #20           #          #21           #    
   
% TABLICA-AKCJI-SWIFT-DIALOGX
"AKCJA-BUTTON20",SWIFT-AKCEPTUJESZ
"AKCJA-BUTTON21",SWIFT-REZYGNUJESZ
//
% SWIFT-REZYGNUJESZ.ALG
  swift_rezygnujesz := .T.
  ExDialogOp["KoniecWykonywania",""]
% SWIFT-AKCEPTUJESZ.ALG
  swift_rezygnujesz := .N.
  ExDialogOp["KoniecWykonywania",""]
% PRZELEW-SWIFT-WYBIERZ.ALG
  d_string := RejWezP_S["swift"]
  if (RejOp["X:OtworzRejSprawdz","SWIFT.RXR"]) goto dalej
   OkALert["Nie mog|e otworzy|c listy z numerami SWIFT !"]
   ExitAlg[0]
  dalej:
  CallAlg["PRZELEW-SWIFT-VIEW"]
  RejOp["X:ZamknijRej",""]
% PRZELEW-SWIFT-VIEW.ALG
  if (not(d_string = "")) RejOp["X:ZnajdzRek",d_string]
  RejOp["X:WywolajMenu","2"]
  d_string := RejWezP_S["X:swift_numer"]
  if (d_string = "") d_string := RejWezP_S["swift"]
  ExitAlg[0]  
% PRZELEW-SWIFT-ZNAJDZ.ALG
  if (RejWezP_S["swift"] = "") ExitAlg[0]
  d_string := RejWezP_S["swift"]
  if (RejOp["X:OtworzRejSprawdz","SWIFT.RXR"]) goto dalej
   OkALert["Nie mog|e otworzy|c listy z numerami SWIFT !"]
   ExitAlg[0]
  dalej:
  if (RejOp["X:ZnajdzRek",d_string]) goto koniec
   if (YesAlert["Brak numeru swift o takim symbolu:"+d_string+" !$ Czy wywo|la|c rejestr ?"]) CallAlg["PRZELEW-SWIFT-VIEW"] 
   goto koniec1
  koniec:
  RejWstawP_S["swift",d_string]
  koniec1:
  RejOp["X:ZamknijRej",""]

% PRZELEW-SWIFT-ZNAJDZ-ISO.ALG
  if (d_string) ExitAlg[0]
  if (RejOp["X:OtworzRejSprawdz","SWIFT.RXR"]) goto dalej
   OkALert["Nie mog|e otworzy|c listy z numerami SWIFT !"]
   ExitAlg[0]
  dalej:
  if (RejOp["X:ZnajdzRek",d_string]) goto koniec
   OkAlert["Brak numeru swift o takim symbolu:"+d_string+" !"]
   goto koniec1
  koniec:
  d_string := RejWezP_S["X:swift_iso"]
  koniec1:
  RejOp["X:ZamknijRej",""]
//
% DOPISZ-ZERA.ALG
// d_string wyjscie i wejscie tekstowe
// dlugosc := 
  if (d_string = "") ExitAlg[0]
  if (dlugosc = .) ExitAlg[0]
  petla:
  if (StrLen[d_string] = dlugosc) ExitAlg[0]
  d_string := "0"+d_string
  goto petla
  ExitAlg[0]
//
// ========================================================================
// ========================================================================
// ========================================================================
// ========================================================================
// ========================================================================
// generowanie przelewow 
// do rejestru
// ========================================================================
// ========================================================================
// ========================================================================
// ========================================================================
// ========================================================================
% ZPRLDOK.RXR
5
4
PRLDOK
# 
"ZAZNACZAJ-MENU:37"
""
""
""
""
""
""
""
""
""
""
PRLDOK-WAR
//
//
% GPRLDOK.RXR
1
1
GPRLDOK
//
% GPRLDOK.DBF
1,string,2,2,1        # Grupa
2,string,40           # Grupa nazwa
3,xkwota,,x           # wartosc PLN
4,xkwota,,x           # wartosc DEW
5,2000,,0             # konto bankowe
6,3001                # ksiega
1,0,,,2               # 
5,0,,,2               #
6,0,,,2

% GPRLDOK.DIC
"p_grupa",1,Estring,"Grupa"
"p_nazwa",2,Estring,"Nazwa"
"kw_pln",3,Ekwota,"PLN"
"kw_dew",4,Ekwota,"DEW"
"p_kontobank",5,Estring,"Konto"
"p_ksiega",6,Estring,"Ksiega"

% GPRLDOKMENU-EDYCJA.DIC
"GPRLDOK",0

% GPRLDOKMENU.MEN
D=,"",AB
LINIA-DIALOG = GPRLDOKMENU-EDYCJA,"Kolumny"
1,,,,2,"Gr"
2,,,,20,"Nazwa"
3,,,,14,"Razem w PLN"
4,,,,14,"Razem w DEW"

% KONTA-GPRLDOKMENU.MEN
D=,"",AB
LINIA-DIALOG = GPRLDOKMENU-EDYCJA,"Kolumny"
1,,,,2,"Gr"
5,,,,10,"Konto"
2,,,,20,"Nazwa"
3,,,,14,"Razem w PLN"
4,,,,14,"Razem w DEW"

% GPRL-MENU-MENU
P = 3,,ADS
*0,@17
*1,@4

% GRUPY_SUMY.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Stan wygenerowanych zapis|ow wg grup"
##101,0,P,,,,,,,,MENU_ROZWIJANE:GPRL-MENU-MENU
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:GPRLDOKMENU,GK,KLUCZ,1
 #101                   #


#100                                                          #100<
//
% GRUPY_KONTA_SUMY.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Przygotowane przelewy do wysy|lki"
##101,0,P,,,,,,,,MENU_ROZWIJANE:GPRL-MENU-MENU
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:KONTA-GPRLDOKMENU,GK,KLUCZ,1
 #101                   #


#100                                                               #100<

% NPRLDOK.RXR
34
7
PRLDOK
# 
//"ZAZNACZAJ-MENU:37"
""
""
""
""
""
""
""
""
""
""
""
PRLDOK-WAR
//
% PRLDOK.RXR
5
4
PRLDOK
# 
""
""
""
""
""
""
""
""
""
""
""
PRLDOK-WAR
% PRLDOK.DBF,ZPRLDOK.DBF,NPRLDOK.DBF
0,log,,,,,D
%< TEMP-PRLDOK.DBF
// klucze
20,0,,,1              # klucz nr 1: klasyfikacja
5,0,,,1               # klucz konto + transakcja
2,0,,,1               # klucz konto + transakcja
20,0,,,6              # klucz nr 6: status+stanowisko+numer+strona (klucz unikalny)
23,0,,,6
21,0,,,6
22,0,,,6
21,0,,,8              # klucz nr 8: wedlug zapisow ksiegowych po zaksiegowaniu
22,0,,,8  
24,0,,,9              # klucz nr 9: numer odlozonego i status
20,0,,,9
5,0,,,3               # klucz konto 
5,0,,,4               # konto + transakcja
2,0,,,4               # konto + transakcja
25,0,,,5              # czy wystawiono
34,0,,,7              # kontrahent
5,0,,,14              # klucz konto data plat
4,0,,,14              # 
34,0,,,10             # kontrahent + transakcja
2,0,,,10              # kontrahent + transakcja
5,0,,,11              # konto + termin
4,0,,,11              # konto + termin
34,0,,,12             # kontrahent + termin
4,0,,,12              # kontrahent + termin
4,0,,,13              # Termin
33,0,,,15             # numer konta bankowego

//
% TEMP-PRLDOK.RXR
0
0
TEMP-PRLDOK
% TEMP-PRLDOK.DBF
1,string,60           # tresc 1
2,2103                # transakcja
3,xkwota,,x           # wartosc
4,ydate               # termin platnosci
5,2000,,0             # konto kontrahenta dla wielu kont
6,xkwota,,x           # kwota dewiz dla kont dewizowych
7,xkwota,,4           # kurs dla dewiz
8,dic,,0              # symbol waluty
9,ydate               # data kursu
20,dic,,52            # status dokumentu
21,ulong              # numer (identyfikator) zapisu ksiegowego
22,log                # wn/ma
23,string,8,2         # stanowisko wprowadzajace
24,ulong              # numer dokumentu odlozonego
25,log                # wystawiony t/n
26,string,4           # pusty/jest
30,string,80          # nazwa klient 1
31,string,80          # nazwa klient 2
32,string,40          # nazwa bank klient
33,string,40          # konto bankowe
34,string,20	        # symbol kontrahenta
35,dic,,96            # priorytet
36,string,20          # priorytet opis
37,log                # bolkada t/n
38,string,11	        # typ prl
39,log                # zmieniony t/n
40,2100               # Symbol dokumentu
41,string,3           # rodzaj transakcji
42,log                # kompensata t/n
43,string,15          # konto bankowe swift
//
90,string,,57344,,,A  # osoba zakladajaca
91,ydate,,,,,A        # data zalozenia
92,string,,57344,,,C  # osoba modygikujaca
93,ydate,,,,,C        # data modyfikacji
98,ulong              # dla konto rozliczeniowych jako naglowek
99,ulong              # dowiazanie do naglowka (pole 99)
200,xkwota,,x         # wartosc
201,xkwota,,x         # wartosc dew
//
% PRLDOK.DIC,TEMP-PRLDOK.DIC,ZPRLDOK.DIC,NPRLDOK.DIC
"tresc1",1,Estring,"Tre|s|c"
"trans",2,Estring,"Transakcja"
"wartosc",3,Ekwota,"Kwota w PLN"
"o_wartosc",200,Ekwota,"Kwota w PLN"
"data_plat",4,Edata,"Termin platno|sci"
"vatkontoplat",5,Estring,"Konto kontrahenta"
"kwota_dew",6,Ekwota,"Kwota w DEW"
"o_kwota_dew",201,Ekwota,"Kwota w DEW"
"kurs_dew",7,Ekwota,"Kurs"
"waluta",8,Estring,"Waluta"
"data_kurs",9,Edata,"Data kursu"
"k_status",20,Estring,"Status"
"k_finnid",21,Ekwota,"Nr.wew."
"k_wn",22,Elog,"Strona ks."
"k_stanow",23,Estring,"Stanowisko"
"k_numerodl",24
"k_wystaw",25,Elog,"Przelew ?"
"k_byl",26,Estring,"jest ?"
"nazwa_kl1",30,Estring,"Nazwa klienta 1"
"nazwa_kl2",31,Estring,"Nazwa klienta 2"
"nazwabanku_kl",32,Estring,"Nazwa banku"
"numerbanku_kl",33,Estring,"Konto bankowe"
"sym_kl",34,Estring,"Symbol kontrahenta"
"prior_kl",35,Estring,"Priorytet kontrahenta"
"slownieprior_kl",36,Estring,"Priorytet opis"
"blokada",37,Elog,"Zaznaczony T/N"
"typ_prl",38,Estring,"Typ przelewu"
"zmiana",39,Elog,"Zmiana T/N"
"Dok_sw",40,Estring,"Dokument"
"tra_rodz",41,Estring,"Dokument"
"kompensata",42,Elog,"Kompensata"
"swift",43,Estring,"Swift"
"osoba",90,Estring,"Osoba"
"datagen",91,Edata,"Data zapisu"
"dokidzap1",98,Ekwota
"dokidzap",99,Ekwota
//
% PRLDOKX.DIC
"tresc1",1,Estring,"Tre|s|c"
"trans",2,Estring,"Transakcja"
"wartosc",3,Ekwota,"Kwota w z|l."
"data_plat",4,Edata,"Termin platno|sci"
"vatkontoplat",5,Estring,"Konto kontrahenta"
//"kwota_dew",6,Ekwota,"Kwota w walucie"
//"kurs_dew",7,Ekwota,"Kurs"
//"waluta",8,Estring,"Waluta"
//"data_kurs",9,Edata,"Data kursu"
//"k_status",20,Estring,"Status"
"nazwa_kl1",30,Estring,"Nazwa klienta 1"
"nazwa_kl2",31,Estring,"Nazwa klienta 2"
"nazwabanku_kl",32,Estring,"Nazwa banku"
"numerbanku_kl",33,Estring,"Konto bankowe"
"sym_kl",34,Estring,"Symbol kontrahenta"
"prior_kl",35,Estring,"Priorytet kontrahenta"
"slownieprior_kl",36,Estring,"Priorytet opis"
"blokada",37,Elog,"Zaznaczony T/N"
"typ_prl",38,Estring,"Typ przelewu"
"dok_sw",40,Estring,"Dokument"
"osoba",90,Estring,"Osoba"
"datagen",91,Edata,"Data zapisu"
// darek
% USTAL-LISTE-KONTRAHENTOW-PRLDOK.ALG
  rejop["ck:wyczyscrej",""]
  if (not rejop["p:wezpierwszyrek",""]) goto koniec
    petla:
//    if (rejop["ck:znajdzrek",rejwezp_s["p:sym_kl"]]) goto next
    rejop["ck:zmienkluczrej","7"]
    klucz_s := rejwezp_s["p:sym_kl"]
    if (not(pustepole["p:numerbanku_kl"])) klucz_s := rejwezp_s["p:numerbanku_kl"]
    if (not(pustepole["p:numerbanku_kl"])) rejop["ck:zmienkluczrej","15"]
    
    if (rejop["ck:znajdzrek",klucz_s]) goto next
      rejop["ck:dodajrek",""]
      rejop["p:przeniespola","ck:"]
      xrejwstawp_k["ck:wartosc",0]
      xrejwstawp_k["ck:kwota_dew",0]
      rejop["ck:zapiszrek",""]
    next:
      if (not(rejwezp_l["p:blokada"])) goto next1
      xrejwstawp_k["ck:wartosc",rejwezp_k["ck:wartosc"]+rejwezp_k["p:wartosc"]]
      xrejwstawp_k["ck:kwota_dew",rejwezp_k["ck:kwota_dew"]+rejwezp_k["p:kwota_dew"]]
      if (pustepole["ck:swift"]) xrejwstawp_s["ck:swift",rejwezp_s["p:swift"]]
      rejop["ck:zapiszrek",""]
    next1:
      if (pustepole["ck:swift"]) xrejwstawp_s["ck:swift",rejwezp_s["p:swift"]]
//    if (rejwezp_s["ck:numerbanku_kl"] == "") goto next2
//    if (not(rejwezp_s["ck:numerbanku_kl"] == rejwezp_s["p:numerbanku_kl"])) rejwstawp_s["ck:numerbanku_kl",""]
    next2:
    if (rejop["p:weznastepnyrek",""]) goto petla
  koniec:
//
% LOOK-PRLDOK.ALG
if (FinnOp["@1openmainx",""]) goto dalej01
  OkAlert["Nie mog|e otworzy|c ksi|egi !"]
  goto koniec
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  dalej01:
  ilosc_gen := 3
  odl_key := "3"
  odl := .T.
  konto_kontrahenta := ""
  konto_nr_kontrahenta := ""
  swift_kontrahenta := ""
  waluta_kontrahenta := "PLN"
  p_zap_all := 0
  p_zap_blok := 0
  p_zap_wal := "PLN"
  p_zap_ok := 0 
  p_dew_zap_ok := 0
  p_dew_zap_all := 0
  p_dew_zap_blok := 0
  termin_na_dzien1 := ''
  termin_na_dzien2 := ''
  priorytet := ""
  DD_POS := 0
// 
  menu_gen_bank := ""
  CallSl["PRZELEWY->daj_menu_gen_prl"]
  if (RejOp["P:OtworzRejSprawdz",menu_gen_bank+"PRLDOK.RXR"]) GOTO DALEJ
  OkAlert["Nie mog|e otworzy|c listy !"]
  ExitAlg[0]
  dalej:
  if (not(RejOp["P:PustyRej",""])) goto dalej0
    OkAlert["Brak wygenerowanych przelew|ow !"]
    goto koniec1
  dalej0:
//  klucz := "zaks"
//  klucz := "*"
  RejOp["CK:OtworzRej1","NPRLDOK.RXR"]
  RejOp["CK:zmienkluczrej","7"]
  RejOp["v:otworzrejsprawdz","FAKTURY-PRZYCHODZACE.RXR"]
  RejOp["V:zmienkluczrej","30"]
  RejOp["vv:otworzrejsprawdz","FAKTURY-PRZYCHODZACEKONTA.RJR"]
  RejOp["VV:zmienkluczrej","1"]
  
  callalg["USTAL-LISTE-KONTRAHENTOW-PRLDOK"]

  RejOp["P:WywolajMenu","1"]
  
  RejOp["V:ZamknijRej",""]
  RejOp["VV:ZamknijRej",""]
  RejOp["CK:ZamknijRej",""]
  koniec1:
  RejOp["P:ZamknijRej",""]
koniec:
FinnOp["Close",""]
// ------------------------------------------------------
% PRLDOK-WAR.DIC,PRLDOK-FILTR.DIC
"Konto kontrahenta .:",5
"Symbol kontrahenta :",34
"Nazwa klienta (1) .:",30
"Nazwa klienta (2) .:",31
"Nazwa banku .......:",32
"Konto bankowe .....:",33
"Zaznaczony T/N ......:",37
"Zmieniony T/N .......:",39
"Typ przelewu ........:",38
"Tre|s|c ...............:",1
"Transakcja ..........:",2
"Kwota ...............:",3
"Termin p|latno|sci ..:",4
"Dokument ksi|egowy ...:",40
"Priorytet .........:",35
"Blokada .............:",36
"Typ przelewu ........:",38
//"Kwota w walucie",6
//"Kurs",7
//"Waluta",8
//"Data kursu",9
//"Status zapisu",20
//
% PRLDOK-WAR.BOX
D = "Warunek do wydruku"
"Konto kontrahenta .:",5,A
"Symbol kontrahenta :",34,A
"Nazwa klienta (1) .:",30,A
"Nazwa klienta (2) .:",31,A
"Nazwa banku .......:",32,A
"Konto bankowe .....:",33,A
"Zaznaczony T/N ......:",37,A
"Zmieniony T/N .......:",39,A
"Typ przelewu ........:",38,A
"Tre|s|c ...............:",1,A
"Transakcja ..........:",2,A
"Kwota ...............:",3,A
"Termin p|latno|sci ..:",4,A
"Dokument ksi|egowy ...:",40,A
"Priorytet .........:",35,A
"Blokada .............:",36,A
"Typ przelewu ........:",38,A
//
% PRLDOKALGO.XXX
"AKCJA-PRZED-WYSWIETLENIEM-PRLDOK-MENU-?.DLG",PRLDOK-MENU-PRZED
"AKCJA-PRZED-WYSWIETLENIEM-PRLDOK-REKORD-1.DLG",PRLDOKREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-PRLDOK-REKORD-3.DLG",PRLDOKREKORD-DODAJSTART1
"AKCJA-PRZED-WYSWIETLENIEM-PRLDOK-REKORD-0.DLG",PRLDOKREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-PRLDOK-REKORD-2.DLG",PRLDOKREKORD-DODAJLOOK
"AKCJA-BUTTON1-PRLDOK-REKORD-?.DLG",PRLDOKREKORD-AKCEPTUJESZ
"AKCJA-BUTTON30-PRLDOK-MENU-?.DLG",PRLDOK-USTAW-FILTR
"AKCJA-BUTTON31-PRLDOK-MENU-?.DLG",PRLDOK-DRUKUJ
"AKCJA-BUTTON32-PRLDOK-MENU-?.DLG",PRLDOK-KARTOTEKA
"AKCJA-BUTTON33-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-ZL-3
"AKCJA-BUTTON41-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-ZL-7
"AKCJA-BUTTON34-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-DEW
"AKCJA-BUTTON35-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEWY-ZL
"AKCJA-BUTTON335-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEWY-ZL
"AKCJA-BUTTON36-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEWY-DEW
"AKCJA-BUTTON37-PRLDOK-MENU-?.DLG",LOOK-PRZELEW
"AKCJA-BUTTON337-PRLDOK-MENU-?.DLG",PRLDOK-LOOK-PRZELEW-KONTRAHENT
"AKCJA-BUTTON38-PRLDOK-MENU-?.DLG",PRLDOK-USUN
"AKCJA-BUTTON39-PRLDOK-MENU-?.DLG",PRLDOK-OCZYSC
"AKCJA-BUTTON40-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-STATUS
"AKCJA-BUTTON41-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-BLOKUJ
//"AKCJA-BUTTON42-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-BLOKUJ-KONTRAHENT
"AKCJA-BUTTON142-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-BLOKUJ-KONTRAHENT1
"AKCJA-BUTTON242-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-BLOKUJ-KONTRAHENT2
"AKCJA-BUTTON43-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-STANY-KONT
"AKCJA-BUTTON49-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-ZMIEN-WALUTE
"AKCJA-BUTTON44-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-BLOKUJ-ALL
"AKCJA-BUTTON144-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-BLOKUJ-ALL1
"AKCJA-BUTTON244-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-BLOKUJ-ALL2
"AKCJA-BUTTON45-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-PRZELICZ-STANY-BU
"AKCJA-BUTTON46-PRLDOK-MENU-?.DLG",LOOK-PRZELEW-TMP
"AKCJA-BUTTON47-PRLDOK-MENU-?.DLG",PRZELEW-KONTRAHENCI
"AKCJA-BUTTON48-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-LOOK-FA_PRZYCH
"AKCJA-BUTTON270-PRLDOK-MENU-?.DLG",PRLDOK-ZAPISZ-KONTO-KONTRAHENT
"AKCJA-BUTTON271-PRLDOK-MENU-?.DLG",PRLDOK-ZAPISZ-ZAPIS
"AKCJA-PO-POLU219-PRLDOK-MENU-?.DLG",PRLDOK-ZAPISZ-PO-KONTO
"AKCJA-F2-POLE260-PRLDOK-MENU-?.DLG",PRLDOK-ZAPISZ-WYBIERZ-TRANSAKCJA
"AKCJA-LINIAMENU100-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-RELOAD
//"AKCJA-PO-POLU100-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-PRZELICZ-STANY-PO
//"AKCJA-LINIAMENU100-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-ZANKUJ
"AKCJA-LINIAMENU101-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-KONTRAHENT-REC
"AKCJA-BUTTON101-PRLDOK-MENU-?.DLG",PRLDOK-PRZELEW-KONTRAHENT-REC-ZNAK
//
% PRLDOK-PRZELEW-LOOK-FA_PRZYCH.ALG
 finnmenufunkcja[2600,""]
% PRLDOK-PRZELEW-KONTRAHENT-REC-ZNAK.ALG
okalert["a"]
% PRLDOK-PRZELEW-KONTRAHENT-REC.ALG
  klucz := rejwezp_s["ck:numerbanku_kl"]
  ExDialogOp["UstawMenuKlucz","100:"+klucz]
  exdialogop["wyswietlpozycje","100"]
  exdialogop["wezpierwszy","100"]
  exdialogop["wyswietlpozycje","220"]
  exdialogop["wyswietlpozycje","221"]
  exdialogop["wyswietlpozycje","222"]  

% PRLDOK-PRZELEW-PRZELICZ-STANY.alg
    if (rejop["p:pustyrej",""]) goto nie_licz
    rekpos := rejwezp_k["p:rejestrrekpos"]
    callalg["ZLICZ-DANE-PRLDOK"]
    RejOp["P:UstawRekPos",ToStr["#rekpos#S:0"]]
    nie_licz:
    exdialogop["wyswietlpozycje","210"]
    exdialogop["wyswietlpozycje","211"]
    exdialogop["wyswietlpozycje","212"]
    exdialogop["wyswietlpozycje","213"]
    exdialogop["wyswietlpozycje","214"]
    exdialogop["wyswietlpozycje","215"]
//    
% PRLDOK-PRZELEW-PRZELICZ-STANY-BU.alg
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  callalg["PRLDOK-PRZELEW-PRZELICZ-STANY"]
  exdialogop["idzdopozycji","100"]
//  
% PRLDOK-PRZELEW-PRZELICZ-STANY-PO.alg
    callalg["PRLDOK-PRZELEW-PRZELICZ-STANY"]
% PRLDOK-LOOK-PRZELEW-KONTRAHENT.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  d_string := rejwezp_s["p:sym_kl"]
  callalg["PRZELEWY-KONTRAHENTA"]
//    
% ZLICZ-DANE-PRLDOK-KONTRAHENT.ALG
  p_zap := 0
  p_zap_all := 0
  p_zap_blok := 0
  p_zap_wal := "PLN"
  p_dew_zap := 0
  p_dew_zap_all := 0
  p_dew_zap_blok := 0
  if (not(rejop["PX:Otworzrejsprawdz","PRLDOK.RXR"])) goto koniec
  rejop["px:zmienkluczrej","7"]
  if (rejop["px:znajdzrek",rejwezp_s["p:sym_kl"]]) goto dalej
    goto koniec_out
  dalej:
    if (not(rejwezp_s["px:sym_kl"] == rejwezp_s["p:sym_kl"])) goto koniec_out
    p_zap_all := p_zap_all + rejwezp_k["px:wartosc"]
    p_dew_zap_all := p_dew_zap_all + rejwezp_k["px:kwota_dew"]
    if ((not rejwezp_l["px:blokada"]) or (rejwezp_s["px:prior_kl"] == "99") or (rejwezp_s["px:prior_kl"] == "98")) goto next_ok
      goto next
    next_ok:
      p_zap_blok := p_zap_blok + rejwezp_k["px:wartosc"]
      p_dew_zap_blok := p_dew_zap_blok + rejwezp_k["px:kwota_dew"]
    next:
  if (rejop["px:weznastepnyrek",""]) goto dalej
  koniec_out:
  rejop["px:zamknijrej",""]
  p_zap := p_zap_all - p_zap_blok
  p_dew_zap := p_dew_zap_all - p_dew_zap_blok
  koniec:
  
% ZLICZ-DANE-PRLDOK-KONTRAHENCI.ALG
  if (not(rejop["P:Otworzrejsprawdz","NPRLDOK.RXR"])) goto koniec
  rejop["P:wezpierwszyrek",""]
  petla:
    p_zap := 0
    p_dew_zap := 0
    callalg["ZLICZ-DANE-PRLDOK-KONTRAHENT"]
    rejwstawp_k["p:wartosc",p_zap]
    rejwstawp_k["p:kwota_dew",p_dew_zap]
  if (rejop["p:weznastepnyrek",""]) goto petla
  koniec_out:
  rejop["p:zamknijrej",""]
  koniec:
  
% PRLDOK-PRZELEW-PRZELICZ-REC.ALG
  rekpos := rejwezp_k["p:rejestrrekpos"]
  p_zap := 0
  p_dew_zap := 0
  callalg["ZLICZ-DANE-PRLDOK-KONTRAHENT"]
  rejwstawp_k["ck:wartosc",p_zap]
  rejwstawp_k["ck:kwota_dew",p_dew_zap]
  if (not(rejop["p:pustyrej",""])) RejOp["P:UstawRekPos",ToStr["#rekpos#S:0"]]
  p_dew_zap := p_dew_zap
    
% PRLDOK-PRZELEW-RELOAD.ALG
  callalg["PRLDOK-PRZELEW-PRZELICZ-REC"]
  callalg["PRLDOK-PRZELEW-PRZELICZ-STANY"]
//  exdialogop["wyswietlpozycje","101"]
  if (not(rejwezp_l["p:blokada"])) goto dalej
    if (pustepole["ck:numerbanku_kl"]) goto wstaw
    if (not(rejwezp_s["ck:numerbanku_kl"] == rejwezp_s["p:numerbanku_kl"])) okalert["Inne konto p|latno|sci !"]
    goto wstaw_view
    wstaw:
    rejwstawp_s["ck:numerbanku_kl",rejwezp_s["p:numerbanku_kl"]]
    wstaw_view:
    exdialogop["wyswietlpozycje","100"]
  dalej:
  exdialogop["wyswietlpozycje","101"]
  exdialogop["wyswietlpozycje","218"]
  exdialogop["wyswietlpozycje","219"]
  exdialogop["wyswietlpozycje","220"]
  exdialogop["wyswietlpozycje","221"]
  exdialogop["wyswietlpozycje","222"]
  exdialogop["wyswietlpozycje","223"]
  exdialogop["wyswietlpozycje","260"]
  exdialogop["wyswietlpozycje","261"]
  exdialogop["wyswietlpozycje","262"]
  exdialogop["wyswietlpozycje","263"]
  exdialogop["wyswietlpozycje","7"]
% PRLDOK-PRZELEW-ZANKUJ.ALG
  log := RejWezP_L["P:blokada"]
  if (log) p_zap_blok := p_zap_blok + rejwezp_k["p:wartosc"]
  if (not(log)) p_zap_blok := p_zap_blok - rejwezp_k["p:wartosc"]
  p_zap_ok := p_zap_all - p_zap_blok
  exdialogop["wyswietlpozycje","210"]
  exdialogop["wyswietlpozycje","211"]
  exdialogop["wyswietlpozycje","212"]
  exdialogop["wyswietlpozycje","213"]
  exdialogop["wyswietlpozycje","214"]
  exdialogop["wyswietlpozycje","215"]
//  exdialogop["idzdopozycji","100"]
//
% PRLDOK-PRZELEW-BLOKUJ.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  log := RejWezP_L["P:blokada"]
  if (log) RejWstawP_L["P:blokada",.N.]
  if (not(log)) RejWstawP_L["P:blokada",.T.] 
  if (log) p_zap_blok := p_zap_blok - rejwezp_k["p:wartosc"]
  if (not(log)) p_zap_blok := p_zap_blok + rejwezp_k["p:wartosc"]
  p_zap_ok := p_zap_all - p_zap_blok
  exdialogop["zmienrekordwmenu","100"]
  exdialogop["wyswietlpozycje","210"]
  exdialogop["wyswietlpozycje","211"]
  exdialogop["wyswietlpozycje","212"]
  exdialogop["idzdopozycji","100"]
//
% PRLDOK-PRZELEW-BLOKUJ-ALL.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  dlog := RejWezP_L["P:blokada"]
  callalg["PRLDOK-PRZELEW-BLOKUJ-ALL-XXX"]
//  
% PRLDOK-PRZELEW-BLOKUJ-ALL1.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  dlog := .N.
  callalg["PRLDOK-PRZELEW-BLOKUJ-ALL-XXX"]
//  
% PRLDOK-PRZELEW-BLOKUJ-ALL2.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  dlog := .T.
  callalg["PRLDOK-PRZELEW-BLOKUJ-ALL-XXX"]
//  
% PRLDOK-PRZELEW-BLOKUJ-ALL-XXX.ALG
  rekpos := rejwezp_k["p:rejestrrekpos"]
  txt := "Czy zaznaczy|c wszystkie zapisy ?"
  if (dlog) txt := "Czy odznaczy|c wszystkie zapisy ?"
  if (yesalert[""+txt] ) goto dalej01
    ExitAlg[0]
  dalej01:
  log := .T.
  if (dlog) log := .N.
  if (not rejop["P:Wezpierwszyrek",""]) ExitAlg[0]
  petla:
        RejWstawP_L["P:blokada",log]
  if (rejop["p:weznastepnyrek",""]) goto petla
//  
  callalg["ZLICZ-DANE-PRLDOK"]
  callalg["ZLICZ-DANE-PRLDOK-KONTRAHENCI"]
  RejOp["P:UstawRekPos",ToStr["#rekpos#S:0"]]
  exdialogop["wyswietlpozycje","100"]
  exdialogop["wyswietlpozycje","210"]
  exdialogop["wyswietlpozycje","211"]
  exdialogop["wyswietlpozycje","212"]
  exdialogop["idzdopozycji","100"]
//  
% PRLDOK-PRZELEW-BLOKUJ-KONTRAHENT1.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  if (not YesAlert["Czy zaznaczy|c kontrahenta $ "+rejwezp_s["P:nazwa_kl1"]+ " ?"]) ExitAlg[0]
  rekpos := rejwezp_k["p:rejestrrekpos"]
  symbol := rejwezp_s["p:sym_kl"]
  log := .N.
  callalg["PRLDOK-PRZELEW-BLOKUJ-KONTRAHENT-X"]
% PRLDOK-PRZELEW-BLOKUJ-KONTRAHENT2.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  if (not YesAlert["Czy odznaczy|c kontrahenta $ "+rejwezp_s["P:nazwa_kl1"]+ " ?"]) ExitAlg[0]
  rekpos := rejwezp_k["p:rejestrrekpos"]
  symbol := rejwezp_s["p:sym_kl"]
  log := .T.
  callalg["PRLDOK-PRZELEW-BLOKUJ-KONTRAHENT-X"]
% PRLDOK-PRZELEW-BLOKUJ-KONTRAHENT.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  if (not YesAlert["Czy zaznaczy|c/odznaczy|c kontrahenta $ "+rejwezp_s["P:nazwa_kl1"]+ " ?"]) ExitAlg[0]
  rekpos := rejwezp_k["p:rejestrrekpos"]
  symbol := rejwezp_s["p:sym_kl"]
  log := RejWezP_L["P:blokada"]
  callalg["PRLDOK-PRZELEW-BLOKUJ-KONTRAHENT-X"]
//  
% PRLDOK-PRZELEW-BLOKUJ-KONTRAHENT-X.ALG
//  if (not YesAlert["Czy zaznaczy|c/odznaczy|c kontrahenta $ "+rejwezp_s["P:nazwa_kl1"]+ " ?"]) ExitAlg[0]
//  rekpos := rejwezp_k["p:rejestrrekpos"]
//  symbol := rejwezp_s["p:sym_kl"]
  if (not rejop["P:Wezpierwszyrek",""]) ExitAlg[0]
    petla:
    if (not(rejwezp_s["p:sym_kl"] == symbol)) goto next
    if (log) RejWstawP_L["P:blokada",.N.]
    if (not(log)) RejWstawP_L["P:blokada",.T.] 
    next:
    if (rejop["P:wezNastepnyRek",""]) goto petla 
   callalg["ZLICZ-DANE-PRLDOK"]
   RejOp["P:UstawRekPos",ToStr["#rekpos#S:0"]]
   exdialogop["wyswietlpozycje","100"]
   exdialogop["wyswietlpozycje","210"]
   exdialogop["wyswietlpozycje","211"]
   exdialogop["wyswietlpozycje","212"]
   exdialogop["idzdopozycji","100"]
//
% PRLDOK-USUN.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  p_zap_all := p_zap_all - rejwezp_k["p:wartosc"]
  if ((rejwezp_l["p:blokada"]) or (rejwezp_s["p:prior_kl"] == "99") or (rejwezp_s["p:prior_kl"] == "98")) p_zap_blok := p_zap_blok - rejwezp_k["p:wartosc"]
  p_zap_ok := p_zap_all - p_zap_blok
//  
  RejOp["P:UsunRek",""]
  ExDialogOp["UsunRekordzmenu","100"]
  if (not ExDialogOp["PusteOkno","100"]) goto koniec
    OkAlert["Brak danych do wy|swietlania !"]
    rejop["p:wstawpustepola",""]
  koniec:
  callalg["ZLICZ-DANE-PRLDOK"]
  exdialogop["wyswietlpozycje","210"]
  exdialogop["wyswietlpozycje","211"]
  exdialogop["wyswietlpozycje","212"]
  exdialogop["wyswietlpozycje","220"]
  exdialogop["wyswietlpozycje","221"]
  exdialogop["wyswietlpozycje","7"]
//
% PRLDOK-OCZYSC.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  if (not(YesNalert["Czy usun|a|c wszystkie zapisy ?"])) goto koniec
  RejOp["P:WyczyscRej",""]
  rejop["p:wstawpustepola",""]
  ExDialogOp["WyswietlPozycje","100"]
  if (not ExDialogOp["PusteOkno","100"]) goto koniec
    OkAlert["Brak danych do wy|swietlania !"]
//    rejop["p:wstawpustepola",""]
  koniec:
  callalg["ZLICZ-DANE-PRLDOK"]
  exdialogop["wyswietlpozycje","210"]
  exdialogop["wyswietlpozycje","211"]
  exdialogop["wyswietlpozycje","212"]
  exdialogop["wyswietlpozycje","220"]
  exdialogop["wyswietlpozycje","221"]
  exdialogop["wyswietlpozycje","7"]
//
% PRLDOK-PRZELEW-STATUS.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  CallAlg["PRLDOK-MENU-PRZED"]
  ExDialogOp["WyswietlPozycje","100"]
  ExDialogop["wezpierwszy","100"]
  
  exdialogop["wyswietlpozycje","210"]
  exdialogop["wyswietlpozycje","211"]
  exdialogop["wyswietlpozycje","212"]
  exdialogop["wyswietlpozycje","220"]
  exdialogop["wyswietlpozycje","221"]
  exdialogop["wyswietlpozycje","7"]
//
% PRLDOKMENU-FILTR.ALG
  A_OK := .N.
  if (rejwezp_s["CK:waluta"] == waluta_kontrahenta) A_OK := .T.
  A_OK := .T.
  
% PRLDOKMENU-TRANSAKCJE-FILTR.ALG
  A_OK := .N.
  if (rejwezp_s["waluta"] == waluta_kontrahenta) A_OK := .T.
  
% PRLDOK-MENU-PRZED.ALG
  klucz_gen_bank := 4
  CallSl["PRZELEWY->daj_klucz_gen_prl"]
  ExDialogOp["UstawMenuParam","101:PRLDOKMENU,CK,KLUCZ,"+tostr["#klucz_gen_bank#S:0"]]
  ExDialogOp["UstawFiltrAlg","101:PRLDOKMENU-FILTR"]
  ExDialogOp["UstawMenuParam","100:PRLDOKMENU-TRANSAKCJE,,JEDENKLUCZ,15"]
  rejop["ck:wezpierwszyrek",""]
  klucz := rejwezp_s["ck:numerbanku_kl"]
  ExDialogOp["UstawMenuKlucz","100:"+klucz]
  ExDialogOp["UstawFiltrAlg","100:PRLDOKMENU-TRANSAKCJE-FILTR"]
//
  callalg["ZLICZ-DANE-PRLDOK"]
//
% ZLICZ-DANE-PRLDOK.ALG
// ------------ zliczenie danych -------------------------------
  p_zap_all := 0
  p_zap_blok := 0
  p_zap_ok := 0 
  p_dew_zap_ok := 0 
  p_zap_wal := "PLN"
  p_zap_wal := WALUTA_KONTRAHENTA
  
  txt_komunikat := "Zlicznie transakcji.Prosz|e czeka|c !"
  if (not(rejop["PX:Otworzrejsprawdz","PRLDOK.RXR"])) goto koniec
  if (rejop["px:wezpierwszyrek",""]) goto dalej
    rejop["px:zamknijrej",""]
     goto koniec
  dalej:
    if (not(rejwezp_s["px:waluta"] == "PLN")) goto waluta
    p_zap_all := p_zap_all + rejwezp_k["px:wartosc"]
    if ((not rejwezp_l["px:blokada"]) or (rejwezp_s["px:prior_kl"] == "99") or (rejwezp_s["px:prior_kl"] == "98")) p_zap_blok := p_zap_blok + rejwezp_k["px:wartosc"]
      goto waluta_pln
    waluta:
      p_zap_wal := rejwezp_s["px:waluta"]
      p_zap_all := p_zap_all + rejwezp_k["px:kwota_dew"]
      if ((not rejwezp_l["px:blokada"]) or (rejwezp_s["px:prior_kl"] == "99") or (rejwezp_s["px:prior_kl"] == "98")) p_zap_blok := p_zap_blok + rejwezp_k["px:kwota_dew"]    
    waluta_pln:
  if (rejop["px:weznastepnyrek",""]) goto dalej
  p_zap_ok := p_zap_all - p_zap_blok
  rejop["px:zamknijrej",""]
  koniec:
//
% PRLDOK-USTAW-FILTR.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  ExDialogOp["UstawFiltr","100:PRLDOK-FILTR"]
//
% PRLDOK-PRZELEW-ZL-3.ALG
odl_key := "3"
callalg["PRLDOK-PRZELEW-ZL"]
//
% PRLDOK-PRZELEW-ZL-7.ALG
odl_key := "7"
callalg["PRLDOK-PRZELEW-ZL"]
//
% PRLDOK-PRZELEW-ZL-15.ALG
odl_key := "15"
callalg["PRLDOK-PRZELEW-ZL"]
//

% PRLDOK-PRZELEW-ZL.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  callalg["PRLDOK-PRZELEWY-USUN-CZYSC"]
  p_modif := .T.
  id_modul := ""
  symbol_kontrahenta := RejWezP_S["P:sym_kl"]
  konto_kontrahenta := RejWezP_S["P:vatkontoplat"]
  konto_nr_kontrahenta := RejWezP_S["P:numerbanku_kl"]
  swift_kontrahenta := RejWezP_S["P:swift"]
  WER := "ZL"
  CallAlg["WYSTAW-PRZELEW-XXX"]
  RejOp["PP:OtworzRejSprawdz","PRLDOK.RXR"]
  txt_komunikat := "Prosz|e czeka|c..."
  CallAlg["komunikat-work"]
  CallALG["oczysc-prldok"]
  callalg["ZLICZ-DANE-PRLDOK"]
  CallAlg["komunikat-down"]
  RejOp["PP:ZamknijRej",""]
  if (not RejOp["P:pustyrej",""]) rejop["P:wstawpustepola",""]
  ExDialogOp["usunrekordzmenu","100"]
  ExDialogOp["WyswietlPozycje","100"] 
  ExDialogOp["WyswietlPozycje","101"] 
  exdialogop["wyswietlpozycje","210"]
  exdialogop["wyswietlpozycje","211"]
  exdialogop["wyswietlpozycje","212"]
  exdialogop["wyswietlpozycje","7"]
  if (not ExDialogOp["PusteOkno","100"]) goto koniec
    rejop["p:wstawpustepola",""]
    exdialogop["wyswietlpozycje","7"]
    OkAlert["Brak danych do wy|swietlania !"]
    ExitAlg[0]
  koniec:
  ExitAlg[0]
//
//
% PRLDOK-PRZELEW-DEW.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  callalg["PRLDOK-PRZELEWY-USUN-CZYSC"]
  id_modul := ""
  symbol_kontrahenta := RejWezP_S["P:sym_kl"]
  konto_kontrahenta := RejWezP_S["P:vatkontoplat"]
  konto_nr_kontrahenta := RejWezP_S["P:numerbanku_kl"]
  swift_kontrahenta := RejWezP_S["P:swift"]
  WER := "DEW"
  CallAlg["WYSTAW-PRZELEW-DEWIZY"]
  txt_komunikat := "Prosz|e czeka|c..."
  CallAlg["komunikat-work"]
  CallALG["oczysc-prldok"]
  callalg["zlicz-dane-prldok"]
  CallAlg["komunikat-down"]
//  RejOp["P:WezPierwszyRek",""]
  if (not RejOp["P:pustyrej",""]) rejop["P:wstawpustepola",""]
  ExDialogOp["usunrekordzmenu","100"]
  ExDialogOp["WyswietlPozycje","100"] 
  exdialogop["wyswietlpozycje","210"]
  exdialogop["wyswietlpozycje","211"]
  exdialogop["wyswietlpozycje","212"]
  exdialogop["wyswietlpozycje","7"]
// ===================================================
% PRLDOK-KARTOTEKA.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
	  ExitAlg[0]
  nie_puste_00:
  rekpos := rejwezp_k["p:rejestrrekpos"]
  FinnIdzDo["KartRozr",RejWezP_S["P:vatkontoplat"],RejWezP_S["P:trans"]]
  RejOp["P:UstawRekPos",ToStr["#rekpos#S:0"]]
  ExDialogOp["idzdopozycji","100"]
// ---------
% PRLDOKREKORD-DODAJLOOK.ALG
  naglowek_txt := "Opis kontrahenta"
  ExDialogOp["PozycjaNiewprowadzana","*"]
  przed_tresc := rejwezp_s["p:tresc1"]
  przed_kwota_zl := rejwezp_k["p:wartosc"]
  przed_kwota_dew := rejwezp_k["p:kwota_dew"]
  if (pustepole["p:o_wartosc"]) rejwstawp_k["p:o_wartosc",rejwezp_k["p:wartosc"]]
  if (pustepole["p:o_kwota_dew"]) rejwstawp_k["p:o_kwota_dew",rejwezp_k["p:kwota_dew"]]
  ExDialogOp["PozycjaWprowadzana","30"]
  ExDialogOp["PozycjaWprowadzana","31"]
  if (not(rejwezp_s["p:waluta"] == "PLN")) ExDialogOp["PozycjaWprowadzana","32"]
//
% PRLDOK-MENU-1.DLG
%< PRLDOK-MENU-MODIF.XXX
//%< REJESTRY-BUTTONY-1.XXX
//
% PRLDOK-MENU-0.DLG
%< PRLDOK-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% PRLDOK-MENU-3.DLG
%< PRLDOK-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% PRLDOK-MENU-2.DLG
%< PRLDOK-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-0.XXX
// 
% PRLDOK-MENU-MENU
P = 3,,ADS
*0,@5
*900,"Szukaj"
8," %S%zukaj"
9," %N%ast|epny"
30," %F%iltr"
*901,"Wy|swietl"
2," Szczeg|o|ly zapisu"

47," Rejestr kontrahent|ow          <F6>",,,,F6
32," Kartoteka rozrachunkowa"
337," Wystawione przelewy na kontrahenta"
37," Przegl|adanie wystawonych przelew|ow"
//
//31," Raport kolumnowy"
*902,"Funkcje"
144," %Z%aznacz zapisy"
244," %O%dznacz zapisy"

142," Zaznacz kontrahenta"
242," Odznacz kontrahenta"

38," Usu|n zapis"
39," Usu|n wszystkie zapisy"
*31," Druku%j%"
//
% DOK-PRLDOK-MENU-X.XXX
PRZYCISK_CANCELID = 0
##DEFWINDOW = 2,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Lista wyszukanych transakcji do przelew|ow"
##99,0,P,,,,,,,,MENU_ROZWIJANE:PRLDOK-MENU-MENU
##101,TLD,0,,"Konto           Transakcja      Termin       Kwota Priorytet B Typ",,yellow/blue&black/white&lwhite/blue
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY
##200,DZ,ADPH,,"Wyszukiwanie"
##201,DZ,ADPH,,"Wy|swietl"
##202,DZ,ADPH,,"Zapisy"
##203,DZ,ADPH,,"Generuj przelew/y"
##204,DZ,ADPH,,"Sumy kwot z zapis|ow"
##205,DZ,ADPH,,"Dane o kontrahencie"
##206,TLD,0,,"     Wszystkie  Niezaznaczone   Do przelew|ow",,yellow/blue&black/white&red/yellow
##210,D,P,,,,,,,,ZMIENNA:p_zap_all,xkwota:x
##211,D,P,,,,,,,,ZMIENNA:p_zap_blok,xkwota:x
##212,D,P,,,,,,,,ZMIENNA:p_zap_ok,xkwota:x
##213,D,P,,,,,,,,ZMIENNA:p_dew_zap_all,xkwota:x
##214,D,P,,,,,,,,ZMIENNA:p_dew_zap_blok,xkwota:x
##215,D,P,,,,,,,,ZMIENNA:p_dew_zap_ok,xkwota:x
##220,D,0,,,,&&lblue/lwhite,,,,POLE:P:nazwa_kl1
##222,D,0,,,,&&lblue/lwhite,,,,POLE:P:nazwa_kl2
##223,0,0,,,,&&lblue/lwhite,&&black/yellow,,,POLE:P:nazwabanku_kl
##221,0,0,,,,&&lblue/lwhite,&&black/yellow,,,POLE:P:numerbanku_kl
##270,LBGT,0,,"Zapisz",,&&lred/lwhite,&&lred/lgreen
##218,D,0,,,,&&lblue/lwhite,&&black/yellow,,,POLE:P:sym_kl
##219,0,0,,,,&&green/lwhite,&&black/yellow,,,POLE:P:vatkontoplat
##263,0,0,,,,&&green/lwhite,&&black/yellow,,,POLE:P:tresc1
##260,0,0,,,,&&green/lwhite,&&black/yellow,,,POLE:P:trans
##261,0,0,,,,&&green/lwhite,&&black/yellow,,,POLE:P:data_plat
##262,0,0,,,,&&green/lwhite,&&black/yellow,,,POLE:P:wartosc
##271,LBGT,0,,"Z%a%pisz",,&&lred/lwhite,&&lred/lgreen
##1,,ADP,,"%W%yb|or"
##8,LBGT,P,,"%S%zukaj"
##9,LBGT,P,,"%N%ast|epny"
##30,LBGT,P,,"%F%iltr"
##2,LBGT,P,,"%O%pis zapisu"
##31,LBGT,P,,"Raporty"
##32,LBGT,P,,"%R%ozrachunki"
##37,LBGT,P,,"Przelewy"
##337,LBGT,P,,"P.na kontrahenta"
##48,LBGT,P,,"Faktury zakupu"
//##33,LBGT,P,,"Za%p%isy wg konta kontrahenta"
##33,LBGT,0,,"Konta",,&&lblue/lwhite
##41,LBGT,0,,"Symbolu",,&&lblue/lwhite
##34,LBGT,P,,"Przelew pojedy|nczy dewizowy"
##35,LBGT,0,,"Kon%t%ami",,&&green/lwhite
##335,LBGT,0,,"Sy%m%bolem",,&&green/lwhite
##36,LBGT,P,,"Generuj dewizowe"
//##41,LBGT,P,,"Za%b%lokuj/Odblokuj"
//##44,LBGT,P,,"Za%z%nacz / Odznacz"
##144,LBGT,0,,"Za%z%nacz",,&&lblue/lwhite
##244,LBGT,0,,"Odznacz",,&&lblue/lwhite
##42,LBGT,P,,"Zaznacz kon%t%rahenta"
##142,LBGT,0,,"Zaznacz",,&&green/lwhite
##242,LBGT,0,,"Odznacz",,&&green/lwhite
##38,LBGT,0,,"Zapis" ,,&&red/lwhite
##39,LBGT,0,,"Wszystko",,&&red/lwhite
##40,B,P,,,'W',,,,,ZMIENNA:klucz,dic:52
##43,LBGT,0,,"Stan kont bankowych",,&&blue/lwhite
##45,LBGT,0,,"Przelicz zaznaczone",,&&blue/lwhite
##46,LBGT,0,,"Przelewy tymczasowe",,&&lblue/lwhite
 #99                                                                       #
 #101                                                                      #

#100                                                               







               
                                                                            #100<
                                                                            
#205
 #220                                  # Symbol/Konto #218    # #219       #
 #222                                  # Tre|s|c .....: #263                 #  
                                         Transakcja : #260                 #
 #223                                  # Termin ....: #261     #
 #221                           # #270 # Kwota .....: #262     #      #271 #
                                                                            #205<
//
% DOK-PRLDOK-MENU-MODIF.XXX,DOK-PRLDOK-MENU-LOOK.XXX
##0,,0,,@5,,&&lred/lwhite
%< DOK-PRLDOK-MENU-X.XXX
#203                           #204
   Przelew : #33    # #41    #  #206                                       #
 Przesy|lka : #35    # #335   #  #210         # #211         # #212         #
                                 #213         # #214         # #215         #
                              #203<                                        #204<
 #0      # #46               #       #43               # #45               #
// --------
% PRLDOK-MENU-X.XXX
PRZYCISK_CANCELID = 0
##DEFWINDOW = 2,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Lista wyszukanych transakcji do przelew|ow"
##101,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY
##100,0,ACP,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY
##200,DZ,ACPH,,"Wyszukiwanie:"
##201,DZ,ACPH,,"Wy|swietl:"
##202,DZ,ACPH,,"Zapisy:"
##203,DZ,ACPH,,"Generuj przelew/y"
##204,DZ,ACPH,,"Sumy kwot z zapis|ow:"
##206,TLD,0,,"     Wszystkie  Niezaznaczone   Do przelew|ow",,yellow/blue&black/white&red/yellow
##210,D,P,,,,,,,,ZMIENNA:p_zap_all,xkwota:x
##211,D,P,,,,,,,,ZMIENNA:p_zap_blok,xkwota:x
##212,D,P,,,,,,,,ZMIENNA:p_zap_ok,xkwota:x
##213,D,P,,,,,,,,ZMIENNA:p_dew_zap_all,xkwota:x
##214,D,P,,,,,,,,ZMIENNA:p_dew_zap_blok,xkwota:x
##215,D,P,,,,,,,,ZMIENNA:p_dew_zap_ok,xkwota:x
##220,D,0,,,,&&lblue/lwhite,,,,POLE:P:nazwa_kl1
##221,D,0,,,,&&lblue/lwhite,,,,POLE:P:numerbanku_kl
##222,D,0,,,,&&lblue/lwhite,,,,POLE:P:swift
##1,,ADP,,"%W%yb|or"
##8,LBGT,P,,"%S%zukaj"
##9,LBGT,P,,"%N%ast|epny"
##30,LBGT,P,,"%F%iltr"
##2,LBGT,P,,"%O%pis zapisu"
##31,LBGT,P,,"Raporty"
##32,LBGT,P,,"%R%ozrachunki"
##37,LBGT,P,,"Wystawione przelewy"
##337,LBGT,P,,"Przelewy kontrahenta"
##48,LBGT,P,,"Faktury zakupu"
//##33,LBGT,P,,"Za%p%isy wg konta kontrahenta"
##33,LBGT,0,,"Kon%t%a",,&&lblue/lwhite
##41,LBGT,0,,"Sy%m%bolu",,&&lblue/lwhite
##34,LBGT,P,,"Przelew pojedy|nczy dewizowy"
##35,LBGT,0,,"Kontami",,&&green/lwhite
##335,LBGT,0,,"Symbolem",,&&green/lwhite
##36,LBGT,P,,"Generuj dewizowe"
//##41,LBGT,P,,"Za%b%lokuj/Odblokuj"
//##44,LBGT,P,,"Za%z%nacz / Odznacz"
##144,LBGT,0,,"Za%z%nacz",,&&lblue/lwhite
##244,LBGT,0,,"Odznacz",,&&lblue/lwhite
##42,LBGT,P,,"Zaznacz kon%t%rahenta"
##142,LBGT,0,,"Zazna%c%z",,&&green/lwhite
##242,LBGT,0,,"Odznacz",,&&green/lwhite
##38,LBGT,0,,"Zapis" ,,&&red/lwhite
##39,LBGT,0,,"Wszystko",,&&red/lwhite
##40,B,P,,,'W',,,,,ZMIENNA:klucz,dic:52
##43,LBGT,0,,"Stan kont bankowych",,&&blue/lwhite
##49,B,0,,,,&&lblue/yellow,,,,ZMIENNA:waluta_kontrahenta,dic:0
##45,LBGT,0,,"Przelicz zaznaczone",,&&blue/lwhite
##46,LBGT,0,,"Przelewy tymczasowe",,&&lblue/lwhite


#101


                                                                            
                                                                                                         #101<



#100
                              
                              
                              

                                                                                                         #100<
                                                                            
 #220                                 # #222      # #221                               #        #0      # 
% PRLDOK-MENU-MODIF.XXX,PRLDOK-MENU-LOOK.XXX
##0,,0,,@5,,&&lred/lwhite
%< PRLDOK-MENU-X.XXX
#200                           #201                                          #202  
 Konto+transakcja:              #2           #    #31        # #32       #     Zapisy: #144   # #244   #
 #7,0,P                      #  #337                #  #37               #     Kontr.: #142   # #242   #
 #8     #  #9     #   #30    #  #48                          #                   Usu|n: #38    # #39    #
                              #200<                                        #201<                   #202<
#203                           #204                                           #43               # #49#
   Przelew : #33    # #41    #  #206                                       #  #45               #
 Przesy|lka : #35    # #335   #  #210         # #211         # #212         #  #46               #
//                                #213         # #214         # #215         #                       
                              #203<                                        #204<
// --------
// --------
// --------
// --------
// --------
// REKORD
// --------
% PRLDOK.XXX
PRZYCISK_CANCELID = 0
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Opis danych do przelew|ow"
##9,D,0,,,,lred/black&lwhite/black&blue/yellow,,,,ZMIENNA:naglowek_txt
##17,0,P,,,,,,,,POLE:P:nazwa_kl1
##18,0,P,,,,,,,,POLE:P:nazwa_kl2
##19,0,P,,,,,,,,POLE:P:nazwabanku_kl
##20,0,P,,,,,,,,POLE:P:numerbanku_kl
##10,0,P,,,,,,,,POLE:P:vatkontoplat
##11,0,P,,,,,,,,POLE:P:tresc1
##12,0,P,,,,,,,,POLE:P:trans
##13,0,P,,,,,,,,POLE:P:data_plat
##14,0,P,,,,,,,,POLE:P:wartosc
##15,0,P,,,,,,,,POLE:P:kwota_dew
##16,0,P,,,,,,,,POLE:P:waluta
##21,0,P,,,,,,,,POLE:P:slownieprior_kl
##22,0,P,,,,,,,,POLE:P:blokada
##23,D,P,,,,,,,,POLE:P:swift
##24,D,P,,,,,,,,POLE:P:kurs_dew
##200,DZ,ADH,,"Informacje o kontrahencie:",,,,,&&white/blue
##201,DZ,ADH,,"Informacje o zapisie:",,,,,&&white/blue
// #9                       #

#200

// Priorytet kontrahenta - #21                     #  Znacznik #22#
 Nazwa cz|e|s|c 1         - #17                                   #
 Nazwa cz|e|s|c 2         - #18                                   #
 Nazwa banku           - #19                                   #
 SWIFT                 - #23                                     #
 Numer konta bankowego - #20                                   #
                                                                  #200<
#201

 Konto w planie kont   - #10      #
 Tre|s|c zapisu          - #11                                   #
 Transakcja            - #12        # 
 Termin p|latno|sci      - #13     #
 Kwota w z|lotych       - #14       #  Waluta #16# #15       #
                                                                  #201<
// Kwota w walucie  #15       #  Waluta #16  #
//
//
% PRLDOKREKORD-PRZELICZ-ZL.ALG
  przed_kwota_dew := round[przed_kwota_zl/rejwezp_k["p:kurs_dew"],2]
  exdialogop["wyswietlpozycje","32"]
  
% PRLDOKREKORD-PRZELICZ-DEW.ALG
  if (rejwezp_s["P:waluta"] == "PLN") ExitAlg[0]
  zl1 := przed_kwota_zl
  zl2 := round[przed_kwota_dew*rejwezp_k["p:kurs_dew"],2]
  if (not(round[zl1,0] = round[zl2,0])) przed_kwota_zl := round[przed_kwota_dew*rejwezp_k["p:kurs_dew"],2]
  exdialogop["wyswietlpozycje","31"]
  
% PRLDOKREKORD-AKCEPTUJESZ-ZAPISZ.ALG
  if (yesnalert["Czy zapisa|c zmiany w zapisie przelewu ?"]) goto dalej_0
    ExitAlg[0]
  dalej_0:
  if (rejwezp_s["p:waluta"] == "PLN") goto dalej_01
    if ( (rejwezp_k["p:kwota_dew"] = 0) or (rejwezp_k["p:kwota_dew"] = .) )goto dalej_01
    if (przed_kwota_dew <= rejwezp_k["p:o_kwota_dew"]) goto dalej_011
    okalert["Podana kwota jest wi|eksza ni|z kwota zapisu ! "]
    ExitAlg[0]
  dalej_011:
  goto dalej_02
  dalej_01:
    if (przed_kwota_zl <= rejwezp_k["p:o_wartosc"]) goto dalej_02
    okalert["Podana kwota jest wi|eksza ni|z kwota zapisu ! $ "+przed_kwota_zl+" - "+rejwezp_k["p:o_wartosc"]]
    ExitAlg[0]
  dalej_02:
  if (przed_kwota_zl = rejwezp_k["p:o_wartosc"]) goto zmiana_tr
    if (not(strin["& ZAPL. CZESCIOWA",przed_tresc] > -1)) przed_tresc := "& ZAPL. CZESCIOWA "+przed_tresc
  zmiana_tr:
  xrejwstawp_s["p:tresc1",przed_tresc]
  xrejwstawp_k["p:wartosc",przed_kwota_zl]
  xrejwstawp_k["p:kwota_dew",przed_kwota_dew]
  rejop["p:zapiszrek",""]
  exdialogop["wyswietlpozycje","30"]
  exdialogop["wyswietlpozycje","11"]
  exdialogop["wyswietlpozycje","14"]
  exdialogop["wyswietlpozycje","15"]
  callalg["PRLDOK-PRZELEW-PRZELICZ-REC"]
  callalg["PRLDOK-PRZELEW-PRZELICZ-STANY"]
//  
% PRLDOK-REKORD-1.DLG,PRLDOK-REKORD-0.DLG,PRLDOK-REKORD-3.DLG
%<PRLDOK.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% PRLDOK-REKORD-2.DLG
%<PRLDOK.XXX
%<REKORD-OK-BUTT.XXX
//
% PRZELEWY_LOOK-EDYCJA.DIC
"PRLDOK",0

% PRZELEWY_LOOK_TR-EDYCJA.DIC
"PRLDOK",0

% PRLDOKMENU.MEN
D=,"",AB
LINIA-DIALOG = PRZELEWY_LOOK-EDYCJA,"Wygenerowane przelewy"
34,,,,6,"Symbol"
30,,,,28,"Nazwa"
43,,,,11,"SWIFT"
33,,,,26,"Konto"
3,,,,12,"Kwota PLN"
8,,,,3,"DEW"
6,,,,10,"Kwota DEW"

% PRLDOKMENU-TRANSAKCJE.MEN
D=,"",AB
LINIA-DIALOG = PRZELEWY_LOOK_TR-EDYCJA,"Wygenerowane przelewy"
//38,,,,10,"Nr"
2,,,,20,"Transakcja"
4,,,,8,"Termin"
3,,,,12,"Kwota PLN"
8,,,,3,"DEW"
6,,,,12,"Kwota DEW"
1,,,,,"Opis"
//
% PRLDOK-DRUKUJ.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  CallAlgFile["przelewy\przelewy_tabdrukuj.sl","SL.PDRUKUJ_PRZELEWY->drukuj"]
  ExitAlg[0]
//
D_POS := 0
PARAM_REJ := "PRLDOK.RXR"
RejOp["a:OtworzRejSprawdz","KOL-NAGL.RJR"]
RejOp["b:OtworzRejSprawdz","KOL-ELEM.RJR"]
RejOp["X:OtworzRejSprawdz",PARAM_REJ]
RejInitN["X:SZUKAJ_WARUNEK"]
PARAM_NAZWA := "Zapisy do przelew|ow"
PARAM_DIALID := 1
PARAM_SLOW := "PRLDOKX"
PARAM_INDNAME := "vatkontoplat"
PARAM_REJX := "X:"
PARAM_WAR_DIALOG := "PRLDOK-WAR"
KOLUMNY_STANDARDOWE_POLE_MODIF := ""
PARAM_STANDARDOWY := "KOL-DRUKUJ-STANDARDOWE-KOLUMNY"
param := ""
ExDialogOp["IdzDoDialogu","KOL-DRUKUJ-PRLDOK"]
if (D_POS = 5) goto koniec
  PARAM_KEYFIELD := 1
  PARAM_PARAMID := "DRUKUJ-PRLDOK"
  PARAM_NAZWAWYDRUKU := "Wydruk zapis|ow do przelew|ow wygenerowanych z dokument|ow ksi|egowych"
  CallAlg["KOL-DRUKUJ-DRUKUJ"]
koniec:
RejOp["A:ZamknijRej",""]
RejOp["B:ZamknijRej",""]
RejOp["X:ZamknijRej",""]
RejUsunN["X:SZUKAJ_WARUNEK"]
// -----------
% KOL-DRUKUJ-PRLDOK.DLG
PRZYCISK_CANCELID = 5
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Raport kolumnowy"
##200,DZ,ADH,,"Sortuj wed|lug:"
##201,DZ,ADH,,"Zakres:"
%< KOL-DRUKUJ-STANDARD-XXX.XXX
##13,0,P,,"konta",,,,,,ZMIENNA:PARAM_KEYID,,A,1,"3"
##16,0,P,,"konto+transakcja",,,,,,ZMIENNA:PARAM_KEYID,,,1,"4"
##17,0,P,,"symbol+transakcja",,,,,,ZMIENNA:PARAM_KEYID,,,1,"10"
##15,D,0,,,,&&blue/yellow,,,,WYRAZENIE:PARAM_NAZWA
#15                     #  Uk|lad kolumn: #52         #
                           Szeroko|s|c:   #54# znak|ow
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
//³  Zakres kont:                                            ³  
//³           od #10             #   #0                      ³
//³           do #11             #                       #0  ³
//³                                                          ³
³                                                          ³
³  #12         #   #53         #   #1                      ³
³                                                      #1  ³
³                                                          ³
³ Sortuj wed|lug:                                           ³ 
³ #13                 #                                    ³ 
³ #16                 #                                    ³ 
³ #17                 #                                    ³ 
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

    #2             #                    #5            #

% TABLICA-AKCJI-KOL-DRUKUJ-PRLDOK
%< TABLICA-AKCJI-KOL-DRUKUJ-START
//
% USTAL-KONTO-ROZCHODOW.ALG
// konto_kontrahenta jako zmienna
if (not(rejop["XY:otworzrej","MULTI_DEKRETY_R.RXR"])) ExitAlg[0]
if (not(rejop["XY:wezpierwszyrek",""])) goto koniec
petla:
if (strin[rejwezp_s["XY:p_plan"],konto_kontrahenta] >-1) goto rob_ko
goto next
rob_ko:
kontobank := rejwezp_s["XY:p_konto"]
goto koniec
next:
if (rejop["XY:weznastepnyrek",""]) goto petla
koniec:
rejop["xy:zamknijrej",""]
//
% PRZENIES-PRLDOK.ALG
  RejOp["X:OtworzRejSprawdz","PRLDOK.RXR"]
  RejOp["X:ZmienKluczRej","3"]
  if (not(RejOp["X:ZnajdzRek",konto_kontrahenta])) goto koniec
  symbol_kontrahenta := rejwezp_s["x:sym_kl"]
  rejwstawp_k["dokid",1]
  llp := 1
  if (odl_key == "3") goto petla
    RejOp["X:ZmienKluczRej","7"]
    rejop["x:znajdzrek",symbol_kontrahenta]
  petla:
  if (not RejWezP_L["X:blokada"]) goto nextx
  if (odl_key == "3") goto wg_konta01
    if (not(RejWezP_S["X:sym_kl"] = symbol_kontrahenta)) goto koniec1
    goto wg_konta02
  wg_konta01:
    if (not(RejWezP_S["X:vatkontoplat"] = konto_kontrahenta)) goto koniec1
  wg_konta02:
//  
  jest_przelew := .N.
  konto_klient := konto_kontrahenta
  trans_klient := RejWezP_S["X:trans"]
  konto_nr_kontrahenta := RejWezP_S["X:numerbanku_kl"] 
  swift_kontrahenta := RejWezP_S["X:swift"] 
//  
  if (jest_przelew) goto nextx
  RejOp["A:DodajRek",""]
  RejOp["X:PrzeniesPola","A:"]
  if (not(symbol_kontrahenta == "")) xrejwstawp_s["a:s_klient",symbol_kontrahenta]
  xrejwstawp_k["a:dokidzap",1]
  xrejwstawp_k["a:dokidzap1",llp]
  if (rejwezp_k["x:wartosc"] > 0) xrejwstawp_s["typ_prl",rejwezp_s["x:typ_prl"]]
  xrejwstawp_s["a:f_nr_numer",rejwezp_s["x:typ_prl"]]
  RejOp["A:ZapiszRek",""]
//  
  if (wer == "ZL") RejWstawP_K["Kwota_przel",RejWezP_K["kwota_przel"]+RejWezP_K["A:wartosc"]]
  if (wer == "DEW") RejWstawP_K["Kwota_przel_dew",RejWezP_K["kwota_przel_dew"]+RejWezP_K["A:kwota_dew"]]
// zapisy 
  p_id := RejWezP_K["X:dokidzap1"]
  konto_klient := konto_kontrahenta
  CallAlg["plan-klient"]
  if (not(rozl)) goto nextx
  RejOp["B:DodajRek",""]
  d_string := ""
//  d_string := RejWezP_S["x:trans"]
  CallAlg["rozliczeniowe-zmiana"]
  if (d_string = "") d_string := "PRZELEW"
  xRejWstawP_S["B:konto_rzl",d_string]
//
  trans := trans_klient
  callalg["DAJ-TRANS-RZL"]
  xRejWstawP_S["B:konto_rzl",d_string]
//  
  xRejWstawP_K["B:kwota_rzl",RejWezP_K["A:wartosc"]]
  xRejWstawP_K["B:kwota_rzl_dew",RejWezP_K["A:kwota_dew"]]
  xRejWstawP_K["B:dokidzap1",RejWezP_K["A:dokidzap1"]]
  xRejWstawP_K["B:dokidzap0",RejWezP_K["A:dokidzap"]]
  RejOp["B:ZapiszRek",""]  
  nextx:
  llp := llp+1
  if (RejOp["X:WezNastepnyRek",""]) goto petla
  koniec1:
// 
    kontobank := rejwezp_s["konto_przel"]
    callalg["USTAL-KONTO-ROZCHODOW"]
    rejwstawp_s["konto_przel",kontobank]
    callalg["PRZELEW-KONTOBANK-GET"]
    s_klient := symbol_kontrahenta
    RejWstawP_S["s_klient",symbol_kontrahenta]
//
    RejWstawP_S["vatkontoplat",konto_kontrahenta]
    stary_klient := konto_kontrahenta
    kluczkl := konto_kontrahenta
    konto_klient := konto_kontrahenta
    CallAlg["plan-klient"]
    RejOp["C:OtworzRejSprawdz","REJESTRKL.RXR"]
    if (kluczkl == "") kluczkl := symbol_kontrahenta
    if (not(kluczkl == "")) rozr := .T.
    if (RejOp["C:ZnajdzRek",kluczkl]) goto okklient
      goto koniec2
    okklient:
    s_klient := RejWezP_S["C:kl_sym"]
    nazwa_kl1 := RejWezP_S["C:kl_nazwa1"]
    nazwa_kl2 := RejWezP_S["C:kl_nazwa2"]
    kodmiasto_kl := RejWezP_S["C:kl_kodmiasto"]
    adres_kl := RejWezP_S["C:kl_adres"]
    bank := RejWezP_S["C:kl_nazwabanku"]
    nrbank := RejWezP_S["C:kl_konto"]
    swift := RejWezP_S["C:kl_swift"]
    if (rozr) xRejWstawP_S["s_klient",S_klient]
    if (rozr) xRejWstawP_S["kl_plus",""]
    if (not(rozr)) xRejWstawP_S["s_klient",""]
    if (not(rozr)) xRejWstawP_S["kl_plus",s_klient]
    xRejWstawP_S["nazwa_kl1",nazwa_kl1]
    xRejWstawP_S["nazwa_kl2",nazwa_kl2]
    xRejWstawP_S["kodmiasto_kl",kodmiasto_kl]
    xRejWstawP_S["adres_kl",adres_kl]
    xRejWstawP_S["nazwabanku_kl",bank]
    xRejWstawP_S["numerbanku_kl",konto_nr_kontrahenta]
    xRejWstawP_S["swift",swift_kontrahenta]
    koniec2:
    RejOp["C:ZamknijRej",""]
  koniec:
  RejOp["X:ZamknijRej",""]
//
% PRLDOK-PRZELEWY-USUN-CZYSC.ALG
// -------------
    tmp_test := .T.
 if (not(rejop["tx:otworzrej","TMP_PRZELEW.RJR"])) goto go_01
    tmp_test := .N.
    rejop["tx:wyczyscrej",""]
    rejop["tx:zamknijrej",""]
 go_01:
 if (not(rejop["tx:otworzrej","TMP_PRZEZAP.RJR"])) goto go_02
    tmp_test := .N.
    rejop["tx:wyczyscrej",""]
    rejop["tx:zamknijrej",""]
 go_02:
 if (not(rejop["tx:otworzrej","TMP_PRZEZAP1.RJR"])) goto go_03
    tmp_test := .N.
    rejop["tx:wyczyscrej",""]
    rejop["tx:zamknijrej",""]
 go_03:
    tmp_test := .N.
    if (not RejOp["TX:usunplikrej","TMP_PRZELEW.RJR"]) tmp_test := .T.
    if (not RejOp["TX:usunplikrej","TMP_PRZEZAP.RJR"]) tmp_test := .T.
    if (not RejOp["TX:usunplikrej","TMP_PRZEZAP1.RJR"]) tmp_test := .T.
    if (not(tmp_test)) goto no_problem_00
            okalert["Problem z oczyszczeniem danych !"]
            goto koniec
    no_problem_00:
    koniec:
// -------------
% PRLDOK-PRZELEWY-ZL.ALG
//  if (JestUprawnienie["PRZELEWY","A","Nie masz uprawnie|n do wystawiania",.T.]) goto dalej00
//    exitalg[0]
//  dalej00:
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  callalg["PRLDOK-PRZELEWY-USUN-CZYSC"]
  odl_key := "14"
  if (d_pos = 35) odl_key := "3"
  if (d_pos = 335) odl_key := "7"
  if (d_pos = 336) odl_key := "15"
  p_modif := .T.
  id_modul := ""
  ilosc_zapis := 3
  na_dzien := d_dzisiaj
//  termin_na_dzien1 := d_dzisiaj
//  termin_na_dzien2 := d_dzisiaj
  termin_na_dzien1 := ''
  termin_na_dzien2 := ''
  termin_na_dzien := .T.
  tresc := "zap|lata za f-ry"
            tresc_temp := ""
            callalg["wez_param_tresc"]
  tresc := tresc_temp
  priorytet := ""
  tempkontobank := ""
            callalg["wez_param_kontobank"]
  nazwa_banku := ""
  numer_banku := ""
  swift_banku := ""
  format_przelew := ""
  ksiega_old := ""
  modem := .N.
  wer := "ZL"
  if (not(waluta_kontrahenta == "PLN")) wer := "DEW"
  prldok_rezygnujesz := .N.
  zapisy := .T.
  zapisyt := .T.
  tzapisy := .T.
  k_own := 0
  k_oma := 0
  p_zap_ok_war := 0
  ustaw_status := "autom"
// -------------
  ExDialogOp["IdzDoDialogu","PRLDOK-GENERUJ-ZL"]
  if (prldok_rezygnujesz) goto koniec  
    typ_prl_banku := ""
    CallAlg["kontabank"]
    zapx := RejWezP_K["P:RejestrRekPos"]
    if (zapisyt) tresc := ""
  
    if (tzapisy) id_modul := ""
    if (not(tzapisy)) id_modul := "TMP_"
  callalg["PRLDOK-PRZELEWY-USUN-CZYSC"]
//  okalert[""+odl_key]
  if (odl_key == "3") CallAlg["GENERUJ-AUTO-PRZELEWY-KONTO"]
  if (odl_key == "7") CallAlg["GENERUJ-AUTO-PRZELEWY-KL-SYM"]
  if (odl_key == "15") CallAlg["GENERUJ-AUTO-PRZELEWY-KONTO-NR"]
  if (odl_key == "14") CallAlg["GENERUJ-AUTO-PRZELEWY"]
  txt_komunikat := "Prosz|e czeka|c..."
  CallAlg["komunikat-work"]
  if (not(tzapisy)) goto nie_czysc
    CallALG["oczysc-prldok"]
    goto skip_00
  nie_czysc:
    CallALG["oczysc-prldok-znacznik"]
    id_modul := ""
    okalert["Przelewy zosta|ly wygenerowane jako tymczasowe do edycji !"]
  skip_00:
  CallAlg["komunikat-down"]
//
  if (tzapisy) ExDialogOp["usunrekordzmenu","100"]
  
  RejOp["P:WezPierwszyRek",""]
  ExDialogOp["WyswietlPozycje","100"] 
  callalg["PRLDOK-PRZELEW-RELOAD"]  
//  exdialogop["wyswietlpozycje","210"]
//  exdialogop["wyswietlpozycje","211"]
//  exdialogop["wyswietlpozycje","212"]
//  exdialogop["wyswietlpozycje","7"]
//  ExDialogOp["WyswietlPozycje","102"] 
  if (not ExDialogOp["PusteOkno","100"]) goto koniec
    OkAlert["Brak danych do wy|swietlania !"]
    ExitAlg[0]
  koniec:
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
//  
% PRLDOK-GENERUJ-ZL.DLG
PRZYCISK_CANCELID = 21
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Generowanie przelew|ow"
##11,0,ACP,,,,,,,,ZMIENNA:tempkontobank,string:480
##15,0,ACP,,,,,,,,ZMIENNA:priorytet,dic:96
##10,0,ACP,,,,,,,,ZMIENNA:na_dzien,ydate
##34,0,P,,"Przelewy na dzie|n",,,,,,ZMIENNA:termin_na_dzien,,A,3,T
##35,0,P,,"Termin jako data ",,,,,,ZMIENNA:termin_na_dzien,,,3,N
##12,0,ACP,,,,,,,,ZMIENNA:termin_na_dzien1,ydate
##14,0,ACP,,,,,,,,ZMIENNA:termin_na_dzien2,ydate
##13,0,ACP,,,,,,,,ZMIENNA:tresc
##16,0,ACP,,,,,,,,ZMIENNA:ilosc_zapis,word
##30,0,P,,"zaznacza|c    ",,,,,,ZMIENNA:ZAPISY,,A,1,T
##31,0,P,,"nie zaznacza|c",,,,,,ZMIENNA:ZAPISY,,,1,N
##32,0,P,,"Tre|s|c z zapisu",,,,,,ZMIENNA:ZAPISYT,,A,2,T
##33,0,P,,"Napisz swoj|a   ",,,,,,ZMIENNA:ZAPISYT,,,2,N
##36,0,P,,"ostateczna",,,,,,ZMIENNA:TZAPISY,,A,4,T
##37,0,P,,"tymczasowa",,,,,,ZMIENNA:TZAPISY,,,4,N
##20,,ADP,,@3
##21,,ADP,,@4
##200,DZ,ADPH,,"HOME BANKING"
##201,DZ,ADPH,,"Informacje o stanie konta bankowego"
##203,DZ,ADPH,,"Przesy|lka"
##202,TLD,0,,"Konto:              Obroty Wn     Obroty Ma            Saldo",,yellow/blue&black/white&red/yellow
##210,D,P,,,,,,,,ZMIENNA:tempkontobank
##211,D,P,,,,,,,,ZMIENNA:k_own,xkwota:x
##212,D,P,,,,,,,,ZMIENNA:k_oma,xkwota:x
##213,D,P,,,,,,,,WYRAZENIE:"S[k_own,k_oma]",xkwota:x
##214,D,P,,,,,,,,WYRAZENIE:"S[k_oma,k_own]",xkwota:x
##215,D,P,,,,,,,,ZMIENNA:p_zap_ok,xkwota:x
##216,D,P,,,,,,,,WYRAZENIE:"S[k_own,k_oma+p_zap_ok]",xkwota:x
##217,D,P,,,,,,,,WYRAZENIE:"S[k_oma+p_zap_ok,k_own]",xkwota:x
##218,D,P,,,,,,,,ZMIENNA:p_zap_ok_war,xkwota:x
##219,D,P,,,,,,,,WYRAZENIE:"S[k_own,k_oma+p_zap_ok_war]",xkwota:x
##220,D,P,,,,,,,,WYRAZENIE:"S[k_oma+p_zap_ok_war,k_own]",xkwota:x


 P|latno|s|c z konta     #11           #      Kontrahenci o priorytecie #15#<


 #34               #  #10    #      Dane w terminie  #12    # - #14    #
 #35               #

 #32               #
 #33               #  #13                                              #

                                         #203           #200 
   Ilo|s|c zapis|ow      #16#                #36        #   #30           #
   w przelewie.                           #37        #   #31           #
                                                       #203<           #200<
#201 
 #202                                                                  #
 #210          # #211        # #212        # #213        # #214        #
 Kwota wszystkich rozchod|ow    #215        # #216        # #217        #
 Kwota rozchod|ow z okresu      #218        # #219        # #220        #
                                                                        #201<

               #20           #       #21           #
//
% TABLICA-AKCJI-PRLDOK-GENERUJ-ZL
//"AKCJA-PRZED-WYSWIETLENIEM",PRLDOK-GENERUJ-ZL-PRZED
"AKCJA-BUTTON20",PRLDOK-GENERUJ-ZL-AKCEPTUJESZ
"AKCJA-BUTTON21",PRLDOK-GENERUJ-ZL-REZYGNUJESZ
"AKCJA-PO-POLU11",PRLDOK-GENERUJ-ZL-KONTO
"AKCJA-PO-POLU12",PRLDOK-GENERUJ-ZL-ZLICZ
"AKCJA-PO-POLU14",PRLDOK-GENERUJ-ZL-ZLICZ
"AKCJA-PO-POLU15",PRLDOK-GENERUJ-ZL-ZLICZ
//
% PRLDOK-GENERUJ-ZL-PRZED.ALG
  k_own := 0
  k_oma := 0
  exdialogop["idzdopozycji","11"]
//
% PRLDOK-GENERUJ-ZL-KONTO.ALG
//  ExitAlg[0]
// linux  
  if (tempkontobank == "") ExitAlg[0]
  k_own := O[tempkontobank+" BRWn"]
  k_oma := O[tempkontobank+" BRMa"]
// pobranie ilosc z definicji konta
  ilosc_gen := ilosc_zapis
  RejOp["XX:OtworzRejSprawdz","KONTABANK.RXR"]
  if (RejOp["XX:ZnajdzRek",tempkontobank]) ilosc_gen := rejwezp_k["XX:generator_zapisy"]
  RejOp["XX:ZamknijRej",""]
  if (not(ilosc_gen = .)) ilosc_zapis := ilosc_gen
//
  callalg["PRLDOK-GENERUJ-ZL-WYSWIETL"]
//  
% PRLDOK-GENERUJ-ZL-ZLICZ.ALG
  ExitAlg[0]
// linux  
  p_zap_ok_war := 0
  txt_komunikat := "Zlicznie transakcji z warunku. Prosz|e czeka|c !"
  CallAlg["komunikat-work"]
//
  if (not(rejop["PX:Otworzrejsprawdz","PRLDOK.RXR"])) goto koniec
  if (rejop["px:wezpierwszyrek",""]) goto dalej
    rejop["px:zamknijrej",""]
     goto koniec
  dalej:
    disptext["."]
    if (priorytet = "") goto dalej000
    if (rejwezp_s["px:prior_kl"] == priorytet) goto dalej000
    goto next
    dalej000:
    if ((not rejwezp_l["px:blokada"]) or (rejwezp_s["px:prior_kl"] == "99") or (rejwezp_s["px:prior_kl"] == "98")) goto next
    if ((termin_na_dzien1 = '') and (termin_na_dzien2 = '')) goto p_all
    if ((RejWezP_D["PX:data_plat"] < termin_na_dzien1) or (RejWezP_D["PX:data_plat"] > termin_na_dzien2)) goto next
//
    p_all:
    p_zap_ok_war := p_zap_ok_war + rejwezp_k["px:wartosc"]
  next:
  if (rejop["px:weznastepnyrek",""]) goto dalej
  rejop["px:zamknijrej",""]
  koniec:
  CallAlg["komunikat-down"]
  callalg["PRLDOK-GENERUJ-ZL-WYSWIETL"]
//
//
% PRLDOK-GENERUJ-ZL-WYSWIETL.ALG
  exdialogop["wyswietlpozycje","16"]
  exdialogop["wyswietlpozycje","210"]
  exdialogop["wyswietlpozycje","211"]
  exdialogop["wyswietlpozycje","212"]
  exdialogop["wyswietlpozycje","213"]
  exdialogop["wyswietlpozycje","214"]
  exdialogop["wyswietlpozycje","215"]
  exdialogop["wyswietlpozycje","216"]
  exdialogop["wyswietlpozycje","217"]
  exdialogop["wyswietlpozycje","218"]
  exdialogop["wyswietlpozycje","219"]
  exdialogop["wyswietlpozycje","220"]
//
% PRLDOK-GENERUJ-ZL-REZYGNUJESZ.ALG
  prldok_rezygnujesz := .T.
  ExDialogOp["KoniecWykonywania",""]
% PRLDOK-GENERUJ-ZL-AKCEPTUJESZ.ALG
  if (not(na_dzien = '')) goto dalej0
    OkAlert["Podaj na jaki dzie|n wystawi|c przelewy !"]
    ExitAlg[0]
  dalej0:
  if (not(tempkontobank = "")) goto dalej1
    OkAlert["Podaj konto bankowe !"]
    ExitAlg[0]
  dalej1:
  if (not(priorytet = "")) goto dalej2
    if (YesAlert["Priorytet kontrahent|ow nie zosta|l podany ! $ Czy chcesz wykona|c polecenie dla wszystkich kontrahent|ow ?"]) goto dalej20
    ExitAlg[0]
  dalej20:
  priorytet := ""
  dalej2:
  if ((termin_na_dzien1 = '') and (termin_na_dzien2 = '')) goto data0
    goto dalej3
  data0:
    if (YesAlert["Brak podanego zakresu termin|ow p|latno|sci ! $ Czy generowa|c przelewy ?"]) goto dalej3
    ExitAlg[0]
  dalej3:
  ExDialogOp["KoniecWykonywania",""]
//
//
// 
% GENERUJ-AUTO-PRZELEWY.ALG
if (not FinnOp["@1openmainx",""]) ExitAlg[0]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.

if (RejOp["C:OtworzRej","REJESTRKL.RXR"]) goto skip00
  OkAlert["Nie mog|e otworzy|c rejestru kontrahent|ow !"]
  FinnOp["@1Close",""]
  ExitAlg[0]
skip00:
if (RejOp["OtworzRejTemp",id_modul+"PRZELEW.RJR"]) GOTO skip01
 Okalert["Nie mog|e otworzy|c rejestru z przelewami !"]
goto koniec
skip01:
if (RejOp["A:OtworzRejTemp",id_modul+"PRZETMP.RJR"]) goto skip02
 Okalert["Nie mog|e otworzy|c rejestru temp z przelewami !"]
 RejOp["ZamknijRej",""]
goto koniec
skip02:
if (RejOp["B:OtworzRejTemp",id_modul+"PRZETMP1.RJR"]) goto skip03
 Okalert["Nie mog|e otworzy|c rejestru z zapisami !"]
 RejOp["ZamknijRej",""]
 RejOp["A:ZamknijRej",""]
goto koniec
skip03:
RejOp["B:ZmienKluczRej","2"]
if (RejOp["PP:OtworzRejSprawdz","PRLDOK.RXR"]) goto skip04
  OkAlert["Nie mog|e otworzy|c rejestru z zapisami !"]
  goto koniec1
skip04:
//
//RejOp["P:ZmienKluczRej","14"]
RejOp["P:ZmienKluczRej",odl_key]
//
txt_komunikat := "GENEROWANIE DANYCH PROSZE CZEKA|C ..."
CallAlg["komunikat-work"]
if (not RejOp["P:WezPierwszyRek",""]) goto koniec2
// ------------------ glowna petla --------
suma_zl := 0
suma_dew := 0
petla0:
  if (priorytet = "99") goto next0
//  if (not(RejWezP_S["P:k_status"] == "zaks")) goto next0
  if (not RejWezP_L["P:blokada"]) goto next0
  if ((termin_na_dzien1 = '') and (termin_na_dzien2 = '')) goto p_all
  if ((RejWezP_D["P:data_plat"] < termin_na_dzien1) or (RejWezP_D["P:data_plat"] > termin_na_dzien2)) goto next0
  p_all:
  if (priorytet = "") goto skip_no_prior
    if (not(RejWezP_S["P:prior_kl"] = priorytet)) goto next0
  skip_no_prior:
  if (RejWezP_L["P:k_wystaw"]) goto next0
  jest_przelew := .N.
  konto_klient := RejWezP_S["P:vatkontoplat"]
  DispLine[""+konto_klient]
  trans_klient := RejWezP_S["P:trans"]
// 
//  CallAlg["CZY-JEST-PRZELEW"]
//
  if (jest_przelew) goto next0
  if (not RejOp["DodajRek",""]) goto koniec1
    zap := RejWezP_K["P:RejestrRekPos"]
    RejOp["PP:UstawRekPos",ToStr["#zap#S:0"]]
    disptext["+"]
// --------------------------------
    kluczkl := ""
    rozr := .N.
    dew := .N.
    rozl := .N.
    CallAlg["PLAN-KLIENT"]  
    RejOp["C:ZnajdzRek",kluczkl]
    xRejWstawP_S["s_klient",kluczkl]
    xRejWstawP_S["vatkontoplat",RejWezP_S["P:vatkontoplat"]]
    xRejWstawP_S["nazwa_kl1",RejWezP_S["P:nazwa_kl1"]]
    xRejWstawP_S["nazwa_kl2",RejWezP_S["P:nazwa_kl2"]]
    if (rozr) xRejWstawP_S["kodmiasto_kl",RejWezP_S["C:kl_kodmiasto"]]
    if (rozr) xRejWstawP_S["adres_kl",RejWezP_S["C:kl_adres"]]
    xRejWstawP_S["nazwabanku_kl",RejWezP_S["P:nazwabanku_kl"]]
    bank := RejWezP_S["P:numerbanku_kl"]
    xRejWstawP_S["numerbanku_kl",bank]
    xRejWstawP_S["swift",RejWezP_S["P:swift"]]
    xRejWstawP_D["Data_przel",na_dzien]
    if ((not(termin_na_dzien)) and (not(pustepole["p:data_plat"]))) xRejWstawP_D["Data_przel",RejWezP_D["P:data_plat"]]
    xRejWstawP_S["konto_przel",tempkontobank]
    xRejWstawP_L["zaznacz",zapisy]
    if ((not(pustepole["P:waluta"])) or (not(rejwezp_s["P:waluta"] == "PLN")) ) xRejWstawP_S["waluta",RejWezP_S["P:waluta"]]
    if ((not(pustepole["P:waluta"])) or (not(rejwezp_s["P:waluta"] == "PLN")) ) xRejWstawP_D["Data_kursu",na_dzien]
    xrejwstawP_S["priorytet_kl",rejwezP_S["P:prior_kl"]]
    xRejWstawP_S["status","autom"]
    xrejwstawp_S["typ_prl",rejwezP_S["P:typ_prl"]]
// --------------------------------
  zap_xlp := 0
  petla1:
    if (not(RejWezP_S["PP:vatkontoplat"] = konto_klient)) goto zapisz
//
    if (termin_na_dzien) goto skip_no_termin
    if (rejwezp_d["Data_przel"] = rejwezp_d["pp:data_plat"]) goto skip_no_termin
    goto zapisz
    skip_no_termin:
//
    if (not RejWezP_L["PP:blokada"]) goto next1
    if ((termin_na_dzien1 = '') and (termin_na_dzien2 = '')) goto p_all0
    if ((RejWezP_D["PP:data_plat"] < termin_na_dzien1) or (RejWezP_D["PP:data_plat"] > termin_na_dzien2)) goto next1
    p_all0:
    if (priorytet = "") goto skip_no_prior1
    if (not(RejWezP_S["PP:prior_kl"] = priorytet)) goto next1
    skip_no_prior1:
//    if ((RejWezP_D["PP:data_plat"] < termin_na_dzien1) or (RejWezP_D["PP:data_plat"] > termin_na_dzien2)) goto next1
    if (RejWezP_L["PP:k_wystaw"]) goto next1
    trans_klient := RejWezP_S["PP:trans"]
// 
//    CallAlg["CZY-JEST-PRZELEW"]
//
    if (jest_przelew) goto next1
    if (not(RejWezP_S["PP:numerbanku_kl"] = bank)) goto next1
// zapisy przelewu        
    s_txt := ""
    zap_xlp := zap_xlp +1
    
    if (ilosc_zapis < 10) goto robi_wg_zapisow
       goto robi_wg_dlugosci
    robi_wg_zapisow:
       if (zap_xlp > ilosc_zapis) CallAlg["NOWY-KONTRAHENT"]
       goto robi_dalej
    robi_wg_dlugosci:
       s_txt := rejwezp_s["emisja_txt"]+" "+rejwezp_s["PP:trans"]+" "+tostr["#rejwezp_k[""PP:wartosc""]#S:2"]+" "
       s_txt := rejwezp_s["emisja_txt"]+" "+rejwezp_s["PP:trans"]+" "
       callalg["OPIS_TRESC_234"]
       s_txt := tostr["#s_txt#S"]
       if (strlen[s_txt] > ilosc_zapis) CallAlg["NOWY-KONTRAHENT"]    
    robi_dalej:    
    RejOp["A:DodajRek",""]
    RejOp["PP:PrzeniesPola","A:"]    
    if (not (tresc = "")) xRejWstawP_S["A:tresc1",tresc]
    xRejWstawP_K["A:dokidzap1",zap_xlp]
    s_txt := rejwezp_s["emisja_txt"]+" "+rejwezp_s["PP:trans"]+" "+tostr["#rejwezp_k[""PP:wartosc""]#S:2"]+" "
    s_txt := rejwezp_s["emisja_txt"]+" "+rejwezp_s["PP:trans"]+" "
    callalg["OPIS_TRESC_234"]
    s_txt := tostr["#s_txt#S"]
    xrejwstawp_s["emisja_txt",s_txt]
    xrejwstawp_s["typ_prl",rejwezP_S["PP:waluta"]]
    xrejwstawp_S["A:f_nr_numer",rejwezP_S["PP:typ_prl"]]
    RejOp["A:ZapiszRek",""]
    RejOp["ZapiszRek",""]
    Disptext["."]
    RejWstawP_L["PP:k_wystaw",.T.]
    suma_zl := suma_zl + RejWezP_K["PP:wartosc"]
    suma_dew := suma_dew + RejWezP_K["PP:kwota_dew"]
// ------------------ klasyfikacje
      if (not(rozl)) goto next1
        RejOp["B:DodajRek",""]
// sod
	d_string := "BRUTTO"
  trans := rejwezp_s["PP:trans"]
  callalg["DAJ-TRANS-RZL"]
// darek starcom
        xRejWstawP_K["B:dokidzap1",RejWezP_K["A:dokidzap1"]]
        xRejWstawP_S["B:konto_rzl",d_string]
        xRejWstawP_K["B:kwota_rzl",RejWezP_K["PP:wartosc"]]
        xRejWstawP_K["B:kwota_rzl_dew",RejWezP_K["PP:kwota_dew"]]
        RejOp["B:ZapiszRek",""]
        Disptext["+"]
      next1:
// ------------------ klasyfikacje
  if (RejOp["PP:WezNastepnyRek",""]) goto petla1
// --------------------------------
  zapisz:
  DispText[" zapis"]
  xRejWstawP_K["kwota_przel",suma_zl]
  xRejWstawP_K["kwota_przel_dew",suma_dew]
  xRejWstawP_S["status","autom"]
  RejOp["ZapiszRek",""]
  CallAlg["ZAPISZ-PRZELEW"]
  CallALG["ZAZNACZ-PRLDOK"]
  RejOp["WyczyscRej",""]
  RejOp["A:WyczyscRej",""]
  RejOp["B:WyczyscRej",""]
  suma_zl := 0
  suma_dew := 0
  zap_xlp := 0
  next0:
if (RejOp["P:WezNastepnyRek",""]) goto petla0
// ------------------ glowna petla --------
koniec2:
ExDialogOp["UsunDialog","TEMPDIALOG"]
koniec1:
RejOp["ZamknijRej",""]  
RejOp["A:ZamknijRej",""]  
RejOp["B:ZamknijRej",""]  
koniec:
FinnOp["@1Close",""]
ExitAlg[0]
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
% GENERUJ-AUTO-PRZELEWY-KONTO.ALG
if (not FinnOp["@1openmainx",""]) ExitAlg[0]
//
if (RejOp["C:OtworzRej","REJESTRKL.RXR"]) goto skip00
  OkAlert["NIe mog|e otworzy|c rejestru kontrahent|ow !"]
  FinnOp["@1Close",""]
  ExitAlg[0]
skip00:
if (RejOp["OtworzRejTemp",id_modul+"PRZELEW.RJR"]) GOTO skip01
 Okalert["Nie mog|e otworzy|c rejestru z przelewami !"]
goto koniec
skip01:
if (RejOp["A:OtworzRejTemp",id_modul+"PRZETMP.RJR"]) goto skip02
 Okalert["Nie mog|e otworzy|c rejestru temp z przelewami !"]
 RejOp["ZamknijRej",""]
goto koniec
skip02:
if (RejOp["B:OtworzRejTemp",id_modul+"PRZETMP1.RJR"]) goto skip03
 Okalert["Nie mog|e otworzy|c rejestru z zapisami !"]
 RejOp["ZamknijRej",""]
 RejOp["A:ZamknijRej",""]
goto koniec
skip03:
RejOp["B:ZmienKluczRej","2"]
if (RejOp["PP:OtworzRejSprawdz","PRLDOK.RXR"]) goto skip04
  OkAlert["Nie mog|e otworzy|c rejestru z zapisami !"]
  goto koniec1
skip04:
RejOp["P:ZmienKluczRej",odl_key]
RejOp["PP:ZmienKluczRej",odl_key]
txt_komunikat := "GENEROWANIE DANYCH PROSZE CZEKA|C ..."
CallAlg["komunikat-work"]
if (not RejOp["P:WezPierwszyRek",""]) goto koniec2
// ------------------ glowna petla --------
suma_zl := 0
suma_dew := 0
petla0:
  if (RejWezP_L["P:k_wystaw"]) goto next0
  if (priorytet = "99") goto next0
  if (not RejWezP_L["P:blokada"]) goto next0
  if ((termin_na_dzien1 = '') and (termin_na_dzien2 = '')) goto p_all
  if ((RejWezP_D["P:data_plat"] < termin_na_dzien1) or (RejWezP_D["P:data_plat"] > termin_na_dzien2)) goto next0
  p_all:
  if (priorytet = "") goto skip_no_prior
    if (not(RejWezP_S["P:prior_kl"] = priorytet)) goto next0
  skip_no_prior:
  jest_przelew := .N.
  symbol_klient := RejWezP_S["P:sym_kl"]
  konto_klient := RejWezP_S["P:vatkontoplat"]
  DispLine[""+konto_klient]
  trans_klient := RejWezP_S["P:trans"]
// 
//  CallAlg["CZY-JEST-PRZELEW"]
//
  if (jest_przelew) goto next0
  if (not RejOp["DodajRek",""]) goto koniec1
    zap := RejWezP_K["P:RejestrRekPos"]
    RejOp["PP:UstawRekPos",ToStr["#zap#S:0"]]
    disptext["+"]
// --------------------------------
    kluczkl := ""
    rozr := .N.
    dew := .N.
    rozl := .N.
    CallAlg["PLAN-KLIENT"]  
    RejOp["C:ZnajdzRek",kluczkl]
    xRejWstawP_S["s_klient",kluczkl]
    xRejWstawP_S["vatkontoplat",RejWezP_S["P:vatkontoplat"]]
    xRejWstawP_S["nazwa_kl1",RejWezP_S["P:nazwa_kl1"]]
    xRejWstawP_S["nazwa_kl2",RejWezP_S["P:nazwa_kl2"]]
    if (rozr) xRejWstawP_S["kodmiasto_kl",RejWezP_S["C:kl_kodmiasto"]]
    if (rozr) xRejWstawP_S["adres_kl",RejWezP_S["C:kl_adres"]]
    xRejWstawP_S["nazwabanku_kl",RejWezP_S["P:nazwabanku_kl"]]
    bank := RejWezP_S["P:numerbanku_kl"]
    xRejWstawP_S["numerbanku_kl",bank]
    xRejWstawP_S["swift",RejWezP_S["P:swift"]]
    xRejWstawP_D["data_przel",na_dzien]
    if ((not(termin_na_dzien)) and (not(pustepole["p:data_plat"]))) xRejWstawP_D["Data_przel",RejWezP_D["P:data_plat"]]
    xRejWstawP_S["konto_przel",tempkontobank]
    xRejWstawP_L["zaznacz",zapisy]
    if ((not(pustepole["P:waluta"])) or (not(rejwezp_s["P:waluta"] == "PLN")) ) xRejWstawP_S["waluta",RejWezP_S["P:waluta"]]
    if ((not(pustepole["P:waluta"])) or (not(rejwezp_s["P:waluta"] == "PLN")) ) xRejWstawP_D["Data_kursu",na_dzien]
    xrejwstawP_S["priorytet_kl",rejwezP_S["P:prior_kl"]]
    xRejWstawP_S["status","autom"]
    xrejwstawp_S["typ_prl",rejwezP_S["P:typ_prl"]]
// --------------------------------
  zap_xlp := 0
  petla1:
    if (not(RejWezP_S["PP:vatkontoplat"] == konto_klient)) goto zapisz
    if (termin_na_dzien) goto skip_no_termin
    if (rejwezp_d["Data_przel"] = rejwezp_d["pp:data_plat"]) goto skip_no_termin
    goto zapisz
    skip_no_termin:
//
    if (not RejWezP_L["PP:blokada"]) goto next1
    if ((termin_na_dzien1 = '') and (termin_na_dzien2 = '')) goto p_all0
    if ((RejWezP_D["PP:data_plat"] < termin_na_dzien1) or (RejWezP_D["PP:data_plat"] > termin_na_dzien2)) goto next1
    p_all0:
    if (priorytet = "") goto skip_no_prior1
    if (not(RejWezP_S["PP:prior_kl"] = priorytet)) goto next1
    skip_no_prior1:
//    if ((RejWezP_D["PP:data_plat"] < termin_na_dzien1) or (RejWezP_D["PP:data_plat"] > termin_na_dzien2)) goto next1
    if (RejWezP_L["PP:k_wystaw"]) goto next1
    trans_klient := RejWezP_S["PP:trans"]
// 
//    CallAlg["CZY-JEST-PRZELEW"]
//
    if (jest_przelew) goto next1
    if (not(RejWezP_S["PP:numerbanku_kl"] == bank)) goto next1
// ------------------------------------------- zapisy przelewu        
    s_txt := ""
    zap_xlp := zap_xlp +1
    
    if (ilosc_zapis < 10) goto robi_wg_zapisow
       goto robi_wg_dlugosci
    robi_wg_zapisow:
       if (zap_xlp > ilosc_zapis) CallAlg["NOWY-KONTRAHENT"]
       goto robi_dalej
    robi_wg_dlugosci:
       s_txt := rejwezp_s["emisja_txt"]+" "+rejwezp_s["PP:trans"]+" "+tostr["#rejwezp_k[""PP:wartosc""]#S:2"]+" "
       s_txt := rejwezp_s["emisja_txt"]+" "+rejwezp_s["PP:trans"]+" "
       callalg["OPIS_TRESC_234"]
       s_txt := tostr["#s_txt#S"]
       if (strlen[s_txt] > ilosc_zapis) CallAlg["NOWY-KONTRAHENT"]    
    robi_dalej:
// ----------------------------------------------    
    RejOp["A:DodajRek",""]
    RejOp["PP:PrzeniesPola","A:"]
    if (not (tresc = "")) xRejWstawP_S["A:tresc1",tresc]
    xRejWstawP_K["A:dokidzap1",zap_xlp]
    s_txt := rejwezp_s["emisja_txt"]+" "+rejwezp_s["PP:trans"]+" "+tostr["#rejwezp_k[""PP:wartosc""]#S:2"]+" "
    s_txt := rejwezp_s["emisja_txt"]+" "+rejwezp_s["PP:trans"]+" "
    callalg["OPIS_TRESC_234"]
    s_txt := tostr["#s_txt#S"]
    xrejwstawp_s["emisja_txt",s_txt]
    xrejwstawp_s["typ_prl",rejwezP_S["PP:waluta"]]
    xrejwstawp_S["A:f_nr_numer",rejwezP_S["PP:typ_prl"]]
    RejOp["A:ZapiszRek",""]
    RejOp["ZapiszRek",""]
    Disptext["."]
    RejWstawP_L["PP:k_wystaw",.T.]
    suma_zl := suma_zl + RejWezP_K["PP:wartosc"]
    suma_dew := suma_dew + RejWezP_K["PP:kwota_dew"]
// ------------------ klasyfikacje
      if (not(rozl)) goto next1
        RejOp["B:DodajRek",""]
// sod
	d_string := "BRUTTO"
        trans := rejwezp_s["PP:trans"]
        callalg["DAJ-TRANS-RZL"]        
        xRejWstawP_K["B:dokidzap1",RejWezP_K["A:dokidzap1"]]
        xRejWstawP_S["B:konto_rzl",d_string]
        xRejWstawP_K["B:kwota_rzl",RejWezP_K["PP:wartosc"]]
        xRejWstawP_K["B:kwota_rzl_dew",RejWezP_K["PP:kwota_dew"]]
        RejOp["B:ZapiszRek",""]
        Disptext["+"]
      next1:
// ------------------ klasyfikacje
  if (RejOp["PP:WezNastepnyRek",""]) goto petla1
// --------------------------------
  zapisz:
  DispText[" zapis"]
  xRejWstawP_K["kwota_przel",suma_zl]
  xRejWstawP_K["kwota_przel_dew",suma_dew]
  xRejWstawP_S["status","autom"]
  RejOp["ZapiszRek",""]
  CallAlg["ZAPISZ-PRZELEW"]
  CallALG["ZAZNACZ-PRLDOK"]
  RejOp["WyczyscRej",""]
  RejOp["A:WyczyscRej",""]
  RejOp["B:WyczyscRej",""]
  suma_zl := 0
  suma_dew := 0
  zap_xlp := 0
  RejOp["P:ZmienKluczRej",odl_key]
  RejOp["PP:ZmienKluczRej",odl_key]
  next0:
if (RejOp["P:WezNastepnyRek",""]) goto petla0
// ------------------ glowna petla --------
koniec2:
ExDialogOp["UsunDialog","TEMPDIALOG"]
koniec1:
RejOp["ZamknijRej",""]  
RejOp["A:ZamknijRej",""]  
RejOp["B:ZamknijRej",""]  
koniec:
FinnOp["@1Close",""]
ExitAlg[0]

////////////////////////////////////////////////////////////////////////////////
% GENERUJ-AUTO-PRZELEWY-KL-SYM.ALG
if (not FinnOp["@1openmainx",""]) ExitAlg[0]
//
if (RejOp["C:OtworzRej","REJESTRKL.RXR"]) goto skip00
  OkAlert["NIe mog|e otworzy|c rejestru kontrahent|ow !"]
  FinnOp["@1Close",""]
  ExitAlg[0]
skip00:
if (RejOp["OtworzRejTemp",id_modul+"PRZELEW.RJR"]) GOTO skip01
 Okalert["Nie mog|e otworzy|c rejestru z przelewami !"]
goto koniec
skip01:
if (RejOp["A:OtworzRejTemp",id_modul+"PRZETMP.RJR"]) goto skip02
 Okalert["Nie mog|e otworzy|c rejestru temp z przelewami !"]
 RejOp["ZamknijRej",""]
goto koniec
skip02:
if (RejOp["B:OtworzRejTemp",id_modul+"PRZETMP1.RJR"]) goto skip03
 Okalert["Nie mog|e otworzy|c rejestru z zapisami !"]
 RejOp["ZamknijRej",""]
 RejOp["A:ZamknijRej",""]
goto koniec
skip03:
RejOp["B:ZmienKluczRej","2"]
if (RejOp["PP:OtworzRejSprawdz","PRLDOK.RXR"]) goto skip04
  OkAlert["Nie mog|e otworzy|c rejestru z zapisami !"]
  goto koniec1
skip04:
RejOp["P:ZmienKluczRej",odl_key]
RejOp["PP:ZmienKluczRej",odl_key]
txt_komunikat := "GENEROWANIE DANYCH PROSZE CZEKA|C ..."
CallAlg["komunikat-work"]
if (not RejOp["P:WezPierwszyRek",""]) goto koniec2
// ------------------ glowna petla --------
suma_zl := 0
suma_dew := 0
petla0:
  if (RejWezP_L["P:k_wystaw"]) goto next0
  if (priorytet = "99") goto next0
  if (not RejWezP_L["P:blokada"]) goto next0
  if ((termin_na_dzien1 = '') and (termin_na_dzien2 = '')) goto p_all
  if ((RejWezP_D["P:data_plat"] < termin_na_dzien1) or (RejWezP_D["P:data_plat"] > termin_na_dzien2)) goto next0
  p_all:
  if (priorytet = "") goto skip_no_prior
    if (not(RejWezP_S["P:prior_kl"] = priorytet)) goto next0
  skip_no_prior:
  jest_przelew := .N.
  symbol_klient := RejWezP_S["P:sym_kl"]
  konto_klient := RejWezP_S["P:vatkontoplat"]
  DispLine[""+konto_klient]
  trans_klient := RejWezP_S["P:trans"]
// 
//  CallAlg["CZY-JEST-PRZELEW"]
//
  if (jest_przelew) goto next0
  if (not RejOp["DodajRek",""]) goto koniec1
    zap := RejWezP_K["P:RejestrRekPos"]
    RejOp["PP:UstawRekPos",ToStr["#zap#S:0"]]
    disptext["+"]
// --------------------------------
    kluczkl := ""
    rozr := .N.
    dew := .N.
    rozl := .N.
    CallAlg["PLAN-KLIENT"]  
    RejOp["C:ZnajdzRek",kluczkl]
    xRejWstawP_S["s_klient",kluczkl]
    xRejWstawP_S["vatkontoplat",RejWezP_S["P:vatkontoplat"]]
    xRejWstawP_S["nazwa_kl1",RejWezP_S["P:nazwa_kl1"]]
    xRejWstawP_S["nazwa_kl2",RejWezP_S["P:nazwa_kl2"]]
    if (rozr) xRejWstawP_S["kodmiasto_kl",RejWezP_S["C:kl_kodmiasto"]]
    if (rozr) xRejWstawP_S["adres_kl",RejWezP_S["C:kl_adres"]]
    xRejWstawP_S["nazwabanku_kl",RejWezP_S["P:nazwabanku_kl"]]
    bank := RejWezP_S["P:numerbanku_kl"]
    xRejWstawP_S["numerbanku_kl",bank]
    xRejWstawP_S["swift",RejWezP_S["P:swift"]]
    xRejWstawP_D["data_przel",na_dzien]
    if ((not(termin_na_dzien)) and (not(pustepole["p:data_plat"]))) xRejWstawP_D["Data_przel",RejWezP_D["P:data_plat"]]
    xRejWstawP_S["konto_przel",tempkontobank]
    xRejWstawP_L["zaznacz",zapisy]
    if ((not(pustepole["P:waluta"])) or (not(rejwezp_s["P:waluta"] == "PLN")) ) xRejWstawP_S["waluta",RejWezP_S["P:waluta"]]
    if ((not(pustepole["P:waluta"])) or (not(rejwezp_s["P:waluta"] == "PLN")) ) xRejWstawP_D["Data_kursu",na_dzien]
    xrejwstawP_S["priorytet_kl",rejwezP_S["P:prior_kl"]]
    xRejWstawP_S["status","autom"]
    xrejwstawp_S["typ_prl",rejwezP_S["P:typ_prl"]]
// --------------------------------
  zap_xlp := 0
  petla1:
    if (not(RejWezP_S["PP:sym_kl"] == symbol_klient)) goto zapisz
    if (termin_na_dzien) goto skip_no_termin
    if (rejwezp_d["Data_przel"] = rejwezp_d["pp:data_plat"]) goto skip_no_termin
    goto zapisz
    skip_no_termin:
//
    if (not RejWezP_L["PP:blokada"]) goto next1
    if ((termin_na_dzien1 = '') and (termin_na_dzien2 = '')) goto p_all0
    if ((RejWezP_D["PP:data_plat"] < termin_na_dzien1) or (RejWezP_D["PP:data_plat"] > termin_na_dzien2)) goto next1
    p_all0:
    if (priorytet = "") goto skip_no_prior1
    if (not(RejWezP_S["PP:prior_kl"] = priorytet)) goto next1
    skip_no_prior1:
//    if ((RejWezP_D["PP:data_plat"] < termin_na_dzien1) or (RejWezP_D["PP:data_plat"] > termin_na_dzien2)) goto next1
    if (RejWezP_L["PP:k_wystaw"]) goto next1
    trans_klient := RejWezP_S["PP:trans"]
// 
//    CallAlg["CZY-JEST-PRZELEW"]
//
    if (jest_przelew) goto next1
    if (not(RejWezP_S["PP:numerbanku_kl"] = bank)) goto next1
// ------------------------------------------- zapisy przelewu        
    s_txt := ""
    zap_xlp := zap_xlp +1
    
    if (ilosc_zapis < 10) goto robi_wg_zapisow
       goto robi_wg_dlugosci
    robi_wg_zapisow:
       if (zap_xlp > ilosc_zapis) CallAlg["NOWY-KONTRAHENT"]
       goto robi_dalej
    robi_wg_dlugosci:
       s_txt := rejwezp_s["emisja_txt"]+" "+rejwezp_s["PP:trans"]+" "+tostr["#rejwezp_k[""PP:wartosc""]#S:2"]+" "
       s_txt := rejwezp_s["emisja_txt"]+" "+rejwezp_s["PP:trans"]+" "
       callalg["OPIS_TRESC_234"]
       s_txt := tostr["#s_txt#S"]
       if (strlen[s_txt] > ilosc_zapis) CallAlg["NOWY-KONTRAHENT"]    
    robi_dalej:
// ----------------------------------------------    
    RejOp["A:DodajRek",""]
    RejOp["PP:PrzeniesPola","A:"]
    if (not (tresc = "")) xRejWstawP_S["A:tresc1",tresc]
    xRejWstawP_K["A:dokidzap1",zap_xlp]
    s_txt := rejwezp_s["emisja_txt"]+" "+rejwezp_s["PP:trans"]+" "+tostr["#rejwezp_k[""PP:wartosc""]#S:2"]+" "
    s_txt := rejwezp_s["emisja_txt"]+" "+rejwezp_s["PP:trans"]+" "
    callalg["OPIS_TRESC_234"]
    s_txt := tostr["#s_txt#S"]
    xrejwstawp_s["emisja_txt",s_txt]
    xrejwstawp_s["typ_prl",rejwezP_S["PP:waluta"]]
    xrejwstawp_S["A:f_nr_numer",rejwezP_S["PP:typ_prl"]]
    RejOp["A:ZapiszRek",""]
    RejOp["ZapiszRek",""]
    Disptext["."]
    RejWstawP_L["PP:k_wystaw",.T.]
    suma_zl := suma_zl + RejWezP_K["PP:wartosc"]
    suma_dew := suma_dew + RejWezP_K["PP:kwota_dew"]
// ------------------ klasyfikacje
      if (not(rozl)) goto next1
        RejOp["B:DodajRek",""]
// sod
        d_string := "BRUTTO"
        trans := rejwezp_s["PP:trans"]
        callalg["DAJ-TRANS-RZL"]
        xRejWstawP_K["B:dokidzap1",RejWezP_K["A:dokidzap1"]]
        xRejWstawP_S["B:konto_rzl",d_string]
        xRejWstawP_K["B:kwota_rzl",RejWezP_K["PP:wartosc"]]
        xRejWstawP_K["B:kwota_rzl_dew",RejWezP_K["PP:kwota_dew"]]
        RejOp["B:ZapiszRek",""]
        Disptext["+"]
      next1:
// ------------------ klasyfikacje
  if (RejOp["PP:WezNastepnyRek",""]) goto petla1
// --------------------------------
  zapisz:
  DispText[" zapis"]
  xRejWstawP_K["kwota_przel",suma_zl]
  xRejWstawP_K["kwota_przel_dew",suma_dew]
  xRejWstawP_S["status","autom"]
  RejOp["ZapiszRek",""]
  CallAlg["ZAPISZ-PRZELEW"]
  CallALG["ZAZNACZ-PRLDOK"]
  RejOp["WyczyscRej",""]
  RejOp["A:WyczyscRej",""]
  RejOp["B:WyczyscRej",""]
  suma_zl := 0
  suma_dew := 0
  zap_xlp := 0
  RejOp["P:ZmienKluczRej",odl_key]
  RejOp["PP:ZmienKluczRej",odl_key]
  next0:
if (RejOp["P:WezNastepnyRek",""]) goto petla0
// ------------------ glowna petla --------
koniec2:
ExDialogOp["UsunDialog","TEMPDIALOG"]
koniec1:
RejOp["ZamknijRej",""]  
RejOp["A:ZamknijRej",""]  
RejOp["B:ZamknijRej",""]  
koniec:
FinnOp["@1Close",""]
ExitAlg[0]
////////////////////////////////////////////////////////////////////////////////
// ----------------------
% NOWY-KONTRAHENT.ALG
  DispText[" Nowy"]
  xRejWstawP_K["kwota_przel",suma_zl]
  xRejWstawP_K["kwota_przel_dew",suma_dew]
  xRejWstawP_S["status","autom"]
  RejOp["ZapiszRek",""]
  CallAlg["ZAPISZ-PRZELEW"]
  RejOp["A:WyczyscRej",""]
  RejOp["B:WyczyscRej",""]
  RejWstawP_S["emisja_txt",""]
  suma_zl := 0
  suma_dew := 0
  zap_xlp := 1
// ----------------------
% ZAZNACZ-PRLDOK.ALG
if (not(RejOp["A:WezPierwszyRek",""])) ExitAlg[0]
rejop["pp:zmienkluczrej","4"]
petla:
//kklucz := ToStr["zaks*#RejWezP_S[""A:vatkontoplat""]#S*#RejWezP_S[""A:trans""]#S"]
kklucz := ToStr["#RejWezP_S[""A:vatkontoplat""]#S*#RejWezP_S[""A:trans""]#S"]
wstaw := .T.
//if (id_modul == "TMP_") wstaw := .N.
if (RejOp["PP:ZnajdzRek",kklucz]) RejWstawP_L["PP:k_wystaw",wstaw]
if (RejOp["A:WezNastepnyRek",""]) goto petla
rejop["pp:zmienkluczrej","14"]
//
% OCZYSC-PRLDOK.ALG
RejOp["PP:ZmienKluczRej","5"]
if (not (RejOp["PP:WezPierwszyRek",""])) goto koniec
 DispLine["Oczyszczanie danych"]
petla:
if (not RejOp["PP:ZnajdzRek","T"]) goto koniec
 Disptext["."]
 if (RejWezP_L["PP:k_wystaw"]) RejOp["PP:UsunRek",""]
next:
goto petla
koniec:
RejOp["PP:ZmienKluczRej","4"]
% OCZYSC-PRLDOK-ZNACZNIK.ALG
RejOp["PP:ZmienKluczRej","5"]
if (not (RejOp["PP:WezPierwszyRek",""])) goto koniec
 DispLine["Odznaczanie danych"]
petla:
if (not RejOp["PP:ZnajdzRek","T"]) goto koniec
 Disptext["."]
 rejwstawp_l["pp:k_wystaw",.N.]
next:
goto petla
koniec:
RejOp["PP:ZmienKluczRej","4"]
// --
% CZY-JEST-PRZELEW.ALG
jest_przelew := .N.
if (konto_klient = "") ExitAlg[0]
if (trans_klient = "") ExitAlg[0]
if (not(RejOp["X:OtworzRejSprawdz","PRZEZAP.RJR"])) ExitAlg[0]
RejOp["X:ZmienKluczRej","4"]
jest_przelew := RejOp["X:ZnajdzRek",Tostr["#konto_klient#S*#trans_klient#S"]]
RejOp["X:ZamknijRej",""]
ExitAlg[0]
//
% OGEN-PRZELEW.alg
//
if (not (rejop["A:usunplikrej","PRLDOK.RXR"])) ExitAlg[0]
T_NA_DZIEN := D_DZISIAJ
exdialogop["idzdodialogu","NA_DZIEN"]
if (D_POS = 1) ExitAlg[0]
callalg["PRLDOK-PRZELEWY-USUN-CZYSC"]
//
ksiega_old_gen := ""
ksiega_act_gen := ""
prl_ksiega := ""
CallSl["PRZELEWY->daj_ksiega_old_gen"]
if (ksiega_old_gen == "") goto skip001
if (YesAlert["Czy przeszukiwa|c transakcje z poprzedniej ksi|egi: "+ksiega_old_gen+" ?"]) prl_ksiega := ksiega_old_gen
skip001:
//
odloz_gen := .N.
CallSl["PRZELEWY->daj_odloz_gen_prl"]
zaplaty_gen := .N.
CallSl["PRZELEWY->daj_zaplaty_gen_prl"]
//
if (FinnOp["@1openmainx",prl_ksiega]) goto dalej01
  OkAlert["Nie mog|e otworzy|c ksi|egi !"]
ExitAlg[0]
dalej01:
if (k_trybodlo) okalert["UWAGA !!! $ $ Wykryto tryb pracy z dokumentami oczekuj|acymi. $ Przy generowaniu danych do przelew|ow $ uwzgl|edniane b|ed|a stany rozrachunkowe $ z dokumentami oczekuj|acymi."]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
if (not RozrOp["RozrListaKont","DS"]) goto koniec
If (not(YesAlert["Czy rozpocz|a|c wyszukiwanie $ danych do przelew|ow ?"])) goto koniec
txt_komunikat := "Przegl|adanie kont do przelew|ow. Prosz|e czeka|c !"
CallAlg["komunikat-work"]
metoda_gen_bank := 0
CallSl["PRZELEWY->daj_metoda_gen_prl"]
znak_gen := .N.
CallSl["PRZELEWY->daj_znak_gen_prl"]
callalg["PRLDOK-PRZELEWY-USUN-CZYSC"]
if (not (rejop["A:usunplikrej","PRLDOK.RXR"])) goto koniec
if (not(RejOp["A:OtworzRejSprawdz","PRLDOK.RXR"])) goto koniec
if (not(RejOp["B:OtworzRej","PRZEZAP.RJR"])) goto koniec1
RejOp["A:ZmienKluczRej","4"]
RejOp["B:ZmienKluczRej","4"]
RejOp["A:WyczyscRej",""]
start_gen := .N.
//
if (FinnOp["ToFirstDok",""]) goto dalej02
  OkAlert["Brak danych z podanego przedzia|lu kont $ dla ksi|egi" +prl_ksiega+" !"]
  goto nextrok
dalej02:
//
petla01:
    Displine[k_sym+" " + K_nazwa]
//
// sprawdzenie poprawnoœci konta
// 
a_ok := .N.
d_string := kl_konto
if (K_DEW) d_string := kl_swift+kl_konto
if (K_DEW) goto dalej_konto_ok
//
if (d_string == "") goto brak_konta
//callalg["kontrola-konta-no-alert"]
callalg["kontrola-konta-alert"]
if (a_ok) goto dalej_konto_ok
  callalg["NKB-KOMUNIKAT-KONTROLA"]
  if (not(a_ok)) goto nextkonto
  okalert["U kontrahenta o symbolu "+kl_sym+" $ "+kl_nazwa1+" $ wyst|api|l nast|epuj|acy b|l|ad. $ $ "+d_string+" $ "+kl_konto]
  goto nextkonto
brak_konta:
  callalg["NKB-KOMUNIKAT-KONTROLA"]
  if (not(a_ok)) goto nextkonto
  okalert["Kontrahent o symbolu "+kl_sym+" $ "+kl_nazwa1+" $ nie ma podanego konta bankowego !"]
  goto nextkonto
dalej_konto_ok:
//
a_ok := .T.
d_string := kl_sym
CallAlg["USTAL-PRIORYTET-KONTRAHENTA"]
prior := d_string
sl_opis := ""
k_typ := ""
CallAlg["KLPRIOR-USTAL-OPIS"]
if ((prior == "99") or (prior == "98")) goto nextkonto
//================================
// POBRANIE PIERWSZEJ TRANSAKCJI 
//================================
if (not(RozrOp["ToFirstT",""])) goto nextkonto
dalej03:
  Disptext["."]
  kwota := 0
  kwota_dew := 0
//  If (not(tr_rodz == "Dos")) goto nexttrans
  if (TermPlat = '') goto dalej031
  if (T_NA_DZIEN = '') goto dalej031
  If (TermPlat > T_NA_DZIEN) goto nexttrans
  dalej031:  
  d_string := "N"
  PRL_TRANSAKCJA := nrtr
  PRL_KLIENT := kl_sym
  PRL_KONTO_KLIENT := k_sym
  CallSl["PRZELEWY->czy_zakup_gotowka"]
  if (d_string == "T") goto nexttrans    
    kwota := S[TrObrMa,TrObrWn]
    if (K_DEW) kwota_dew := S[TransObrDewMa[RodzTraDew],TransObrDewWn[RodzTraDew]]
    if (metoda_gen_bank = 0) goto metoda_saldo
       if (TrObrMa = 0) goto nexttrans
       kwota := TrObrMa - TrObrWn
       if (K_DEW) kwota_dew := TransObrDewMa[RodzTraDew]-TransObrDewWn[RodzTraDew]
    metoda_saldo:
    if (not((kwota = .) OR (kwota = 0))) goto dodajrek2
      if ((TrObrMa > 0) or (TrObrMa = 0)) goto nexttrans
      kwota := S[TrObrWn,TrObrMa]
      kwota := kwota * -1
      if (K_DEW) kwota_dew := S[TransObrDewWn[RodzTraDew],TransObrDewMa[RodzTraDew]]
     
      if ((kwota = .) or (kwota = 0) or (kwota <0)) goto nexttrans
      if (not(K_DEW)) goto dodajrek2
      if ((kwota_dew = .) or (kwota_dew = 0) or (kwota_dew <0)) goto nexttrans
        goto dodajrek2
//        goto nexttrans     
      dodajrek2:
      if ((not(K_DEW)) and (kwota = .)) goto nexttrans
      if ((K_DEW) and (kwota_dew = .)) goto nexttrans
      byl_prl := ""
      a_ok := .N.
      kwota_byl := . 
      kwota_dew_byl := .
      d_string := ToStr["#k_sym#S*#NrTr#S"]
      d_string_k_sym := k_sym
      d_string_nrtr := NrTr
      d_string_dew := "PLN"
      if (k_dew) d_string_dew := RodzTraDew
      callalg["sprawdz-czy-jest-transakcja"]
//      
//      okalert["b "+d_string+" "+kwota+" "+kwota_byl+" "+a_ok+"|"+kwota_dew+" "+kwota_dew_byl]
// -------------------------------------------- dla przelewow juz wystawionych pomniejszenie      
//      kwota_byl := 0
//      if (a_ok) goto nexttrans
//      if (kwota_byl < 0) kwota_byl := kwota_byl *-1  
  
      if ((a_ok) and (kwota=kwota_byl)) goto nexttrans
//      if ((a_ok) and (kwota_dew=kwota_dew_byl) and (k_dew) ) goto nexttrans
// -------------------------------------------- 
      kwotax := kwota
      kwotax_dew := kwota_dew
      
      if (kwota > kwota_byl) kwotax := kwota - kwota_byl
      if (kwota < kwota_byl) kwotax := kwota - kwota_byl
      if (kwota = kwota_byl) kwotax := 0
      
      if (kwota_dew > kwota_dew_byl) kwotax_dew := kwota_dew - kwota_dew_byl
      if (kwota_dew < kwota_dew_byl) kwotax_dew := kwota_dew - kwota_dew_byl
      if (kwota_dew = kwota_dew_byl) kwotax_dew := 0
      
      kwota := kwotax
      kwota_dew := kwotax_dew
      if (not(RejOp["A:ZnajdzRek",d_string])) goto dodaj
        goto jest_juz
      dodaj:
        RejOp["A:DodajRek",""]
      xRejWstawP_K["A:wartosc",rejwezp_k["a:wartosc"]+kwota] 
      xRejWstawP_K["A:kwota_dew",rejwezp_k["a:kwota_dew"]+kwota_dew] 
      jest_juz:      
// -------------------------------------------- szukanie zapisu tra dla tresc
      tresc_temp := ""
      if (not(RozrOp["ToFirstZ",""])) goto koniec_tresc
      petla_tresc:
      if (zapiswn) goto next_tresc
      if (not(zap_rodz == "Tra")) goto next_tresc
      tresc_temp := tresc
      goto koniec_tresc
      next_tresc:
      if (rozrop["tonextz",""]) goto petla_tresc
      koniec_tresc:
// -------------------------------------------- 
      xRejWstawP_S["A:tresc1",tresc_temp]
      xRejWstawP_S["A:trans",NrTr]
      xrejwstawp_s["A:waluta","PLN"]
      if (K_DEW) xrejwstawp_s["A:waluta",RodzTraDew]
      xRejwstawP_S["A:tra_rodz",Tr_Rodz]
      xRejWstawP_D["A:data_plat",termplat]
      xRejWstawP_S["A:vatkontoplat",k_sym]
//      xRejWstawP_K["A:wartosc",rejwezp_k["a:wartosc"]+kwota] 
//      xRejWstawP_K["A:kwota_dew",rejwezp_k["a:kwota_dew"]+kwota_dew] 
      xRejWstawP_S["A:k_status","autom"]
      xRejWstawP_S["A:nazwa_kl1",kl_nazwa1]
      xRejWstawP_S["A:nazwa_kl2",kl_nazwa2]
      xRejWstawP_S["A:nazwabanku_kl",kl_nazwabanku]
      xRejWstawP_S["A:numerbanku_kl",kl_konto]
      xRejWstawP_S["A:swift",kl_swift]
      xRejWstawP_S["A:sym_kl",kl_sym]
      xRejWstawP_S["A:prior_kl",prior]
      xRejWstawP_S["A:slownieprior_kl",sl_opis]
      xRejWstawP_L["A:blokada",znak_gen]
//      if (kwota <0) RejWstawP_L["A:blokada",.T.]
      xRejWstawP_S["A:k_byl",byl_prl]
      d_string := k_sym
      rejop["a:zapiszrek",""]
      callalg["USTAL-TYP-PRL-KONT"]
      RejWstawP_S["A:typ_prl",d_string]
      callalg["USTAL-FVZ"]
      if (not(strcut[kl_sym,0,1] == "P")) goto no_wiele_kont
        k_kl_sym := kl_sym
        k_waluta := rejwezp_s["a:waluta"]
        k_kl_konto := rejwezp_s["a:numerbanku_kl"]
        k_kl_swift := rejwezp_s["a:swift"]
        callalg["USTAL-PKONTO"]
      no_wiele_kont:
      
    nokwota:
    nexttrans:
    if (RozrOp["ToNextT",""]) goto dalej03
    kkoniec:
nextkonto:
if (FinnOp["ToNextDok",""]) goto petla01
//
//
nextrok:
if (start_gen) goto koniec2
if (prl_ksiega == "") goto koniec2
if (prl_ksiega == ksiega_act_gen) goto koniec2
start_gen := .T.
FinnOp["@1Close",""]
prl_ksiega := ksiega_act_gen
if (FinnOp["@1openmainx",prl_ksiega]) goto n_dalej01
    RejOp["B:ZamknijRej",""]
    RejoP["A:ZamknijRej",""]
    ExitAlg[0]
n_dalej01:
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
if (not RozrOp["RozrListaKont","DS"]) goto koniec2
rejop["b:zamknijrej",""]
RejOp["B:OtworzRej","PRZEZAP.RJR"]
RejOp["B:ZmienKluczRej","4"]
if (FinnOp["ToFirstDok",""]) goto petla01
//
koniec2:
RejOp["B:ZamknijRej",""]
koniec1:
RejoP["A:ZamknijRej",""]
koniec:
FinnOp["@1Close",""]
// wywolanie przegladania generatora
finnmenufunkcja[3017,""]
% USTAL-PKONTO.ALG
D_STRING_KLPATH := ""
callsl["gl_ustal_wspolne_dane()"]
rejop["v:otworzrej","KL_KBANK.RJR"+D_STRING_KLPATH+"+/kl_kbank"]
if (not(rejop["v:znajdzrek",k_kl_sym])) goto koniec
petla:
if (not(k_kl_sym == rejwezp_s["v:kb_kl_sym"])) goto koniec
if (not(k_waluta == rejwezp_s["v:kb_kl_dew"])) goto next
      xRejWstawP_S["A:nazwabanku_kl",rejwezp_s["v:kb_kl_nazwa"]]
      xRejWstawP_S["A:numerbanku_kl",rejwezp_s["v:kb_kl_numer"]]
      xRejWstawP_S["A:swift",rejwezp_s["v:kb_kl_swift"]]
      rejop["a:zapiszrek",""]
      goto koniec
next:
if (rejop["v:weznastepnyrek",""]) goto petla
koniec:
rejop["v:zamknijrej",""]

% USTAL-FVZ.ALG
ExitAlg[0]
est  := 0
petla_start:
rejop["v:otworzrej","FAKTURY-PRZYCHODZACE.RXR"]
rejop["v:zmienkluczrej","11"]
if (not(rejop["v:znajdzrek",rejwezp_s["a:trans"]])) goto no_next
petla:
   if (not(rejwezp_s["a:trans"] == rejwezp_s["v:f_symbol"])) goto koniec
   if (not(rejwezp_s["a:sym_kl"] == rejwezp_s["v:f_kontrahent"])) goto no_next
    xrejwstawp_s["a:swift",rejwezp_s["v:f_swift"]]
    xrejwstawp_s["a:numerbanku_kl",rejwezp_s["v:f_numerkonta"]]
    xrejwstawp_s["a:typ_prl",rejwezp_s["v:f_nr_numer"]]
    if (pustepole["a:kwota_dew"])   xrejwstawp_k["a:kwota_dew",rejwezp_k["v:f_dewwartosc"]-kwota_dew_byl]
    xrejwstawp_k["a:kurs_dew",rejwezp_k["v:f_kurs"]]
    xrejwstawp_s["a:waluta",rejwezp_s["v:f_waluta"]]
    if (pustepole["v:f_waluta"]) xrejwstawp_s["a:waluta","PLN"]
    xrejwstawp_d["a:data_kurs",rejwezp_d["v:f_kursdata"]] 
    rejop["a:zapiszrek",""]   
    goto koniec    
no_next:
if (rejop["v:weznastepnyrek",""]) goto petla
koniec:
est := est + 1
rejop["v:zamknijrej",""]
if (est = 2) finnop["@1close",ksiega_old_gen]
if (est = 2) goto out_koniec
finnop["@1openmainx",ksiega_old_gen]
goto petla_start
out_koniec:
// -----------------------------------------------
% REJKL-USUN-PRIORYTET.ALG
  if (not rejop["a:otworzrej","KLPRIOR.RXR"]) goto dalej_00
  if (rejop["a:znajdzrek",TEMP_KL]) rejop["a:usunrek",""]
  rejop["a:zamknijrej",""]    
  dalej_00:
  if (not rejop["a:otworzrej","KLPRIORNAB.RXR"]) goto dalej_01
  if (rejop["a:znajdzrek",TEMP_KL]) rejop["a:usunrek",""]
  rejop["a:zamknijrej",""]    
  dalej_01:
  ExitAlg[0]
//
% REJKL-ZAPISZ-ZMIEN-PRIORYTET.ALG
  if (rejwezp_s["kl_prior_dos"] == "") goto dalej_00
  if (not rejop["a:otworzrej","KLPRIOR.RXR"]) goto dalej_00
  if (rejop["a:znajdzrek",rejwezp_s["kl_sym"]]) goto dalej_10
    rejop["a:dodajrek",""]
    rejwstawp_s["a:kl_sym",rejwezp_s["kl_sym"]]
  dalej_10:
    xrejwstawp_s["a:kl_prior",rejwezp_s["kl_prior_dos"]]
//    xrejwstawp_s["a:kl_osoba",rejwezp_s["kl_prior_dos_os"]]
    rejop["a:zapiszrek",""] 
  rejop["a:zamknijrej",""]    
  dalej_00:
  if (rejwezp_s["kl_prior_odb"] == "") goto dalej_01
  if (not rejop["a:otworzrej","KLPRIORNAB.RXR"]) goto dalej_01
  if (rejop["a:znajdzrek",rejwezp_s["kl_sym"]]) goto dalej_20
    rejop["a:dodajrek",""]
    rejwstawp_s["a:kl_sym",rejwezp_s["kl_sym"]]
  dalej_20:
    xrejwstawp_s["a:kl_prior",rejwezp_s["kl_prior_odb"]]
//    xrejwstawp_s["a:kl_osoba",rejwezp_s["kl_prior_odb_os"]]
    rejop["a:zapiszrek",""] 
  rejop["a:zamknijrej",""]    
  dalej_01:
  ExitAlg[0]
% przenies-prior-dos.alg
  rejop["otworzrej","REJESTRKL.RXR"]
  rejop["a:otworzrej","KLPRIOR.RXR"]
  if (not(rejop["a:wezpierwszyrek",""])) goto koniec
  petla:
    sym := rejwezp_s["a:kl_sym"]
    prior := rejwezp_s["a:kl_prior"]
    oso := rejwezp_s["a:kl_osoba"]
    if (not(rejop["znajdzrek",sym])) goto next
    rejwstawp_s["kl_prior_dos",prior]
//    rejwstawp_s["kl_prior_dos_os",oso]
  next:    
  if (rejop["a:weznastepnyrek",""]) goto petla
  koniec:
  rejop["zamknijrej",""]
  rejop["a:zamknijrej",""]
  
% przenies-prior-odb.alg
  rejop["otworzrej","REJESTRKL.RXR"]
  rejop["a:otworzrej","KLPRIORNAB.RXR"]
  if (not(rejop["a:wezpierwszyrek",""])) goto koniec
  petla:
    sym := rejwezp_s["a:kl_sym"]
    prior := rejwezp_s["a:kl_prior"]
    oso := rejwezp_s["a:kl_osoba"]
    if (not(rejop["znajdzrek",sym])) goto next
    rejwstawp_s["kl_prior_odb",prior]
//    rejwstawp_s["kl_prior_odb_os",oso]
  next:    
  if (rejop["a:weznastepnyrek",""]) goto petla
  koniec:
  rejop["zamknijrej",""]
  rejop["a:zamknijrej",""]
// ----------------------------------------
% KLPRIOR.RXR
1
1
KLPRIOR # nazwa danych
# 
#
"Powt|orzony symbol kontrahenta !"
"Zmieniasz priorytet kontrahenta ?"
"Dodajesz nowego kontrahenta ?" 
"Usun|a|c tego kontrahenta z listy ?" 
"Chcesz doda|c jeszcze jednego kontrahenta ?" 
"%s - nie ma takiego kontrahenta.$Czy chcesz doda|c nowego ?" 
"Nie ma |zadnych kontrahent|ow !"
"Rejestr kontrahent|ow jest pusty - wstawiasz pierwszego ?"
"Nie ma kontrahenta o takim symbolu.$Znale|x|c nast|epnego ?"
"%s - nie ma takiego kontrahenta !"
KLPRIOR-WAR
% KLPRIOR.DBF
0,log,,,,,D                 # usuwanie "w miejscu"
1,string,,848,1,,N     # SYMBOL kontrahenta
2,dic,,96                   # priorytet
1,0,,,2
2,0,,,2
2,0,,,3
1,0,,,3
% KLPRIOR.DIC # slownik do danych o X
"kl_sym",1,Estring
"kl_prior",2,Estring
% KLPRIOR-WAR.DIC,KLPRIOR-FILTR.DIC
"Symbol kontrahenta",1
"Priorytet",2
% KLPRIOR-WAR.BOX
D = "Warunek "
"Symbol kontrahenta",1,A
"Symbol priorytetu",2,A
// --------------------------------------------------------
% KLPRIORNAB.RXR
1
1
KLPRIORNAB # nazwa danych
# 
#
"Powt|orzony symbol kontrahenta !"
"Zmieniasz priorytet kontrahenta ?"
"Dodajesz nowego kontrahenta ?" 
"Usun|a|c tego kontrahenta z listy ?" 
"Chcesz doda|c jeszcze jednego kontrahenta ?" 
"%s - nie ma takiego kontrahenta.$Czy chcesz doda|c nowego ?" 
"Nie ma |zadnych kontrahent|ow !"
"Rejestr kontrahent|ow jest pusty - wstawiasz pierwszego ?"
"Nie ma kontrahenta o takim symbolu.$Znale|x|c nast|epnego ?"
"%s - nie ma takiego kontrahenta !"
KLPRIORNAB-WAR
% KLPRIORNAB.DBF
0,log,,,,,D                 # usuwanie "w miejscu"
1,string,,848,1,,N     # SYMBOL kontrahenta
2,dic,,95                   # priorytet
1,0,,,2
2,0,,,2
2,0,,,3
1,0,,,3
% KLPRIORNAB.DIC # slownik do danych o X
"kl_sym",1,Estring
"kl_prior",2,Estring
% KLPRIORNAB-WAR.DIC,KLPRIORNAB-FILTR.DIC
"Symbol kontrahenta",1
"Priorytet",2
% KLPRIORNAB-WAR.BOX
D = "Warunek "
"Symbol kontrahenta",1,A
"Symbol priorytetu",2,A
// --------------------------------------------------------------------
% LOOK-KLPRIOR.ALG
k_typ := ""
if (RejOp["OtworzRejSprawdz","KLPRIOR.RXR"]) goto dalej01
  OkAlert["Nie mog|e otworzy|c listy z priorytetami dostawc|ow !"]
  ExitAlg[0]
dalej01:
callalg["LOOK-KLPRIORYTET-VIEW"]
//
% LOOK-KLPRIOR-NAB.ALG
k_typ := "-NAB"
if (RejOp["OtworzRejSprawdz","KLPRIORNAB.RXR"]) goto dalej01
  OkAlert["Nie mog|e otworzy|c listy z priorytetami odbiorc|ow !"]
  ExitAlg[0]
dalej01:
callalg["LOOK-KLPRIORYTET-VIEW"]
// --------------------------------------------------------------------
% LOOK-KLPRIORYTET-VIEW.ALG
if (RejOp["C:OtworzRejSprawdz","REJESTRKL.RXR"]) goto dalej02
  OkAlert["Nie mog|e otworzy|c listy z kontrahentami !"]
  RejOp["ZamknijRej",""]
  ExitAlg[0]
dalej02:
ExDialogOp["IdzDoDialogu","KLPRIOR-LOOK"+k_typ]
RejOp["ZamknijRej",""]
RejOp["C:ZamknijRej",""]
ExitAlg[0]
//
% KLPRIOR-LOOK.DLG
##DEFWINDOW = 4,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Przypisane priorytet|ow do kontrahent|ow (DOSTAWCY)"
%<KLPRIOR-LOOK.XXX
//
% KLPRIOR-LOOK-NAB.DLG
##DEFWINDOW = 4,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Przypisane priorytet|ow do kontrahent|ow (NABYWCY)"
%<KLPRIOR-LOOK.XXX
//
% KLPRIOR-LOOK.XXX
PRZYCISK_CANCELID = 9
##110,TLD,0,,"Symbol   Nazwa kontrahenta                              Priorytet",,yellow/blue&black/white&lwhite/blue
##100,0,ACPM,,,,,,,,WIELE_REKORDOW
##20,,P,,"%S%zukaj     "
##21,,P,,"%N%ast|epny   "
##22,,P,,"%F%iltr      "
##23,,P,,"Z%m%ie|n     "
##24,,P,,"%U%su|n       "
##25,,P,,"%D%odaj      "
##27,,P,,"Zaznacz do wydruku "
##26,,P,,"Wydruku%j%     "
##10,B,P,,"symbolami",,,,,,ZMIENNA:klprior_klucz,,A,1,2
##11,B,P,,"priorytetami",,,,,,ZMIENNA:klprior_klucz,,,1,3
 Sortuj wed|lug: #10       # #11          # 
 #110                                                                      #

 #100                                                                      #
     
                              #25       #  #20      #  #27                #
 #9,,ADP,,@5 #                #23       #  #21      #  #26      #
                              #24       #  #22      # 
//
% KLPRIOR-LINE.DLG
##60,G,P,,,,white&white,lred&black/white,,,POLE:kl_sym
##61,G,P,,,,,,,,WYRAZENIE:RejWezP_S["C:kl_nazwa1"]+" "+RejWezP_S["C:kl_nazwa2"]
##62,G,P,,,,,,,,POLE:kl_prior
##63,G,P,,,,,,,,ZMIENNA:sl_opis
#60    # #61                                     # #62# #63                     #
//
% TABLICA-AKCJI-KLPRIOR-LOOK,TABLICA-AKCJI-KLPRIOR-LOOK-NAB
"AKCJA-PRZED-WYSWIETLENIEM",KLPRIOR-LOOK-PRZED
"AKCJA-BUTTON9",KLPRIOR-KONIEC
"AKCJA-BUTTON10",KLPRIOR-ZMIANA-KLUCZA
"AKCJA-BUTTON11",KLPRIOR-ZMIANA-KLUCZA
"AKCJA-BUTTON20",KLPRIOR-WARUNEK
"AKCJA-BUTTON21",KLPRIOR-NASTEPNY
"AKCJA-BUTTON22",KLPRIOR-FILTR
"AKCJA-BUTTON23",KLPRIOR-ZMIEN-KLIENTA
"AKCJA-BUTTON24",KLPRIOR-USUN
"AKCJA-BUTTON25",KLPRIOR-DODAJ-KLIENTA
"AKCJA-BUTTON26",KLPRIOR-DRUKUJ-KLIENTA
"AKCJA-BUTTON27",KLPRIOR-ZAZNACZ
// 
% KLPRIOR-DRUKUJ-KLIENTA.ALG
IdzDowydruku["przelewy\przelewy_kl_priorytet.prn",""]
% KLPRIOR-ZAZNACZ.ALG
if (k_typ == "") CallAlgFile["przelewy\przelewy.alg;drnalzob_prior.sl","SL.ZAZNACZ_PRIOR->start_dialog"]
if (not(k_typ == "")) CallAlgFile["przelewy\przelewy.alg;drnalzob_prior.sl","SL.ZAZNACZ_PRIOR->start_dialog_nab"]
//
% KLPRIOR-WARUNEK.ALG
PARAM_KEYID := 1
RejInitN["SZUKAJKL_WARUNEK"]
if (k_typ == "") RejWarDialog["KLPRIOR.RXR","KLPRIOR-WAR","SZUKAJKL_WARUNEK",0]
if (not(k_typ == "")) RejWarDialog["KLPRIORNAB.RXR","KLPRIORNAB-WAR","SZUKAJKL_WARUNEK",0]
if (RejSzukajWartoscN["SZUKAJKL_WARUNEK",PARAM_KEYID,.T.]) goto jest
  OkAlert["Nie znaleziono |zadnych danych z podanego warunku !"]
  ExitAlg[0]
jest:
ExDialogOp["WyswietlPozycje","100"]
ExDialogOp["IdzDopozycji","100"]
//  
% KLPRIOR-NASTEPNY.ALG
PARAM_KEYID := 1
if (RejSzukajWartoscN["SZUKAJKL_WARUNEK",PARAM_KEYID,.N.]) goto jest
   OkAlert["Brak kontrahenta z podanego warunku !"]  
   ExitAlg[0]
jest:
ExDialogOp["WyswietlPozycje","100"]
ExDialogOp["IdzDopozycji","100"]
//
% KLPRIOR-FILTR.ALG
  ExDialogOp["UstawFiltr","100:KLPRIOR-FILTR"]
//
% KLPRIOR-USUN.ALG
  if (not YesNAlert["Usun|a|c kontrahenta o symbolu "+kl_sym+" z listy ?"]) ExitAlg[0]
  symbol := kl_sym
  RejOp["UsunRek",""]
  prior := "06"
  sl_opis := "Brak"
  CallAlg["USTAW-KL_PRIOR-GENERATOR"]
  ExDialogOp["WyswietlPozycje","100"]  
% KLPRIOR-KONIEC.ALG
  ExDialogOp["KoniecWykonywania",""]
% TABLICA-AKCJI-KLPRIOR-LINE
"AKCJA-PRZED-WYKONYWANIEM",KLPRIOR-LINE-PRZED1
"AKCJA-PRZED-WYSWIETLENIEM",KLPRIOR-LINE-PRZED
//
% KLPRIOR-LINE-PRZED1.ALG
 sl_opis := ""
 RejOp["C:ZnajdzRek",RejWezP_S["kl_sym"]]
 prior := RejWezP_S["kl_prior"]
 CallAlg["KLPRIOR-USTAL-OPIS"]
//
% KLPRIOR-LINE-PRZED.ALG
 sl_opis := ""
 RejOp["C:ZnajdzRek",RejWezP_S["kl_sym"]]
 prior := RejWezP_S["kl_prior"]
 CallAlg["KLPRIOR-USTAL-OPIS"]
//
% KLPRIOR-ZMIANA-KLUCZA.ALG
  if (klprior_klucz = klprior_staryklucz) goto koniec
  CallAlg["klprior-ustawmenu"]
  rejop["wezpierwszyrek",""]
  ExDialogOp["WyswietlPozycje","100"]
  koniec:
% KLPRIOR-USTAWMENU.ALG
  klprior_staryklucz := klprior_klucz
// klucz sie zmienil 
  if (klprior_klucz = 2) menu := "KLPRIOR-LINE,,KLUCZ,2,,,DS"
  if (klprior_klucz = 3) menu := "KLPRIOR-LINE,,KLUCZ,3,,,DS"
  ExDialogOp["UstawMenuParam","100:"+menu]
% KLPRIOR-LOOK-PRZED.ALG
  klprior_staryklucz := 2
  klprior_klucz := 2
  CallAlg["KLPRIOR-USTAWMENU"]
  Rejop["wezpierwszyrek",""]
//
% USTAW-KL_PRIOR-GENERATOR.ALG
  if (RejOp["X:OtworzRejSprawdz","PRLDOK.RXR"]) goto dalej
    OkAlert["Nie mog|e otworzy|c listy z przelewami !"]
    ExiTAlg[0]
  dalej:
  RejOp["X:ZmienKluczRej","7"]
  if (not (RejOp["X:ZnajdzRek",symbol])) goto koniec
  petla:
    if (Not(RejWezP_S["X:sym_kl"] = symbol)) goto koniec
    RejWstawP_S["X:prior_kl",prior]
    RejWstawP_S["X:slownieprior_kl",sl_opis]
    if (RejOp["X:WezNastepnyRek",""]) goto petla
  koniec:
  RejOp["X:ZamknijRej",""]
  ExitAlg[0]
//
% KLPRIOR-DODAJ-KLIENTA.ALG
  dodaj := 0
  symbol := ""
  prior := ""
  sl_opis := ""
%<KLPRIOR-DANE-KLIENTA.ALG
//
% KLPRIOR-ZMIEN-KLIENTA.ALG
  dodaj := 1
  symbol := RejWezP_S["kl_sym"]
  prior := RejWezP_S["kl_prior"]
  sl_opis := ""
  CallAlg["KLPRIOR-USTAL-OPIS"]
%<KLPRIOR-DANE-KLIENTA.ALG
//
% KLPRIOR-DANE-KLIENTA.ALG
  nazwa := ""
  kl_rezygnujesz := .T.
  ExDialogOp["IdzDoDialogu","KLPRIOR-DODAJ"+k_typ]
  if (kl_rezygnujesz) ExitAlg[0]
  if (dodaj = 0) RejOp["DodajRek",""]
  if (dodaj = 1) RejOp["ZnajdzRek",symbol]
  RejWstawP_S["kl_sym",symbol]
  RejWstawP_S["kl_prior",prior]
  CallAlg["USTAW-KL_PRIOR-GENERATOR"]
  ExDialogOp["WyswietlPozycje","100"]  
// -------------------------------------------
% KLPRIOR-DODAJ.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Przypisanie priorytetu do kontrahenta"
%<KLPRIOR-XX1.DLG
%<KLPRIOR-XX2.DLG

% KLPRIOR-ZMIEN.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Zmiana priorytetu do kontrahenta"
%<KLPRIOR-XX1.DLG
%<KLPRIOR-XX2.DLG
// ------------------------------------------
% KLPRIOR-DODAJ-NAB.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Przypisanie priorytetu do kontrahenta"
%<KLPRIOR-XX1-NAB.DLG
%<KLPRIOR-XX2.DLG

% KLPRIOR-ZMIEN-NAB.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Zmiana priorytetu do kontrahenta"
%<KLPRIOR-XX1-NAB.DLG
%<KLPRIOR-XX2.DLG
//-------------------------------------------
% KLPRIOR-XX1.DLG
##12,D,P,,,,,,,,ZMIENNA:nazwa
##13,D,P,,,,,,,,ZMIENNA:sl_opis
##10,0,ACP,,,,,,,,ZMIENNA:symbol,string:848
##11,0,ACP,,,,,,,,ZMIENNA:prior,dic:96
##0,,ADP,,@3
##1,,ADP,,@4
//
% KLPRIOR-XX1-NAB.DLG
##12,D,P,,,,,,,,ZMIENNA:nazwa
##13,D,P,,,,,,,,ZMIENNA:sl_opis
##10,0,ACP,,,,,,,,ZMIENNA:symbol,string:848
##11,0,ACP,,,,,,,,ZMIENNA:prior,dic:95
##0,,ADP,,@3
##1,,ADP,,@4
% KLPRIOR-XX2.DLG
        
Kontrahent..:  #10        # <<F2>

Nazwa.......:   #12                                      #

Priorytet.....: #11#  #13                         #


    
          #0           #          #1           #    
//
% TABLICA-AKCJI-KLPRIOR-DODAJ,TABLICA-AKCJI-KLPRIOR-ZMIEN,TABLICA-AKCJI-KLPRIOR-DODAJ-NAB,TABLICA-AKCJI-KLPRIOR-ZMIEN-NAB
"AKCJA-PRZED-WYSWIETLENIEM",KLPRIOR-PRZED
"AKCJA-PO-POLU10",KLPRIOR-PO-SYMBOL
"AKCJA-PO-POLU11",KLPRIOR-PO-SYMBOL-SLOW
"AKCJA-BUTTON0",KLPRIOR-DODAJ-AKCEPTUJESZ
% KLPRIOR-PRZED.ALG
  ExDialogOp["PozycjaAktywna","10"]
  if (dodaj = 1) ExDialogOp["PozycjaNieAktywna","10"]
  if (symbol = "") ExitAlg[0]
  RejOp["C:ZnajdzRek",symbol]
  nazwa := RejWezP_S["C:kl_nazwa1"]+" "+RejWezP_S["C:kl_nazwa2"]
% KLPRIOR-DODAJ-AKCEPTUJESZ.ALG
kl_rezygnujesz := .N.
a_ok := .T.
if (dodaj = 1) goto wyjscie
RejOp["ZmienKluczRej","1"]
if (not(RejOp["ZnajdzRek",symbol])) goto dalej0
  OkAlert["Kontrahent o symbolu "+symbol+" $ jest ju|z w rejestrze !"]
  a_ok := .N.
  ExitAlg[0]
dalej0:
RejOp["ZmienKluczRej",ToStr["#klprior_klucz#S:0"]]
Wyjscie:
ExDialogOp["KoniecWykonywania",""]
//
% KLPRIOR-PO-SYMBOL.ALG
a_ok := .T.
if (not(symbol = "")) goto dalej
  nazwa := ""
  goto koniec
dalej:
if (dodaj = 1) ExitAlg[0]
RejOp["ZmienKluczRej","1"]
if (not(RejOp["ZnajdzRek",symbol])) goto dalej0
  OkAlert["Kontrahent o symbolu "+symbol+" $ jest ju|z w rejestrze !"]
  a_ok := .N.
  ExitAlg[0]
dalej0:
  RejOp["C:ZnajdzRek",symbol]
  nazwa := RejWezP_S["C:kl_nazwa1"]+" "+RejWezP_S["C:kl_nazwa2"]
koniec:
  ExDialogOp["WyswietlPozycje","12"]
//
% KLPRIOR-PO-SYMBOL-SLOW.ALG 
  CallAlg["KLPRIOR-USTAL-OPIS"]
  ExDialogOp["WyswietlPozycje","13"]
% KLPRIOR-USTAL-OPIS.ALG
sl_opis := ""
if (prior = "") ExitAlg[0]
d_string := prior
if (k_typ == "") callalg["daj_nazwa_p"]
if (not(k_typ == "")) callalg["daj_nazwa_p_nab"]
sl_opis := d_string
//
% USTAL-PRIORYTET-KONTRAHENTA.ALG
if (d_string = "") ExitAlg[0]
RejOp["X:OtworzRejSprawdz","KLPRIOR.RXR"]
if (RejOp["X:ZnajdzRek",d_string]) goto koniec1
  d_string := "06"
  goto koniec
koniec1:
  d_string := RejWezP_S["X:kl_prior"]
koniec:
RejOp["X:ZamknijRej",""]
//
% USTAL-PRIORYTET-KONTRAHENTA-NAB.ALG
if (d_string = "") ExitAlg[0]
RejOp["X:OtworzRejSprawdz","KLPRIORNAB.RXR"]
if (RejOp["X:ZnajdzRek",d_string]) goto koniec1
  d_string := "06"
  goto koniec
koniec1:
  d_string := RejWezP_S["X:kl_prior"]
koniec:
RejOp["X:ZamknijRej",""]
// ====================================================
// ====================================================
// ====================================================
// ====================================================
// ====================================================
//  
% PRZELEWY-KONTRAHENTA.ALG
  if (not(FinnOp["@1openmainx",""])) ExitAlg[0]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  id_modul := ""
  id_modul := ""
  rozr := .N.
  rozl := .N.
  dew := .N.
  atrybut := ""
  kontobank := d_string
  nazwabank := ""
  modem := .N.
  formatmodem := ""
  formatplik := ""
  program := ""
  sciezka := ""
  ver := .
  look := .T.
  view := .T.
  swtyp_dok := ""
  rodzaj := ""
  RejOp["E:OtworzRejSprawdz",id_modul+"PRZELEW.RJR"]
  RejOp["E:ZmienKluczRej","3"]
  RejOp["F:OtworzRejSprawdz",id_modul+"PRZEZAP.RJR"]
  RejOp["G:OtworzRejSprawdz",id_modul+"PRZEZAP1.RJR"]
  if (RejOp["E:WezPierwszyRek",""]) goto dalej
  OkAlert["Brak wystawionych przelew|ow !"]
  ExitALg[0]
  dalej:
  RejOp["E:WezPierwszyRek",""]
  ZAPISY := .T.
  data_przelew := ''
  data_przelewx := ''
  rodzaj := ""
  WER := "ZL"
//  CZY := (StrIn["D",cechy_wersji])
//  IF (CZY > 0) WER := "DEW"
  ExDialogOp["IdzDoDialogu","look-przelew-kontrahent"]
  RejOp["E:ZamknijRej",""]
  RejOp["F:ZamknijRej",""]
  RejOp["G:ZamknijRej",""]
  FinnOp["Close",""]
//
% PRZELEWY-KONTRAHENTA-WYBOR.ALG
  if (not(FinnOp["@1openmainx",""])) ExitAlg[0]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  id_modul := ""
  rozr := .N.
  rozl := .N.
  dew := .N.
  atrybut := ""
  kontobank := d_string
  nazwabank := ""
  modem := .N.
  formatmodem := ""
  formatplik := ""
  program := ""
  sciezka := ""
  ver := .
  look := .T.
  view := .T.
  swtyp_dok := ""
  rodzaj := ""
  RejOp["E:OtworzRejSprawdz",id_modul+"PRZELEW.RJR"]
  RejOp["E:ZmienKluczRej","3"]
  RejOp["F:OtworzRejSprawdz",id_modul+"PRZEZAP.RJR"]
  RejOp["G:OtworzRejSprawdz",id_modul+"PRZEZAP1.RJR"]
  if (RejOp["E:WezPierwszyRek",""]) goto dalej
  OkAlert["Brak wystawionych przelew|ow !"]
  ExitALg[0]
  dalej:
  RejOp["E:WezPierwszyRek",""]
  ZAPISY := .T.
  data_przelew := ''
  data_przelewx := ''
  rodzaj := ""
  WER := "ZL"
//  CZY := (StrIn["D",cechy_wersji])
//  IF (CZY > 0) WER := "DEW"
  ExDialogOp["IdzDoDialogu","look-przelew-kontrahent-wybor"]
  RejOp["E:ZamknijRej",""]
  RejOp["F:ZamknijRej",""]
  RejOp["G:ZamknijRej",""]
  FinnOp["Close",""]
//
% LOOK-PRZELEW-KONTRAHENT-WYBOR.DLG
%<LOOK-PRZELEW-KONTRAHENT.DLG
//
% LOOK-PRZELEW-KONTRAHENT.DLG
PRZYCISK_CANCELID = 10
##DEFWINDOW = 2,1,30,77,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Przegl|adanie wystawionych przelew|ow"
##100,0,ACPM,,,,,,,,WIELE_REKORDOW
##101,0,P,,,,yellow/blue&black/white&lblue/lwhite,,,,MENU_ROZWIJANE
##102,TLD,0,,"  Data     Data                                                       Kwota",,yellow/blue&black/white&lwhite/lblue
##103,TLD,0,,"Przelewu  Emisji  Status Pri. Numer konta bankowego                Przelewu",,yellow/blue&black/white&lwhite/lblue
##111,D,0,,,,yellow/black&black/white&blue/white,,,,ZMIENNA:kontobank
##112,D,0,,,,yellow/black&black/white&blue/white,,,,ZMIENNA:nazwabank
##22,B,P,,,,,,,,ZMIENNA:data_przelew
#101                                                                          #101<
 Kontrahent     #111       # #112                           #
 #102                                                                       #
 #103                                                                       #

 #100  
















                                                                           #

 Znajd|x dat|e wystawienia przelewu - #22    # 
//
% TABLICA-AKCJI-LOOK-PRZELEW-KONTRAHENT
"AKCJA-PRZED-WYSWIETLENIEM",PRZELEWY-LOOK-KONTRAHENT
%<TABLICA-AKCJI-LOOK-PRZELEW-KONTRAHENT.XXX

% TABLICA-AKCJI-LOOK-PRZELEW-KONTRAHENT-WYBOR
"AKCJA-PRZED-WYSWIETLENIEM",PRZELEWY-LOOK-KONTRAHENT-WYBOR
%<TABLICA-AKCJI-LOOK-PRZELEW-KONTRAHENT.XXX

% TABLICA-AKCJI-LOOK-PRZELEW-KONTRAHENT.XXX
"AKCJA-BUTTON13",PRZELEW-BUTTZAPISY1-KONTRAHENT
"AKCJA-BUTTON14",PRZELEW-BUTTZAPISY2-KONTRAHENT
"AKCJA-BUTTON21",PRZELEW-MODYFIKUJ
"AKCJA-BUTTON22",PRZELEW-SZUKAJ-KONTRAHENT
"AKCJA-BUTTON23",PRZELEW-WARUNEK-KONTRAHENT
"AKCJA-BUTTON24",PRZELEW-NASTEPNY
"AKCJA-BUTTON28",PRZELEW-USTAW-FILTR-KONTRAHENT
"AKCJA-BUTTON30",PRZELEW-KARTOTEKA
"AKCJA-BUTTON31",PRZELEW-KARTOTEKA-KONTO
"AKCJA-BUTTON32",PRZELEW-KONTRAHENCI
"AKCJA-BUTTON33",PRZELEW-ZAPISY-WARUNEK-KONTRAHENT
"AKCJA-BUTTON34",PRZELEW-ZAPISY-NASTEPNY
"AKCJA-BUTTON35",PRZELEW-ZAPISY-USTAW-FILTR-KONTRAHENT
"AKCJA-BUTTON400",PRZELEW-WYBOR-REKORD
//
% LISTA-LOOK-PRZELEW-KONTRAHENT.DLG
PRZYCISK_CANCELID = 10
##DEFWINDOW = 2,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wystawione przelewy na kontrahenta"
##99,0,P,,,,yellow/blue&black/white&lblue/lwhite,,,,MENU_ROZWIJANE
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY
##101,0,ACP,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY
##111,D,0,,,,&&lblue/lwhite,,,,ZMIENNA:kontobank
##112,D,0,,,,&&lblue/lwhite,,,,ZMIENNA:nazwabank
##22,B,P,,,,,,,,ZMIENNA:data_przelew
 #99                     #99#111    # #112                                 #

 
#100
                                                                            #100<



#101








                                                                            #101<
//
% TABLICA-AKCJI-LISTA-LOOK-PRZELEW-KONTRAHENT
"AKCJA-PRZED-WYSWIETLENIEM",LISTA-PRZELEWY-LOOK-KONTRAHENT
"AKCJA-BUTTON23",PRZELEW-WARUNEK-KONTRAHENT
"AKCJA-BUTTON24",PRZELEW-NASTEPNY
"AKCJA-BUTTON28",PRZELEW-USTAW-FILTR-KONTRAHENT
"AKCJA-BUTTON30",PRZELEW-KARTOTEKA
"AKCJA-BUTTON31",PRZELEW-KARTOTEKA-KONTO
"AKCJA-BUTTON32",PRZELEW-KONTRAHENCI
"AKCJA-BUTTON33",PRZELEW-ZAPISY-WARUNEK-KONTRAHENT
"AKCJA-BUTTON34",PRZELEW-ZAPISY-NASTEPNY
"AKCJA-BUTTON35",PRZELEW-ZAPISY-USTAW-FILTR-KONTRAHENT
"AKCJA-LINIAMENU100",LISTA-PRZELEWY-KONTRAHENT-LINIA100
//
% PRZELEW-KONTRAHENT-EDYCJA.DIC
"PRZELEW",0
//
% LISTA-LOOK-PRZELEW-KONTRAHENT.MEN
D=,"",AB
LINIA-DIALOG = PRZELEW-KONTRAHENT-EDYCJA,"Kolumny"
11,,,,7,"Konto"
9,,,,8,"D.Przelewu"
18,,,,8,"D.Emisji"
12,,,,6,"Status"
8,,,,28,"Numer konta kontrahenta"
10,,,,10,"Kwota"
//
% PRZELEW-KONTRAHENT-ZAP-EDYCJA.DIC
"PRZEZAP",0
//
% LISTA-LOOK-PRZELEW-KONTRAHENT-ZAP.MEN
D=,"",AB
LINIA-DIALOG = PRZELEW-KONTRAHENT-ZAP-EDYCJA,"Kolumny"
1,,,,28,"Tre|s|c"
5,,,,12,"Konto"
2,,,,15,"Transakcja"
4,,,,8,"Termin"
3,,,,8,"Kwota"
//
% LISTA-PRZELEWY-LOOK-KONTRAHENT.ALG
  RejOp["E:ZmienKluczRej","3"]
  RejOp["F:ZmienKluczRej","1"]
  dokid := 0
  ExDialogOp["UstawMenuParam","99:PRZELEW-LOOK-GORNE-MENU-KONTRAHENT"]
  ExDialogOp["ustawmenuparam","100:LISTA-LOOK-PRZELEW-KONTRAHENT,E,JEDENKLUCZ,3"]
  ExDialogOp["ustawmenuklucz","100:"+kontobank]
  ExDialogOp["ustawmenuparam","101:LISTA-LOOK-PRZELEW-KONTRAHENT-ZAP,F,JEDENKLUCZ,1"]
  ExDialogOp["ustawmenuklucz","101:"+tostr["#dokid#S:0"]]
  
  if (not (rejop["e:znajdzrek",kontobank])) goto no_klient
    nazwabank := RejWezp_S["E:nazwa_kl1"]
    dokid := rejwezp_k["e:dokid"]  
    rejop["f:znajdzrek",tostr["#dokid#S:0"]]
    ExDialogOp["ustawmenuklucz","101:"+tostr["#dokid#S:0"]]
  goto koniec_out
  no_klient:
    rejop["f:wstawpustepola",""]
  koniec_out:
% LISTA-PRZELEWY-LOOK-KONTRAHENT-WYBOR.ALG
  RejOp["E:ZmienKluczRej","3"]
  RejOp["F:ZmienKluczRej","1"]
  dokid := 0
  ExDialogOp["UstawMenuParam","99:PRZELEW-LOOK-GORNE-MENU-KONTRAHENT-WYBOR"]
  ExDialogOp["ustawmenuparam","100:LISTA-LOOK-PRZELEW-KONTRAHENT,E,JEDENKLUCZ,3"]
  ExDialogOp["ustawmenuklucz","100:"+kontobank]
  ExDialogOp["ustawmenuparam","101:LISTA-LOOK-PRZELEW-KONTRAHENT-ZAP,F,JEDENKLUCZ,1"]
  ExDialogOp["ustawmenuklucz","101:"+tostr["#dokid#S:0"]]
  
  if (not (rejop["e:znajdzrek",kontobank])) goto no_klient
    nazwabank := RejWezp_S["E:nazwa_kl1"]
    dokid := rejwezp_k["e:dokid"]  
    rejop["f:znajdzrek",tostr["#dokid#S:0"]]
    ExDialogOp["ustawmenuklucz","101:"+tostr["#dokid#S:0"]]
  goto koniec_out
  no_klient:
    rejop["f:wstawpustepola",""]
  koniec_out:
  
% LISTA-PRZELEWY-KONTRAHENT-LINIA100.ALG
  dokid := rejwezp_k["e:dokid"]  
  rejop["f:znajdzrek",tostr["#dokid#S:0"]]
  ExDialogOp["ustawmenuklucz","101:"+tostr["#dokid#S:0"]]
  exdialogop["wyswietlpozycje","101"]
  
//
//
//
% PRZELEWY-LOOK-KONTRAHENT.ALG
  ExDialogOp["UstawMenuParam","101:PRZELEW-LOOK-GORNE-MENU-KONTRAHENT"]
  RejOp["E:WezOstatniRek",""]
  ZAPISY := .T.
  CallAlg["PRZELEW-USTAW-ZAPISY-KONTRAHENT"]
  RejOp["E:ZmienKluczRej","3"]
  RejOp["E:SzukajRek",kontobank]
  if (rejwezp_S["e:s_klient"] = kontobank) nazwabank := RejWezp_S["E:nazwa_kl1"]
  RejOp["E:WezPoprzedniRek",""]
//
% PRZELEWY-LOOK-KONTRAHENT-WYBOR.ALG
  ExDialogOp["UstawMenuParam","101:PRZELEW-LOOK-GORNE-MENU-KONTRAHENT-WYBOR"]
  RejOp["E:WezOstatniRek",""]
  ZAPISY := .T.
  CallAlg["PRZELEW-USTAW-ZAPISY-KONTRAHENT"]
  RejOp["E:ZmienKluczRej","3"]
  RejOp["E:SzukajRek",kontobank]
  if (rejwezp_S["e:s_klient"] = kontobank) nazwabank := RejWezp_S["E:nazwa_kl1"]
  RejOp["E:WezPoprzedniRek",""]
//
% PRZELEW-USTAW-ZAPISY-KONTRAHENT.ALG
  zap := RejWezP_K["E:RejestrRekPos"]
  if (not(ZAPISY)) ExDialogOp["UstawMenuParam","100:PRZELEW-NAGLOWEK-KONTRAHENT,E,PIERWSZYKLUCZ,8,E,,DS"]
  if (ZAPISY) ExDialogOp["UstawMenuParam","100:PRZELEW-NAGLOWEK-KONTRAHENT,E,PIERWSZYKLUCZ,8,E,,DS"]
  ExDialogOp["UstawMenuKlucz","100:"+kontobank]
  if (ZAPISY) ExDialogOp["DodajNastepnyDialog","100:PRZELEW-LINIA-LOOK-KONTRAHENT,F,JEDENKLUCZ,1,E,99,DS"]
  RejOp["E:UstawRekPos",ToStr["#zap#S:0"]]
  if (zapisy) goto view_zap
    ExDialogOp["UstawMenuPtaszek",":14"]
    ExDialogOp["UsunMenuPtaszek",":13"]  
  goto koniec_out
  view_zap:
    ExDialogOp["UstawMenuPtaszek",":13"]
    ExDialogOp["UsunMenuPtaszek",":14"]
  koniec_out:

% PRZELEW-BUTTZAPISY1-KONTRAHENT.ALG
  zapisy := .T.
%<PRZELEW-BUTTZAPISY-KONTRAHENT.ALG
% PRZELEW-BUTTZAPISY2-KONTRAHENT.ALG
  zapisy := .N.
%<PRZELEW-BUTTZAPISY-KONTRAHENT.ALG
//
% PRZELEW-BUTTZAPISY-KONTRAHENT.ALG
  CallAlg["PRZELEW-USTAW-ZAPISY-KONTRAHENT"]
  ExDialogOp["WyswietlPozycje","100"]
//
% 52.DIC
%<DOK-STATUS.XXX
//
% DOK-STATUS.XXX
"wprow",0
"zaks",1
"odloz",2
"inny",3
"autom",10
"rbank",11
"import",12
"impor",12
"dekret",13
"dekre",13
"b|l|ad",99
"anul",20
//
% sprawdz-czy-jest-transakcja.alg
// kwota wejsciowa 
// d_string klucz "konto*transakcja"
// b: rejestr z zapisami
// ksiega_old_gen := ""
// ksiega_act_gen := ""
// prl_ksiega := ""
//
t := ""
if (prl_ksiega == "") goto no_reopen
if (prl_ksiega == ksiega_act_gen) goto no_reopen
t := "+../../../../"+prl_ksiega+"/data/przelew/"
RejOp["B:OtworzRej","PRZEZAP.RJR"+t+"przezap"]
RejOp["B:ZmienKluczRej","4"]
t := "+../../../../"+prl_ksiega+"/data/przelew/przelew"
//
no_reopen:
  a_ok := .T.
  if (not RejOp["XX:OtworzRej","PRZELEW.RJR"+t]) goto koniec_out
  rejop["XX:zmienkluczrej","2"]
  byl_prl := "jest"
  a_ok := .T.
  if (RejOp["B:ZnajdzRek",d_string]) goto jest_trans
    a_ok := .N.
    byl_prl := ""
    goto goniec
  jest_trans:
    temp1 := RejWezP_S["B:vatkontoplat"]
    temp2 := RejWezP_S["B:trans"]
    temp := ToStr["#temp1#S*#temp2#S"]
    if (not(d_string == temp)) goto goniec
    id := rejwezp_k["b:dokidzap"]
    if (not(rejop["xx:znajdzrek",tostr["#id#S:0"]])) goto next_trans
//    
      t_rok := tostr["#rok_ksieg#S"]
      if (strlen[t_rok] = 1) t_rok := "0"+t_rok
      p_rok := strcut[tostr["#rejwezp_d[""xx:data_przel""]#S"],0,2]

      if (not(rejwezp_s["xx:status"] == "odloz")) goto dalej_go_dolicz
      if (odloz_gen) goto dalej_go
      if ((rejwezp_s["xx:status"] == "odloz") and (not(odloz_gen))) goto next_trans
      if ((rejwezp_s["xx:status"] == "odloz") and (t_rok == p_rok)) goto next_trans
    dalej_go:
//      if (t_rok == p_rok) goto next_trans
      if (t_rok == p_rok) goto dalej_go_dolicz
      goto next_trans
    dalej_go_dolicz:
      kw := RejWezP_K["B:wartosc"]   
      kw_DEW := RejWezP_K["B:kwota_dew"]
      if (not(kwota = kw)) a_ok := .N.
      kwota_byl := kwota_byl + kw
      if (K_DEW) kwota_dew_byl := kwota_dew_byl + kw_dew
      a_ok := .T.
  next_trans:
    if (RejOp["B:WezNastepnyRek",""]) goto jest_trans
  goniec:
  rejop["xx:zamknijrej",""]
koniec_out:
if (t == "") goto koniec_out_00
// sprawdzenie w roku aktualnym
    rejop["b:zamknijrej",""]
    callalg["sprawdz-czy-jest-transakcja-aktualny"]
    rejop["b:zamknijrej",""]
koniec_out_00:
//
if (t == "") goto koniec_out_01
//if (not(a_ok)) goto koniec_out_01
if (prl_ksiega == ksiega_act_gen) goto koniec_out_01
finnop["@1openmainx",ksiega_act_gen]
if (not(finnop["@1znajdzdok",d_string_k_sym])) goto k_out00
if (not(rozrop["znajdztra",d_string_nrtr])) goto k_out00
kwota_byl := kwota_byl+TrObrWn
if (K_DEW) kwota_dew_byl := kwota_dew_byl +  TransObrDewWn[d_string_dew]
//kwota_byl := TrObrWn
//if (K_DEW) kwota_dew_byl := TransObrDewWn[d_string_dew]
k_out00:
finnop["@1close",ksiega_act_gen]
koniec_out_01:
//
//
% sprawdz-czy-jest-transakcja-aktualny.alg
  t := "+../../../../"+ksiega_act_gen+"/data/przelew/"
  RejOp["B:OtworzRej","PRZEZAP.RJR"+t+"przezap"]
  RejOp["B:ZmienKluczRej","4"]
  t := "+../../../../"+ksiega_act_gen+"/data/przelew/przelew"
  aa_ok := .N.
  if (not RejOp["XX:OtworzRej","PRZELEW.RJR"+t]) goto koniec_out
  rejop["XX:zmienkluczrej","2"]
  if (RejOp["B:ZnajdzRek",d_string]) goto jest_trans
    goto goniec
  jest_trans:
    temp1 := RejWezP_S["B:vatkontoplat"]
    temp2 := RejWezP_S["B:trans"]
    temp := ToStr["#temp1#S*#temp2#S"]
    if (not(d_string == temp)) goto goniec
    id := rejwezp_k["b:dokidzap"]
    if (not(rejop["xx:znajdzrek",tostr["#id#S:0"]])) goto dalej_go
//    
     if (rejwezp_s["xx:status"] == "odloz") goto rob_status_odl
            goto dalej_go      
      rob_status_odl:
      aa_ok := .T.
      if (odloz_gen) goto dalej_go
//      aa_ok := .T.
      goto next_trans
    dalej_go:
    kw := RejWezP_K["B:wartosc"]   
    kwota_byl := kwota_byl + kw
    a_ok := .T.
  next_trans:
  if (RejOp["B:WezNastepnyRek",""]) goto jest_trans
  goniec:
  rejop["xx:zamknijrej",""]
koniec_out:
if (zaplaty_gen) callalg["sprawdz-czy-jest-transakcja-aktualny-zaksiegowane"]
//if (not(aa_ok)) callalg["sprawdz-czy-jest-transakcja-aktualny-zaksiegowane"]
//
% sprawdz-czy-jest-transakcja-aktualny-zaksiegowane.alg
// dstring (konto*transakcja)
if (not(finnop["@1openmainx",ksiega_act_gen])) ExitAlg[0]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
t_konto := strcut[d_string,0,strin["*",d_string]]
t_trans := strcut[d_string,strin["*",d_string]+1,strlen[d_string]-1]
  if (not(FinnOp["ZnajdzDok",t_konto])) goto koniec_finn
    if (not(RozrOp["ZnajdzTra",t_trans])) goto koniec_finn
    if (not(RozrOp["ToFirstZ",""])) goto koniec_finn
      petla_zap:
        if (not(ZapisWn)) goto next0
        if (not(Zap_Rodz == "Zap")) goto next0
        kwota_byl := kwota_byl + KwotaZapWn
        a_ok := .T.
      next0:
      if (RozrOp["ToNextZ",""]) goto petla_zap
  koniec_finn:
finnop["@1Close",""]
//

% sprawdz-czy-jest-transakcja-gh.alg
// kwota wejsciowa 
// d_string klucz "konto*transakcja"
// b: rejestr z zapisami
// ksiega_old_gen := ""
// ksiega_act_gen := ""
// prl_ksiega := ""
//
t := ""
if (prl_ksiega == "") goto no_reopen
if (prl_ksiega == ksiega_act_gen) goto no_reopen
t := "+../../../../"+prl_ksiega+"/data/przelew/"
RejOp["B:OtworzRej1","PRZEZAP.RJR"+t+"przezap"]
RejOp["B:ZmienKluczRej","31"]
t := "+../../../../"+prl_ksiega+"/data/przelew/przelew"
//
no_reopen:
RejOp["B:ZmienKluczRej","31"]
  a_ok := .T.
  if (not RejOp["XX:OtworzRej","PRZELEW.RJR"+t]) goto koniec_out
  rejop["XX:zmienkluczrej","2"]
  byl_prl := "jest"
  a_ok := .T.
  if (RejOp["B:ZnajdzRek",d_string]) goto jest_trans
    a_ok := .N.
    byl_prl := ""
    goto goniec
  jest_trans:
    temp1 := RejWezP_S["B:vatkontoplat"]
//    
    temp1 := RejWezP_S["B:s_klient"]
    temp2 := RejWezP_S["B:trans"]
    temp3 := RejWezP_S["B:f_nr_numer"]
    temp := ToStr["#temp1#S*#temp2#S*#temp3#S"]
//    
    if (not(d_string == temp)) goto goniec
    id := rejwezp_k["b:dokidzap"]
    if (not(rejop["xx:znajdzrek",tostr["#id#S:0"]])) goto next_trans
//    
      t_rok := tostr["#rok_ksieg#S"]
      if (strlen[t_rok] = 1) t_rok := "0"+t_rok
      p_rok := strcut[tostr["#rejwezp_d[""xx:data_przel""]#S"],0,2]

      if (not(rejwezp_s["xx:status"] == "odloz")) goto dalej_go_dolicz
      if (odloz_gen) goto dalej_go
      if ((rejwezp_s["xx:status"] == "odloz") and (not(odloz_gen))) goto next_trans
      if ((rejwezp_s["xx:status"] == "odloz") and (t_rok == p_rok)) goto next_trans
    dalej_go:
      if (t_rok == p_rok) goto dalej_go_dolicz
      goto next_trans
    dalej_go_dolicz:
      kw := RejWezP_K["B:wartosc"]   
      if (not(kwota = kw)) a_ok := .N.
      kwota_byl := kwota_byl + kw
      kwota_byl_dew := kwota_byl_dew +  RejWezP_K["B:kwota_dew"]
      a_ok := .T.
  next_trans:
    if (RejOp["B:WezNastepnyRek",""]) goto jest_trans
  goniec:
  rejop["xx:zamknijrej",""]
koniec_out:
if (t == "") goto koniec_out_00
// sprawdzenie w roku aktualnym
    rejop["b:zamknijrej",""]
    callalg["sprawdz-czy-jest-transakcja-aktualny"]
    rejop["b:zamknijrej",""]
koniec_out_00:
//
% daj_status_dla_faktury.alg
  R_PLAT_STATUS := "NieZap"
  if (not(rejop["B:otworzrej","przezap.rjr"])) ExitAlg[0]
  rejop["B:zmienkluczrej","5"]
  a_ok := .N.
  kw_p := kwota_byl
  kwota_byl := 0
  kwota_dew_byl := .
  callalg["sprawdz-czy-jest-transakcja-11"]
  if (not(a_ok)) goto koniec_out
    R_PLAT_STATUS := "Zap"
    if (kwota_byl = 0) goto koniec_out
    if (kw_p > kwota_byl) R_PLAT_STATUS := "Saldo"
    if (kw_p < kwota_byl) R_PLAT_STATUS := "NadPlat"
//    if (not(kw_p = kwota_byl)) R_PLAT_STATUS := "Saldo"
  koniec_out:
  rejop["b:zamknijrej",""]
//
% sprawdz-czy-jest-transakcja-11.alg
// darek
// b: rejestr z zapisami przelewow
// d_string := kontrahent*transakcja
// a_ok := .N.
// kwota_byl := kwota wejsciowa 
  RejOp["XX:OtworzRejSprawdz","PRZELEW.RJR"]
  rejop["XX:zmienkluczrej","2"]
  a_ok := .T.
  byl_prl := "jest"
  if (RejOp["B:ZnajdzRek",d_string]) goto jest_trans
    a_ok := .N.
    byl_prl := ""
    goto goniec
    jest_trans:
            temp1 := RejWezP_S["B:s_klient"]
            temp2 := RejWezP_S["B:trans"]
            r_plat_data := rejwezp_d["B:data_przel"]
            temp := ToStr["#temp1#S*#temp2#S"]
            if (not(d_string == temp)) goto goniec
            id := rejwezp_k["b:dokidzap"]
            if (not(rejop["xx:znajdzrek",tostr["#id#S:0"]])) goto dalej_go
              if ((r_plat_data < rejwezp_d["xx:data_przel"]) or (r_plat_data = '')) r_plat_data := rejwezp_d["xx:data_przel"]
            dalej_go:
    kw := RejWezP_K["B:wartosc"]   
    kwota_byl := kwota_byl + kw
    a_ok := .T.
  next_trans:
  if (RejOp["B:WezNastepnyRek",""]) goto jest_trans
  goniec:
  rejop["xx:zamknijrej",""]

% sprawdz-czy-jest-transakcja-1.alg
// darek
// b: rejestr z zapisami przelewow
// d_string := kontrahent*transakcja
// a_ok := .N.
// kwota_byl := kwota wejsciowa 
  a_ok := .T.
  byl_prl := "jest"
  if (RejOp["B:ZnajdzRek",d_string]) goto jest_trans
    a_ok := .N.
    byl_prl := ""
    goto goniec
    jest_trans:
            temp1 := RejWezP_S["B:s_klient"]
            temp2 := RejWezP_S["B:trans"]
            temp := ToStr["#temp1#S*#temp2#S"]
            if (not(d_string == temp)) goto goniec
    dalej_go:
    kw := RejWezP_K["B:wartosc"]   
    kwota_byl := kwota_byl + kw
    a_ok := .T.
  next_trans:
  if (RejOp["B:WezNastepnyRek",""]) goto jest_trans
  goniec:
  
% PRLDOK-PRZELEW-KONTRAHENT.ALG
  d_string := RejWezP_S["vatkontoplat"]
  if (not RejOp["X:OtworzRej","PLANRODZ.RJR"]) ExitAlg[0]
  if (RejOp["X:ZnajdzRek",d_string]) goto dalej
  d_string := RejWezP_S["X:plan_klsym"]
  RejOp["X:ZamknijRej",""]
  ExitAlg[0]
  dalej:
  d_string := RejWezP_S["X:plan_klsym"]
  RejOp["X:ZamknijRej",""]
  CallAlg["PRZELEWY-KONTRAHENTA"]
//

% PRZELEW-ZAZNACZ-ZLICZ-SUME.ALG
  obroty_zaznaczone := 0
  if (not(rejop["X:otworzrej",id_modul+"PRZELEW.RJR"])) ExitAlg[0]
  RejOp["X:ZmienKluczRej","4"]
  if (rejop["X:znajdzrek",kontobank+"*T"]) goto zliczaj
    goto koniec
  zliczaj:
   if (not(rejwezp_s["X:konto_przel"] == kontobank)) goto koniec
   if (not(rejwezp_l["x:zaznacz"])) goto koniec
   dalej:
    if ((rejwezp_s["X:status"] == status_look) or (rejwezp_s["X:status"] == status_look1)) obroty_zaznaczone := obroty_zaznaczone+rejwezp_k["x:kwota_przel"]
   next:
   if (rejop["x:weznastepnyrek",""]) goto zliczaj  
  koniec:
  RejOp["X:zamknijrej",""]
  p_zap_ok := obroty_zaznaczone
//
% rozliczeniowe-zmiana.alg
// d_string := wejscie z symbolem transakcji
if (d_string = "") ExitAlg[0]
d_string := "BRUTTO"
// -------------------------------
% PRZELEW-USUN-GROMADA.ALG
if (not(rejop["e:wezpierwszyrek",""])) okalert["blad"]
rejop["e:zmienkluczrej","0"]
rejop["e:wezpierwszyrek",""]
petla:
//if (not(rejwezp_d["e:data_przel"] > '02.08.12')) goto next
//if (not(rejwezp_s["e:status"] = "autom")) goto next
//  callalg["przelew-usunprze"]
if (rejwezp_s["e:status"] == "autom") callalg["przelew-usunprze"]
next:
if (rejop["e:weznastepnyrek",""]) goto petla
exdialogop["wyswietlpozycje","100"]
//
//
% DAJ-TRANS-RZL.ALG
    RozrOp["ZnajdzTra",trans]
    RejOp["X:OtworzRejTemp","KONTARZLTMP.RXR"]
    CallAlg["Xgeneruj-Xrozliczeniowe"]
    RejOp["X:ZamknijRej",""]
% XGENERUJ-XROZLICZENIOWE.ALG
// przeszukanie klasyfikacji dla zapisu
//
   kwota_rzl := 0
  if (not (RozrOp["ToFirstZ",""])) ExitAlg[0]
   rozl_kwota_wejscie := kwota
   rozl_kwota_jeszcze := .
   rozl_nazwa_naglowka := "Rozpisanie klasyfikacji dla zapisu ."
   rozl_tryb := 0
  petla_rzr:
   if (zap_rodz == "Zap") goto next_rzr
   tryb := 0
   strona := zapiswn
   kwotax := KwotaZapMa
   if (strona) kwotax := KwotaZapWn
   if (strona) kwotax := kwotax *-1
   if ((kwota = kwotax) and (wer == "ZL")) tryb := 1
   if ((kwota = KwotaZapDew) and (wer == "DEW")) tryb := 1
   if (not(FinnOp["ToFirstRozl",ToStr["#ZapisWn#S"]])) goto next_rzr
   lp := 0
   petla_rzl:
    kwota_x_rzl := 0
    if ((tryb = 1) and (wer == "ZL")) kwota_x_rzl := KwotaRozl
    if ((tryb = 1) and (wer == "DEW")) kwota_x_rzl := KwotaDewRozl
    if (strona) kwota_x_rzl := kwota_x_rzl*-1
    RejOp["X:DodajRek",""]
    RejWstawP_S["X:konto_rzl",KontoRozl]
    RejWstawP_K["X:kwota_rzl",kwota_x_rzl]
    RejOp["X:ZapiszRek",""]
    kwota_rzl := kwota_rzl + Kwota_x_rzl
    lp := lp + 1
   if (FinnOp["ToNextRozl",ToStr["#ZapisWn#S"]]) goto petla_rzl
   goto dalej02
   next_rzr:
    if (RozrOp["ToNextZ",""]) goto petla_rzr
// ----------------------------------------------------------
   dalej02:
   if (not(RejOp["X:WezPierwszyRek",""])) goto dalej03
   dalej04: 
   d_string := rejwezp_s["x:konto_rzl"]
//   xRejWstawP_S["B:konto_rzl",rejwezp_s["x:konto_rzl"]]
//
   dalej03:
% STARCOM-ZLECENIA-PRL.ALG
  callalgfile["przelewy\przelewy_zlecenia.sl","SL.STARCOM_PRZELEWY->start_prl_zlecenia"]
//
% NOWY_NUMER_KONTA.ALG 
// zmienne tekst := string
//         znaczek := string
// obciecia znakow roznych
// i wstawia spacje
  tekst := d_string
  znaczek := "-"
  lp := 1
  petla:
  czy := StrIn[znaczek,tekst]
  if (czy = -1) goto koniec
  temp1 := StrCut[tekst,0,czy]
  temp2 := StrCut[tekst,czy+1,StrLen[tekst]-czy]
  tekst := temp1+temp2
//  okalert[" "+czy+" "+temp1+" "+temp2]
  goto petla
  koniec:
  d_string := tekst
  ExitALg[0]
//  
% PRZELEW-ZAMIANA.ALG
if (not(rejop["otworzrej","PRZELEW.RJR"])) ExitAlg[0]
if (not rejop["wezpierwszyrek",""]) goto koniec
petla:
konto := rejwezp_S["konto_przel"]
if (not(konto == konto1)) goto next
rejwstawp_s["konto_przel",konto2]
next:
if (rejop["weznastepnyrek",""]) goto petla
koniec:
rejop["zamknijrej",""]
//
//
//
% kontrola_wbk.alg
// d_polskie litery
// d_string tekst
// suma zwrot wartosci
  d_polskie := formatpolskie
  d_string := ToStr["#d_string#S"]
  CallSl["PRZELEWY->dekoduj_polskie"]
  dl := strlen[d_string]
  lp := 0
  rsuma := 0
  znak := ""
  petla:
    if (lp = dl) goto koniec
      znak := strcut[d_string,lp,1]
      suma := 0
      CallSl["PRZELEWY->sk_wbk"]
      rsuma := rsuma + suma
      lp := lp +1
  goto petla
koniec:
suma := rsuma
//
% potega2.alg
// il wejscie
// ilx wyjscie
ilx := 1
lp := 1
petla:
if (lp > il) goto koniec
ilx := (2*ilx)
lp := lp+1
goto petla
koniec:
//
// przeniesiene przelewu do raportu bankowego
//
% wybor-rap-przenies-przelew.alg
  if (d_string = "") ExitAlg[0]
  RejOp["0:OtworzRej1",id_modul+"PRZELEW.RJR"]
  RejOp["1:OtworzRej1",id_modul+"PRZEZAP.RJR"]
  rejop["1:zmienkluczrej","1"]
  rejop["0:ustawrekpos",d_string]
  dokid := rejwezp_k["0:dokid"]
  symbol_ks := rejwezp_s["0:s_klient"]
  rejop["1:Znajdzrek",tostr["#dokid#S:0"]]
  petla:
    konto_ks := rejwezp_s["0:vatkontoplat"]
    if (not(dokid = rejwezp_k["1:dokidzap"])) goto koniec
    if (konto_ks = "") konto_ks := rejwezp_s["1:vatkontoplat"]
    trans_ks := rejwezp_s["1:trans"]
    tresc_ks := rejwezp_s["1:tresc1"]
    kwota_ks := rejwezp_k["1:wartosc"]
    dew_ks := rejwezp_s["1:waluta"]
    kwdew_ks := rejwezp_k["1:kwota_dew"]
    zop := rejwezp_s["a:zop"]
    xRejWstawP_D["A:zdata",RejWezP_D["ndatarap"]]
    xrejwstawp_s["a:zkontr",symbol_ks]
    xrejwstawp_s["a:zkonto",konto_ks]
    xrejwstawp_s["a:ztrans",trans_ks]
    xrejwstawp_s["a:ztresc",tresc_ks]
    xrejwstawp_k["a:zkwota",kwota_ks]
    xrejwstawp_k["a:zma",kwota_ks]
    xrejwstawp_s["a:zdew",dew_ks]
    xrejwstawp_k["a:zkwdew",kwdew_ks]
    rejop["a:zapiszrek",""]
    CallAlg["KASA-OBLICZ-ZAP"]
    rejop["a:dodajrek",""]
    xrejwstawp_s["a:zop",zop]
    rejwstawp_s["0:status","rbank"]
//
  next:
  if (rejop["1:weznastepnyrek",""]) goto petla
  
  koniec:
  rejop["0:zamknijrej",""]
  rejop["1:zamknijrej",""]
  
% wybor-rap-przenies-przelew-znacz.alg
  if (d_string = "") ExitAlg[0]
  RejOp["0:OtworzRej1",id_modul+"PRZELEW.RJR"]
  rejop["0:zmienkluczrej","4"]
  RejOp["1:OtworzRej1",id_modul+"PRZEZAP.RJR"]
  rejop["1:zmienkluczrej","1"]
  if (not(rejop["0:znajdzrek",kontobank+"*T"])) goto koniec
  petla0:
  if (not(rejwezp_s["0:konto_przel"] = kontobank)) goto koniec
  if (not(rejwezp_L["0:zaznacz"] = .T.)) goto koniec
    dokid := rejwezp_k["0:dokid"]
    symbol_ks := rejwezp_s["0:s_klient"]
    rejop["1:Znajdzrek",tostr["#dokid#S:0"]]
    petla1:
      konto_ks := rejwezp_s["0:vatkontoplat"]
      if (not(dokid = rejwezp_k["1:dokidzap"])) goto next0
      if (konto_ks = "") konto_ks := rejwezp_s["1:vatkontoplat"]
      trans_ks := rejwezp_s["1:trans"]
      tresc_ks := rejwezp_s["1:tresc1"]
      kwota_ks := rejwezp_k["1:wartosc"]
      dew_ks := rejwezp_s["1:waluta"]
      kwdew_ks := rejwezp_k["1:kwota_dew"]
      zop := rejwezp_s["a:zop"]
      xRejWstawP_D["A:zdata",RejWezP_D["ndatarap"]]
      xrejwstawp_s["a:zkontr",symbol_ks]
      xrejwstawp_s["a:zkonto",konto_ks]
      xrejwstawp_s["a:ztrans",trans_ks]
      xrejwstawp_s["a:ztresc",tresc_ks]
      xrejwstawp_k["a:zkwota",kwota_ks]
      xrejwstawp_k["a:zma",kwota_ks]
      xrejwstawp_s["a:zdew",dew_ks]
      xrejwstawp_k["a:zkwdew",kwdew_ks]
      rejop["a:zapiszrek",""]
      CallAlg["KASA-OBLICZ-ZAP"]
      rejop["a:dodajrek",""]
      xrejwstawp_s["a:zop",zop]
      rejwstawp_s["0:status","rbank"]
    next1:
    if (rejop["1:weznastepnyrek",""]) goto petla1
  next0:
  if (rejop["0:weznastepnyrek",""]) goto petla0  
  koniec:
  rejop["0:zamknijrej",""]
  rejop["1:zamknijrej",""]
// -------------------------
% PARAM-CZYTAJ-PRZELEW-KS.alg
raport := ToStr["#os_ksieg#S&#nazwa_ksieg#S&PRZELEW-KS"]
if (RejOp["T:ZnajdzRek",raport]) _read_param
    RejOp["T:DodajRek",""]
    xRejWstawP_S["T:frm_frm",raport] 
    RejOp["T:ZapiszRek",""]
_read_param:
  ks_strona := RejWezP_L["T:FRM_log0"]
  ks_nr := RejWezP_L["T:FRM_log1"]
  ks_wyciag := RejWezP_S["T:FRM_str0"]
  ks_tresc := RejWezP_S["T:FRM_str1"]
  ks_sort := RejWezP_K["T:FRM_kwota0"]
//
% PARAM-ZAPISZ-PRZELEW-KS.alg
raport := ToStr["#os_ksieg#S&#nazwa_ksieg#S&PRZELEW-KS"]
if (RejOp["T:ZnajdzRek",raport]) _read_param
    RejOp["T:DodajRek",""]
    xRejWstawP_S["T:frm_frm",raport] 
    RejOp["T:ZapiszRek",""]
_read_param:
 RejWstawP_L["T:FRM_log0",ks_strona]
 RejWstawP_L["T:FRM_log1",ks_nr]
 RejWstawP_S["T:FRM_str0",ks_wyciag]
 RejWstawP_S["T:FRM_str1",ks_tresc]
 RejWstawP_K["T:FRM_kwota0",ks_sort]
//
% wstaw_trans_tresc.alg
//    tresc_tmp
gdzie := strin["$trans",tresc_ks]
if (gdzie < 0) goto koniec
tmp1 := StrCut[tresc_ks,0,gdzie]
tmp2 := Strcut[tresc_ks,gdzie+6,strlen[tresc_ks]-gdzie+6]
tresc_ks := tmp1+tresc_tmp+tmp2
koniec:
//
% wstaw_tresc_tresc.alg
//    tresc_tmp
gdzie := strin["$tresc",tresc_ks]
if (gdzie < 0) goto koniec
tmp1 := StrCut[tresc_ks,0,gdzie]
tmp2 := Strcut[tresc_ks,gdzie+6,strlen[tresc_ks]-gdzie+6]
tresc_ks := tmp1+tresc_tmp+tmp2
koniec:
//
% wstaw_tresc_zap_tresc.alg
//    tresc_tmp
gdzie := strin["$tresc_zap",tresc_ks]
if (gdzie < 0) goto koniec
tmp1 := StrCut[tresc_ks,0,gdzie]
tmp2 := Strcut[tresc_ks,gdzie+10,strlen[tresc_ks]-gdzie+10]
tresc_ks := tmp1+tresc_tmp+tmp2
koniec:
//
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

% wstaw_nazwa_kl_tresc.alg
//    tresc_tmp
  d_string := tresc_ks
  znaczek := """"
  CallAlg["xznak"]
  tresc_ks := d_string
//  
gdzie := strin["$nazwa_kl",tresc_ks]
if (gdzie < 0) goto koniec
tmp1 := StrCut[tresc_ks,0,gdzie]
tmp2 := Strcut[tresc_ks,gdzie+9,strlen[tresc_ks]-gdzie+9]
tresc_ks := tmp1+tresc_tmp+tmp2
koniec:
//
% IMPORT-CITY.ALG
  CallAlgFile["przelewy\czytaj_city.sl","SL.CZYTANIE_CITY->dialog"]
//
% IMPORT-CITY-RAPORT.ALG
  CallAlgFile["przelewy\czytaj_city_raport.sl","SL.IMPORT_CITY_RAPORT->start_import_dialog"]
//
% CITY-RAPORT-VIEW.ALG
  CallAlgFile["przelewy\czytaj_city_raport.sl","SL.IMPORT_CITY_RAPORT->look_dialog"]
//
//
% TYPPRLALGO.XXX
"AKCJA-PRZED-WYSWIETLENIEM-TYPPRL-REKORD-1.DLG",TYPPRLREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-TYPPRL-REKORD-3.DLG",TYPPRLREKORD-DODAJSTART1
"AKCJA-PRZED-WYSWIETLENIEM-TYPPRL-REKORD-0.DLG",TYPPRLREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-TYPPRL-REKORD-2.DLG",TYPPRLREKORD-DODAJLOOK
"AKCJA-PO-POLU12-TYPPRL-REKORD-?.DLG",TYPPRLREKORD-KONTO
"AKCJA-BUTTON1-TYPPRL-REKORD-?.DLG",TYPPRLREKORD-AKCEPTUJESZ
"AKCJA-BUTTON20-TYPPRL-MENU-?.DLG",TYPPRLMENU-USUN
"AKCJA-BUTTON21-TYPPRL-MENU-?.DLG",TYPPRLMENU-DLUGOSC-TYP
"AKCJA-BUTTON1111-TYPPRL-MENU-4.DLG",TYPPRLMENU-WYBOR
//
% TYPPRLMENU-WYBOR.ALG
  d_string := rejwezp_s["typ_prl"]
  exdialogop["koniecwykonywania",""]
//
// ---------
// definicja rejestru
// --------
% TYPPRL.RXR,XTYPPRL.RXR # opis rejestru
1
1
TYPPRL # nazwa danych
# 
#
"Powt|orzony symbol !"
"Zmieniasz dane ?"
"Dodajesz nowy ?" 
"Usun|a|c z listy ?" 
"Chcesz doda|c jeszcze jedn ?" 
"%s - nie ma takiego. $Czy chcesz doda|c nowego ?" 
"Nie ma |zadnych !"
"Rejestr jest pusty - wstawiasz pierwszego ?"
"Nie ma o takim symbolu. $Znale|x|c nast|epnego ?"
"%s - nie ma takiego !"
TYPPRL-WAR
% TYPPRL.DBF
0,log,,,,,D          # usuwanie "w miejscu"
1,string,10,2,1,,N   # symbol 
2,string,40          # opis
3,2000,,0               # konto globalne dla typ
4,2000,,0               # konto sytetyczne
4,0,,,2              # 

//
% TYPPRL.DIC # slownik do danych o X
"typ_prl",1,Estring
"typ_opis",2,Estring
"typ_konto",3,Estring
"typ_ksynt",4,Estring
% TYPPRL-WAR.DIC
"Typ",1
"Opis",2
"Konto ksi|egowe",3
"Konto grupy",4
// ALGORYTMY
// --------
% TYPPRLMENU-USUN.ALG
  if (not YesNAlert["Usun|a|c typ "+typ_prl+" z listy ?"]) ExitAlg[0]
  RejOp["UsunRek",""]
  ExDialogOp["UsunRekordzMenu","100"]    
% TYPPRLREKORD-AKCEPTUJESZ.ALG   // Opis: button AKCEPTUJESZ podczas dodawania
// ----- sprawdzenie poprawnosci
  if (not (typ_prl = "")) goto dalej1
    OkAlert["Wprowad|x symbol !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
  dalej1:
  ExDialogOp["KoniecWykonywania",""]
//
% TYPPRLREKORD-DODAJSTART1.ALG 
  naglowek_txt := "Dodanie nowego typu"
// wolane przy dodawanie nowego rekordu z pola
%< TYPPRLREKORD-DODAJSTART.ALG
  ExDialogOp["PozycjaNieAktywna","10"]
  ExDialogOp["IdzDoPozycji","11"]
//
% TYPPRLREKORD-DODAJSTART.ALG 
  naglowek_txt := "Dodanie nowego typu"
  ExDialogOp["PozycjaAktywna","10"]
  ExDialogOp["IdzDoPozycji","10"]
//
% TYPPRLREKORD-DODAJMODIF.ALG 
  naglowek_txt := "Modyfikacja typu"
  ExDialogOp["PozycjaNieAktywna","10"]
  ExDialogOp["IdzDoPozycji","11"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
//
% TYPPRLREKORD-DODAJLOOK.ALG
  naglowek_txt := "Opis typu"
  ExDialogOp["PozycjaNiewprowadzana","*"]
//
//
% TYPPRL-MENU-1.DLG
%< TYPPRL-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% TYPPRL-MENU-0.DLG
%< TYPPRL-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% TYPPRL-MENU-3.DLG
%< TYPPRL-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% TYPPRL-MENU-2.DLG
%< TYPPRL-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% TYPPRL-MENU-4.DLG
%< TYPPRL-MENU-MODIF.XXX
%< xREJESTRY-BUTTONY-0.XXX
//
% xREJESTRY-BUTTONY-0.XXX
PRZYCISK_CANCELID = 3
##1111,,ADP,,"%W%yb|or"
##3,,ADP,,@4

  #1111        #

        
  #3           #

//
% TYPPRL-MENU-X.XXX
PRZYCISK_CANCELID = 0
##DEFWINDOW = 3,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Lista typ|ow przelew|ow (referencje)"
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:TYPPRLMENU,,KLUCZ,1
##101,TLD,0,,"Symbol     Opis                                     Konto",,yellow/blue&black/white&lwhite/blue
##1,,ADP,,"%W%yb|or"
##5,LBGT,P,,"%D%odaj"
##20,LBGT,P,,"%U%su|n"
##4,LBGT,P,,"Z%m%ie|n"
##8,LBGT,P,,"%S%zukaj"
##9,LBGT,P,,"%N%ast|epny "
##2,LBGT,P,,"%O%pis"
##21,LBGT,P,,"Ustaw d|lugo|s|c typu"

 #101                                                       #

#100                                                         #100<
 
% TYPPRL-MENU-MODIF.XXX
%< TYPPRL-MENU-X.XXX
                           #5       # #8        # 
  Znajd|x: #7,0,AC  #       #4       # #9        #
                           #20      # #21                #

% TYPPRL-MENU-LOOK.XXX
%< TYPPRL-MENU-X.XXX
                           #2       # #8        # 
  Znajd|x: #7,0,AC  #                  #9        #
                                      #21                # 
// --------
// REKORD
// --------
% TYPPRL.XXX
PRZYCISK_CANCELID = 2
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dodanie/Zmiana typu"
##9,D,0,,,,lred/black&lwhite/black&blue/yellow,,,,ZMIENNA:naglowek_txt
##10,0,ACP,,,,,,,,POLEUNIKALNE:typ_prl
##12,0,ACP,,,,,,,,POLE:typ_konto
##13,0,ACP,,,,,,,,POLE:typ_ksynt
##11,0,ACP,,,,,,,,POLE:typ_opis
 #9                                #


 Typ przelewu:   #10      #      


  Konto dekretu:      Konto grupy:
  (import wyci|agu)    (generowanie)

  #12             #  #13         #


 Opis typu:

  #11                            #


//
% TYPPRL-REKORD-1.DLG,TYPPRL-REKORD-0.DLG,TYPPRL-REKORD-3.DLG
%<TYPPRL.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% TYPPRL-REKORD-2.DLG
%<TYPPRL.XXX
%<REKORD-OK-BUTT.XXX
//
% TYPPRLMENU.MEN
D=
1,,,,10
2,,,,40
3,,,,20
4,,,,5
//
% TYPPRLREKORD-KONTO.ALG
  if (pustepole["typ_konto"]) ExitAlg[0]
  rejwstawp_s["typ_ksynt",strcut[rejwezp_s["typ_konto"],0,3]]
  exdialogop["wyswietlpozycje","13"]
//
% POKAZ-TYPPRL-RXR.ALG
  RejOp["OtworzRejSprawdz","TYPPRL.RXR"]
  RejOp["WywolajMenu","1"]
  RejOp["ZamknijRej",""]
% WYBOR-TYPPRL-RXR.ALG
  RejOp["OtworzRejSprawdz","TYPPRL.RXR"]
  RejOp["WywolajMenu","4"]
  RejOp["ZamknijRej",""]
% PRZELEW-WYBOR-TYPPRL-RXR.ALG
  xd_string := rejwezp_s["typ_prl"]
  d_string := xd_string
  callalg["WYBOR-TYPPRL-RXR"]
  if (d_string = "") d_string := xd_string
% PARAM-TYPPRL.ALG
  xd_string := rejwezp_s["typ_prl"]
  d_string := xd_string
  callalg["WYBOR-TYPPRL-RXR"]
  if (d_string = "") d_string := xd_string
% SYMAS-WYBOR-TYPPRL-RXR.ALG
  xd_string := d_string
  d_string := xd_string
  callalg["WYBOR-TYPPRL-RXR"]
  if (d_string = "") d_string := xd_string
  typ_prl := d_string
% USTAL-TYP-PRL-KONT.ALG
  if (d_string = "") ExitAlg[0]
  if (not RejOp["9:OtworzRej","TYPPRL.RXR"]) ExitAlg[0]
  rejop["9:zmienkluczrej","2"]
  xd_string := ""
  if (rejop["9:znajdzrek",strcut[d_string,0,3]]) xd_string := rejwezp_s["9:typ_prl"]
  rejop["9:zamknijrej",""]
  d_string := xd_string

% USTAW-DLUGOSC-TYP.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"D|lugo|s|c"
##10,B,ACP,,,,,,,,ZMIENNA:typ_prl_dl,word
##1,,ADP,,@4

  Podaj d|lugo|s|c :  #10#


     #1         #
//
% TABLICA-AKCJI-USTAW-DLUGOSC-TYP
"AKCJA-BUTTON10",USTAW-DLUGOSC-TYP-ZAPISZ
"AKCJA-BUTTON1",USTAW-DLUGOSC-TYP-REZYGNUJESZ
% USTAW-DLUGOSC-TYP-ZAPISZ.ALG
  CallSl["PRZELEWY->zapisz_dlugosc_typ_prl"]
  exdialogop["koniecwykonywania",""]
//
% USTAW-DLUGOSC-TYP-REZYGNUJESZ.ALG
 exdialogop["koniecwykonywania",""]
//
% TYPPRLMENU-DLUGOSC-TYP.ALG
  typ_prl_dl := 0
  CallSl["PRZELEWY->daj_dlugosc_typ_prl"]
  exdialogop["idzdodialogu","USTAW-DLUGOSC-TYP"]  
// typu 
% PRZELEW-TRANSAKCJE-PRZYCHODZACE-FA.ALG
  kw_kwota_przel := kwota_przel
  callsl["PRZELEWY->wybor_z_przychodzacych_fa"]
//  if (not(kw_kwota_przel = kwota_przel)) xrejwstawp_k["kwota_przel",(kw_kwota_przel+kwota_przel)]
  callalg["PRZELEW-TRANSAKCJE-PRZYCHODZACE"]
//  
% PRZELEW-TRANSAKCJE-PRZYCHODZACE-KW.ALG
  kw_kwota_przel := kwota_przel
  callsl["PRZELEWY->wybor_z_przychodzacych_kw"]
//  if (not(kw_kwota_przel = kwota_przel)) xrejwstawp_k["kwota_przel",(kw_kwota_przel+kwota_przel)]
  callalg["PRZELEW-TRANSAKCJE-PRZYCHODZACE"]
//  
% PRZELEW-TRANSAKCJE-PRZYCHODZACE.ALG
  callalg["PRZELEW-KLIENT"]
  if (rejop["a:wezpierwszyrek",""]) rejwstawp_s["a:vatkontoplat",rejwezp_s["vatkontoplat"]]
  RejWstawP_S["A:s_klient",RejWezP_S["s_klient"]]
  exdialogop["wyswietlpozycje","13"]
  
  exdialogop["wyswietlpozycje","15"]
  exdialogop["wyswietlpozycje","16"]
  exdialogop["wyswietlpozycje","17"]
  exdialogop["wyswietlpozycje","18"]
  exdialogop["wyswietlpozycje","19"]
  exdialogop["wyswietlpozycje","20"]
  exdialogop["wyswietlpozycje","21"]
  exdialogop["wyswietlpozycje","22"]
  exdialogop["wyswietlpozycje","30"]
  exdialogop["wyswietlpozycje","33"]
  exdialogop["wyswietlpozycje","101"]
//
//
//
//
//
% PRZELEW-MODYFIKUJ-Z-PRZENIES.ALG
  if (not(yesalert["Przenie|s|c zaznaczone przelewy do innej ksi|egi ? $ $ Nast|api skopiowanie przelew|ow do ksi|egi $ ustawionej w parametrach konta bankowego !"])) goto koniec
  IF (RejOp["Y:OtworzRej",id_modul+"PRZELEW.RJR"]) goto xdalej02
    OkAlert["Nie mog|e otworzy|c rejestru z przelewami !"]
    goto koniec 
  xdalej02:
  RejOp["Y:ZmienKluczRej","4"]
  if (RejOp["Y:ZnajdzRek",kontobank+"*T"]) goto petlaprzelew
    OkAlert["Brak zaznaczonych danych !"]
    goto koniec2
  petlaprzelew:
    if (not(kontobank == RejWezP_S["Y:konto_przel"])) goto koniec2
    a_ok := .N.
    if ((RejWezP_S["y:status"] == status_look) or (RejWezP_S["y:status"] == status_look1)) a_ok := .T.
    if (not(a_ok)) goto nextprzelew
      rekpos := RejWezP_K["Y:RejestrRekPos"]
      RejOp["E:ustawsprawdzrekpos",ToStr["#rekpos#S:0"]]
      DRUK := .N.
      odl_key := "3"
      odl := .N.
      konto_kontrahenta := ""
      CallAlg["przelew-modyfikuj-zapisz-ksiega_old"]
  nextprzelew:
  if (RejOp["Y:WezNastepnyRek",""]) goto petlaprzelew
  koniec2:
    RejOp["Y:ZamknijRej",""]
  koniec:

% PRZELEW-MODYFIKUJ-PRZENIES-Z-TMP.ALG
  xodl_key := odl_key
  callalg["PRZELEW-MODYFIKUJ-PRZENIES-Z-TMP-XXX"]
  odl_key := xodl_key
  
% PRZELEW-MODYFIKUJ-PRZENIES-Z-TMP-XXX.ALG
  if (not ExDialogOp["PusteOkno","100"]) goto dalej1
    OkAlert["Nie ma |zadnych wystawionych przelew|ow !"]
    ExitAlg[0]
  dalej1:
  druk := .N.
  odl_key := "14"
  odl := .T.
  konto_kontrahenta := ""
  poz := RejWezP_K["E:RejestrRekPos"]
  CallAlg["przelew-modyfikuj-zapisz-z-tmp"]
  id_modul := "TMP_"
  CallAlg["przelew-usun-x"]
//  
% PRZELEW-MODYFIKUJ-PRZENIES-Z-TMP-ALL.ALG
  xodl_key := odl_key
  callalg["PRZELEW-MODYFIKUJ-PRZENIES-Z-TMP-ALL-XXX"]
  callalg["PRZELEW-LOOK-PRZED"]
  rejop["e:wezpierwszyrek",""]
  exdialogop["wyswietlpozycje","100"]
  odl_key := xodl_key
  
% PRZELEW-MODYFIKUJ-PRZENIES-Z-TMP-ALL-XXX.ALG
  if (not ExDialogOp["PusteOkno","100"]) goto dalej
    OkAlert["Nie ma |zadnych wystawionych przelew|ow !"]
    ExitAlg[0]
  dalej:
  poz := RejWezP_K["E:RejestrRekPos"]
// ---------------------------- tworzenie
  if (rejop["e:wezpierwszyrek",""]) goto petla
  petla:
  if ((RejWezP_S["e:status"] == "wprow") or (RejWezP_S["e:status"] == "autom")) goto dalej0
    goto next
  dalej0:
    druk := .N.
    odl_key := "14"
    odl := .T.
    konto_kontrahenta := ""
    CallAlg["przelew-modyfikuj-zapisz-z-tmp"]
    id_modul := "TMP_"
  next:
  if (rejop["e:weznastepnyrek",""]) goto petla
  rejop["e:zmienkluczrej","6"]
  rejop["e:wezpierwszyrek",""]
  usun_00:
  klucz := kontobank+"*autom"
  if (not(rejop["e:znajdzrek",klucz])) goto usun_wprow
    druk := .N.
    odl_key := "14"
    odl := .T.
    konto_kontrahenta := ""
    id_modul := "TMP_"
    CallAlg["przelew-usunprze"]
  goto usun_00
  usun_wprow:  
  klucz := kontobank+"*wprow"
  if (not(rejop["e:znajdzrek",klucz])) goto usun_koniec
    druk := .N.
    odl_key := "14"
    odl := .T.
    konto_kontrahenta := ""
    id_modul := "TMP_"
    CallAlg["przelew-usunprze"]
  goto usun_wprow
  usun_koniec:  
//  
% przelew-modyfikuj-zapisz-z-tmp.alg
  p_modif := .T.
  poz := .
  wydruk := .N.
  rozr := .N.
  rozl := .N.
  stara_tr := ""
  format_przelew := ""
  ksiega_old := ""
  tresc_temp := ""
  stary_klient := ""
  stary_sklient := ""
  st_kwota := .
  no_kwota := .
  kwota_zapisu := .
  pozycja := .
  atrybut := ""
  konto_klient := ""
  ilosc_gen := 3
  xilosc_gen := 0
//
  tempkontobank := kontobank
  CallAlg["kontabank"]
//
  IF (RejOp["OtworzRejTemp",id_modul+"PRZELEW.RJR"]) goto dalej00
  OkAlert["Nie mog|e otworzy|c listy z przelewami"]
  ExitAlg[0]
  dalej00:
  if (RejOp["A:OtworzRejTemp",id_modul+"PRZETMP.RJR"]) goto dalej01
  OkAlert["Nie mog|e otworzy|c listy z zapisami do przelew|ow !"]
  ExitAlg[0]
  dalej01:
  if (RejOp["AX:OtworzRejTemp",id_modul+"PRZETMP.RJR"]) goto dalej011
  OkAlert["Nie mog|e otworzy|c listy z zapisami do przelew|ow !"]
  ExitAlg[0]
  dalej011:
  rejop["AX:zmienkluczrej","2"]
  if (RejOp["B:OtworzRejTemp",id_modul+"PRZETMP1.RJR"]) goto dalej02
  OkAlert["Nie mog|e otworzy|c pliku z zapisami na klasyfikacje !"]
  ExitAlg[0]
  dalej02:
//
  ExDialogOp["OdczytajDok",",A,E,F,99,1"]
//
  kluczngl := ToStr["#RejWezP_K[""dokid""]#S:0"]
  RejOp["G:ZmienKluczRej","1"]
  if (not (RejOp["G:ZnajdzRek",kluczngl])) goto dalej03
  petla_rzl0:
  if (not(RejWezP_K["G:dokidzap0"] = RejWezP_K["dokid"])) goto dalej03
  RejOp["B:DodajRek",""]
  RejOp["G:PrzeniesPola","B:"]
  RejOp["B:ZapiszRek",""]
  If (RejOp["G:WezNastepnyRek",""]) goto petla_rzl0
  dalej03:
  id_modul := ""
  ZAPISY_REZYGNUJESZ := .N.
  RejOp["A:WezPierwszyRek",""]
  RejOp["B:ZmienKluczRej","2"]
  WER := "ZL"
  if (not(RejWezP_S["waluta"] = "")) WER := "DEW"
  callalg["zapisz-przelew"]
//  ExDialogOp["WyswietlPozycje","100"]
  
  zamknij:
  RejOp["ZamknijRej",""]
  RejOp["A:ZamknijRej",""]
  RejOp["AX:ZamknijRej",""]
  RejOp["B:ZamknijRej",""]
//  
//
% PRZELEW-MODYFIKUJ-PRZENIES.ALG
  if (not ExDialogOp["PusteOkno","100"]) goto dalej1
    OkAlert["Nie ma |zadnych wystawionych przelew|ow !"]
    ExitAlg[0]
  dalej1:
  druk := .N.
  odl_key := "3"
  odl := .N.
  konto_kontrahenta := ""
  konto_nr_kontrahenta := ""
  swift_kontrahenta := ""
  poz := RejWezP_K["E:RejestrRekPos"]
  CallAlg["przelew-modyfikuj-zapisz-ksiega_old"]
//
% przelew-modyfikuj-zapisz-ksiega_old.ALG
  p_modif := .T.
  poz := .
  wydruk := .N.
  rozr := .N.
  rozl := .N.
  stara_tr := ""
  format_przelew := ""
  ksiega_old := ""
  tresc_temp := ""
  stary_klient := ""
  stary_sklient := ""
  st_kwota := .
  no_kwota := .
  kwota_zapisu := .
  pozycja := .
  atrybut := ""
  konto_klient := ""
  ilosc_gen := 3
  xilosc_gen := 0
//
  tempkontobank := kontobank
  CallAlg["kontabank"]
//
  IF (RejOp["OtworzRejTemp",id_modul+"PRZELEW.RJR"]) goto dalej00
  OkAlert["Nie mog|e otworzy|c listy z przelewami"]
  ExitAlg[0]
  dalej00:
  if (RejOp["A:OtworzRejTemp",id_modul+"PRZETMP.RJR"]) goto dalej01
  OkAlert["Nie mog|e otworzy|c listy z zapisami do przelew|ow !"]
  ExitAlg[0]
  dalej01:
  if (RejOp["AX:OtworzRejTemp",id_modul+"PRZETMP.RJR"]) goto dalej011
  OkAlert["Nie mog|e otworzy|c listy z zapisami do przelew|ow !"]
  ExitAlg[0]
  dalej011:
  rejop["AX:zmienkluczrej","2"]
  if (RejOp["B:OtworzRejTemp",id_modul+"PRZETMP1.RJR"]) goto dalej02
  OkAlert["Nie mog|e otworzy|c pliku z zapisami na klasyfikacje !"]
  ExitAlg[0]
  dalej02:
//
  ExDialogOp["OdczytajDok",",A,E,F,99,1"]
//
// odczytanie klasyfikacji
//
  kluczngl := ToStr["#RejWezP_K[""dokid""]#S:0"]
  RejOp["G:ZmienKluczRej","1"]
  if (not (RejOp["G:ZnajdzRek",kluczngl])) goto dalej03
  petla_rzl0:
  if (not(RejWezP_K["G:dokidzap0"] = RejWezP_K["dokid"])) goto dalej03
  RejOp["B:DodajRek",""]
  RejOp["G:PrzeniesPola","B:"]
  RejOp["B:ZapiszRek",""]
  If (RejOp["G:WezNastepnyRek",""]) goto petla_rzl0
  dalej03:
  ZAPISY_REZYGNUJESZ := .N.
  RejOp["A:WezPierwszyRek",""]
  RejOp["B:ZmienKluczRej","2"]
  WER := "ZL"
  if (not(RejWezP_S["waluta"] = "")) WER := "DEW"
//
   finnop["@1openmainx",ksiega_old]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
// ------------------------------------------------- interpolska
//   CallAlg["zapisz-nowe-konta"]
// -------------------------------------------------
   callalg["zapisz-przelew"]
   finnop["@1Close",""]
   ExDialogOp["WyswietlPozycje","100"]
  zamknij:
  RejOp["ZamknijRej",""]
  RejOp["A:ZamknijRej",""]
  RejOp["AX:ZamknijRej",""]
  RejOp["B:ZamknijRej",""]
//
//
% EXPORT-KONT-BANK.ALG
  if (rejop["otworzrejsprawdz","KONTABANK.RXR"]) goto dalej
    OkAlert["Nie mog|e otworzy|c definicji kont bankowych !"]
    ExitAlg[0]
  dalej:
  if (not(rejop["wezpierwszyrek",""])) goto koniec
      IdzDowydruku["przelewy\kontabank_export.prn",""]
  koniec:
  rejop["zamknijrej",""]
//
% IMPORT-KONT-BANK.ALG
  finnop["openmainx",""]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  if (rejop["otworzrejsprawdz","KONTABANK.RXR"]) goto dalej
    OkAlert["Nie mog|e otworzy|c definicji kont bankowych !"]
    ExitAlg[0]
  dalej:
  plik := "temp\banki.csv"
  RejOp["ImportPolskieLitery","ISO-LATIN2"]
  RejOp["ImportUstawSeparator",";"]
  if (RejOp["ImportujRejestr",plik]) goto koniec
    OkAlert["B|l|ad podczas importu definicji kont bankowych !"]
  koniec:
  rejop["zamknijrej",""]   
  finnop["close",""]
//
% DAJ-NUMER-KONTA.ALG
  if (d_string = "") ExitAlg[0]
  znaczek := " "
  lp := 1
  temp1 := ""
  temp2 := ""
  konto_txt := d_string
  petla:
    czy := StrIn[znaczek,konto_txt]
    if (czy = -1) goto koniec
    temp1 := StrCut[konto_txt,0,czy]
    temp2 := StrCut[konto_txt,czy+1,StrLen[konto_txt]-czy]
    if (lp = 1) konto_txt := temp1+"-"+temp2
    if (lp = 3) konto_txt := temp1+"-"+temp2
    if ((not(lp = 1)) and (not(lp = 3))) konto_txt := temp1+temp2
    lp := lp +1
  goto petla
  koniec:
  d_string := konto_txt
% KONWERSJA-NUMER.ALG
  rejop["a:otworzrej","KONTABANK.RXR"]
  rejop["a:wezpierwszyrek",""]
  petla:
    d_string := rejwezp_s["a:numer_bank"]
    callalg["DAJ-NUMER-KONTA"]
    rejwstawp_s["a:numer_bank",d_string]
  next:
  if (rejop["a:weznastepnyrek",""]) goto petla
  rejop["a:zamknijrej",""]
//
% PRL-OSOBA-WYBOR.ALG
  callalg["KARTA-OSOBA-WYBOR"]
  if (not(d_string = "")) osoba_p := d_string
//
% KARTA-OSOBA-WYBOR.ALG
  d_string := ""
  RejOp["C:OtworzRej1","OSOBY.RXR"]
  exdialogop["idzdodialogu","POKAZ_OSOBY_PRZEPISZ"]
  RejOp["C:Zamknijrej",""]
//
% POKAZ_OSOBY_PRZEPISZ.DLG
PRZYCISK_CANCELID = 0
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Lista os|ob"
##10,,ADP,,@5
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:POKAZ_OSOBY,C
##11,,ADP,,"%W%ybierz"  

 #11      #  #10       # 



 #100                               #

//
% POKAZ_OSOBY.MEN 
D=,"",AB
100,,,,10,"Id."
103,,,,40,"Osoba"
//
% TABLICA-AKCJI-POKAZ_OSOBY_PRZEPISZ
"AKCJA-BUTTON10",POKAZ_OSOBY_KONIEC
"AKCJA-BUTTON11",POKAZ_OSOBY_PRZEPISZ

% POKAZ_OSOBY_KONIEC.ALG
  d_string := ""
  exdialogop["koniecwykonywania",""]
% POKAZ_OSOBY_PRZEPISZ.ALG
  d_string := rejwezp_s["c:os_id"]
  exdialogop["koniecwykonywania",""]
//
//
//
//
//
//
//
// -------------------------- kontrahent -----------------------
% nie-wiem-co-to.alg
  d_string := rejwezp_s["numerbanku_kl"]
  CallAlgFile["przelewy\czytaj_city_raport.sl","SL.IMPORT_CITY_RAPORT->daj_bezkonto"]
  klient_sym := ""
  konto_kl_sym := ""
  KL_KSYM := ""
//
  if (pustepole["s_klient"]) goto plus
    CallAlgFile["przelewy\czytaj_city_raport.sl","SL.IMPORT_CITY_RAPORT->ustal_kontrahent_symbol"]
    if (not(klient_sym = "")) CallSl["PRZELEWY->ustal_konto_kontrahent_plan"]
    goto dalej
  plus:
  if (pustepole["kl_plus"]) goto dalej
    CallAlgFile["przelewy\czytaj_city_raport.sl","SL.IMPORT_CITY_RAPORT->ustal_kontrahent_plus_symbol"]
    if (not(kl_KSYM = "")) konto_kl_sym := kl_KSYM
  dalej:
//
  if (konto_kl_sym = "") goto skip
    if (not(pustepole["s_klient"])) rejwstawp_s["s_klient",klient_sym]
    rejwstawp_s["vatkontoplat",konto_kl_sym]
    if (not(rejop["a:wezpierwszyrek",""])) goto skip
    petla:
      rejwstawp_s["a:vatkontoplat",konto_kl_sym]
    next:
    if (rejop["a:weznastepnyrek",""]) goto petla
  skip:
//
// -------------------------- kontrahent -----------------------
//
//
//
//
//
//
//
% odczytaj-interface-przelew.alg
  rejop["wyczyscrej",""]
  rejop["a:wyczyscrej",""]
  rejop["b:wyczyscrej",""]
// ---------------------------------- naglowek
  petla:
  if (not RejOp["DodajRek",""]) goto koniec
    rejop["x0:przeniespola",""]
//  if (rejop["x0:weznastepnyrek",""]) goto petla
// ---------------------------------- zapisy
  suma := 0
  suma_dew := 0
  if (not(rejop["x1:wezpierwszyrek",""])) goto koniec
  petla1:
    if (not (dokid = rejwezp_k["x1:dokidzap"])) goto next1
    if (not RejOp["a:DodajRek",""]) goto koniec
    rejop["x1:przeniespola","a:"]
    suma := suma+rejwezp_k["a:wartosc"]
    suma_dew := suma_dew+rejwezp_k["a:kwota_dew"]
    rejop["a:zapiszrek",""]
  next1:
  if (rejop["x1:weznastepnyrek",""]) goto petla1
  rejwstawp_k["kwota_przel",suma]
  rejwstawp_k["kwota_przel_dew",suma_dew]
//
// dekret
//
  if (not(rejop["x2:wezpierwszyrek",""])) goto koniec
  petla2:
    if (not (dokid = rejwezp_k["x2:dokidzap1"])) goto next2
  if (not RejOp["b:DodajRek",""]) goto koniec
    rejop["x2:przeniespola","b:"]
    rejop["b:zapiszrek",""]
  next2:
  if (rejop["x2:weznastepnyrek",""]) goto petla2

koniec:
//
% interface-przelew-wczytaj.alg
if (FinnOp["@1openmainx",""]) goto skip0
OkAlert["Nie mog|e otworzy|c ksi|egi !"]
goto koniec
skip0:
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  if (RejOp["OtworzRejTemp",id_modul+"PRZELEW.RJR"]) GOTO skip1
     Okalert["Nie mog|e otworzy|c listy z przelewami !"]
  goto koniec
  skip1:
  if (RejOp["A:OtworzRejTemp",id_modul+"PRZETMP.RJR"]) goto skip2
    Okalert["Nie mog|e otworzy|c listy temp z przelewami !"]
  goto koniec
  skip2:
  if (RejOp["B:OtworzRejTemp",id_modul+"PRZETMP1.RJR"]) goto skip3
   Okalert["Nie mog|e otworzy|c listy z zapisami !"]
  goto koniec
  skip3:
  RejOp["B:ZmienKluczRej","2"]
  if (rejop["x0:wezpierwszyrek",""]) goto petla
    goto koniec    
  petla:
  if (not rejop["x0:wezpierwszyrek",""]) goto koniec
  dokid := rejwezp_k["x0:dokid"]
  callalg["odczytaj-interface-przelew"]
koniec:
//
% interface-przelew-zamknij.alg
   RejOp["A:WyczyscRej",""]
   RejOp["B:WyczyscRej",""]
   RejOp["ZamknijRej",""]
   RejOp["A:ZamknijRej",""]
   FinnOp["Close",""]
//
% interface-przelew-drukuj.alg
  rejop["x0:zmienkluczrej","2"]
  rejop["x1:zmienkluczrej","1"]
  rejop["x2:zmienkluczrej","1"]
  rejop["x0:wezpierwszyrek",""]
  id_modul := ""
  nazwa_banku := ""
  numer_banku := ""
  swift_banku := ""
  format_przelew := ""
  wer := "zl"
  firma_nip := ""
  firma_regon := ""
  firma_1 := ""
  firma_2 := ""
  firma_3 := ""
  firma_4 := ""
  callalg["param-dane-global"]
  callalg["interface-przelew-wczytaj"]
//
  petla_import:
  callalg["interface-przelew-konto-kontrola"]
  callalg["interface-przelew-kontrahent-kontrola"]
  callalg["interface-przelew-kontrahent-konto-kontrola"]
  if (t_sposob = 1) callalg["interface-przelew-kontrahent-zamiana"]
//
  DR_FILE := ""
  if (t_wiele = 0) IdzDowydruku["przelewy\format_druku.prn",""]
  if (t_wiele = 1) IdzDowydruku["przelewy\format_druku_seria.prn",""]
  koniec:
  callalg["interface-przelew-zamknij"]
//
% interface-przelew-konto-kontrola.alg
  tempkontobank := RejWezP_S["konto_przel"] 
  iF (not(tempkontobank = "")) goto dalej0
    typ_prl_banku := ""
    nazwa_banku := ""
    numer_banku := ""
    swift_banku := ""
    format_przelew := ""
  goto dalej1
  dalej0:
  CallAlg["kontabank"]
  RejWstawP_S["konto_przel",tempkontobank]
  RejWstawP_S["typ_prl",typ_prl_banku]
  RejWstawP_S["format_przel",format_przelew]
  dalej1:
//
% interface-przelew-kontrahent-kontrola.ALG
  kluczkl := RejWezP_S["s_klient"]
  if (kluczkl = "") goto dalej
    d_string := RejWezP_S["s_klient"]
    callalg["USTAL-PRIORYTET-KONTRAHENTA"]
    if (not((d_string = "98") or (d_string = "99"))) goto dalej001
     OkAlert["Kontrahent ma wprowadzony priorytet blokady p|latno|sci !"]
     a_ok := .N.
     ExitAlg[0] 
  dalej001: 
//
    RejOp["C:OtworzRejSprawdz","REJESTRKL.RXR"]
    wstaw := .N.
    konto_klient := ""
    CallAlg["ustalkontoklienta"]
    xRejWstawP_S["vatkontoplat",konto_klient]
    if (konto_klient = "") goto klient_wielu
      CallAlg["plan-klient"]
      goto przep
    klient_wielu:
     rozr := .T.
     rozl := .N.
     kluczkl := RejWezP_S["s_klient"] 
    przep:
     kluczkl := RejWezP_S["s_klient"] 
//
  if (RejOp["C:ZnajdzRek",kluczkl]) goto okklient
  goto koniec_out
  okklient:
  s_klient := RejWezP_S["C:kl_sym"]
  nazwa_kl1 := RejWezP_S["C:kl_nazwa1"]
  nazwa_kl2 := RejWezP_S["C:kl_nazwa2"]
  kodmiasto_kl := RejWezP_S["C:kl_kodmiasto"]
  adres_kl := RejWezP_S["C:kl_adres"]
  bank := RejWezP_S["C:kl_nazwabanku"]
  nrbank := RejWezP_S["C:kl_konto"]
  swift := RejWezP_S["C:kl_swift"]
  if (rozr) xRejWstawP_S["s_klient",S_klient]
  if (rozr) xRejWstawP_S["kl_plus",""]
  if (not(rozr)) xRejWstawP_S["s_klient",""]
  if (not(rozr)) xRejWstawP_S["kl_plus",S_klient]
  xRejWstawP_S["nazwa_kl1",nazwa_kl1]
  xRejWstawP_S["nazwa_kl2",nazwa_kl2]
  xRejWstawP_S["kodmiasto_kl",kodmiasto_kl]
  xRejWstawP_S["adres_kl",adres_kl]
  xRejWstawP_S["nazwabanku_kl",bank]
  xRejWstawP_S["numerbanku_kl",nrbank]
  xRejWstawP_S["swift",swift]
//
  koniec_out:
      RejOp["C:ZamknijRej",""]
      CallAlg["przelew-klient-konto-przed"]
      wydruk := .N.
  dalej:
  d_string := RejWezP_S["s_klient"]
  callalg["USTAL-PRIORYTET-KONTRAHENTA"]
  rejwstawp_s["priorytet_kl",d_string]
  ExitAlg[0]

% interface-przelew-kontrahent-konto-kontrola.ALG
  a_ok := .T.
  if (wer == "DEW") ExitAlg[0]
  if (RejWezP_S["numerbanku_kl"] = "") ExitAlg[0]
  if (not(modem)) ExitAlg[0]
    konto := RejWezP_S["numerbanku_kl"]
    numer_nkb := ""
    numer_nkb1 := ""
    CallAlg["ustal-numer-nkb"]
  if (a_ok) goto koniec1
    if (YesAlert["B|lad w numerze konta bankowego kontrahenta ! $ Czy pokaza|c rejestr NKB ?"]) goto koniec2
    ExitAlg[0]
  koniec1:
  CallAlg["znajdz-numer-nkb"]
  if (a_ok) goto koniec
  if (YesAlert["Brak takiego: "+numer_nkb+" numeru kierunkowego banku w rejestrze NKB !$ Czy pokaza|c rejestr NKB ?"]) goto koniec2
    ExitAlg[0]
  koniec2:
    CallAlg["NKB-RXR"]
    a_ok := .N.
    ExitAlg[0]
  koniec:
  if (not(pustepole["nazwabanku_kl"])) goto koniecc
  if (pustepole["numerbanku_kl"]) goto koniecc
    d_string := rejwezp_s["numerbanku_kl"]
    CallAlg["ustal-numer-nkb-nazwa"]
    xRejWstawP_S["nazwabanku_kl",d_string]
  koniecc:
  ExitAlg[0]
//
% interface-przelew-kontrahent-zamiana.alg 
if (rejwezp_s["format_przel"] == "ieprzelew_1") ExitAlg[0]
callalg["PARAM-DANE-GLOBAL"]
x_firma_1 := rejwezp_s["nazwa_kl1"]
x_firma_2 := rejwezp_s["nazwa_kl2"]
x_firma_3 := rejwezp_s["kodmiasto_kl"]
x_firma_4 := rejwezp_s["adres_kl"]
x_nazwa_banku := rejwezp_s["nazwabanku_kl"]
x_numer_banku := rejwezp_s["numerbanku_kl"]
x_swift_banku := RejWezP_S["swift"]
rejwstawp_s["nazwa_kl1",firma_1]
rejwstawp_s["nazwa_kl2",firma_2]
rejwstawp_s["kodmiasto_kl",firma_3]
rejwstawp_s["adres_kl",firma_4]
rejwstawp_s["nazwabanku_kl",nazwa_banku]
rejwstawp_s["numerbanku_kl",numer_banku]
firma_1 := x_firma_1
firma_2 := x_firma_2
firma_3 := x_firma_3
firma_4 := x_firma_4
nazwa_banku := x_nazwa_banku
numer_banku := x_numer_banku
swift_banku := x_swift_banku
//
//
//
//
//
//
//
% POKAZ-PCITYDEKR-RXR.ALG
  RejOp["OtworzRejSprawdz","PCITYDEKR.RXR"]
  RejOp["WywolajMenu","1"]
  RejOp["ZamknijRej",""]
//
% PCITYDEKRALGO.XXX
"AKCJA-PRZED-WYSWIETLENIEM-PCITYDEKR-REKORD-1.DLG",PCITYDEKRREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-PCITYDEKR-REKORD-3.DLG",PCITYDEKRREKORD-DODAJSTART1
"AKCJA-PRZED-WYSWIETLENIEM-PCITYDEKR-REKORD-0.DLG",PCITYDEKRREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-PCITYDEKR-REKORD-2.DLG",PCITYDEKRREKORD-DODAJLOOK
"AKCJA-BUTTON1-PCITYDEKR-REKORD-?.DLG",PCITYDEKRREKORD-AKCEPTUJESZ
"AKCJA-BUTTON20-PCITYDEKR-MENU-?.DLG",PCITYDEKRMENU-USUN
"AKCJA-BUTTON1111-PCITYDEKR-MENU-4.DLG",PCITYDEKRMENU-WYBOR
//
% PCITYDEKRMENU-WYBOR.ALG
  d_string := rejwezp_s["typ_prl"]
  exdialogop["koniecwykonywania",""]
//
// ---------
// definicja rejestru
// --------
% PCITYDEKR.RXR,XPCITYDEKR.RXR # opis rejestru
1
1
PCITYDEKR # nazwa danych
# 
#
"Powt|orzony symbol !"
"Zmieniasz dane ?"
"Dodajesz nowy ?" 
"Usun|a|c z listy ?" 
"Chcesz doda|c jeszcze jedn ?" 
"%s - nie ma takiego. $Czy chcesz doda|c nowego ?" 
"Nie ma |zadnych !"
"Rejestr jest pusty - wstawiasz pierwszego ?"
"Nie ma o takim symbolu. $Znale|x|c nast|epnego ?"
"%s - nie ma takiego !"
PCITYDEKR-WAR
% PCITYDEKR.DBF
0,log,,,,,D          # usuwanie "w miejscu"
1,string,,480,1,,N   # symbol konta modulu 
2,2000,,0               # konto z 
3,2000,,0               # konto na
4,log		     # dla pustego ustaw
5,2000,,0               # konto z (rozchod)
6,2000,,0               # konto na (rozchod)
7,log		     # dla pustego ustaw
//
% PCITYDEKR.DIC # slownik do danych o X
"p_konto_bank",1,Estring
"p_konto_z",2,Estring
"p_konto_na",3,Estring
"p_puste",4,Elog
"r_konto_z",5,Estring
"r_konto_na",6,Estring
"r_puste",7,Elog
% PCITYDEKR-WAR.DIC
"Konto",1
"Z konta (przych|od)",2
"Na konto (przych|od)",3
"puste (przych|od)",4
"Z konta (rozch|od)",2
"Na konto (rozch|od)",3
"puste (rozch|od)",7
//
// ALGORYTMY
// --------
% PCITYDEKRMENU-USUN.ALG
  if (not YesNAlert["Usun|a|c konto "+p_konto_bank+" z listy ?"]) ExitAlg[0]
  RejOp["UsunRek",""]
  ExDialogOp["UsunRekordzMenu","100"]    
% PCITYDEKRREKORD-AKCEPTUJESZ.ALG   // Opis: button AKCEPTUJESZ podczas dodawania
// ----- sprawdzenie poprawnosci
  if (not (p_konto_bank = "")) goto dalej1
    OkAlert["Wprowad|x symbol !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
  dalej1:
  ExDialogOp["KoniecWykonywania",""]
//
% PCITYDEKRREKORD-DODAJSTART1.ALG 
  naglowek_txt := "Dodanie nowego konta"
// wolane przy dodawanie nowego rekordu z pola
%< PCITYDEKRREKORD-DODAJSTART.ALG
  ExDialogOp["PozycjaNieAktywna","10"]
  ExDialogOp["IdzDoPozycji","11"]
//
% PCITYDEKRREKORD-DODAJSTART.ALG 
  naglowek_txt := "Dodanie nowego konta"
  ExDialogOp["PozycjaAktywna","10"]
  ExDialogOp["IdzDoPozycji","10"]
//
% PCITYDEKRREKORD-DODAJMODIF.ALG 
  naglowek_txt := "Modyfikacja konta"
  ExDialogOp["PozycjaNieAktywna","10"]
  ExDialogOp["IdzDoPozycji","11"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
//
% PCITYDEKRREKORD-DODAJLOOK.ALG
  naglowek_txt := "Opis "
  ExDialogOp["PozycjaNiewprowadzana","*"]
//
//
% PCITYDEKR-MENU-1.DLG
%< PCITYDEKR-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% PCITYDEKR-MENU-0.DLG
%< PCITYDEKR-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% PCITYDEKR-MENU-3.DLG
%< PCITYDEKR-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-1.XXX
//
% PCITYDEKR-MENU-2.DLG
%< PCITYDEKR-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-0.XXX
//
% PCITYDEKR-MENU-4.DLG
%< PCITYDEKR-MENU-MODIF.XXX
%< xREJESTRY-BUTTONY-0.XXX
//
//
% PCITYDEKR-MENU-X.XXX
PRZYCISK_CANCELID = 0
##DEFWINDOW = 3,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"CITYDIRECT/Zmiana dekretu (przychod|ow/rozchod|ow)"
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:PCITYDEKRMENU,,KLUCZ,1
##101,TLD,0,,"Konto          (P)Z konta     (P)Na konto    (R)Z konta     (R)Na konto",,yellow/blue&black/white&lwhite/blue
##1,,ADP,,"%W%yb|or"
##5,LBGT,P,,"%D%odaj"
##20,LBGT,P,,"%U%su|n"
##4,LBGT,P,,"Z%m%ie|n"
##8,LBGT,P,,"%S%zukaj"
##9,LBGT,P,,"%N%ast|epny "
##2,LBGT,P,,"%O%pis"

 #101                                                                        #

#100                                                                          #100<
 
% PCITYDEKR-MENU-MODIF.XXX
%< PCITYDEKR-MENU-X.XXX
                           #5       # #8        # 
  Znajd|x: #7,0,AC  #      #4       # #9        #
                           #20      # 

% PCITYDEKR-MENU-LOOK.XXX
%< PCITYDEKR-MENU-X.XXX
                           #2       # #8        # 
  Znajd|x: #7,0,AC  #                 #9        #
                                      
// --------
// REKORD
// --------
% PCITYDEKR.XXX
PRZYCISK_CANCELID = 2
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dodanie/Zmiana typu"
##9,D,0,,,,lred/black&lwhite/black&blue/yellow,,,,ZMIENNA:naglowek_txt
##200,DZ,ADPH,,"Konta dla przychod|ow"
##201,DZ,ADPH,,"Konta dla rozchod|ow"
##10,0,ACP,,,,,,,,POLEUNIKALNE:p_konto_bank
##12,0,ACP,,,,,,,,POLE:p_konto_z
##13,0,ACP,,,,,,,,POLE:p_konto_na
##14,0,ACP,,,,,,,,POLE:r_konto_z
##15,0,ACP,,,,,,,,POLE:r_konto_na
##20,0,P,,"Tak",,,,,,POLE:p_puste,,A,1,"T"
##21,0,P,,"Nie",,,,,,POLE:p_puste,,,1,"N"
##22,0,P,,"Tak",,,,,,POLE:r_puste,,A,2,"T"
##23,0,P,,"Nie",,,,,,POLE:r_puste,,,2,"N"
 #9                                  #


 Symbol konta 
 bankowego:    #10          #      

#200
  Konto z:          Konto na:

  #12        #      #13             #

          Dla pustego przychodu #20 #
          u|zyj <Konto na>:      #21 #
                                       #200<

#201
  Konto z:          Konto na:

  #14        #      #15             #

          Dla pustego rozchodu  #22 #
          u|zyj <Konto na>:      #23 #
                                       #201<

//
% PCITYDEKR-REKORD-1.DLG,PCITYDEKR-REKORD-0.DLG,PCITYDEKR-REKORD-3.DLG
%<PCITYDEKR.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% PCITYDEKR-REKORD-2.DLG
%<PCITYDEKR.XXX
%<REKORD-OK-BUTT.XXX
//
% PCITYDEKRMENU.MEN
D=
1,,,,14
2,,,,14
3,,,,14
5,,,,14
6,,,,14
//
% WYTNIJ_SPACJE_KOD.ALG 
  callalg["WYTNIJ_SPACJE"]
// zmienne d_string := string
  lp := 1
  petla:
  czy := StrIn[ZrobKody["194"],d_string]
  if (czy = -1) ExitAlg[0]
  temp1 := StrCut[d_string,0,czy]
  temp2 := StrCut[d_string,czy+lp,StrLen[d_string]-czy]
  d_string := temp1+temp2
  goto petla
  ExitALg[0]
% WYTNIJ_SPACJE.ALG 
// zmienne d_string := string
  lp := 1
  petla:
  czy := StrIn[" ",d_string]
  if (czy = -1) ExitAlg[0]
  temp1 := StrCut[d_string,0,czy]
  temp2 := StrCut[d_string,czy+lp,StrLen[d_string]-czy]
  d_string := temp1+temp2
  goto petla
  ExitALg[0]
//  
% zrob_nowe_konto.alg
  tekst := d_string
  znaczek := "-"
  callalg["znak_na_spacja"]
  d_string := tekst
  callalg["WYTNIJ_SPACJE"]
//
% zrob_nowe_konto_wyglad.alg
  callalg["zrob_nowe_konto"]
  nowe := ""
  nowe := strcut[d_string,0,2]+" "+strcut[d_string,2,4]+" "+strcut[d_string,6,4]+" "+strcut[d_string,10,4]+" "+strcut[d_string,14,4]+" "+strcut[d_string,18,4]+" "+strcut[d_string,22,4]
  d_string := nowe
//  
% zrob_nowy_wyglad_konto.alg
  tekst := d_string
// -- numer - nkb
  numer_01 := strcut[tekst,0,2]
  numer_02 := strcut[tekst,2,4]+strcut[tekst,6,4]
  numer_03 := strcut[tekst,10,4]+" "+strcut[tekst,14,4]+" "+strcut[tekst,18,4]+" "+strcut[tekst,22,4]
//  
% PRZELEW-ZMIANA-STATUSU-WARUNEK.ALG
  callalg["PRZELEW-ZMIANA-STATUSU2"]
% xx.alg
d1 := rejwezp_d["e:data_przel"]
d2 := rejwezp_d["e:data_przel"]
status := rejwezp_s["e:staus"]
ok := .T.
rek := rej
if (not(rejop["e:wezpierwszyrek",""])) okalert["blad"]
okalert[""+rejwezp_d["e:data_przel"]]
rejop["e:zmienkluczrej","0"]
petla:
if (not(rejwezp_d["e:data_przel"] > '02.08.12')) goto next
if (not(rejwezp_s["e:status"] = "autom")) goto next
  callalg["przelew-usunprze"]
next:
if (rejop["e:weznastepnyrek",""]) goto petla
exdialogop["wyswietlpozycje","100"]
//
// --------------------------------------------------------
% PKONTA.RJR
100
1
PKONTA
# 
#
% PKONTA.DIC
"p_konto",100,Estring,"Konto"
"p_dew",101,Estring,"Dew"
"p_own",201,Ekwota,"Obroty Wn"
"p_oma",202,Ekwota,"Obroty Ma"
"p_swn",203,Ekwota,"S.konta Wn"
"p_sma",204,Ekwota,"S.konta Wn"
"p_sswn",205,Ekwota,"Saldo Wn"
"p_ssma",206,Ekwota,"Saldo Ma"
% PKONTA.DBF 
100,2000,,2,1
101,string,3,2
201,xkwota,,x
202,xkwota,,x
203,xkwota,,x
204,xkwota,,x
205,xkwota,,x
206,xkwota,,x
100,0,,,2
101,0,,,2
//
% PKONTA-VIEW.DIC
"PKONTA",0

% POKAZ_PKONTA.MEN
D=,"",AB
LINIA-DIALOG = PKONTA-VIEW,"Potwierdzenia wp|lat"
100,,,,11,"Konto"
101,,,,3,"DEW"
201,,,,16,"Obroty Wn"
202,,,,16,"Obroty Ma"
//203,,,,13,"S.konta Wn"
//204,,,,13,"S.konta Ma"
205,,,,15,"Saldo Wn"
206,,,,15,"Saldo Ma"
//
% STANY_KONT.DLG
PRZYCISK_CANCELID = 0
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Stany kont z zapisami do przelew|ow"
##10,,ADP,,@5  
##100,0,ACP,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:POKAZ_PKONTA,PY
##204,DZ,ADPH,,"Sumy kwot z zapis|ow w PLN:"
##206,TLD,0,,"     Wszystkie  Niezaznaczone   Do przelew|ow",,yellow/blue&black/white&red/yellow
##210,D,P,,,,,,,,ZMIENNA:p_zap_all,xkwota:x
##211,D,P,,,,,,,,ZMIENNA:p_zap_blok,xkwota:x
##212,D,P,,,,,,,,ZMIENNA:p_zap_ok,xkwota:x
##213,D,P,,,,,,,,ZMIENNA:p_dew_zap_all,xkwota:x
##214,D,P,,,,,,,,ZMIENNA:p_dew_zap_blok,xkwota:x
##215,D,P,,,,,,,,ZMIENNA:p_dew_zap_ok,xkwota:x
//##101,TLD,0,,"Konto        Nazwa                         Kwota Wn          Kwota Ma",,yellow/blue&black/white&lwhite/blue
//           
// #101                                                                      #

 
 #100





 
 
 

 
                                                                           #

                               #204
  #10       #                   #206                                       #
                                #210         # #211         # #212         #
                                #213            # #214           # #215           #
                                                                            #204<
// ----------------------------------
% TABLICA-AKCJI-STANY_KONT
"AKCJA-PRZED-WYSWIETLENIEM",STANY_KONT-PRZED
% STANY_KONT-PRZED.ALG
ExDialogOp["UstawFiltrAlg","100:POKAZ_PKONTA-FILTR"]
% POKAZ_PKONTA-FILTR.ALG
A_OK := .N.
if (rejwezp_s["py:p_dew"] == waluta_kontrahenta) A_OK := .T.
% PRLDOK-PRZELEW-ZMIEN-WALUTE.ALG
  callalg["PRLDOK-MENU-PRZED"]
  exdialogop["wyswietlpozycje","101"]
  exdialogop["wyswietlpozycje","100"]
% PRLDOK-PRZELEW-STANY-KONT.ALG
  rekpos := rejwezp_k["p:rejestrrekpos"]
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
    callalg["ZLICZ-DANE-PRLDOK"]
    exdialogop["wyswietlpozycje","210"]
    exdialogop["wyswietlpozycje","211"]
    exdialogop["wyswietlpozycje","212"]
  if (not rejop["PY:OtworzrejTemp","PKONTA.RJR"]) goto exit
  if (not rejop["x:otworzrej","KONTABANK.RXR"]) goto exit
  if (not (rejop["x:wezpierwszyrek",""])) goto koniec
  finnop["@3openmainx",""]
  petla:
    kwn := .
    kma := .
    rejop["py:dodajrek",""]
    tempkonto := rejwezp_s["x:konto_bank"]
    finnop["@3znajdzdok",tempkonto]
    rejwstawp_s["py:p_konto",tempkonto]
    kwn := O[tempkonto+" BRWn"]
    kma := O[tempkonto+" BRMa"]
// PLN
    xrejwstawp_s["py:p_dew","PLN"]
    xrejwstawp_k["py:p_own",kwn]
    xrejwstawp_k["py:p_oma",kma]
    xrejwstawp_k["py:p_swn",S[kwn,kma]]
    xrejwstawp_k["py:p_sma",S[kma,kwn]]
    xrejwstawp_k["py:p_sswn",S[kwn,kma+p_zap_ok]]
    xrejwstawp_k["py:p_ssma",S[kma+p_zap_ok,kwn]]
    rejop["py:zapiszrek",""]
// DEW
    if(not(K_DEW)) goto next_rek
    
    if (not(FinnOp["Pierwszadew",""])) goto next_rek
     petla_dew:
     if (nazwadew == "PLN") goto next_dew
      kwn := O[tempkonto +" BRWn:"+NazwaDew]
      kma := O[tempkonto +" BRMa:"+NazwaDew]
      if ((kwn = .) and (kma = .)) goto next_dew
        rejop["py:dodajrek",""]
        xrejwstawp_s["py:p_konto",tempkonto]
        xrejwstawp_s["py:p_dew",NazwaDew]
        xrejwstawp_k["py:p_own",kwn]
        xrejwstawp_k["py:p_oma",kma]
        xrejwstawp_k["py:p_swn",S[kwn,kma]]
        xrejwstawp_k["py:p_sma",S[kma,kwn]]
        xrejwstawp_k["py:p_sswn",S[kwn,kma+p_dew_zap_ok]]
        xrejwstawp_k["py:p_ssma",S[kma+p_dew_zap_ok,kwn]]
        rejop["py:zapiszrek",""]
      next_dew:
     if (FinnOp["nastepnadew",""]) goto petla_dew 

    next_rek:
  if (rejop["x:weznastepnyrek",""]) goto petla
  finnop["@3close",""]
  if (not (RejOp["py:PustyRej",""])) ExDialogop["idzdodialogu","STANY_KONT"]
//
  koniec:
  rejop["x:zamknijrej",""]
  rejop["PY:zamknijrej",""]
  exit:
  RejOp["P:ustawsprawdzrekpos",ToStr["#rekpos#S:0"]]
  ExDialogOp["idzdopozycji","100"]
//
//
% PRZELEWY-WYKRES-MC.ALG
  callalgfile["przelewy\przelewy_wykresy.perseus","START_PRZELEW-WYKRES-MC"]
% PRZELEWY-WYKRES-KW.ALG
  callalgfile["przelewy\przelewy_wykresy.perseus","START_PRZELEW-WYKRES-KW"]
% PRZELEWY-WYKRES-KO.ALG
  callalgfile["przelewy\przelewy_wykresy.perseus","START_PRZELEW-WYKRES-KO"]
//
% kontrola-konta-alert.alg
// na d_string konto
   a_ok := .N.
   callalg["zrob_nowe_konto"]
   if (strlen[d_string] = 26) goto dalej00
      OkAlert["Nieprawid|lowa d|lugo|s|c konta bankowego ! "+d_string]
      ExitAlg[0]
   dalej00:
   if (not(d_string == "00000000000000000000000000")) goto dalej001
      a_ok := .T.
      ExitAlg[0]
   dalej001:
   l_ko := strcut[d_string,0,2]
   n_ko := strcut[d_string,2,24]
   kod := "252100"
   d_string := n_ko+kod
   cz_dz := ""
   callpyt["import przelewy_tools | przelewy_tools.licz_konto()"]
   cz_dz := d_string
//   okalert[""+d_string]
//   cz_dz := strcut[d_string,strin[",",d_string]+1,3]
//   if (strin["L",cz_dz] > 0) cz_dz := strcut[d_string,strin[",",d_string]+1,2]
   ll_ko := 98-stringnaliczbe[cz_dz]
   if (stringnaliczbe[l_ko] = ll_ko) goto dalej01
      OkAlert["Nieprawid|lowa suma kontrolna w koncie bankowym ! $ Wed|lug wylicze|n powinna by|c : "+tostr["#ll_ko#S:0"]+ " a jest : "+l_ko+" !"]
      ExitAlg[0]   
   dalej01:
   a_ok := .T.
//
% kontrola-konta-no-alert.alg
// na d_string konto
   a_ok := .N.
   callalg["zrob_nowe_konto"]
   if (strlen[d_string] = 26) goto dalej00
      d_string := "Nieprawid|lowa d|lugo|s|c konta bankowego ! "+ d_string
      ExitAlg[0]
    dalej00:
   if (not(d_string == "00000000000000000000000000")) goto dalej001
      a_ok := .T.
      ExitAlg[0]
   dalej001:
   l_ko := strcut[d_string,0,2]
   n_ko := strcut[d_string,2,24]
   kod := "252100"
   d_string := n_ko+kod
   cz_dz := ""
   callpyt["import przelewy_tools | przelewy_tools.licz_konto()"]
   cz_dz := d_string
//   okalert[""+d_string]
//   cz_dz := strcut[d_string,strin[",",d_string]+1,3]
//   if (strin["L",cz_dz] > 0) cz_dz := strcut[d_string,strin[",",d_string]+1,2]
   ll_ko := 98-stringnaliczbe[cz_dz]
   if (stringnaliczbe[l_ko] = ll_ko) goto dalej01
      d_string := "Nieprawid|lowa suma kontrolna w koncie bankowym ! $ Wed|lug wylicze|n powinna by|c : "+tostr["#ll_ko#S:0"]+ " a jest : "+l_ko+" !"
      ExitAlg[0]   
   dalej01:
   a_ok := .T.
//
% kontrola-konta-wylicz.alg
// na d_string konto 24 znaki 
   a_ok := .N.
   callalg["zrob_nowe_konto"]
   if (strlen[d_string] = 24) goto dalej00
      d_string := "Nieprawid|lowa d|lugo|s|c konta bankowego ! "+d_string
      ExitAlg[0]
    dalej00:
//   l_ko := strcut[d_string,0,2]
//   n_ko := strcut[d_string,2,24]
   l_ko := "00"
   n_ko := d_string
   kod := "252100"
   d_string := n_ko+kod
   cz_dz := ""
   callpyt["import przelewy_tools | przelewy_tools.licz_konto()"]
   cz_dz := d_string
   ll_ko := 98-stringnaliczbe[cz_dz]
//   if (stringnaliczbe[l_ko] = ll_ko) goto dalej01
//      d_string := "Nieprawid|lowa suma kontrolna w koncie bankowym ! $ Wed|lug wylicze|n powinna by|c : "+tostr["#ll_ko#S:0"]+ " a jest : "+l_ko+" !"
//      ExitAlg[0]   
   dalej01:
   a_ok := .T.
   d_string := tostr["#ll_ko#S:0"]+n_ko
   if (ll_ko <10 ) d_string := "0"+tostr["#ll_ko#S:0"]+n_ko
//

% IMPORT-SPEED.ALG
  CallAlgFile["przelewy\przelewy_speed.sl","SL.IMPORT_SPEED->start_import_dialog"]
//
% IMPORT-SPEED-VIEW.ALG
  CallAlgFile["przelewy\przelewy_speed.sl","SL.IMPORT_SPEED->look_dialog"]
//
% daj_nazwa_p_nab.alg
if (not (d_string == "")) goto dalej0
  ExitAlg[0]
dalej0:
p := d_string
CallSl["PRZELEWY->daj_nazwa_p_nab"]
//callsl["gl_daj_slownikopiss(""95"","""+p+""")"]
//
% daj_nazwa_p.alg
if (not (d_string == "")) goto dalej0
  ExitAlg[0]
dalej0:
n := ""
p := d_string 
CallSl["PRZELEWY->daj_nazwa_p"]
//callsl["gl_daj_slownikopiss(""96"","""+p+""")"]
//
% SOD_EX_OGEN-PRZELEW.alg
if (FinnOp["@1openmainx",""]) goto dalej01
  OkAlert["Nie mog|e otworzy|c ksi|egi !"]
ExitAlg[0]
dalej01:
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
if (not RozrOp["RozrListaKont","DS"]) goto koniec
If (not(YesAlert["Czy rozpocz|a|c wyszukiwanie$ danych do przelew|ow ?"])) goto koniec
txt_komunikat := "Przegl|adanie kont do przelew|ow.Prosz|e czeka|c !"
CallAlg["komunikat-work"]
if (FinnOp["ToFirstDok",""]) goto dalej02
  OkAlert["Brak danych z podanego przedzia|lu kont !"]
  goto koniec
dalej02:
if (not (rejop["A:usunplikrej","PRLDOK.RXR"])) goto koniec
if (not(RejOp["A:OtworzRejSprawdz","PRLDOK.RXR"])) goto koniec
if (not(RejOp["B:OtworzRej","PRZEZAP.RJR"])) goto koniec1
RejOp["A:ZmienKluczRej","4"]
RejOp["B:ZmienKluczRej","4"]
// RejOp["A:WyczyscRej",""]
petla01:
Displine[k_sym+" " + K_nazwa]
// sprawdzenie poprawnoœci konta
// 
a_ok := .N.
d_string := kl_konto
if (d_string == "") goto brak_konta
callalg["kontrola-konta-no-alert"]
if (a_ok) goto dalej_konto_ok
  callalg["NKB-KOMUNIKAT-KONTROLA"]
  if (not(a_ok)) goto nextkonto
  okalert["U kontrahenta o symbolu "+kl_sym+" $ "+kl_nazwa1+" $ wyst|api|l nast|epuj|acy b|l|ad. $ $ "+d_string+" $ "+kl_konto]
  goto nextkonto
brak_konta:
  callalg["NKB-KOMUNIKAT-KONTROLA"]
  if (not(a_ok)) goto nextkonto
  okalert["Kontrahent o symbolu "+kl_sym+" $ "+kl_nazwa1+" $ nie ma podanego konta bankowego !"]
  goto nextkonto
dalej_konto_ok:
//
a_ok := .T.
d_string := kl_sym
CallAlg["USTAL-PRIORYTET-KONTRAHENTA"]
prior := d_string
sl_opis := ""
k_typ := ""
CallAlg["KLPRIOR-USTAL-OPIS"]
if ((prior == "99") or (prior == "98")) goto nextkonto
//================================//
// POBRANIE PIERWSZEJ TRANSAKCJI 
if (not(RozrOp["ToFirstT",""])) goto nextkonto
dalej03:
  Disptext["."]
  kwota := 0
  If (not(tr_rodz == "Dos")) goto nexttrans
  d_string := "N"
  PRL_TRANSAKCJA := nrtr
  PRL_KLIENT := kl_sym
  PRL_KONTO_KLIENT := k_sym
  CallSl["PRZELEWY->czy_zakup_gotowka"]
  if (d_string == "T") goto nexttrans
//  
    kwota := S[TrObrMa,TrObrWn]
    if (not((kwota = .) OR (kwota = 0))) goto dodajrek2
    if ((TrObrMa > 0) or (TrObrMa = 0)) goto nexttrans
      kwota := S[TrObrWn,TrObrMa]
      kwota := kwota * -1
      if ((kwota = .) or (kwota = 0) or (kwota <0)) goto nexttrans
        goto dodajrek2
//        goto nexttrans     
      dodajrek2:
      if (kwota = .) goto nexttrans
      byl_prl := ""
      a_ok := .N.
      kwota_byl := .      
      kwota_dew_byl := .      
      d_string := ToStr["#k_sym#S*#NrTr#S"]
      d_string_k_sym := k_sym
      d_string_nrtr := NrTr
      d_string_dew := "PLN"      
      callalg["sprawdz-czy-jest-transakcja"]
      kwota_byl := 0
      kwota_dew_byl := 0
      if (a_ok) goto nexttrans
//      if (kwota_byl < 0) kwota_byl := kwota_byl *-1  
//      if ((a_ok) and (kwota=kwota_byl)) goto nexttrans
      kwotax := kwota
      kwotax_dew := kwota_dew
      if (kwota > kwota_byl) kwotax := kwota - kwota_byl
      if (kwota < kwota_byl) kwotax := kwota - kwota_byl
      
      if (kwota_dew > kwota_dew_byl) kwotax_dew := kwota_dew - kwota_dew_byl
      if (kwota_dew < kwota_dew_byl) kwotax_dew := kwota_dew - kwota_dew_byl
      
      kwota := kwotax
      kwota_dew := kwotax_dew
// czy jest z BO
      if (not(RozrOp["ToFirstZ",""])) goto koniec_bo
      petla_bo:
      if (zapiswn) goto next_bo
      if (not(zap_rodz == "Tra")) goto next_bo
      if (strcut[sw,0,2] == "BO") goto nexttrans
      next_bo:
      if (rozrop["tonextz",""]) goto petla_bo
      koniec_bo:
//
      if (not(RejOp["A:ZnajdzRek",d_string])) goto dodaj
        goto jest_juz
      dodaj:
        RejOp["A:DodajRek",""]
      jest_juz:
//
// szukanie zapisu tra dla tresc
      tresc_temp := "zap|lata za:"
      if (not(RozrOp["ToFirstZ",""])) goto koniec_tresc
      petla_tresc:
      if (zapiswn) goto next_tresc
      if (not(zap_rodz == "Tra")) goto next_tresc
      tresc_temp := tresc+"-"+sw
      goto koniec_tresc
      next_tresc:
      if (rozrop["tonextz",""]) goto petla_tresc
      koniec_tresc:
//
      RejWstawP_S["A:tresc1",tresc_temp]
      RejWstawP_S["A:trans",NrTr]
      RejWstawP_D["A:data_plat",termplat]
      RejWstawP_S["A:vatkontoplat",k_sym]
      RejWstawP_K["A:wartosc",kwota] 
      RejWstawP_S["A:k_status","autom"]
      RejWstawP_S["A:nazwa_kl1",kl_nazwa1]
      RejWstawP_S["A:nazwa_kl2",kl_nazwa2]
      RejWstawP_S["A:nazwabanku_kl",kl_nazwabanku]
      RejWstawP_S["A:numerbanku_kl",kl_konto]
      RejWstawP_S["A:sym_kl",kl_sym]
      RejWstawP_S["A:prior_kl",prior]
      RejWstawP_S["A:slownieprior_kl",sl_opis]
      RejWstawP_L["A:blokada",.T.]
      if (kwota <0) RejWstawP_L["A:blokada",.N.]
      RejWstawP_S["A:k_byl",byl_prl]
    nokwota:
    nexttrans:
    if (RozrOp["ToNextT",""]) goto dalej03
    kkoniec:
nextkonto:
if (FinnOp["ToNextDok",""]) goto petla01
koniec2:
RejOp["B:ZamknijRej",""]
koniec1:
RejoP["A:ZamknijRej",""]
koniec:
FinnOp["@1Close",""]
//
% IMPORT-MULTI.ALG
  CallAlgFile["przelewy\przelewy_multi.sl","SL.IMPORT_MULTI->start_import_dialog"]
% IMPORT-MULTI-VIEW.ALG
  CallAlgFile["przelewy\przelewy_multi.sl","SL.IMPORT_MULTI->look_dialog"]
//
% IMPORT-BRE.ALG
  CallAlgFile["przelewy\przelewy_bre.sl","SL.IMPORT_BRE->start_import_bre"]
% IMPORT-BRE-VIEW.ALG
  CallAlgFile["przelewy\przelewy_bre.sl","SL.IMPORT_BRE->look_dialog"]
//
% IMPORT-BRE-MULTI.ALG
  CallAlgFile["przelewy\przelewy_bre_multi.sl","SL.IMPORT_BRE_MULTI->start_import_dialog"]
% IMPORT-BRE-MULTI-VIEW.ALG
  CallAlgFile["przelewy\przelewy_bre_multi.sl","SL.IMPORT_BRE_MULTI->look_dialog"]
//
% IMPORT-RAIF-MULTI.ALG
  CallAlgFile["przelewy\przelewy_raif_multi.sl","SL.IMPORT_RAIF_MULTI->start_import_dialog"]
% IMPORT-RAIF-MULTI-VIEW.ALG
  CallAlgFile["przelewy\przelewy_raif_multi.sl","SL.IMPORT_RAIF_MULTI->look_dialog"]
//
% IMPORT-CITY-MULTI.ALG
  CallAlgFile["przelewy\przelewy_city_multi.sl","SL.IMPORT_CITY_MULTI->start_import_dialog"]
% IMPORT-CITY-MULTI-VIEW.ALG
  CallAlgFile["przelewy\przelewy_city_multi.sl","SL.IMPORT_CITY_MULTI->look_dialog"]
//
% IMPORT-PKOSA.ALG
  CallAlgFile["przelewy\przelewy_pkosa.sl","SL.IMPORT_PKOSA->start_import_pkosa"]
% IMPORT-PKOSA-VIEW.ALG
  CallAlgFile["przelewy\przelewy_pkosa.sl","SL.IMPORT_PKOSA->look_dialog"]
% IMPORT-PKOSA-PARAM.ALG
  CallAlgFile["przelewy\przelewy_pkosa.sl","SL.IMPORT_PKOSA->ustaw_param_pkosa"]
% IMPORT-PKOSA-RAPORTCSV.ALG
  CallAlgFile["przelewy\przelewy_pkosa.sl","SL.IMPORT_PKOSA->start_import_pkosa_csv"]
//
% POKAZ-KLPOWIAZANI-RXR.ALG
  RejOp["OtworzRejSprawdz","KLPOWIAZANI.RXR"]
  RejOp["K:OtworzRejSprawdz","REJESTRKL.RXR"]
  RejOp["WywolajMenu","1"]
  RejOp["ZamknijRej",""]
  RejOp["K:ZamknijRej",""]
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
##16,D,0,,,,&&lblue/white,,,,POLE:k:kl_swift
##3,D,0,,,,&&lblue/white,,,,POLE:k:kl_regon
##4,D,0,,,,&&lblue/white,,,,POLE:k:kl_pesel
Nazwa #5                            # Bank #9                            #
      #6                            #      #10                           #
Adres #7                            # Swift#16              #
      #8                            # Nip  #1          # Regon #3        #
//
% KLPOWIAZANIALGO.XXX
"AKCJA-PRZED-WYSWIETLENIEM-KLPOWIAZANI-REKORD-1.DLG",KLPOWIAZANIREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-KLPOWIAZANI-REKORD-3.DLG",KLPOWIAZANIREKORD-DODAJSTART1
"AKCJA-PRZED-WYSWIETLENIEM-KLPOWIAZANI-REKORD-0.DLG",KLPOWIAZANIREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-KLPOWIAZANI-REKORD-2.DLG",KLPOWIAZANIREKORD-DODAJLOOK
"AKCJA-BUTTON1-KLPOWIAZANI-REKORD-?.DLG",KLPOWIAZANIREKORD-AKCEPTUJESZ
"AKCJA-PO-POLU10-KLPOWIAZANI-REKORD-?.DLG",KLPOWIAZANIREKORD-ZNAJDZKL
"AKCJA-BUTTON20-KLPOWIAZANI-MENU-?.DLG",KLPOWIAZANIMENU-USUN
"AKCJA-BUTTON1111-KLPOWIAZANI-MENU-4.DLG",KLPOWIAZANIMENU-WYBOR
"AKCJA-LINIAMENU100-KLPOWIAZANI-MENU-?.DLG",KLPOWIAZANIMENU-WYSWIETL
//
% KLPOWIAZANIMENU-WYBOR.ALG
  d_string := rejwezp_s["p_kl_sym"]
  exdialogop["koniecwykonywania",""]
//
% KLPOWIAZANIREKORD-ZNAJDZKL.ALG
if (rejwezp_s["p_kl_sym"] == "") goto nie_kl
if (rejop["k:znajdzrek",rejwezp_s["p_kl_sym"]]) goto jest_kl
nie_kl:
rejop["k:wstawpustepola",""]
jest_kl:

% KLPOWIAZANIMENU-WYSWIETL.ALG
  callalg["KLPOWIAZANIREKORD-ZNAJDZKL"]
  exdialogop["wyswietlpozycje","200"]
  exdialogop["wyswietlpozycje","201"]
// ---------
// definicja rejestru
// --------
% KLPOWIAZANI.RXR,XKLPOWIAZANI.RXR # opis rejestru
1
1
KLPOWIAZANI # nazwa danych
# 
#
"Powt|orzony symbol !"
"Zmieniasz dane ?"
"Dodajesz nowy ?" 
"Usun|a|c z listy ?" 
"Chcesz doda|c jeszcze jedn ?" 
"%s - nie ma takiego. $Czy chcesz doda|c nowego ?" 
"Nie ma |zadnych !"
"Rejestr jest pusty - wstawiasz pierwszego ?"
"Nie ma o takim symbolu. $Znale|x|c nast|epnego ?"
"%s - nie ma takiego !"
KLPOWIAZANI-WAR
% KLPOWIAZANI.DBF
0,log,,,,,D          # usuwanie "w miejscu"
1,2100,,,1,,N        # symbol kontrahenta
//
% KLPOWIAZANI.DIC # slownik do danych o X
"p_kl_sym",1,Estring
% KLPOWIAZANI-WAR.DIC
"Symbol kontrahenta powiazanego",1
//
// ALGORYTMY
// --------
% KLPOWIAZANIMENU-USUN.ALG
  if (not YesNAlert["Usun|a|c symbol "+p_kl_sym+" z listy ?"]) ExitAlg[0]
  RejOp["UsunRek",""]
  ExDialogOp["UsunRekordzMenu","100"]    
% KLPOWIAZANIREKORD-AKCEPTUJESZ.ALG   // Opis: button AKCEPTUJESZ podczas dodawania
// ----- sprawdzenie poprawnosci
  if (not (p_kl_sym = "")) goto dalej1
    OkAlert["Wprowad|x symbol !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
  dalej1:
  ExDialogOp["KoniecWykonywania",""]
//
% KLPOWIAZANIREKORD-DODAJSTART1.ALG 
  naglowek_txt := "Dodanie nowego"
// wolane przy dodawanie nowego rekordu z pola
%< KLPOWIAZANIREKORD-DODAJSTART.ALG
  ExDialogOp["PozycjaNieAktywna","10"]
//
% KLPOWIAZANIREKORD-DODAJSTART.ALG 
  naglowek_txt := "Dodanie nowego"
  ExDialogOp["PozycjaAktywna","10"]
  ExDialogOp["IdzDoPozycji","10"]
  callalg["KLPOWIAZANIREKORD-ZNAJDZKL"]
  exdialogop["wyswietlpozycje","400"]
//
% KLPOWIAZANIREKORD-DODAJMODIF.ALG 
  naglowek_txt := "Modyfikacja"
  ExDialogOp["PozycjaAktywna","*"]
  callalg["KLPOWIAZANIREKORD-ZNAJDZKL"]
  exdialogop["wyswietlpozycje","400"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
//
% KLPOWIAZANIREKORD-DODAJLOOK.ALG
  naglowek_txt := "Opis "
  callalg["KLPOWIAZANIREKORD-ZNAJDZKL"]
  exdialogop["wyswietlpozycje","400"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
//
//
% KLPOWIAZANI-MENU-1.DLG
%< KLPOWIAZANI-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-1.XXX

//
% KLPOWIAZANI-MENU-0.DLG
%< KLPOWIAZANI-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-0.XXX

//
% KLPOWIAZANI-MENU-3.DLG
%< KLPOWIAZANI-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-1.XXX

//
% KLPOWIAZANI-MENU-2.DLG
%< KLPOWIAZANI-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-0.XXX

//
% KLPOWIAZANI-MENU-4.DLG
%< KLPOWIAZANI-MENU-MODIF.XXX
%< xREJESTRY-BUTTONY-0.XXX

//
//
% KLPOWIAZANI-MENU-X.XXX
PRZYCISK_CANCELID = 0
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Kontrahenci powi|azani"
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:KLPOWIAZANIMENU,,KLUCZ,1
##200,D,P,,,,,,,,POLE:K:kl_nazwa1
##201,D,P,,,,,,,,POLE:K:kl_nazwa2
##1,,ADP,,"%W%yb|or"
##5,LBGT,P,,"%D%odaj"
##20,LBGT,P,,"%U%su|n"
##4,LBGT,P,,"Z%m%ie|n"
##8,LBGT,P,,"%S%zukaj"
##9,LBGT,P,,"%N%ast|epny "
##2,LBGT,P,,"%O%pis"

#100                                             #100<

 #200                                           #
 #201                                           #
 
% KLPOWIAZANI-MENU-MODIF.XXX
%< KLPOWIAZANI-MENU-X.XXX
                           #5       # #8        # 
  Znajd|x: #7,0,AC  #       #4       # #9        #
                           #20      # 
//
% KLPOWIAZANI-MENU-LOOK.XXX
%< KLPOWIAZANI-MENU-X.XXX
                           #2       # #8        # 
  Znajd|x: #7,0,AC  #                 #9        #
//
// --------
// REKORD
// --------
% KLPOWIAZANI.XXX
PRZYCISK_CANCELID = 2
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dodanie/Zmiana"
##9,D,0,,,,lred/black&lwhite/black&blue/yellow,,,,ZMIENNA:naglowek_txt
##10,0,ACP,,,,,,,,POLEUNIKALNE:p_kl_sym,2100:2
##400,D,ADPH,,"Dane kontrahenta",,,,,,DIALOG:KONTRAHENT-FILTR-DANE
 #9                                  #

 Symbol kontrahenta:    #10          #      
 

 #400

 
                                                                           #


//
% KLPOWIAZANI-REKORD-1.DLG,KLPOWIAZANI-REKORD-0.DLG,KLPOWIAZANI-REKORD-3.DLG
%<KLPOWIAZANI.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX

//
% KLPOWIAZANI-REKORD-2.DLG
%<KLPOWIAZANI.XXX
%<REKORD-OK-BUTT.XXX

//
% KLPOWIAZANIMENU-EDYCJA.DIC
"KLPOWIAZANI",0
"KLFILEEXP",2,,"K"
//
% KLPOWIAZANIMENU.MEN
D=,"",AB
LINIA-DIALOG = KLPOWIAZANIMENU-EDYCJA,"Kolumny"
1,,,,10,"Symbol"
//////////////////////////////////////////////////////////////////////////////
//
% POKAZ-DEKRETY-PRZYCHODOW-RXR.ALG
  id_modul := ""
  RejOp["OtworzRejSprawdz","MULTI_DEKRETY_P.RXR"]
  RejOp["WywolajMenu","1"]
  RejOp["ZamknijRej",""]
//
% POKAZ-DEKRETY-ROZCHODOW-RXR.ALG
  id_modul := ""
  RejOp["OtworzRejSprawdz","MULTI_DEKRETY_R.RXR"]
  RejOp["WywolajMenu","1"]
  RejOp["ZamknijRej",""]
//
% MULTI_DEKRETY_P_ALGO.XXX,MULTI_DEKRETY_R_ALGO.XXX
"AKCJA-PRZED-WYSWIETLENIEM-MULTI_DEKRETY-REKORD-1.DLG",MULTI_DEKRETYREKORD-DODAJSTART
"AKCJA-PRZED-WYSWIETLENIEM-MULTI_DEKRETY-REKORD-3.DLG",MULTI_DEKRETYREKORD-DODAJSTART1
"AKCJA-PRZED-WYSWIETLENIEM-MULTI_DEKRETY-REKORD-0.DLG",MULTI_DEKRETYREKORD-DODAJMODIF
"AKCJA-PRZED-WYSWIETLENIEM-MULTI_DEKRETY-REKORD-2.DLG",MULTI_DEKRETYREKORD-DODAJLOOK
"AKCJA-PO-POLU10-MULTI_DEKRETY-REKORD-?.DLG",MULTI_DEKRETYREKORD-POLE10
"AKCJA-BUTTON1-MULTI_DEKRETY-REKORD-?.DLG",MULTI_DEKRETYREKORD-AKCEPTUJESZ
"AKCJA-BUTTON20-MULTI_DEKRETY-MENU-?.DLG",MULTI_DEKRETYMENU-USUN
"AKCJA-BUTTON1111-MULTI_DEKRETY-MENU-4.DLG",MULTI_DEKRETYMENU-WYBOR
//
% MULTI_DEKRETYMENU-WYBOR.ALG
  d_string := rejwezp_s["p_konto"]
  exdialogop["koniecwykonywania",""]
//
% MULTI_DEKRETYREKORD-POLE10.ALG
if (p_konto == "") ExitAlg[0]
rejop["x:otworzrej","KONTABANK.RXR"]
if (rejop["x:znajdzrek",p_konto]) goto jest
okalert["Brak zdefiniowanego konta bankowego w module przelew|ow !"]
goto koniec
jest:
d_string := rejwezp_s["x:numer_bank"]
callalg["zrob_nowe_konto"]
rejwstawp_s["p_numer",d_string]
koniec:
rejop["x:zamknijrej",""]
exdialogop["wyswietlpozycje","11"]
// ---------
// definicja rejestru
// --------
% MULTI_DEKRETY_P.RXR,MULTI_DEKRETY_R.RXR # opis rejestru
1
1
MULTI_DEKRETY # nazwa danych
# 
#
"Powt|orzony symbol !"
"Zmieniasz dane ?"
"Dodajesz nowy ?" 
"Usun|a|c z listy ?" 
"Chcesz doda|c jeszcze jedn ?" 
"%s - nie ma takiego. $Czy chcesz doda|c nowego ?" 
"Nie ma |zadnych !"
"Rejestr jest pusty - wstawiasz pierwszego ?"
"Nie ma o takim symbolu. $Znale|x|c nast|epnego ?"
"%s - nie ma takiego !"
MULTI_DEKRETY-WAR
//
% MULTI_DEKRETY.DBF,MULTI_DEKRETY_P.DBF,MULTI_DEKRETY_R.DBF
0,log,,,,,D          # usuwanie "w miejscu"
//1,string,,480,1      # konto bankowe z rejestru
1,2000,,0,1           # konto bankowe z rejestru / z planu kont
2,string,30          # numer konta
3,2000,,0               # kont zbiorcze
1,0,,,2
2,0,,,2
3,0,,,2
//
% MULTI_DEKRETY.DIC,MULTI_DEKRETY_P.DIC,MULTI_DEKRETY_R.DIC  
"p_konto",1,Estring,"Konto"
"p_numer",2,Estring,"Numer"
"p_plan",3,Estring,"Dekret"
//
% MULTI_DEKRETY-WAR.DIC
"Symbol konta bankowego",1
"Numer konta bankowego",2
"Dekret",3
//
// ALGORYTMY
// --------
% MULTI_DEKRETYMENU-USUN.ALG
  if (not YesNAlert["Usun|a|c symbol "+p_konto+" z listy ?"]) ExitAlg[0]
  RejOp["UsunRek",""]
  ExDialogOp["UsunRekordzMenu","100"]    
% MULTI_DEKRETYREKORD-AKCEPTUJESZ.ALG   // Opis: button AKCEPTUJESZ podczas dodawania
// ----- sprawdzenie poprawnosci
  if (not (p_konto = "")) goto dalej1
    OkAlert["Wprowad|x symbol konta !"]
    ExDialogOp["IdzDoPozycji","10"]
    ExitAlg[0]
  dalej1:
  if (not (p_numer = "")) goto dalej2
    OkAlert["Wprowad|x numer konta !"]
    ExDialogOp["IdzDoPozycji","11"]
    ExitAlg[0]
  dalej2:
  if (not (p_plan = "")) goto dalej3
    OkAlert["Wprowad|x konto dekretu !"]
    ExDialogOp["IdzDoPozycji","12"]
    ExitAlg[0]
  dalej3:
  ExDialogOp["KoniecWykonywania",""]
//
% MULTI_DEKRETYREKORD-DODAJSTART1.ALG 
  naglowek_txt := "Dodanie nowego"
// wolane przy dodawanie nowego rekordu z pola
%< MULTI_DEKRETYREKORD-DODAJSTART.ALG
  ExDialogOp["PozycjaNieAktywna","10"]
//
% MULTI_DEKRETYREKORD-DODAJSTART.ALG 
  naglowek_txt := "Dodanie nowego"
  ExDialogOp["PozycjaAktywna","10"]
  ExDialogOp["IdzDoPozycji","10"]
//
% MULTI_DEKRETYREKORD-DODAJMODIF.ALG 
  naglowek_txt := "Modyfikacja"
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
//
% MULTI_DEKRETYREKORD-DODAJLOOK.ALG
  naglowek_txt := "Opis "
  ExDialogOp["PozycjaNiewprowadzana","*"]
//
% MULTI_DEKRETY-MENU-1.DLG
%< MULTI_DEKRETY-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-1.XXX

//
% MULTI_DEKRETY-MENU-0.DLG
%< MULTI_DEKRETY-MENU-MODIF.XXX
%< REJESTRY-BUTTONY-0.XXX

//
% MULTI_DEKRETY-MENU-3.DLG
%< MULTI_DEKRETY-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-1.XXX

//
% MULTI_DEKRETY-MENU-2.DLG
%< MULTI_DEKRETY-MENU-LOOK.XXX
%< REJESTRY-BUTTONY-0.XXX

//
% MULTI_DEKRETY-MENU-4.DLG
%< MULTI_DEKRETY-MENU-MODIF.XXX
%< xREJESTRY-BUTTONY-0.XXX

//
//
% MULTI_DEKRETY-MENU-X.XXX
PRZYCISK_CANCELID = 0
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dekrety dla kont rozrachunkowych"
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:MULTI_DEKRETYMENU,,KLUCZ,1
##1,,ADP,,"%W%yb|or"
##5,LBGT,P,,"%D%odaj"
##20,LBGT,P,,"%U%su|n"
##4,LBGT,P,,"Z%m%ie|n"
##8,LBGT,P,,"%S%zukaj"
##9,LBGT,P,,"%N%ast|epny "
##2,LBGT,P,,"%O%pis"

#100                                                 #100<
 
% MULTI_DEKRETY-MENU-MODIF.XXX
%< MULTI_DEKRETY-MENU-X.XXX
                           #5       # #8        # 
  Znajd|x: #7,0,AC  #       #4       # #9        #
                           #20      # 
//
% MULTI_DEKRETY-MENU-LOOK.XXX
%< MULTI_DEKRETY-MENU-X.XXX
                           #2       # #8        # 
  Znajd|x: #7,0,AC  #                 #9        #
//
// --------
// REKORD
// --------
% MULTI_DEKRETY.XXX
PRZYCISK_CANCELID = 2
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dodanie/Zmiana"
##9,D,0,,,,lred/black&lwhite/black&blue/yellow,,,,ZMIENNA:naglowek_txt
##10,0,ACP,,,,,,,,POLE:p_konto
##11,0,ACP,,,,,,,,POLE:p_numer
##12,0,ACP,,,,,,,,POLE:p_plan
 #9                                        #

 Symbol konta: #10        #      
 

 Numer konta:  #11                         #      
 
 
 Dekret konta: #12        #      

 
//
% MULTI_DEKRETY-REKORD-1.DLG,MULTI_DEKRETY-REKORD-0.DLG,MULTI_DEKRETY-REKORD-3.DLG
%<MULTI_DEKRETY.XXX
%<REKORD-AKCEPTUJESZ-BUTT.XXX
//
% MULTI_DEKRETY-REKORD-2.DLG
%<MULTI_DEKRETY.XXX
%<REKORD-OK-BUTT.XXX
//
% MULTI_DEKRETYMENU-EDYCJA.DIC
"MULTI_DEKRETY",0
//
% MULTI_DEKRETYMENU.MEN
D=,"",AB
LINIA-DIALOG = MULTI_DEKRETYMENU-EDYCJA,"Kolumny"
1,,,,14,"Konto"
2,,,,26,"Numer"
3,,,,14,"Dekret"
//
//
//
//
//
//
//
// plik nakladkowy do przelewow
//
% NKB-KOMUNIKAT-KONTROLA.ALG
 A_OK := .T.
 CZ_k := .T.
// sprawdzenie czy kontrolowac
  if (not (RejOp["X:OtworzRejSprawdz","PARAMPRZELEW.RJR"])) GOTO go_nkb00
  if (RejOp["X:WezPierwszyRek",""]) goto go_nkb02
     cz_k := .T.
     goto go_nkb01
  go_nkb02:
     cz_k := rejwezp_l["x:kontrola"]
  go_nkb01:
  rejop["x:zamknijrej",""]
  go_nkb00:
  A_OK := cz_k
  ExitAlg[0]
//
% DEF_ROZCHOD-OGEN-PRZELEW.alg
//
if (not (rejop["A:usunplikrej","PRLDOK.RXR"])) ExitAlg[0]
callalg["PRLDOK-PRZELEWY-USUN-CZYSC"]
//
//
odloz_gen := .N.
CallSl["PRZELEWY->daj_odloz_gen_prl"]
zaplaty_gen := .N.
CallSl["PRZELEWY->daj_zaplaty_gen_prl"]
//
ksiega_old_gen := ""
ksiega_act_gen := ""
prl_ksiega := ""
CallSl["PRZELEWY->daj_ksiega_old_gen"]
if (ksiega_old_gen == "") goto skip001
if (YesAlert["Czy przeszukiwa|c transakcje z poprzedniej ksi|egi: "+ksiega_old_gen+" ?"]) prl_ksiega := ksiega_old_gen
skip001:
if (FinnOp["@1openmainx",prl_ksiega]) goto dalej01
  OkAlert["Nie mog|e otworzy|c ksi|egi !"]
ExitAlg[0]
dalej01:
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
// ---------------------------- 
id_modul := ""
kontobank := ""
swtyp_dok := ""
dok_symbol := ""
metoda_gen_bank := 0
CallSl["PRZELEWY->daj_metoda_gen_prl"]
// ----------------------------
ExDialogOp["IdzDoDialogu",id_modul+"PODAJKONTOBANKU"]
if (kontobank = "") goto koniec
if (not (rejop["00:otworzrej","MULTI_DEKRETY_R.RXR"])) goto koniec
If (not(YesAlert["Czy rozpocz|a|c wyszukiwanie$ danych do przelew|ow ?"])) goto koniec
txt_komunikat := "Przegl|adanie kont do przelew|ow.Prosz|e czeka|c !"
CallAlg["komunikat-work"]
// ---------------------------------------------------------
start_go := .N.
rozra := .N.
if (rejop["00:znajdzrek",kontobank]) goto rob_konto
if (not yesalert["Brak zdefiniowanych kont ! $ Czy uruchmi|c wg kont rozrachunkowych ?"]) goto koniec
if (not RozrOp["RozrListaKont","DS"]) goto koniec
rozra := .T.
rob_konto:
if (rozra) goto wg_kont
if (not(rejwezp_s["00:p_konto"] == kontobank)) goto koniec
finnop["setp",rejwezp_s["00:p_plan"]]
wg_kont:
//
if (FinnOp["ToFirstDok",""]) goto dalej02
  if (start_go) goto koniec
  OkAlert["Brak danych z podanego przedzia|lu kont !"]
  goto koniec
dalej02:
if (start_go) goto skip_open_rej
if (not (rejop["A:usunplikrej","PRLDOK.RXR"])) goto koniec
if (not(RejOp["A:OtworzRejSprawdz","PRLDOK.RXR"])) goto koniec
if (not(RejOp["B:OtworzRej","PRZEZAP.RJR"])) goto koniec1
RejOp["A:ZmienKluczRej","4"]
RejOp["B:ZmienKluczRej","4"]
start_go := .t.
skip_open_rej:
///////////////////////////////////////////////////////////////////////////////////////////////
//
///////////////////////////////////////////////////////////////////////////////////////////////
petla01:
Displine[k_sym+" " + K_nazwa]
// sprawdzenie poprawnoœci konta
// darek
a_ok := .N.
d_string := kl_konto
if (d_string == "") goto brak_konta
callalg["kontrola-konta-no-alert"]
if (a_ok) goto dalej_konto_ok
  callalg["NKB-KOMUNIKAT-KONTROLA"]
  if (not(a_ok)) goto nextkonto
  okalert["U kontrahenta o symbolu "+kl_sym+" $ "+kl_nazwa1+" $ wyst|api|l nast|epuj|acy b|l|ad. $ $ "+d_string+" $ "+kl_konto]
  goto nextkonto
brak_konta:
  callalg["NKB-KOMUNIKAT-KONTROLA"]
  if (not(a_ok)) goto nextkonto
  okalert["Kontrahent o symbolu "+kl_sym+" $ "+kl_nazwa1+" $ nie ma podanego konta bankowego !"]
  goto nextkonto
dalej_konto_ok:
//
a_ok := .T.
d_string := kl_sym
CallAlg["USTAL-PRIORYTET-KONTRAHENTA"]
prior := d_string
sl_opis := ""
k_typ := ""
CallAlg["KLPRIOR-USTAL-OPIS"]
if ((prior == "99") or (prior == "98")) goto nextkonto
//================================
// POBRANIE PIERWSZEJ TRANSAKCJI 
//================================
if (not(RozrOp["ToFirstT",""])) goto nextkonto
dalej03:
  Disptext["."]
  kwota := 0
  If (not(tr_rodz == "Dos")) goto nexttrans
  d_string := "N"
  PRL_TRANSAKCJA := nrtr
  PRL_KLIENT := kl_sym
  PRL_KONTO_KLIENT := k_sym
  CallSl["PRZELEWY->czy_zakup_gotowka"]
  if (d_string == "T") goto nexttrans
  
    kwota := S[TrObrMa,TrObrWn]
    if (metoda_gen_bank = 1) kwota := TrObrMa - TrObrWn
    if (not((kwota = .) OR (kwota = 0))) goto dodajrek2
    if ((TrObrMa > 0) or (TrObrMa = 0)) goto nexttrans
      kwota := S[TrObrWn,TrObrMa]
      kwota := kwota * -1
      if ((kwota = .) or (kwota = 0) or (kwota <0)) goto nexttrans
        goto dodajrek2
//        goto nexttrans     
      dodajrek2:
      if (kwota = .) goto nexttrans
      d_string := ToStr["#k_sym#S*#NrTr#S"]
      d_string_k_sym := k_sym
      d_string_nrtr := NrTr
      d_string_dew := "PLN"
      byl_prl := ""
      a_ok := .N.
      kwota_byl := .
      kwota_dew_byl := .
      callalg["sprawdz-czy-jest-transakcja"]
      goto pomniejsz
// ------------ dla przelewow juz wystawionych pomniejszenie      
      kwota_byl := 0
      if (a_ok) goto nexttrans
// IP ??      
//      if (kwota_byl < 0) kwota_byl := kwota_byl *-1  
//      if ((a_ok) and (kwota=kwota_byl)) goto nexttrans
      if (kwota_byl < 0) kwota_byl := kwota_byl *-1  
      if ((a_ok) and (kwota=kwota_byl)) goto nexttrans
// -----------------------------------------------------------------------
pomniejsz:
      kwotax := kwota
      if (kwota > kwota_byl) kwotax := kwota - kwota_byl
      if (kwota < kwota_byl) kwotax := kwota - kwota_byl
      kwota := kwotax
//
      if (not(RejOp["A:ZnajdzRek",d_string])) goto dodaj
        goto jest_juz
      dodaj:
        RejOp["A:DodajRek",""]
      jest_juz:
// szukanie zapisu tra dla tresc
      tresc_temp := "zap|lata za:"
      if (not(RozrOp["ToFirstZ",""])) goto koniec_tresc
      petla_tresc:
      if (zapiswn) goto next_tresc
      if (not(zap_rodz == "Tra")) goto next_tresc
      tresc_temp := tresc
      goto koniec_tresc
      next_tresc:
      if (rozrop["tonextz",""]) goto petla_tresc
      koniec_tresc:
// 
      RejWstawP_S["A:tresc1",tresc_temp]
      RejWstawP_S["A:trans",NrTr]
      RejWstawP_D["A:data_plat",termplat]
      RejWstawP_S["A:vatkontoplat",k_sym]
      RejWstawP_K["A:wartosc",kwota] 
      RejWstawP_S["A:k_status","autom"]
      RejWstawP_S["A:nazwa_kl1",kl_nazwa1]
      RejWstawP_S["A:nazwa_kl2",kl_nazwa2]
      RejWstawP_S["A:nazwabanku_kl",kl_nazwabanku]
      RejWstawP_S["A:numerbanku_kl",kl_konto]
      RejWstawP_S["A:sym_kl",kl_sym]
      RejWstawP_S["A:prior_kl",prior]
      RejWstawP_S["A:slownieprior_kl",sl_opis]
      RejWstawP_L["A:blokada",.T.]
//      if (kwota <0) RejWstawP_L["A:blokada",.T.]
      RejWstawP_S["A:k_byl",byl_prl]
      d_string := k_sym
      callalg["USTAL-TYP-PRL-KONT"]
      RejWstawP_S["A:typ_prl",d_string]
    nokwota:
    nexttrans:
    if (RozrOp["ToNextT",""]) goto dalej03
    kkoniec:
nextkonto:
if (FinnOp["ToNextDok",""]) goto petla01
if (rozra) goto koniec2
if (rejop["00:weznastepnyrek",""]) goto rob_konto
///////////////////////////////////////////////////////////////////////////////////////////////
//
///////////////////////////////////////////////////////////////////////////////////////////////
koniec2:
RejOp["B:ZamknijRej",""]
koniec1:
RejoP["A:ZamknijRej",""]
RejoP["00:ZamknijRej",""]
koniec:
FinnOp["@1Close",""]
// wywolanie przegladania generatora
finnmenufunkcja[3017,""]
///////////////////////////////////////////////////////////////////////////////////////////////
//
//
///////////////////////////////////////////////////////////////////////////////////////////////
% SPRAWDZ-TRANSAKCJA-INFO.ALG
  if (not finnop["@3openmainx",""]) exitalg[0]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  if (not(finnop["znajdzdok",konto_kontrahenta])) goto koniec
  if (not(RozrOp["ZnajdzTra",transakcja])) goto koniec
      kwotax := S[TrObrMa,TrObrWn]
      okalert[""+kwotax]
  koniec:
  finnop["@1close",""]
% OGEN-PRZELEW-ZAPISZ-PRLDOK.ALG
//  callalg["SPRAWDZ-TRANSAKCJA-INFO"]
//  
  if (rejop["a:znajdzrek",konto_kontrahenta+"*"+transakcja]) goto wstaw_dane
      rejop["A:dodajrek",""]
//    ---------------------------------------------------------------
      if (not (rejop["cc:otworzrej","REJESTRKL.RXR"])) goto no_rej_kl
      if (not(rejop["cc:znajdzrek",symbol_kontrahenta])) goto no_rej_kl_rek
        xRejWstawP_S["A:nazwa_kl1",rejwezp_s["cc:kl_nazwa1"]]
        xRejWstawP_S["A:nazwa_kl2",rejwezp_s["cc:kl_nazwa2"]]
        xRejWstawP_S["A:nazwabanku_kl",rejwezp_s["cc:kl_nazwabanku"]]
        xRejWstawP_S["A:numerbanku_kl",rejwezp_s["cc:kl_konto"]]
        xRejWstawP_S["A:swift",rejwezp_s["cc:kl_swift"]]
        rejop["a:zapiszrek",""]
// -----------
a_ok := .N.
d_string := rejwezp_s["cc:kl_konto"]
if (d_string == "") goto brak_konta
callalg["kontrola-konta-no-alert"]
if (a_ok) goto dalej_konto_ok
  callalg["NKB-KOMUNIKAT-KONTROLA"]
  if (not(a_ok)) goto nextkonto
  okalert["U kontrahenta o symbolu "+kl_sym+" $ "+kl_nazwa1+" $ wyst|api|l nast|epuj|acy b|l|ad. $ $ "+d_string+" $ "+kl_konto]
  goto nextkonto
brak_konta:
  callalg["NKB-KOMUNIKAT-KONTROLA"]
  if (not(a_ok)) goto nextkonto
  okalert["Kontrahent o symbolu "+kl_sym+" $ "+kl_nazwa1+" $ nie ma podanego konta bankowego !"]
  goto nextkonto
dalej_konto_ok:
//
nextkonto:
a_ok := .T.
// ----------
      no_rej_kl_rek:
      rejop["cc:zamknijrej",""]
      no_rej_kl:
//    ---------------------------------------------------------------
  wstaw_dane:
      xRejWstawP_S["A:tresc1",tresc_zap]
      xRejWstawP_S["A:trans",transakcja]
      xRejWstawP_D["A:data_plat",termin]
      xRejWstawP_S["A:vatkontoplat",konto_kontrahenta]
      xRejWstawP_S["A:sym_kl",symbol_kontrahenta]
      xRejWstawP_K["A:wartosc",rejwezp_k["a:wartosc"]+kwota_zapisu] 
//      xRejWstawP_K["A:wartosc",kwota_zapisu] 
      xRejWstawP_S["A:k_status","autom"]
      xRejWstawP_L["A:blokada",znak_gen]
      rejop["a:zapiszrek",""]
      if (not(rejop["b:znajdzrek",konto_kontrahenta+"*"+transakcja]) ) goto no_prl
//        RejWstawP_L["A:blokada",.T.]
        RejWstawP_S["A:k_byl","jest"]
      no_prl:
//
% OGEN-PRZELEW-ZAPISZ-TRA.ALG
RozrOp["UstawTrybZap",""]
if (not FinnOp["TOFIRSTZAP",""]) exitalg[0]
if (not(RejOp["A:OtworzRejSprawdz","PRLDOK.RXR"])) goto koniec
if (not(RejOp["B:OtworzRej","PRZEZAP.RJR"])) goto koniec1
znak_gen := .T.
klucz_gen_bank := 4
CallSl["PRZELEWY->daj_klucz_gen_prl"]
CallSl["PRZELEWY->daj_znak_gen_prl"]
RejOp["A:ZmienKluczRej",tostr["#klucz_gen_bank#S:0"]]
RejOp["B:ZmienKluczRej","4"]
zap_loop:
    if (kontoma == "") goto next_zapis
    trans := ""
    strona := "N"
    przebiegrzr:
        IF (NOT RozrOp["ToFirstZ",strona]) GOTO next_rzr
        loop_rzr: 
            if (strcut[Tr_Cechy,0,1] == "O") goto next_rzr_z
            konto_kontrahenta := kontoma
            symbol_kontrahenta := kklnazwama
            transakcja := xnrtr
            kwota_zapisu := xkwotazap
            termin := termplat
            tresc_zap := tresc
            callalg["OGEN-PRZELEW-ZAPISZ-PRLDOK"]
        next_rzr_z:
        IF (RozrOp["ToNextZ",Strona]) GOTO loop_rzr
        next_rzr:
    next_zapis:
If (FinnOp["ToNextZap",""]) goto zap_loop
//
koniec2:
rejop["b:zamknijrej",""]
koniec1:
rejop["a:zamknijrej",""]
koniec:
//
% PRZELEW-ZAPIS-SUMA-KWOT-ZL.ALG
s_kw := 0
s_txt := ""
xs_txt := ""
x_lp := 0
if (not (rejop["a:wezpierwszyrek",""])) goto koniec
    rpos := rejwezp_k["a:rejestrrekpos"]
    pp0:
        s_kw := s_kw + rejwezp_k["a:wartosc"]
//        s_txt := s_txt+rejwezp_s["a:trans"]+" "+tostr["#rejwezp_k[""a:wartosc""]#S:2"]+" "
        s_txt := rejwezp_s["a:trans"]+" "
        callalg["OPIS_TRESC_234a"]
        xs_txt := xs_txt+s_txt+" "
        x_lp := x_lp + 1
    if (rejop["a:weznastepnyrek",""]) goto pp0
    rejop["a:ustawsprawdzrekpos",tostr["#rpos#S:0"]]
koniec:
rejwstawp_k["kwota_przel",s_kw]
s_txt := tostr["#xs_txt#S"]
rejwstawp_s["emisja_txt",s_txt]
if (ilosc_gen < 10) goto na_zapisy
    xilosc_gen := strlen[s_txt]
goto out_alg
na_zapisy:
    xilosc_gen := x_lp
out_alg:
//
//
//////////////////////////////////////////////////////////////////////////////
% OGEN-PRZELEW-DOK-ZAPISZ-TRA.ALG
if (finnop["tofirstzap",""]) goto petla_zap
  ExitAlg[0]
petla_zap:
zap_loop:
    if (kontoma == "") goto next_zapis
    trans := ""
    strona := "N"
    przebiegrzr:
        IF (NOT RozrOp["ToFirstZ",strona]) GOTO next_rzr
        loop_rzr: 
            if (strcut[Tr_Cechy,0,1] == "O") goto next_rzr_z
            konto_kontrahenta := kontoma
            symbol_kontrahenta := kklnazwama
            transakcja := nrtr
            kwota_zapisu := kwotazap
            termin := termplat
            tresc_zap := tresc
            tresc_temp := ""
            callalg["wez_param_tresc"]
            if (not(tresc_temp == "")) tresc_zap := tresc_temp
            callalg["OGEN-PRZELEW-ZAPISZ-PRLDOK"]
            rejwstawp_s["a:dok_sw",dok_tmp]
        next_rzr_z:
        IF (RozrOp["ToNextZ",Strona]) GOTO loop_rzr
        next_rzr:
    next_zapis:
If (FinnOp["ToNextZap",""]) goto zap_loop
//
% OGEN-PRZELEW-DOK.ALG
if (not (rejop["A:usunplikrej","PRLDOK.RXR"])) ExitAlg[0]
if (not (rejop["DOK:otworzrej","GENDOKPRL.RXR"])) ExitAlg[0]
callalg["PRLDOK-PRZELEWY-USUN-CZYSC"]
if (finnop["@0openmainx",""]) goto dalej_00
  OkAlert["Nie mog|e otworzy|c ksi|egi !"]
  exitalg[0]
dalej_00:
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
RozrOp["UstawTrybZap",""]
//
dok_tmp := ""
exdialogop["idzdodialogu","PODAJSYMBOLDOKUMENTU"]
if (D_POS = 1) dok_tmp := ""
if (D_POS = 1) goto koniec_out
if (dok_tmp == "") goto koniec_out
gen_start := .T.
gen_start := YesAlert["Czy wykona|c generowanie zapis|ow dla dokumentu "+dok_tmp+" ?"]
if (not(gen_start)) dok_tmp := ""
if (not(gen_start)) goto koniec_out
if (finnop["@0znajdzdok",dok_tmp]) goto dalej_01
  okalert["Nie mog|e znale|x|c dokumenu o symbolu "+dok_tmp+" !"]
  goto koniec_out
dalej_01:
if (not FinnOp["TOFIRSTZAP",""]) goto koniec_out
if (not(RejOp["A:OtworzRejSprawdz","PRLDOK.RXR"])) goto koniec_out
if (not(RejOp["B:OtworzRej","PRZEZAP.RJR"])) goto koniec1
klucz_gen_bank := 4
CallSl["PRZELEWY->daj_klucz_gen_prl"]
znak_gen := .T.
CallSl["PRZELEWY->daj_znak_gen_prl"]
RejOp["A:ZmienKluczRej",tostr["#klucz_gen_bank#S:0"]]
RejOp["B:ZmienKluczRej","4"]
//
callalg["OGEN-PRZELEW-DOK-ZAPISZ-TRA"]
//
koniec2:
rejop["b:zamknijrej",""]
koniec1:
rejop["a:zamknijrej",""]
koniec_out:
finnop["close",""]
if (dok_tmp == "") goto koniec_nic
if (D_POS = 1) goto koniec_nic
// --- dopisanie dokumentu do histori
if (rejop["dok:znajdzrek",dok_tmp])  goto koniec_look
rejop["dok:dodajrek",""]
rejwstawp_s["dok:gendok",dok_tmp]
// 
koniec_look:
callalg["LOOK-PRLDOK"]
koniec_nic:
rejop["dok:zamknijrej",""]
// wywolanie przegladania generatora
finnmenufunkcja[3017,""]
//
% PODAJSYMBOLDOKUMENTU.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wyb|or dokumentu"
##10,B,ACP,,,,,,,,ZMIENNA:dok_tmp,2001:0
##1,,ADP,,@4


 Dla dokumentu - #10          #

 
                 #1           #
// 
% TABLICA-AKCJI-PODAJSYMBOLDOKUMENTU
"AKCJA-PO-POLU10",PODAJSYMBOLDOKUMENTU-SPRAWDZ
% PODAJSYMBOLDOKUMENTU-SPRAWDZ.ALG
  A_OK := .T.  
  if (rejop["dok:znajdzrek",dok_tmp]) A_OK := .N.  
  if (A_OK) ExitAlg[0]
  if (YesNalert["Dokument "+dok_tmp+" by|l ju|z generowany !$Czy chcesz generowa|c dane jeszcze raz ?"]) A_OK := .T.
//  
% PRLDOK-ZAPISZ-KONTO-KONTRAHENT.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  rejop["P:zapiszrek",""]
  symbol := rejwezp_s["p:sym_kl"]
  rpos := rejwezp_k["p:RejestrRekPos"]
  if (not rejop["c:otworzrej","REJESTRKL.RXR"]) goto koniec
  n_bank := rejwezp_s["p:nazwabanku_kl"]
  k_bank := rejwezp_s["p:numerbanku_kl"]
  s_bank := rejwezp_s["p:swift"]
  if (not rejop["c:znajdzrek",symbol]) goto koniec_out
    xrejwstawp_s["c:kl_nazwabanku",n_bank]
    xrejwstawp_s["c:kl_konto",k_bank]
    xrejwstawp_s["c:kl_swift",s_bank]
    rejop["c:zapiszrek",""]
  koniec_out:
  rejop["c:zamknijrej",""]
  rejop["p:zmienkluczrej","7"]
  if (not rejop["p:znajdzrek",symbol]) goto koniec
  petla:
  if (not(symbol == rejwezp_s["p:sym_kl"])) goto koniec
    xrejwstawp_s["p:nazwabanku_kl",n_bank]
    xrejwstawp_s["p:numerbanku_kl",k_bank]
    rejop["p:zapiszrek",""]
  if (not(rejop["p:weznastepnyrek",""])) goto petla
  koniec:  
  klucz_gen_bank := 4
  CallSl["PRZELEWY->daj_klucz_gen_prl"]
  rejop["p:zmienkluczrej",tostr["#klucz_gen_bank#S:0"]]
  rejop["p:ustawsprawdzrekpos",tostr["#rpos#S:0"]]
  callalg["PRLDOK-ZAPISZ-ZAPIS"]
  
//  
% PRLDOK-ZAPISZ-ZAPIS.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  xrejwstawp_l["p:zmiana",.T.]
  rejop["P:zapiszrek",""]
  exdialogop["zmienrekordwmenu","100"]
  exdialogop["wyswietlpozycje","100"]
//  
% PRLDOK-ZAPISZ-PO-KONTO.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  konto := rejwezp_s["p:vatkontoplat"]
  rpos := rejwezp_k["p:RejestrRekPos"]
  jest := .N.
  if (not(rejop["x:otworzrej","PLANRODZ.RJR"])) ExitAlg[0]
  if (rejop["x:znajdzrek",konto]) goto dalej_00
    goto koniec
  dalej_00:
  symbol := rejwezp_s["x:plan_klsym"]
  if (not rejop["c:otworzrej","rejestrkl.rxr"]) goto koniec
  if (rejop["c:znajdzrek",symbol]) goto dalej_01
    goto koniec_0
  dalej_01:
    jest := .T.
    xrejwstawp_s["p:nazwa_kl1",rejwezp_s["c:kl_nazwa1"]]
    xrejwstawp_s["p:nazwa_kl2",rejwezp_s["c:kl_nazwa2"]]
    xrejwstawp_s["p:nazwabanku_kl",rejwezp_s["c:kl_nazwabanku"]]
    xrejwstawp_s["p:numerbanku_kl",rejwezp_s["c:kl_konto"]]
    xRejWstawP_S["p:swift",rejwezp_s["c:kl_swift"]]
    xrejwstawp_s["p:sym_kl",symbol]
  koniec_0:
  rejop["c:zamknijrej",""]
  koniec:
  rejop["x:zamknijrej",""]
  if (not(jest)) goto koniec_out
    callalg["PRLDOK-ZAPISZ-ZAPIS"]
    callalg["PRLDOK-PRZELEW-RELOAD"]
  koniec_out:
  rejop["p:ustawsprawdzrekpos",tostr["#rpos#S:0"]]
//  
% PRLDOK-ZAPISZ-WYBIERZ-TRANSAKCJA.ALG
  if (not exdialogop["pusteokno","100"]) goto nie_puste_00
    ExitAlg[0]
  nie_puste_00:
  finnop["@1openmainx",""]
 tryb_ksiegi := .N.
 if (k_trybodlo) tryb_ksiegi := .T.
  finn_konto := rejwezp_s["p:vatkontoplat"]
  D_STRING := WybierzFinn["SymbolTrans"]  
  if (D_STRING == "") d_string := rejwezp_s["p:trans"]
  finnop["@1Close",""]
  
% wez_param_tresc.alg
  if (not (RejOp["X:OtworzRejSprawdz","PARAMPRZELEW.RJR"])) ExitAlg[0]
  if (RejOp["X:WezPierwszyRek",""]) goto dalej
  goto koniec
  dalej:
    tresc_temp := RejWezP_S["X:tresc"]
  koniec:
  rejop["x:zamknijrej",""]
% wez_param_kontobank.alg
  if (not (RejOp["X:OtworzRejSprawdz","PARAMPRZELEW.RJR"])) ExitAlg[0]
  if (RejOp["X:WezPierwszyRek",""]) goto dalej
  goto koniec
  dalej:
  If (tempkontobank = "") tempkontobank := RejWezP_S["X:konto"]  
  koniec:
  rejop["x:zamknijrej",""]
//
% IMPORT-BPH.alg
  CallAlgFile["przelewy\wsp\przelewy_bph.sl","SL.IMPORT_BPH->start_import_dialog"]
% IMPORT-BPH-VIEW.alg
  CallAlgFile["przelewy\wsp\przelewy_bph.sl","SL.IMPORT_BPH->look_dialog"]
//
% IMPORT-ING.alg
  CallAlgFile["przelewy\przelewy_ing_multi.sl ","SL.IMPORT_ING_MULTI->start_import_dialog"]
% IMPORT-ING-VIEW.alg
  CallAlgFile["przelewy\przelewy_ing_multi.sl ","SL.IMPORT_ING_MULTI->look_dialog"]
//
% IMPORT-WBK.alg
  CallAlgFile["przelewy\przelewy_wbk_multi.sl ","SL.IMPORT_WBK_MULTI->start_import_dialog"]
% IMPORT-WBK-VIEW.alg
  CallAlgFile["przelewy\przelewy_wbk_multi.sl ","SL.IMPORT_WBK_MULTI->look_dialog"]
//  
% IMPORT-WCITY.alg
  CallAlgFile["przelewy\przelewy_wcity_multi.sl ","SL.IMPORT_WCITY_MULTI->start_import_dialog"]
% IMPORT-WCITY-VIEW.alg
  CallAlgFile["przelewy\przelewy_wcity_multi.sl ","SL.IMPORT_WCITY_MULTI->look_dialog"]
//  
% IMPORT-NPKOSA.alg
  CallAlgFile["przelewy\przelewy_pkosa_multi.sl ","SL.IMPORT_NPKOSA_MULTI->start_import_dialog"]
% IMPORT-NPKOSA-VIEW.alg
  CallAlgFile["przelewy\przelewy_pkosa_multi.sl ","SL.IMPORT_NPKOSA_MULTI->look_dialog"]
//  
% IMPORT-NPKOBP.alg
  CallAlgFile["przelewy\przelewy_pkobp_multi.sl ","SL.IMPORT_NPKOBP_MULTI->start_import_dialog"]
% IMPORT-NPKOBP-VIEW.alg
  CallAlgFile["przelewy\przelewy_pkobp_multi.sl ","SL.IMPORT_NPKOBP_MULTI->look_dialog"]
//  
% IMPORT-V_NPKOBP.alg
  CallAlgFile["przelewy\przelewy_pkobp_multi.sl ","SL.IMPORT_NPKOBP_MULTI->start_import_v_dialog"]
% IMPORT-V_NPKOBP-VIEW.alg
  CallAlgFile["przelewy\przelewy_pkobp_multi.sl ","SL.IMPORT_NPKOBP_MULTI->look_v_dialog"]
//
% IMPORT-MILL.alg
  CallAlgFile["przelewy\przelewy_mill_multi.sl ","SL.IMPORT_MILL_MULTI->start_import_dialog"]
% IMPORT-MILL-VIEW.alg
  CallAlgFile["przelewy\przelewy_mill_multi.sl ","SL.IMPORT_MILL_MULTI->look_dialog"]
//  
% IMPORT-PKOSA-NPKOSA.ALG
  CallAlgFile["przelewy\przelewy_pkosa_multi.sl ","SL.IMPORT_NPKOSA_MULTI->wspolny_import_dialog"]
% IMPORT-PKOSA-NPKOSA-NOPRO.ALG
  CallAlgFile["przelewy\przelewy_pkosa_multi.sl ","SL.IMPORT_NPKOSA_MULTI->start_import_dialog_noprooffice"]
  
% IMPORT-BOS.alg
  CallAlgFile["przelewy\przelewy_bos_multi.sl ","SL.IMPORT_BOS_MULTI->start_import_dialog"]
% IMPORT-BOS-VIEW.alg
  CallAlgFile["przelewy\przelewy_bos_multi.sl ","SL.IMPORT_BOS_MULTI->look_dialog"]
//  
% IMPORT-ALIOR.alg
  CallAlgFile["przelewy\przelewy_alior_multi.sl ","SL.IMPORT_ALIOR_MULTI->start_import_dialog"]
% IMPORT-ALIOR-VIEW.alg
  CallAlgFile["przelewy\przelewy_alior_multi.sl ","SL.IMPORT_ALIOR_MULTI->look_dialog"]
//  
% IMPORT-NORDEA.alg
  CallAlgFile["przelewy\przelewy_nord_multi.sl ","SL.IMPORT_NORD_MULTI->start_import_dialog"]
% IMPORT-NORDEA-VIEW.alg
  CallAlgFile["przelewy\przelewy_nord_multi.sl ","SL.IMPORT_NORD_MULTI->look_dialog"]
//  
% IMPORT-BSRT.alg
  CallAlgFile["przelewy\przelewy_bsrt_multi.sl ","SL.IMPORT_BSRT_MULTI->start_import_dialog"]
% IMPORT-BSRT-VIEW.alg
  CallAlgFile["przelewy\przelewy_bsrt_multi.sl ","SL.IMPORT_BSRT_MULTI->look_dialog"]
//  
% IMPORT-BGZ.alg
  CallAlgFile["przelewy\przelewy_bgz_multi.sl ","SL.IMPORT_BGZ_MULTI->start_import_dialog"]
% IMPORT-BGZ-VIEW.alg
  CallAlgFile["przelewy\przelewy_bgz_multi.sl ","SL.IMPORT_BGZ_MULTI->look_dialog"]
//    
% IMPORT-BNP.alg
  CallAlgFile["przelewy\przelewy_bnp_multi.sl ","SL.IMPORT_BNP_MULTI->start_import_dialog"]
% IMPORT-BNP-VIEW.alg
  CallAlgFile["przelewy\przelewy_bnp_multi.sl ","SL.IMPORT_BNP_MULTI->look_dialog"]
//  
% IMPORT-EWYCIAGI.alg
  CallAlgFile["przelewy\przelewy_ewyciagi.sl ","SL.IMPORT_EWYCIAG_BANK->start_import_dialog"]
% IMPORT-EWYCIAGI-VIEW.alg
  CallAlgFile["przelewy\przelewy_ewyciagi.sl ","SL.IMPORT_EWYCIAG_BANK->look_dialog"]
//  
% IMPORT-KB.alg
  CallAlgFile["przelewy\przelewy_kb_multi.sl ","SL.IMPORT_KB_MULTI->start_import_dialog"]
% IMPORT-KB-VIEW.alg
  CallAlgFile["przelewy\przelewy_kb_multi.sl ","SL.IMPORT_KB_MULTI->look_dialog"]
//  
% IMPORT-M_BPH.alg
  CallAlgFile["przelewy\przelewy_bph_multi.sl ","SL.IMPORT_BPH_MULTI->start_import_dialog"]
% IMPORT-M_BPH-VIEW.alg
  CallAlgFile["przelewy\przelewy_bph_multi.sl ","SL.IMPORT_BPH_MULTI->look_dialog"]
//  
% IMPORT-MBANK.alg
  CallAlgFile["przelewy\przelewy_mbank_multi.sl ","SL.IMPORT_MBANK_MULTI->start_import_dialog"]
% IMPORT-MBANK-VIEW.alg
  CallAlgFile["przelewy\przelewy_mbank_multi.sl ","SL.IMPORT_MBANK_MULTI->look_dialog"]
//  
% IMPORT-MUL_BANK.alg
  CallAlgFile["przelewy\przelewy_mul_bank_multi.sl ","SL.IMPORT_MUL_BANK_MULTI->start_import_dialog"]
% IMPORT-MUL_BANK-VIEW.alg
  CallAlgFile["przelewy\przelewy_mul_bank_multi.sl ","SL.IMPORT_MUL_BANK_MULTI->look_dialog"]
//  
% IMPORT-DB_BANK.alg
  CallAlgFile["przelewy\przelewy_db_multi.sl ","SL.IMPORT_DB_MULTI->start_import_dialog"]
% IMPORT-DB_BANK-VIEW.alg
  CallAlgFile["przelewy\przelewy_db_multi.sl ","SL.IMPORT_DB_MULTI->look_dialog"]
//  
% IMPORT-BS_LUBLIN.alg
  CallAlgFile["przelewy\przelewy_bsl_multi.sl ","SL.IMPORT_BSL_MULTI->start_import_dialog"]
% IMPORT-BS_LUBLIN-VIEW.alg
  CallAlgFile["przelewy\przelewy_bsl_multi.sl ","SL.IMPORT_BSL_MULTI->look_dialog"]
//  
% przelewy_slownie.alg
// Call do liczenia slownie 
// wejscie : kwota_sl;grosze_sl = kwoty
// wyjscie : kwota_txt;grosze_txt = tekst
 kwota_txt := ""
 grosze_txt := ""
 temp_sl := ""
 Temp1_sl := ""
 Temp2_sl := ""
 dlugosc_sl := 0
//
 temp_sl := ToStr["#kwota_sl#S:2"]
 dlugosc_sl := StrLen[temp_sl]
 temp1_sl := StrCut[temp_sl,0,dlugosc_sl-3]
 temp2_sl := StrCut[temp_sl,dlugosc_sl-2,2]
 KWota_sl := StringNaLiczbe[temp1_sl]
 grosze_sl := StringNaLiczbe[temp2_sl]
//
 xzl := "ych"
 t1 := StrCut[temp1_sl,StrLen[temp1_sl]-1,1]
 xt1 := StringNaliczbe[StrCut[temp1_sl,StrLen[temp1_sl]-2,2]]
 if (t1 = "1") xzl := "y"
 if ((t1 = "1") and (xt1 > 10)) xzl := "ych"
 if (t1 = "2") xzl := "e"
 if (t1 = "3") xzl := "e"
 if (t1 = "4") xzl := "e"
 xgr := "y"
 t1 := StrCut[temp2_sl,1,1]
 xt1 := StringNaliczbe[temp2_sl]
 if (t1 = "1") xgr := ""
 if ((t1 = "1") and (xt1 > 10) and ( xt1 < 23) ) xgr := "y"
 if (t1 = "2") xgr := "e"
 if (t1 = "3") xgr := "e"
 if (t1 = "4") xgr := "e"
 if ((t1 = "1") and ((xt1 > 10) and ( xt1 < 22)) ) xgr := "y"
//
 if (not(kwota_sl = 0 )) kwota_txt := ToStr["#slownie[kwota_sl,0,0]#S z|lot#xzl#S"] 
 if (not(grosze_sl = 0)) grosze_txt := ToStr["#slownie[grosze_sl,0,0]#S grosz#xgr#S"] 
 if (not(grosze_sl = 0)) grosze_txt := ToStr["#grosze_sl#S/100 groszy"] 
//
% przelewy_slownie_dew.alg
// Call do liczenia slownie 
// wejscie : kwota_sl;grosze_sl = kwoty
// wyjscie : kwota_txt;grosze_txt = tekst
 kwota_txt := ""
 grosze_txt := ""
 temp_sl := ""
 Temp1_sl := ""
 Temp2_sl := ""
 dlugosc_sl := 0
//
 temp_sl := ToStr["#kwota_sl#S:2"]
 dlugosc_sl := StrLen[temp_sl]
 temp1_sl := StrCut[temp_sl,0,dlugosc_sl-3]
 temp2_sl := StrCut[temp_sl,dlugosc_sl-2,2]
 KWota_sl := StringNaLiczbe[temp1_sl]
 grosze_sl := StringNaLiczbe[temp2_sl]
//
 xzl := "ych"
 t1 := StrCut[temp1_sl,StrLen[temp1_sl]-1,1]
 xt1 := StringNaliczbe[StrCut[temp1_sl,StrLen[temp1_sl]-2,2]]
 if (t1 = "1") xzl := "y"
 if ((t1 = "1") and (xt1 > 10)) xzl := "ych"
 if (t1 = "2") xzl := "e"
 if (t1 = "3") xzl := "e"
 if (t1 = "4") xzl := "e"
 xgr := "y"
 t1 := StrCut[temp2_sl,1,1]
 xt1 := StringNaliczbe[temp1_sl]
 if (t1 = "1") xgr := ""
 if ((t1 = "1") and (xt1 > 10)) xgr := "y"
 if (t1 = "2") xgr := "e"
 if (t1 = "3") xgr := "e"
 if (t1 = "4") xgr := "e"
//
 if (not(kwota_sl = 0 )) kwota_txt := ToStr["#slownie[kwota_sl,0,0]#S"] 
 if (not(grosze_sl = 0)) grosze_txt := ToStr["#slownie[grosze_sl,0,0]#S"] 
//
// ---------------------------------
// wykaz kont do generatora
// ---------------------------------
% PARAMGENOMIN.RXR
1 # symbol pola - klucza
1 # identyfikator klucza
PARAMGENOMIN
% PARAMGENOMIN.DBF 
0,log,,,,,D
1,2000,,0,1              # konto w planie kont
% PARAMGENOMIN.DIC      # slownik do danych o kliencie
"gen_konto_maska",1,Estring,"Konto"
//
//
//
//
//
% PRLDOK_DOK_KOM_TRANSAKCJE.RJR
1
2
PRLDOK_DOK_KOM_TRANSAKCJE
//
% PRLDOK_DOK_KOM_TRANSAKCJE.XX0
0,log,,,,,D        # usuwanie "w miejscu"
1,2100,,,1         # Symbol
2,2000,,0             # Konto
3,2103             # symbol transakcji
4,string,1         # D/O
5,dic,,0           # dewizy
6,ydate            # Termin
10,xkwota,,x       # k wn pln
11,xkwota,,x       # k ma pln
12,xkwota,,x       # s wn pln
13,xkwota,,x       # s ma pln
20,xkwota,,x       # k wn dew
21,xkwota,,x       # k ma dew
22,xkwota,,x       # s wn dew
23,xkwota,,x       # s ma dew
98,string,30       # info 
99,log             # znacznik

% PRLDOK_DOK_KOM_TRANSAKCJE.XX1
1,0,,,2               # symbol
2,0,,,2               # konto
3,0,,,2               # transakcja
4,0,,,2               # d/o
5,0,,,2               # waluta
1,0,,,11               # symbol
2,0,,,11               # konto

% PRLDOK_DOK_KOM_TRANSAKCJE.DBF
%<PRLDOK_DOK_KOM_TRANSAKCJE.XX0
999,ulong,,,9,,NM         # numer rekordu
%<PRLDOK_DOK_KOM_TRANSAKCJE.XX1

% PRLDOK_DOK_KOM_TRANSAKCJE.DIC
"km_symbol",1,Estring,"Symbol"
"km_konto",2,Estring,"Konto"
"km_tra",3,Estring,"Transakcja"
"km_rodz",4,Ekwota,"?"
"km_waluta",5,Estring,"Waluta"
"km_termin",6,Edata,"Termin"
"km_k_wn_pln",10,Ekwota,"Kwota WN PLN"
"km_k_ma_pln",11,Ekwota,"Kwota MA PLN"
"km_s_wn_pln",12,Ekwota,"Saldo WN PLN"
"km_s_ma_pln",13,Ekwota,"Saldo MA PLN"
"km_k_wn_dew",20,Ekwota,"Kwota WN DEW"
"km_k_ma_dew",21,Ekwota,"Kwota MA DEW"
"km_s_wn_dew",22,Ekwota,"Saldo WN DEW"
"km_s_ma_dew",23,Ekwota,"Saldo MA DEW"
"km_info",98,Estring,"Info"
"km_log",99,Elog,"?"
"id",998,Ekwota,"ID"
"km_id",999,Ekwota,"ID"

% PRLDOK_DOK_KOM_TRANSAKCJE_ZAP.RJR
999
9
PRLDOK_DOK_KOM_TRANSAKCJE_ZAP

% PRLDOK_DOK_KOM_TRANSAKCJE_ZAP.DBF
%<PRLDOK_DOK_KOM_TRANSAKCJE.XX0
999,ulong,,,9             # numer rekordu
%<PRLDOK_DOK_KOM_TRANSAKCJE.XX1

% PRLDOK_DOK_KOM_TRANSAKCJE_ZAP.DIC
%< PRLDOK_DOK_KOM_TRANSAKCJE.DIC

% PRLDOK_DOK_KOM_TRANSAKCJE_ZAP-EDYCJA.DIC
"PRLDOK_DOK_KOM_TRANSAKCJE_ZAP",0

% PRLDOK_DOK_KOM_TRANSAKCJE_ZAP.MEN
D=100,"Transakcje odbiorc|ow",AB
LINIA-DIALOG = PRLDOK_DOK_KOM_TRANSAKCJE_ZAP-EDYCJA,"Transakcje odbiorc|ow"
3,,,,20,"Transakcja"
//6,,,,8,"Termin"
22,,,,11,"Saldo Wn"

% PRZELEWY-DRUKI-KOMPENSAT.ALG
callalgfile["przelewy\przelewy_kompensaty.sl","SL.PRL_KOMP->start_pokaz_konto_kompensaty"]

% PRZELEW-KONTRAHENCI-ZMIEN-KONTO-BANKOWE.ALG
  D_STRING := rejwezp_s["p:sym_kl"]
  callalgfile["rejestrkontbank.sl","WYBOR-KONTRAHENT-KBANK"]
  if (D_POS = 0) ExitAlg[0]
  rejwstawp_s["p:numerbanku_kl",d_string]
  exdialogop["wyswietlpozycje","100"]
  exdialogop["idzdopozycji","100"]
  

% ODCZYTAJ-ZMIEN-SWRK.ALG
if (d_string = "") ExitAlg[0]
k_kl := d_string
d_string := ""
std_banknr := "<brak danych>"
CallAlg["ODCZYTAJ-DANE-UZYTKOWNIKA"]
if (std_banknr = "") ExitAlg[0]
d_string := std_banknr
callalg["zrob_nowe_konto"]
d_string := strcut[d_string,2,8]+strcut[k_kl,4,16]
callsl["gl_wylicz_konto_bankowe"]
k := strlen[d_string]
if (k = 25) d_string := "0"+d_string
//

% ODCZYTAJ-ZMIEN-SWRK-WM.ALG
if (d_string = "") ExitAlg[0]
k_kl := d_string
d_string := ""
std_banknr := ""
callalgfile["$$(PROSYSPATH)\zapisz_office.sl","SL.PRZELEWY->czytaj_lista_wsp"]
if (std_banknr = "") ExitAlg[0]
d_string := std_banknr
callalg["zrob_nowe_konto"]
d_string := strcut[d_string,2,8]+strcut[k_kl,4,16]
callsl["gl_wylicz_konto_bankowe"]
k := strlen[d_string]
if (k = 25) d_string := "0"+d_string

% F_PRZYCHODZACE-OGEN-PRZELEW.ALG
pusty := .N.
rejop["a:otworzrej","PRLDOK.RXR"]
if (rejop["a:pustyrej",""]) pusty := .T.
rejop["a:zamknijrej",""]
if (not (rejop["A:usunplikrej","PRLDOK.RXR"])) ExitAlg[0]
T_NA_DZIEN := D_DZISIAJ
exdialogop["idzdodialogu","NA_DZIEN"]
if (D_POS = 1) ExitAlg[0]
ksiega_old_gen := ""
ksiega_act_gen := ""
prl_ksiega := ""
CallSl["PRZELEWY->daj_ksiega_old_gen"]
prl_ksiega := ksiega_act_gen
odloz_gen := .N.
//
callalg["PRLDOK-PRZELEWY-USUN-CZYSC"]
  znak_gen := .T.
  CallSl["PRZELEWY->daj_znak_gen_prl"]
//
if (not(RejOp["A:OtworzRejSprawdz","PRLDOK.RXR"])) goto koniec
if (not(RejOp["B:OtworzRej","PRZEZAP.RJR"])) goto koniec
if (not(RejOp["BB:OtworzRejSprawdz","FAKTURY-PRZYCHODZACE.RXR"])) goto koniec1
if (not(RejOp["BC:OtworzRejSprawdz","FAKTURY-PRZYCHODZACEKONTA.RJR"])) goto koniec1
if (not(RejOp["C:OtworzRejSprawdz","REJESTRKL.RXR"])) goto koniec2
if (not(RejOp["D:OtworzRejSprawdz","PLANRODZ.RJR"])) goto koniec3
//
RejOp["A:WyczyscRej",""]
RejOp["A:ZmienKluczRej","4"]
RejOp["B:ZmienKluczRej","31"]
RejOp["d:ZmienKluczRej","2"]
txt_komunikat := "Przegl|adanie kont do przelew|ow. Prosz|e czeka|c !"
CallAlg["komunikat-work"]
//
rejop["BB:wezpierwszyrek",""]
petla:
  Displine[rejwezp_s["bb:f_symbol"]+" " + rejwezp_s["bb:f_opis1"]]
//if (rejwezp_l["bb:f_status_plat"]) goto next
if (pustepole["bb:f_kontrahent"]) goto next
if (rejwezp_l["bb:f_niefaktura"]) goto next
  
a_ok := .T.
d_string := rejwezp_s["bb:f_kontrahent"]
CallAlg["USTAL-PRIORYTET-KONTRAHENTA"]
prior := d_string
sl_opis := ""
k_typ := ""
CallAlg["KLPRIOR-USTAL-OPIS"]
if ((prior == "99") or (prior == "98")) goto next
//
  kwota := rejwezp_k["bb:f_brutto"]
  kwota_waluta := rejwezp_s["bb:f_waluta"]
  kwota_dew := rejwezp_k["bb:f_dewwartosc"]
  
  if (kwota = 0) goto next
  byl_prl := ""
  a_ok := .N.
  kwota_byl := .
  kwota_byl_dew := .  
//  
  d_string := ToStr["#rejwezp_s[""bb:f_kl_konto""]#S*#rejwezp_s[""bb:f_symbol""]#S"]
  if (not(pustepole["bb:f_kl_konto"])) goto dalej_jest_ko
  if (not (rejop["d:znajdzrek",rejwezp_s["bb:f_kontrahent"]])) goto no_konto_kl
    d_string := ToStr["#rejwezp_s[""d:plan_symbol""]#S*#rejwezp_s[""bb:f_symbol""]#S"]
    goto dalej_jest_ko
    no_konto_kl:
    d_string := ToStr["#rejwezp_s[""bb:f_kontrahent""]#S*#rejwezp_s[""bb:f_symbol""]#S"]
  dalej_jest_ko:
//  
  d_string := ToStr["#rejwezp_s[""bb:f_kontrahent""]#S*#rejwezp_s[""bb:f_symbol""]#S*#rejwezp_s[""bb:f_nr_numer""]#S"]
// ----------------------------------------- dotychczasowe platnoœci  
  callalg["sprawdz-czy-jest-transakcja-gh"]
  if ((a_ok) and (kwota=kwota_byl)) goto next
// -------------------------------------------   
    rejop["a:dodajtemprek",""]
    xrejwstawp_s["a:tresc1",rejwezp_s["bb:f_opis1"]]
    xrejwstawp_s["a:trans",rejwezp_s["bb:f_symbol"]]
    xrejwstawp_k["a:wartosc",rejwezp_k["bb:f_brutto"]-kwota_byl]
    xrejwstawp_d["a:data_plat",rejwezp_d["bb:f_termin"]]
    xrejwstawp_s["a:vatkontoplat",rejwezp_s["bb:f_kl_konto"]]
    if (not(pustepole["bb:f_kl_konto"])) goto dal_00
      if (not (rejop["d:znajdzrek",rejwezp_s["bb:f_kontrahent"]])) goto next
      xrejwstawp_s["a:vatkontoplat",rejwezp_s["d:plan_symbol"]]
    dal_00:
//    
    xrejwstawp_k["a:kwota_dew",rejwezp_k["bb:f_dewwartosc"]-kwota_byl_dew]
    xrejwstawp_k["a:kurs_dew",rejwezp_k["bb:f_kurs"]]
    xrejwstawp_s["a:waluta",rejwezp_s["bb:f_waluta"]]
    if (pustepole["bb:f_waluta"]) xrejwstawp_s["a:waluta","PLN"]
    xrejwstawp_d["a:data_kurs",rejwezp_d["bb:f_kursdata"]]
    xrejwstawp_s["a:nazwa_kl1",rejwezp_s["bb:f_nazwa"]]
    xrejwstawp_s["a:swift",rejwezp_s["bb:f_swift"]]
    xrejwstawp_s["a:numerbanku_kl",rejwezp_s["bb:f_numerkonta"]]
    xrejwstawp_s["a:typ_prl",rejwezp_s["bb:f_nr_numer"]]
    
if (pustepole["bb:f_kontrahent"]) goto pusty_kontrahent
    xrejwstawp_s["a:sym_kl",rejwezp_s["bb:f_kontrahent"]]
if (not (rejop["c:znajdzrek",rejwezp_s["bb:f_kontrahent"]])) goto pusty_kontrahent
    xrejwstawp_s["a:nazwabanku_kl",rejwezp_s["c:kl_nazwabanku"]]
    if (pustepole["a:numerbanku_kl"]) xrejwstawp_s["a:numerbanku_kl",rejwezp_s["c:kl_konto"]]
      if (pustepole["a:swift"]) xRejWstawP_S["A:swift",rejwezp_s["c:kl_swift"]]
    d_string := rejwezp_s["bb:f_kontrahent"]
    CallAlg["USTAL-PRIORYTET-KONTRAHENTA"]
    prior := d_string
    sl_opis := ""
    k_typ := ""
    CallAlg["KLPRIOR-USTAL-OPIS"]
    xrejwstawp_s["a:prior_kl",prior]
    xrejwstawp_s["a:slownieprior_kl",sl_opis]
pusty_kontrahent:    
    xrejwstawp_l["a:blokada",znak_gen]
    rejop["a:zapiszrek",""]
next:
if (rejop["bb:weznastepnyrek",""]) goto petla

CallAlg["komunikat-down"]
//
rejop["d:zamknijrej",""]
koniec3:
rejop["c:zamknijrej",""]
koniec2:
rejop["bc:zamknijrej",""]
rejop["bb:zamknijrej",""]
koniec1:
rejop["b:zamknijrej",""]
rejop["a:zamknijrej",""]
koniec:
// wywolanie przegladania generatora
finnmenufunkcja[3017,""]
// ------------------------------------------------------
//
% BJF_PRZYCHODZACE-OGEN-PRZELEW.ALG
if (not (rejop["A:usunplikrej","PRLDOK.RXR"])) ExitAlg[0]
callalg["PRLDOK-PRZELEWY-USUN-CZYSC"]
  znak_gen := .T.
  CallSl["PRZELEWY->daj_znak_gen_prl"]
//
if (not(RejOp["A:OtworzRejSprawdz","PRLDOK.RXR"])) goto koniec
if (not(RejOp["B:OtworzRejSprawdz","FAKTURY-PRZYCHODZACE.RXR"])) goto koniec1
if (not(RejOp["C:OtworzRejSprawdz","REJESTRKL.RXR"])) goto koniec2
if (not(RejOp["D:OtworzRejSprawdz","PLANRODZ.RJR"])) goto koniec3
//
RejOp["A:WyczyscRej",""]
RejOp["A:ZmienKluczRej","4"]
RejOp["d:ZmienKluczRej","2"]
txt_komunikat := "Przegl|adanie kont do przelew|ow. Prosz|e czeka|c !"
CallAlg["komunikat-work"]
//
rejop["b:wezpierwszyrek",""]
petla:
  Displine[rejwezp_s["b:f_symbol"]+" " + rejwezp_s["b:f_opis1"]]
//if (rejwezp_l["b:f_status_plat"]) goto next
if (pustepole["b:f_kontrahent"]) goto next
if (rejwezp_l["b:f_niefaktura"]) goto next
if (not (rejop["d:znajdzrek",rejwezp_s["b:f_kontrahent"]])) goto next
    rejop["a:dodajtemprek",""]
    xrejwstawp_s["a:tresc1",rejwezp_s["b:f_opis1"]]
    xrejwstawp_s["a:trans",rejwezp_s["b:f_symbol"]]
    xrejwstawp_k["a:wartosc",rejwezp_k["b:f_brutto"]]
    xrejwstawp_d["a:data_plat",rejwezp_d["b:f_termin"]]
    xrejwstawp_s["a:vatkontoplat",rejwezp_s["b:f_kl_konto"]]
    if (not(pustepole["b:f_kl_konto"])) goto dal_00
      if (not (rejop["d:znajdzrek",rejwezp_s["b:f_kontrahent"]])) goto next
      xrejwstawp_s["a:vatkontoplat",rejwezp_s["d:plan_symbol"]]
    dal_00:
    xrejwstawp_k["a:kwota_dew",rejwezp_k["b:f_dewwartosc"]]
    xrejwstawp_k["a:kurs_dew",rejwezp_k["b:f_kurs"]]
    xrejwstawp_s["a:waluta",rejwezp_s["b:f_waluta"]]
    if (pustepole["b:f_waluta"]) xrejwstawp_s["a:waluta","PLN"]
    xrejwstawp_d["a:data_kurs",rejwezp_d["b:f_kursdata"]]
    xrejwstawp_s["a:nazwa_kl1",rejwezp_s["b:f_nazwa"]]
if (pustepole["b:f_kontrahent"]) goto pusty_kontrahent
    xrejwstawp_s["a:sym_kl",rejwezp_s["b:f_kontrahent"]]
if (not (rejop["c:znajdzrek",rejwezp_s["b:f_kontrahent"]])) goto pusty_kontrahent
    xrejwstawp_s["a:nazwabanku_kl",rejwezp_s["c:kl_nazwabanku"]]
      if (pustepole["a:numerbanku_kl"]) xrejwstawp_s["a:numerbanku_kl",rejwezp_s["c:kl_konto"]]
      if (pustepole["a:swift"]) xRejWstawP_S["A:swift",rejwezp_s["c:kl_swift"]]
    d_string := rejwezp_s["b:f_kontrahent"]
    CallAlg["USTAL-PRIORYTET-KONTRAHENTA"]
    prior := d_string
    sl_opis := ""
    k_typ := ""
    CallAlg["KLPRIOR-USTAL-OPIS"]
    xrejwstawp_s["a:prior_kl",prior]
    xrejwstawp_s["a:slownieprior_kl",sl_opis]
pusty_kontrahent:    
    xrejwstawp_l["a:blokada",znak_gen]
    rejop["a:zapiszrek",""]
next:
if (rejop["b:weznastepnyrek",""]) goto petla

CallAlg["komunikat-down"]
//
rejop["d:zamknijrej",""]
koniec3:
rejop["c:zamknijrej",""]
koniec2:
rejop["b:zamknijrej",""]
koniec1:
rejop["a:zamknijrej",""]
koniec:
//
% PRZELEW-ZAZNACZ-ZAPISZ-ZMIANA-KONTA-BANK.ALG
  tkontobank := kontobank
  CallAlg["podaj-kontobanku-look"]
  if (kontobank == "") goto dalej_00
  
  if (not(rejop["X:otworzrej",id_modul+"PRZELEW.RJR"])) goto dalej_00
    RejOp["X:ZmienKluczRej","4"]
    dalej_petla:
    if (rejop["X:znajdzrek",tkontobank+"*T"]) goto dalej_01
      goto dalej_02
    dalej_01:
    if (not(rejwezp_s["X:konto_przel"] == tkontobank)) goto dalej_02
      xrejwstawp_s["x:konto_przel",kontobank]
      xrejwstawp_l["x:zaznacz",.N.]
      rejop["x:zapiszrek",""]
    goto dalej_petla
    dalej_02:
  RejOp["X:zamknijrej",""]
  
  dalej_00:
  CallAlg["przelew-zaznacz-przed"]
  ExDialogOp["WyswietlPozycje","100"]
  ExDialogOp["WyswietlPozycje","111"]
  ExDialogOp["WyswietlPozycje","112"]
  ExDialogOp["WyswietlPozycje","120"]
  ExDialogOp["WyswietlPozycje","121"]
  ExDialogOp["WyswietlPozycje","122"]
  ExDialogOp["WyswietlPozycje","123"]
  callalg["PRZELICZ-ZAZNACZ-KBANK-VIEW"]
% OPIS_TRESC_234.ALG
if (strcut[rejwezp_s["pp:vatkontoplat"],0,3] == "234") goto dalej
ExitAlg[0]
dalej:
s_txt := ""
tr := rejwezp_s["pp:trans"]
op := rejwezp_s["pp:tresc1"]
rok := "/"+strcut[studatas[poczrok_Ksieg],0,4]
if (strin[rok,tr] > -1) goto d_opis1
if (tr == "ZALICZKA")  goto d_opis1
goto d_opis2
d_opis1:
tre := strcut[op,0,strlen[tr]+20]
d_string := tre
callalg["WYTNIJ_SPACJE"]
tre := d_string
goto d_opis
d_opis2:
in := strin[" ",op]
tre := strcut[op,in,strlen[op]-in]
d_opis:
s_txt := rejwezp_s["emisja_txt"]+" "+tre+" "
//
% OPIS_TRESC_234a.ALG
if (strcut[rejwezp_s["a:vatkontoplat"],0,3] == "234") goto dalej
ExitAlg[0]
dalej:
s_txt := ""
tre := ""
tr := rejwezp_s["a:trans"]
op := rejwezp_s["a:tresc1"]
rok := "/"+strcut[studatas[poczrok_Ksieg],0,4]
if (strin[rok,tr] > -1) goto d_opis1
if (tr == "ZALICZKA")  goto d_opis1
goto d_opis2
d_opis1:
tre := strcut[op,0,strlen[tr]+20]
d_string := tre
callalg["WYTNIJ_SPACJE"]
tre := d_string
goto d_opis
d_opis2:
in := strin[" ",op]
tre := strcut[op,in,strlen[op]-in]
d_opis:
s_txt := tre

////////////////////////////////////////
// ================================================================
// ================================================================
// ================================================================
// ================================================================
// definicja do importów bankowych
// ================================================================
// ================================================================
// ================================================================
// ================================================================
//

% EWYCIAG_BANK_TEKST.RJR
1
1
EWYCIAG_BANK_TEKST
% EWYCIAG_BANK_TEKST.DBF
0,log,,,,,D
1,string,30,,1           # Tekst operacji
10,2000,,0                  # konto w planie kont
11,2002,,0                  # konto w planie kont KLS
12,2000,,0                  # konto w planie kont
13,2002,,0                  # konto w planie kont KLS
14,string,20             # transakcja
15,string,20             # transakcja

% EWYCIAG_BANK_TEKST.DIC
"mx_tekst",1,Estring,"Tekst"
"mx_konto_wn",10,Estring,"Konto WM (D)"
"mx_konto_wn_kls",11,Estring,"Konto WN KLS"
"mx_konto_ma",12,Estring,"Konto MA (C)"
"mx_konto_ma_kls",13,Estring,"Konto MA KLS"
"mx_konto_wn_tra",14,Estring,"Transakcja WM (D)"
"mx_konto_ma_tra",15,Estring,"Transakcja MA (C)"
//
% EWYCIAG_BANK_TYP.RJR
1
1
EWYCIAG_BANK_TYP
% EWYCIAG_BANK_TYP.DBF
0,log,,,,,D
1,string,3,2,1           # typ
2,string,30              # opis operacji
3,string,26,2,1          # konto bankowe
10,2000,,0                  # konto w planie kont
11,2002,,0                  # konto w planie kont KLS
12,2000,,0                  # konto w planie kont
13,2002,,0                  # konto w planie kont KLS
14,2002,,0                  # konto w planie kont KLS 2
15,2002,,0                  # konto w planie kont KLS 2
16,log                   # przesuniecie daty kursu dla typu
17,log                   # karta platnicza
18,string,20             # po tekscie nr karty
19,string,20             # tr wn
20,string,20             # tr ma
21,string,60             # Opis do dekretu
3,0,,,2
1,0,,,2

% EWYCIAG_BANK_TYP.DIC
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
"mt_konto_wn_tr",19,Estring,"Trans Wn"
"mt_konto_ma_tr",20,Estring,"Trans Ma"
"mt_opis_ksieg",21,Estring,"Do dekretu"
//
//
% EWYCIAG_BANK_RAPORT.RJR
1
1
EWYCIAG_BANK_RAPORT
//
% EWYCIAG_BANK_RAPORT.DBF
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
81,2000,,0             # konto w planie kont
82,string,80,,3        # plik wczytany
83,string,10,2,5       # numer z ogolnej numeracji
84,string,10           # modul importu
99,string,10,,9        # ksiega 
2,0,,,4
4,0,,,4
4,0,,,6
2,0,,,6
80,0,,,7
//
% EWYCIAG_BANK_RAPORT.DIC
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
"m_nr_numer",83,Estring,"Numeracja"
"m_modul",84,Estring,"Modu|l"
"m_ksiega",99,Estring,"Ksi|ega"
//
% EWYCIAG_BANK_RAP_N.RJR
90
2
EWYCIAG_BANK_RAP_N
//
% EWYCIAG_BANK_RAP_N.DBF
%<EWYCIAG_INBANK.DBF
90,0,,,2
99,string,10,,9        # ksiega 
//
% EWYCIAG_BANK_RAP_N.DIC
%<EWYCIAG_INBANK.DIC
"m_id",90,Ekwota,"m_id"
"m_ksiega",99,Estring,"Ksi|ega"
//
% EWYCIAG_INBANK.RJR
1
1
EWYCIAG_INBANK
//
% EWYCIAG_INBANK.DBF
0,log,,,,,D
1,ulong,,,1,,NM        # numer rekordu
2,string,16            # :20: numer ref RRRRMMDD-Y
3,string,35            # :25: rachunek
4,string,10            # :28C: numer wyciagu xxxx/yyy
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
% EWYCIAG_INBANK.DIC
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
% EWYCIAG_BANK_RAP_Z.RJR
1
1
EWYCIAG_BANK_RAP_Z
//
% EWYCIAG_BANK_RAP_Z.DBF
%<EWYCIAG_IZBANK.DBF
80,xkwota,,x          # kwota zapisu
81,2100,,2            # kontrahent
82,string,20          # kontrahent plus
83,2000,,0               # konto w planie kont
84,2103               # symbol transakcji
85,ulong              # id do modulu przelewow
88,log                # log
90,ulong,,,2          # numer rekordu
91,ulong,,,3          # id naglowka
99,string,10,,9       # ksiega 
100,xkwota,,x         # kwota zapisu w zl
101,xkwota,,4         # kurs
1,0,,,4
90,0,,,4 
//
% EWYCIAG_BANK_RAP_Z.DIC
%<EWYCIAG_IZBANK.DIC
"iz_kwota_zap",80,Ekwota,"Kwota zapisu"
"iz_konto_kl_sym",81,Estring,"Symbol kontrahenta"
"iz_konto_kl_sym_plus",82,Estring,"Kontrahenta plus"
"iz_konto_plan",83,Estring,"Konto w planie kont"
"iz_transakcja",84,Estring,"Transakcja"
"iz_id_przelew",85,Ekwota,"Modu|l PRL"
"iz_log",88,Elog,"Dekret T/N"
"iz_id",90,Ekwota,"Lp zap."
"m_id",91,Ekwota,"Raport"
"m_ksiega",99,Estring,"Ksi|ega"
"iz_kwota_zap_zl",100,Ekwota,"Kwota zapisu w zl"
"iz_kurs_zap",101,Ekwota,"Kurs zapisu"
//
% EWYCIAG_IZBANK.RJR
1
1
EWYCIAG_IZBANK
% EWYCIAG_IZBANK.DBF
0,log,,,,,D
1,ulong,,,1		       # klucz do naglowka
2,string,6             # :61 Data waluty RRMMDD
3,string,4             # MMDD data ksiegowania
4,string,2             # C/RC D/RD
5,string,3             # rodzaj waluty
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
27,string,65           # 32> Nazwa kontrahenta 1
28,string,65           # 33> Nazwa kontrahenta 2
29,string,65           # 34> Nazwa kontrahenta 3

% EWYCIAG_IZBANK.DIC
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
"iz_8615",27,Estring,"Nazwa kontrahenta 4"
"iz_8616",28,Estring,"Nazwa kontrahenta 5"
"iz_8617",29,Estring,"Nazwa kontrahenta 6"
//
% EWYCIAG_BANK_RAP_ZT.RJR
91
3
EWYCIAG_BANK_RAP_ZT
//
% EWYCIAG_BANK_RAP_ZT.DBF
0,log,,,,,D
%<EWYCIAG_IZTBANK.DBF
//
% EWYCIAG_BANK_RAP_ZT.DIC,EWYCIAG_IZTBANK.DIC
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
"m_ksiega",99,Estring,"Ksi|ega"
"it_kwota_zap_zl",100,Ekwota,"Kwota zapisu w zl"
//
% EWYCIAG_IZTBANK.RJR
0
0
EWYCIAG_IZTBANK

ZAZNACZAJ-MENU:89
//
% EWYCIAG_IZTBANK.DBF
1,ulong,,,1,,M        # id
80,xkwota,,x          # kwota zapisu
81,2100               # kontrahent
82,2000,,0            # konto w planie kont
83,2103               # symbol transakcji
84,2002,,0               # konto klasyfikacji w planie kont
85,string,3           # rodz transakcji
86,xkwota,,x          # kwota zapisu dew
87,dic,,0             # Waluta
89,log                # do zaznaczania
90,ulong              # id zapisu lp
91,ulong,,,3          # id naglowka
//92,ulong,,,12         # id zapisu n
92,ulong              # id zapisu n
99,string,10,,9        # ksiega 
100,xkwota,,x         # kwota zapisu w zl
101,ydate             # Data tra
102,ydate             # Data termin
82,0,,,2
83,0,,,2
91,0,,,4
92,0,,,4
90,0,,,4
91,0,,,5
82,0,,,5
81,0,,,6
83,0,,,6
91,0,,,12
90,0,,,12
99,0,,,22
82,0,,,22
83,0,,,22
//
// --------------------------------------------------------------
% EWYCIAG_BANK_RAP_ZK.RJR
91
3
EWYCIAG_BANK_RAP_ZK
//
% EWYCIAG_BANK_RAP_ZK.DBF
0,log,,,,,D
%<EWYCIAG_IZKBANK.DBF
//
% EWYCIAG_BANK_RAP_ZK.DIC,EWYCIAG_IZKBANK.DIC
"ik_kwota_zap",80,Ekwota,"Kwota zapisu"
"ik_konto_plan",81,Estring,"Konto w planie kont"
"ik_id",90,Ekwota,"Raport zapis lp"
"m_id",91,Ekwota,"Raport"
"iz_id",92,Ekwota,"Raport zapis"
"m_ksiega",99,Estring,"Ksi|ega"
"ik_kwota_zap_zl",100,Ekwota,"Kwota zapisu w zl"
// -------- tmp 
% EWYCIAG_IZKBANK.RJR
0
0
EWYCIAG_IZKBANK
//
% EWYCIAG_IZKBANK.DBF
1,ulong,,,1,,M        # id
80,xkwota,,x          # kwota zapisu
81,2002,,0               # klasyfikacja
90,ulong              # id zapisu lp
91,ulong,,,3          # id naglowka
92,ulong              # id zapisu n
99,string,10,,9        # ksiega 
100,xkwota,,x         # kwota zapisu w zl
91,0,,,4
92,0,,,4
90,0,,,4
//
% SWIFT-WCZYTAJ-PDF.ALG
  rejop["sw:otworzrej1","SWIFT.RXR"]
  PLIK_WEJSCIE := "roboczy/SEPA_Credit_Transfer.pdf"
  callsl["PRZELEWY->wczytaj_plik_swift_pdf()"]
  rejop["sw:zamknijrej",""]
  exdialogop["wyswietlpozycje","100"]
    
% SWIFT-CZY-UNIA.ALG
//  K_SWIFT
  K_SWIFT_OK := .N.
  if (not rejop["sw:otworzrej","SWIFT.RXR"]) exitalg[0]
  rejop["sw:szukajrek",K_SWIFT]
  petla:
    if (strcut[rejwezp_s["sw:swift_numer"],0,6] == K_SWIFT) K_SWIFT_OK := .T.
    if (K_SWIFT_OK) goto koniec
  next:
  if (rejop["sw:weznastepnyrek",""]) goto petla
  koniec:
  rejop["sw:zamknijrej",""]

% X-KONWERTUJ-PDF-TO-TEXT
#!/bin/bash
rm -f $1.txt
pdftotext -q -nopgbrk -layout $1 $1.txt 
//
//

//
% SL.rozne_operacje_dla_przelewow

implements("PRZELEWY");


define czytaj_lista_wsp()
{
  variable n,k;
  k = dajazmienna_S("D_STRING_K");
  n = dajazmienna_S("D_STRING_N");
  
  if (rejop("l:otworzrej","LIST-WSP.RXR")) {
  () = rejop("l:wezpierwszyrek");
   do {
    if (dajazmienna_S("NAZWA_KSIEG") == rejwezp_s("l:lwsp_ks_akt")) {
          ustawazmienna_S("std_banknr",rejwezp_s("l:lwsp_rw_knumer"));
          if (strin("remont",n) > -1) {
            ustawazmienna_S("std_banknr",rejwezp_s("l:lwsp_fr_knumer"));
          }
          break;
    }
    } while (rejop("l:weznastepnyrek"));
  () = rejop("l:zamknijrej");
  }
}

define czy_zaplacona_transakcja(ks_bank,ksiega,k_ko,k_kl,k_tr)
{
  variable j,k,key,bank,nbank;
  ustawazmienna_S("K_KS",ksiega);
  ustawazmienna_S("K_KO",k_ko);
  ustawazmienna_S("K_KL",k_kl);
  ustawazmienna_S("K_TR",k_tr);
  ustawazmienna_L("TR_ZAP",0);
  bank = "wbk";
  nbank = "WBK";
  if (ks_bank == "mill") {
    bank = "mill";
    nbank = "MILL";
  }
  if (ks_bank == "bre") {
    bank = "bre";
    nbank = "BRE";
  }
  if (ks_bank == "pkobp") {
    bank = "pkobp";
    nbank = "PKOBP";
  }
  
  j = 0;
//  if (not(ksiega == "")) () = finnop("openmainx",ksiega);
// szukanie z zapisach przelewow  
  if (rejop("t0:otworzrej","PRZEZAP.RJR")) {
    k = "4";
    key = k_ko+"*"+k_tr;
    if (k_ko == "") {
      k = "5";
      key = k_kl+"*"+k_tr;
    }
    () = rejop("t0:zmienkluczrej",k);
    j = rejop("t0:znajdzrek",key);
    () = rejop("t0:zamknijrej");
  }
  ustawazmienna_L("TR_ZAP",j);
  if (j) {
//    if (not(ksiega == "")) () = finnop("close");
    return j;
  }
// 
// -------------------------------------- ALL BANK
  () = callalgfile("przelewy\\przelewy_ewyciagi.sl","SL.IMPORT_EWYCIAG_BANK->czy_zaplacona_transakcja()");
  j = dajazmienna_L("TR_ZAP");
  if (j) {
    ustawazmienna_S("R_ZAPLATA_STATUS_BANK",bank);
//    if (not(ksiega == "")) () = finnop("close");
    return j;
  }
return j;
// -------------------------------------- 
// ------------------------- bez podzialu na banki
// ------------------------- bez podzialu na banki
// ------------------------- bez podzialu na banki
// szukanie w modu³ach wyci¹gów
// mill i bre ko/tr 2 - kl/tr 6
// MILLENIUM
  () = callalgfile("przelewy\\przelewy_"+bank+"_multi.sl","SL.IMPORT_"+nbank+"_MULTI->czy_zaplacona_transakcja()");
  j = dajazmienna_L("TR_ZAP");
  if (j) {
    ustawazmienna_S("R_ZAPLATA_STATUS_BANK",bank);
//    if (not(ksiega == "")) () = finnop("close");
    return j;
  }
// BRE
  () = callalgfile("przelewy\\przelewy_"+bank+"_multi.sl","SL.IMPORT_"+nbank+"_MULTI->czy_zaplacona_transakcja()");
  j = dajazmienna_L("TR_ZAP");
  if (j) {
    ustawazmienna_S("R_ZAPLATA_STATUS_BANK",bank);
//    if (not(ksiega == "")) () = finnop("close");
    return j;
  }
//  () = finnop("close");
return j;
}
////////////////////////////////////////////////////
////////////////////////////////////////////////////
////////////////////////////////////////////////////
define sk_wbk()
{
  variable li;
  li = int(dajazmienna_S("ZNAK"));
  if (li <0) {
    li = 127+(127-(li*-1))+2;
  }
  ustawazmienna_K("SUMA",li);
}

define prl_przepisz(id,r,rvat)
{
   variable kwota_dox;
   variable tra_key;
   
   () = rejop("zz:otworzrejczytaj","FAKTURY-PRZYCHODZACE.RXR");
   () = rejop("zz:ustawrekpos",string(id));
   if (pustepole(r+"kwota_przel")) {
        kwota_dox = 0;
   } else {
        kwota_dox = rejwezp_k("zz:f_brutto");
   }
// darek kwota   
   if ( (not pustepole("zz:f_kontrahent")) and ( not pustepole("zz:f_symbol")) ) {
        ustawazmienna_K("KWOTA_BYL",rejwezp_k("zz:f_brutto"));
        tra_key = rejwezp_s("zz:f_kontrahent")+"*"+rejwezp_s("zz:f_symbol");
        ustawazmienna_S("D_STRING",tra_key);
        () = callalg("daj_status_dla_faktury");
        kwota_dox  = kwotarop("-",rejwezp_k("zz:f_brutto"),dajazmienna_K("KWOTA_BYL"),2);
   }    
//   xrejwstawp_d(r+"data_przel",rejwezp_d("zz:f_termin"));
   if (pustepole(r+"kwota_przel")) {
        xrejwstawp_k(r+"kwota_przel",kwota_dox);
   } else {
        xrejwstawp_k(r+"kwota_przel",rejwezp_k(r+"kwota_przel")+kwota_dox);
   }
   xrejwstawp_s(r+"s_klient",rejwezp_s("zz:f_kontrahent"));
   () = rejop(rvat+"dodajrek");
   rejwstawp_s(rvat+"s_klient",rejwezp_s("zz:f_kontrahent"));
   rejwstawp_s(rvat+"tresc1",rejwezp_s("zz:f_opis1"));
   rejwstawp_s(rvat+"trans",rejwezp_s("zz:f_symbol"));
   rejwstawp_d(rvat+"data_plat",rejwezp_d("zz:f_termin"));
   rejwstawp_k(rvat+"wartosc",kwota_dox);
//   rejwstawp_k(rvat+"wartosc",rejwezp_k("zz:f_brutto"));
   () = rejop(rvat+"zapiszrek");
   () = rejop("zz:zamknijrej");
}

define prl_faktury_przychodzace_przepisz()
{
   () = callalgfile(gl_daj_plik_fp(),"SL.PRZELEWY->prl_przepisz");
}  

define wybor_z_przychodzacych_fa()
{
  variable id;
  id = prl_gl_faktury_przychodzace_wybierz;
  if (id == -1) return;
  prl_faktury_przychodzace_przepisz(id,"","a:");
}
define wybor_z_przychodzacych_kw()
{
  variable id;
  id = prl_gl_kwity_przychodzace_wybierz;
  if (id == -1) return;
  prl_faktury_przychodzace_przepisz(id,"","a:");
}

define daj_dlugosc_typ_prl()
{
   ustawazmienna_I("typ_prl_dl",global_dajparami("!DSS.typ_prl_dl"));
}

define zapisz_dlugosc_typ_prl()
{
   global_piszparami("!DSS.typ_prl_dl",dajazmienna_I("typ_prl_dl"));
}


define ustal_konto_kontrahent_plan()
{
  if (rejop("x:otworzrej","PLANRODZ.RJR"))
  {
    () = rejop("x:zmienkluczrej","2");
    if (rejop("x:znajdzrek",dajazmienna_S("KL_SYM"))) ustawazmienna_S("KONTO_KL_SYM",rejwezp_s("x:plan_symbol"));
    () = rejop("x:zamknijrej");
  }
}

// -------------------------------------------------------------------
define ustaw_klucz_prl(co)
{
   switch (co)
     { case 0: return "!PRL-"+dajazmienna_S("nazwa_ksieg")+"&"+dajazmienna_S("os_ksieg"); }
     { case 1: return "!PRL-MENU-"+dajazmienna_S("nazwa_ksieg")+"&"+dajazmienna_S("os_ksieg"); }
     { case 2: return "!PRL-GEN-METODA-"+dajazmienna_S("nazwa_ksieg")+"&"+dajazmienna_S("os_ksieg"); }
     { case 3: return "!PRL-GEN-KLUCZ-"+dajazmienna_S("nazwa_ksieg")+"&"+dajazmienna_S("os_ksieg"); }
     { case 4: return "!PRL-GEN-ZNAK-"+dajazmienna_S("nazwa_ksieg")+"&"+dajazmienna_S("os_ksieg"); }
     { case 5: return "!PRL-GEN-KSIEGA-OLD-"+dajazmienna_S("nazwa_ksieg")+"&"+dajazmienna_S("os_ksieg"); }
     { case 6: return "!PRL-GEN-KSIEGA-ACT-"+dajazmienna_S("nazwa_ksieg")+"&"+dajazmienna_S("os_ksieg"); }
     { case 7: return "!PRL-GEN-ODLOZ-"+dajazmienna_S("nazwa_ksieg")+"&"+dajazmienna_S("os_ksieg"); }
     { case 8: return "!PRL-GEN-ZAP-"+dajazmienna_S("nazwa_ksieg")+"&"+dajazmienna_S("os_ksieg"); }
}

define daj_konto_prl()
{
  ustawazmienna_S("kontobank",global_dajparams(ustaw_klucz_prl(0))); 
}
define daj_menu_gen_prl()
{
  ustawazmienna_S("menu_gen_bank",global_dajparams(ustaw_klucz_prl(1))); 
  ustawazmienna_S("menu_gen_bank","Z"); 
}
define daj_metoda_gen_prl()
{
  ustawazmienna_K("metoda_gen_bank",global_dajparamk(ustaw_klucz_prl(2))); 
}
define daj_klucz_gen_prl()
{
  variable kw;
  kw = global_dajparamk(ustaw_klucz_prl(3));
  if (pustakwota(kw)) kw = 4;
  ustawazmienna_K("klucz_gen_bank",kw);
}
define daj_znak_gen_prl()
{
  ustawazmienna_L("znak_gen",global_dajparaml(ustaw_klucz_prl(4)));
}
define daj_odloz_gen_prl()
{
  ustawazmienna_L("odloz_gen",global_dajparaml(ustaw_klucz_prl(7)));
}
define daj_zaplaty_gen_prl()
{
  ustawazmienna_L("zaplaty_gen",global_dajparaml(ustaw_klucz_prl(8)));
}
define daj_ksiega_old_gen()
{
  ustawazmienna_S("ksiega_old_gen",global_dajparams(ustaw_klucz_prl(5)));
  ustawazmienna_S("ksiega_act_gen",global_dajparams(ustaw_klucz_prl(6))); 
  if (apuste("ksiega_act_gen")) ustawazmienna_S("ksiega_act_gen",dajazmienna_S("nazwa_ksieg")); 
}
define daj_ostatni_termin_do()
{
  ustawazmienna_D("TERMIN_DO",global_dajparamd(ustaw_klucz_prl(9)));
  if (apuste("TERMIN_DO")) ustawazmienna_D("TERMIN_DO",dajazmienna_D("D_DZISIAJ"));
}
define pisz_ostatni_termin_do()
{
  global_piszparamd(ustaw_klucz_prl(9),dajazmienna_D("TERMIN_DO"));
}


// -------------------------------------------------------------------

define pisz_konto_prl()
{
  global_piszparams(ustaw_klucz_prl(0),dajazmienna_S("kontobank"));
}
define pisz_menu_gen_prl()
{
  global_piszparams(ustaw_klucz_prl(1),dajazmienna_S("menu_gen_bank"));
}
define pisz_metoda_gen_prl()
{
  global_piszparamk(ustaw_klucz_prl(2),dajazmienna_K("metoda_gen_bank"));
}
define pisz_klucz_gen_prl()
{
  global_piszparamk(ustaw_klucz_prl(3),dajazmienna_K("klucz_gen_bank"));
}
define pisz_znak_gen_prl()
{
  global_piszparaml(ustaw_klucz_prl(4),dajazmienna_L("znak_gen"));
}
define pisz_odloz_gen_prl()
{
  global_piszparaml(ustaw_klucz_prl(7),dajazmienna_L("odloz_gen"));
}
define pisz_zaplaty_gen_prl()
{
  global_piszparaml(ustaw_klucz_prl(8),dajazmienna_L("zaplaty_gen"));
}
define pisz_ksiega_old_gen()
{
  if (apuste("ksiega_act_gen")) ustawazmienna_S("ksiega_act_gen",dajazmienna_S("nazwa_ksieg")); 
  global_piszparams(ustaw_klucz_prl(5),dajazmienna_S("ksiega_old_gen"));
  global_piszparams(ustaw_klucz_prl(6),dajazmienna_S("ksiega_act_gen"));
}
// -------------------------------------------------------------------
define daj_init_drukuj_tab()
{
variable param = @PARAM_TAB_DRUKUJ;
param.suma_rej = @PARAM_TAB_SUMOWANIE[1];      
param.suma_rej[0].rejpole = "wartosc";
}

define dekoduj_polskie()
{
  variable pp;
  if (dajazmienna_S("D_STRING") == "") return ;
  if (dajazmienna_S("D_POLSKIE") == "") return ;
  pp = konwertujstringzprotest(dajazmienna_S("D_STRING"),"PROTEST-"+dajazmienna_S("D_POLSKIE"));
//  pp = konwertujstringzprotest(dajazmienna_S("D_STRING"),dajazmienna_S("D_POLSKIE"));
  ustawazmienna_S("D_STRING",pp);
}
define daj_nazwa_p()
{
ustawazmienna_S("D_STRING",gl_daj_slownikopiss("95",dajazmienna_S("D_STRING")));
}
define daj_nazwa_p_nab()
{
ustawazmienna_S("D_STRING",gl_daj_slownikopiss("96",dajazmienna_S("D_STRING")));
}
define czy_zakup_gotowka()
{
  variable faktura = dajazmienna_S("PRL_TRANSAKCJA");
  variable klient = dajazmienna_S("PRL_KLIENT");
  variable konto_klient = dajazmienna_S("PRL_KONTO_KLIENT");
  variable d_string = "N";
  if (rejop("vv:otworzrejczytaj","REJFAKTSPR.REX")) {
  () = rejop("vv:zmienkluczrej","1");
  if (rejop("vv:znajdzrek",faktura)) {
    do {
      if (not (faktura == rejwezp_s("vv:vatsymdok"))){
        break;
      } else {
//        if (not(klient == rejwezp_s("vv:vatindeksnab"))) break;
        if (not(konto_klient == rejwezp_s("vv:vatkontoplat"))) break;
        if (rejwezp_s("vv:vatformaplat") == "G") {
            d_string = "T";
            break;
        }
      }
    } while (rejop("vv:weznastepnyrek"));
  }
  () = rejop("vv:zamknijrej");  
  }
  ustawazmienna_S("D_STRING",d_string);
}

define podziel_na(il_pol,dl_pol,zn_pol)
{
    if (apuste("D_STRING")) return;
    variable t = dajazmienna_S("D_STRING");
    variable xlp = 0;
    variable tt = t;
    variable p = 0;
//    if (int(strlen(t)) >= int(dl_pol)) {
    tt = "";
    forever {
        if (xlp == il_pol) break;
        if (xlp == il_pol-1) zn_pol = "";
        xlp += 1;
        tt += strcut(t,p,dl_pol)+zn_pol;
        p = p+dl_pol;
    }
//    }
    ustawazmienna_S("D_STRING",tt);
}

define prl_odznacz()
{
 if (rejop("wezpierwszyrek")) {
    do {
      rejwstawp_l("zaznacz",0);
//      rejwstawp_k("zaznacz_log",0);
      () = ustawczekajinfo("Nastepny","Next");
    } while (rejop("weznastepnyrek"));
  }
}
define prl_zaznacz_jak_brak()
{
 if (rejop("wezpierwszyrek")) {
    do {
        variable id = rejwezp_k("dokid");
        if (not(rejop("a:znajdzrek",string(id)))) {
            rejwstawp_l("zaznacz",1);  
//            rejwstawp_k("zaznacz_log",1);  
        }
        () = ustawczekajinfo("Nastepny","Next");
    } while (rejop("weznastepnyrek"));
  }
}
define prl_usun_jak_brak()
{
  ustawazmienna_L("AOK",1);
 forever { 
   if (rejop("znajdzrek","T")) {
     () = rejop("usunrek");
   } else {
     break;
   } 
 }
}

define prl_kasuj_zaznaczone()
{
if (rejop("otworzrejsprawdz","PRZELEW.RJR")) {
if (rejop("a:otworzrej","PRZEZAP.RJR")) {
() = rejop("a:zmienkluczrej","1");
 () = ustawczekajinfo("Start3","Prosz|e czeka|c ...");
  prl_odznacz;
  () = rejop("wezpierwszyrek");
  prl_zaznacz_jak_brak;
  () = rejop("zmienkluczrej","10");
  () = rejop("wezpierwszyrek");
   prl_usun_jak_brak;
//  () = callalg("PRZELEWY-OCZYSC-PUSTE");
 () = ustawczekajinfo("Stop","");
}
}
}
define prl_konwersja_kont_wykonaj(r,p)
{
  if (rejop("otworzrejsprawdz",r)) {
  if (rejop("wezpierwszyrek")) {
    do {
//      if (rejwezp_s("status") == "b|l|ad") {
        variable nr = rejwezp_s(p);
        variable nnr = nr;
        if (strin("-",nr) > -1) {
          ustawazmienna_S("D_STRING",nr);
          () = callalg("zrob_nowe_konto");
          nr = dajazmienna_S("D_STRING");
          if (not(strlen(nr) == 26)) {
            nr = strcut(nr,8,26);
          }
          ustawazmienna_L("a_ok",0);
          ustawazmienna_S("D_STRING",nr);
          () = callalg("kontrola-konta-alert");
          if (not(dajazmienna_L("a_ok"))) nr = nnr;          
          rejwstawp_s(p,nr);
        }
//      }
    } while (rejop("weznastepnyrek"));
  }
  () = rejop("zamknijrej");
  }
}
define prl_konwersja_kont()
{
  prl_konwersja_kont_wykonaj("PRZELEW.RJR","numerbanku_kl");
  prl_konwersja_kont_wykonaj("REJESTRKL.RXR","kl_konto");
}
define daj_info_czy_do_kompensaty()
{
// PLA plankont
//  D_STRING_INFO := ""
//  D_STRING_KL_SYM := rejwezp_s["p:sym_kl"]
  ustawazmienna_S("D_STRING_INFO");
  variable k = dajazmienna_S("D_STRING_KL_SYM");
  if (rejop("PLA:znajdzrek",k)) {
    do {
      if (not (k == rejwezp_s("PLA:plan_klsym"))) break;
        if (finnop("@1znajdzdok",rejwezp_s("PLA:plan_symbol"))) {
          if (rozrop("tofirstt","")) {
            do {
              if (dajazmienna_K("TrObrWN") > dajazmienna_K("TrObrMa")) {
                if (not(dajazmienna_D("TermPlat") > dajazmienna_D("KOM_TERMIN_DO") )) {
                if (dajazmienna_S("Tr_Rodz") == "Odb") {
                  ustawazmienna_S("D_STRING_INFO","<Kompensata>");
                  return;
                }
                }
              }
            } while (rozrop("tonextt",""));
          }
        }
    } while (rejop("PLA:weznastepnyrek"));
  }
}

define daj_info_czy_blokada_platnosci()
{
  
  variable l=1;
  variable k = dajazmienna_S("D_STRING_KL_SYM");
  variable f = dajazmienna_S("D_STRING_FAKTURA");
    if (rejop("pfv:znajdzrek",f)) {
      do {
        if (not(rejwezp_s("pfv:vatsymdok") == f)) break;
        if (k == rejwezp_s("pfv:vatindeksnab")) {
        if (rejwezp_l("pfv:nie_plac")) {
          l = 0;
          break;
        }
        }
      } while (rejop("pfv:weznastepnyrek"));
    }
  ustawazmienna_L("D_PLAC",l);
}

define daj_info_czy_wiele_kont()
{
  ustawazmienna_S("D_STRING_INFO_KONTO");
  variable k = dajazmienna_S("D_STRING_KL_SYM");
  variable l=0;
  
  if (rejop("kb:otworzrejsprawdz","KL_KBANK.RJR")) {
    if (rejop("kb:znajdzrek",k)) {
      l +=1;
      if (rejop("kb:weznastepnyrek")) {
        if (rejwezp_s("kb:kb_kl_sym") == k) l += 1 ;
      }
    }
    () = rejop("kb:zamknijrej");
  }
  if (l > 1) ustawazmienna_S("D_STRING_INFO_KONTO","<Wiele kont>");
}
// ----------- drukowanie z obrazkiem przelewy

define wydrukuj_przelew_html_file_head(f)
{
  () = fputs("<html><head>",f);
  () = fputs("\n",f);
  () = fputs("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-2\">",f);
  () = fputs("\n",f);
  () = fputs("<title>Druk przelewu</title></head><body>",f);
  () = fputs("\n",f);
  () = fputs("<div style=\"position: absolute; top: 60px; left: 10px\">",f);
  () = fputs("\n",f);
  () = fputs("<img src=\""+dajazmienna_S("zmienna_rodzaj_plik")+"\" width=\"740\" border=\"0\"  /></div>",f);
  () = fputs("\n",f);
}

define wydrukuj_przelew_html_file_foot(f)
{
  () = fputs("</body></html>",f);
  () = fputs("\n",f);
}

define wydrukuj_przelew_html_file(f)
{
  variable txt,pol;
  pol = "PROTEST-ISO-8859-LATIN2";
  
  wydrukuj_przelew_html_file_head(f);
  () = fputs("<span style=\"position: absolute; top: 70px; left: 30px; font-family: Arial, Helvetica; font-size: 7pt; \">",f);
  () = fputs("\n",f);
  () = fputs(dajazmienna_S("numer_banku")+"</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 104px; left: 30px; font-family: Arial, Helvetica; font-size: 7pt; \"></span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 134px; left: 30px; font-family: Arial, Helvetica; font-size: 6pt; \">",f);
  () = fputs("\n",f);
  txt = konwertujstringzprotest(dajazmienna_S("firma_1"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("firma_2"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("firma_nip")+" "+dajazmienna_S("firma_regon"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("firma_4"),pol);
  () = fputs(txt+" "+dajazmienna_S("std_dom")+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("firma_3"),pol);
  () = fputs(dajazmienna_S("std_kodpoc")+" "+txt+"</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 192px; left: 80px; font-family: Arial, Helvetica; font-size: 8pt; \">",f);
  () = fputs("\n",f);
  () = fputs(tostr1("#zmienna_do_zaplaty#S:X")+"</span>",f);  
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 230px; left: 30px; font-family: Arial, Helvetica; font-size: 6pt; \">",f);
  () = fputs("\n",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_nazwa1"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_nazwa2"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_nazwa3"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_kodmiasto"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_adres"),pol);
  () = fputs(txt+"<br>",f);
  () = fputs("<br>",f);
  () = fputs("\n",f);  
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t1"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t2"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t3"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t4"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t5"),pol);
  () = fputs(txt+"</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 70px; left: 244px; font-family: Arial, Helvetica; font-size: 9pt; \">",f);
  () = fputs("\n",f);
  txt = konwertujstringzprotest(dajazmienna_S("firma_1")+" "+dajazmienna_S("firma_2"),pol);
  () = fputs(txt+"</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 100px; left: 244px; font-family: Arial, Helvetica; font-size: 9pt; \">",f);
  txt = konwertujstringzprotest(dajazmienna_S("firma_3")+" "+dajazmienna_S("firma_4"),pol);
  () = fputs(txt+"</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 128px; left: 244px; font-family: Arial, Helvetica; font-size: 12pt; \">",f);
  () = fputs("\n",f);
  () = fputs(dajazmienna_S("numer_banku")+"</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 156px; left: 560px; font-family: Arial, Helvetica; font-size: 12pt; \">",f);
  () = fputs("\n",f);
  () = fputs(tostr1("#zmienna_do_zaplaty#S:X")+"</span>",f);  
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 188px; left: 244px; font-family: Arial, Helvetica; font-size: 12pt; \">",f);
  () = fputs("</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 220px; left: 244px; font-family: Arial, Helvetica; font-size: 9pt; \">",f);
  () = fputs("\n",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_nazwa1"),pol);
  () = fputs(txt,f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_nazwa2"),pol);
  () = fputs(" "+txt+"</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 250px; left: 244px; font-family: Arial, Helvetica; font-size: 9pt; \">",f);
  () = fputs("\n",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_kodmiasto"),pol);
  () = fputs(txt,f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_adres"),pol);
  () = fputs(" "+txt+"</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 280px; left: 244px; font-family: Arial, Helvetica; font-size: 9pt; \">",f);

  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t1"),pol);
  () = fputs(txt,f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t2"),pol);
  () = fputs(txt,f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t3"),pol);
  () = fputs(txt+"</span>",f);
  () = fputs("\n",f);
  
  () = fputs("<span style=\"position: absolute; top: 310px; left: 244px; font-family: Arial, Helvetica; font-size: 9pt; \">",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t4"),pol);
  () = fputs(txt,f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t5"),pol);
  () = fputs(txt+"</span>",f);
  wydrukuj_przelew_html_file_foot(f);
}

define wydrukuj_przelew_html_file_wsp(f)
{
  variable txt,pol;
  pol = "PROTEST-ISO-8859-LATIN2";
  
  wydrukuj_przelew_html_file_head(f);
  %okalert("t1 "+dajazmienna_S("zmienna_kl_t1"));
  %okalert("t2 "+dajazmienna_S("zmienna_kl_t2"));
  %okalert("t3 "+dajazmienna_S("zmienna_kl_t3"));
  %okalert("t4 "+dajazmienna_S("zmienna_kl_t4"));
  %okalert("t5 "+dajazmienna_S("zmienna_kl_t5"));
  %okalert("t6 "+dajazmienna_S("zmienna_kl_t6"));
  %ustawazmienna_S("zmienna_kl_t2","t1");
  %ustawazmienna_S("zmienna_kl_t2","t2");
  %ustawazmienna_S("zmienna_kl_t3","t3");
  %ustawazmienna_S("zmienna_kl_t4","t4");
  %ustawazmienna_S("zmienna_kl_t5","t5");
  %ustawazmienna_S("zmienna_slownie","");
  variable sl = "*";
  variable mmm = tostr("#kwota_cala#S:X");
  variable zl, gr,zn,li;
  variable i = 1;
  zl = "";
  gr = "";
  variable len = strlen(mmm);
  %zlote
  do
  {
   zn = substr(mmm,i,1);
   if (zn == ".") break;
   li = stringnaliczbe(zn);
   sl = sl+substr(slownie(li,0,0),1,3)+"*";
   i+=1;
  }while(i<=len);
  sl = sl +"z|l*";
  %grosze
  i+=1;
  do
  {
   zn = substr(mmm,i,1);
   li = stringnaliczbe(zn);
   sl = sl+substr(slownie(li,0,0),1,3)+"*";
   i+=1;
  }while(i<=len);
  sl = sl +"gr";
  %okalert("mmm = "+mmm);
  %okalert("sl "+sl);
  ustawazmienna_S("zmienna_slownie",sl);
  %okalert("mmm = "+slownie(dajazmienna_K("kwota_cala"),0,0));
  () = fputs("<span style=\"position: absolute; top: 70px; left: 30px; font-family: Arial, Helvetica; font-size: 7pt; \">",f);
  () = fputs("\n",f);
  %madzia
  %() = fputs(dajazmienna_S("std_banknr")+"</span>",f);
  %okalert("madzia numer "+dajazmienna_S("numer_banku"));
  () = fputs(dajazmienna_S("numer_banku")+"</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 104px; left: 30px; font-family: Arial, Helvetica; font-size: 7pt; \"></span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 134px; left: 30px; font-family: Arial, Helvetica; font-size: 6pt; \">",f);
  () = fputs("\n",f);
  txt = konwertujstringzprotest(dajazmienna_S("std_firma1"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("std_firma2"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("std_firma3"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("std_ulica"),pol);
  () = fputs(txt+" "+dajazmienna_S("std_dom")+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("std_miasto"),pol);
  () = fputs(dajazmienna_S("std_kodpoc")+" "+txt+"</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 192px; left: 80px; font-family: Arial, Helvetica; font-size: 8pt; \">",f);
  () = fputs("\n",f);
  () = fputs(tostr1("#zmienna_do_zaplaty#S:X")+"</span>",f);  
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 230px; left: 30px; font-family: Arial, Helvetica; font-size: 6pt; \">",f);
  () = fputs("\n",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_nazwa1"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_nazwa2"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_nazwa3"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_kodmiasto"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_adres"),pol);
  () = fputs(txt+"<br>",f);
  () = fputs("<br>",f);
  () = fputs("\n",f);  
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t1"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t2"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t3"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t4"),pol);
  () = fputs(txt+"<br>",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t5"),pol);
  () = fputs(txt+"</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 70px; left: 244px; font-family: Arial, Helvetica; font-size: 9pt; \">",f);
  () = fputs("\n",f);
  txt = konwertujstringzprotest(dajazmienna_S("std_firma1"),pol);
  () = fputs(txt+"</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 100px; left: 244px; font-family: Arial, Helvetica; font-size: 9pt; \">",f);
  txt = konwertujstringzprotest(dajazmienna_S("std_firma2"),pol);
  () = fputs(txt+"</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 128px; left: 244px; font-family: Arial, Helvetica; font-size: 12pt; \">",f);
  () = fputs("\n",f);
  %madzia 
  %() = fputs(dajazmienna_S("std_banknr")+"</span>",f);
  () = fputs(dajazmienna_S("numer_banku")+"</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 156px; left: 560px; font-family: Arial, Helvetica; font-size: 12pt; \">",f);
  () = fputs("\n",f);
  () = fputs(tostr1("#zmienna_do_zaplaty#S:X")+"</span>",f);  
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 188px; left: 244px; font-family: Arial, Helvetica; font-size: 12pt; \">",f);
  txt = konwertujstringzprotest(sl,pol);
  () = fputs(txt+"</span>",f);
  %() = fputs("</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 220px; left: 244px; font-family: Arial, Helvetica; font-size: 9pt; \">",f);
  () = fputs("\n",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_nazwa1"),pol);
  () = fputs(txt,f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_nazwa2"),pol);
  () = fputs(" "+txt+"</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 250px; left: 244px; font-family: Arial, Helvetica; font-size: 9pt; \">",f);
  () = fputs("\n",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_kodmiasto"),pol);
  () = fputs(txt,f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_adres"),pol);
  () = fputs(" "+txt+"</span>",f);
  () = fputs("\n",f);
  () = fputs("<span style=\"position: absolute; top: 280px; left: 244px; font-family: Arial, Helvetica; font-size: 9pt; \">",f);

  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t6"),pol);
  () = fputs(txt,f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t2"),pol);
  () = fputs(txt+"</span>",f);
  () = fputs("\n",f);
  
  () = fputs("<span style=\"position: absolute; top: 310px; left: 244px; font-family: Arial, Helvetica; font-size: 9pt; \">",f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t3"),pol);
  () = fputs(txt,f);
  txt = konwertujstringzprotest(dajazmienna_S("zmienna_kl_t4")+" "+dajazmienna_S("zmienna_kl_t5"),pol);
  () = fputs(txt+"</span>",f);
  wydrukuj_przelew_html_file_foot(f);
}

define wydrukuj_przelew_html_wsp()
{
// zmienna_plik_przelew := "przelew"
// zmienna_do_zaplaty := dozaplaty
// zmienna_kl_nazwa1 := knazwa_1
// zmienna_kl_nazwa2 := knazwa_2
// zmienna_kl_nazwa3 := knazwa_3
// zmienna_kl_kodmiasto := kkod_miasto
// zmienna_kl_adres := kadres
// zmienna_kl_t1 := ""
// zmienna_kl_t2 := ""
// zmienna_kl_t3 := ""
// zmienna_kl_t4 := ""
// zmienna_kl_t5 := ""
//
// 
  ustawazmienna_S("xzmienna_plik_przelew",dajazmienna_S("zmienna_plik_przelew"));
  variable ttyno,tyno,dir_file,dr_file,dr_f,path,spath,dpath;
  
  path = wezzmiennasrod("FINN-LIB");
  tyno=wezzmiennasrod("P*q2");
  ttyno = strcut(tyno,5,strlen(tyno)-5);
  
  spath = path+"\\przelewy\\htm\\"+dajazmienna_S("zmienna_rodzaj_plik");
  dir_file = "temp\\"+ttyno+"\\";
  if (ttyno == "") dir_file = "temp\\";
  
  () = dyskop("wezsystemx","");
  if (gl_daj_dstring() == "X-") {
    spath = path+"/przelewy/htm/"+string(dajazmienna_S("zmienna_rodzaj_plik"));
//    +"_przelew.gif";
    dir_file = "temp/"+ttyno+"/";
    if (ttyno == "") dir_file = "temp/";
  }
  
  dr_file = dir_file+dajazmienna_S("xzmienna_plik_przelew")+"."+wezzmiennasrod("DOC_EXT");
  () = dyskop("kopiujplik",spath,dir_file);
  dr_f = fopen(dr_file,"w+");
  if (dr_f == NULL) {
     gl_ustaw_errmess("Nie mo|zna za|lo|zy|c pliku "+dr_file+" !");
     return;
  }
  wydrukuj_przelew_html_file_wsp(dr_f);
  () = fclose(dr_f);
}
define wydrukuj_przelew_html()
{
// zmienna_plik_przelew := "przelew"
// zmienna_do_zaplaty := dozaplaty
// zmienna_kl_nazwa1 := knazwa_1
// zmienna_kl_nazwa2 := knazwa_2
// zmienna_kl_nazwa3 := knazwa_3
// zmienna_kl_kodmiasto := kkod_miasto
// zmienna_kl_adres := kadres
// zmienna_kl_t1 := ""
// zmienna_kl_t2 := ""
// zmienna_kl_t3 := ""
// zmienna_kl_t4 := ""
// zmienna_kl_t5 := ""
//
// 
  ustawazmienna_S("xzmienna_plik_przelew",dajazmienna_S("zmienna_plik_przelew"));
  variable ttyno,tyno,dir_file,dr_file,dr_f,path,spath,dpath;
  
  path = wezzmiennasrod("FINN-LIB");
  tyno=wezzmiennasrod("P*q2");
  ttyno = strcut(tyno,5,strlen(tyno)-5);
  
  spath = path+"\\przelewy\\htm\\"+dajazmienna_S("zmienna_rodzaj_plik");
  dir_file = "temp\\"+ttyno+"\\";
  if (ttyno == "") dir_file = "temp\\";
  
  () = dyskop("wezsystemx","");
  if (gl_daj_dstring() == "X-") {
    spath = path+"/przelewy/htm/"+string(dajazmienna_K("zmienna_rodzaj_plik"))+"_przelew.gif";
    dir_file = "temp/"+ttyno+"/";
    if (ttyno == "") dir_file = "temp/";
  }
  
  dr_file = dir_file+dajazmienna_S("xzmienna_plik_przelew")+"."+wezzmiennasrod("DOC_EXT");
  () = dyskop("kopiujplik",spath,dir_file);
  dr_f = fopen(dr_file,"w+");
  if (dr_f == NULL) {
     gl_ustaw_errmess("Nie mo|zna za|lo|zy|c pliku "+dr_file+" !");
     return;
  }
  wydrukuj_przelew_html_file(dr_f);
  () = fclose(dr_f);
} 
//
% PY.modul-przelewy-tools$MODUL=przelewy_tools$

import pers

def licz_konto () :
    t = pers.dajazmienna_S("D_STRING")
    q,r = divmod(long(t),97)
    pers.ustawazmienna_S("D_STRING",str(r))

def zamien_z_na() :
    import string
    t = pers.dajazmienna_S("D_STRING")
    zn_z = pers.dajazmienna_S("ZN_Z")
    zn_na = pers.dajazmienna_S("ZN_NA")
    tt = string.replace(t,zn_z,zn_na)
    pers.ustawazmienna_S("D_STRING",tt)
