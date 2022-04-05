//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//
// Perseus Spolka z o.o 
// Wszystkie prawa zastrzezone
// 
// Data utworzenia: 2001.09.01
// Historia zmian
// Data:2001.09.12
//   Zmieniono .....
% FVATFAKT-WAR.BOX
"Formularz:",70
"Data wytworzenia(RRRR.MM.DD/GG:MM:SS):",71
"Okres(RR.MM.DD-RR.MM.DD):",72
"Opis:",73
"Czy zaznaczone:",999
"VAT naliczony/nale|zny (T/N):",22
"Symbol faktury:",1
"Data dokumentu:",4
"Data dostawy/us|lugi:",5
"Data obowi|azku:",6
"Termin p|latno|sci:",27
"Symbol kontrahenta:",7
"NIP kontrahenta:",30
"Nazwa kontrahenta:",31
"Adres kontrahenta:",32
"Rejestr VAT:",11
"Brutto:",15
"Netto:",13
"VAT:",14
//
% REJDEFTABLE
%<< REJDEFTABLE
,,0,"REJ-IMP.RJR",rej_imp,4                # rejestry z importem
////------------------------------------------------------------
% REJ-IMP.RJR # inicjalizacja rejestru
100
1
"REJ-IMP"
"REJ-IMP"

"Powt|orzony symbol pozycji !"
"Zmieniasz definicj|e pozycji ?"
"Czy doda|c t|e pozycj|e ?"
"Czy usun|a|c t|e pozycj|e ?"
"Czy doda|c nast|epn|a pozycj|e ?"
""
"Nie zdefiniowano |zadnych pozycji !"
"Tabela pozycji jest pusta !$Wprowadzasz pierwsz|a pozycj|e ?"
"Nie ma pozycji o podanym symbolu.$Znale|x|c nast|epn|a ?"
"REJ-IMP"
// --------------------------------------------
% REJ-IMP.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"	
100,string,80,,1,    # symbol rubryki (klucz nr 1 - unikalny; wzorzec - 1)
101,string,80,,3            # nazwa rubryki
102,string,120              # sposob pobierania danych
103,string,80              # typ pola
104,string,80              # sposob drukowania
105,string,80              # atrybut drukowania
106,string,80              # atrybut drukowania
107,string,80             # zaznaczanie liczenia (pole wewnetrzne)
108,string,80             # zaznaczanie liczenia (pole wewnetrzne)
109,string,80           # nazwa rejestru DEF
110,string,80          # definicja rubryki 0
111,string,80,,2          # definicja rubryki 1
112,string,80          # definicja rubryki 2
113,string,80          # definicja rubryki 3
114,string,80          # definicja rubryki 4
115,string,80          # definicja rubryki 5
116,string,80          # definicja rubryki 6
117,string,80          # definicja rubryki 7
118,string,80          # definicja rubryki 8
119,string,80          # definicja rubryki 9
200,string,80          # definicja rubryki 9
201,string,80          # definicja rubryki 9
202,string,80          # definicja rubryki 9
203,string,80          # definicja rubryki 9
204,string,80          # definicja rubryki 9
205,string,80          # definicja rubryki 9
206,string,80          # definicja rubryki 9
207,string,80          # definicja rubryki 9
208,string,80          # definicja rubryki 9
209,string,80          # definicja rubryki 9
210,string,80          # definicja rubryki 9
211,string,80          # definicja rubryki 9
212,string,80          # definicja rubryki 9
213,string,80          # definicja rubryki 9
214,string,80          # definicja rubryki 9
215,string,80          # definicja rubryki 9
216,string,80          # definicja rubryki 9
217,string,80          # definicja rubryki 9
218,string,80          # definicja rubryki 9
219,string,80          # definicja rubryki 9
220,string,80          # definicja rubryki 9
221,string,80          # definicja rubryki 9
222,string,80          # definicja rubryki 9
223,string,80          # definicja rubryki 9
224,string,80          # definicja rubryki 9
225,string,80          # definicja rubryki 9
226,string,80          # definicja rubryki 9
227,string,80          # definicja rubryki 9
228,string,80          # definicja rubryki 9
229,string,80          # definicja rubryki 9
230,string,80          # definicja rubryki 9
231,string,80          # definicja rubryki 9
232,string,80          # definicja rubryki 9
233,string,80          # definicja rubryki 9
234,string,80          # definicja rubryki 9
235,string,80          # definicja rubryki 9
236,string,80          # definicja rubryki 9
237,string,80          # definicja rubryki 9
238,string,80          # definicja rubryki 9
239,string,80          # definicja rubryki 9
240,string,80          # definicja rubryki 9
241,string,80          # definicja rubryki 9
242,string,80          # definicja rubryki 9
243,string,80          # definicja rubryki 9
244,string,80          # definicja rubryki 9
245,string,80          # definicja rubryki 9
246,string,80          # definicja rubryki 9
247,string,80          # definicja rubryki 9
248,string,80          # definicja rubryki 9
249,string,80,,4          # definicja rubryki 9
// --------------------------------------------
% REJ-IMP.DIC # slownik pol rekordu
"M1",100,Estring,"Identyfikator"    # symbol rubryki
"M2",101,Estring,"Opis"    # nazwa rubryki
"M3",102,Estring    # sposob pobierania danych
"M4",103,Estring,"Typ"    # typ pola
"M5",104,Estring    # sposob drukowania
"M6",105,Estring    # atrybut drukowania
"M7",106,Estring    # zaznaczanie liczenia (pole wewnetrzne)
"M8",107,Estring    # nazwa rejestru DEF
"M9",108,Estring,"Definicja1"     # definicja 0
"M10",109,Estring,"Definicja2"     # definicja 1
"M11",110,Estring,"Definicja3"     # definicja 2
"M12",111,Estring,"Definicja4"     # definicja 3
"M13",112,Estring,"Definicja5"     # definicja 4
"M14",113,Estring,"Definicja6"     # definicja 5
"M15",114,Estring,"Definicja7"     # definicja 6
"M16",115,Estring,"Definicja8"     # definicja 7
"M17",116,Estring,"Definicja9"     # definicja 8
"M18",117,Estring,"Definicja10"     # definicja 9
"M19",118,Estring
"M20",119,Estring
"M21",200,Estring,"Identyfikator"    # symbol rubryki
"M22",201,Estring,"Opis"    # nazwa rubryki
"M23",202,Estring    # sposob pobierania danych
"M24",203,Estring,"Typ"    # typ pola
"M25",204,Estring    # sposob drukowania
"M26",205,Estring    # atrybut drukowania
"M27",206,Estring    # zaznaczanie liczenia (pole wewnetrzne)
"M28",207,Estring    # nazwa rejestru DEF
"M29",208,Estring    # nazwa rejestru DEF
"M30",209,Estring    # nazwa rejestru DEF
"M31",210,Estring    # nazwa rejestru DEF
"M32",211,Estring    # nazwa rejestru DEF
"M33",212,Estring    # nazwa rejestru DEF
"M34",213,Estring    # nazwa rejestru DEF
"M35",214,Estring    # nazwa rejestru DEF
"M36",215,Estring    # nazwa rejestru DEF
"M37",216,Estring    # nazwa rejestru DEF
"M38",217,Estring    # nazwa rejestru DEF
"M39",218,Estring    # nazwa rejestru DEF
"M40",219,Estring    # nazwa rejestru DEF
"M41",220,Estring    # nazwa rejestru DEF
"M42",221,Estring    # nazwa rejestru DEF
"M43",222,Estring    # nazwa rejestru DEF
"M44",223,Estring    # nazwa rejestru DEF
"M45",224,Estring    # nazwa rejestru DEF
"M46",225,Estring    # nazwa rejestru DEF
"M47",226,Estring    # nazwa rejestru DEF
"M48",227,Estring    # nazwa rejestru DEF
"M49",228,Estring    # nazwa rejestru DEF
"M50",229,Estring    # nazwa rejestru DEF
"M51",230,Estring    # nazwa rejestru DEF
"M52",231,Estring    # nazwa rejestru DEF
"M53",232,Estring    # nazwa rejestru DEF
"M54",233,Estring    # nazwa rejestru DEF
"M55",234,Estring    # nazwa rejestru DEF
"M56",235,Estring    # nazwa rejestru DEF
"M57",236,Estring    # nazwa rejestru DEF
"M58",237,Estring    # nazwa rejestru DEF
"M59",238,Estring    # nazwa rejestru DEF
"M60",239,Estring    # nazwa rejestru DEF
"M61",240,Estring    # nazwa rejestru DEF
"M62",241,Estring    # nazwa rejestru DEF
"M63",242,Estring    # nazwa rejestru DEF
"M64",243,Estring    # nazwa rejestru DEF
"M65",244,Estring    # nazwa rejestru DEF
"M66",245,Estring    # nazwa rejestru DEF
"M67",246,Estring    # nazwa rejestru DEF
"M68",247,Estring    # nazwa rejestru DEF
"M69",248,Estring    # nazwa rejestru DEF
"M70",249,Estring    # nazwa rejestru DEF
// --------------------------------------------
% LISTA-FAKTUR-OUT.DLG
PRZYCISK_CANCELID = 0
##DEFWINDOW = 3,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Lista faktur zaimportowanych z program|ow zewn|etrznych"
##100,0,ACPM,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:LISTA-VAT-OUT,EE,KLUCZ,11
##101,0,ACP,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:LISTA-ZAP-VAT-OUT,FF,JEDENKLUCZ,1
##102,0,P,,,,,,,,MENU_ROZWIJANE
##103,DZ,ADPH,,"Informacje o imporcie"
##10,D,P,,,,,,,,Pole:ee:vatform
##11,D,P,,,,,,,,Pole:ee:vatdatawytw
##12,D,P,,,,,,,,Pole:ee:vatokr
##13,D,P,,,,,,,,Pole:ee:vatopis
 #102                                                                                                    #


 #100                                                                                                    #



 #101  


                                                                                                         #101
#103
   formularz: #10                #,            opis: #13                                               #
   data wytworzenia: #11                #,                                      okres: #12             #
                                                                                                          #103<
% LISTA-VAT-OUT.MEN
D=109,"",AB
LINIA-DIALOG = REJESTR-LISTA-VAT-OUT-EDYCJA,"Kolumny dla listy faktur VAT"
1,,,,15,"Faktura"
11,,,,10,"Rejestr"
//71,,,,8,"D.dok."
6,,,,8,"D.obow."
13,,,,15,"Netto"
14,,,,12,"VAT"
15,,,,15,"Brutto"
72,,,,8,"Okres"
73,,,,,"Opis"
//
% LISTA-ZAP-VAT-OUT.MEN
LINIA-DIALOG = REJESTR-LISTA-ZAP-VAT-OUT-EDYCJA,"Kolumny dla listy zapis|ow"
D=109,"",AB
1,,,,10,"Klas. VAT"
5,,,,3,"GUS"
2,,,,12,"Netto"
3,,,,12,"VAT"
4,,,,12,"Brutto"

% REJESTR-LISTA-VAT-OUT-EDYCJA.DIC
"FVATFAKT_W",0

% REJESTR-LISTA-ZAP-VAT-OUT-EDYCJA.DIC
"VATZAPIMP",0

% LISTA-FAKTUR-OUT-MENU
P = 3,,ADS
*0,@5
*35," Operacje"
34,@18
33,@19
29,@20

35,"Usu|n zaznaczone"
*93," Szukaj"
26,@8
27,@9
28,@10
*36," Zaznacz/Odznacz"
37," Zaznacz w%g% warunku"
38," Odznacz wg warunku"
*30,@7
31," Raport VAT nale|zny"
32," Raport VAT naliczony"
//
% TABLICA-AKCJI-LISTA-FAKTUR-OUT
"AKCJA-PRZED-WYSWIETLENIEM",LISTA-FAKTUR-OUT-PRZED
"AKCJA-BUTTON26",FAKTURY-OUT-SZUKAJ
"AKCJA-BUTTON27",FAKTURY-OUT-NASTEPNY
"AKCJA-BUTTON28",FAKTURY-OUT-WARUNEK
"AKCJA-BUTTON29",FAKTURY-OUT-USUN
"AKCJA-BUTTON31",FAKTURY-OUT-SPRZEDAZ
"AKCJA-BUTTON32",FAKTURY-OUT-ZAKUP
"AKCJA-BUTTON33",LISTA-FAKTUR-OUT-ZMIEN
"AKCJA-BUTTON34",LISTA-FAKTUR-OUT-DODAJ
"AKCJA-BUTTON35",LISTA-FAKTUR-OUT-ZAZNACZ_USUN
"AKCJA-BUTTON37",LISTA-FAKTUR-OUT-ZAZNACZ_WAR
"AKCJA-BUTTON38",LISTA-FAKTUR-OUT-ODZNACZ_WAR
"AKCJA-LINIAMENU100",ustaw_101_out
"AKCJA-BUTTON152",procedury_vat
"AKCJA-BUTTON153",GTU_vat
% FAKTURY-OUT-SPRZEDAZ.ALG
finnop["OpenmainO",""]
rejop["e:drotworzplik","ee:"]
//rejop["e:zobaczdbf",""]
rejop["f:drotworzplik","ff:"]
 callalgfile["vat/vat.alg","VAT_SPRZEDAZ_OUT"]

//
% FAKTURY-OUT-ZAKUP.alg
finnop["OpenmainO",""]
rejop["e:drotworzplik","ee:"]
rejop["f:drotworzplik","ff:"]
 callalgfile["vat/vat.alg","VAT_ZAKUPY_OUT"]

% LISTA-FAKTUR-OUT-ZAZNACZ_USUN.ALG
  if(exdialogop["pusteokno","100"]) exitalg[0]
if (not(YesNalert["Zostan|a usuni|ete wszystkie zaznaczone faktury.$ Czy kontynuowa|c?"])) exitalg[0]
rejop["ee:wezpierwszyrek",""]
petla_ee:
if (not(rejwezp_l["ee:vatzaznacz"])) goto nastepny_ee
  klucz_k := rejwezp_k["ee:vatid"]
klucz := tostr["#klucz_k#S:0"]
petla_xx:
if(not(rejop["ff:znajdzrek",klucz])) goto xx
  rejop["ff:usunrek",""]
goto petla_xx
xx:
 rejop["ee:usunrekustaw",""]
goto petla_ee
 nastepny_ee:
if(rejop["ee:weznastepnyrek",""]) goto petla_ee
exdialogop["wyswietlpozycje","100"]
exdialogop["wyswietlpozycje","101"]
exdialogop["wyswietlpozycje","10"]
exdialogop["wyswietlpozycje","11"]
exdialogop["wyswietlpozycje","12"]
exdialogop["wyswietlpozycje","13"]


% ustaw_101_out.alg
id_s := tostr["#rejwezp_k[""ee:vatid""]#S:0"]
ExDialogOp["UstawMenuKlucz","101:"+id_s]
exdialogop["wyswietlpozycje","101"]
exdialogop["wyswietlpozycje","10"]
exdialogop["wyswietlpozycje","11"]
exdialogop["wyswietlpozycje","12"]
exdialogop["wyswietlpozycje","13"]

% FAKTURY-OUT-USUN.alg
  if(exdialogop["pusteokno","100"]) exitalg[0]
  if(not(yesnalert["Czy na pewno usun|a|c t|e faktur|e?"])) exitalg[0]
  klucz_k := rejwezp_k["ee:vatid"]
klucz := tostr["#klucz_k#S:0"]
petla_xx:
if(not(rejop["ff:znajdzrek",klucz])) goto xx
  rejop["ff:usunrek",""]
goto petla_xx
xx:
 rejop["ee:usunrekustaw",""]
exdialogop["wyswietlpozycje","100"]
exdialogop["wyswietlpozycje","101"]
//exdialogop["idzdopozycji","100"]

% LISTA-FAKTUR-OUT-PRZED.ALG

 klucz := tostr["#rejwezp_k[""ee:vatid""]#S:0"]
 exdialogop["ustawmenuklucz","101:"+klucz]
  if(exdialogop["pusteokno","100"]) ExDialogOp["UstawMenuKlucz","101:9999"]
//  ExDialogOp["WyswietlPozycje","101"]
 exdialogop["ustawmenuparam","102:LISTA-FAKTUR-OUT-MENU"]

% FAKTURY-OUT-SZUKAJ.ALG
  exdialogop["ustawwarunek","100:FVATFAKT-WAR"]
  ExDialogOp["IdzDoPozycji","100"]
  ExDialogOp["WyswietlPozycje","101"]
  ExitAlg[0]

% FAKTURY-OUT-NASTEPNY.ALG
  exdialogop["ustawnastepny","100"]
  ExDialogOp["IdzDoPozycji","100"]
  ExDialogOp["WyswietlPozycje","101"]
  ExitAlg[0]

% FAKTURY-OUT-WARUNEK.ALG
  exdialogop["ustawfiltr","100:FVATFAKT-WAR"]
  ExDialogOp["IdzDoPozycji","100"]
  if(exdialogop["pusteokno","100"]) ExDialogOp["UstawMenuKlucz","101:9999"]
  ExDialogOp["WyswietlPozycje","101"]
  ExitAlg[0]

% LISTA-FAKTUR-OUT-ZAZNACZ_WAR.ALG
   zaznacz := 0
callalg["out_zaznacz_warunek"]
//
% LISTA-FAKTUR-OUT-ODZNACZ_WAR.ALG
   zaznacz := 1
callalg["out_zaznacz_warunek"]
//
% LISTA-FAKTUR-OUT-USUN_WAR.ALG
   zaznacz := 2
   callalg["out_zaznacz_warunek"]
//
% out_zaznacz_warunek.alg
rej := "ee:"
nazwa_rej := "FREJFAKTSPR.REX"
nazwa_war := "FVATFAKT"
D_SZUKAJ_IND1 := ""
D_SZUKAJ_IND2 := ""
D_SZUKAJ_X := 0
 RejInitN[rej+"D-SZUKAJ-WARUNEK"]
  out_rezygnujesz := .N.
if (not RejWarDialog[nazwa_rej,nazwa_war,"D-SZUKAJ-WARUNEK",0]) goto koniec
  if(not(zaznacz=2)) goto dalej
  if(not(YesNAlert["Czy na pewno usun|a|c?"])) goto koniec
  dalej:
    callalg["out-zaznacz"]
    rejop["ee:WezPierwszyrek",""]
    exdialogop["wyswietlpozycje","100"]
    exdialogop["wyswietlpozycje","101"]
  koniec:
% out-zaznacz.alg
  rejop["ee:zmienkluczrej","1"]
  if (not(rejop["ee:wezpierwszyrek",""])) goto koniec
if (D_SZUKAJ_X = 1) goto dalej01
dalej01:
if (not RejSzukajWartoscN[rej+"D-SZUKAJ-WARUNEK",0,.T.]) ExitAlg[0]
  UstawCzekajInfo["Start4","  Zmiana statusu faktur. Prosz|e czeka|c ..."]
  petla:
  if(zaznacz=0) rejwstawp_l["ee:vatzaznacz",.T.]
  if(zaznacz=1) rejwstawp_l["ee:vatzaznacz",.N.]
//  if(zaznacz=2) Rejop["0:UsunRek",""]
  UstawCzekajInfo["Nastepny","!"]
if (not(RejSzukajWartoscN[rej+"D-SZUKAJ-WARUNEK",0,.N.])) goto koniec
goto petla
  koniec:
  UstawCzekajInfo["Stop",""]
//
% zobacz_rejestr_faktur_out.alg
rejop["ee:otworzrej","FREJFAKTSPR.REX"]
rejop["ee:zmienkluczrej","13"]
rejop["ff:otworzrej","FREJZAPSPR.RJR"]
rejop["ff:zmienkluczrej","1"]
//if(not(rejop["ee:wezpierwszyrek",""])) goto koniec1
exdialogop["idzdodialogu","LISTA-FAKTUR-OUT"]
goto zamknij_rej
koniec1:
okalert["Brak danych do wy|swietlenia"]
zamknij_rej:
rejop["ee:zamknijrej",""]
rejop["ff:zamknijrej",""]
//---------------------------------------------
% LISTA-FAKTUR-OUT-ZMIEN.ALG
dodanie := .N.
callalg["LISTA-FAKTUR-OUT-MODIF.ALG"]
% LISTA-FAKTUR-OUT-DODAJ.ALG
dodanie := .T.
callalg["LISTA-FAKTUR-OUT-MODIF.ALG"]

% LISTA-FAKTUR-OUT-MODIF.ALG
rejop["b:otworzrejsprawdz","REJKLASVAT.RXR"]
rejop["c:otworzrejsprawdz","REJESTRKL.RXR"]
RejOp["V:OtworzRejSprawdz","VATPARAM.REX"]
rejop["otworzrejtemp","FREJFAKTSPR.REX"]
rejop["A:otworzrejtemp","TEMPZAPVAT.RJR"]
if (not(dodanie)) ExDialogOp["OdczytajDok",",A,EE,FF,99,1"]
if(dodanie) rejop["dodajrek",""]
//if(dodanie) rejop["A:dodajrek",""]
if (not(dodanie)) RejOp["A:WezPierwszyRek",""]
//rejop["a:zobaczdbf",""]
NAGLZAP1 := "Klasyfikacja       Klasyfikacja    Kwota netto     Kwota VAT      Kwota brutto"
NAGLZAP2 := ".     VAT               GUS"                     
FAKT_RODZAJ := 0
if(rejwezp_l["vatstrona"]) FAKT_RODZAJ := 1
nazwa_daty := "sprzeda|zy"
if(FAKT_RODZAJ = 1) Nazwa_daty := "otrzymania"
exdialogop["idzdodialogu","faktury_out"]
if (not(D_POS=0)) goto po_zapisz
if (not(dodanie)) ExDialogOp["Zamiendok",",A,EE,FF,99,1"]
if (dodanie) ExDialogOp["Pamietajdok",",A,EE,FF,99,1"]
if (dodanie) rejwstawp_s["ee:vatstatus","inny"]
if (fakt_rodzaj=1) rejwstawp_l["ee:vatstrona",.T.]
if (fakt_rodzaj=0) rejwstawp_l["ee:vatstrona",.N.]
 po_zapisz:
exdialogop["wyswietlpozycje","100"]
exdialogop["wyswietlpozycje","101"]
rejop["zamknijrej",""]
rejop["a:zamknijrej",""]
rejop["b:zamknijrej",""]
rejop["c:zamknijrej",""]
rejop["v:zamknijrej",""]
exitalg[0]
% FAKTURY_OUT.DLG
##DEFWINDOW=3,11,,88,ADHS,,,,&&white/blue,"Wprowadzanie danych faktury   "
##3,DZ,0,,,,&&white/blue
##4,DZ,ACH,,"Informacje og|olne z dokumentu",,,,,&&lwhite/blue
##5,DZ,ACH,,"Informacje o kontrahencie",,,,,&&lwhite/blue
##7,DZ,0,,,,&&black/lwhite
##19,0,0,,,,&&white/blue,&&blue/lwhite,,,POLE:vatrejestr
##21,0,0,,,,&&blue/white,&&blue/lwhite,,,POLE:vatindeksnab
##15,0,0,,,,&&blue/white,&&blue/lwhite,,,POLE:vatNIP,2102
##50,0,0,,,,&&blue/white,&&blue/lwhite,,,POLE:kod_ue
##51,0,0,,,,&&blue/white,&&blue/lwhite,,,POLE:nip_ue
##17,0,0,,,,&&blue/white,&&blue/lwhite,,,POLE:vatnazwa
##16,0,0,,,,&&black/white,&&black/lwhite,,,POLE:vatadres
##10,0,0,,,,yellow&lwhite&blue/white,black/white&black/white&blue/lwhite,,,POLE:vatsymdok
##23,0,0,,,,&&blue/white,&&blue/lwhite,,,POLE:vattyp
##24,D,0,,,,&&blue/white,,,,WYRAZENIE:RejWez_NazwaZeSlow["vattyp"]
##11,0,0,,,,&&blue/white,&&blue/lwhite,,,POLE:vatkwotazapl,xkwota:x
##12,0,0,,,,&&blue/white,&&blue/lwhite,,,POLE:vatdatadok
##13,0,0,,,,&&blue/white,&&blue/lwhite,,,POLE:vatdataspr
##14,0,0,,,,&&blue/white,&&blue/lwhite,,,POLE:vatdataobow
##20,0,0,,,,&&blue/white,&&blue/lwhite,,,POLE:vatterminplat
##30,D,0,,,,&&blue/lwhite,,,,WYRAZENIE:RejWezP_K["vatsumanetto"],:X
##31,D,0,,,,&&blue/lwhite,,,,WYRAZENIE:RejWezP_K["vatsumaVAT"],:X
##32,D,0,,,,&&blue/lwhite,,,,WYRAZENIE:RejWezP_K["vatsumabrutto"],:X
##101,0,AMC,,,,&&blue/white,&&blue/lwhite,,,WIELE_REKORDOW:liniavatout,A
##102,DL,0,,,,&&lwhite/blue,,,,WYRAZENIE:NAGLZAP1
##103,D,0,,,,&&lwhite/blue,,,,WYRAZENIE:NAGLZAP2
##152,,0,,"Procedury VAT",,&&lwhite/blue,&&lwhite/blue
##153,,0,,"Grupy GTU",,&&lwhite/blue,&&lwhite/blue
##95,DTL,0,,"Razem dokument:",,&&black/lwhite
##104,DZ,ADH,,"Informacje o imporcie",,,,,&&lwhite/blue
##52,0,0,,,,&&blue/white,&&blue/lwhite,,,Pole:vatform
##53,0,0,,,,&&blue/white,&&blue/lwhite,,,Pole:vatdatawytw
##54,0,0,,,,&&blue/white,&&blue/lwhite,,,Pole:vatokr
##55,0,0,,,,&&blue/white,&&blue/lwhite,,,Pole:vatopis
##0,,AD,,@3,,&&blue/white,&&white/blue
##1,,AD,,@4,,&&blue/white,&&white/blue
##2,,AD,,"Napraw sumy",,&&blue/white,&&white/blue
##91,DL,P,,,,,,,,WYRAZENIE:NAZWA_DATY

                                                      Rejestr: #19      #
#5
 Symbol kontrahenta: #21         # NIP: #15         # NIP UE:#50##51        #
 Nazwa: #17                                                        #
 Adres: #16                                                        #
                                                                             #5<
#4
 Numer: #10                          #              Data dokumentu  :#12    #
 Typ dokumentu: #23# - #24                        # Data #91       #:#13    #
 Kwota zap|laty: #11           #                     Data obowi|azku  :#14    # 
   #152           #  #153      #                    Termin p|latno|sci:#20    # 
                                                                             #4<
 #102                                                                        #
 #103                                                                        #
 
 #101                                                                         

 
 
                                                                            #101
#7
    #95           #              #30          # #31         # #32           # 
                                                                             #7<
#104
 Formularz: #52                #,      data wytworzenia: #53                #
                                                        (RRRR.MM.DD/GG:MM:SS)
 okres: #54             # Opis: #55                                         #
       (RR.MM.DD-RR.MM.DD)
                                                                             #104<

		 #0          #   #1          #  #2                   #
// ***********************************************
% liniavatout.DLG
##40,0,0,,,,&&black/white,&&black/lwhite,,,POLE:a:vatindeksVAT
##43,FD,0,,,,&&black/white,&&black/lwhite,,,POLE:B:klaskatVAT
##41,0,0,,,,&&black/white,&&black/lwhite,,,POLE:a:vatGUS
##49,FD,0,,,,&&black/white,&&black/lwhite,,,WYRAZENIE:RejWez_NazwaZeSlow["a:vatGUS"]
##42,0,0,,,,&&black/white,&&black/lwhite,,,POLE:a:vatkwotanetto,xkwota:X
##44,0,0,,,,&&black/white,&&black/lwhite,,,POLE:a:vatpodatek,xkwota:X
##45,0,0,,,,&&black/white,&&black/lwhite,,,POLE:a:vatkwotabrutto,xkwota:X
#40     ##43#      #41#<#49  # #42          # #44         # #45           #
//#40     #          #41#<#49  # #42          # #44         # #45           #
//
% TABLICA-AKCJI-liniavatout
"AKCJA-PRZED-WYKONYWANIEM",liniavatoutUSTAW
"AKCJA-OKLINIA",liniavatoutOK
"AKCJA-USUNLINIE",liniavatoutUSUN
"AKCJA-PUSTALINIA",liniavatoutPUSTA
"AKCJA-PRZED-WYSWIETLENIEM",liniavatoutUSTAW
"AKCJA-PRZED-POLEM42",liniavatout-ZAPAMLINIE
"AKCJA-PRZED-POLEM44",liniavatout-ZAPAMLINIE
"AKCJA-PRZED-POLEM45",liniavatout-ZAPAMLINIE
"AKCJA-PO-POLU40",liniavatoutPO40
"AKCJA-PO-POLU41",liniavatoutPO41
"AKCJA-PO-POLU42",liniavatoutPO42
"AKCJA-PO-POLU44",liniavatoutPO44
"AKCJA-PO-POLU45",liniavatoutPO45
% liniavatoutUSTAW.ALG
if (CallAlg["liniavatoutPUSTA"] = 1) ExDialogOp["IdzDoPozycji","40"]
RejOp["B:UstawDrugiRejestr","a:vatindeksVAT"]
CallAlg["liniavatout-BLOKUJVAT"]
CallAlg["liniavatout-ZAPAMLINIE"]
% liniavatoutPO40.ALG
//if (not A_ZMIANA) ExitAlg[0]
if (RejWezP_S["a:vatindeksvat"] = "") goto dalej1
RejOp["B:UstawDrugiRejestr","a:vatindeksvat"]
ExDialogOp["WyswietlPolaRej","B"]
// sprawdza, czy rodzaj klasyfikacja zgodny z rodzajem faktury
if ((FAKT_RODZAJ = 1) and ( not RejWezP_L["B:klasnaliczvat"])) goto zle1
if ((FAKT_RODZAJ = 0) and ( not RejWezP_L["B:klasnalezvat"])) goto zle2
// sprawdzam czy zaokraglenie
VATPARAMKATVAT := RejWezP_S["B:klaskatvat"]
if (CallAlg["SPRAWDZCZYZAOKR"] = 0) goto dalej1
if ((RejWezP_K["vatkwotazapl"] - RejWezP_K["vatsumabrutto"]) = 0) goto dalej1
  xRejWstawP_K["a:vatkwotabrutto",RejWezP_K["vatkwotazapl"] - RejWezP_K["vatsumabrutto"]]
  CallAlg["liniavatout-CZYTAJLINIE"]
  CallAlg["liniavatout-WYSWIETLSUMY"]
//okalert["2"]
  ExDialogOp["WyswietlPozycje","45"]
dalej1:
if (CallAlg["SPRAWDZCZYZAOKR"] = 0) DEFA_KLASYFIKACJA_VAT := RejWezP_S["a:vatindeksvat"]
CallAlg["liniavatout-BLOKUJVAT"]
ExitAlg[0]
zle1:
  OkAlert["Niezgodno|s|c rodzaju faktury i klasyfikacji VAT!$(Faktura dla vat naliczonego, za|s klasyfikacja dla vatu nale|znego)"]
  A_OK := .N.
  ExitAlg[0]
zle2:
  OkAlert["Niezgodno|s|c rodzaju faktury i klasyfikacji VAT!$(Faktura dla vat nale|znego, za|s klasyfikacja dla vatu naliczonego)"]
  A_OK := .N.
  ExitAlg[0]
% liniavatout-BLOKUJVAT.ALG
//ExDialogOp["PozycjaAktywna","*"]
ExDialogOp["PozycjaAktywna","40"]
ExDialogOp["PozycjaAktywna","42"]
ExDialogOp["PozycjaAktywna","44"]
ExDialogOp["PozycjaAktywna","45"]
if (RejWezP_S["a:vatindeksvat"] = "") ExitAlg[0]
if (RejWezP_L["b:klaspolenettoomij"]) ExDialogOp["PozycjaNieaktywna","42"]
if (RejWezP_L["b:klaspolevatomij"]) ExDialogOp["PozycjaNieaktywna","44"]
if (RejWezP_L["b:klaspolebruttoomij"]) ExDialogOp["PozycjaNieaktywna","45"]
% liniavatoutOK.ALG
A_OK := .N.
if (not PustePole["a:vatindeksVAT"]) goto dalej1
  OkAlert["Wprowad|x indeks VAT !"]
  ExDialogOp["IdzDoPozycji","40"]
  ExitAlg[0]
dalej1:
// sprawdz, czy zaokraglenie
VATPARAMKATVAT := RejWezP_S["B:klaskatvat"]
if (CallAlg["SPRAWDZCZYZAOKR"] = 1) goto dalej2
// sprawdz klaysfiacje GUS
TEMP_GUS := .N.
if ((FAKT_RODZAJ=1) and RejWezP_L["v:vatparamgusnalicz"]) TEMP_GUS := .T.
if ((FAKT_RODZAJ=0) and RejWezP_L["v:vatparamgusnalez"])  TEMP_GUS := .T.
if ((not TEMP_GUS) or (not (RejWezP_S["a:vatGUS"] == ""))) goto dalej2
  OkAlert["Wprowadz symbol GUS !"]
  ExDialogOp["IdzDoPozycji","41"]
  ExitAlg[0]
dalej2:
// opis pozycji faktury
//
dalej21:
netto := RejWezP_K["a:vatkwotanetto"]
brutto := RejWezP_K["a:vatkwotabrutto"]
podatek := RejWezP_K["a:vatpodatek"]
if (Round[(netto + podatek),Lkropka_ksieg] = Round[brutto,Lkropka_ksieg]) goto dalej10
// sprawdz, czy zaokraglenie
VATPARAMKATVAT := RejWezP_S["B:klaskatvat"]
if (CallAlg["SPRAWDZCZYZAOKR"] = 1) goto dalej10
  ExDialogOp["IdzDoDialogu","LINIAVATROZNICABRUTTO"]
  if (D_POS = 1) ExitAlg[0]
dalej10:
A_OK := .T.
% liniavatoutUSUN.ALG
A_OK := .T.
//if (CallAlg["liniavatoutPUSTA"] = 1) okalert["a_OK="+a_ok]
if (CallAlg["liniavatoutPUSTA"] = 1) ExitAlg[0]
A_OK := .N.
if (not YesAlert["Usun|a|c lini|e ?"]) ExitAlg[0]
A_OK := .T.
NO_NETTO := 0
NO_PODATEK := 0
NO_BRUTTO := 0
CallAlg["liniavatout-WYSWIETLSUMY"]
% liniavatoutPUSTA.ALG
A_OK := .N.
if (not(PustePole["a:vatkwotanetto"])) ExitAlg[0]
if (not(PustePole["a:vatkwotabrutto"])) ExitAlg[0]
A_OK := .T.
// musi byc wyjscie 1
ExitAlg[1]
% liniavatoutPO42.ALG
if (not A_ZMIANA) ExitAlg[0]
CallAlg["liniavatout-LICZPODATEK"]
CallAlg["liniavatout-LICZBRUTTO"]
CallAlg["liniavatout-CZYTAJLINIE"]
CallAlg["liniavatout-WYSWIETLSUMY"]
% liniavatoutPO44.ALG
if (not A_ZMIANA) ExitAlg[0]
CallAlg["liniavatout-LICZBRUTTO"]
CallAlg["liniavatout-LICZNETTO"]
CallAlg["liniavatout-CZYTAJLINIE"]
CallAlg["liniavatout-WYSWIETLSUMY"]
% liniavatoutPO45.ALG
if (not A_ZMIANA) ExitAlg[0]
CallAlg["liniavatout-LICZNETTO"]
CallAlg["liniavatout-CZYTAJLINIE"]
CallAlg["liniavatout-WYSWIETLSUMY"]
% liniavatout-LICZNETTO.ALG
if (not RejWezP_L["B:klaspolenettosug"]) ExitAlg[0]
netto := RejWezP_K["a:vatkwotabrutto"] - RejWezP_K["a:vatpodatek"]
netto := Round[netto,Lkropka_ksieg]
xRejWstawP_K["a:vatkwotanetto",netto]
ExDialogOp["WyswietlPozycje","42"]
// ----------------------------------------------
// VAT-OBLICZPODATEK
// Oblicza podatek dla linii vat
//  PARAM_REJZAP: rejestr z linia VAT
//  B: rejestr z klasyfikacja vat
//  zwraca: T_PODATEK - obliczony podatek VAT
// -------------------------------------------------
% liniavatout-LICZPODATEK.ALG
if (not RejWezP_L["B:klaspolevatsug"]) ExitAlg[0]
T_PODATEK := .
PARAM_REJZAP := "a:"
CallAlg["VAT-OBLICZPODATEK"]
xRejWstawP_K["a:vatpodatek",T_PODATEK]
ExDialogOp["WyswietlPozycje","44"]
% liniavatout-LICZBRUTTO.ALG
if (not RejWezP_L["B:klaspolebruttosug"]) ExitAlg[0]
brutto := RejWezP_K["a:vatkwotanetto"] + RejWezP_K["a:vatpodatek"]
xRejWstawP_K["a:vatkwotabrutto",brutto]
brutto := Round[brutto,Lkropka_ksieg]
ExDialogOp["WyswietlPozycje","45"]
% liniavatoutPO41.ALG
if (not A_ZMIANA) ExitAlg[0]
ExDialogOp["WyswietlPozycje","49"]
% liniavatout-ZAPAMLINIE.ALG
ST_NETTO := RejWezP_K["a:vatkwotanetto"]
ST_PODATEK :=RejWezP_K["a:vatpodatek"]
ST_BRUTTO := RejWezP_K["a:vatkwotabrutto"]
% liniavatout-CZYTAJLINIE.ALG
NO_NETTO := RejWezP_K["a:vatkwotanetto"]
NO_PODATEK := RejWezP_K["a:vatpodatek"]
NO_BRUTTO := RejWezP_K["a:vatkwotabrutto"]
% liniavatout-WYSWIETLSUMY.ALG
if (NO_NETTO = ST_NETTO) goto dalej1
  xRejWstawP_K["vatsumanetto",RejWezP_K["vatsumanetto"] + NO_NETTO - ST_NETTO]
  ExDialogOp["WyswietlPozycje","30"]
dalej1:
if (NO_PODATEK = ST_PODATEK) goto dalej2
  xRejWstawP_K["vatsumaVAT",RejWezP_K["vatsumaVAT"] + NO_PODATEK - ST_PODATEK]
  ExDialogOp["WyswietlPozycje","31"]
dalej2:
if (NO_BRUTTO = ST_BRUTTO) goto dalej3
  xRejWstawP_K["vatsumabrutto",RejWezP_K["vatsumabrutto"] + NO_BRUTTO - ST_BRUTTO]
  ExDialogOp["WyswietlPozycje","32"]
dalej3:
CallAlg["liniavatout-ZAPAMLINIE"]
//
% TABLICA-AKCJI-FAKTURY_OUT
"AKCJA-F2-POLE15",!SL.gl_f2_rejestr("REJESTRKLNIP.RXR","kl_NIP")
"AKCJA-PO-POLU21",OUTINDEKSKLIENTA
"AKCJA-PO-POLU23",FAKTTYPOUT
"AKCJA-PO-POLU19",RODZREJOUT
"AKCJA-BUTTON0",AKCEPTUJESZOUT
"AKCJA-BUTTON1",REZYGNUJESZOUT
"AKCJA-BUTTON2",NAPRAW_SUMY
"AKCJA-PRZED-WYSWIETLENIEM",FAKTURY_OUT-PRZED
"AKCJA-PRZED-WYKONYWANIEM",FAKTURY_OUT-WYKO
"AKCJA-BUTTON152",procedury_vat
"AKCJA-BUTTON153",GTU_vat
% RODZREJOUT.ALG
if(pustepole["vatrejestr"]) exitalg[0]
typrej := "SPRZEDA|Z"
rejop["r:otworzrej","REJVATREJ.RXR"]
if(rejop["r:znajdzrek",rejwezp_s["vatrejestr"]]) typrej := rejwezp_s["r:rejtyp"] 
FAKT_RODZAJ := 0
if (typrej == "ZAKUP") FAKT_RODZAJ := 1
rejop["r:zamknijrej",""]
exitalg[0]

% NAPRAW_SUMY.alg
vatks := 0
nettoks := 0
bruttoks := 0
if(not(rejop["a:wezpierwszyrek",""])) goto koniec
petla_a:
vatks := vatks+rejwezp_k["a:vatpodatek"]
nettoks := nettoks+rejwezp_k["a:vatkwotanetto"]
bruttoks := bruttoks+rejwezp_k["a:vatkwotabrutto"]
if(rejop["a:weznastepnyrek",""]) goto petla_a
koniec:
rejwstawp_k["vatsumavat",vatks]
rejwstawp_k["vatsumanetto",nettoks]
rejwstawp_k["vatsumabrutto",bruttoks]
exdialogop["wyswietlpozycje","30"]
exdialogop["wyswietlpozycje","31"]
exdialogop["wyswietlpozycje","32"]
exitalg[0]

% FAKTURY_OUT-WYKO.alg
if (dodanie) exdialogop["pozycjawprowadzana","*"]
if (dodanie) exdialogop["idzdopozycji","19"]
if (not(dodanie)) exdialogop["idzdopozycji","21"]
if (dodanie) exitalg[0]
//exdialogop["pozycjaniewprowadzana","19"]
exdialogop["pozycjaniewprowadzana","10"]
//exdialogop["pozycjaniewprowadzana","11"]
exdialogop["pozycjaniewprowadzana","20"]
exdialogop["pozycjaniewprowadzana","52"]
exdialogop["pozycjaniewprowadzana","53"]
exdialogop["pozycjaniewprowadzana","54"]
exdialogop["pozycjaniewprowadzana","55"]
% OUTINDEKSKLIENTA.ALG
if (A_ZMIANA) goto zmieniaj
if (rejwezp_s["vatindeksnab"] == "") ExitAlg[0]
if ((rejwezp_s["vatNIP"] = "") and (rejwezp_s["vatnazwa"] = "") and (rejwezp_s["vatadres"] = "")) goto zmieniaj
  ExitAlg[0]
zmieniaj:
  RejOp["C:znajdzrek",rejwezp_s["vatindeksnab"]]
  xRejWstawP_S["vatNIP",RejWezP_S["C:kl_NIP"]]
  xRejWstawP_S["vatnazwa",RejWezP_S["C:kl_nazwa1"] + " " + RejWezP_S["C:kl_nazwa2"]]
  xRejWstawP_S["vatadres",RejWezP_S["C:kl_kodmiasto"] + " " + RejWezP_S["C:kl_adres"]]  
  xRejWstawP_S["kod_ue",RejWezP_S["C:kl_kodkraju"]]  
  xRejWstawP_S["nip_ue",RejWezP_S["C:kl_nipwsp"]]  
exdialogop["wyswietlpozycje","15"]
exdialogop["wyswietlpozycje","51"]
exdialogop["wyswietlpozycje","50"]
exdialogop["wyswietlpozycje","17"]
exdialogop["wyswietlpozycje","16"]
//
% FAKTURY_OUT-PRZED.alg
//okalert["xx"]
ExDialogOp["IdzDoPozycji","21"]
//  ExDialogOp["UstawMenuParam","100:ogladajvatmenu"]
//--------------------
% AKCEPTUJESZOUT.ALG
// sprawdz, czy dla korekt wprowadzono pole dotyczy
VATPARAM_TYPDOK := RejWezP_S["vattyp"]
TEMP_TYP := CallAlg["SPRAWDZRODZAJDOK"]
dalej8:
if (not RejOp["a:PustyRej",""]) goto dalej2
  OkAlert["Wprowad|x zapisy !"]
  ExDialogOp["IdzDoPozycji","101"]
  ExitAlg[0]
dalej2:
if (not (rejwezp_s["vatsymdok"] = "")) goto dalej3
  OkAlert["Wprowad|x numer dokumentu !"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
dalej3:
if (not (rejwezp_s["vattyp"] == "")) goto dalej5
  OkAlert["Wprowad|x typ dokumentu !"]
  ExDialogOp["IdzDoPozycji","23"]
  ExitAlg[0]
dalej5:
VATPARAM_TYPDOK := vattyp
if ((not (rejwezp_s["vatNIP"] = "")) or (CallAlg["SPRAWDZCZYFAKTURAVAT"] = 0)) goto dalej6
  OkALert["Wprowad|x symbol NIP !"]
  ExDialogOp["IdzDoPozycji","15"]
  ExitAlg[0]
dalej6:
if (not (RejWezP_K["vatkwotazapl"] = .)) goto dalej7
  if (YesAlert["Kwota zap|laty nie zosta|la wprowadzona.$Czy tak ma by|c ?"]) goto dalej7
  OkAlert["Wprowad|x kwot|e zap|laty !"]
  ExDialogOp["IdzDoPozycji","11"]
  ExitAlg[0]
dalej7:
if (RejWezP_K["vatkwotazapl"] = .) goto dalej15
// sprawdz zgodnosc kwota zaplaty z suma brutto 
if (Round[RejWezP_K["vatkwotazapl"],Lkropka_ksieg] = Round[RejWezP_K["vatsumabrutto"],Lkropka_ksieg]) goto dalej15
  if(yesalert["Kwota do zap|laty nie jest zgodna z kwot|a brutto faktury. Czy tak ma by|c?"]) goto dalej15
  ExDialogOp["IdzDoPozycji","101"]
  ExitAlg[0]
dalej15:
if (not YesAlert["Akceptujesz dokument VAT ?"]) ExitAlg[0]
ExDialogOp["KoniecWykonywania",""]
//-----------------
% REZYGNUJESZOUT.ALG
if (not (YesAlert["Rezygnujesz z poprawek w fakturze ?"])) ExitAlg[0]
ExDialogOp["KoniecWykonywania",""]

% FAKTTYPOUT.ALG
if (not A_ZMIANA) ExitAlg[0]
ExDialogOp["WyswietlPozycje","24"]

//---------------------------------------------
//wywolanie dla optibelt
% odczytaj_jpk_fa_opti.alg
opis_imp := ""
callsl["IMPORT_DOKUM_MS->przepisz_plik_jpk_fa"]
//
// wczytywanie jpk_fa
% odczytaj_jpk_fa.alg
platforma := .N.
DyskOp["WezSystemX","",""]
if(D_STRING = "X-") platforma := .T.
plik_in := wybierzplik["","","","","roboczy\out_fa\","","AHF"]
if(plik_in = "") goto dalej03
 plik_wej := "roboczy\out_fa\"+plik_in
if(platforma) plik_wej := "roboczy/out_fa/"+plik_in
okalert["plik_wej="+plik_wej]
rejop["fe:otworzrej","frejfaktspr.rex"]
rejop["ff:otworzrej","frejzapspr.rjr"]
// tu dialog pozwalajacy wprowadzic opis wlasny
opis_imp := ""
exdialogop["idzdodialogu","OPIS_IMPORTU"]
okalert["1"]
callsl["IMPORT_DOKUM_MS->przepisz_plik_jpk_fa"]
rejop["ff:zamknijrej",""]
rejop["fe:zamknijrej",""]
if (YesNAlert["Wczytanie pliku "+plik_in+" zako|nczone.$ Czy usun|a|c ten plik?"]) DyskOp["Usunplik","roboczy\out_fa\"+plik_in,""]
exitalg[0]
dalej03:
okalert["Nie wybrano pliku"]
//
% OPIS_IMPORTU.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW =,,,,ADPHS,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Opis w|lasny"
##11,0,P,,,,,,,,Zmienna:opis_imp,string::50
##0,,ADP,,@3


Opis: #11                                               #


 #0        #
//
//
% wczytaj_vat_fid.alg
RejOp["UsunPlikRej","REJ-IMP.RJR"]
if(not(RejOp["A:otworzrejsprawdz","REJ-IMP.RJR"]))ExitAlg[0]
RejOp["A:ZmienKluczRej","0"]
RejOp["A:ImportujUstawieniaStart",""]
// separator podany w alg glownym
separator := ";"
RejOp["A:ImportUstawSeparator",separator]
// tu podac standard polskich liter w jakim byl import
//RejOp["A:ImportPolskieLitery","ISO-LATIN2"]
//RejOp["A:ImportPolskieLitery","PROTEST"]
// tu dopisac sciezke i nazwe pliku z danymi do importu
//okalert["plik_wej="+plik_wej]
RejOp["A:ImportujRejestr",plik_wej]
//okalert["skonczyl temp"]
//rejop["A:zobaczdbf",""]
// wczytanie danych do rejestru vat
rejop["a:zmienkluczrej","0"]
if(not(rejop["a:wezpierwszyrek",""])) goto zamknij_rejestry
// tu odczytanie danych zbiorczych
data_od := ''
data_do := ''
fidosoba := ""
fiddruk := ""
rejop["a:wezostatnirek",""]
tekst := rejwezp_s["a:m1"]
if(not(strcut[tekst,0,5]=="Param")) goto po_param
poz := strin["From Date",tekst]
okres := strcut[tekst,poz+14,2]+"."+strcut[tekst,poz+17,2]+"."+strcut[tekst,poz+20,2]+"-"
poz := strin["To Date",tekst]
okres := okres + strcut[tekst,poz+12,2]+"."+strcut[tekst,poz+15,2]+"."+strcut[tekst,poz+18,2]
datas := strcut[tekst,poz+12,2]+"."+strcut[tekst,poz+15,2]+"."+strcut[tekst,poz+18,2]
data_do := stringnadate[datas]
tekst := rejwezp_s["a:m3"]
poz := strin["on ",tekst]
//okalert["poz="+poz]
if(poz = -1) goto inne_poz
fiddruk := strcut[tekst,poz+3,18]
fiddruk := strcut[fiddruk,6,4]+"."+strcut[fiddruk,3,2]+"."+strcut[fiddruk,0,2]+"/"+strcut[fiddruk,13,5]+":00"
goto  wspolne_poz
inne_poz:
poz := strin["dnia",tekst]
fiddruk := strcut[tekst,poz+5,18]
fiddruk := strcut[fiddruk,6,4]+"."+strcut[fiddruk,3,2]+"."+strcut[fiddruk,0,2]+"/"+strcut[fiddruk,13,5]+":00"
wspolne_poz:
poz := strin["/ ",tekst]
fidosoba := strcut[tekst,poz+2,30]
po_param:
//rejop["a:zobaczdbf",""]
rejop["a:wezpierwszyrek",""]
callalg["wstaw_vat_fid"]
zamknij_rejestry:
rejop["a:zamknijrej",""]
sysalg["ZamknijPliki"]
//DyskOp["Usunplik","roboczy\vat_fid\"+plik_imp,""]
exitalg[0]

% wstaw_vat_fid.alg
rejop["a:weznastepnyrek",""]
ustawczekajinfo["start4","Import faktur - prosz|e czeka|c"]
petla_a:
if(strcut[rejwezp_s["a:m1"],0,3]=="TOT") goto koniec_imp
fv := strcut[rejwezp_s["a:m1"],4,20]
//if(rejop["fe:znajdzrek",fv]) goto jest_fa
rejop["fe:dodajrek",""]
fe_id := rejwezp_k["fe:vatid"]
xrejwstawp_l["fe:vatstrona",.N.]
xrejwstawp_s["fe:vatsymdok",fv]
xrejwstawp_s["fe:vattyp","F"]
xrejwstawp_s["fe:vatrejestr","OUT_S"]
xrejwstawp_s["fe:vatstatus","inny"]
tekst := rejwezp_s["a:m3"]
d1 := strin[",",tekst]
d2 := strin["NIP:",tekst]
nazwa := strcut[tekst,0,d1]
adres := strcut[tekst,d1+1,80]
nipx := ""
nip := ""
nipue := ""
if(d2<0) goto omin_nip 
adres := strcut[tekst,d1+1,d2-d1-1]
nipx := strcut[tekst,d2+5,80]
d_string := nipx
callalg["usun_spacje"]
//callalg["zamiana_kresek"]
nipx := d_string
if (dobrynip[nipx]) nip := nipx
if (dobrynip[nipx]) goto omin_nip
if (stringnaliczbe[nipx]=.) goto nip_ue
nip := ""
goto omin_nip
nip_ue:
nipue := nipx 
nip := ""
omin_nip:
//if (nip = "" and nipue = "") nip := "brak"
if (nazwa = "") nazwa := "incydentalny"
if (adres = "") adres := "brak"
xrejwstawp_s["fe:vatnazwa",nazwa]
xrejwstawp_s["fe:vatadres",adres]
xrejwstawp_s["fe:vatnip",nip]
xrejwstawp_s["fe:nip_ue",nipue]
xrejwstawp_d["fe:vatdatadok",data_do]
xrejwstawp_d["fe:vatdataspr",data_do]
xrejwstawp_d["fe:vatdataobow",data_do]
xrejwstawp_s["fe:vatform","WLASNY"]
xrejwstawp_s["fe:vatokr",okres]
xrejwstawp_s["fe:vatdatawytw",fiddruk]
xrejwstawp_s["fe:vatopis",opis_imp]
rejop["a:weznastepnyrek",""]
kvat := .
knet := .
kbrutt := .
kzap := .
n := 1
czy_byl := .N.
petla_kwota:
ns := tostr["#n#S:0"]
pole_s := rejwezp_s["a:m"+ns]
// usuniecie spacji
d_string := pole_s
callalg["usun_spacje"]
pole_s := d_string
pole_s1 := strcut[pole_s,0,strin[",",pole_s]]+"."+strcut[pole_s,strlen[pole_s]-2,2]
//
if (n=1 or n=4 or n=7 or n=10 or n=11) knet := 0+knet+stringnaliczbe[pole_s1]
if (n=2 or n=5 or n=8) kvat := 0+kvat+stringnaliczbe[pole_s1]
if (n=3 or n=6 or n=9 or n=10 or n=11) kbrutt := 0+kbrutt +stringnaliczbe[pole_s1]
if (n=12) kzap := kzap+stringnaliczbe[pole_s1]
// tu wstawienie zapisow do faktury
if (n=1 or n=4 or n=7) kwx := stringnaliczbe[pole_s1]
if (n=2 or n=5 or n=8) kwy := stringnaliczbe[pole_s1]
if (n=3 or n=6 or n=9) goto n_3
if(n=10) kwx := stringnaliczbe[pole_s1]
if(n=10) kwy := 0
if(n=10) goto n_3
if(n=11) kwx := stringnaliczbe[pole_s1]
if(n=11) kwy := .
if(n=11) goto n_3
goto nastepny_n
n_3:
if(n=3) stawka := "S23"
if(n=6) stawka := "S08"
if(n=9) stawka := "S05"
if(n=10) stawka := "SK0"
if(n=11) stawka := "SZW"
if (kwx=0 and (kwy=0 or kwy=.)) goto nastepny_n
rejop["ff:dodajrek",""]
xrejwstawp_s["ff:vatindeksVAT",stawka]
xrejwstawp_s["ff:vatgus","U"]
xrejwstawp_k["ff:vatkwotanetto",kwx]
xrejwstawp_k["ff:vatpodatek",kwy]
xrejwstawp_k["ff:vatkwotabrutto",stringnaliczbe[pole_s1]]
xrejwstawp_k["ff:vatdofaktury",fe_id]
rejop["ff:zapiszrek",""]
czy_byl := .T.
goto nastepny_n
nastepny_n:
n := n+1
if(n<13) goto petla_kwota
if (czy_byl) goto dopisz_sumy
rejop["ff:dodajrek",""]
xrejwstawp_s["ff:vatindeksVAT","S08"]
xrejwstawp_s["ff:vatgus","U"]
xrejwstawp_k["ff:vatkwotanetto",0]
xrejwstawp_k["ff:vatpodatek",0]
xrejwstawp_k["ff:vatkwotabrutto",0]
xrejwstawp_k["ff:vatdofaktury",fe_id]
rejop["ff:zapiszrek",""]
dopisz_sumy:
xrejwstawp_k["fe:vatsumanetto",knet]
xrejwstawp_k["fe:vatsumavat",kvat]
xrejwstawp_k["fe:vatsumabrutto",kbrutt]
xrejwstawp_k["fe:vatkwotazapl",kzap]
rejop["fe:zapiszrek",""]
goto nastepny_a
jest_fa:
rejop["a:weznastepnyrek",""]
nastepny_a:
ustawczekajinfo["nastepny",""]
if(rejop["a:weznastepnyrek",""]) goto petla_a
koniec_imp:
ustawczekajinfo["stop",""]
//rejop["v:zobaczdbf",""]
//rejop["fe:zamknijrej",""]

% popraw_dokument.alg
platforma := .N.
DyskOp["WezSystemX","",""]
if(D_STRING = "X-") platforma := .T.
katalog := ""
DyskOp["OdczytajBiezacy","",""]
katalog := D_string
  nazwa_plik := "xx.bat"
  nazwa_plik1 := "mm.xx"
sciezka := WezZmiennaSrod["P*q2"]
if(platforma) nazwa_plik := sciezka+"/xx.bat"
if(platforma) nazwa_plik1 := sciezka+"/mm.xx"
Dyskop["usunplik",nazwa_plik1,""]
Dyskop["Dodajplik",nazwa_plik1,""]
linia1 := "s/></>\n</g"
DyskOp["Dodajlinie",nazwa_plik1,linia1]
Dyskop["usunplik",nazwa_plik,""]
Dyskop["Dodajplik",nazwa_plik,""]
if(platforma) goto inne_linie1
DyskOp["Dodajlinie",nazwa_plik,"@echo off"]
linia1 := "sed -f "+nazwa_plik1 +" "+PLIK_WEJ+" > "+PLIK_WEJ+"1"
//linia3 := "pause"
goto wspolne
inne_linie1:
linia1 := "sed -f "+nazwa_plik1 +" "+PLIK_WEJ+" > "+PLIK_WEJ+"1"
//linia3 := "pause"
wspolne:
DyskOp["Dodajlinie",nazwa_plik,linia1]
//DyskOp["Dodajlinie",nazwa_plik,linia3]
if (platforma) WolajSystem["chmod 770 "+nazwa_plik ,.T.]
//okalert["1"]
wolajSystem[nazwa_plik,.T.]
//okalert["nazwaplik="+nazwa_plik]
Dyskop["usunplik",nazwa_plik,""]
Dyskop["usunplik",nazwa_plik1,""]
DyskOp["kopiujplik",PLIK_WEJ+"1",PLIK_WEJ]
Dyskop["usunplik",PLIK_WEJ+"1",""]
wspolne_linie:

% SL.czytanie-pliku-zewnetrznego
  
implements("IMPORT_DOKUM_MS");

define odczytaj_jpk_fa()
{
    variable f3, poz;
   variable linia, dsid = 0, dstrans,liniax, linia_konw="";
   variable dssuman = 0, dssumav = 0, dsopis, dsdat, dskwota, no;
   variable in = dajazmienna_S("PLIK_WEJ");
//   ustaw_zS("formatka","");
//okalert("in="+in);
   f3 = fopen(in,"r");
   if (f3 == NULL)
     {
	gl_ustaw_errmess("Nie mo|zna otworzy|c pliku " + in + " !");
	gl_alert_errmess();
	return 0;
     }
    () = ustawczekajinfo("Start4","Wczytanie faktur. Prosz|e czeka|c ...");
     while (fgets(&linia,f3) != -1) {
      if (not(linia == "")) 
     {
     () = ustawczekajinfo("Nastepny","Next");
      linia = strtrim_beg(linia);
    linia = gl_konwertuj_import_polskie_utf_8(linia);
    linia = gl_konwertujpaleczki(linia);
      %okalert("linia odczyt="+linia);

  if (strcut(linia,5,7) =="DataOd>" or strcut(linia,1,7) =="DataOd>") {
              no = 4;
              if(strcut(linia,1,7) =="DataOd>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              dsopis = strcut(dsopis,2,2)+"."+strcut(dsopis,5,2)+"."+strcut(dsopis,8,2);
              ustaw_zS("okres",dsopis+"-");
              continue;
              }
  if (strcut(linia,5,7) =="DataDo>" or strcut(linia,1,7) =="DataDo>") {
              no = 4;
              if (strcut(linia,1,7) =="DataDo>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              dsopis = strcut(dsopis,2,2)+"."+strcut(dsopis,5,2)+"."+strcut(dsopis,8,2);
              ustaw_zS("okres",daj_zS("okres")+dsopis);
              continue;
              }
  
  if (strcut(linia,5,19) =="DataWytworzeniaJPK>" or strcut(linia,1,19) =="DataWytworzeniaJPK>") {
              no = 4;
              if (strcut(linia,1,19) =="DataWytworzeniaJPK>") no = 0;
              dsopis = strcut(linia,20+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
              dsopis = daj_zS("d_string");
			  dsopis = strcut(dsopis,0,4)+"."+strcut(dsopis,5,2)+"."+strcut(dsopis,8,2)+"/"+strcut(dsopis,11,8);
              ustaw_zS("vatdatawytw",dsopis);
              continue;
              }
//      okalert("linia="+linia);
              if (strcut(linia,2,3) =="xml") continue;
              if (strcut(linia,5,11) =="Faktura typ" or strcut(linia,1,11) =="Faktura typ"){
              () = rejop("fe:dodajrek");
              dsid = rejwezp_i("fe:vatid"); 
//              okalert("dsid="+ string(dsid));
              dssuman = 0;
              dssumav = 0;
              continue;
              }
              if (strcut(linia,5,4) == "P_1>" or strcut(linia,1,4) == "P_1>"){
              no = 4;
              if (strcut(linia,1,4) == "P_1>") no = 0;
              dsdat = strcut(linia,7+no,2)+"."+strcut(linia,10+no,2)+"."+strcut(linia,13+no,2);
              xrejwstawp_d("fe:vatdatadok",stringnadate(dsdat));
              xrejwstawp_d("fe:vatdataobow",stringnadate(dsdat));
              continue;
              }
              if (strcut(linia,5,4) == "P_6>" or strcut(linia,1,4) == "P_6>"){
              no = 4;
              if (strcut(linia,1,4) == "P_6>") no = 0;
              dsdat = strcut(linia,7+no,2)+"."+strcut(linia,10+no,2)+"."+strcut(linia,13+no,2);
              xrejwstawp_d("fe:vatdataspr",stringnadate(dsdat));
              continue;
              }
              if (strcut(linia,5,5) == "P_2A>" or strcut(linia,1,5) == "P_2A>"){
              no = 4;
              if (strcut(linia,1,5) == "P_2A>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
              dsopis = daj_zS("d_string");
              if (strcut(dsopis,0,7) == "Faktura") dsopis = strcut(dsopis,7,strlen(dsopis)-7);
              xrejwstawp_s("fe:vatsymdok",dsopis);
              xrejwstawp_s("fe:vatrejestr","OUT_S");
              xrejwstawp_l("fe:vatstrona",0);
              continue;
              }
              if (strcut(linia,5,5) == "P_3A>" or strcut(linia,1,5) == "P_3A>"){
              no = 4;
              if (strcut(linia,1,5) == "P_3A>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              () = callalg("zamien_hash");
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "") dsopis = "incydentalni";
              xrejwstawp_s("fe:vatnazwa",dsopis);
              continue;
              }
              if (strcut(linia,5,5) == "P_3B>" or strcut(linia,1,5) == "P_3B>"){
              no = 4;
              if (strcut(linia,1,5) == "P_3B>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              () = callalg("zamien_hash");
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "") dsopis = "brak";
              xrejwstawp_s("fe:vatadres",dsopis);
              continue;
              }
              if (strcut(linia,5,5) == "P_5A>" or strcut(linia,1,5) == "P_5A>"){
              no = 4;
              if (strcut(linia,1,5) == "P_5A>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
	      okalert("5a "+dsopis);
              %if (dsopis == "" or dsopis == "PL") continue;
              if (dsopis == "" ) continue;
	      %zawsze wpisuje kod ue, dla polkich kod "PL"
              xrejwstawp_s("fe:kod_ue",dsopis);
              continue;
              }
              if (strcut(linia,5,5) == "P_5B>" or strcut(linia,1,5) == "P_5B>"){
              no = 4;
              if (strcut(linia,1,5) == "P_5B>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "") continue;
	      %uwaga: polki NIP do pola vatnip, zagraniczny (ue i spoza ue) do pola nip_ue!
              if (pustepole("fe:kod_ue")) xrejwstawp_s("fe:vatnip",dsopis); 
              if (rejwezp_s("fe:kod_ue")=="PL") xrejwstawp_s("fe:vatnip",dsopis); 
              else xrejwstawp_s("fe:nip_ue",dsopis);
              continue;
              }
              if (strcut(linia,5,7) == "P_13_1>" or strcut(linia,1,7) == "P_13_1>"){
              no = 4;
              if (strcut(linia,1,7) == "P_13_1>") no = 0;
              dskwota = strcut(linia,8+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssuman = dssuman + stringnaliczbe(dskwota);
              continue;
              }
              if (strcut(linia,5,7) == "P_14_1>" or strcut(linia,1,7) == "P_14_1>"){
              no = 4;
              if (strcut(linia,1,7) == "P_14_1>") no = 0;
              dskwota = strcut(linia,8+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssumav = dssumav + stringnaliczbe(dskwota);
              continue;
              }
              if (strcut(linia,5,7) == "P_13_2>" or strcut(linia,1,7) == "P_13_2>"){
              no = 4;
              if (strcut(linia,1,7) == "P_13_2>") no = 0;
              dskwota = strcut(linia,8+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssuman = dssuman + stringnaliczbe(dskwota);
              continue;
              }
              if (strcut(linia,5,7) == "P_14_2>" or strcut(linia,1,7) == "P_14_2>"){
              no = 4;
              if (strcut(linia,1,7) == "P_14_2>") no = 0;
              dskwota = strcut(linia,8+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssumav = dssumav + stringnaliczbe(dskwota);
              continue;
              }
              if (strcut(linia,5,7) == "P_13_3>" or strcut(linia,1,7) == "P_13_3>"){
              no = 4;
              if (strcut(linia,1,7) == "P_13_3>") no = 0;
              dskwota = strcut(linia,8+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssuman = dssuman + stringnaliczbe(dskwota);
              continue;
              }
              if (strcut(linia,5,7) == "P_14_3>" or strcut(linia,1,7) == "P_14_3>"){
              no = 4;
              if (strcut(linia,1,7) == "P_14_3>") no = 0;
              dskwota = strcut(linia,8+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssumav = dssumav + stringnaliczbe(dskwota);
              continue;
              }
              if (strcut(linia,5,7) == "P_13_6>" or strcut(linia,1,7) == "P_13_6>"){
              no = 4;
              if (strcut(linia,1,7) == "P_13_6>") no = 0;
              dskwota = strcut(linia,8+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssuman = dssuman + stringnaliczbe(dskwota);
              continue;
              }
              if (strcut(linia,5,7) == "P_13_7>" or strcut(linia,1,7) == "P_13_7>"){
              no = 4;
              if (strcut(linia,1,7) == "P_13_7>") no = 0;
              dskwota = strcut(linia,8+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssuman = dssuman + stringnaliczbe(dskwota);
              continue;
              }
              if (strcut(linia,5,13) == "RodzajFaktury" or strcut(linia,1,13) == "RodzajFaktury"){
              no = 4;
              if (strcut(linia,1,13) == "RodzajFaktury") no = 0;
              xrejwstawp_k("fe:vatsumanetto",dssuman+0);
              xrejwstawp_k("fe:vatsumaVAT",dssumav+0);
              xrejwstawp_k("fe:vatsumabrutto",dssuman + dssumav+0);
              xrejwstawp_k("fe:vatkwotazapl",dssuman + dssumav+0);
              dsopis = strcut(linia,15+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if(dsopis == "VAT") xrejwstawp_s("fe:vattyp","F");
              if(dsopis == "ZAL") xrejwstawp_s("fe:vattyp","F");
              if(dsopis == "POZ") xrejwstawp_s("fe:vattyp","DV");
              if(dsopis == "KOREKTA") xrejwstawp_s("fe:vattyp","FK");
              continue;
              }
              if (strcut(linia,5,15) == "NrFaKorygowanej" or strcut(linia,1,15) == "NrFaKorygowanej"){
              no = 4;
              if (strcut(linia,1,15) == "NrFaKorygowanej") no = 0;
              dsopis = strcut(linia,16+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (not(dsopis == "")) xrejwstawp_s("fe:vatdokdotyczy",dsopis);
              continue;
              }
              if (strcut(linia,5,16) == "PrzyczynaKorekty" or strcut(linia,1,16) == "PrzyczynaKorekty"){
              no = 4;
              if (strcut(linia,1,16) == "PrzyczynaKorekty") no = 0;
              dsopis = strcut(linia,18+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (not(dsopis == "")) xrejwstawp_s("fe:vatuwagi",dsopis);
              continue;
              }
              if (strcut(linia,6,8) == "Faktura>" or strcut(linia,2,8) == "Faktura>"){
              xrejwstawp_s("fe:vatstatus","inny");
              xrejwstawp_l("fe:vatstrona",0);
              xrejwstawp_s("fe:vatokr",daj_zS("okres"));
              xrejwstawp_s("fe:vatform","JPK_FA");
              xrejwstawp_s("fe:vatdatawytw",daj_zS("vatdatawytw"));
              xrejwstawp_s("fe:vatopis",daj_zS("opis_imp"));
              () = rejop("fe:zapiszrek");
              if (rejwezp_s("fe:vattyp") == "DV") () = rejop("fe:usunrek");
              continue;
              }
              if (strcut(linia,5,5) == "P_2B>" or strcut(linia,1,5) == "P_2B>"){
              no = 4;
              if (strcut(linia,1,5) == "P_2B>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
              dsopis = daj_zS("d_string");
              if (strcut(dsopis,0,7) == "Faktura") dsopis = strcut(dsopis,7,strlen(dsopis)-7);
              ustaw_zS("nr_fa",dsopis);
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              continue;
              }
              if (strcut(linia,5,5) == "P_11>" or strcut(linia,1,5) == "P_11>"){
              no = 4;
              if (strcut(linia,1,5) == "P_11>") no = 0;
              dskwota = strcut(linia,6+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              xrejwstawp_k("ff:vatkwotanetto",stringnaliczbe(dskwota));
              continue;
              }   
              if (strcut(linia,5,6) == "P_11A>" or strcut(linia,1,6) == "P_11A>"){
              no = 4;
              if (strcut(linia,1,6) == "P_11A>") no = 0;
              dskwota = strcut(linia,7+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              xrejwstawp_k("ff:vatkwotabrutto",stringnaliczbe(dskwota));
              continue;
              }   
              if (strcut(linia,5,5) == "P_12>" or strcut(linia,1,5) == "P_12>"){
              no = 4;
              if (strcut(linia,1,5) == "P_12>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "23") xrejwstawp_s("ff:vatindeksVAT","S23");
              if (dsopis == "8") xrejwstawp_s("ff:vatindeksVAT","S08");
              if (dsopis == "5") xrejwstawp_s("ff:vatindeksVAT","S05");
              if (dsopis == "0") xrejwstawp_s("ff:vatindeksVAT","SK0");
              if (dsopis == "zw") xrejwstawp_s("ff:vatindeksVAT","SZW");
              continue;
              }   
              if (strcut(linia,6,14) == "FakturaWiersz>" or strcut(linia,2,14) == "FakturaWiersz>"){
              if (rejop("fe:znajdzrek",daj_zS("nr_fa"))) {
                dsid = rejwezp_i("fe:vatid"); 
                xrejwstawp_i("ff:vatdofaktury",dsid);
                if (not(rejwezp_s("ff:vatindeksVAT") == "SZW")) xrejwstawp_k("ff:vatpodatek",kwotarop("-",rejwezp_k("ff:vatkwotabrutto"),rejwezp_k("ff:vatkwotanetto")));
                () = rejop("ff:zapiszrek");
                }
              else () = rejop("ff:usunrek");
              continue;
              }
        }
     }
   () = ustawczekajinfo("Stop","");
    fclose(f3);
   return 1;
}

define odczytaj_jpk_fa_op()
{
    %dla optibelt wczytywanie sprzedazy
    variable f3, poz;
   variable linia, dsid = 0, dstrans,liniax, linia_konw="";
   variable dssuman = 0, dssumav = 0, dsopis, dsdat, dskwota, no;
   variable dslog;
   variable in = dajazmienna_S("PLIK_WEJ");
   variable porto = 0;
   variable wyn;
   variable len;
//   ustaw_zS("formatka","");
//okalert("in="+in);
   f3 = fopen(in,"r");
   if (f3 == NULL)
     {
	gl_ustaw_errmess("Nie mo|zna otworzy|c pliku " + in + " !");
	gl_alert_errmess();
	return 0;
     }
    () = ustawczekajinfo("Start4","Wczytanie faktur. Prosz|e czeka|c ...");
     while (fgets(&linia,f3) != -1) {
      if (not(linia == "")) 
     {
     () = ustawczekajinfo("Nastepny","Next");
      linia = strtrim_beg(linia);
    linia = gl_konwertuj_import_polskie_utf_8(linia);
    linia = gl_konwertujpaleczki(linia);
    %okalert("linia odczyt="+linia);
    %sprawdz czy wystepuje cudzyslow lub apostrof (&apos; lub &quot;)
    wyn = is_substr(linia,"&apos;");
    if (wyn >0) 
    {
      %okalert("linia przed "+linia);
      len = strlen(linia);
      linia = substr(linia,1,wyn-1)+substr(linia,wyn+6,len-wyn-4);
      wyn = is_substr(linia,"&apos;");
      len = strlen(linia);
      linia = substr(linia,1,wyn-1)+substr(linia,wyn+6,len-wyn-4);
      %okalert("linia po "+linia);
    }
    wyn = is_substr(linia,"&quot;");
    if (wyn >0) 
    {
      %okalert("linia przed "+linia);
      len = strlen(linia);
      linia = substr(linia,1,wyn-1)+substr(linia,wyn+6,len-wyn-4);
      wyn = is_substr(linia,"&quot;");
      len = strlen(linia);
      linia = substr(linia,1,wyn-1)+substr(linia,wyn+6,len-wyn-4);
      %okalert("linia po "+linia);
    }

  if (strcut(linia,5,7) =="DataOd>" or strcut(linia,1,7) =="DataOd>") {
              no = 4;
              if(strcut(linia,1,7) =="DataOd>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              dsopis = strcut(dsopis,2,2)+"."+strcut(dsopis,5,2)+"."+strcut(dsopis,8,2);
              ustaw_zS("okres",dsopis+"-");
              continue;
              }
  if (strcut(linia,5,7) =="DataDo>" or strcut(linia,1,7) =="DataDo>") {
              no = 4;
              if (strcut(linia,1,7) =="DataDo>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              dsopis = strcut(dsopis,2,2)+"."+strcut(dsopis,5,2)+"."+strcut(dsopis,8,2);
              ustaw_zS("okres",daj_zS("okres")+dsopis);
              continue;
              }
  
  if (strcut(linia,5,19) =="DataWytworzeniaJPK>" or strcut(linia,1,19) =="DataWytworzeniaJPK>") {
              no = 4;
              if (strcut(linia,1,19) =="DataWytworzeniaJPK>") no = 0;
              dsopis = strcut(linia,20+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
              dsopis = daj_zS("d_string");
			  dsopis = strcut(dsopis,0,4)+"."+strcut(dsopis,5,2)+"."+strcut(dsopis,8,2)+"/"+strcut(dsopis,11,8);
              ustaw_zS("vatdatawytw",dsopis);
              continue;
              }
      %okalert("linia="+linia);
  if (strcut(linia,2,3) =="xml") continue;
	      %pocz sekcja <Faktura>
  if (strcut(linia,5,8) =="Faktura>" or strcut(linia,1,8) =="Faktura>"){
              () = rejop("fe:dodajrek");
              dsid = rejwezp_i("fe:vatid"); 
              %okalert("dsid="+ string(dsid));
              dssuman = 0;
              dssumav = 0;
              continue;
              }
	      %kod waluty
  if (strcut(linia,5,9) == "KodWaluty" or strcut(linia,1,9) == "KodWaluty"){
              no = 4;
              if (strcut(linia,1,4) == "KodWaluty") no = 0;
              dsopis = strcut(linia,11+no,3);
              xrejwstawp_s("fe:vatwaluta",dsopis);
              continue;
              }
	      %koniec kod waluty
  if (strcut(linia,5,4) == "P_1>" or strcut(linia,1,4) == "P_1>"){
              no = 4;
              if (strcut(linia,1,4) == "P_1>") no = 0;
              dsdat = strcut(linia,7+no,2)+"."+strcut(linia,10+no,2)+"."+strcut(linia,13+no,2);
              xrejwstawp_d("fe:vatdatadok",stringnadate(dsdat));
              xrejwstawp_d("fe:vatdataobow",stringnadate(dsdat));
              continue;
              }
  if (strcut(linia,5,4) == "P_6>" or strcut(linia,1,4) == "P_6>"){
              no = 4;
              if (strcut(linia,1,4) == "P_6>") no = 0;
              dsdat = strcut(linia,7+no,2)+"."+strcut(linia,10+no,2)+"."+strcut(linia,13+no,2);
              xrejwstawp_d("fe:vatdataspr",stringnadate(dsdat));
              continue;
              }
  if (strcut(linia,5,5) == "P_6A>" or strcut(linia,1,5) == "P_6A>"){
              no = 4;
              if (strcut(linia,1,5) == "P_6A>") no = 0;
              dsdat = strcut(linia,8+no,2)+"."+strcut(linia,11+no,2)+"."+strcut(linia,14+no,2);
	      %okalert("dsdat "+dsdat);
              xrejwstawp_d("fe:vatterminplat",stringnadate(dsdat));
              continue;
              }
  if (strcut(linia,5,5) == "P_2A>" or strcut(linia,1,5) == "P_2A>"){
              no = 4;
              if (strcut(linia,1,5) == "P_2A>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
              dsopis = daj_zS("d_string");
              if (strcut(dsopis,0,7) == "Faktura") dsopis = strcut(dsopis,7,strlen(dsopis)-7);
              xrejwstawp_s("fe:vatsymdok",dsopis);
              xrejwstawp_s("fe:vatrejestr","OUT_S");
              xrejwstawp_l("fe:vatstrona",0);
              continue;
              }
  if (strcut(linia,5,5) == "P_3A>" or strcut(linia,1,5) == "P_3A>"){
              no = 4;
              if (strcut(linia,1,5) == "P_3A>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              () = callalg("zamien_hash");
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "") dsopis = "incydentalni";
              xrejwstawp_s("fe:vatnazwa",dsopis);
              continue;
              }
  if (strcut(linia,5,5) == "P_3B>" or strcut(linia,1,5) == "P_3B>"){
              no = 4;
              if (strcut(linia,1,5) == "P_3B>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              () = callalg("zamien_hash");
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "") dsopis = "brak";
              xrejwstawp_s("fe:vatadres",dsopis);
              continue;
              }
  if (strcut(linia,5,5) == "P_3E>" or strcut(linia,1,5) == "P_3E>"){
              no = 4;
              if (strcut(linia,1,5) == "P_3E>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              () = callalg("zamien_hash");
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "") dsopis = "brak";
              xrejwstawp_s("fe:adreswyst",dsopis);
	      %okalert("akuku");
              continue;
              }
  if (strcut(linia,5,5) == "P_5A>" or strcut(linia,1,5) == "P_5A>"){
              no = 4;
              if (strcut(linia,1,5) == "P_5A>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
	      %jesli kod kraju nabywcy pusty lub PL na razie nie wpisujedo pola kod_ue
	      %moze wpisywac jednak kod ue zawsze ???
	      %nie! kod_ue jestuzywany do ropzpoznania czy wpisac do nip czy nip_ue
              %if (dsopis == "" or dsopis == "PL") continue;
	      %zawsze wpisuje kod ue, dla polkich kod "PL"
	      %uwaga: kodu spoza unii nie wpisze w to pole bo to jest DIC
	      %wpisuje NIP do pola nrwyst - tam piowinien sie wpisac kazdy
              xrejwstawp_s("fe:nrwyst",dsopis);
              xrejwstawp_s("fe:kod_ue",dsopis);
              continue;
              }
  if (strcut(linia,5,5) == "P_5B>" or strcut(linia,1,5) == "P_5B>"){
              no = 4;
              if (strcut(linia,1,5) == "P_5B>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "") continue;
	      %uwaga: polski NIP do pola vatnip, zagraniczny (ue i spoza ue) do pola nip_ue!
              if (pustepole("fe:kod_ue")) xrejwstawp_s("fe:vatnip",dsopis); 
              if (rejwezp_s("fe:kod_ue")=="PL") xrejwstawp_s("fe:vatnip",dsopis); 
              else xrejwstawp_s("fe:nip_ue",dsopis);
              continue;
              }
  if (strcut(linia,5,7) == "P_13_1>" or strcut(linia,1,7) == "P_13_1>"){
              no = 4;
              if (strcut(linia,1,7) == "P_13_1>") no = 0;
              dskwota = strcut(linia,8+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssuman = dssuman + stringnaliczbe(dskwota);
              continue;
              }
  if (strcut(linia,5,7) == "P_14_1>" or strcut(linia,1,7) == "P_14_1>"){
              no = 4;
              if (strcut(linia,1,7) == "P_14_1>") no = 0;
              dskwota = strcut(linia,8+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssumav = dssumav + stringnaliczbe(dskwota);
              continue;
              }
  if (strcut(linia,5,7) == "P_13_2>" or strcut(linia,1,7) == "P_13_2>"){
              no = 4;
              if (strcut(linia,1,7) == "P_13_2>") no = 0;
              dskwota = strcut(linia,8+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssuman = dssuman + stringnaliczbe(dskwota);
              continue;
              }
  if (strcut(linia,5,7) == "P_14_2>" or strcut(linia,1,7) == "P_14_2>"){
              no = 4;
              if (strcut(linia,1,7) == "P_14_2>") no = 0;
              dskwota = strcut(linia,8+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssumav = dssumav + stringnaliczbe(dskwota);
              continue;
              }
  if (strcut(linia,5,7) == "P_13_3>" or strcut(linia,1,7) == "P_13_3>"){
              no = 4;
              if (strcut(linia,1,7) == "P_13_3>") no = 0;
              dskwota = strcut(linia,8+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssuman = dssuman + stringnaliczbe(dskwota);
              continue;
              }
  if (strcut(linia,5,7) == "P_14_3>" or strcut(linia,1,7) == "P_14_3>"){
              no = 4;
              if (strcut(linia,1,7) == "P_14_3>") no = 0;
              dskwota = strcut(linia,8+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssumav = dssumav + stringnaliczbe(dskwota);
              continue;
              }
  if (strcut(linia,5,7) == "P_13_6>" or strcut(linia,1,7) == "P_13_6>"){
              no = 4;
              if (strcut(linia,1,7) == "P_13_6>") no = 0;
              dskwota = strcut(linia,8+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssuman = dssuman + stringnaliczbe(dskwota);
              continue;
              }
  if (strcut(linia,5,7) == "P_13_7>" or strcut(linia,1,7) == "P_13_7>"){
              no = 4;
              if (strcut(linia,1,7) == "P_13_7>") no = 0;
              dskwota = strcut(linia,8+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssuman = dssuman + stringnaliczbe(dskwota);
              continue;
              }
  %dodalam wczytanie P_15 jako kwoty do zaplaty
  if (strcut(linia,5,5) == "P_15>" or strcut(linia,1,5) == "P_15>"){
              no = 4;
              if (strcut(linia,1,5) == "P_15>") no = 0;
              dskwota = strcut(linia,6+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              xrejwstawp_k("fe:vatkwotazapl",stringnaliczbe(dskwota));
              continue;
              }
  %dodoaj procedury VAT
  %P_18A MPP
  if (strcut(linia,5,6) == "P_18A>" or strcut(linia,1,6) == "P_18A>"){
              no = 4;
              if (strcut(linia,1,6) == "P_18A>") no = 0;
              dsopis = strcut(linia,7+no,4);
              %dsopis = strcut(dsopis,0,strin("<",dsopis));
              if ((dsopis == "true")) xrejwstawp_l("fe:vat_mpp",1);
              if ((dsopis == "fals")) xrejwstawp_l("fe:vat_mpp",0);
              continue;
              }
  %107D "TT_D"
  %107A "TP"(vat_powiazany)
  if (strcut(linia,5,7) == "P_107A>" or strcut(linia,1,7) == "P_107A>"){
              no = 4;
              if (strcut(linia,1,7) == "P_107A>") no = 0;
              dsopis = strcut(linia,8+no,4);
	      %okalert("107a "+dsopis);
              if ((dsopis == "true")) xrejwstawp_l("fe:vat_powiazany",1);
              if ((dsopis == "fals")) xrejwstawp_l("fe:vat_powiazany",0);
              continue;
              }
  %107B "I_42"
  if (strcut(linia,5,7) == "P_107B>" or strcut(linia,1,7) == "P_107B>"){
              no = 4;
              if (strcut(linia,1,7) == "P_107B>") no = 0;
              dsopis = strcut(linia,8+no,4);
              %dsopis = strcut(dsopis,0,strin("<",dsopis));
              if ((dsopis == "true")) xrejwstawp_l("fe:vat_i_42",1);
              if ((dsopis == "fals")) xrejwstawp_l("fe:vat_i_42",0);
              continue;
              }
  %107C "I_63"
  if (strcut(linia,5,7) == "P_107C>" or strcut(linia,1,7) == "P_107C>"){
              no = 4;
              if (strcut(linia,1,7) == "P_107C>") no = 0;
              dsopis = strcut(linia,8+no,4);
              %dsopis = strcut(dsopis,0,strin("<",dsopis));
              if ((dsopis == "true")) xrejwstawp_l("fe:vat_i_63",1);
              if ((dsopis == "fals")) xrejwstawp_l("fe:vat_i_63",0);
              continue;
              }
	      %107D "TT_D"
  if (strcut(linia,5,7) == "P_107D>" or strcut(linia,1,7) == "P_107D>"){
              no = 4;
              if (strcut(linia,1,7) == "P_107D>") no = 0;
              dsopis = strcut(linia,8+no,4);
              %dsopis = strcut(dsopis,0,strin("<",dsopis));
              if ((dsopis == "true")) xrejwstawp_l("fe:trojstr",1);
              if ((dsopis == "fals")) xrejwstawp_l("fe:trojstr",0);
              continue;
              }
	      %kurs waluty - przechowywanu jako string na polu nazwawyst
  if (strcut(linia,5,7) == "P_107E>" or strcut(linia,1,7) == "P_107E>"){
              no = 4;
              if (strcut(linia,1,7) == "P_107E>") no = 0;
              %dsopis = strcut(linia,8+no,6);
              %dsopis = strcut(dsopis,0,strin("<",dsopis));
              dsopis = strcut(linia,8+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (not(dsopis == "0.0000")) xrejwstawp_s("fe:nazwawyst",dsopis);
              continue;
              }
  if (strcut(linia,5,13) == "RodzajFaktury" or strcut(linia,1,13) == "RodzajFaktury"){
              no = 4;
              if (strcut(linia,1,13) == "RodzajFaktury") no = 0;
	      %zapisz sumy netto,vat,brutto dla faktury
              xrejwstawp_k("fe:vatsumanetto",dssuman+0);
              xrejwstawp_k("fe:vatsumaVAT",dssumav+0);
              xrejwstawp_k("fe:vatsumabrutto",dssuman + dssumav+0);
	      %linie ponizej pomijam - pobralam z pole P_15
              %xrejwstawp_k("fe:vatkwotazapl",dssuman + dssumav+0);
              dsopis = strcut(linia,15+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if(dsopis == "VAT") xrejwstawp_s("fe:vattyp","FV");
              if(dsopis == "ZAL") xrejwstawp_s("fe:vattyp","FV");
              if(dsopis == "POZ") xrejwstawp_s("fe:vattyp","DV");
              if(dsopis == "KOREKTA") xrejwstawp_s("fe:vattyp","FVK");
              continue;
              }
  if (strcut(linia,5,15) == "NrFaKorygowanej" or strcut(linia,1,15) == "NrFaKorygowanej"){
              no = 4;
              if (strcut(linia,1,15) == "NrFaKorygowanej") no = 0;
              dsopis = strcut(linia,17+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (not(dsopis == "") and (not(dsopis == "n/a"))) xrejwstawp_s("fe:vatdokdotyczy",dsopis);
              continue;
              }
  if (strcut(linia,5,16) == "PrzyczynaKorekty" or strcut(linia,1,16) == "PrzyczynaKorekty"){
              no = 4;
              if (strcut(linia,1,16) == "PrzyczynaKorekty") no = 0;
              dsopis = strcut(linia,18+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (not(dsopis == "") and not(dsopis == "n/a")) xrejwstawp_s("fe:vatuwagi",dsopis);
              continue;
              }
  if (strcut(linia,6,8) == "Faktura>" or strcut(linia,2,8) == "Faktura>"){
              xrejwstawp_s("fe:vatstatus","inny");
              xrejwstawp_l("fe:vatstrona",0);
              xrejwstawp_s("fe:vatokr",daj_zS("okres"));
              xrejwstawp_s("fe:vatform","JPK_FA");
              xrejwstawp_s("fe:vatdatawytw",daj_zS("vatdatawytw"));
              xrejwstawp_s("fe:vatopis",daj_zS("opis_imp"));
              () = rejop("fe:zapiszrek");
	      %okalert("po zapisz nr fakt "+rejwezp_s("fe:vatsymdok"));
	      %linie ponizej usunelam
              %if (rejwezp_s("fe:vattyp") == "DV") () = rejop("fe:usunrek");
              continue;
              }
  %koniec sekcja <Faktura>
  %pocz sekcja <FakturaWiersz>
  %od P_2B zaczynaja sie wiersze faktury w linii P_2B numer faktury z pola P_2A
  if (strcut(linia,5,5) == "P_2B>" or strcut(linia,1,5) == "P_2B>"){
              no = 4;
              if (strcut(linia,1,5) == "P_2B>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
              dsopis = daj_zS("d_string");
              if (strcut(dsopis,0,7) == "Faktura") dsopis = strcut(dsopis,7,strlen(dsopis)-7);
              ustaw_zS("nr_fa",dsopis);
	      %okalert("nr_fa "+dsopis);
              () = rejop("ff:dodajrek");
              %xrejwstawp_s("ff:vatGUS","U");
              continue;
              }
	      %towar
  if (strcut(linia,5,4) == "P_7>" or strcut(linia,1,4) == "P_7>"){
              no = 4;
              if (strcut(linia,1,4) == "P_7>") no = 0;
              dsopis = strcut(linia,5+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("towar",dsopis);
	      %okalert("towar "+dsopis);
              xrejwstawp_s("ff:vattowar",dsopis);
              continue;
              }   
	      %miara
  if (strcut(linia,5,5) == "P_8A>" or strcut(linia,1,5) == "P_8A>"){
              no = 4;
              if (strcut(linia,1,5) == "P_8A>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              xrejwstawp_s("ff:vatmiara",dsopis);
	      %okalert("miara "+dsopis);
              continue;
	      }
	      %ilosc
  if (strcut(linia,5,5) == "P_8B>" or strcut(linia,1,5) == "P_8B>"){
              no = 4;
              if (strcut(linia,1,5) == "P_8B>") no = 0;
              dskwota = strcut(linia,6+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              xrejwstawp_k("ff:vatilosc",stringnaliczbe(dskwota));
	      %okalert("ilosc "+string(dskwota));
              continue;
              }   
	      %cena 
  if (strcut(linia,5,5) == "P_9A>" or strcut(linia,1,5) == "P_9A>"){
              no = 4;
              if (strcut(linia,1,5) == "P_9A>") no = 0;
              dskwota = strcut(linia,6+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              xrejwstawp_k("ff:vatcenaj",stringnaliczbe(dskwota));
	      %okalert("cena "+string(dskwota));
              continue;
              }   
	      %opust netto
  if (strcut(linia,5,5) == "P_10>" or strcut(linia,1,5) == "P_10>"){
              no = 4;
              if (strcut(linia,1,5) == "P_10>") no = 0;
              dskwota = strcut(linia,6+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              xrejwstawp_k("ff:vatopust",stringnaliczbe(dskwota));
              continue;
              }   
  if (strcut(linia,5,5) == "P_11>" or strcut(linia,1,5) == "P_11>"){
              no = 4;
              if (strcut(linia,1,5) == "P_11>") no = 0;
              dskwota = strcut(linia,6+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              xrejwstawp_k("ff:vatkwotanetto",stringnaliczbe(dskwota));
              continue;
              }   
  if (strcut(linia,5,6) == "P_11A>" or strcut(linia,1,6) == "P_11A>"){
              no = 4;
              if (strcut(linia,1,6) == "P_11A>") no = 0;
              dskwota = strcut(linia,7+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
	      %okalert("kw brutto "+dskwota);
              xrejwstawp_k("ff:vatkwotabrutto",stringnaliczbe(dskwota));
              continue;
              }   
  if (strcut(linia,5,5) == "P_12>" or strcut(linia,1,5) == "P_12>"){
              no = 4;
              if (strcut(linia,1,5) == "P_12>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
	      %dla OPI - tylko SE0 i SK23!!!!
              %if (dsopis == "23") xrejwstawp_s("ff:vatindeksVAT","S23");
              if (dsopis == "23") xrejwstawp_s("ff:vatindeksVAT","SK23");
              %if (dsopis == "8") xrejwstawp_s("ff:vatindeksVAT","S08");
              if (dsopis == "8") xrejwstawp_s("ff:vatindeksVAT","SK8");
              %if (dsopis == "5") xrejwstawp_s("ff:vatindeksVAT","S05");
              if (dsopis == "5") xrejwstawp_s("ff:vatindeksVAT","SK5");
              %if (dsopis == "0") xrejwstawp_s("ff:vatindeksVAT","SK0");
              if (dsopis == "0") xrejwstawp_s("ff:vatindeksVAT","SE0");
              if (dsopis == "zw") xrejwstawp_s("ff:vatindeksVAT","SZW");
              continue;
              }   
  %grupa GTU_07
  if (strcut(linia,5,5) == "P_13>" or strcut(linia,1,5) == "P_13>"){
              no = 4;
              if (strcut(linia,1,5) == "P_13>") no = 0;
              dsopis = strcut(linia,6+no,4);
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if ((dsopis == "true")) xrejwstawp_s("ff:vatgtu","07");
              if ((dsopis == "fals")) xrejwstawp_s("ff:vatgtu","");
              continue;
              }
  if (strcut(linia,6,14) == "FakturaWiersz>" or strcut(linia,2,14) == "FakturaWiersz>"){
              if (rejop("fe:znajdzrek",daj_zS("nr_fa"))) {
		%spraedz czy porto
		if (daj_zS("towar")=="PORTO")
		{
		  %wstaw PORTO do naglowka fe: pobierz porto z P_9A cenaj (kwota netto)
                  rejwstawp_k("fe:porto",rejwezp_k("ff:vatcenaj"));
		  %usun rekord z ff:
                  () = rejop("ff:usunrek");
		}
		else
		{
                dsid = rejwezp_i("fe:vatid"); 
                xrejwstawp_i("ff:vatdofaktury",dsid);
                if (not(rejwezp_s("ff:vatindeksVAT") == "SZW" or rejwezp_s("ff:vatindeksvat")=="SE0")) xrejwstawp_k("ff:vatpodatek",kwotarop("-",rejwezp_k("ff:vatkwotabrutto"),rejwezp_k("ff:vatkwotanetto")));
                () = rejop("ff:zapiszrek");
                }
                }
              else () = rejop("ff:usunrek");
              continue;
              }
        }
     }  %koniec petla wczytywanie kolejnych linii pliku wejsciowego
     %okalert("koniec wczyt");
   () = ustawczekajinfo("Stop","");
    fclose(f3);
    %w rej fe: naglowki faktur, w ff: zapisy do faktur
    %() = rejop("fe:zobaczdbf");
    %() = rejop("ff:zobaczdbf");
   return 1;
}

define odczytaj_jpk_vat()
 {
    variable f3, poz, a;
   variable linia, dsid = 0, dstrans,liniax, linia_konw="";
   variable dssuman = 0, dssumav = 0, dsopis, dsdat, dskwota, no;
   variable txt1 = "--K_10>--K_21>--K_22>--K_31>--";
   variable txt2 = "--K_15>--K_17>--K_19>--K_25>--K_27>--K_29>--K_32>--K_34>--K_43>--K_45>--";
   variable txt3 = "--K_16>--K_18>--K_20>--K_26>--K_28>--K_30>--K_33>--K_35>--K_44>--K_46>--";
   variable txt4 = "--K_36>--K_37>--K_39>--K_47>--K_48>--K_49>--K_50>--";
   variable txt5 = "--K_11>--K_12>--K_13>--K_14>--K_38>--K_23>--K_24>--";
   variable k12s="", k14s="", k38s = "", k23s = "", k11 = 0, k12 = 0, k13 = 0, k14 = 0, k23 = 0, k24 = 0, k38 = 0;
   variable in = dajazmienna_S("PLIK_WEJ");
   f3 = fopen(in,"r");
   if (f3 == NULL)
     {
	gl_ustaw_errmess("Nie mo|zna otworzy|c pliku " + in + " !");
	gl_alert_errmess();
	return 0;
     }
    () = ustawczekajinfo("Start4","Wczytanie faktur. Prosz|e czeka|c ...");
     () = rejop("bk:otworzrej","REJKLASVAT.RXR");
    () = rejop("pa:otworzrejtemp","vat_dekp.rjr");
    () = rejop("px:otworzrejtemp","vat_dekp.rjr");
    () = rejop("ba:otworzrejsprawdz","vat_dekl.rjr");
    () = callalgfile("jpk_tworz_vat.alg","prep_vat_dekp");
//    () = rejop("px:zobaczdbf");
    () = rejop("px:zmienkluczrej","4");
// tu sprawdzenie dla K_12, K_14, K_38, K_23 jakie klasyfikacje
              if (rejop("px:znajdzrek","12")) {
              do {
               dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) k12s = k12s +"--"+ dsopis+"--";
               } while(() = rejop("px:weznastepnyrekn"));
            }
              if (rejop("px:znajdzrek","14")) {
              do {
               dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) k14s = k14s+"--"+ dsopis+"--";
               } while(() = rejop("px:weznastepnyrekn"));
            }
              if (rejop("px:znajdzrek","38")) {
              do {
               dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) k38s = k38s+"--"+ dsopis+"--";
               } while(() = rejop("px:weznastepnyrekn"));
            }
              if (rejop("px:znajdzrek","23")) {
              do {
               dsopis = rejwezp_s("px:dekp_kls");
			   if(strin("--"+dsopis+"--",k38s)>-1) continue;
               if (rejop("bk:znajdzrek",dsopis)) k23s = k23s+"--"+ dsopis+"--";
               } while(() = rejop("px:weznastepnyrekn"));
            }
// ------------------------------------------------------------
     while (fgets(&linia,f3) != -1) {
      if (not(linia == "")) 
     {
     () = ustawczekajinfo("Nastepny","Next");
      linia = strtrim_beg(linia);
    linia = gl_konwertuj_import_polskie_utf_8(linia);
    linia = gl_konwertujpaleczki(linia);
//      okalert("linia odczyt="+linia);

  if (strcut(linia,5,7) =="DataOd>" or strcut(linia,1,7) =="DataOd>") {
              no = 4;
              if (strcut(linia,1,7) =="DataOd>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              dsopis = strcut(dsopis,2,2)+"."+strcut(dsopis,5,2)+"."+strcut(dsopis,8,2);
              ustaw_zS("okres",dsopis+"-");
              continue;
              }
              
 if (strcut(linia,5,7) =="DataDo>" or strcut(linia,1,7) =="DataDo>") {
              no = 4;
              if(strcut(linia,1,7) =="DataDo>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              dsopis = strcut(dsopis,2,2)+"."+strcut(dsopis,5,2)+"."+strcut(dsopis,8,2);
			  ustaw_zS("okres",daj_zS("okres")+dsopis);
			  ustaw_zD("data_obow",stringnadate(dsopis));
              continue;
              }
  
  if (strcut(linia,5,19) =="DataWytworzeniaJPK>" or strcut(linia,1,19) =="DataWytworzeniaJPK>") {
              no = 4;
              if (strcut(linia,1,19) =="DataWytworzeniaJPK>") no = 0;
              dsopis = strcut(linia,20+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
              dsopis = daj_zS("d_string");
			  dsopis = strcut(dsopis,0,4)+"."+strcut(dsopis,5,2)+"."+strcut(dsopis,8,2)+"/"+strcut(dsopis,11,8);
              ustaw_zS("vatdatawytw",dsopis);
              continue;
              }
//      okalert("linia="+linia);

              if (strcut(linia,2,3) == "xml") continue;
              if (strcut(linia,5,14) == "SprzedazWiersz" or strcut(linia,5,11) == "ZakupWiersz" or strcut(linia,1,14) == "SprzedazWiersz" or strcut(linia,1,11) == "ZakupWiersz"){
              () = rejop("fe:dodajrek");
              dsid = rejwezp_i("fe:vatid"); 
              dssuman = 0;
              dssumav = 0;
              continue;
              }
              
              if (strcut(linia,5,16) == "DataWystawienia>" or strcut(linia,1,16) == "DataWystawienia>"){
              no = 4;
              if (strcut(linia,1,16) == "DataWystawienia>") no = 0;
              dsdat = strcut(linia,19+no,2)+"."+strcut(linia,22+no,2)+"."+strcut(linia,25+no,2);
              xrejwstawp_d("fe:vatdatadok",stringnadate(dsdat));
              xrejwstawp_d("fe:vatdataobow",daj_zD("data_obow"));
              continue;
              }
              
              if (strcut(linia,5,11) == "DataWplywu>" or strcut(linia,1,11) == "DataWplywu>"){
              no = 4;
              if (strcut(linia,1,11) == "DataWplywu>") no = 0;
              dsdat = strcut(linia,14+no,2)+"."+strcut(linia,17+no,2)+"."+strcut(linia,20+no,2);
              xrejwstawp_d("fe:vatdataspr",stringnadate(dsdat));
              continue;
              }
              
              if (strcut(linia,5,14) == "DataSprzedazy>" or strcut(linia,1,14) == "DataSprzedazy>"){
              no = 4;
              if (strcut(linia,1,14) == "DataSprzedazy>") no = 0;
              dsdat = strcut(linia,17+no,2)+"."+strcut(linia,20+no,2)+"."+strcut(linia,23+no,2);
              xrejwstawp_d("fe:vatdataspr",stringnadate(dsdat));
              continue;
              }

              if (strcut(linia,5,11) == "DataZakupu>" or strcut(linia,1,11) == "DataZakupu>"){
              no = 4;
              if (strcut(linia,1,11) == "DataZakupu>") no = 0;
              dsdat = strcut(linia,14+no,2)+"."+strcut(linia,17+no,2)+"."+strcut(linia,20+no,2);
              xrejwstawp_d("fe:vatdatadok",stringnadate(dsdat));
              xrejwstawp_d("fe:vatdataobow",daj_zD("data_obow"));
              continue;
              }
              
              if (strcut(linia,5,15) == "DowodSprzedazy>" or strcut(linia,1,15) == "DowodSprzedazy>"){
              no = 4;
              if (strcut(linia,1,15) == "DowodSprzedazy>") no = 0;
              dsopis = strcut(linia,16+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
              dsopis = daj_zS("d_string");
              xrejwstawp_s("fe:vatsymdok",dsopis);
              xrejwstawp_s("fe:vatrejestr","OUT_S");
              continue;
              }
              
              if (strcut(linia,5,12) == "NrDokumentu>" or strcut(linia,1,12) == "NrDokumentu>"){
              no = 4;
              if (strcut(linia,1,12) == "NrDokumentu>") no = 0;
              dsopis = strcut(linia,13+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
              dsopis = daj_zS("d_string");
              xrejwstawp_s("fe:vatsymdok",dsopis);
              xrejwstawp_s("fe:vatrejestr","OUT_S");
              continue;
              }
              
              if (strcut(linia,5,12) == "DowodZakupu>" or strcut(linia,1,12) == "DowodZakupu>"){
              no = 4;
              if (strcut(linia,1,12) == "DowodZakupu>") no = 0;
              dsopis = strcut(linia,13+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
              dsopis = daj_zS("d_string");
              xrejwstawp_s("fe:vatsymdok",dsopis);
              xrejwstawp_s("fe:vatrejestr","OUT_Z");
              continue;
              }
              
              if (strcut(linia,5,13) == "NazwaNabywcy>" or strcut(linia,1,13) == "NazwaNabywcy>"){
              no = 4;
              if (strcut(linia,1,13) == "NazwaNabywcy>") no = 0;
              dsopis = strcut(linia,14+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              () = callalg("zamien_hash");
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "") dsopis = "incydentalni";
              xrejwstawp_s("fe:vatnazwa",dsopis);
              continue;
              }
              
              if (strcut(linia,5,17) == "NazwaKontrahenta>" or strcut(linia,1,17) == "NazwaKontrahenta>"){
              no = 4;
              if (strcut(linia,1,17) == "NazwaKontrahenta>") no = 0;
              dsopis = strcut(linia,18+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              () = callalg("zamien_hash");
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "") dsopis = "incydentalni";
              xrejwstawp_s("fe:vatnazwa",dsopis);
              continue;
              }
              
              if (strcut(linia,5,14) == "NazwaDostawcy>" or strcut(linia,1,14) == "NazwaDostawcy>"){
              no = 4;
              if (strcut(linia,1,14) == "NazwaDostawcy>") no = 0;
              dsopis = strcut(linia,15+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              () = callalg("zamien_hash");
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "") dsopis = "incydentalni";
              xrejwstawp_s("fe:vatnazwa",dsopis);
              continue;
              }
              
              if (strcut(linia,5,13) == "AdresNabywcy>" or strcut(linia,1,13) == "AdresNabywcy>"){
              no = 4;
              if (strcut(linia,1,13) == "AdresNabywcy>") no = 0;
              dsopis = strcut(linia,14+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              () = callalg("zamien_hash");
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "") dsopis = "brak";
              xrejwstawp_s("fe:vatadres",dsopis);
              continue;
              }
              
              if (strcut(linia,5,17) == "AdresKontrahenta>" or strcut(linia,1,17) == "AdresKontrahenta>"){
              no = 4;
              if (strcut(linia,1,17) == "AdresKontrahenta>") no = 0;
              dsopis = strcut(linia,18+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              () = callalg("zamien_hash");
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "") dsopis = "brak";
              xrejwstawp_s("fe:vatadres",dsopis);
              continue;
              }
              
              if (strcut(linia,5,14) == "AdresDostawcy>" or strcut(linia,1,14) == "AdresDostawcy>"){
              no = 4;
              if (strcut(linia,1,14) == "AdresDostawcy>") no = 0;
              dsopis = strcut(linia,15+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              () = callalg("zamien_hash");
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "") dsopis = "brak";
              xrejwstawp_s("fe:vatadres",dsopis);
              continue;
              }

              if (strcut(linia,5,14) == "NrKontrahenta>" or strcut(linia,1,14) == "NrKontrahenta>"){
              no = 4;
              if (strcut(linia,1,14) == "NrKontrahenta>") no = 0;
              dsopis = strcut(linia,15+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
//              () = callalg("zamiana_kresek");
              dsopis = daj_zS("d_string");
              if (dsopis == "brak") dsopis = "";
              if (dobrynip(dsopis)) xrejwstawp_s("fe:vatnip",dsopis);
              else xrejwstawp_s("fe:nip_ue",dsopis);
              continue;
              }

              if (strcut(linia,5,11) == "NrDostawcy>" or strcut(linia,1,11) == "NrDostawcy>"){
              no = 4;
              if (strcut(linia,1,11) == "NrDostawcy>") no = 0;
              dsopis = strcut(linia,12+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
              () = callalg("zamiana_kresek");
              dsopis = daj_zS("d_string");
              if (dsopis == "brak") dsopis = "";
              if (dobrynip(dsopis)) xrejwstawp_s("fe:vatnip",dsopis);
              else xrejwstawp_s("fe:nip_ue",dsopis);
              continue;
              }
// --------------------------------------------------------------------------------------              
              if (strin("--"+strcut(linia,5,5)+"--",txt1) > -1 or strin("--"+strcut(linia,1,5)+"--",txt1) > -1) {
              no = 4;
              if (strin("--"+strcut(linia,1,5)+"--",txt1) > -1) no = 0;
              dskwota = strcut(linia,6+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssuman = dssuman + stringnaliczbe(dskwota);
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",stringnaliczbe(dskwota));
              xrejwstawp_k("ff:vatkwotabrutto",stringnaliczbe(dskwota));
              xrejwstawp_s("ff:vatpozdekln",strcut(linia,1+no,4));
              a = rejop("px:znajdzrek",strcut(linia,3+no,2));
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              if (not(kwotalop("=",rejwezp_k("ff:vatkwotanetto"),0))) () = rejop("ff:zapiszrek");
              else () = rejop("ff:usunrek");
              continue;
              }   
// --------------------------------------------------------------------------------------              
              if (strin("--"+strcut(linia,5,5)+"--",txt5) > -1 or strin("--"+strcut(linia,1,5)+"--",txt5) > -1) {
              no = 4;
              if (strin("--"+strcut(linia,1,5)+"--",txt1) > -1) no = 0;
              dskwota = strcut(linia,6+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              if (strcut(linia,1+no,5) == "K_11>") k11 = stringnaliczbe(dskwota);
              if (strcut(linia,1+no,5) == "K_12>") k12 = stringnaliczbe(dskwota);
              if (strcut(linia,1+no,5) == "K_13>") k13 = stringnaliczbe(dskwota);
              if (strcut(linia,1+no,5) == "K_14>") k14 = stringnaliczbe(dskwota);
              if (strcut(linia,1+no,5) == "K_23>") k23 = stringnaliczbe(dskwota);
              if (strcut(linia,1+no,5) == "K_24>") k24 = stringnaliczbe(dskwota);
              if (strcut(linia,1+no,5) == "K_38>") k38 = stringnaliczbe(dskwota);
              continue;
              }   
// --------------------------------------------------------------------------------------              
             if (strin("--"+strcut(linia,5,5)+"--",txt2) > -1 or strin("--"+strcut(linia,1,5)+"--",txt2) > -1) {
              no = 4;
              if (strin("--"+strcut(linia,1,5)+"--",txt2) > -1) no = 0;
              dskwota = strcut(linia,6+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssuman = dssuman + stringnaliczbe(dskwota);
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",stringnaliczbe(dskwota));
              xrejwstawp_s("ff:vatpozdekln",strcut(linia,1+no,4));
              dsopis = "RESZTA";
              a = rejop("px:znajdzrek",strcut(linia,3+no,2));
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
                 xrejwstawp_s("ff:vatindeksVAT",dsopis);
                 break;
                }					 
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              continue;
              }   
              if (strin("--"+strcut(linia,5,5)+"--",txt3) > -1 or strin("--"+strcut(linia,1,5)+"--",txt3) > -1) {
              no = 4;
              if (strin("--"+strcut(linia,1,5)+"--",txt3) > -1) no = 0;
              dskwota = strcut(linia,6+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              xrejwstawp_k("ff:vatpodatek",stringnaliczbe(dskwota));
              xrejwstawp_s("ff:vatpozdeklv",strcut(linia,1+no,4));
              xrejwstawp_k("ff:vatkwotabrutto",kwotarop("+",rejwezp_k("ff:vatkwotanetto"),rejwezp_k("ff:vatpodatek"),2));
              dssumav = dssumav + stringnaliczbe(dskwota);
 			  if (not(kwotalop("=",rejwezp_k("ff:vatkwotanetto"),0) and kwotalop("=",rejwezp_k("ff:vatpodatek"),0))) () = rejop("ff:zapiszrek");
              else () = rejop("ff:usunrek");
              continue;
              }
              if (strin("--"+strcut(linia,5,5)+"--",txt4) > -1 or strin("--"+strcut(linia,1,5)+"--",txt4) > -1) {
              no = 4;
              if (strin("--"+strcut(linia,1,5)+"--",txt4) > -1) no = 0;
              dskwota = strcut(linia,6+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssumav = dssumav + stringnaliczbe(dskwota);
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
//              xrejwstawp_k("ff:vatkwotanetto",stringnaliczbe(dskwota));
              xrejwstawp_k("ff:vatpodatek",stringnaliczbe(dskwota));
              xrejwstawp_k("ff:vatkwotabrutto",kwotarop("+",rejwezp_k("ff:vatkwotanetto"),rejwezp_k("ff:vatpodatek"),2));
              xrejwstawp_s("ff:vatpozdeklv",strcut(linia,1+no,4));
              a = rejop("px:znajdzrek",strcut(linia,3+no,2));
              do {
                if (a) dsopis = rejwezp_s("px:dekp_kls");
                if (rejop("bk:znajdzrek",dsopis)) {
                  xrejwstawp_s("ff:vatindeksVAT",dsopis);
                  break;
                  }
                a = rejop("px:weznastepnyrekn");
                } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              if (not(kwotalop("=",rejwezp_k("ff:vatpodatek"),0))) () = rejop("ff:zapiszrek");
              else () = rejop("ff:usunrek");
              continue;
              }

              
              if (strcut(linia,6,15) == "SprzedazWiersz>" or strcut(linia,6,12) == "ZakupWiersz>" or strcut(linia,2,15) == "SprzedazWiersz>" or strcut(linia,2,12) == "ZakupWiersz>"){
              no = 4;
              if (strcut(linia,2,15) == "SprzedazWiersz>" or strcut(linia,2,12) == "ZakupWiersz>") no = 0;
// dodanie kwot z k11 - k14
			  if(not(k12+0 == 0)) {
              dssuman = dssuman + k12;
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",k12);
              xrejwstawp_k("ff:vatkwotabrutto",k12);
              xrejwstawp_s("ff:vatpozdekln","K_12");
              xrejwstawp_s("ff:vatpozdeklv","K_11");
              a = rejop("px:znajdzrek","12");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
     			  }
			  if (not(round(k11 - k12,2)== 0)){
              dssuman = dssuman + k11 - k12;
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",k11-k12);
              xrejwstawp_k("ff:vatkwotabrutto",k11 - k12);
              xrejwstawp_s("ff:vatpozdekln","K_11");
              a = rejop("px:znajdzrek","11");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
			     if (strin("--"+dsopis+"--",k12s)<0) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                   }
				 }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
			  }
// -------------------------------------------------------------------------
			  if(not(k14+0 == 0)) {
              dssuman = dssuman + k14;
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",k14);
              xrejwstawp_k("ff:vatkwotabrutto",k14);
              xrejwstawp_k("ff:vatpodatek",0);
              xrejwstawp_s("ff:vatpozdekln","K_14");
              xrejwstawp_s("ff:vatpozdeklv","K_13");
              a = rejop("px:znajdzrek","14");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
     			  }
			  if (not(round(k13 - k14,2)== 0)){
              dssuman = dssuman + k13 - k14;
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",k13-k14);
              xrejwstawp_k("ff:vatpodatek",0);
              xrejwstawp_k("ff:vatkwotabrutto",k13 - k14);
              xrejwstawp_s("ff:vatpozdekln","K_13");
              a = rejop("px:znajdzrek","13");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
			     if (strin("--"+dsopis+"--",k14s)<0) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                   }
				 }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
			  }
//		okalert("k23="+string(k23),"k24="+string(k24),"k38="+string(k38)+"faktura="+rejwezp_s("fe:vatsymdok"));
        	if(not(kwotalop("=",k24,0))) {
              if(kwotalop("=",k38,k24)){
			  dssuman = dssuman + k23;
			  dssumav = dssumav + k38;
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",k23);
              xrejwstawp_k("ff:vatpodatek",k38);
              xrejwstawp_k("ff:vatkwotabrutto",k23+k38);
              xrejwstawp_s("ff:vatpozdekln","");
              xrejwstawp_s("ff:vatpozdeklv","K_38");
              a = rejop("px:znajdzrek","38");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
        }
			  if(kwotalop("=",k38,0)){
              dssuman = dssuman+k23;
              dssumav = dssumav+k24;
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",k23);
              xrejwstawp_k("ff:vatpodatek",k24);
              xrejwstawp_k("ff:vatkwotabrutto",k23+k24);
              xrejwstawp_s("ff:vatpozdekln","K_23");
            xrejwstawp_s("ff:vatpozdeklv","");
              a = rejop("px:znajdzrek","23");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
			     if (strin("--"+dsopis+"--",k38s)<0) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                   }
     }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
     }
			  if(not(k38==0) and round(k24-k38,2)>0){
              dssuman = dssuman+k23;
              dssumav = dssumav+k24;
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",k23);
              xrejwstawp_k("ff:vatpodatek",k24-k38);
              xrejwstawp_k("ff:vatkwotabrutto",k23+k24-k38);
              xrejwstawp_s("ff:vatpozdekln","K_23");
             xrejwstawp_s("ff:vatpozdeklv","");
              a = rejop("px:znajdzrek","23");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
			     if (strin("--"+dsopis+"--",k38s)<0) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                   }
				 }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
			  () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",0);
              xrejwstawp_k("ff:vatpodatek",k38);
              xrejwstawp_k("ff:vatkwotabrutto",k38);
              xrejwstawp_s("ff:vatpozdekln","");
              xrejwstawp_s("ff:vatpozdeklv","K_38");
              a = rejop("px:znajdzrek","38");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
				 }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
               }
			  }
              else{
			  if(not(k23+0==0)){
              dssuman = dssuman+k23;
              dssumav = dssumav+k24;
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",k23);
              xrejwstawp_k("ff:vatpodatek",k24);
              xrejwstawp_k("ff:vatkwotabrutto",k23+k24);
              xrejwstawp_s("ff:vatpozdekln","K_23");
              xrejwstawp_s("ff:vatpozdeklv","K_24");
              a = rejop("px:znajdzrek","23");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
			     if (strin("--"+dsopis+"--",k38s)<0) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                   }
				 }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
			  }
			  }
			  k11 = 0;
			  k12 = 0;
			  k13 = 0;
			  k14 = 0;
			  k23 = 0;
			  k24 = 0;
			  k38 = 0;
// -------------------------------------------------------------------------
              xrejwstawp_k("fe:vatsumanetto",dssuman+0);
              xrejwstawp_k("fe:vatsumaVAT",dssumav+0);
              xrejwstawp_k("fe:vatsumabrutto",dssuman + dssumav+0);
              xrejwstawp_k("fe:vatkwotazapl",dssuman + dssumav+0);
              xrejwstawp_s("fe:vattyp","F");
              xrejwstawp_s("fe:vatstatus","inny");
//              if (pustepole("fe:vatdataspr")) xrejwstawp_d("fe:vatdataspr",rejwezp_d("fe:vatdatadok"));
//              if (pustepole("fe:vatdatadok")) xrejwstawp_d("fe:vatdatadok",rejwezp_d("fe:vatdataspr"));
              if (strcut(linia,2+no,15) == "SprzedazWiersz>") xrejwstawp_l("fe:vatstrona",0);
              if (strcut(linia,2+no,12) == "ZakupWiersz>") 
                  {
                   xrejwstawp_l("fe:vatstrona",1);
//                   if (pustepole("fe:vatdatadok")) xrejwstawp_d("fe:vatdatadok",rejwezp_d("fe:vatdataspr"));
                  }
              xrejwstawp_s("fe:vatokr",daj_zS("okres"));
              xrejwstawp_s("fe:vatform","JPK_VAT");
              xrejwstawp_s("fe:vatdatawytw",daj_zS("vatdatawytw"));
              xrejwstawp_s("fe:vatopis",daj_zS("opis_imp"));
              () = rejop("fe:zapiszrek");
              continue;
              }
        }
     }
   () = ustawczekajinfo("Stop","");
    fclose(f3);
   return 1;
}

define odczytaj_fid_vat()
{
() = callalgfile("vat\syrena_vat.alg","wczytaj_vat_fid");
}

define odczytaj_jpk_vatdekl()
 {
    variable f3, poz, a;
   variable linia, dsid = 0, dstrans,liniax, linia_konw="";
   variable dssuman = 0, dssumav = 0, dsopis, dsdat, dskwota, no, gtu = "--";
   variable txt1 = "--K_10>--K_21>--K_22>--";
   variable txt2 = "--K_15>--K_17>--K_19>--K_25>--K_27>--K_29>--K_31>--K_40>--K_42>--";
   variable txt3 = "--K_16>--K_18>--K_20>--K_26>--K_28>--K_30>--K_32>--K_41>--K_43>--";
   variable txt4 = "--K_33>--K_34>--K_36>--K_44>--K_45>--K_46>--K_47>--";
   variable txt5 = "--K_11>--K_12>--K_13>--K_14>--K_35>--K_23>--K_24>--";
   variable k12s="", k14s="", k35s = "", k23s = "", k11 = 0, k12 = 0, k13 = 0, k14 = 0, k23 = 0, k24 = 0, k35 = 0;
   variable in = dajazmienna_S("PLIK_WEJ");
   f3 = fopen(in,"r");
   if (f3 == NULL)
     {
	gl_ustaw_errmess("Nie mo|zna otworzy|c pliku " + in + " !");
	gl_alert_errmess();
	return 0;
     }
    () = ustawczekajinfo("Start4","Wczytanie faktur. Prosz|e czeka|c ...");
     () = rejop("bk:otworzrej","REJKLASVAT.RXR");
    () = rejop("pa:otworzrejtemp","vat_dekp.rjr");
    () = rejop("px:otworzrejtemp","vat_dekp.rjr");
    () = rejop("ba:otworzrejsprawdz","vat_dekl.rjr");
    () = callalgfile("jpk_tworz_vat.alg","prep_vat_dekp");
//    () = rejop("px:zobaczdbf");
    () = rejop("px:zmienkluczrej","4");
// tu sprawdzenie dla K_12, K_14, K_35, K_23 jakie klasyfikacje
              if (rejop("px:znajdzrek","12")) {
              do {
               dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) k12s = k12s +"--"+ dsopis+"--";
               } while(() = rejop("px:weznastepnyrekn"));
            }
              if (rejop("px:znajdzrek","14")) {
              do {
               dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) k14s = k14s+"--"+ dsopis+"--";
               } while(() = rejop("px:weznastepnyrekn"));
            }
              if (rejop("px:znajdzrek","35")) {
              do {
               dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) k35s = k35s+"--"+ dsopis+"--";
               } while(() = rejop("px:weznastepnyrekn"));
            }
              if (rejop("px:znajdzrek","23")) {
              do {
               dsopis = rejwezp_s("px:dekp_kls");
			   if(strin("--"+dsopis+"--",k35s)>-1) continue;
               if (rejop("bk:znajdzrek",dsopis)) k23s = k23s+"--"+ dsopis+"--";
               } while(() = rejop("px:weznastepnyrekn"));
            }
// ------------------------------------------------------------
     while (fgets(&linia,f3) != -1) {
      if (not(linia == "")) 
     {
     () = ustawczekajinfo("Nastepny","Next");
      linia = strtrim_beg(linia);
    linia = gl_konwertuj_import_polskie_utf_8(linia);
    linia = gl_konwertujpaleczki(linia);
//      okalert("linia odczyt="+linia);

  if (strcut(linia,5,4) =="Rok>" or strcut(linia,1,4) =="Rok>") {
              no = 4;
              if (strcut(linia,1,4) =="Rok>") no = 0;
              dsopis = strcut(linia,5+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("okres",strcut(dsopis,2,2));
//			  okalert("0 okres=."+daj_zS("okres")+".");
              continue;
              }
              
 if (strcut(linia,5,8) =="Miesiac>" or strcut(linia,1,8) =="Miesiac>") {
              no = 4;
              if(strcut(linia,1,8) =="Miesiac>") no = 0;
              dsopis = strcut(linia,9+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
//			  okalert("miesiac=."+dsopis+".");
			  if(stringnaliczbe(dsopis)<10) dsopis = "0"+dsopis;
			  ustaw_zS("okres",daj_zS("okres")+"."+dsopis);
			  ustaw_zD("data_od", stringnadate(daj_zS("okres")+".01"));
//			  okalert("okres=."+daj_zS("okres")+".","data_od=."+datanas(daj_zD("data_od")));
			  ustaw_zD("data_do",datarop("+",daj_zD("data_od"),32));
			  ustaw_zD("data_do",datarop("-",daj_zD("data_do"),a_date(daj_zD("data_do"),"D")));
			  ustaw_zS("okres",datanas(daj_zD("data_od"))+"-"+datanas(daj_zD("data_do")));
			  ustaw_zD("data_obow",daj_zD("data_do"));
//			  okalert("1");
              continue;
              }
  
  if (strcut(linia,5,19) =="DataWytworzeniaJPK>" or strcut(linia,1,19) =="DataWytworzeniaJPK>") {
              no = 4;
              if (strcut(linia,1,19) =="DataWytworzeniaJPK>") no = 0;
              dsopis = strcut(linia,20+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
              dsopis = daj_zS("d_string");
			  dsopis = strcut(dsopis,0,4)+"."+strcut(dsopis,5,2)+"."+strcut(dsopis,8,2)+"/"+strcut(dsopis,11,8);
              ustaw_zS("vatdatawytw",dsopis);
//			  okalert("2");
              continue;
              }
//      okalert("linia="+linia);

              if (strcut(linia,2,3) == "xml") continue;
              if (strcut(linia,5,14) == "SprzedazWiersz" or strcut(linia,5,11) == "ZakupWiersz" or strcut(linia,1,14) == "SprzedazWiersz" or strcut(linia,1,11) == "ZakupWiersz"){
              () = rejop("fe:dodajrek");
              dsid = rejwezp_i("fe:vatid"); 
              dssuman = 0;
              dssumav = 0;
			  gtu = "--";
//			  okalert("3");
              continue;
              }
              
              if (strcut(linia,5,16) == "DataWystawienia>" or strcut(linia,1,16) == "DataWystawienia>"){
              no = 4;
              if (strcut(linia,1,16) == "DataWystawienia>") no = 0;
              dsdat = strcut(linia,19+no,2)+"."+strcut(linia,22+no,2)+"."+strcut(linia,25+no,2);
//			  okalert("dsdat="+dsdat);
              xrejwstawp_d("fe:vatdatadok",stringnadate(dsdat));
              xrejwstawp_d("fe:vatdataobow",daj_zD("data_obow"));
//			  okalert("4");
              continue;
              }
              
              if (strcut(linia,5,11) == "DataWplywu>" or strcut(linia,1,11) == "DataWplywu>"){
              no = 4;
              if (strcut(linia,1,11) == "DataWplywu>") no = 0;
              dsdat = strcut(linia,14+no,2)+"."+strcut(linia,17+no,2)+"."+strcut(linia,20+no,2);
              xrejwstawp_d("fe:vatdataspr",stringnadate(dsdat));
//			  okalert("5");
              continue;
              }
              
              if (strcut(linia,5,14) == "DataSprzedazy>" or strcut(linia,1,14) == "DataSprzedazy>"){
              no = 4;
              if (strcut(linia,1,14) == "DataSprzedazy>") no = 0;
              dsdat = strcut(linia,17+no,2)+"."+strcut(linia,20+no,2)+"."+strcut(linia,23+no,2);
              xrejwstawp_d("fe:vatdataspr",stringnadate(dsdat));
//			  okalert("6");
              continue;
              }

              if (strcut(linia,5,11) == "DataZakupu>" or strcut(linia,1,11) == "DataZakupu>"){
              no = 4;
              if (strcut(linia,1,11) == "DataZakupu>") no = 0;
              dsdat = strcut(linia,14+no,2)+"."+strcut(linia,17+no,2)+"."+strcut(linia,20+no,2);
              xrejwstawp_d("fe:vatdatadok",stringnadate(dsdat));
              xrejwstawp_d("fe:vatdataobow",daj_zD("data_obow"));
//			  okalert("7");
              continue;
              }
              
              if (strcut(linia,5,13) == "TypDokumentu>" or strcut(linia,1,13) == "TypDokumentu>"){
              no = 4;
              if (strcut(linia,1,13) == "TypDokumentu>") no = 0;
              dsopis = strcut(linia,14+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if(dsopis == "RO")  xrejwstawp_s("fe:vattyp","RO");
              if(dsopis == "FP")  xrejwstawp_s("fe:vattyp","PV");
              if(dsopis == "WEW")  xrejwstawp_s("fe:vattyp","WE");
//			  okalert("8");
              continue;
              }

              if (strcut(linia,5,15) == "DokumentZakupu>" or strcut(linia,1,15) == "DokumentZakupu>"){
              no = 4;
              if (strcut(linia,1,15) == "DokumentZakupu>") no = 0;
              dsopis = strcut(linia,16+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if(dsopis == "MK")  xrejwstawp_s("fe:vattyp","MP");
              if(dsopis == "VAT_RR")  xrejwstawp_s("fe:vattyp","RR");
              if(dsopis == "WEW")  xrejwstawp_s("fe:vattyp","WE");
//			  okalert("9");
              continue;
              }

              if (strcut(linia,5,15) == "DowodSprzedazy>" or strcut(linia,1,15) == "DowodSprzedazy>"){
              no = 4;
              if (strcut(linia,1,15) == "DowodSprzedazy>") no = 0;
              dsopis = strcut(linia,16+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
              dsopis = daj_zS("d_string");
              xrejwstawp_s("fe:vatsymdok",dsopis);
              xrejwstawp_s("fe:vatrejestr","OUT_S");
//			  okalert("10");
              continue;
              }
              
              if (strcut(linia,5,12) == "DowodZakupu>" or strcut(linia,1,12) == "DowodZakupu>"){
              no = 4;
              if (strcut(linia,1,12) == "DowodZakupu>") no = 0;
              dsopis = strcut(linia,13+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
              dsopis = daj_zS("d_string");
              xrejwstawp_s("fe:vatsymdok",dsopis);
              xrejwstawp_s("fe:vatrejestr","OUT_Z");
//			  okalert("11");
              continue;
              }
              
              if (strcut(linia,5,17) == "NazwaKontrahenta>" or strcut(linia,1,17) == "NazwaKontrahenta>"){
              no = 4;
              if (strcut(linia,1,17) == "NazwaKontrahenta>") no = 0;
              dsopis = strcut(linia,18+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              () = callalg("zamien_hash");
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "") dsopis = "brak";
              xrejwstawp_s("fe:vatnazwa",dsopis);
///			  okalert("12");
              continue;
              }
              
              if (strcut(linia,5,14) == "NazwaDostawcy>" or strcut(linia,1,14) == "NazwaDostawcy>"){
              no = 4;
              if (strcut(linia,1,14) == "NazwaDostawcy>") no = 0;
              dsopis = strcut(linia,15+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              () = callalg("zamien_hash");
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "") dsopis = "brak";
              xrejwstawp_s("fe:vatnazwa",dsopis);
//			  okalert("13");
              continue;
              }
              
              if (strcut(linia,5,19) == "KodKrajuNadaniaTin>" or strcut(linia,1,19) == "KodKrajuNadaniaTin>"){
              no = 4;
              if (strcut(linia,1,19) == "KodKrajuNadaniaTin>") no = 0;
              dsopis = strcut(linia,20+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
              () = callalg("zamiana_kresek");
              dsopis = daj_zS("d_string");
              if (dsopis == "brak") dsopis = "";
              xrejwstawp_s("fe:kod_ue",dsopis);
//			  okalert("14");
              continue;
              }

              if (strcut(linia,5,14) == "NrKontrahenta>" or strcut(linia,1,14) == "NrKontrahenta>"){
              no = 4;
              if (strcut(linia,1,14) == "NrKontrahenta>") no = 0;
              dsopis = strcut(linia,15+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
//              () = callalg("zamiana_kresek");
              dsopis = daj_zS("d_string");
//okalert("nrkontrahenta dsopis=."+dsopis+".");
              if (dsopis == "brak") dsopis = "";
//okalert("nrkontrahenta dsopis2=."+dsopis+".","kod_ue=."+rejwezp_s["fe:kod_ue"));
              if (pustepole("fe:kod_ue")) xrejwstawp_s("fe:vatnip",dsopis);
              else xrejwstawp_s("fe:nip_ue",dsopis);
//			  okalert("22");
              continue;
              }

  
              if (strcut(linia,5,11) == "NrDostawcy>" or strcut(linia,1,11) == "NrDostawcy>"){
              no = 4;
              if (strcut(linia,1,11) == "NrDostawcy>") no = 0;
              dsopis = strcut(linia,12+no,strlen(linia));
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              ustaw_zS("d_string",dsopis);
              () = callalg("usun_spacje");
              () = callalg("zamiana_kresek");
              dsopis = daj_zS("d_string");
              if (dsopis == "brak") dsopis = "";
              if (pustepole("fe:kod_ue")) xrejwstawp_s("fe:vatnip",dsopis);
              else xrejwstawp_s("fe:nip_ue",dsopis);
              continue;
              }
			  
              if (strcut(linia,5,7) == "GTU_01>" or strcut(linia,1,7) == "GTU_01>"){
              no = 4;
              if (strcut(linia,1,7) == "GTU_01>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") gtu = gtu+"01--";
              continue;
              }
              
              if (strcut(linia,5,7) == "GTU_02>" or strcut(linia,1,7) == "GTU_02>"){
              no = 4;
              if (strcut(linia,1,7) == "GTU_02>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") gtu = gtu+"02--";
              continue;
              }
              if (strcut(linia,5,7) == "GTU_03>" or strcut(linia,1,7) == "GTU_03>"){
              no = 4;
              if (strcut(linia,1,7) == "GTU_03>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") gtu = gtu+"03--";
              continue;
              }
              if (strcut(linia,5,7) == "GTU_04>" or strcut(linia,1,7) == "GTU_04>"){
              no = 4;
              if (strcut(linia,1,7) == "GTU_04>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") gtu = gtu+"04--";
              continue; 
			  }
			  if (strcut(linia,5,7) == "GTU_05>" or strcut(linia,1,7) == "GTU_05>"){
              no = 4;
              if (strcut(linia,1,7) == "GTU_05>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") gtu = gtu+"05--";
              continue;
              }
              if (strcut(linia,5,7) == "GTU_06>" or strcut(linia,1,7) == "GTU_06>"){
              no = 4;
              if (strcut(linia,1,7) == "GTU_06>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") gtu = gtu+"06--";
              continue;
			  }
              if (strcut(linia,5,7) == "GTU_07>" or strcut(linia,1,7) == "GTU_07>"){
              no = 4;
              if (strcut(linia,1,7) == "GTU_07>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") gtu = gtu+"07--";
              continue;
              }
              if (strcut(linia,5,7) == "GTU_08>" or strcut(linia,1,7) == "GTU_08>"){
              no = 4;
              if (strcut(linia,1,7) == "GTU_08>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") gtu = gtu+"08--";
              continue;
			  }
              if (strcut(linia,5,7) == "GTU_09>" or strcut(linia,1,7) == "GTU_09>"){
              no = 4;
              if (strcut(linia,1,7) == "GTU_09>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") gtu = gtu+"09--";
              continue;
              }
              if (strcut(linia,5,7) == "GTU_10>" or strcut(linia,1,7) == "GTU_10>"){
              no = 4;
              if (strcut(linia,1,7) == "GTU_10>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") gtu = gtu+"10--";
              continue;
              }

              if (strcut(linia,5,7) == "GTU_11>" or strcut(linia,1,7) == "GTU_11>"){
              no = 4;
              if (strcut(linia,1,7) == "GTU_11>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") gtu = gtu+"11--";
              continue;
              }
              if (strcut(linia,5,7) == "GTU_12>" or strcut(linia,1,7) == "GTU_12>"){
              no = 4;
              if (strcut(linia,1,7) == "GTU_12>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") gtu = gtu+"12--";
              continue;
              }
              if (strcut(linia,5,7) == "GTU_13>" or strcut(linia,1,7) == "GTU_13>"){
              no = 4;
              if (strcut(linia,1,7) == "GTU_13>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") gtu = gtu+"13--";
              continue;
              }
// --------------------------------------------------------------------------------------              
              if (strcut(linia,5,3) == "SW>" or strcut(linia,1,3) == "SW>"){
              no = 4;
              if (strcut(linia,1,3) == "SW>") no = 0;
              dsopis = strcut(linia,4+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") xrejwstawp_l("fe:vat_SW",1);
              continue;
              }

              if (strcut(linia,5,3) == "EE>" or strcut(linia,1,3) == "EE>"){
              no = 4;
              if (strcut(linia,1,3) == "EE>") no = 0;
              dsopis = strcut(linia,4+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") xrejwstawp_l("fe:vat_EE",1);
              continue;
              }

              if (strcut(linia,5,3) == "TP>" or strcut(linia,1,3) == "TP>"){
              no = 4;
              if (strcut(linia,1,3) == "TP>") no = 0;
              dsopis = strcut(linia,4+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") xrejwstawp_l("fe:vat_TP",1);
              continue;
              }

              if (strcut(linia,5,5) == "TT_D>" or strcut(linia,1,5) == "TT_D>"){
              no = 4;
              if (strcut(linia,1,5) == "TT_D>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1")
			     { xrejwstawp_l("fe:trojstr",1);
				   xrejwstawp_s("fe:vattyp","WD");
				   }
              continue;
              }

              if (strcut(linia,5,7) == "TT_WNT>" or strcut(linia,1,7) == "TT_WNT>"){
              no = 4;
              if (strcut(linia,1,7) == "TT_WNT>") no = 0;
              dsopis = strcut(linia,8+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") {
			       xrejwstawp_l("fe:trojstr",1);
				   xrejwstawp_s("fe:vattyp","WN");
				   }
              continue;
              }

              if (strcut(linia,5,5) == "MR_T>" or strcut(linia,1,5) == "MR_T>"){
              no = 4;
              if (strcut(linia,1,5) == "MR_T>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") xrejwstawp_l("fe:vat_MR_T",1);
              continue;
              }

              if (strcut(linia,5,6) == "MR_UZ>" or strcut(linia,1,6) == "MR_UZ>"){
              no = 4;
              if (strcut(linia,1,6) == "MR_UZ>") no = 0;
              dsopis = strcut(linia,7+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") xrejwstawp_l("fe:vat_MR_UZ",1);
              continue;
              }

              if (strcut(linia,5,5) == "I_42>" or strcut(linia,1,5) == "I_42>"){
              no = 4;
              if (strcut(linia,1,5) == "I_42>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") xrejwstawp_l("fe:vat_I_42",1);
              continue;
              }

              if (strcut(linia,5,5) == "I_63>" or strcut(linia,1,5) == "I_63>"){
              no = 4;
              if (strcut(linia,1,5) == "I_63>") no = 0;
              dsopis = strcut(linia,6+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") xrejwstawp_l("fe:vat_I_63",1);
              continue;
              }

              if (strcut(linia,5,6) == "B_SPV>" or strcut(linia,1,6) == "B_SPV>"){
              no = 4;
              if (strcut(linia,1,6) == "B_SPV>") no = 0;
              dsopis = strcut(linia,7+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") xrejwstawp_l("fe:vat_B_SPV",1);
              continue;
              }

              if (strcut(linia,5,14) == "B_SPV_DOSTAWA>" or strcut(linia,1,14) == "B_SPV_DOSTAWA>"){
              no = 4;
              if (strcut(linia,1,14) == "B_SPV_DOSTAWA>") no = 0;
              dsopis = strcut(linia,15+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") xrejwstawp_l("fe:vat_B_SPV_DOSTAWA",1);
              continue;
              }

              if (strcut(linia,5,15) == "B_MPV_PROWIZJA>" or strcut(linia,1,15) == "B_MPV_PROWIZJA>"){
              no = 4;
              if (strcut(linia,1,15) == "B_MPV_PROWIZJA>") no = 0;
              dsopis = strcut(linia,16+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") xrejwstawp_l("fe:vat_B_MPV_PROWIZJA",1);
              continue;
              }

              if (strcut(linia,5,4) == "MPP>" or strcut(linia,1,4) == "MPP>"){
              no = 4;
              if (strcut(linia,1,4) == "MPP>") no = 0;
              dsopis = strcut(linia,5+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") xrejwstawp_l("fe:vat_MPP",1);
              continue;
              }

              if (strcut(linia,5,4) == "IMP>" or strcut(linia,1,4) == "IMP>"){
              no = 4;
              if (strcut(linia,1,4) == "IMP>") no = 0;
              dsopis = strcut(linia,5+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") xrejwstawp_l("fe:vat_IMP",1);
              continue;
              }
			  
             if (strcut(linia,5,18) == "SprzedazVAT_Marza>" or strcut(linia,1,18) == "SprzedazVAT_Marza>"){
              no = 4;
              if (strcut(linia,1,18) == "SprzedazVAT_Marza>") no = 0;
              dskwota = strcut(linia,19+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              if (not(stringnaliczbe(dskwota) == 0)) xrejwstawp_s("fe:vattyp","FT");
              continue;
              }

             if (strcut(linia,5,15) == "ZakupVAT_Marza>" or strcut(linia,1,15) == "ZakupVAT_Marza>"){
              no = 4;
              if (strcut(linia,1,15) == "ZakupVAT_Marza>") no = 0;
              dskwota = strcut(linia,16+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              if (not(stringnaliczbe(dskwota) == 0)) xrejwstawp_s("fe:vattyp","FT");
              continue;
              }

// --------------------------------------------------------------------------------------              
              if (strcut(linia,5,21) == "KorektaPodstawyOpodt>" or strcut(linia,1,21) == "KorektaPodstawyOpodt>"){
              no = 4;
              if (strcut(linia,1,21) == "KorektaPodstawyOpodt>") no = 0;
              dsopis = strcut(linia,22+no,strlen(linia));
              ustaw_zS("d_string",dsopis);
              dsopis = daj_zS("d_string");
              dsopis = strcut(dsopis,0,strin("<",dsopis));
              if (dsopis == "1") xrejwstawp_l("fe:szd",1);
              continue;
              }

// --------------------------------------------------------------------------------------              
              if (strin("--"+strcut(linia,5,5)+"--",txt1) > -1 or strin("--"+strcut(linia,1,5)+"--",txt1) > -1) {
              no = 4;
              if (strin("--"+strcut(linia,1,5)+"--",txt1) > -1) no = 0;
              dskwota = strcut(linia,6+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssuman = dssuman + stringnaliczbe(dskwota);
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",stringnaliczbe(dskwota));
              xrejwstawp_k("ff:vatkwotabrutto",stringnaliczbe(dskwota));
              xrejwstawp_s("ff:vatpozdekln",strcut(linia,1+no,4));
              a = rejop("px:znajdzrek",strcut(linia,3+no,2));
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              if (not(kwotalop("=",rejwezp_k("ff:vatkwotanetto"),0))) () = rejop("ff:zapiszrek");
              else () = rejop("ff:usunrek");
              continue;
              }   
// --------------------------------------------------------------------------------------              
              if (strin("--"+strcut(linia,5,5)+"--",txt5) > -1 or strin("--"+strcut(linia,1,5)+"--",txt5) > -1) {
              no = 4;
              if (strin("--"+strcut(linia,1,5)+"--",txt1) > -1) no = 0;
              dskwota = strcut(linia,6+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              if (strcut(linia,1+no,5) == "K_11>") k11 = stringnaliczbe(dskwota);
              if (strcut(linia,1+no,5) == "K_12>") k12 = stringnaliczbe(dskwota);
              if (strcut(linia,1+no,5) == "K_13>") k13 = stringnaliczbe(dskwota);
              if (strcut(linia,1+no,5) == "K_14>") k14 = stringnaliczbe(dskwota);
              if (strcut(linia,1+no,5) == "K_23>") k23 = stringnaliczbe(dskwota);
              if (strcut(linia,1+no,5) == "K_24>") k24 = stringnaliczbe(dskwota);
              if (strcut(linia,1+no,5) == "K_35>") k35 = stringnaliczbe(dskwota);
              continue;
              }   
// --------------------------------------------------------------------------------------              
             if (strin("--"+strcut(linia,5,5)+"--",txt2) > -1 or strin("--"+strcut(linia,1,5)+"--",txt2) > -1) {
              no = 4;
              if (strin("--"+strcut(linia,1,5)+"--",txt2) > -1) no = 0;
              dskwota = strcut(linia,6+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssuman = dssuman + stringnaliczbe(dskwota);
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",stringnaliczbe(dskwota));
              xrejwstawp_s("ff:vatpozdekln",strcut(linia,1+no,4));
              dsopis = "RESZTA";
              a = rejop("px:znajdzrek",strcut(linia,3+no,2));
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
                 xrejwstawp_s("ff:vatindeksVAT",dsopis);
                 break;
                }					 
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              continue;
              }   
              if (strin("--"+strcut(linia,5,5)+"--",txt3) > -1 or strin("--"+strcut(linia,1,5)+"--",txt3) > -1) {
              no = 4;
              if (strin("--"+strcut(linia,1,5)+"--",txt3) > -1) no = 0;
              dskwota = strcut(linia,6+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              xrejwstawp_k("ff:vatpodatek",stringnaliczbe(dskwota));
              xrejwstawp_s("ff:vatpozdeklv",strcut(linia,1+no,4));
              xrejwstawp_k("ff:vatkwotabrutto",kwotarop("+",rejwezp_k("ff:vatkwotanetto"),rejwezp_k("ff:vatpodatek"),2));
              dssumav = dssumav + stringnaliczbe(dskwota);
 			  if (not(kwotalop("=",rejwezp_k("ff:vatkwotanetto"),0) and kwotalop("=",rejwezp_k("ff:vatpodatek"),0))) () = rejop("ff:zapiszrek");
              else () = rejop("ff:usunrek");
              continue;
              }
              if (strin("--"+strcut(linia,5,5)+"--",txt4) > -1 or strin("--"+strcut(linia,1,5)+"--",txt4) > -1) {
              no = 4;
              if (strin("--"+strcut(linia,1,5)+"--",txt4) > -1) no = 0;
              dskwota = strcut(linia,6+no,strlen(linia));
              dskwota = strcut(dskwota,0,strin("<",dskwota));
              dssumav = dssumav + stringnaliczbe(dskwota);
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
//              xrejwstawp_k("ff:vatkwotanetto",stringnaliczbe(dskwota));
              xrejwstawp_k("ff:vatpodatek",stringnaliczbe(dskwota));
              xrejwstawp_k("ff:vatkwotabrutto",kwotarop("+",rejwezp_k("ff:vatkwotanetto"),rejwezp_k("ff:vatpodatek"),2));
              xrejwstawp_s("ff:vatpozdeklv",strcut(linia,1+no,4));
              a = rejop("px:znajdzrek",strcut(linia,3+no,2));
              do {
                if (a) dsopis = rejwezp_s("px:dekp_kls");
                if (rejop("bk:znajdzrek",dsopis)) {
                  xrejwstawp_s("ff:vatindeksVAT",dsopis);
                  break;
                  }
                a = rejop("px:weznastepnyrekn");
                } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              if (not(kwotalop("=",rejwezp_k("ff:vatpodatek"),0))) () = rejop("ff:zapiszrek");
              else () = rejop("ff:usunrek");
              continue;
              }

              
              if (strcut(linia,6,15) == "SprzedazWiersz>" or strcut(linia,6,12) == "ZakupWiersz>" or strcut(linia,2,15) == "SprzedazWiersz>" or strcut(linia,2,12) == "ZakupWiersz>"){
              no = 4;
              if (strcut(linia,2,15) == "SprzedazWiersz>" or strcut(linia,2,12) == "ZakupWiersz>") no = 0;
// dodanie kwot z k11 - k14
			  if(not(k12+0 == 0)) {
              dssuman = dssuman + k12;
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",k12);
              xrejwstawp_k("ff:vatkwotabrutto",k12);
              xrejwstawp_s("ff:vatpozdekln","K_12");
              xrejwstawp_s("ff:vatpozdeklv","K_11");
              a = rejop("px:znajdzrek","12");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
     			  }
			  if (not(round(k11 - k12,2)== 0)){
              dssuman = dssuman + k11 - k12;
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",k11-k12);
              xrejwstawp_k("ff:vatkwotabrutto",k11 - k12);
              xrejwstawp_s("ff:vatpozdekln","K_11");
              a = rejop("px:znajdzrek","11");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
			     if (strin("--"+dsopis+"--",k12s)<0) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                   }
				 }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
			  }
// -------------------------------------------------------------------------
			  if(not(k14+0 == 0)) {
              dssuman = dssuman + k14;
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",k14);
              xrejwstawp_k("ff:vatkwotabrutto",k14);
              xrejwstawp_k("ff:vatpodatek",0);
              xrejwstawp_s("ff:vatpozdekln","K_14");
              xrejwstawp_s("ff:vatpozdeklv","K_13");
              a = rejop("px:znajdzrek","14");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
     			  }
			  if (not(round(k13 - k14,2)== 0)){
              dssuman = dssuman + k13 - k14;
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",k13-k14);
              xrejwstawp_k("ff:vatpodatek",0);
              xrejwstawp_k("ff:vatkwotabrutto",k13 - k14);
              xrejwstawp_s("ff:vatpozdekln","K_13");
              a = rejop("px:znajdzrek","13");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
			     if (strin("--"+dsopis+"--",k14s)<0) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                   }
				 }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
			  }
//		okalert("k23="+string(k23),"k24="+string(k24),"k38="+string(k35)+"faktura="+rejwezp_s("fe:vatsymdok"));
        	if(not(kwotalop("=",k24,0))) {
              if(kwotalop("=",k35,k24)){
			  dssuman = dssuman + k23;
			  dssumav = dssumav + k35;
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",k23);
              xrejwstawp_k("ff:vatpodatek",k35);
              xrejwstawp_k("ff:vatkwotabrutto",k23+k35);
              xrejwstawp_s("ff:vatpozdekln","");
              xrejwstawp_s("ff:vatpozdeklv","K_35");
              a = rejop("px:znajdzrek","35");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
        }
			  if(kwotalop("=",k35,0)){
              dssuman = dssuman+k23;
              dssumav = dssumav+k24;
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",k23);
              xrejwstawp_k("ff:vatpodatek",k24);
              xrejwstawp_k("ff:vatkwotabrutto",k23+k24);
              xrejwstawp_s("ff:vatpozdekln","K_23");
            xrejwstawp_s("ff:vatpozdeklv","");
              a = rejop("px:znajdzrek","23");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
			     if (strin("--"+dsopis+"--",k35s)<0) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                   }
     }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
     }
			  if(not(k35==0) and round(k24-k35,2)>0){
              dssuman = dssuman+k23;
              dssumav = dssumav+k24;
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",k23);
              xrejwstawp_k("ff:vatpodatek",k24-k35);
              xrejwstawp_k("ff:vatkwotabrutto",k23+k24-k35);
              xrejwstawp_s("ff:vatpozdekln","K_23");
             xrejwstawp_s("ff:vatpozdeklv","");
              a = rejop("px:znajdzrek","23");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
			     if (strin("--"+dsopis+"--",k35s)<0) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                   }
				 }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
			  () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",0);
              xrejwstawp_k("ff:vatpodatek",k35);
              xrejwstawp_k("ff:vatkwotabrutto",k35);
              xrejwstawp_s("ff:vatpozdekln","");
              xrejwstawp_s("ff:vatpozdeklv","K_35");
              a = rejop("px:znajdzrek","35");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
				 }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
               }
			  }
              else{
			  if(not(k23+0==0)){
              dssuman = dssuman+k23;
              dssumav = dssumav+k24;
              () = rejop("ff:dodajrek");
              xrejwstawp_s("ff:vatGUS","U");
              xrejwstawp_k("ff:vatkwotanetto",k23);
              xrejwstawp_k("ff:vatpodatek",k24);
              xrejwstawp_k("ff:vatkwotabrutto",k23+k24);
              xrejwstawp_s("ff:vatpozdekln","K_23");
              xrejwstawp_s("ff:vatpozdeklv","K_24");
              a = rejop("px:znajdzrek","23");
              do {
               if (a) dsopis = rejwezp_s("px:dekp_kls");
               if (rejop("bk:znajdzrek",dsopis)) {
			     if (strin("--"+dsopis+"--",k35s)<0) {
                xrejwstawp_s("ff:vatindeksVAT",dsopis);
                break;
                   }
				 }
               a = rejop("px:weznastepnyrekn");
               } while(a);
              xrejwstawp_i("ff:vatdofaktury",dsid);
              () = rejop("ff:zapiszrek");
			  }
			  }
			  k11 = 0;
			  k12 = 0;
			  k13 = 0;
			  k14 = 0;
			  k23 = 0;
			  k24 = 0;
			  k35 = 0;
// -------------------------------------------------------------------------
              xrejwstawp_k("fe:vatsumanetto",dssuman+0);
              xrejwstawp_k("fe:vatsumaVAT",dssumav+0);
              xrejwstawp_k("fe:vatsumabrutto",dssuman + dssumav+0);
              xrejwstawp_k("fe:vatkwotazapl",dssuman + dssumav+0);
              if (pustepole("fe:vattyp")) xrejwstawp_s("fe:vattyp","F");
              xrejwstawp_s("fe:vatstatus","inny");
              if (not(gtu == "--")) xrejwstawp_s("fe:vat_gtu",gtu);
//              if (pustepole("fe:vatdatadok")) xrejwstawp_d("fe:vatdatadok",rejwezp_d("fe:vatdataspr"));
              if (strcut(linia,2+no,15) == "SprzedazWiersz>") xrejwstawp_l("fe:vatstrona",0);
              if (strcut(linia,2+no,12) == "ZakupWiersz>") 
                  {
                   xrejwstawp_l("fe:vatstrona",1);
//                   if (pustepole("fe:vatdatadok")) xrejwstawp_d("fe:vatdatadok",rejwezp_d("fe:vatdataspr"));
                  }
              xrejwstawp_s("fe:vatokr",daj_zS("okres"));
              xrejwstawp_s("fe:vatform","JPK_V7M");
              xrejwstawp_s("fe:vatdatawytw",daj_zS("vatdatawytw"));
              xrejwstawp_s("fe:vatopis",daj_zS("opis_imp"));
              () = rejop("fe:zapiszrek");
              continue;
              }
        }
     }
   () = ustawczekajinfo("Stop","");
    fclose(f3);
   return 1;
}


define przepisz_plik_jpk_fa()
{
   %okalert("ssss");
   variable f3, poz, no = 0;
   variable linia, dsid = 0, dsopis;
   variable in = dajazmienna_S("PLIK_WEJ");
   ustaw_zS("formatka","");
   %okalert("in="+in);
   f3 = fopen(in,"r");
   if (f3 == NULL)
     {
	gl_ustaw_errmess("Nie mo|zna otworzy|c pliku " + in + " !");
	gl_alert_errmess();
	return 0;
     }
// tu sprawdzenie ile linii zawiera dokument jesli jedn¹ - to proba rozbicia na wiele linii i ustawienie ich jedna pod druga
     while (fgets(&linia,f3) != -1) {
      if (not(linia == "")) 
     {
     no = no+1;
     if (no>1) break;
     }
    } 
   fclose(f3);
if (no < 2) () = callalg("popraw_dokument");
   f3 = fopen(in,"r");
//    () = ustawczekajinfo("Start4","Wczytanie faktur. Prosz|e czeka|c ...");
     while (fgets(&linia,f3) != -1) {
      if (not(linia == "")) 
     {
     () = ustawczekajinfo("Nastepny","Next");
      linia = strtrim_beg(linia);
      linia = gl_konwertuj_import_polskie_utf_8(linia);
      linia = gl_konwertujpaleczki(linia);

//      okalert("linia="+linia);
      if (strcut(linia,2,3) == "xml") continue;
      if (strcut(linia,5,13) == "KodFormularza" or strcut(linia,1,13) == "KodFormularza") {
      poz = strin(">",linia);
      dsopis = strcut(linia,poz+1,strlen(linia));
      dsopis = strcut(dsopis,0,strin("<",dsopis));
      ustaw_zS("formatka",dsopis);
//	  okalert("aaa=."+strcut(linia,33,6));
	  if(strin("JPK_V7",linia)>-1) ustaw_zS("formatka",strcut(linia,strin("JPK_V7",linia),7));
	  
      break;
 }
    }
  } 
    fclose(f3);
//okalert("formatka=."+daj_zS("formatka")+".");
//  if (daj_zS("formatka") == "JPK_FA") odczytaj_jpk_fa();
  if (daj_zS("formatka") == "JPK_FA") odczytaj_jpk_fa_op();
  if (daj_zS("formatka") == "JPK_VAT") odczytaj_jpk_vat();
  if (daj_zS("formatka") == "JPK_V7M" or daj_zS("formatka") == "JPK_V7K") odczytaj_jpk_vatdekl();
//  if (daj_zS("formatka") == "") odczytaj_fid_vat();
 }


