//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//
// Perseus Spolka z o.o 
// Wszystkie prawa zastrzezone
// 
// Data utworzenia: 2001.09.01
// Historia zmian
//data 2016.08.03
// konwersja pierwotna, uruchomiono konwertowanie z xls do csv w linux 
// - dodoano sposob wywolywania konwetera z xls to csv (komenda wolajsystem w pliku int.alg)
// - konweter zmienia liczby na separtoe czesci dzisietnej jako kropka => dodano nowA funkcje do konwertowania liczb z 3 miejscami po przecinku liczna4.alg
//data 2012.02.13
// 1. w rejestrach z danymi zrodlowymi INT_TXTi.RXR na polu 101 dodano indeks
// 2. dodano moliwosc ksiegowania kazdego wczytywanego z paczki dokumentu w osobnym dokumencie ksiegowym. Warunki:
// - w *.cnv nalezy ustawic zmienn MAG_PS na .T.
// - dane, ktore maja byc w jednym dokumencie ksiegowym musza miec taki sam prefix
// - dane do opisu dokumentu w naglowku umieszczamy w na zmiennej rzrfak (pole BAZA_rzrfak).
3. slowniki zamiennikow - wydruk zamiennikow kont i kontrahnetow (plik int_prts.drk):
// - zmienino kolejnosc drukowania: teraz jest wedlug zmaiennika symbolu kontrahneta
// - na wydruku umieszczono dodoatkowo NIP kontrahneta
// data 2011.06.21
// - dodanie nipu wspolnotwoego (nip_ue) oraz kodu kraju (kod_ue) do danych firmy (INT_FIRM - firm_pronipue, firm_prokodue) - mozliwosc dopisania tych danych do rejestru kontrahnetow
// - w pliku cnv nalezy podstawic dane na pola w INT_FIRM: firm_pronipue oraz firm_prokodue
// data 2011.06.17
// - dodanie obslugi nowego pola dla vatu: czy tranaskacja trojstronan (vattrojstr) 
// - dodanie obslugi nowego pola dla vatu: kod_ue  (vatkodue) 
// - dodanie obslugi nowego pola dla vatu: nip_ue t(vatnipue) 
// - dodanie nowego typu dokumentu vat (vattyp): "WD" (dostawa wewnatrzwspolnotowa) oraz "WDK" (korekta)
// data 2011.06.16
// LICZBA3 - nowy konerter liczn; konwertuje liczby z 3 miejscami po przecinku
//poprawka 2011.05.19
//dodano mozliwosc wczytwania do VAT:
//- vatsposob: dla dokumentu VAT okresla sposob wyliczenia kwoty VAT: 
//	"B" od brutto (np. paragony), 
//	"N" od netto,
//	"S"lub pole niewypelnione - sumowanie stawek (tak jak by³o do tej pory)
//poprawka 2010.12.22
// zminiono numer buttonu do wyboru. Do tekj pory numer byl "45" i przestalo dzialac wybieranie polecen ksiegowania
//poprawka 2010.03.30
//1. dodoano nowy alg "liczba2.alg" do konwertowania stringu na kwote
//2. w calym pliku int.alg zamieniono zmienna "znak" na "znak_z" (byl blad niewlasciwy typ)
//poprawka 2010.03.25
//dodano nowo opcje "M" do definicji dekretow dla zapisow rozrcahunkowych. 
//polega to na tym, ze dla opcji "M" zapisy rozrachunkowe z koleejnych 
//linii zostana dodoane do tego samego zapisu rodzajowego (niezaleznie od symbolu i rodzju tranakacji)
//pozwoli to np na rozpisywanie jedej kwoty zaplaty na kilk atrnakcji w intrejsie.
//poprawka 2010.03.22
//dodoano funckje: pomiocnicze->usuwanie naglowkow transkacji
//pozwala obejrzec i usunsac transkacje bez zapisow
//poprawka 2010.02.26
//dodalam nowe symbole dokumentow do ksiegownai: XFV.... XKA (dla gamy)
//uwaga: trzeba dodoac nowe typy dokumentow wksiedze
//poprawka 2009.10.09
//1. wydluzylam pole na tresc operacji w rej int_baza i int_data do 100 znakow
//2. dodoalam kwote deiwz do zapisu rozrachunkowego
//poprawka 2009.09.08
//napidywanie terminu platnosci istniejacej w ksiedze podczas wczytywanie danych z interfesu:
//do tej pory bylo tak, ¿e nigdy nie nadpsiywal terminu platnosci transkacji istniejacej w ksiedze
// teraz mozna wczytac w parametrach i ustawic zmienna rzr_term_nad na .T.
// wowczas program nadpisze termin pltanosci danymi wczytanymi przez interfejs
//poprawka 2009.07.17
//dodano mozliwosc wczytwania do VAT:
//- vatuwagi
//- vatkontoplat (konto strona WN, brutto)
//- vatkontonetto (konto strona MA, netto)
//dodoano te pola do rejestrow BAZA i DATA oraz do prcedurek WRITE_REKORD....
//poprawka 2009.03.26: 
//procedura REJESTR_SPLT: uaktualniea dane w rejestrze zaminnikow kontrahnetow (INT_KNTR) i rjerstrze zamiennikow kont (INT_RODZ) tylko jesli znajdzie kod zrodlowy
// data 2009.03.03
// dodalam LICZBA1.ALG do zamieniania stringu na liczbe. 
// - usuwa wszytskie kropki ze stringu wejsciowego kw_str
// - zamienia przecinek na kropke
// - pomija wszytskie spacje w stringu wejsciowym
// data 2009.02.27
// zmiana slownik zamiennikow kontrahentow: 
// - mozliwosc zmiany nazwy kontrahenta
// - po wybraniu zmaiennika symbolu kontrhaneta z perseus przepisuje sie nazwa kontrahneta z perseusa
// - wykorzystanie: mozliwosc zkaldania konta w Perseus z nazwa kontrahneta z perseus 
// data 2009.02.27
// zmiana  slownik zamiennikow kont i kontrahnetow->operacje pozostale->utworz konta:
// usunieto blokade na pusty suffix tworzonego konta. Dzieki temu mozna tworzyc zamienniki symboli kont bez suffixa (suffix pusty)
// data 2007.08.01 
// - dodany nowy indeks do INT_BAZA
// - poprawka wyswietlanie slownikow zamiennikow kont i kontrahentow- nakladlay sie menu
// - poprawka w wyswietlaniu tablic pomocniczych - nakladaly sie menu gorne i nie dzialala myszka.
// data 2007.07.17
// poprawka: wyswietlanie danych zrodlowych, nie dzialaly przyciski
// data 2007.04.19
// rozszerzylam dlugosc pola z symbolem dekretu do 10 znakow
// zamiana w definicji rejestru: INT_DEFF,INT_SLOW,INT_DATA
// miejsce zmiany oznakowane w programie jako komentarz "madzia 2007.04.19"

// data 2006.08.23
// zmienilam bo zapisywanie linii polecenia ksiegowania: program sam 
// podstawial nazwe konta rodzajowego strony WN jako pusty string
// miejsce zmiany oznakowane w programie jako komentarz "madzia2006.08.23"
// data 2005.12.14: 
// dodano rodzaj polskich liter MAZOVIA do pliku zrodlowego
// data 2004.12.27
// zmieniono sprawdzanie typu transkacji (blad 1R13)- przedtem nie dopuszczal kombinacji: MA+Odbiorca+Transkacja, teraz dopuszcza (Dla E³ku)
// data 2004.10.29
// poprawiono blad : jesli byl bald w FAZA04.alg - nie mial otwartego rejestru
// INT_MESS i zglaszal blad "M:znajdzrek" - rjestr nie zostal otworzony
// w interfjesie dla hot. EUROPLA nie chcial tworzyc rozrachunku pomimo 
// tego ze mial wsyztskie dane. Pomoc moze zmiana w linii nr 2504: zamiast ..[odlatr,5,1]...]
// wstawic ....[odlatr,6,1]......
// data 2004.06.15
// - dodano do int.alg algorytmy powszechnie uzywane w plikach cnv: WRITE_REKORD_TO_BAZA.ALG
// oraz LICZBA.ALG
// - w WRITE_NULL_TO_BAZA.ALG dodano zmienna opis_dok_nagl - do zapisywania  naglowka tworzonego dokumentu
// data 2004.04.08
// - poprawki przy wyswietlaniu rejestrow pomocniczych(INT_BAZA, INT_DATA...)
//   dodano mozlwiosc definiowania wlasnego ukladu kolumn do pokazywania w oknie menu na rekordy
//   dla rejestru INT_BAZA(dane po konwerjsi dla zapisow) oraz INT_DATA(dane
//   z podstawionymi kontami) dodano mozlwiosc zaznaczenia filtrowania linii z bledem.
//   aby ustawic filtr trzeba w polu "BLAD" w filtrze wpisac symbol ">"
// data 2004.04.06,2004.04.07
// - dodanie obslugi nowych pol dla faktur vat: termin platnosci (vatplt) oraz forma platnosci(vatfpl)
// termin platnosci vatplt jest tez terminem platnosci do rozrachunku (rzrtrm)
// - dodanie nowego typu dokumentu vat (vattyp): "F" (faktura) oraz "FK" (korekta)
// data 2004.02.16: dodanie sprawdzania czy wpisywane zamienniki symboli kont/kontrahentow 
// znjaduja sie juz w rejestrze zamiennikow.
//data 2004.02.16 : dodanie do funkcji operacje pozostale->utworz konta mozliwosci wyboru 
// od ktorego znaku symbolu zamiennika kontrahenta tworzy symbol konta
// data 2004.02.16: dodanie nowej funkcji operacje pozostale->wyczysc konta. Powoduje usniecie wszytskich zamiennikow kont 
// ze slownika.
//data 2004.01.28 : dodanie do slownikow dla kont i kontrahentow nowej 
// funkcji: operacje pozostale->utworz konta. Tworzy symbole kont na
//podstawie symbolu kontrahenta
//data: 2004.01.16 : dodanie do rejestrow z danymi zrodlowymi (INT_TXT)
// mozliwosci definiowania ukaldu  kolumn podczas przegladania
//data: 2003.10.31
//zmiana: usatwianie sie na ostatnio wykonywanym poleceniu oraz 
//ostatnio wczytywanym pliku
//data: 2003.10.29
//zmiana: dodano do definicji polecenia ksiegowania nowa opcje: 
// - metoda rejestracji zapisow kont rodzajowych. Jesli opcja = "N",
// nie bedzie sumowania zapsiow na kontach rodzajowych. Zeby zadzialalo
// w pliku *.cnv musimny dla kazdego zapsiu wypelnic inna wartoscia pole oprpfx.
//zmiana: zmieniono menu-1 w rejestrze int_dekr- dodano button "wybor"
//data: 2003.10.03
//zmiana: zmieniono wywolanie rejestru int_dekr - wywolajmenu,"1". w TWORZSENIE_POLECENIA.ALG
//data: 2002.10.01
//poprawiono blad dotyczacy atrybutow kont
//jesli w definicji dekretu zazaczono opcje "A - bezwarunkowa aktualizacj
// nazwy konta" to dla istniejacych kont program nie przepisywal
//istniejacych atrybutow kont - wstawial puste i w konsekcwencji
//podczas tworzenia dok. odlozonego byly zmieniane atrybuty kont
// poprawka dotycyla WRITE_RDZ.ALG - usuniecie linii:
// if (existrdz) defatr := "" (dla strony Wn i Ma)
//linia ta byla dostawiona przez MN prawdopodbnie podczas poprawianai wywalania sie programu podczas tworzenia PK
// linia prawdopodbnie miala usunac sytuacje kiedy nie bylo nazwy konta a byly atrybuty (np. dla opcja "nazwa konta nie podlega aktualizcji)
//data: 2002.09.11
//Drobna poprawka dotyczaca lokalizacji pliku zródlowego. Jesli wpisano
//w lokalizacji tylko znak "\" (czyli w domniemaniu katalog perseus.dat\fk)
//- interfejs nie potrafi3 wczytaa podanego pliku. Teraz jest poprawione
//data: 2002.06.03
// dodano mozliwosc wywolywania pliku do konwersji pierwotnej typu *.frm
// plik *.frm musi sie znajdowac w tym samym katalogu co plik *.cnv
// przyklad - interfejs do programu polka
// Data:2002.05.13
// 1. Dodano nowa mozliwosc w definicji dekretu:
//    - metoda rejestracji zapisow kalsyfikacji pomocniczej - opcja "M"
//	wczytywanie sekwencyjne zapisow  (odrebny zapis klasyfikacji 
//	pomocniczej dla takich samych kont rodzajowych	
// 2. Poprawiono metode tworzeni akont przeciwstawnych: nie dzialalo 
//    tworzenie jedenj linii z kontem Wn i Ma. Teraz ta opacja dziala,
//    jesli w metodzie rejestracji zapisow klasyfikacji ustawi sie "M"
// 3. Zmiana gornego menu w okienkach: zamiast operacje->dodaj,usun,
//    zmien funkcje dodaj, usun,, zmien przeniesione do gornego menu.
// 4. dodano mozliwosc odczytywania z pliku zrodlowego opisu dokumentu ksiegowego
//    (do naglowka dokumentu)

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// ====================================================================
//    INTERFEJS - algorytm glowny  wersja 1.0
// ===================================================================
// wersja PERSEUS 1.00 z dnia 2001.11.21
// ====================================================================
//
// slownik do formatow importow
//% IMPORTY.DIC
% IMPORTY.DIC,218.DIC
%<9TABIMPORTUJFORMAT.DIC
"W|LASNY",3,,"Import z w|lasnym separatorem"
  
// slownik do polskich liter
% POLSKIE.DIC
%<9 90.DIC

% 90.DIC
%<9 90.DIC
"MAZOVIA",5,,"Mazovia"
"UTF-8",6,,"UTF-8"

% SLOWNIK-POLSKIE-LITERY.DIC
%<9 SLOWNIK-POLSKIE-LITERY.DIC
"5",5,,"Mazovia"
"6",6,,"UTF-8"

// ===== tworzenie polecenia ksiegowania
% TWORZENIE_POLECENIA.ALG
// --- deklaracja zmiennych globalnych
  opis_dok_nagl := ""
  klucz_vat := ""
  kompres := .T.
  minzero := .T.
  update := .N.
  AkcjaPoFazie3 := .N.
  AkcjaPoFazie4 := .N.
  AkcjaPoFazie5 := .N.

  main_path := ""
  lastdataksieg := ''
  vatanu := .N.
  paramlog := .N.
  paramnaz := ""
  paramtxt := ""
  paramkwt := .
  lastfaza := 0
  fazanr := 0
  dubler := ""
  metrodz := ""
  naz_prg := ""
  naz_kat := ""
  plik_path := ""
  plik_name := ""
  plik_poprz := ""
  int_poprz := ""
  plik_plik := ""
  int_omin := .N.
  int_wyroznik := ""
  int_pozycja := .
  dat1 := '19.12.31'
  dat2 := '20.01.01'
  exit := .N.
  cutline := .N.
  cutdkrt := .N.
  faza := 0
  next := .T.
  line := ""
  linL := ""
  linR := ""
  rdzwn := ""
  rdzma := ""
  kwtwn := 0
  kwtma := 0
  kwtrzl := 0
  kwtrzr := 0
  kwtdew := 0
  mkwtdew := 0
  doknet := 0
  dokvat := 0
  dokbrt := 0
  zapnet := 0
  zapvat := 0
  zapbrt := 0
  xzapnet := 0
  xzapvat := 0
  xzapbrt := 0
  kwt := 0
  net := 0
  brt := 0
  dew := 0
  
  numrdz := .
  strrdz := ""
  numrzl := .
  strrzl := ""
  numrzr := .
  strrzr := ""
  numvat := .
  strvat := ""
  
  exist := .N.
  existrdz := .N.
  existrzl := .N.
  existkln := .N.
  buraki := ""
  errknt := ""
  errkod := ""
  errtyp := ""
  kod := ""
  trb := ""
  
  sbyte := ""
  defatr := ""
  odlatr := "TTTTTTTT"
  deftrs := ""
  oprmet := ""
  atrrzl := .N.
  atrrzr := .N.
  atrvat := .N.
  atrdew := .N.
  
// --- deklaracja zmiennych rejestrowych
  index := ""
  index_pfx := ""
  oprdat := ''
  oprpfx := ""
  oprkod := ""
  oprdef := ""
  oprstr := ""
  oprznk := ""
  oprnaz := ""
  oprtrs := ""
  oprkwt := .

  rdzknt := ""
  rdznaz := ""
  rdzadd := ""
  rdzmod := ""
  rdzatr := ""

  rzlknt := ""
  rzlnaz := ""
  rzladd := ""
  rzlmod := ""
  rzlmet := ""

  klnsfx := ""
  klnpln := ""
  klnmod := ""

  rzrfak := ""
  rzrdat := ''
  rzrtrm := ''
  rzrtyp := ""
  rzrrdz := ""
  rzrmet := ""
//2009.09.08 - czy nadpsiywac danymi z intrerfejsu termin platnosci dla istniejacych transkacji
  rzr_term_nad := .N.

  vatrej := ""
  vatdok := ""
  vatold := ""
  vattyp := ""
  vatvat := ""
  vatdat := ''
  vatspr := ''
  vatobw := ''
  vatplt := ''
  vatfpl := ""
  vatvat := ""
  vatgus := ""
  vatnet := .
  vatbrt := .
  vattrojstr := .N.
  vatkodue := ""
  vatnipue := ""
//nowa zmienna vatsposb = "B" vat liczyc od wartosci brutto (np. paragony), "N" - vat liczyc od wartosci netto,"S"- zsumowac wartosci z zapisow  
  vatsposob := ""
  vatuwagi := ""
  vatkontoplat := ""
  vatkontonetto := ""

  dewsym := ""
  dewmod := ""

  nindex := ""
  nindex_pfx := ""
  noprdef := ""
  noprstr := ""
  nrdzknt := ""
  nrzlknt := ""
  nrzrfak := ""
  nvatrej := ""
  nvatdok := ""
  nvatvat := ""
  nvatgus := ""
  ndewsym := ""
  nrzrrdz := ""

// --- zamienne dla rejestru FIRM
  txtkln := ""
  txtfak := ""
  prordz := ""
  prokln := ""
  proreg := ""
  propes := ""
  pronz1 := ""
  pronz2 := ""
  promst := ""
  proadr := ""
  probnk := ""
  proknt := ""
  protl1 := ""
  protl2 := ""
  profax := ""
  protlx := ""
  pronipue := ""
  prokodue := ""

  DyskOp["WezSystemX","",""]
  if (D_string = "D-") slash := "\"
  if (D_string = "X-") slash := "/"
  DyskOp["OdczytajBiezacy","",""]
  main_path := D_STRING

//kopiowanie int_mess
  RejOp["XX:OtworzRej1","INT_MESS.RXR"]
  if (RejOp["XX:WezPierwszyRek",""]) goto dal
//  okalert["pusty"]
  RejOp["XX:ZamknijRej",""]
  p := WezZmiennaSrod["FINN-LIB"]
  naz_zrod := p+"\int\int_mess.dbf"
  naz_doc_key := main_path+"\wlasne\int\int_mess.key"
  naz_doc_rej := main_path+"\wlasne\int\int_mess.dbf"
  DyskOp["UsunPlik",naz_doc_key,""]
  DyskOp["UsunPlik",naz_doc_rej,""]
  if (DyskOp["KopiujPlik",naz_zrod,naz_doc_rej]) goto dal2
  OkAlert["Nie powiod|lo si|e skopiowanie pliku $z informacjami o b|l|edach!"]
  goto dal2
dal:
  RejOp["XX:ZamknijRej",""]
dal2:

  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  CallAlg["ODCZYTAJ_NAZWE_INT"]
  if (not(int_poprz = "")) goto motw
  if (not (RejOp["R:WywolajMenu","1"])) ExitAlg[0]
kontm:
  CallAlg["ZAPISZ_NAZWE_INT"]
  naz_int := RejWezP_S["R:DEKR_int"]
  naz_naz := RejWezP_S["R:DEKR_naz"]
  naz_cnv := RejWezP_S["R:DEKR_cnv"] + ".cnv"
  naz_sep := RejWezP_S["R:DEKR_sep"]
  DyskOp["NaMale",naz_cnv,""]
  naz_cnv := D_String
  CallALg["NAZ_PRG_NA_MALE"]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_deff := "INT_DEFF.RXR" + "+" + naz_kat + "\int_deff"
  naz_slow := "INT_SLOW.RXR" + "+" + naz_kat + "\int_slow"
  naz_baza := "INT_BAZA.RXR" + "+" + naz_kat + "\int_baza"
  naz_firm := "INT_FIRM.RXR" + "+" + naz_kat + "\int_firm"
  naz_data := "INT_DATA.RXR" + "+" + naz_kat + "\int_data"
  naz_temp := "INT_TEMP.RXR" + "+" + naz_kat + "\int_temp"
  naz_plik := "INT_PLIK.RXR" + "+" + naz_kat + "\int_plik"
  naz_errs := "INT_ERRS.RXR" + "+" + naz_kat + "\int_errs"
  naz_rozr := "INT_ROZR.RXR" + "+" + naz_kat + "\int_rozr"
  naz_rodz := "INT_RODZ.RXR" + "+" + naz_kat + "\int_rodz"
  naz_rozl := "INT_ROZL.RXR" + "+" + naz_kat + "\int_rozl"
  naz_kntr := "INT_KNTR.RXR" + "+" + naz_kat + "\int_kntr"
  naz_rejv := "INT_REJV.RXR" + "+" + naz_kat + "\int_rejv"
  naz_klas := "INT_KLAS.RXR" + "+" + naz_kat + "\int_klas"
  naz_deww := "INT_DEWW.RXR" + "+" + naz_kat + "\int_deww"
  naz_impd := "INT_IMPD.RXR" + "+" + naz_kat + "\int_impd"
  naz_glob := "INT_GLOB.RJR" + "+" + naz_kat + "\int_glob"
  CallAlg["KONW_PLIKI_II"]
  dubler := RejWezP_S["R:DEKR_sid"]
  metrodz := RejWezP_S["R:DEKR_mrk"]
  symbol := RejWezP_S["R:DEKR_smb"]
  RejOp["R:ZamknijRej",""]

// ===== operacje w rejestrze MEMO
  memo_idx := "INTERFACE_"+nazwa_ksieg+"&"+naz_int+"&"+os_ksieg
  RejOp["U:OtworzRej1","FRM_MEMO.RJR"]
  if (RejOp["U:ZnajdzRek",memo_idx]) goto _read_param
  RejOp["U:DodajRek",""]
  RejWstawP_S["U:FRM_frm",memo_idx]
  RejWstawP_K["U:FRM_kwota0",1]
 _read_param:
  faza := RejWezP_K["U:FRM_kwota0"]
  ExDialogOp["IdzDoDialogu","INTERFACE"]
  if (D_POS=91) goto _esc
  RejWstawP_K["U:FRM_kwota0",faza]
  RejOp["U:ZamknijRej",""]
// --- wczytanie ostatniej fazy przetwarzania
  RejOp["G:OtworzRej1",naz_glob]
  indexpar := "!!!_lastfaza"
  paramnaz := "Ostatnia faza"
  paramtxt := "0"
  CallAlg["READ_PARAM"]
  lastfaza := paramkwt
  paramnaz := ""
  RejOp["G:ZamknijRej",""]
//odczytaj na zmienna MAG_PS parametr czy tworzyc osobne dokumnety ksiegowe dla kazdego punktu sprzedazy
  RejOp["G:OtworzRej",naz_glob]
  indexpar := "!INT_MAG_PS"
  paramtxt := "T"
  CallAlg["READ_PARAM"]
  MAG_PS := paramlog
  RejOp["G:ZamknijRej",""]
// ---- faza 1 (wczytywanie danych zrodlowych)
  if (faza > 1) goto _loop_faza1
  fazanr := 1
  if (CallAlg["FAZA01"] = 1 or lastfaza = 1) goto _esc
 _loop_faza1:
// ---- faza 2 (konwersja danych zrodlowych)
  if (faza > 2) goto _loop_faza2
  fazanr := 2
  if (naz_cnv = ".cnv") goto _loop_faza2
//  if (DyskOp["JestPlik","system\int\"+naz_prg+"\"+naz_cnv,""]) goto _jest_plik
//  if (DyskOp["JestPlik","usersys\int\"+naz_kat+"\"+naz_cnv,""]) goto _jest_plik
  if (DyskOp["JestPlik","wlasne\int\"+naz_kat+"\"+naz_cnv,""]) goto _jest_plik
  naz_cnv := "wlasne"+slash+"int"+slash+naz_kat+slash+naz_cnv
//  OkAlert["Na dysku brak algorytmu do konwersji danych:$ $"+naz_cnv]
  OkAlert["Na dysku brak algorytmu do wprowadzenia parametr|ow$i konwersji danych |xr|od|lowych:$(plik *.cnv)$"+naz_cnv]
  goto _esc
 _jest_plik:
  exit := .N.
  break := .T.
  parametry := .N.
  IdzDoWydruku["int\"+naz_kat+"\"+naz_cnv,""]
  if (exit or break or lastfaza = 2) goto _esc
 _loop_faza2:
// ---- faza 3 (tworzenie rejestru DATA)
  if (faza > 3) goto _loop_faza3
  fazanr := 3
  if (CallAlg["FAZA03"] = 1) goto _esc
  if (AkcjaPoFazie3) IdzDoWydruku["int\"+naz_kat+"\"+naz_cnv,""]
  if (exit or break or lastfaza = 3) goto _esc
 _loop_faza3:
// ---- faza 4 (tworzenie polecenia ksiegowania)
  if (faza > 4) goto _loop_faza4
  fazanr := 4
  if (CallAlg["FAZA04"] = 1) goto _esc
  if (AkcjaPoFazie4) IdzDoWydruku["int\"+naz_kat+"\"+naz_cnv,""]
  if (exit or break or lastfaza = 4) goto _esc
 _loop_faza4:
// ---- faza 5 (przeniesienie polecenia ksiegowania do bufora)
  if (faza > 5) goto _loop_faza5
  fazanr := 5
//czy ksiegowac dokumenty pojedynczo (dla ACSS)
  if (MAG_PS = .T.) goto _pojedynczo
  if (CallAlg["FAZA05"] = 1) goto _esc
 _kont_faza05:
  if (AkcjaPoFazie5) IdzDoWydruku["int\"+naz_kat+"\"+naz_cnv,""]
 _loop_faza5:
 _esc:
  ExitAlg[0]
motw:
  if (not (RejOp["R:WywolajMenuX","1"])) ExitAlg[0]
  goto kontm
//dla ACSS: ksiegowanie dokumentow pojedynczo (podzial na dokumenty: wg prefixu)
 _pojedynczo:
  if (CallAlg["FAZA05_MMM"] = 1) goto _esc
  goto _kont_faza05

% DIALOG-PASEK-FAZA03.DLG
##DEFWINDOW = 12,4,12,75,ACHP,,,,,"Dekretacja danych - prosz|e czeka|c"
  DispLine[""]

% DIALOG-PASEK-FAZA04.DLG
##DEFWINDOW = 12,4,12,75,ACHP,,,,,"Tworzenie polecenia ksi|egowania - prosz|e czeka|c"
  DispLine[""]

% DIALOG-PASEK-FAZA05.DLG
##DEFWINDOW = 12,4,12,75,ACHP,,,,,"Przeniesienie dokumentu do bufora- prosz|e czeka|c"
  DispLine[""]
//
// ==================================================================
// ===== import plikow tekstowych z danymi zrodlowymi (faza 1)
% FAZA01.ALG
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  RejOp["R:ZnajdzRek",naz_int]
  RejOp["UsunPlikRej",naz_plik]
  RejOp["P:OtworzRej1",naz_plik]
  bylo := .N.
  nr := 1
 _next_plik:
  RejOp["P:DodajRek",""]
  RejWstawP_S["P:PLIK_idx",ToStr["#nr#S:0"]]
  naz_txtp := RejWezP_S["R:DEKR_txt" + ToStr["#nr#S:0"]]
  naz_cnvp := RejWezP_S["R:DEKR_cnv" + ToStr["#nr#S:0"]]
  if (naz_txtp = "") goto _loop_import
  bylo := .T.
  naz_txtr := "INT_TXT" + ToStr["#nr#S:0"] + ".RXR"
  if (not (StrCut[naz_txtp,StrLen[naz_txtp]-1,1] = slash)) goto _extract_plik
  plik_path := StrCut[naz_txtp,0,StrLen[naz_txtp]-1]
  CallAlg["ODCZYTAJ_NAZWE_PLIKU"]
  plik_name := WybierzPlik["*.*","","","",plik_path,plik_poprz,"AFIGH"]
  CallAlg["ZAPISZ_NAZWE_PLIKU"]
  if (plik_name = "") ExitAlg[1]
  goto _import
 _extract_plik:
  plik_name := ""
  plik_path := naz_txtp
 _next_extract:
  plik_name := StrCut[plik_path,StrLen[plik_path]-1,1] + plik_name
  plik_path := StrCut[plik_path,0,StrLen[plik_path]-1]
  if (plik_name = naz_txtp) goto _bez_sl
  if (not (StrCut[plik_path,StrLen[plik_path]-1,1] = slash)) goto _next_extract
  plik_path := StrCut[plik_path,0,StrLen[plik_path]-1]
 _import:
  naz_txtp := plik_path + slash + plik_name
  if (plik_path = "") naz_txtp := plik_name
_bez_sl:
  RejWstawP_S["P:PLIK_naz",naz_txtp]
  if (DyskOp["JestPlik",naz_txtp,""]) goto _exist_plik
  OkAlert["Nie znaleziono na dysku pliku z danymi |xr|od|lowymi:$ $"+naz_txtp]
  ExitAlg[1]
 _exist_plik:
// --- konwersja pierwotna
  if (naz_cnvp = "") goto _loop_convert
  naz_cnvp_m := naz_cnvp
//  naz_cnvp := main_path+"\wlasne\int\"+naz_kat+"\"+naz_cnvp
  naz_cnvp := main_path+slash+"wlasne"+slash+"int"+slash+naz_kat+slash+naz_cnvp
  if (DyskOp["JestPlik",naz_cnvp,""]) goto _jest_plik_cnv
  if (DyskOp["JestPlik",naz_cnvp+".com",""]) goto _jest_plik_cnv
  if (DyskOp["JestPlik",naz_cnvp+".exe",""]) goto _jest_plik_cnv
  if (DyskOp["JestPlik",naz_cnvp+".bat",""]) goto _jest_plik_cnv
  if (DyskOp["JestPlik",naz_cnvp+".frm",""]) goto _jest_plik_frm
  if (DyskOp["JestPlik",naz_cnvp+".py",""]) goto _jest_plik_py
  OkAlert["Na dysku brak programu do pierwotnej konwersji danych:$ $"+naz_cnvp]
  ExitAlg[1]
 _jest_plik_frm:
// okalert["yyy madzia jest plik frm "+plik_name+" "+plik_path]
  IdzDoWydruku["int\"+naz_kat+"\"+naz_cnvp_m,""]
  DyskOp["ZmienKatalog",main_path,""]
  naz_txtp := plik_path + slash + "!inttemp"
  goto _loop_convert

 _jest_plik_py:
  DyskOp["ZmienKatalog",main_path,""]
//  okalert["main path "+main_path]
//  WolajSystem[naz_cnvp+".py "+plik_path+slash+plik_name,.T.]
//wywolanie dla win
// WolajSystem[naz_cnvp+".cmd "+naz_cnvp+".py "+plik_path+slash+plik_name,.T.]
//wywolanie dla linux
  WolajSystem[naz_cnvp+".cmd "+plik_path+slash+plik_name,.T.]
//nazwa pliku dla win
//  csv_name := strcut[plik_name,0,strlen[plik_name]-3]+"csv"
//nazwa pliku dla linux
  csv_name := plik_name+".csv"
  naz_txtp := plik_path + slash + csv_name
  goto _loop_convert

 _jest_plik_cnv:
  DyskOp["ZmienKatalog",plik_path,""]
  WolajSystem[naz_cnvp+" "+plik_name+" !inttemp",.N.]
  DyskOp["ZmienKatalog",main_path,""]
  naz_txtp := plik_path + slash + "!inttemp"
 _loop_convert:
// --- kopiowanie pliku
  temp_path := "temp" + slash + WezZmiennaSrod["P*lo"]
  if (WezZmiennaSrod["P*lo"] = "") temp_path := "temp"
  temp_name := temp_path + slash + plik_name
  if (DyskOp["JestPlik",temp_name,""]) DyskOp["UsunPlik",temp_name,""]
  if (DyskOp["KopiujPlik",naz_txtp,temp_name]) goto _importowanie_pliku
  OkAlert["Nie powiod|lo si|e skopiowanie pliku "+plik_name]
  ExitAlg[0]
// --- importowanie pliku
 _importowanie_pliku:
//usun(wyczysc) plik do wczytania danych zrodlowych (INT_TXTi.RJR)
  RejOp["UsunPlikRej",naz_txtr]
  RejOp["J:OtworzRej1",naz_txtr]
  RejOp["J:ImportujUstawieniaStart",""]
  impx := RejWezP_S["R:DEKR_imp" + ToStr["#nr#S:0"]]
  plx := RejWezP_S["R:DEKR_pl" + ToStr["#nr#S:0"]]
//ustaw polskie litery
  wynik := ""
  Callsl["INTERFEJS->proc1"]
  formatx := RejWezP_S["R:DEKR_format" + ToStr["#nr#S:0"]]
  sepx := RejWezP_S["R:DEKR_sep" + ToStr["#nr#S:0"]]
  plkx := RejWezP_S["R:DEKR_plk" + ToStr["#nr#S:0"]]
  DyskOp["NaMale",plkx,""]
  plkx := D_String
//  RejOp["J:ImportPolskieLitery",plx]
  if (formatx == "DB3") goto _db3
  if (formatx == "W|LASNY") goto _wlasny
  if (formatx == "KOLUMNY") goto _kolumny
  if (formatx == "PROTXT") goto _importuj_plik
_db3:
//format pliku dbaseIII (DB3)
  RejOp["J:ImportDbase3",""]
  goto _importuj_plik
_wlasny:
//format pliku z polami oddzielonymi wlasnym separatorem (WLASNY)
  RejOp["J:ImportUstawSeparator",sepx]
  goto _importuj_plik
_kolumny:
//format pliku ASCII-dane «r¢dˆowe ze staˆ¥ dˆugo˜ci¥ rekordu(KOLUMNY)
//nalezy zdefiniowac strukture pliku «r¢dˆowego (od kt¢rej kolumny pola)
  if (not (plkx = "")) goto _ok_plik_name
  OkAlert["Brak nazwy pliku z definicj|a struktury rekordu |xr|od|lowego$ $Dokonaj uzupe|lnienia w okienku: Lokalizacja (format pliku)"]
  ExitAlg[1]
 _ok_plik_name:
  kod := ToStr["#nr#S:0"]
  naz_impx := "INT_IMPD.RXR" + "+" + naz_kat + "\" + plkx
  if (RejOp["SprawdzPlikRej",naz_impx]) goto _ustaw_kolumny
  OkAlert["Nie znaleziono na dysku pliku o nazwie: "+naz_kat+"\"+plkx+".dbf$z definicj|a struktury rekordu |xr|od|lowego$ $Zdefiniuj plik o takiej nazwie w okienku$'definiowanie wczytywania danych |xr|od|lowych'$lub dokonaj zmian w okienku %L%okalizacja"]
  ExitAlg[1]
 _ustaw_kolumny:
  if (not (RejOp["I:OtworzRej1",naz_impx])) goto _zamknij_rej_imp
  if (not (RejOp["I:WezPierwszyRek",""])) goto _zamknij_rej_imp
 _next_rek:
  RejOp["J:ImportUstawKolumna",ToStr["#RejWezP_K[""I:IMPD_poc""]#S:0"]]
  if (RejOp["I:WezNastepnyRek",""]) goto _next_rek
 _zamknij_rej_imp:
  RejOp["I:ZamknijRej",""]
  goto _importuj_plik
 _importuj_plik:
  if (DyskOp["JestPlik",naz_txtp,""]) goto _importuj_teraz
  OkAlert["Nie powsta|l na dysku plik:$ $"+naz_txtp]
  ExitAlg[1]
 _importuj_teraz:
  naz_txtp := temp_name
  if (RejOp["J:ImportujRejestr",naz_txtp]) goto _ok_import
  OkAlert["B|lad w trakcie importu danych do tablicy "+naz_txtr]
  ExitAlg[1]
 _ok_import:
  RejOp["J:ZamknijRej",""]
  DyskOp["UsunPlik",naz_txtp,""]
  if (naz_cnvp = "") goto _loop_import
  DyskOp["UsunPlik",plik_path+slash+"!inttemp",""]
 _loop_import:
  nr := nr + 1
  if (nr < 10) goto _next_plik
  if (not(bylo)) goto _brakpl
  RejOp["R:ZamknijRej",""]
  RejOp["P:ZamknijRej",""]
  ExitAlg[0]
_brakpl:
  OkAlert["Nie podano |zadnych nazw plik|ow z danymi |xr|od|lowymi "]
  RejOp["R:ZamknijRej",""]
  RejOp["P:ZamknijRej",""]
  ExitAlg[1]

// ===== tworzenie rejestru INT_DATA z podstawionymi kontami (faza 3)
% FAZA03.ALG
  RejOp["UsunPlikRej",naz_data]
  RejOp["UsunPlikRej",naz_errs]
  RejOp["0:OtworzRej1","KLFILE.RJR"]
  RejOp["1:OtworzRej1","PLANRODZ.RJR"]
  RejOp["2:OtworzRej1","PLANROZL.RJR"]
  RejOp["3:OtworzRej1","REJVATREJ.RXR"]
  RejOp["4:OtworzRej1","REJFAKTSPR.REX"]
  RejOp["4:ZmienKluczRej","5"]
  RejOp["A:OtworzRejSprawdz",naz_data]
  RejOp["E:OtworzRej1",naz_errs]
  RejOp["B:OtworzRej1",naz_baza]
  RejOp["C:OtworzRej1",naz_firm]
  RejOp["S:OtworzRejSprawdz",naz_slow]
  RejOp["D:OtworzRejSprawdz",naz_deff]
  RejOp["F:OtworzRej1",naz_rodz]
  RejOp["L:OtworzRej1",naz_rozl]
  RejOp["K:OtworzRej1",naz_kntr]
  RejOp["Q:OtworzRej1",naz_rejv]
  RejOp["V:OtworzRej1",naz_klas]
  RejOp["W:OtworzRej1",naz_deww]
  RejOp["M:OtworzRej1","INT_MESS.RXR"]
  RejOp["M:ZmienKluczRej","1"]
  RejOp["U:OtworzRej1","FRM_MEMO.RJR"]
  RejOp["U:ZnajdzRek",memo_idx]
  sdat1 := RejWezP_S["U:FRM_str8"]
  sdat2 := RejWezP_S["U:FRM_str9"]
  RejOp["U:ZamknijRej",""]
  if (RejOp["B:WezPierwszyRek",""]) goto _baza_not_empty
  OkAlert["Tablica INT_BAZA jest pusta"]
  ExitAlg[1]
 _baza_not_empty:
//pobierz na zmienna opis dokumentu do naglowka
  opis_dok_nagl := RejWezP_S["B:BAZA_opisdok"]
//  okalert["nagl "+opis_dok_nagl]
//zmienna do identyfikcji strony wn i ma tego samego zapisu
  wnma := 0
  liczbarekordow := RejWezP_K["B:LiczbaRekordow"]
  lp := 0
  pr := 0
  sm := 70 - StrLen[ToStr["#liczbarekordow#S:0 > "]]
  ExDialogOp["OdczytajDialog","DIALOG-PASEK-FAZA03"]
  ExDialogOp["WyswietlDialog",""]
  DispLine[ToStr["#liczbarekordow#S:0 > "]]

// ====== poczatek petli
 _next_baza_rek:
  lp := lp + 1
  wnma := wnma + 1
//wyczysc info o bladzie
  RejWstawP_S["B:BAZA_blad",""]
  RejWstawP_S["B:BAZA_ptaszek",""]
  oprdat := RejWezP_D["B:BAZA_oprdat"]
  oprkod := RejWezP_S["B:BAZA_oprkod"]
  oprtrs := RejWezP_S["B:BAZA_oprtrs"]
// --- czy zdefiniowano kod operacji i przyporzadkowano mu kod definicji
  errknt := oprkod
  errkod := "1A02"
  if (RejOp["S:ZnajdzRek",oprkod]) goto _exist_kod_slow
  RejOp["S:DodajRek",""]
  RejWstawP_S["S:SLOW_kod",oprkod]
  RejWstawP_S["S:SLOW_naz",RejWezP_S["B:BAZA_oprnaz"]]
  goto _write_burak
 _exist_kod_slow:
  oprdef := RejWezP_S["S:SLOW_def"]
  if (oprdef = "") goto _write_burak
  if (oprdef = "#") goto _loop_baza_rek
// --- czy zdefiniowano definicje dekretu dla wczytanego kodu operacji
  if (RejOp["D:ZnajdzRek",oprdef]) goto _exist_kod_deff
  errknt := oprdef
  errkod := "1A01"
  goto _write_burak
 _exist_kod_deff:
//metoda tworzenia tersci operacji
  oprmet := RejWezP_S["D:DEFF_oprtrs"]
//nazwa operacji
  deftrs := RejWezP_S["D:DEFF_oprnaz"]
//tworzenie tresci operacji
  if (oprmet = "") line := deftrs
  if (oprmet = "1") line := sdat1 + " " + deftrs
  if (oprmet = "2") line := sdat1 + "-" + sdat2 + " " + deftrs
  if (oprmet = "3") line := oprtrs
  if (oprmet = "4") line := sdat1 + " " + oprtrs
  if (oprmet = "5") line := sdat1 + "-" + sdat2 + " " + oprtrs
  if (oprmet = "6") line := deftrs + " " + oprtrs
  if (oprmet = "7") line := sdat1 + " " + deftrs + " " + oprtrs
  if (oprmet = "8") line := sdat1 + "-" + sdat2 + " " + deftrs + " " + oprtrs
  oprtrs := line

// ----- tworzenie strony Wn
//strona ksiegowa operacji
  oprstr := "L"
//metoda aktualizacjji nazwy klasyfikacji
  rzlmod := "T"
  buraki := ""

// --- konto Wn
  if (RejWezP_S["D:DEFF_rdzpfxwn"] = "" and RejWezP_S["D:DEFF_rdzsfxwn"] = "") goto _loop_strona_wn
  if (RejWezP_S["D:DEFF_rzlpfxwn"] = "" and RejWezP_S["D:DEFF_rzlsfxwn"] = "") rzlmod := ""
  rzrmod := RejWezP_S["D:DEFF_rzrmodwn"]
  vatmod := RejWezP_S["D:DEFF_vatmodwn"]
  dewmod := RejWezP_S["D:DEFF_dewmodwn"]
  rdzadd := RejWezP_S["D:DEFF_rdzaddwn"]
  rdzmod := RejWezP_S["D:DEFF_rdzmodwn"]
  pfx := RejWezP_S["D:DEFF_rdzpfxwn"]
  trb := RejWezP_S["D:DEFF_rdzsfxwn"]
  CallAlg["TEST_RDZ"]
  if (StrCut[rdzatr,5,1] = "T" and RejWezP_S["D:DEFF_klnsfxwn"] = "T") CallAlg["SUBST_KLN"]
  if (buraki !== "*1F03*" or buraki !== "*1F01*" or buraki !== "*1F02*" or buraki !== "*1H01*" or buraki !== "*1H02*") goto _add_buraki_wn

// --- klasyfikacja Wn
  if (StrCut[rdzatr,4,1] = "N" or rzlmod = "") goto _loop_rzl_wn
  rzladd := RejWezP_S["D:DEFF_rzladdwn"]
  rzlmod := RejWezP_S["D:DEFF_rzlmodwn"]
  rzlmet := RejWezP_S["D:DEFF_rzlmetwn"]
  pfx := RejWezP_S["D:DEFF_rzlpfxwn"]
  trb := RejWezP_S["D:DEFF_rzlsfxwn"]
  CallAlg["TEST_RZL"]
 _loop_rzl_wn:

// --- konto rozrachunkowe Wn
  if (StrCut[rdzatr,5,1] = "N" or rzrmod = "") goto _loop_rzr_wn
  rzrmod := RejWezP_S["D:DEFF_rzrmodwn"]
  rzrmet := RejWezP_S["D:DEFF_rzrmetwn"]
  pfx := RejWezP_S["D:DEFF_klnpfxwn"]
  trb := RejWezP_S["D:DEFF_klnsfxwn"]
  CallAlg["TEST_RZR"]
 _loop_rzr_wn:

// --- konto VAT Wn
  if (StrCut[rdzatr,1,1] = "N" or vatmod = "") goto _loop_vat_wn
  CallAlg["TEST_VAT"]
 _loop_vat_wn:

// --- konto dewizowe Wn
  if (StrCut[rdzatr,2,1] = "N") goto _add_buraki_wn
  CallAlg["TEST_DEW"]

 _add_buraki_wn:
  if (buraki = "") goto _write_strona_wn
  CallAlg["ADD_BURAK"]

 _write_strona_wn:
  CallAlg["COPY_BAZA_TO_DATA"]
 _loop_strona_wn:


// ----- tworzenie strony Ma
  oprstr := "R"
  rzlmod := "T"
  buraki := ""

// --- konto Ma
  if (RejWezP_S["D:DEFF_rdzpfxma"] = "" and RejWezP_S["D:DEFF_rdzsfxma"] = "") goto _loop_strona_ma
  if (RejWezP_S["D:DEFF_rzlpfxma"] = "" and RejWezP_S["D:DEFF_rzlsfxma"] = "") rzlmod := ""
  rzrmod := RejWezP_S["D:DEFF_rzrmodma"]
  vatmod := RejWezP_S["D:DEFF_vatmodma"]
  dewmod := RejWezP_S["D:DEFF_dewmodma"]
  rdzadd := RejWezP_S["D:DEFF_rdzaddma"]
  rdzmod := RejWezP_S["D:DEFF_rdzmodma"]
  pfx := RejWezP_S["D:DEFF_rdzpfxma"]
  trb := RejWezP_S["D:DEFF_rdzsfxma"]
  CallAlg["TEST_RDZ"]
  if (StrCut[rdzatr,5,1] = "T" and RejWezP_S["D:DEFF_klnsfxma"] = "T") CallAlg["SUBST_KLN"]
  if (buraki !== "*1F03*" or buraki !== "*1F01*" or buraki !== "*1F02*" or buraki !== "*1H01*" or buraki !== "*1H02*") goto _add_buraki_ma

// --- klasyfikacja Ma
  if (StrCut[rdzatr,4,1] = "N" or rzlmod = "") goto _loop_rzl_ma
  rzladd := RejWezP_S["D:DEFF_rzladdma"]
  rzlmod := RejWezP_S["D:DEFF_rzlmodma"]
  rzlmet := RejWezP_S["D:DEFF_rzlmetma"]
  pfx := RejWezP_S["D:DEFF_rzlpfxma"]
  trb := RejWezP_S["D:DEFF_rzlsfxma"]
  CallAlg["TEST_RZL"]
 _loop_rzl_ma:

// --- konto rozrachunkowe Ma
  if (StrCut[rdzatr,5,1] = "N" or rzrmod = "") goto _loop_rzr_ma
  rzrmod := RejWezP_S["D:DEFF_rzrmodma"]
  rzrmet := RejWezP_S["D:DEFF_rzrmetma"]
  pfx := RejWezP_S["D:DEFF_klnpfxma"]
  trb := RejWezP_S["D:DEFF_klnsfxma"]
  CallAlg["TEST_RZR"]
 _loop_rzr_ma:

// --- konto VAT Ma
  if (StrCut[rdzatr,1,1] = "N" or vatmod = "") goto _loop_vat_ma
  CallAlg["TEST_VAT"]
 _loop_vat_ma:

// --- konto dewizowe Ma
  if (StrCut[rdzatr,2,1] = "N") goto _add_buraki_ma
  CallAlg["TEST_DEW"]

 _add_buraki_ma:
  if (buraki = "") goto _write_strona_ma
  CallAlg["ADD_BURAK"]

 _write_strona_ma:
  CallAlg["COPY_BAZA_TO_DATA"]
 _loop_strona_ma:

  goto _loop_baza_rek
// ----- rejestracja stwierdzonych nieprawidlowosci
 _write_burak:
  CallAlg["WRITE_BAZA_BURAK"]
 _loop_baza_rek:
  CallAlg["DISPLAY_PASEK"]
 _wez_next_baza_rek:
  if (RejOp["B:WezNastepnyRek",""]) goto _next_baza_rek
  ExDialogOp["UsunDialog",""]
// ===== koniec petli

  RejOp["W:ZamknijRej",""]
  RejOp["K:ZamknijRej",""]
  RejOp["Q:ZamknijRej",""]
  RejOp["V:ZamknijRej",""]
  RejOp["M:ZamknijRej",""]
  RejOp["L:ZamknijRej",""]
  RejOp["F:ZamknijRej",""]
  RejOp["D:ZamknijRej",""]
  RejOp["S:ZamknijRej",""]
  RejOp["C:ZamknijRej",""]
  RejOp["B:ZamknijRej",""]
  RejOp["A:ZamknijRej",""]
  RejOp["4:ZamknijRej",""]
  RejOp["3:ZamknijRej",""]
  RejOp["2:ZamknijRej",""]
  RejOp["1:ZamknijRej",""]
  RejOp["0:ZamknijRej",""]

  if (RejWezP_K["E:LiczbaRekordow"] = 0) goto _end
  line := "BRAKI I NIEPRAWID|LOWO|SCI STWIERDZONE W DEFINICJACH DEKRETU I W DANYCH |XR|OD|LOWYCH"
  exit := .N.
  IdzDoWydruku["int\int_prte.drk",""]
 _end:
  RejOp["E:ZamknijRej",""]
  if (exit) ExitAlg[1]

// ===== tworzenie polecenia ksiegowania (faza 4)
% FAZA04.ALG
//OkAlert["FAZA04"]
  RejOp["0:OtworzRej1","KLFILE.RJR"]
  RejOp["1:OtworzRej1","PLANRODZ.RJR"]
  RejOp["3:OtworzRej1","TRANS.RJR"]
  RejOp["3:ZmienKluczRej","1"]
  RejOp["UsunPlikRej",naz_temp]
  RejOp["T:OtworzRej1",naz_temp]
  RejOp["UsunPlikRej",naz_errs]
  RejOp["E:OtworzRej1",naz_errs]
  RejOp["A:OtworzRejSprawdz",naz_data]
  RejOp["M:OtworzRej1","INT_MESS.RXR"]
  RejOp["M:ZmienKluczRej","1"]
//madzia - jesli opcja "M" - sekwencyjnie!
  if (rzlmet = "M") RejOp["A:ZmienKluczRej","0"]
  RejOp["C:OtworzRej1",naz_firm]
  RejOp["U:OtworzRej1","FRM_MEMO.RJR"]
  RejOp["U:ZnajdzRek",memo_idx]
  sdat1 := RejWezP_S["U:FRM_str8"]
  sdat2 := RejWezP_S["U:FRM_str9"]
  RejOp["U:ZamknijRej",""]
//  OkAlert["FAZA04-1"]
if (RejOp["A:WezPierwszyRek",""]) goto _dekr_not_empty
  OkAlert["Tablica INT_DATA pusta"]
  goto _esc
 _dekr_not_empty:
  liczbarekordow := RejWezP_K["A:LiczbaRekordow"]
  lp := 0
  pr := 0
  sm := 70 - StrLen[ToStr["#liczbarekordow#S:0 > "]]
ExDialogOp["OdczytajDialog","DIALOG-PASEK-FAZA04"]
ExDialogOp["WyswietlDialog",""]
DispLine[ToStr["#liczbarekordow#S:0 > "]]
//OKALERT["FAZA04-2"]
  CallAlg["READ_DATA_REK"]
//OKALERT["FAZA04-2"]
  goto _wez_next_dekr_rek

// --------------------------------------------------------------------
// ----- petla glowna
 _next_dekr_rek:
  lp := lp + 1
//wyczysc info o bladzie
  RejWstawP_S["A:DATA_blad",""]
  RejWstawP_S["A:DATA_ptaszek",""]
// --- zapisywanie zapisow ksiegowych
 _zap_zap:
//  okalert["mm "+oprdef+"  "+rdzknt+"  "+rzlknt]
  existrdz := RejOp["1:ZnajdzRek",rdzknt]
  exist := next and oprdef = noprdef and oprstr = noprstr and rdzknt = nrdzknt and rzrrdz = nrzrrdz
  if (metrodz="N") exist := next and oprdef = noprdef and oprstr = noprstr and rdzknt = nrdzknt and rzrrdz = nrzrrdz and index_pfx = nindex_pfx
  if (rzrmet="M") exist := next and oprdef = noprdef and oprstr = noprstr and rdzknt = nrdzknt and index_pfx = nindex_pfx
  if (atrvat) CallAlg["WRITE_VAT"]
  if (atrdew) CallAlg["WRITE_DEW"]
  if (atrrzl) CallAlg["WRITE_RZL"]
  if (atrrzr) CallAlg["WRITE_KLN"]
  if (atrrzr) CallAlg["WRITE_RZR"]
 _sum_rdz:
  if (oprstr = "L") kwtwn := kwtwn + oprkwt
  if (oprstr = "R") kwtma := kwtma + oprkwt
  if (cutline or not exist) CallAlg["WRITE_RDZ"]
  CallAlg["READ_DATA_REK"]
  if (not next) goto _end_petla
//OKALERT["FAZA04-3"]
 _disp_tlo:
CallAlg["DISPLAY_PASEK"]
// ----- pobranie nastepnego rekordu w petli glownej
 _wez_next_dekr_rek:
  next := RejOp["A:WezNastepnyRek",""]
  if (not next) goto _zap_zap
  CallAlg["READ_DATA_NEW"]
  goto _next_dekr_rek

// ===== koniec petli
 _end_petla:
 ExDialogOp["UsunDialog",""]

  RejOp["A:ZamknijRej",""]
  RejOp["C:ZamknijRej",""]
  RejOp["M:ZamknijRej",""]
  RejOp["T:ZamknijRej",""]
  RejOp["0:ZamknijRej",""]
  RejOp["1:ZamknijRej",""]
  RejOp["3:ZamknijRej",""]

  if (RejWezP_K["E:LiczbaRekordow"] = 0) goto _end
  line := "BRAKI I NIEPRAWID|LOWO|SCI STWIERDZONE W TABLICY INT_DATA"
  exit := .N.
  IdzDoWydruku["int\int_prte.drk",""]
 _end:
  RejOp["E:ZamknijRej",""]
  if (exit) ExitAlg[1]
 _esc:

// ===== przeniesienie dokumentu do bufora(faza 5)
% FAZA05.ALG
  RejOp["U:OtworzRej1","FRM_MEMO.RJR"]
  RejOp["U:ZnajdzRek",memo_idx]
  sdat1 := RejWezP_S["U:FRM_str8"]
  sdat2 := RejWezP_S["U:FRM_str9"]
  RejOp["U:ZamknijRej",""]
  if (not (sdat1 = "" or sdat2 = "")) goto _date_not_empty
  BEEP[0]
  OkAlert["UWAGA - puste daty$ $podstaw i zapisz daty w .cnv i rozpocznij od fazy$ $""konwertowanie danych do postaci bazowej"""]
  goto _esc
 _date_not_empty:
  RejOp["T:OtworzRej1",naz_temp]
  if (RejOp["T:WezPierwszyRek",""]) goto _temp_not_empty
  BEEP[0]
  OkAlert["Dokument ksi|egowy jest pusty !!!"]
  goto _esc
 _temp_not_empty:
  liczbarekordow := RejWezP_K["T:LiczbaRekordow"]
  lp := 0
  pr := 0
  sm := 70 - StrLen[ToStr["#liczbarekordow#S:0 > "]]
  ExDialogOp["OdczytajDialog","DIALOG-PASEK-FAZA05"]
  ExDialogOp["WyswietlDialog",""]
  DispLine[ToStr["#liczbarekordow#S:0 > "]]

  if (not FinnOp["@0OpenMainX",""]) goto _esc
  dat := C_DATE[255,StringNaLiczbe[StrCut[sdat2,0,2]],StringNaLiczbe[StrCut[sdat2,3,2]]]
  CallAlg["DATA_OSTATNIEGO_KSIEGOWANIA"]
  if (symbol = "") symbol := "XX"
  st := ToStr["*"+symbol+",'#Zrokiem[dat]#S',,"]
  if (dat < lastdataksieg) dat := lastdataksieg
  st := ToStr["#st#S'#dat#S'"]
  st := st +","
  if (odlatr = "TTTTTTTT") st := st + "4"
//opis dokumentu
  st := st +","""+opis_dok_nagl+""""
  FinnOp["Close",""]
  if (not FinnOp["OpenTemp",""]) goto _esc
  FinnLine[st]
  lp := 0

 _next_odl_rek:
  lp := lp + 1
  st := RejWezP_S["T:TEMP_st1"]+RejWezP_S["T:TEMP_st2"]+RejWezP_S["T:TEMP_st3"]
  FinnLine[st]
 _disp_tlo:
  CallAlg["DISPLAY_PASEK"]

 _wez_next_odl_rek:
  if (RejOp["T:WezNastepnyRek",""]) goto _next_odl_rek
  FinnOp["DokOdl",""]
  ExDialogOp["UsunDialog",""]
  if (vatanu) CallAlg["ZAZNACZANIE_ANULOWANYCH_FAKTUR_VAT"]
  RejOp["T:ZamknijRej",""]
 _esc:

// ===== przeniesienie dokumentu do bufora(faza 5) - kazdy dok osobno 
// podzial na dokuemnty ksiegowe - w jedym dok wszytskie z takim samym prefixem
// opisy do naglowkow dokumentow ksiegowych ze zmiennej rzrfak (pole BAZA_rzrfak)
% FAZA05_MMM.ALG
  RejOp["U:OtworzRej1","FRM_MEMO.RJR"]
  RejOp["U:ZnajdzRek",memo_idx]
  sdat1 := RejWezP_S["U:FRM_str8"]
  sdat2 := RejWezP_S["U:FRM_str9"]
  RejOp["U:ZamknijRej",""]
  if (not (sdat1 = "" or sdat2 = "")) goto _date_not_empty
  BEEP[0]
  OkAlert["UWAGA - puste daty$ $podstaw i zapisz daty w .cnv i rozpocznij od fazy$ $""konwertowanie danych do postaci bazowej"""]
  goto _esc
 _date_not_empty:
  RejOp["T:OtworzRej1",naz_temp]
  if (RejOp["T:WezPierwszyRek",""]) goto _temp_not_empty
  BEEP[0]
  OkAlert["Dokument ksi|egowy jest pusty !!!"]
  goto _esc
 _temp_not_empty:
  liczbarekordow := RejWezP_K["T:LiczbaRekordow"]
  lp := 0
  pr := 0
  sm := 70 - StrLen[ToStr["#liczbarekordow#S:0 > "]]
  ExDialogOp["OdczytajDialog","DIALOG-PASEK-FAZA05"]
  ExDialogOp["WyswietlDialog",""]
  DispLine[ToStr["#liczbarekordow#S:0 > "]]

  if (not FinnOp["@0OpenMainX",""]) goto _esc
  dat := C_DATE[255,StringNaLiczbe[StrCut[sdat2,0,2]],StringNaLiczbe[StrCut[sdat2,3,2]]]
  CallAlg["DATA_OSTATNIEGO_KSIEGOWANIA"]
  if (symbol = "") symbol := "XX"
  st := ToStr["*"+symbol+",'#Zrokiem[dat]#S',,"]
  if (dat < lastdataksieg) dat := lastdataksieg
  st := ToStr["#st#S'#dat#S'"]
  st := st +","
  if (odlatr = "TTTTTTTT") st := st + "4"
  pierwsza := st
//opis dokumentu
//  st := st +","""+opis_dok_nagl+""""
  opis_dok_nagl := rejwezp_s["t:temp_fak"]
  st := pierwsza +","""+opis_dok_nagl+""""
  FinnOp["Close",""]
  if (not FinnOp["OpenTemp",""]) goto _esc
  FinnLine[st]
  lp := 0
  tmp_pfx := rejwezp_s["t:temp_pfx"]

 _next_odl_rek:
  lp := lp + 1
//  okalert["zmienna = "+tmp_pfx+"$z rejestru = "+rejwezp_s["t:temp_pfx"]]
  if (not(tmp_pfx = rejwezp_s["t:temp_pfx"])) goto _nowy_dok
 _kont:
  st := RejWezP_S["T:TEMP_st1"]+RejWezP_S["T:TEMP_st2"]+RejWezP_S["T:TEMP_st3"]
  FinnLine[st]
 _disp_tlo:
  CallAlg["DISPLAY_PASEK"]

 _wez_next_odl_rek:
  if (RejOp["T:WezNastepnyRek",""]) goto _next_odl_rek
  FinnOp["DokOdl",""]
  ExDialogOp["UsunDialog",""]
  if (vatanu) CallAlg["ZAZNACZANIE_ANULOWANYCH_FAKTUR_VAT"]
  RejOp["T:ZamknijRej",""]
 _esc:
  ExitAlg[0]
 _nowy_dok:
//utworz dok odlozony
  FinnOp["DokOdl",""]
  tmp_pfx := rejwezp_s["t:temp_pfx"]
  opis_dok_nagl := rejwezp_s["t:temp_fak"]
  st := pierwsza +","""+opis_dok_nagl+""""
  if (not FinnOp["OpenTemp",""]) goto _esc
//pierwsza linia
  FinnLine[st]
  goto _kont

// ================================================================
// ===== definiowanie dekretow
// ===== operacje zwiazane z wykazem polecen
% WYKAZ_DEKRETOW.ALG
  naz_kat := ""
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  RejOp["R:WywolajMenu","1"]
  RejOp["R:ZamknijRej",""]

// ===== definiowanie dekretow
% DEFINIOWANIE_DEKRETOW.ALG
  klucz_vat := ""
  naz_int_nag := ""
  naz_kat := ""
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_int_nag := RejWezP_S["R:dekr_int"]
  naz_intd := RejWezP_S["R:dekr_int"]+":"+StrCut[RejWezP_S["R:dekr_naz"],0,40]
  naz_deff  := "INT_DEFF.RXR"  + "+" + naz_kat + "\int_deff"
  RejOp["R:ZamknijRej",""]
  RejOp["D:OtworzRejSprawdz",naz_deff]
  RejOp["D:WywolajMenu","1"]
//  RejOp["Y:OtworzRejSprawdz",naz_deff]
//  ExDialogOp["IdzDoDialogu","INTDEFFMENU"]
//  RejOp["Y:ZamknijRej",""]
  RejOp["D:ZamknijRej",""]
  ExitAlg[0]

// ===== definiowanie slownika kodow operacji
% DEFINIOWANIE_SLOWSLOW.ALG
  naz_kat := ""
  naz_int := ""
  naz_int_nag := ""
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_slow := "INT_SLOW.RXR" + "+" + naz_kat + "\int_slow"
  naz_deff := "INT_DEFF.RXR" + "+" + naz_kat + "\int_deff"
  RejOp["R:ZamknijRej",""]
  RejOp["S:OtworzRejSprawdz",naz_slow]
//  RejOp["S:WywolajMenu","1"]
  RejOp["S:WywolajMenu","2"]
  RejOp["S:ZamknijRej",""]

// ===== procedura pomocnicza do definiowania slownikow transformacji
% DEFINIOWANIE_SLOWCONV.ALG
  naz_kat := ""
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  if (kod = "F") naz_rej := "INT_RODZ.RXR" + "+" + naz_kat + "\int_rodz"
  if (kod = "L") naz_rej := "INT_ROZL.RXR" + "+" + naz_kat + "\int_rozl"
  if (kod = "H") naz_rej := "INT_KNTR.RXR" + "+" + naz_kat + "\int_kntr"
  if (kod = "Q") naz_rej := "INT_REJV.RXR" + "+" + naz_kat + "\int_rejv"
  if (kod = "V") naz_rej := "INT_KLAS.RXR" + "+" + naz_kat + "\int_klas"
  if (kod = "W") naz_rej := "INT_DEWW.RXR" + "+" + naz_kat + "\int_deww"
  RejOp[kod+":OtworzRej1",naz_rej]
  if (RejWezP_S["R:DEKR_srt"] = "") RejOp[kod+":ZmienKluczRej","2"]
  RejOp[kod+":WywolajMenu","2"]
kontynuuj:
// --- powielanie zamiennika konta  i kontrahenta
  if (StrIn[kod,"FH"] = -1 or RejWezP_S["R:DEKR_tfs"] = "") goto _end
  if (kod = "F") naz_rej := "INT_KNTR.RXR" + "+" + naz_kat + "\int_kntr"
  if (kod = "H") naz_rej := "INT_RODZ.RXR" + "+" + naz_kat + "\int_rodz"
  RejOp[kod+":ZmienKluczRej","1"]
  RejOp["X:OtworzRej1",naz_rej]
  if (not (RejOp["X:WezPierwszyRek",""])) goto _end
 _next_rek:
  if (not (RejWezP_S["X:SUFF_sfx"] = "")) goto _wez_next_rek
  if (not (RejOp[kod+":ZnajdzRek",RejWezP_S["X:SUFF_kod"]])) goto _wez_next_rek
  RejWstawP_S["X:SUFF_sfx",RejWezP_S[kod+":SUFF_sfx"]]
 _wez_next_rek:
  if (RejOp["X:WezNastepnyRek",""]) goto _next_rek
  RejOp["X:ZamknijRej",""]
 _end:
  RejOp[kod+":ZamknijRej",""]
  RejOp["R:ZamknijRej",""]

// ===== definiowanie slownika kont 
% DEFINIOWANIE_SLOWROZR.ALG
  klucz_vat := ""
  naz_int_nag := ""
  naz_kat := ""
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  CallAlg["REJESTR_JOIN"]
//O: rejestr INT_ROZR.RXR
//  ExDialogOp["IdzDoDialogu","INTROZRMENU"]
  RejOp["O:WywolajMenu","2"]
  CallAlg["REJESTR_SPLIT"]
  RejOp["F:ZamknijRej",""]
  RejOp["K:ZamknijRej",""]
  RejOp["O:ZamknijRej",""]
//
% REJESTR_JOIN.ALG
  naz_rej := "INT_RODZ.RXR" + "+" + naz_kat + "\int_rodz"
  RejOp["F:OtworzRej",naz_rej]
  naz_rej := "INT_KNTR.RXR" + "+" + naz_kat + "\int_kntr"
  RejOp["K:OtworzRej",naz_rej]
  naz_rej := "INT_ROZR.RXR" + "+" + naz_kat + "\int_rozr"
  RejOp["UsunPlikRej",naz_rej]
  RejOp["O:OtworzRej",naz_rej]
  if (not (RejOp["K:WezPierwszyRek",""])) ExitAlg[0]
 _next_rek:
  RejOp["O:DodajRek",""]
  xRejWstawP_S["O:SUFF_kod",RejWezP_S["K:SUFF_kod"]]
  xRejWstawP_S["O:SUFF_naz",RejWezP_S["K:SUFF_naz"]]
  xRejWstawP_S["O:SUFF_adr",RejWezP_S["K:SUFF_adr"]]
  xRejWstawP_S["O:SUFF_nip",RejWezP_S["K:SUFF_nip"]]
  xRejWstawP_S["O:SUFF_ktr",RejWezP_S["K:SUFF_sfx"]]
  if (RejOp["F:ZnajdzRek",RejWezP_S["K:SUFF_kod"]]) xRejWstawP_S["O:SUFF_rdz",RejWezP_S["F:SUFF_sfx"]]
  RejOp["O:ZapiszRek",""]
  if (RejOp["K:WezNastepnyRek",""]) goto _next_rek
//
% REJESTR_SPLIT.ALG
//poprawka 2009.03.26: uaktualniea dane w rejestrze zaminnikow kontrahnetow (INT_KNTR) i rjerstrze zamiennikow kont (INT_RODZ) tylko jesli znajdzie kod zrodlowy
  if (not (RejOp["O:WezPierwszyRek",""])) ExitAlg[0]
 _next_rek_zap:
  kod := RejWezP_S["O:SUFF_kod"]
//  RejOp["K:ZnajdzRek",kod]
  if (RejOp["K:ZnajdzRek",kod]) RejWstawP_S["K:SUFF_sfx",RejWezP_S["O:SUFF_ktr"]]
  if (RejOp["F:ZnajdzRek",kod]) RejWstawP_S["F:SUFF_sfx",RejWezP_S["O:SUFF_rdz"]]
//  RejOp["F:ZnajdzRek",kod]
  if (RejOp["O:WezNastepnyRek",""]) goto _next_rek_zap
//
// ===== definiowanie slownika kont 
% DEFINIOWANIE_SLOWRODZ.ALG
  klucz_vat := ""
  naz_int_nag := ""
  kod := "F"
  CallAlg["DEFINIOWANIE_SLOWCONV"]

// ===== definiowanie slownika klasyfikacji
% DEFINIOWANIE_SLOWROZL.ALG
  klucz_vat := ""
  kod := "L"
  CallAlg["DEFINIOWANIE_SLOWCONV"]

// ===== definiowanie slownika kontrahentow
% DEFINIOWANIE_SLOWKNTR.ALG
  klucz_vat := ""
  kod := "H"
  CallAlg["DEFINIOWANIE_SLOWCONV"]

// ===== definiowanie slownika rejestrow VAT
% DEFINIOWANIE_SLOWREJV.ALG
  klucz_vat := ""
  kod := "Q"
  CallAlg["DEFINIOWANIE_SLOWCONV"]

// ===== definiowanie slownika klasyfikacji VAT
% DEFINIOWANIE_SLOWKLAS.ALG
  klucz_vat := ""
  kod := "V"
  CallAlg["DEFINIOWANIE_SLOWCONV"]

// ===== definiowanie slownika walut
% DEFINIOWANIE_SLOWDEWW.ALG
  klucz_vat := ""
  kod := "W"
  CallAlg["DEFINIOWANIE_SLOWCONV"]

// ===== kopiowanie slownikow i definicji pomiedzy poleceniami
% EXPORT_SLOWNIKOW.ALG
  naz_kat := ""
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","5"])) goto koniec1
  naz_int := RejWezP_S["R:DEKR_int"]
  naz_naz := RejWezP_S["R:DEKR_naz"]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_kat_zrod := naz_kat
  naz_int_zrod := naz_int
//kopiowanie listy slownikow KOPIOWANIE.DIC do rejestru pomocniczego
  if (CallAlg["EXPORT_LISTA_SLOW"] = 1) goto koniec2
//  if (not(RejOp["WS:WywolajMenu","0"])) goto koniec2
  if (CallAlg["EXPORT_LISTA_PK"] = 1) goto koniec3
//  if (not(RejOp["WPK:WywolajMenu","0"])) goto koniec3
  tryb_k := 0
  ExDialogOp["IdzDoDialogu","EXPORT"]
  if (D_POS = 1) goto koniec3
//kopiowanie slownikow w petli
  RejOp["WS:ZmienKluczRej","2"]
  RejOp["WPK:ZmienKluczRej","2"]
  if ( not(RejOp["WS:ZnajdzRek","T"]) ) goto bwybor
  if ( not(RejOp["WPK:ZnajdzRek","T"]) ) goto bwybor1
//otworz rej tmp do zapisyania info o przebiegu kopiowania
  RejOp["WI:OtworzRejTemp","WYBOR_INFO.RXR"]
nastws:
  RejOp["WPK:ZnajdzRek","T"]
nastwpk:
  naz_rej := StrCut[RejWezP_S["WS:ws_sym"],0,8]
  DyskOp["NaMale",naz_rej,""]
  naz_rej := D_String
  slow_source := RejWezP_S["WS:ws_sym"] + "+" + naz_kat_zrod + "\"+naz_rej
  slow_destin := RejWezP_S["WS:ws_sym"] + "+" + RejWezP_S["WPK:wpk_kat"] + "\"+naz_rej
//  okalert["destin "+slow_destin]
  slow_tryb := tryb_k
//dodaj rekord do rej z info
  RejOp["WI:DodajRek",""]
  xRejWstawP_S["WI:wi_sym",RejWezP_S["WS:ws_sym"]]
  xRejWstawP_S["WI:wi_opis",RejWezP_S["WS:ws_opis"]]
  xRejWstawP_S["WI:wi_pk_zrod",naz_int_zrod]
  xRejWstawP_S["WI:wi_pk_doc",RejWezP_S["WPK:wpk_sym"]]
  xRejWstawP_S["WI:wi_status","OK"]
  RejOp["WI:ZapiszRek",""]
  CallSl["INTERFEJS->proc_kopiuj_slow"]
//nastepny rekord WPK
  if (not(RejOp["WPK:WezNastepnyRek",""])) goto kontws
  if (RejWezP_L["WPK:wpk_ptaszek"]) goto nastwpk
kontws:
  if (not(RejOp["WS:WezNastepnyRek",""])) goto kon
  if (RejWezP_L["WS:ws_ptaszek"]) goto nastws
kon:
//wyswietl komunikaty z przebiegu kopiowania
  RejOp["WI:WywolajMenu","1"]
  RejOp["WI:ZamknijRej",""]
//  =========
koniec3:
  RejOp["WPK:ZamknijRej",""]
koniec2:
  RejOp["WS:ZamknijRej",""]
koniec1:
  RejOp["R:ZamknijRej",""]
  ExitAlg[0]
bwybor:
  okalert["Nie wybrano ani jednego s|lownika$do kopiowania!"]
  goto koniec3
bwybor1:
  okalert["Nie wybrano ani jednego $docelowego polecenia ksi|egowania!"]
  goto koniec3
//
% EXPORT_LISTA_SLOW.ALG
//wyjscie: 0 - ok cos przekopiowal
//         1 - blad, slownik kopiowanie.dic byl pusty
//         rejestr WS jest otwarty i zawiera liste slownikow do kopiowaniea
//owtorz rej tmp do przepisania listy slownikow
  RejOp["WS:OtworzRejTemp","WYBOR_SLOW.RXR"]
//przepisz slownik KOPIOWANIE.DIC do rej. pomocniczego
  nazwa_pola := WezNazwaSlowS["KOPIOWANIE",.T.]
  if (not(nazwa_pola="")) goto nasttow
  OkAlert["S|lownik z list|a s|lownik|ow do kopiowanie (KOPIOWANIE.DIC)$jest pusty"]
  ExitAlg[1]
nasttow:
  RejOp["WS:DodajRek",""]
  xRejWstawP_S["WS:ws_sym",nazwa_pola]
  xRejWstawP_S["WS:ws_opis",D_STRING]
  xRejWstawP_L["WS:ws_ptaszek",.N.]
  RejOp["WS:ZapiszRek",""]
  nazwa_pola := WezNazwaSlowS["KOPIOWANIE",.N.]
  if (not(nazwa_pola="")) goto nasttow
  ExitAlg[0]
//
% EXPORT_LISTA_PK.ALG
//przepisuje PK - tworzy liste do wyboru PK docelowych!
//wejscie: naz_int - zawiera symbol PK zrodlowego - nie kopiowac do WPK!
//         R: rejestr z PK, z ktorego kopiujemy
//wyjscie: 0 - ok cos przekopiowal
//         1 - blad, nie udalo sie nic przekopiowac?
//         rejestr WPK jest otwarty i zawiera liste slownikow do kopiowaniea
//owtorz rej tmp do przepisania listy slownikow
  bylo := .N.
  RejOp["WPK:OtworzRejTemp","WYBOR_PK.RXR"]
  if (not(RejOp["R:WezPierwszyRek",""])) goto blpusto
next:
//sprawdz, czy jest to rej zrodlowy
  if (RejWezP_S["R:dekr_int"]=naz_int)  goto kont 
//przepisz 
  bylo := .T.
  RejOp["WPK:DodajRek",""]
  CallALg["NAZ_KAT_NA_MALE"]
  xRejWstawP_S["WPK:wpk_kat",naz_kat]
  xRejWstawP_S["WPK:wpk_sym",RejWezP_S["R:dekr_int"]]
  xRejWstawP_S["WPK:wpk_opis",RejWezP_S["R:dekr_naz"]]
  xRejWstawP_L["WPK:wpk_ptaszek",.N.]
  RejOp["WPK:ZapiszRek",""]
kont:
  if (RejOp["R:WezNastepnyRek",""]) goto next
  if (bylo) ExitAlg[0]
  OkAlert["Brak docelowych polece|n ksi|egowania$do wybrania!"]
  ExitAlg[1]
blpusto:
//nie ma PK do wybierania!
  OkAlert["Brak zdefiniowanych polece|n ksi|egowania$do wybrania!"]
  ExitAlg[1]
//
// ===================================================================
// EXPORT.DLG - do wyswietlania danych do kopiownaia slownikow
// ===================================================================
//******************************P********************************
% EXPORT.GUI32.DLG
RESORS = dll\int.dll:INT_EXPORT
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##10,BGT,ADP,,"Wyb|or s|lownik|ow do kopiowania"
##11,BGT,ADP,,"Wyb|or docelowych polece|n"
##202,DZ,ADPH,,"Tryb kopiowania:"
##120,0,P,,"nie nadpisuj danych",,,,,,ZMIENNA:tryb_k,,,1,0 
##121,0,P,,"nadpisuj dane",,,,,,ZMIENNA:tryb_k,,,1,1
##122,0,P,,"przed nadpisaniem pytaj",,,,,,ZMIENNA:tryb_k,,,1,2
##0,BGT,ADP,,$$(@3)
##1,BGT,ADP,,$$(@4)



   #10                         #   #202
                                    #120                       #
                                    #121                       #
   #11                         #    #122                       ##202




          #0          #                #1          #    
                                                                    
                                                 
//
//******************************K*****************************************
% EXPORT.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##10,BGT,ADP,,"Wyb|or s|lownik|ow do kopiowania"
##11,BGT,ADP,,"Wyb|or docelowych polece|n"
##202,DZ,ADPH,,"Tryb kopiowania:"
##120,0,P,,"nie nadpisuj danych",,,,,,ZMIENNA:tryb_k,,,1,0 
##121,0,P,,"nadpisuj dane",,,,,,ZMIENNA:tryb_k,,,1,1
##122,0,P,,"przed nadpisaniem pytaj",,,,,,ZMIENNA:tryb_k,,,1,2
##0,BGT,ADP,,@3
##1,BGT,ADP,,@4



   #10                         #   #202
                                    #120                       #
                                    #121                       #
   #11                         #    #122                       ##202




          #0          #                #1          #    
                                                                    
                                                 
//
% TABLICA-AKCJI-EXPORT
  "AKCJA-PRZED-WYSWIETLENIEM",!ExDialogOp["ZmienNaglowek","Kopiowanie s|lownik|ow z polecenia " + naz_int]
  "AKCJA-BUTTON10",EXPORT_SLOWNIKI
  "AKCJA-BUTTON11",EXPORT_PK
  "AKCJA-BUTTON0",EXPORT_AKCEPT
  "AKCJA-BUTTON1",EXPORT_REZYGN
//
% EXPORT_REZYGN.ALG
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
% EXPORT_AKCEPT.ALG
//sprawdz, czy wybrano choc jeden slownik
  RejOp["WS:ZmienKluczRej","2"]
  if (RejOp["WS:ZnajdzRek","T"]) goto kont
  okalert["Nie wybrano ani jednego s|lownika$do kopiowania!"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
kont:
  RejOp["WS:ZmienKluczRej","1"]
//sprawdz, czy wybrano choc jedno PK docelowe
  RejOp["WPK:ZmienKluczRej","2"]
  if (RejOp["WPK:ZnajdzRek","T"]) goto ok
  okalert["Nie wybrano ani jednego $docelowego polecenia ksi|egowania!"]
  ExDialogOp["IdzDoPozycji","11"]
  ExitAlg[0]
ok:
  RejOp["WPK:ZmienKluczRej","1"]
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
% EXPORT_SLOWNIKI.ALG
  RejOp["WS:WywolajMenu","0"]
//
% EXPORT_PK.ALG
  RejOp["WPK:WywolajMenu","0"]
//
// ===================================================================
// KONIEC EXPORT.DLG - do wyswietlania danych do kopiownaia slownikow
// ===================================================================
//
// ===================================================================
// ========= przegladanie rejestrow pomocniczych do tworzenia polecen
// ===== rejestr bazowy dla tworzenia linii polecenia
% REJESTR_BAZA.ALG
  klucz_vat := ""
  naz_int_nag := ""
  naz_kat := ""
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_baza := "INT_BAZA.RXR" + "+" + naz_kat + "\int_baza"
  naz_errs := "INT_ERRS.RXR" + "+" + naz_kat + "\int_errs"
  RejOp["R:ZamknijRej",""]
  RejOp["B:OtworzRej1",naz_baza]
  RejOp["B:WywolajMenu","1"]
  RejOp["B:ZamknijRej",""]
  ExitAlg[0]

// ===== rejestr bazowy dla tworzenia rejestru kontrahentow
% REJESTR_FIRM.ALG
  klucz_vat := ""
  naz_int_nag := ""
  naz_kat := ""
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_firm := "INT_FIRM.RXR" + "+" + naz_kat + "\int_firm"
  RejOp["R:ZamknijRej",""]
  RejOp["C:OtworzRej1",naz_firm]
  RejOp["C:WywolajMenu","1"]
  RejOp["C:ZamknijRej",""]

// ===== rejestr pomocniczy z danymi po dekretacji
% REJESTR_DATA.ALG
  klucz_vat := ""
  naz_int_nag := ""
  naz_kat := ""
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_data := "INT_DATA.RXR" + "+" + naz_kat + "\int_data"
  naz_errs := "INT_ERRS.RXR" + "+" + naz_kat + "\int_errs"
  RejOp["R:ZamknijRej",""]
  RejOp["C:OtworzRejSprawdz",naz_data]
  RejOp["C:WywolajMenu","1"]
  RejOp["C:ZamknijRej",""]
  ExitAlg[0]
//
// ===== rejestr pomocniczy z danymi do zaksiegowania
% REJESTR_TEMP.ALG
  klucz_vat := ""
  naz_int_nag := ""
  naz_kat := ""
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_temp := "INT_TEMP.RXR" + "+" + naz_kat + "\int_temp"
  RejOp["R:ZamknijRej",""]
  RejOp["C:OtworzRej1",naz_temp]
  RejOp["C:WywolajMenu","1"]
  RejOp["C:ZamknijRej",""]

// ===== rejestr pomocniczy z danymi do zaksiegowania
% REJESTR_PLIK.ALG
  klucz_vat := ""
  naz_int_nag := ""
  naz_kat := ""
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_plik := "INT_PLIK.RXR" + "+" + naz_kat + "\int_plik"
  RejOp["R:ZamknijRej",""]
  RejOp["C:OtworzRej1",naz_plik]
  RejOp["C:WywolajMenu","2"]
  RejOp["C:ZamknijRej",""]

// ===== rejestr pomocniczy z danymi do zaksiegowania
% REJESTR_GLOB.ALG
  klucz_vat := ""
  naz_prg := ""
  naz_kat := ""
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_PRG_NA_MALE"]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_glob := "INT_GLOB.RJR" + "+" + naz_kat + "\int_glob"
  RejOp["R:ZamknijRej",""]
  RejOp["C:OtworzRej1",naz_glob]
  RejOp["C:WywolajMenu","1"]
  RejOp["C:ZamknijRej",""]

// ===== rejestr pomocniczy z wykazem mapotkanych bledow
% REJESTR_ERRS.ALG
  klucz_vat := ""
  naz_int_nag := ""
  naz_kat := ""
  rek_nr := ""
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_errs := "INT_ERRS.RXR" + "+" + naz_kat + "\int_errs"
  RejOp["R:ZamknijRej",""]
  RejOp["C:OtworzRej1",naz_errs]
  RejOp["C:WywolajMenu","2"]
  RejOp["C:ZamknijRej",""]

// ===== rejestr z nazwami rozpoznawanych bledow
% REJESTR_MESS.ALG
  klucz_vat := ""
  RejOp["M:OtworzRej1","INT_MESS.RXR"]
  RejOp["M:WywolajMenu","2"]
  RejOp["M:ZamknijRej",""]

// ========================================================================
// ===== definiowanie rozmieszczenia pol w rekordzie z danymi zrodlowymi
% DEFINIOWANIE_IMPORTU.ALG
  klucz_vat := ""
  naz_prg := ""
  naz_kat := ""
  naz_plk := ""
  nr_plk := .
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
//wybierz polecenie ksiegowania
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not(RejOp["R:WywolajMenu","2"])) goto _zrez
 _dialog_definiowanie:
  D_POS := 10
  ExDialogOp["IdzDoDialogu","DEFINIOWANIE"]
  if (D_POS=91) ExitAlg[0]
 _ok:
  CallALg["NAZ_KAT_NA_MALE"]
  DyskOp["NaMale",naz_plk,""]
  naz_plk := D_String
  if (DyskOp["JestPlik","wlasne\int\"+naz_kat+"\"+naz_plk+".dbf",""]) goto _def
  if (not (YesNAlert["Plik o podanej nazwie nie istnieje$ $Chcesz go za|lo|zy|c ?"])) goto _dialog_definiowanie
 _def:
  naz_impd := "INT_IMPD.RXR" + "+" + naz_kat + "\" + naz_plk
  RejOp["I:OtworzRej1",naz_impd]
//dodaj nazwe pliku zrodlowego do definicji polecenia ksiegowania
  if (nr_plk = .) goto _zamk
  if (not(YesAlert["Doda|c nazw|e pliku ze struktur|a do definicji$polecenia ksi|egowania '"+naz_kat+"'$(plik |xr|od|lowy nr "+ToStr["#nr_plk#S:0"]+")?"])) goto _zamk
  RejWstawP_S["R:dekr_plk"+ToStr["#nr_plk#S:0"],naz_plk]
  RejOp["R:ZapiszRek",""]
_zamk:
  RejOp["R:ZamknijRej",""]
  intlpx := RejWezP_K["I:LiczbaRekordow"]
  intlpz := .
 _dialog_struktura:
  ExDialogOp["IdzDoDialogu","STRUKTURA"]
  if (D_POS=91) ExitAlg[0]
  if (intlpz = 0 or intlpz = . and (intlpx = . or intlpx = 0)) goto _end
  if (intlpz = . or intlpz = intlpx) goto _menu
  if (intlpz > 0 and intlpz < 51) goto _zmiana
 _zmiana:
  if (not (YesNAlert["Czy chcesz zmieni|c ilo|s|c p|ol$ $w definicji rekordu pliku |xr|od|lowego ?"])) goto _dialog_struktura
  if (intlpx < intlpz) goto _add
 _cut:
//usun pola
  RejOp["I:WezOstatniRek",""]
  RejOp["I:UsunRek",""]
  if (intlpz < RejWezP_K["I:LiczbaRekordow"]) goto _cut
  goto _menu
 _add:
//dodaj pola
  intlp := RejWezP_K["I:LiczbaRekordow"]
  kod := ToStr["#intlp#S:0"]
  if (StrLen[kod] = 1) kod := "0"+kod
  kod := "P"+kod
  RejOp["I:DodajRek",""]
  RejWstawP_S["I:IMPD_kod",kod]  
  intlp := intlp + 1
  if (intlp < intlpz) goto _add
//edycja pol
 _menu:
  RejOp["I:WywolajMenu","2"]
  intlpx := RejWezP_K["I:LiczbaRekordow"]
 _end:
  RejOp["I:ZamknijRej",""]
  if (intlpx = 0) RejOp["UsunPlikRej",naz_impd]
  ExitAlg[0]
_zrez:
//zrezygnowanio z wprowadzania struktury rekordu 
  RejOp["R:ZamknijRej",""]
  ExitAlg[0]

// =====================================================================
// ===== przegladanie rejestrow z danymi zrodlowymi
% REJESTR_TXT1.ALG
  klucz_vat := ""
  nr_txt := "1"
  RejOp["C:OtworzRej1","INT_TXT1.RXR"]
  RejOp["C:WywolajMenu","1"]
  RejOp["C:ZamknijRej",""]

% REJESTR_TXT2.ALG
  klucz_vat := ""
  nr_txt := "2"
  RejOp["C:OtworzRej1","INT_TXT2.RXR"]
  RejOp["C:WywolajMenu","1"]
  RejOp["C:ZamknijRej",""]

% REJESTR_TXT3.ALG
  klucz_vat := ""
  nr_txt := "3"
  RejOp["C:OtworzRej1","INT_TXT3.RXR"]
  RejOp["C:WywolajMenu","1"]
  RejOp["C:ZamknijRej",""]

% REJESTR_TXT4.ALG
  klucz_vat := ""
  nr_txt := "4"
  RejOp["C:OtworzRej1","INT_TXT4.RXR"]
  RejOp["C:WywolajMenu","1"]
  RejOp["C:ZamknijRej",""]

% REJESTR_TXT5.ALG
  klucz_vat := ""
  nr_txt := "5"
  RejOp["C:OtworzRej1","INT_TXT5.RXR"]
  RejOp["C:WywolajMenu","1"]
  RejOp["C:ZamknijRej",""]

% REJESTR_TXT6.ALG
  klucz_vat := ""
  nr_txt := "6"
  RejOp["C:OtworzRej1","INT_TXT6.RXR"]
  RejOp["C:WywolajMenu","1"]
  RejOp["C:ZamknijRej",""]

% REJESTR_TXT7.ALG
  klucz_vat := ""
  nr_txt := "7"
  RejOp["C:OtworzRej1","INT_TXT7.RXR"]
  RejOp["C:WywolajMenu","1"]
  RejOp["C:ZamknijRej",""]

% REJESTR_TXT8.ALG
  klucz_vat := ""
  nr_txt := "8"
  RejOp["C:OtworzRej1","INT_TXT8.RXR"]
  RejOp["C:WywolajMenu","1"]
  RejOp["C:ZamknijRej",""]

% REJESTR_TXT9.ALG
  klucz_vat := ""
  nr_txt := "9"
  RejOp["C:OtworzRej1","INT_TXT9.RXR"]
  RejOp["C:WywolajMenu","1"]
  RejOp["C:ZamknijRej",""]

// ========================================================================
// =========== drukowanie definicji i slownikow
// ===== drukowanie definicji dekretow
% DRUKOWANIE_DEKRETOW.ALG
  klucz_vat := ""
  naz_kat := ""
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_intd := RejWezP_S["R:dekr_int"]+":"+StrCut[RejWezP_S["R:dekr_naz"],0,40]
  naz_deff := "INT_DEFF.RXR" + "+" + naz_kat + "\int_deff"
  naz_slow := "INT_SLOW.RXR" + "+" + naz_kat + "\int_slow"
  RejOp["R:ZamknijRej",""]
  IdzDoWydruku["int\int_prtd.drk",""]

// ===== drukowanie slownika kont  i kontrahentow
% DRUKOWANIE_SLOWROZR.ALG
  klucz_vat := ""
  naz_kat := ""
//zmienna zmenu - czy wydruk z okienka menu na rekordy
  zmenu := .N.
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_intd := RejWezP_S["R:dekr_int"]+":"+StrCut[RejWezP_S["R:dekr_naz"],0,40]
  naz_plik := "INT_ROZR.RXR" + "+" + naz_kat + "\int_rozr"
  RejOp["R:ZamknijRej",""]
  IdzDoWydruku["int\int_prts.drk",""]

// ===== drukowanie slownika kont 
% DRUKOWANIE_SLOWRODZ.ALG
  klucz_vat := ""
  naz_kat := ""
  zmenu := .N.
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_intd := RejWezP_S["R:dekr_int"]+":"+StrCut[RejWezP_S["R:dekr_naz"],0,40]
  naz_plik := "INT_RODZ.RXR" + "+" + naz_kat + "\int_rodz"
  RejOp["R:ZamknijRej",""]
  IdzDoWydruku["int\int_prts.drk",""]

// ===== drukowanie slownika klasyfikacji
% DRUKOWANIE_SLOWROZL.ALG
  klucz_vat := ""
  naz_kat := ""
  zmenu := .N.
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_intd := RejWezP_S["R:dekr_int"]+":"+StrCut[RejWezP_S["R:dekr_naz"],0,40]
  naz_plik := "INT_ROZL.RXR" + "+" + naz_kat + "\int_rozl"
  RejOp["R:ZamknijRej",""]
  IdzDoWydruku["int\int_prts.drk",""]

// ===== drukowanie slownika kontrahentow
% DRUKOWANIE_SLOWKNTR.ALG
  klucz_vat := ""
  naz_kat := ""
  zmenu := .N.
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_intd := RejWezP_S["R:dekr_int"]+":"+StrCut[RejWezP_S["R:dekr_naz"],0,40]
  naz_plik := "INT_KNTR.RXR" + "+" + naz_kat + "\int_kntr"
  RejOp["R:ZamknijRej",""]
  IdzDoWydruku["int\int_prts.drk",""]

// ===== drukowanie slownika rejestrow VAT
% DRUKOWANIE_SLOWREJV.ALG
  klucz_vat := ""
  naz_kat := ""
  zmenu := .N.
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_intd := RejWezP_S["R:dekr_int"]+":"+StrCut[RejWezP_S["R:dekr_naz"],0,40]
  naz_plik := "INT_REJV.RXR" + "+" + naz_kat + "\int_rejv"
  RejOp["R:ZamknijRej",""]
  IdzDoWydruku["int\int_prts.drk",""]

// ===== drukowanie slownika klasyfikacji VAT
% DRUKOWANIE_SLOWKLAS.ALG
  klucz_vat := ""
  naz_kat := ""
  zmenu := .N.
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_intd := RejWezP_S["R:dekr_int"]+":"+StrCut[RejWezP_S["R:dekr_naz"],0,40]
  naz_plik := "INT_KLAS.RXR" + "+" + naz_kat + "\int_klas"
  RejOp["R:ZamknijRej",""]
  IdzDoWydruku["int\int_prts.drk",""]

// ===== drukowanie slownika dewiz
% DRUKOWANIE_SLOWDEWW.ALG
  klucz_vat := ""
  naz_kat := ""
  zmenu := .N.
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WywolajMenu","0"])) ExitAlg[0]
  CallALg["NAZ_KAT_NA_MALE"]
  naz_intd := RejWezP_S["R:dekr_int"]+":"+StrCut[RejWezP_S["R:dekr_naz"],0,40]
  naz_plik := "INT_DEWW.RXR" + "+" + naz_kat + "\int_deww"
  RejOp["R:ZamknijRej",""]
  IdzDoWydruku["int\int_prts.drk",""]

// ===== drukowanie zestawu sklasyfikowanych bledow
% DRUKOWANIE_SLOWMESS.ALG
  klucz_vat := ""
  RejOp["S:OtworzRej1","INT_MESS.RXR"]
  IdzDoWydruku["int\int_prtm.drk",""]

// ==== dodatkowe procedury =================================================
// ==========================================================================
// ===== budowanie konta  (prefix + suffix)
% SUBSTYTUT.ALG
  kod := ""
  sfx := ""
  if (trb = "") goto _ok_sfx
// ----- suffix zrodlowy
  if (index = "1F01") sfx := RejWezP_S["B:BAZA_rdzsfx"]
  if (index = "1L01") sfx := RejWezP_S["B:BAZA_rzlsfx"]
  if (index = "1H01") sfx := RejWezP_S["B:BAZA_klnsfx"]
  if (index = "1W01") sfx := RejWezP_S["B:BAZA_vatrej"]
  if (index = "1V01") sfx := RejWezP_S["B:BAZA_vatsfx"]
  if (index = "1D01") sfx := RejWezP_S["B:BAZA_dewsfx"]
  kod := pfx + sfx
  if (index = "1D01" and (dewsym = "" or dewsym == "PLZ")) goto _ok_sfx
  if (trb == "Z" and not (kod = "")) goto _ok_sfx
  if (not (sfx = "")) goto _sfx_T
// ----- brak suffix'a w rejestrze BAZA
  index := StrCut[index,0,3] + "2"
  goto _write_burak
// ----- suffix zamienny
 _sfx_T:
  if (index = "1F01") kod := "F"
  if (index = "1L01") kod := "L"
  if (index = "1H01") kod := "K"
  if (index = "1W01") kod := "Q"
  if (index = "1V01") kod := "V"
  if (index = "1D01") kod := "W"
  if (index = "1D01" and sfx == "PLZ") goto _ok_sfx
  if (RejOp[kod+":ZnajdzRek",sfx]) goto _exist_sfx
  RejOp[kod+":DodajRek",""]
  RejWstawP_S[kod+":SUFF_kod",sfx]
  if (not (index = "1H01" or index = "1F01")) goto _loop_adr
  RejWstawP_S[kod+":SUFF_naz",RejWezP_S["B:BAZA_rdznaz"]]
  if (not (RejOp["C:ZnajdzRek",sfx])) goto _loop_adr
  RejWstawP_S[kod+":SUFF_adr",RejWezP_S["C:FIRM_promst"]+" "+RejWezP_S["C:FIRM_proadr"]]
  RejWstawP_S[kod+":SUFF_nip",RejWezP_S["C:FIRM_pronip"]]
 _loop_adr:
  if (index = "1L01") RejWstawP_S[kod+":SUFF_naz",RejWezP_S["B:BAZA_rzlnaz"]]
 _exist_sfx:
  sfx := RejWezP_S[kod+":SUFF_sfx"]
  if (not (sfx = "")) goto _ok_sfx
 _write_burak:
  buraki := buraki + index
  ExitAlg[1]
 _ok_sfx:
  kod := pfx + sfx
//madzia
//  okalert["substytut pxf+sfx "+kod]

// ===== dopisywanie suffix'a kontrahenta do rejestru transformacji
% SUBST_KLN.ALG
  sfx := RejWezP_S["B:BAZA_klnsfx"]
  if (not (sfx = "")) goto _ok_sfx
  buraki := buraki + "1H02"
  ExitAlg[0]
 _ok_sfx:
  if (RejOp["K:ZnajdzRek",sfx]) goto _exist_sfx
  RejOp["K:DodajRek",""]
  RejWstawP_S["K:SUFF_kod",sfx]
  RejWstawP_S["K:SUFF_naz",RejWezP_S["B:BAZA_rdznaz"]]
  if (not (RejOp["C:ZnajdzRek",sfx])) goto _exist_sfx
  RejWstawP_S["K:SUFF_adr",RejWezP_S["C:FIRM_promst"]+" "+RejWezP_S["C:FIRM_proadr"]]
  RejWstawP_S["K:SUFF_nip",RejWezP_S["C:FIRM_pronip"]]
 _exist_sfx:
  if (RejWezP_S["K:SUFF_sfx"] = "") buraki := buraki + "1H01"

// ===== zapis bledow wykrytych w trakcie dekretacji
% WRITE_BAZA_BURAK.ALG
  index :=  oprdef + "&" + errkod + "&" + errknt
  if (RejOp["E:ZnajdzRek",index]) ExitAlg[0]
  RejOp["E:DodajRek",""]
  xRejWstawP_S["E:ERRS_idx",index]
  xRejWstawP_S["E:ERRS_kod",errkod]
  xRejWstawP_S["E:ERRS_ob0",oprdef]
  xRejWstawP_S["E:ERRS_ob1",errknt]
//odszukaj opis bˆ©du
  op_bl := ""
  if (RejOp["M:ZnajdzRek",errkod]) op_bl := RejWezP_S["M:mess_mes"]
  xRejWstawP_S["E:ERRS_mes",op_bl]
//identyfikator bledu z rejestru INT_BAZA
  xRejWstawP_S["E:ERRS_rek","INT_BAZA"+ToStr["#RejWezP_K[""B:BAZA_id""]#S:0"]]
  RejOp["E:ZapiszRek",""]
//dopisz info o bladzie do int_baza
//  if (not(fazanr =3)) ExitAlg[0]
//odszukaj opis bˆ©du
  op_bl := ""
  if (RejOp["M:ZnajdzRek",errkod]) op_bl := RejWezP_S["M:mess_mes"]
  RejWstawP_S["B:BAZA_blad","B|l|ad!/"+errkod+"/"+op_bl]
  RejWstawP_S["B:BAZA_ptaszek",">"]
//  RejWstawP_S["B:BAZA_ptaszek","Û"]
  ExitAlg[0]

// ===== dopisywanie zarejestrowanych bledow
% ADD_BURAK.ALG
  nr := 0
 _next_nr:
  if (4*nr = StrLen[buraki]) ExitAlg[0]
  errkod := StrCut[buraki,4*nr,4]
  errknt := rdzknt
  if (StrIn[errkod,"1L01 1L02 1L03 1L04 1L05 1L06 1L07"] > -1) errknt := rzlknt
  CallAlg["WRITE_BAZA_BURAK"]
  nr := nr + 1
  goto _next_nr

// ==========================================================================
// ===== ustalenie atrybutow konta  na podstawie planu kont
% ATRYBUTY_PLN.ALG
  sbyte := ""
  bit := 128
 _next_atr:
  if (lbyte < bit) goto _no_atr
  sbyte := sbyte + "T"
  lbyte := lbyte - bit
  goto _ok_atr
 _no_atr:
  sbyte := sbyte + "N"
 _ok_atr:
  if (bit = 1) ExitAlg[0]
  bit := bit / 2
  goto _next_atr

// ===== ustalenie atrybutow konta  na podstawie definicji dekretow
% ATRYBUTY_DEF.ALG
  defatr := "N"
  kod := "T"
  if (vatmod = "") kod := "N"
  defatr := defatr + kod
  kod := "T"
  dewsym := RejWezP_S["B:BAZA_dewsfx"]
  if (dewmod = "" or (dewmod = "D" and (dewsym = "" or dewsym == "PLZ"))) kod := "N"
  defatr := defatr + kod + "N"
  kod := "T"
  if (rzlmod = "") kod := "N"
  defatr := defatr + kod
  kod := "T"
  if (rzrmod = "") kod := "N"
  defatr := defatr + kod +"NN"

// ===== korelacja miedzy atrybutem dewizowym a kontem zbiorczym nadrzednym
% ZMIANA_ATRYBUTU_DEW.ALG
  existzbr := RejOp["1:SzukajRek",rdzknt]
  if (existzbr) RejOp["1:WezPoprzedniRek",""]
  if (not (existzbr)) RejOp["1:WezOstatniRek",""]
 _prev:
  lbyte := RejWezP_K["1:plan_cechy"]
  CallAlg["ATRYBUTY_PLN"]
  if (StrCut[sbyte,7,1] == "T") goto _memo
  if (RejOp["1:WezPoprzedniRek",""]) goto _prev
 _memo:
  dewsym := RejWezP_S["B:BAZA_dewsfx"]
  if (dewsym == "PLZ" or StrCut[sbyte,2,1] == "N" and dewsym == "") defatr := StrCut[defatr,0,2] + "N" + StrCut[defatr,3,8]
  
// ===== preparowanie atrybutow konta 
% ATRYBUTY_PRP.ALG
  defatr := ""
  if (StrCut[rdzatr,1,1] = "T") defatr := defatr + "V"
  if (StrCut[rdzatr,2,1] = "T") defatr := defatr + "D"
  if (StrCut[rdzatr,4,1] = "T") defatr := defatr + "L"
  if (StrCut[rdzatr,5,1] = "T") defatr := defatr + "R"

// ==========================================================================
// ===== weryfikacja kompletnosci o poprawnosci konta 
% TEST_RDZ.ALG
  CallAlg["ATRYBUTY_DEF"]
  rdzatr := defatr
  index := "1F01"
  if (CallAlg["SUBSTYTUT"] = 1) goto _esc
  rdzknt := kod
  existrdz := RejOp["1:ZnajdzRek",rdzknt]
  if (existrdz) goto _exist_knt
// --- nie ma konta w planie kont
  if (rdzadd = "A") goto _ustaw_atr_DEFF
  buraki := buraki + "1F03"
  goto _esc
// --- jest konto w planie kont
 _exist_knt:
  lbyte := RejWezP_K["1:plan_cechy"]
  CallAlg["ATRYBUTY_PLN"]
  rdzatr := sbyte
// --- testowanie atrybutow
  if (StrCut[rdzatr,7,1] = "T") buraki := buraki + "1F06"
  if (StrCut[rdzatr,6,1] = "T") buraki := buraki + "1F07"
  if (StrCut[rdzatr,1,1] = "T" and StrCut[defatr,1,1] = "N") buraki := buraki + "1V08"
  if (StrCut[rdzatr,2,1] = "T" and StrCut[defatr,2,1] = "N") buraki := buraki + "1D08"
  if (StrCut[rdzatr,4,1] = "T" and StrCut[defatr,4,1] = "N") buraki := buraki + "1L08"
  if (StrCut[rdzatr,5,1] = "T" and StrCut[defatr,5,1] = "N") buraki := buraki + "1R08"
  if (rdzmod = "") goto _esc
  if (RejWezP_S["B:BAZA_rdznaz"] = "") buraki := buraki + "1F05"
  goto _esc
// --- nadanie autrybutow konta na podstawie DEFF
 _ustaw_atr_DEFF:
  if (dewmod == "Z") CallAlg["ZMIANA_ATRYBUTU_DEW"]
  rdzatr := defatr
  if (RejWezP_S["B:BAZA_rdznaz"] = "") buraki := buraki + "1F04"
 _esc:

// ==== weryfikacja kompletnosci i poprawnosci zapisow na klasyfikacji
% TEST_RZL.ALG
  index := "1L01"
  if (CallAlg["SUBSTYTUT"] = 1) goto _esc
  rzlknt := kod
  existrzl := RejOp["2:ZnajdzRek",kod]
  if (existrzl) goto _exist_knt
// --- nie ma konta w planie kont
  if (rzladd = "A") goto _sprawdz_naz
  buraki := buraki + "1L03"
  goto _esc
// --- jest konto w planie kont
 _exist_knt:
  lbyte := RejWezP_K["2:plan_cechy"]
  CallAlg["ATRYBUTY_PLN"]
  if (buraki !== "*1F06*" or buraki !== "*1F07*") goto _esc
  if (StrCut[sbyte,7,1] = "T") buraki := buraki + "1L06"
  if (StrCut[sbyte,6,1] = "T") buraki := buraki + "1L07"
  if (rzlmod = "") goto _esc
  if (RejWezP_S["B:BAZA_rzlnaz"] = "") buraki := buraki + "1L05"
  goto _esc
 _sprawdz_naz:
  if (RejWezP_S["B:BAZA_rzlnaz"] = "") buraki := buraki + "1L04"
 _esc:

// ===== weryfikacja kompletnosci i poprawnosci zapisow rozrachunkowych
% TEST_RZR.ALG
  if (not existrdz) goto _new_rdz
// --- konto  istnieje
  klnpln := RejWezP_S["1:plan_klsym"]
  if (klnpln = "") goto _blad_O
  if (not (RejOp["0:ZnajdzRek",klnpln])) rzrmod := "A"
// --- konto  nie istnieje
 _new_rdz:
  klnsfx := RejWezP_S["B:BAZA_klnsfx"]
  if (existrdz and rzrmod = "N" and klnsfx = "") goto _sprawdz_BAZA
  if (not (klnsfx = "")) goto _sprawdz_FIRM
  goto _blad_7
// --- czy w rej. FIRM istnieje opis kontrahenta
 _sprawdz_FIRM:
  if (RejOp["C:ZnajdzRek",klnsfx]) goto _prep_kln
  goto _blad_P
// --- preparowanie symbolu kontrahenta na podstawie DEFF
 _prep_kln:
  index := "1H01"
  if (CallAlg["SUBSTYTUT"] = 0) goto _porownywanie_symboli
  goto _esc
// --- porownywanie symboli
 _porownywanie_symboli:
//  okalert["klnpln "+klnpln]
//  okalert["kod "+kod]
  if (not existrdz) klnpln := kod
  if (not (klnpln = kod)) goto _blad_Q
// --- sprawdzenie kompletnosci i poprawnosci danych w rejestrze BAZA
 _sprawdz_BAZA:
  if (RejWezP_S["B:BAZA_rzrfak"] = "") goto _blad_R10
  if (RejWezP_D["B:BAZA_rzrdat"] = '') goto _blad_R11
  if (RejWezP_D["B:BAZA_rzrtrm"] = '') goto _blad_R12
  kod := oprstr + RejWezP_S["B:BAZA_rzrtyp"] + RejWezP_S["B:BAZA_rzrrdz"]
//  if (kod = "LOT" or kod = "RDT" or kod = "LDZ" or kod = "ROZ") goto _write_FIRM
//poprawka magda pojemniki "ROT" zwrot pojemnikow od odbiorcy
  if (kod = "LOT" or kod = "ROT" or kod = "RDT" or kod = "LDZ" or kod = "ROZ") goto _write_FIRM
  if (kod = "LOK" or kod = "RDK" or kod = "LDK" or kod = "ROK") goto _write_FIRM
  goto _blad_R13
// --- dopisanie symboli konta i kontrahenta do FIRM
 _write_FIRM:
  if (existrdz and rzrmod = "N" and klnsfx = "") goto _esc
  RejWstawP_S["C:FIRM_prordz",rdzknt]
  RejWstawP_S["C:FIRM_prokln",klnpln]
  klnmod := rzrmod
  goto _esc

// ----- nie zostal zdefiniowany suffix kontrahenta w rejestrze BAZA
 _blad_7:
  buraki := buraki + "1H02"
  goto _esc
// ----- nie zostal zdefiniowany symbol kontrahenta w planie kont
 _blad_O:
  buraki := buraki + "1H03"
  goto _esc
// ----- brak danych o kontrahencie w rejestrze INT_FIRM
 _blad_P:
  buraki := buraki + "1H04"
  goto _esc
// ----- symbole kontrahenta z INT_DEFF i planu kont sa rozne
 _blad_Q:
  buraki := buraki + "1H05"
  goto _esc
// ----- brak symbolu transakcji
 _blad_R10:
  buraki := buraki + "1R10"
  goto _esc
// ----- brak daty transakcji
 _blad_R11:
  buraki := buraki + "1R11"
  goto _esc
// ----- brak terminu platnosci
 _blad_R12:
  buraki := buraki + "1R12"
  goto _esc
// ----- brak lub niepoprawne zestawienie typu z rodzajem dokumentu
 _blad_R13:
  buraki := buraki + "1R13"
 _esc:

// ===== weryfikacja kompletnosci i poprawnosci zapisow VAT
% TEST_VAT.ALG
// --- ustalenie symbolu rejestru VAT
  pfx := ""
  trb := "T"
  index := "1W01"
  if (CallAlg["SUBSTYTUT"] = 1) goto _esc
  vatrej := kod
  if (RejOp["3:ZnajdzRek",vatrej]) goto _sprawdz_rodz
  buraki := buraki + "1V18"
  goto _sprawdz_klas
 _sprawdz_rodz:
  if (RejWezP_S["3:rejkonto"] = rdzknt) goto _sprawdz_fakt
  buraki := buraki + "1V19"
// --- sprawdzenie istnienia faktury VAT w rejestrze typu sprzedaz
 _sprawdz_fakt:
  if (RejWezP_S["3:rejtyp"] = "ZAKUP") goto _sprawdz_klas
  if (not (RejOp["4:ZnajdzRek",vatrej+"*"+RejWezP_S["B:BAZA_vatdok"]])) goto _sprawdz_klas
  if (RejWezP_L["4:vatanulowany"]) goto _sprawdz_klas
  buraki := buraki + "1V20"
// --- ustalenie symbolu klasyfikacji VAT
 _sprawdz_klas:
  pfx := ""
  trb := "T"
  index := "1V01"
  if (CallAlg["SUBSTYTUT"] = 1) goto _esc
  vatvat := kod
// --- wczytanie suffix'a kontrahenta
  klnsfx := RejWezP_S["B:BAZA_klnsfx"]
  if (not (klnsfx = "")) goto _sprawdz_FIRM
  buraki := buraki + "1H02"
  goto _esc
// --- czy w rej. FIRM istnieje opis kontrahenta
 _sprawdz_FIRM:
  if (RejOp["C:ZnajdzRek",klnsfx]) goto _sprawdz_BAZA
  buraki := buraki + "1H04"
  goto _esc
// --- sprawdzanie poprawnosci danych w BAZA
 _sprawdz_BAZA:
  if (RejWezP_S["B:BAZA_vatdok"] = "") buraki := buraki + "1V11"
  if (RejWezP_D["B:BAZA_vatdat"] = '') buraki := buraki + "1V12"
  if (RejWezP_D["B:BAZA_vatspr"] = '') buraki := buraki + "1V13"
  if (RejWezP_D["B:BAZA_vatobw"] = '') buraki := buraki + "1V14"
  kod := RejWezP_S["B:BAZA_vatgus"]
  if (StrIn[kod,"TUMSWPIR"] = -1) buraki := buraki + "1V15"
  kwt := RejWezP_K["B:BAZA_oprkwt"]
  net := RejWezP_K["B:BAZA_vatnet"]
  brt := RejWezP_K["B:BAZA_vatbrt"]
  if (not (vatvat == "RESZTA") and not (Round[Round[net,2] + Round[kwt,2],2] = Round[brt,2])) buraki := buraki + "1V16"
  if (vatvat == "RESZTA" and not (Round[net,2] = 0) and not (Round[kwt,2] = 0)) buraki := buraki + "1V16"
  kod := RejWezP_S["B:BAZA_vattyp"]
  if (kod = "FV" or kod = "P" or kod = "PV" or kod = "RU" or kod = "F" or kod = "RW" or kod = "FP" or kod = "RP" or kod = "SD" or kod = "DV" or kod = "ANU" or kod = "FZ" or kod = "RZ" or kod = "PZ" or kod = "TX" or kod = "R") goto _esc
  if (kod = "FVK" or kod = "RUK" or kod = "FK" or kod = "RWK" or kod = "FPK" or kod = "RPK" or kod = "SDK" or kod = "DVK" or kod = "PA" or kod = "PAK" or kod = "FZK" or kod = "WD" or kod = "WDK") goto _esc
  buraki := buraki + "1V17"
 _esc:

// ===== weryfikacja kompletnosci i poprawnosci zapisow dewizowych
% TEST_DEW.ALG
// --- ustalenie symbolu waluty
  pfx := ""
  trb := "T"
  index := "1D01"
  if (CallAlg["SUBSTYTUT"] = 1) goto _esc
  dewsym := kod
// --- sprawdzanie poprawnosci zamiennika waluty
  if (dewmod = "") goto _esc
  if (kod = "" or kod == "PLZ") goto _sprawdz_BAZA
// --- sprawdzanie poprawnosci kodu waluty
 _sprawdz_DIC:
  if (kod == "PLZ") goto _esc
  wal := WezNazwaSlow[0,.T.]
 _test_DIC:
  if (wal = kod) goto _sprawdz_BAZA
  if (wal = "") buraki := buraki + "1D05"
  if (wal = "") goto _sprawdz_BAZA
  wal := WezNazwaSlow[0,.N.]
  goto _test_DIC
// --- sprawdzanie poprawnosci danych w BAZA
 _sprawdz_BAZA:
  if (kod == "PLZ") buraki := buraki + "1D03"
  if (RejWezP_S["B:BAZA_dewsfx"] = "") buraki := buraki + "1D08"
  if (RejWezP_K["B:BAZA_dewkwt"] =  .) buraki := buraki + "1D04"
 _esc:

// ===== zapis bledow wykrytych w trakcie ksiegowania
% WRITE_ERROR.ALG
  buraki := ToStr["#lp#S:0"]
  idx := FillString[6-StrLen[buraki],"0"] + buraki + "&" + errkod
  if (RejOp["E:ZnajdzRek",idx]) ExitAlg[0]
  RejOp["E:DodajRek",""]
  xRejWstawP_S["E:ERRS_idx",idx]
  xRejWstawP_S["E:ERRS_kod",errkod]
  xRejWstawP_S["E:ERRS_ob0",buraki]
  xRejWstawP_S["E:ERRS_ob1",errknt]
//odszukaj opis bˆ©du
  op_bl := ""
  if (RejOp["M:ZnajdzRek",errkod]) op_bl := RejWezP_S["M:mess_mes"]
  xRejWstawP_S["E:ERRS_mes",op_bl]
//identyfikator bledu z rejestru INT_DATA
  xRejWstawP_S["E:ERRS_rek","INT_DATA"+ToStr["#RejWezP_K[""A:DATA_id""]#S:0"]]
  RejOp["E:ZapiszRek",""]
//odszukaj opis bˆ©du
  op_bl := ""
  if (RejOp["M:ZnajdzRek",errkod]) op_bl := RejWezP_S["M:mess_mes"]
  RejWstawP_S["A:DATA_blad","B|l|ad!/"+errkod+"/"+op_bl]
  RejWstawP_S["A:DATA_ptaszek",">"]
  ExitAlg[0]

// ===== kopiowanie danych z rejestru BAZA do DATA
% COPY_BAZA_TO_DATA.ALG
  oprpfx := RejWezP_S["B:BAZA_oprpfx"]
  rzrfak := RejWezP_S["B:BAZA_rzrfak"]
  rzrdat := RejWezP_D["B:BAZA_rzrdat"]
  rzrtrm := RejWezP_D["B:BAZA_rzrtrm"]
  rzrtyp := RejWezP_S["B:BAZA_rzrtyp"]
  rzrrdz := RejWezP_S["B:BAZA_rzrrdz"]
  vatdok := RejWezP_S["B:BAZA_vatdok"]
  vatgus := RejWezP_S["B:BAZA_vatgus"]
  opridx := oprpfx+"&"+oprdef+"&"+oprstr+"&"+rdzknt+"&"+vatrej+"&"+vatdok+"&"+vatvat+"&"+vatgus+"&"+rzrfak+"&"+rzrdat+"&"+rzrtrm+"&"+rzrtyp+"&"+rzrrdz+"&"+rzlknt+"&"+dewsym
//  okalert["prze z BAZA do DATA. OPRIDX "+opridx+"$rzlmet= "+rzlmet]
  if (rzlmet="M") goto _mm
  if (rzrmet="M") goto _mm
  if (RejOp["A:ZnajdzRek",opridx]) goto _loop_add_rek
_kont_m:
  RejOp["A:DodajRek",""]
  xRejWstawP_K["A:DATA_wnma",wnma]
  xRejWstawP_S["A:DATA_opridx",opridx]

  xRejWstawP_S["A:DATA_oprdef",oprdef]
  xRejWstawP_S["A:DATA_oprstr",oprstr]
  xRejWstawP_S["A:DATA_oprtrs",oprtrs]
  xRejWstawP_S["A:DATA_oprznk",RejWezP_S["D:DEFF_oprznk"]]

  xRejWstawP_S["A:DATA_rdzknt",rdzknt]
  xRejWstawP_S["A:DATA_rdznaz",RejWezP_S["B:BAZA_rdznaz"]]
  xRejWstawP_S["A:DATA_rdzadd",rdzadd]
  xRejWstawP_S["A:DATA_rdzmod",rdzmod]
  xRejWstawP_S["A:DATA_rdzatr",rdzatr]

  atr := .N.
  if (StrCut[rdzatr,4,1] = "T") atr := .T.
  if (atr) xRejWstawP_S["A:DATA_rzlknt",rzlknt]
  if (atr) xRejWstawP_S["A:DATA_rzlnaz",RejWezP_S["B:BAZA_rzlnaz"]]
  if (atr) xRejWstawP_S["A:DATA_rzlmod",rzlmod]
  if (atr) xRejWstawP_S["A:DATA_rzlmet",rzlmet]

  atr := .N.
  if (StrCut[rdzatr,5,1] = "T" or StrCut[rdzatr,1,1] = "T") atr := .T.
  if (atr) xRejWstawP_S["A:DATA_klnsfx",RejWezP_S["B:BAZA_klnsfx"]]
  if (atr) xRejWstawP_S["A:DATA_klnpln",klnpln]
  if (atr) xRejWstawP_S["A:DATA_klnmod",klnmod]

  atr := .N.
  if (StrCut[rdzatr,5,1] = "T") atr := .T.
  if (atr) xRejWstawP_S["A:DATA_rzrfak",rzrfak]
  if (atr) xRejWstawP_D["A:DATA_rzrdat",rzrdat]
  if (atr) xRejWstawP_D["A:DATA_rzrtrm",rzrtrm]
  if (atr) xRejWstawP_S["A:DATA_rzrtyp",rzrtyp]
  if (atr) xRejWstawP_S["A:DATA_rzrrdz",rzrrdz]
  if (atr) xRejWstawP_S["A:DATA_rzrmet",rzrmet]

  atr := .N.
  if (StrCut[rdzatr,1,1] = "T") atr := .T.
  if (atr) xRejWstawP_S["A:DATA_vatrej",vatrej]
  if (atr) xRejWstawP_S["A:DATA_vatdok",vatdok]
  if (atr) xRejWstawP_S["A:DATA_vatold",RejWezP_S["B:BAZA_vatold"]]
  if (atr) xRejWstawP_S["A:DATA_vattyp",RejWezP_S["B:BAZA_vattyp"]]
  if (atr) xRejWstawP_D["A:DATA_vatdat",RejWezP_D["B:BAZA_vatdat"]]
  if (atr) xRejWstawP_D["A:DATA_vatspr",RejWezP_D["B:BAZA_vatspr"]]
  if (atr) xRejWstawP_D["A:DATA_vatobw",RejWezP_D["B:BAZA_vatobw"]]
  if (atr) xRejWstawP_D["A:DATA_vatplt",RejWezP_D["B:BAZA_vatplt"]]
  if (atr) xRejWstawP_L["A:DATA_vattrojstr",RejWezP_L["B:BAZA_vattrojstr"]]
  if (atr) xRejWstawP_S["A:DATA_vatkodue",RejWezP_S["B:BAZA_vatkodue"]]
  if (atr) xRejWstawP_S["A:DATA_vatnipue",RejWezP_S["B:BAZA_vatnipue"]]
  if (atr) xRejWstawP_S["A:DATA_vatfpl",RejWezP_S["B:BAZA_vatfpl"]]
  if (atr) xRejWstawP_D["A:DATA_rzrtrm",RejWezP_D["B:BAZA_vatplt"]]
  if (atr) xRejWstawP_S["A:DATA_vatvat",vatvat]
  if (atr) xRejWstawP_S["A:DATA_vatgus",vatgus]
  if (atr) xRejWstawP_S["A:DATA_vatuwagi",RejWezP_S["B:BAZA_vatuwagi"]]
  if (atr) xRejWstawP_S["A:DATA_vatsposob",RejWezP_S["B:BAZA_vatsposob"]]
  if (atr) xRejWstawP_S["A:DATA_vatkontoplat",RejWezP_S["B:BAZA_vatkontoplat"]]
  if (atr) xRejWstawP_S["A:DATA_vatkontonetto",RejWezP_S["B:BAZA_vatkontonetto"]]
  if (atr and not (vatanu) and not (RejWezP_S["B:BAZA_vatold"] = "") and RejWezP_S["B:BAZA_vattyp"] == "ANU") vatanu := .T.

  if (StrCut[rdzatr,2,1] = "T") xRejWstawP_S["A:DATA_dewsym",dewsym]

 _loop_add_rek:
//  okalert["nzalzeiono  OPRIDX "+opridx+"$rzlmet= "+rzlmet]
  if (RejWezP_S["S:SLOW_znk"] == "P") goto _kwota_przeciwna
  xRejWstawP_K["A:DATA_oprkwt",RejWezP_K["A:DATA_oprkwt"] + RejWezP_K["B:BAZA_oprkwt"]]
  if (StrCut[rdzatr,1,1] = "T") xRejWstawP_K["A:DATA_vatnet",RejWezP_K["A:DATA_vatnet"] + RejWezP_K["B:BAZA_vatnet"]]
  if (StrCut[rdzatr,1,1] = "T") xRejWstawP_K["A:DATA_vatbrt",RejWezP_K["A:DATA_vatbrt"] + RejWezP_K["B:BAZA_vatbrt"]]
  if (StrCut[rdzatr,2,1] = "T") xRejWstawP_K["A:DATA_dewkwt",RejWezP_K["A:DATA_dewkwt"] + RejWezP_K["B:BAZA_dewkwt"]]
  goto _zapisz_data_rek
 _kwota_przeciwna:
  xRejWstawP_K["A:DATA_oprkwt",RejWezP_K["A:DATA_oprkwt"] + (-1 * RejWezP_K["B:BAZA_oprkwt"])]
  if (StrCut[rdzatr,1,1] = "T") xRejWstawP_K["A:DATA_vatnet",RejWezP_K["A:DATA_vatnet"] + (-1 * RejWezP_K["B:BAZA_vatnet"])]
  if (StrCut[rdzatr,1,1] = "T") xRejWstawP_K["A:DATA_vatbrt",RejWezP_K["A:DATA_vatbrt"] + (-1 * RejWezP_K["B:BAZA_vatbrt"])]
  if (StrCut[rdzatr,2,1] = "T") xRejWstawP_K["A:DATA_dewkwt",RejWezP_K["A:DATA_dewkwt"] + (-1 * RejWezP_K["B:BAZA_dewkwt"])]
 _zapisz_data_rek:
  RejOp["A:ZapiszRek",""]
  oprstr := ""
  rdzknt := ""
  vatrej := ""
  vatdok := ""
  vatvat := ""
  vatgus := ""
  rzrfak := ""
  rzlknt := ""
  dewsym := ""
  ExitAlg[0]
_mm:
//madzia : dodanie zeby nie sumowal zpisow dla takich samych kont rozl i rodz. (opcja "M")
  opridx := opridx+ToStr["#RejWezP_K[""B:rejestrRekPos""]#S:0"]
//  okalert["mm "+opridx ]
  goto _kont_m
_mmm:
//madzia : dodanie zeby nie sumowal zpisow dla takich samych kont rzr
  opridx := opridx+ToStr["#lp#S:0"]
//  okalert["mm "+opridx ]
  goto _kont_m
// ===== wczytywanie danych z INT_DATA (biezacy rekord)
% READ_DATA_REK.ALG
  wnma := .
  oprdef := ""
  index_pfx := ""
  oprpfx := ""
  oprstr := ""
  oprtrs := ""
  rdzknt := ""
  rdznaz := ""
  rdzmod := ""
  rdzatr := ""
  rzlknt := ""
  rzlnaz := ""
  rzlmod := ""
  rzlmet := ""
  klnsfx := ""
  klnpln := ""
  klnmod := ""
  rzrfak := ""
  rzrdat := ''
  rzrtrm := ''
  rzrtyp := ""
  rzrrdz := ""
  rzrmet := ""
  vatrej := ""
  vatdok := ""
  vatold := ""
  vattyp := ""
  vatdat := ''
  vatspr := ''
  vatobw := ''
  vatplt := ''
  vattrojstr := .N.
  vatnipue := ""
  vatkodue := ""
  vatfpl := ""
  vatvat := ""
  vatgus := ""
  vatuwagi := ""
  vatkontoplat := ""
  vatkontonetto := ""
  vatsposob := ""
  dewsym := ""

  atrrzl := .N.
  atrrzr := .N.
  atrvat := .N.
  atrdew := .N.
  wnma  := RejWezP_K["A:DATA_wnma"]
  index  := RejWezP_S["A:DATA_opridx"]
  CallSl["INTERFEJS->pfx(1)"]
  rdzatr := RejWezP_S["A:DATA_rdzatr"]
  if (StrCut[rdzatr,1,1] = "T") atrvat := .T.
  if (StrCut[rdzatr,2,1] = "T") atrdew := .T.
  if (StrCut[rdzatr,4,1] = "T") atrrzl := .T.
  if (StrCut[rdzatr,5,1] = "T") atrrzr := .T.

  oprdef := RejWezP_S["A:DATA_oprdef"]
  oprstr := RejWezP_S["A:DATA_oprstr"]
  oprznk := RejWezP_S["A:DATA_oprznk"]
  oprtrs := RejWezP_S["A:DATA_oprtrs"]
  oprkwt := RejWezP_K["A:DATA_oprkwt"]
  tmpstr := oprstr
  if (oprznk == "D" and oprkwt < 0 and oprstr == "L") tmpstr := "R"
  if (oprznk == "D" and oprkwt < 0 and oprstr == "R") tmpstr := "L"
  if (oprznk == "U" and oprkwt > 0 and oprstr == "L") tmpstr := "R"
  if (oprznk == "U" and oprkwt > 0 and oprstr == "R") tmpstr := "L"
  if (not (oprstr = tmpstr)) oprkwt := -1 * oprkwt
  oprstr := tmpstr

  rdzknt := RejWezP_S["A:DATA_rdzknt"]
  rdznaz := RejWezP_S["A:DATA_rdznaz"]
  rdzadd := RejWezP_S["A:DATA_rdzadd"]
  rdzmod := RejWezP_S["A:DATA_rdzmod"]

  if (atrrzl) rzlknt := RejWezP_S["A:DATA_rzlknt"]
  if (atrrzl) rzlnaz := RejWezP_S["A:DATA_rzlnaz"]
  if (atrrzl) rzlmod := RejWezP_S["A:DATA_rzlmod"]
  if (atrrzl) rzlmet := RejWezP_S["A:DATA_rzlmet"]

  if (atrrzr or atrvat) klnsfx := RejWezP_S["A:DATA_klnsfx"]
  if (atrrzr or atrvat) klnpln := RejWezP_S["A:DATA_klnpln"]
  if (atrrzr or atrvat) klnmod := RejWezP_S["A:DATA_klnmod"]
  if (atrrzr or atrvat) rzrtrm := RejWezP_D["A:DATA_rzrtrm"]

  if (atrrzr) rzrfak := RejWezP_S["A:DATA_rzrfak"]
  if (atrrzr) rzrdat := RejWezP_D["A:DATA_rzrdat"]
  if (atrrzr) rzrtyp := RejWezP_S["A:DATA_rzrtyp"]
  if (atrrzr) rzrrdz := RejWezP_S["A:DATA_rzrrdz"]
  if (atrrzr) rzrmet := RejWezP_S["A:DATA_rzrmet"]

  if (atrvat) vatrej := RejWezP_S["A:DATA_vatrej"]
  if (atrvat) vatdok := RejWezP_S["A:DATA_vatdok"]
  if (atrvat) vatold := RejWezP_S["A:DATA_vatold"]
  if (atrvat) vattyp := RejWezP_S["A:DATA_vattyp"]
  if (atrvat) vatdat := RejWezP_D["A:DATA_vatdat"]
  if (atrvat) vatspr := RejWezP_D["A:DATA_vatspr"]
  if (atrvat) vatobw := RejWezP_D["A:DATA_vatobw"]
  if (atrvat) vatplt := RejWezP_D["A:DATA_vatplt"]
  if (atrvat) vattrojstr := RejWezP_L["A:DATA_vattrojstr"]
  if (atrvat) vatkodue := RejWezP_S["A:DATA_vatkodue"]
  if (atrvat) vatnipue := RejWezP_S["A:DATA_vatnipue"]
  if (atrvat) vatfpl := RejWezP_S["A:DATA_vatfpl"]
  if (atrvat) vatvat := RejWezP_S["A:DATA_vatvat"]
  if (atrvat) vatgus := RejWezP_S["A:DATA_vatgus"]
  if (atrvat) vatuwagi := RejWezP_S["A:DATA_vatuwagi"]
  if (atrvat) vatsposob := RejWezP_S["A:DATA_vatsposob"]
  if (atrvat) vatkontoplat := RejWezP_S["A:DATA_vatkontoplat"]
  if (atrvat) vatkontonetto := RejWezP_S["A:DATA_vatkontonetto"]
  if (atrvat) vatnet := RejWezP_K["A:DATA_vatnet"]
  if (atrvat) vatbrt := RejWezP_K["A:DATA_vatbrt"]

  if (atrdew) dewsym := RejWezP_S["A:DATA_dewsym"]
  if (atrdew) dewkwt := RejWezP_K["A:DATA_dewkwt"]

// ===== wczytywanie danych z INT_DATA (nastepny rekord - index)
% READ_DATA_NEW.ALG
  nwnma := .
  noprdef := ""
  noprstr := ""
  nrdzknt := ""
  nrzlknt := ""
  nrzrfak := ""
  nrzrdat := ''
  nrzrtrm := ''
  nrzrtyp := ""
  nrzrrdz := ""
  nvatrej := ""
  nvatdok := ""
  nvatvat := ""
  nvatgus := ""
  ndewsym := ""
  noprpfx := ""

  nwnma  := RejWezP_K["A:DATA_wnma"]
  nindex := RejWezP_S["A:DATA_opridx"]
  CallSl["INTERFEJS->pfx(0)"]
  nrdzatr := RejWezP_S["A:DATA_rdzatr"]

  noprdef := RejWezP_S["A:DATA_oprdef"]
  noprstr := RejWezP_S["A:DATA_oprstr"]

  nrdzknt := RejWezP_S["A:DATA_rdzknt"]

  atr := .N.
  if (StrCut[nrdzatr,4,1] = "T") atr := .T.
  if (atr) nrzlknt := RejWezP_S["A:DATA_rzlknt"]

  atr := .N.
  if (StrCut[nrdzatr,5,1] = "T") atr := .T.
  if (atr) nrzrfak := RejWezP_S["A:DATA_rzrfak"]
  if (atr) nrzrdat := RejWezP_D["A:DATA_rzrdat"]
  if (atr) nrzrtrm := RejWezP_D["A:DATA_rzrtrm"]
  if (atr) nrzrtyp := RejWezP_S["A:DATA_rzrtyp"]
  if (atr) nrzrrdz := RejWezP_S["A:DATA_rzrrdz"]
//
  atr := .N.
  if (StrCut[nrdzatr,1,1] = "T") atr := .T.
  if (atr) nvatrej := RejWezP_S["A:DATA_vatrej"]
  if (atr) nvatdok := RejWezP_S["A:DATA_vatdok"]
  if (atr) nvatvat := RejWezP_S["A:DATA_vatvat"]
  if (atr) nvatgus := RejWezP_S["A:DATA_vatgus"]

  atr := .N.
  if (StrCut[nrdzatr,2,1] = "T") atr := .T.
  if (atr) ndewsym := RejWezP_S["A:DATA_dewsym"]

// ===== zapis do INT_TEMP linii konta 
% WRITE_RDZ.ALG
//okalert["numrdz "+ToStr["#numrdz#S:0"]+"$oprprfx "+index]
  exist := (dubler = "" and next and oprdef = noprdef)
///  exist := (exist and (oprstr = noprstr and rdzknt = nrdzknt or not (oprstr = noprstr) and oprstr = "R" and kwtwn = kwtma))
  exist := (exist and (oprstr = noprstr and rdzknt = nrdzknt and kwtwn = kwtma or not (oprstr = noprstr) and oprstr = "L" ))
//  okalert["exist "+exist]
//  okalert["cutline "+cutline]
  if (cutline or not (exist)) cutdkrt := .T.
  if (oprstr = "R") goto _zap_ma

 _zap_wn:
  rdzwn := rdzknt
  oprkwt := kwtwn
  CallAlg["ATRYBUTY_PRP"]
  LinL := ""
  if (rdzmod = "A" or rdzadd = "A" and not (existrdz)) linL := ToStr[",""#rdznaz#S"",,"]
  if (defatr = "") goto _zap_lin
//  if (existrdz) defatr := ""
  linL := ToStr[",,#defatr#S,#klnpln#S"]
  if (rdzmod = "A" or rdzadd = "A" and not (existrdz)) linL := ToStr[",""#rdznaz#S"",#defatr#S,#klnpln#S"]
  goto _zap_lin

 _zap_ma:
  rdzma := rdzknt
  oprkwt := kwtma
  CallAlg["ATRYBUTY_PRP"]
  LinR := ""
  if (rdzmod = "A" or rdzadd = "A" and not (existrdz)) linR := ToStr[",""#rdznaz#S"",,"]
  if (defatr = "") goto _zap_lin
//  if (existrdz) defatr := ""
  linR := ToStr[",,#defatr#S,#klnpln#S"]
  if (rdzmod = "A" or rdzadd = "A" and not (existrdz)) linR := ToStr[",""#rdznaz#S"",#defatr#S,#klnpln#S"]

 _zap_lin:
//  if (oprstr = "R" and not (LinR = "") and linL = "") linL := ","""",,"
//madzia2006.08.23
  if (oprstr = "R" and not (LinR = "") and linL = "") linL := ",,,"
  strrdz := ToStr["#numrdz+1#S:0"]
  strrdz := FillString[4-StrLen[strrdz],"0"] + strrdz
  if (kwtwn = kwtma or kwtwn = 0 or kwtma = 0) goto _prep_line
  if (kwtwn > kwtma) oprkwt := kwtma
  if (kwtwn < kwtma) oprkwt := kwtwn
 _prep_line:
  line := ToStr["""#oprtrs#S"",#rdzwn#S,#oprkwt#S:2,#rdzma#S"]
//okalert["Rodzajowa  "+strrdz+"$ $"+line+"$ $"+linL+"$"+linR]
  line := line + linL + linR
  if (not (RejOp["T:ZnajdzRek",strrdz])) RejOp["T:DodajRek",""]
  xRejWstawP_S["T:TEMP_odl",strrdz]
  xRejWstawP_S["T:TEMP_st1",line]
  CallSl["INTERFEJS->zapisz_pfx()"]
  RejOp["T:ZapiszRek",""]
  if (not cutdkrt) ExitAlg[0]
//  okalert["jeszcze w rdz"]
  numrdz := numrdz + 1
  if (dubler = "" and not (cutdkrt)) goto _loop_dub
  kwtwn := 0
  kwtma := 0
 _loop_dub:
  if (kwtwn > kwtma) goto _loop_wn
  kwtma := kwtma - kwtwn
  rdzwn := ""
  kwtwn := 0
  linL := ""
 _loop_wn:
  if (kwtma > kwtwn) goto _loop_ma
  kwtwn := kwtwn - kwtma
  rdzma := ""
  kwtma := 0
  linR := ""
 _loop_ma:
  numrzl := 0
  numrzr := 0
  cutline := .N.
  cutdkrt := .N.

// ===== zapis do INT_TEMP linii zapisu dla klasyfikacji
% WRITE_RZL.ALG
// --- sprawdzanie poprawnosci danych rozrachunkowych
  if (not (next and rzlknt = nrzlknt)) goto _sum_rzl
  errkod := "2L01"
  errknt := rdzknt
  if (rdzknt = nrdzknt and not (rzlnaz = RejWezP_S["A:DATA_rzlnaz"])) CallAlg["WRITE_ERROR"]

// --- sumowanie linii zapisu na klasyfikacji
 _sum_rzl:
  kwtrzl := kwtrzl + oprkwt
// madzia sprawdz czy dla kazdego k. rozl i k. rodz osobny zapis (w ogole bez grupowania opcja "M")
  if (rzlmet = "M") goto _k_mm
  if (next and oprdef = noprdef and oprstr = noprstr and rdzknt = nrdzknt and rzlknt = nrzlknt and rzrfak = nrzrfak and vatdok = nvatdok and dewsym = ndewsym) goto _end

_k_mm:
  numrzl := numrzl + 1
  strrdz := ToStr["#numrdz+1#S:0"]
  strrdz := FillString[4-StrLen[strrdz],"0"] + strrdz
  strrzl := ToStr["#numrzl#S:0"]
  strrzl := FillString[4-StrLen[strrzl],"0"] + strrzl
  lin := ToStr[",#rzlknt#S,""#rzlnaz#S"","]
  if (rzlnaz = "" or rzladd = "" and rzlmod = "") lin := ToStr[",#rzlknt#S,,"]
  if (oprstr = "L") line := "ROZLWN = "
  if (oprstr = "R") line := "ROZLMA = "
  line := line + ToStr["#kwtrzl#S:2"] + lin
///okalert["Rozliczeniowa "+line]
  if (StrCut[odlatr,4,1] = "N") goto _loop_write_rzl
  RejOp["T:DodajRek",""]
  xRejWstawP_S["T:TEMP_odl",strrdz+"A"+strrzl]
  xRejWstawP_S["T:TEMP_st1",line]
  CallSl["INTERFEJS->zapisz_pfx()"]
  RejOp["T:ZapiszRek",""]
 _loop_write_rzl:

  kwtrzl := 0
  if (atrvat and vatdok = nvatdok) goto _end
//  if (not (rzlmet = "")) cutline := .T. - tak bylo u MK
//  if  (rzlmet = "N") cutline := .T.
  if  ((rzlmet = "N") and (not(wnma = nwnma))) cutline := .T.
//koniec linii dla sekwencyjnego wczytywania jesli rekord i nowy rekord
//nie jest para strona wn i ma tego samego zapisu
  if  ((rzlmet = "M") and (not(wnma = nwnma))) cutline := .T.
 _end:
  ExitAlg[0]

// ===== zapis do INT_DATA linii zapisu rozrachunkowego
% WRITE_RZR.ALG
// --- sumowanie linii zapisu rozrachunkowego
//madzia
//dla rzrmet = "M" nie sumowac kwoty rozrachunku
  if (rzrmet="M")   goto _metrzrm
  kwtrzr := kwtrzr + oprkwt
next_mm:
  if (next and oprdef = noprdef and oprstr = noprstr and rdzknt = nrdzknt and rzrfak = nrzrfak and rzrdat = nrzrdat and rzrtrm = nrzrtrm and rzrtyp == nrzrtyp and rzrrdz == nrzrrdz and dewsym == ndewsym) goto _end

// --- zapis linii rozrachunkowej
 _zap_rzr:
  numrzr := numrzr + 1
  strrdz := ToStr["#numrdz+1#S:0"]
  strrdz := FillString[4-StrLen[strrdz],"0"] + strrdz
  strrzr := ToStr["#numrzr#S:0"]
  strrzr := FillString[4-StrLen[strrzr],"0"] + strrzr

  dat := rzrtrm
  RejOp["1:ZnajdzRek",rdzknt]
  pos := RejWezP_K["1:RejestrRekPos"]
  xxx := ToStr["#pos#S:0"]+"*"+rzrfak
//2009.09.08 uwzglednienie ustawienia czy nadpisywac termin platnosci
//  if (RejOp["3:ZnajdzRek",xxx]) rzrtrm := RejWezP_D["3:transdata"]
  if (RejOp["3:ZnajdzRek",xxx] and (rzr_term_nad = .N.)) rzrtrm := RejWezP_D["3:transdata"]
  if (rzrtrm = '') rzrtrm := dat

  if (oprstr = "L") rzrrdz := "W" + rzrrdz
  line := ToStr["ROZR = ""#rzrfak#S"",'#rzrdat#S',#kwtrzr#S:2,"]
  line := line + ToStr["#rzrrdz#S,'#rzrtrm#S',#rzrtyp#S"] + "AC,"
//madzia 2009.10.09 - rozrachunek dewizowy
  if (atrdew) line := line + ToStr["#mkwtdew#S:2"]
///okalert["Rozrachunkowa "+line]
  if (StrCut[odlatr,5,1] = "N") goto _loop_write_rzr
  RejOp["T:DodajRek",""]
  xRejWstawP_S["T:TEMP_odl",strrdz+"B"+strrzr]
  xRejWstawP_S["T:TEMP_st1",line]
  CallSl["INTERFEJS->zapisz_pfx()"]
  RejOp["T:ZapiszRek",""]
 _loop_write_rzr:

  kwtrzr := 0
  if (atrvat and vatdok = nvatdok) goto _end
//  if (not (rzrmet = "")) cutline := .T.
  if  (rzrmet = "N") cutline := .T.
 _end:
  ExitAlg[0]

_metrzrm:
   kwtrzr := oprkwt
//   okalert["kwota transkacji"+tostr["#kwtrzr#S:2"]+"$rzrfak "+rzrfak+"$nrzrfak "+nrzrfak]
//   goto next_mm
//  if (next and oprdef = noprdef and oprstr = noprstr and rdzknt = nrdzknt and rzrfak = nrzrfak and rzrdat = nrzrdat and rzrtrm = nrzrtrm and rzrtyp == nrzrtyp and rzrrdz == nrzrrdz and dewsym == ndewsym) goto _end
   goto _zap_rzr

// ===== zapis do INT_TEMP linii dokumentu VAT
% WRITE_VAT.ALG
// --- sprawdzanie poprawnosci danych VAT
 _vat_spr:
  if (not (next and vatdok = nvatdok)) goto _sum_zap
  errkod := "2V01"
  errknt := vatrej
  if (not (vatrej = nvatrej and rdzknt = nrdzknt)) CallAlg["WRITE_ERROR"]
  errkod := "2V02"
  errknt := vattyp
  if (not (vattyp = RejWezP_S["A:DATA_vattyp"])) CallAlg["WRITE_ERROR"]
  errkod := "2V03"
  errknt := "" + vatdat
  if (not (vatdat = RejWezP_D["A:DATA_vatdat"])) CallAlg["WRITE_ERROR"]
  errkod := "2V04"
  errknt := "" + vatspr
  if (not (vatspr = RejWezP_D["A:DATA_vatspr"])) CallAlg["WRITE_ERROR"]
  errkod := "2V05"
  errknt := "" + vatobw
  if (not (vatobw = RejWezP_D["A:DATA_vatobw"])) CallAlg["WRITE_ERROR"]
  errkod := "2V07"
  errknt := dewsym
  if (not (dewsym = ndewsym)) CallAlg["WRITE_ERROR"]
  errkod := "2V08"
  errknt := rzrfak
  if (not (rzrfak = nrzrfak)) CallAlg["WRITE_ERROR"]

// --- sumowanie linii do zapisow VAT
 _sum_zap:
  zapnet := Round[zapnet,2] + Round[vatnet,2]
  zapvat := Round[zapvat,2] + Round[oprkwt,2]
  zapbrt := Round[zapbrt,2] + Round[vatbrt,2]
  if (vatsposob = "S" or vatsposob = "") goto _dalej_s
//madzia agricola 2011.05.05 oblicz vat i brutto od net wedlug stawki vat
  RejOp["Xx:OtworzRej","REJKLASVAT.RXR"]
  rejop["xx:zmienkluczrej","1"]
  xstvat := 0
//  if (not(rejop["xx:wezpierwszyrek",vatvat]) okalert["B|l|ad!$Brak klasyfikacji  vat "+vatvat+"$w rejestrze klasyfikacji VAT !"] 
//  if (not(rejop["xx:znajdzrek",vatvat]) okalert["B|l|ad!$Brak klasyfikacji  vat "+vatvat+"$w rejestrze klasyfikacji VAT !"] 
  if (rejop["xx:znajdzrek",vatvat]) xstvat := rejwezp_k["xx:klaspodvat"]
//dla paragonow i fakturufiskalnionych - oblicz netto i vat od kwoty brutto
//  okalert["vattyp = "+vattyp+"$vatspsob "+vatsposob]
  if (vatsposob = "B" ) goto _paragon
//od kwoty netto
  zapvat := Round[zapnet*xstvat/100,2]
  zapbrt := Round[zapnet+zapvat,2]
_kont_par:
  RejOp["Xx:zamknijrej",""]
_dalej_s:
  if (next and vatdok = nvatdok and vatvat = nvatvat  and vatgus = nvatgus) goto _sum_dok
  CallAlg["WRITE_VAT_ZAP"]

// --- sumowanie linii do dokumentu VAT
 _sum_dok:
  if (vatsposob = "S" or vatsposob = "") goto _suma_s
//madzia agricola 2011.05.05 oblicz vat i brutto od net wedlug stawki vat
  doknet := Round[doknet,2] + Round[xzapnet,2]
  dokvat := Round[dokvat,2] + Round[xzapvat,2]
  dokbrt := Round[dokbrt,2] + Round[xzapbrt,2]
//podstaw wyliczona kwote VAT - do zapisu ksiegowego
//  okalert["dokvat =" +tostr["#dokvat#S:2"]]
_kont_s:
  if (next and vatdok = nvatdok) goto _end
  CallAlg["WRITE_VAT_DOK"]
  goto _end
 _end:
  ExitAlg[0]

// netto, vat dla paragonu
_paragon:
  zapnet := Round[zapbrt/(1+xstvat/100),2]
  zapvat := Round[zapbrt-zapnet,2]
 goto _kont_par
//brutto, netto, vat - sumowanie
_suma_s:
  doknet := Round[doknet,2] + Round[vatnet,2]
  dokvat := Round[dokvat,2] + Round[oprkwt,2]
  dokbrt := Round[dokbrt,2] + Round[vatbrt,2]
  goto _kont_s


// ===== zapis do INT_TEMP linii zapisu z dokumentu VAT
% WRITE_VAT_ZAP.ALG
  if (zapnet = 0 and zapvat = 0 and zapbrt = 0) ExitAlg[0]
  numvat := numvat + 1
  strrdz := ToStr["#numrdz+1#S:0"]
  strrdz := FillString[4-StrLen[strrdz],"0"] + strrdz
  strvat := ToStr["#numvat#S:0"]
  strvat := FillString[4-StrLen[strvat],"0"] + strvat
  line := ToStr["VATZAP = ""#vatvat#S"",#zapnet#S:2,#zapvat#S:2,#zapbrt#S:2,""#vatgus#S"""]
///okalert["zapis   "+line]
  if (StrCut[odlatr,1,1] = "N") goto _loop_write_vat_zap
  RejOp["T:DodajRek",""]
  xRejWstawP_S["T:TEMP_odl",strrdz+"C"+strvat]
  xRejWstawP_S["T:TEMP_st1",line]
  CallSl["INTERFEJS->zapisz_pfx()"]
  RejOp["T:ZapiszRek",""]
 _loop_write_vat_zap:
//madzia 2011.05.19
  oprkwt := zapvat
  xzapnet := zapnet 
  xzapvat := zapvat 
  xzapbrt := zapbrt 
  zapnet := 0
  zapvat := 0
  zapbrt := 0
  ExitAlg[0]

// ===== zapis do INT_VAT linii naglowka dokumentu VAT
% WRITE_VAT_DOK.ALG
  if (doknet = 0 and dokvat = 0 and dokbrt = 0) ExitAlg[0]
  dokzpl := dokbrt
  vatuwg := ""
  RejOp["C:ZmienKluczRej","1"]
  if (RejOp["C:ZnajdzRek",klnsfx]) goto _jest_kln
  OkAlert["Nie ma kontrahenta: "+klnsfx]
 _jest_kln:
  klnpln := RejWezP_S["C:FIRM_prokln"]
  prordz := RejWezP_S["C:FIRM_prordz"]
  vatnip := RejWezP_S["C:FIRM_pronip"]
  vatnaz := RejWezP_S["C:FIRM_pronz1"] + " " + RejWezP_S["C:FIRM_pronz2"]
  vatadr := RejWezP_S["C:FIRM_proadr"] + " " + RejWezP_S["C:FIRM_promst"]
  numvat := 0
  strrdz := ToStr["#numrdz+1#S:0"]
  strrdz := FillString[4-StrLen[strrdz],"0"] + strrdz
  strvat := ToStr["#numvat#S:0"]
  strvat := FillString[4-StrLen[strvat],"0"] + strvat
  anu := .N.
  if (vatdok == "ANU") anu := .T.
  line := "VATDOK = "
  if (oprstr = "L") line := line + "T"
  if (oprstr = "R") line := line + "N"
//madzia 2009.07.16 vat: konto brutto, netto, uwagi
  line := line + ToStr[",""#vatdok#S"",""#vatold#S"",'#vatdat#S','#vatspr#S','#vatobw#S'"]
  line := line + ToStr[",""#klnpln#S"",""#vatkontoplat#S"",#anu#S,""#vatuwagi#S"",""#vatrej#S"",""#vattyp#S"""]
  line := line + ToStr[",#doknet#S:2,#dokvat#S:2,#dokbrt#S:2,#dokzpl#S:2"]
//madzia: dodalam forme platnosci, konto MA netto
//  line := line + ToStr[",,'#rzrtrm#S',""#vatnip#S"",""#vatnaz#S"",""#vatadr#S"",,""#vatfpl#S"""]
// 2011.06.17 - jesli jest vatnipue i vatkodue - nie wpisuje polskiego nip vatnip
  if (not(vatnipue = "") and not(vatkodue="")) vatnip := ""
//  if (not(vatnipue = "") and not(vatkodue="")) okalert["madzia vatnip "+vatnip]
  line := line + ToStr[",,'#rzrtrm#S',""#vatnip#S"",""#vatnaz#S"",""#vatadr#S"",""#vatkontonetto#S"",""#vatfpl#S"",,,""#vatkodue#S"",""#vatnipue#S"",#vattrojstr#S"]
  if (StrCut[odlatr,1,1] = "N") goto _loop_write_vat_dok
  RejOp["T:DodajRek",""]
  xRejWstawP_S["T:TEMP_odl",strrdz+"C"+strvat]
  xRejWstawP_S["T:TEMP_st1",StrCut[line,0,170]]
  xRejWstawP_S["T:TEMP_st2",StrCut[line,170,170]]
  xRejWstawP_S["T:TEMP_st3",StrCut[line,340,170]]
  CallSl["INTERFEJS->zapisz_pfx()"]
  RejOp["T:ZapiszRek",""]
///okalert["naglowek$ $"+StrCut[line,0,170]+"$"+StrCut[line,170,170]+"$"+StrCut[line,340,170]]
 _loop_write_vat_dok:
  doknet := 0
  dokvat := 0
  dokbrt := 0
  if (exist) cutline := .T.

// ===== zapis do INT_TEMP linii zapisu dewizowego
% WRITE_DEW.ALG
// --- sprawdzanie poprawnosci danych DEW
  errknt := rdzknt
  errkod := "2D01"
  if (existrdz and dewsym == "PLZ") CallAlg["WRITE_ERROR"]
  if (not (existrdz) and (dewsym = "PLZ" or dewmod = "Z" and dewsym = "")) goto _end
  if (not (existrdz) and exist and not (dewsym = ndewsym) and dewsym = "PLZ") CallAlg["WRITE_ERROR"]
  if (dewsym == "PLZ") goto _loop_write_dew
  kwtdew := kwtdew + dewkwt
  mkwtdew := kwtdew

  if (next and oprdef = noprdef and oprstr = noprstr and rdzknt = nrdzknt and rzlknt = nrzlknt and rzrfak = nrzrfak and dewsym = ndewsym and vatdok = nvatdok) goto _end

  strrdz := ToStr["#numrdz+1#S:0"]
  strrdz := FillString[4-StrLen[strrdz],"0"] + strrdz
  if (oprstr = "L") line := "DEWWN = "
  if (oprstr = "R") line := "DEWMA = "
  line := line + ToStr["#kwtdew#S:2,#dewsym#S,,''"]
///okalert["Dewizowa "+line]
  if (StrCut[odlatr,2,1] = "N") goto _loop_write_dew
  RejOp["T:DodajRek",""]
  xRejWstawP_S["T:TEMP_odl",strrdz+"D"]
  xRejWstawP_S["T:TEMP_st1",line]
  CallSl["INTERFEJS->zapisz_pfx()"]
  RejOp["T:ZapiszRek",""]
 _loop_write_dew:

  kwtdew := 0
  if (exist) cutline := .T.
 _end:

// ===== kopiowanie danych o kontrahencie do rejestru kontrahentow
% WRITE_KLN.ALG
  if (klnsfx = "") ExitAlg[0]
  if (RejOp["C:ZnajdzRek",klnsfx]) goto _jest_opis
  OkAlert["Nie ma w FIRM kontrahenta "+klnsfx]
  ExitAlg[0]
 _jest_opis:
  existkln := RejOp["0:ZnajdzRek",klnpln]
  if (not (existkln)) klnmod := "A"
  if (not (existkln)) RejOp["0:DodajRek",""]
  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_prokln"] = "")) RejWstawP_S["0:kl_sym",klnpln]
  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_pronip"] = "")) RejWstawP_S["0:kl_NIP",RejWezP_S["C:FIRM_pronip"]]
  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_pronipue"] = "")) RejWstawP_S["0:kl_nipwsp",RejWezP_S["C:FIRM_pronipue"]]
  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_prokodue"] = "")) RejWstawP_S["0:kl_kodkraju",RejWezP_S["C:FIRM_prokodue"]]
//  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_pronip"] = "")) okalert["wstawiam kl_nip "+rejwezp_s["c:firm_pronip"]]
  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_proreg"] = "")) RejWstawP_S["0:kl_regon",RejWezP_S["C:FIRM_proreg"]]
  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_propes"] = "")) RejWstawP_S["0:kl_pesel",RejWezP_S["C:FIRM_propes"]]
  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_pronz1"] = "")) RejWstawP_S["0:kl_nazwa1",RejWezP_S["C:FIRM_pronz1"]]
  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_pronz2"] = "")) RejWstawP_S["0:kl_nazwa2",RejWezP_S["C:FIRM_pronz2"]]
  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_promst"] = "")) RejWstawP_S["0:kl_kodmiasto",RejWezP_S["C:FIRM_promst"]]
  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_proadr"] = "")) RejWstawP_S["0:kl_adres",RejWezP_S["C:FIRM_proadr"]]
  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_probnk"] = "")) RejWstawP_S["0:kl_nazwabanku",RejWezP_S["C:FIRM_probnk"]]
  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_proknt"] = "")) RejWstawP_S["0:kl_konto",RejWezP_S["C:FIRM_proknt"]]
  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_protl1"] = "")) RejWstawP_S["0:kl_telefon1",RejWezP_S["C:FIRM_protl1"]]
  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_protl2"] = "")) RejWstawP_S["0:kl_telefon2",RejWezP_S["C:FIRM_protl2"]]
  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_profax"] = "")) RejWstawP_S["0:kl_telefax",RejWezP_S["C:FIRM_profax"]]
  if (klnmod = "A" or klnmod = "W" and not (RejWezP_S["C:FIRM_protlx"] = "")) RejWstawP_S["0:kl_telex",RejWezP_S["C:FIRM_protlx"]]

//********************************************************************
//dodatkowe procedurki do wykorzytsania w interfejsie - w CNV
//********************************************************************
//
// ===== zerowanie zmiennych bufora rejestru BAZA
% WRITE_NULL_TO_BAZA.ALG
  opis_dok_nagl := ""
  oprdat := ''
  oprpfx := ""
  oprkod := ""
  oprnaz := ""
  oprtrs := ""
  oprkwt := .
  rdzsfx := ""
  rdznaz := ""
  rzlsfx := ""
  rzlnaz := ""
  klnsfx := ""
  rzrfak := ""
  rzrdat := ''
  rzrtrm := ''
  rzrtyp := ""
  rzrrdz := ""
  vatrej := ""
  vatdok := ""
  vatold := ""
  vattyp := ""
  vatdat := ''
  vatspr := ''
  vatobw := ''
  vatplt := ''
  vattrojstr := .N.
  vatnipue := ""
  vatkodue := ""
  vatfpl := ""
  vatsfx := ""
  vatgus := ""
  vatuwagi := ""
  vatsposob := ""
  vatkontoplat := ""
  vatkontonetto := ""
  vatnet := .
  vatbrt := .
  dewsfx := ""
  dewkwt := .

// ===== dodanie rekordu do rejestru baza-przepisanie danych ze zmiennych
% WRITE_REKORD_TO_BAZA.ALG
  RejOp["B:DodajRek",""]
  xRejWstawP_S["B:BAZA_opisdok",opis_dok_nagl]
  xRejWstawP_D["B:BAZA_oprdat",oprdat]
  xRejWstawP_S["B:BAZA_oprpfx",oprpfx]
  xRejWstawP_S["B:BAZA_oprkod",oprkod]
  xRejWstawP_S["B:BAZA_oprnaz",oprnaz]
  xRejWstawP_S["B:BAZA_oprtrs",oprtrs]
  xRejWstawP_S["B:BAZA_rdzsfx",rdzsfx]
  xRejWstawP_S["B:BAZA_rdznaz",rdznaz]
  xRejWstawP_S["B:BAZA_rzlsfx",rzlsfx]
  xRejWstawP_S["B:BAZA_rzlnaz",rzlnaz]
  xRejWstawP_S["B:BAZA_klnsfx",klnsfx]
  xRejWstawP_S["B:BAZA_rzrfak",rzrfak]
  xRejWstawP_D["B:BAZA_rzrdat",rzrdat]
  xRejWstawP_D["B:BAZA_rzrtrm",rzrtrm]
  xRejWstawP_S["B:BAZA_rzrtyp",rzrtyp]
  xRejWstawP_S["B:BAZA_rzrrdz",rzrrdz]
  xRejWstawP_S["B:BAZA_vatrej",vatrej]
  xRejWstawP_S["B:BAZA_vatdok",vatdok]
  xRejWstawP_S["B:BAZA_vatold",vatold]
  xRejWstawP_S["B:BAZA_vattyp",vattyp]
  xRejWstawP_D["B:BAZA_vatdat",vatdat]
  xRejWstawP_D["B:BAZA_vatspr",vatspr]
  xRejWstawP_D["B:BAZA_vatobw",vatobw]
  xRejWstawP_D["B:BAZA_vatplt",vatplt]
  xRejWstawP_L["B:BAZA_vattrojstr",vattrojstr]
  xRejWstawP_S["B:BAZA_vatkodue",vatkodue]
  xRejWstawP_S["B:BAZA_vatnipue",vatnipue]
  xRejWstawP_S["B:BAZA_vatfpl",vatfpl]
  xRejWstawP_S["B:BAZA_vatsfx",vatsfx]
  xRejWstawP_S["B:BAZA_vatgus",vatgus]
  xRejWstawP_S["B:BAZA_vatuwagi",vatuwagi]
  xRejWstawP_S["B:BAZA_vatsposob",vatsposob]
  xRejWstawP_S["B:BAZA_vatkontoplat",vatkontoplat]
  xRejWstawP_S["B:BAZA_vatkontonetto",vatkontonetto]
  xRejWstawP_S["B:BAZA_dewsfx",dewsfx]
  xRejWstawP_K["B:BAZA_dewkwt",dewkwt]
  xRejWstawP_K["B:BAZA_oprkwt",Round[oprkwt,2]]
  xRejWstawP_K["B:BAZA_vatnet",Round[vatnet,2]]
  xRejWstawP_K["B:BAZA_vatbrt",Round[vatbrt,2]]
  RejOp["B:ZapiszRek",""]
//
% LICZBA.ALG
//wejscie: kw_str - kwota na stringu
//wyjscie: kw - kwota jako kwota
//usuwa wszytskie kropki ze stringu kw_str, zamienia przecinek na kropke
  str := ""
  dl := Strlen[kw_str]
  li := 0
next:
  znak_z := StrCut[kw_str,li,1]
  if (znak_z=".") goto kont
  if (znak_z=",") znak_z := "."
  str := str+znak_z
kont:
  li := li+1
  if (li < dl) goto next
//  okalert["str pomocniczy= "+str]
  kw := StringNaLiczbe[str]
//  okalert["kw "+ToStr["#kw#S:2"]]
  ExitAlg[0]
//  
% LICZBA1.ALG
//wejscie: kw_str - kwota na stringu
//wyjscie: kw - kwota jako kwota
//usuwa wszytskie kropki ze stringu kw_str, zamienia przecinek na kropke
//pomija wszytskie spacje w stringu wejsciowym
  str := ""
  dl := Strlen[kw_str]
  li := 0
next:
  znak_z := StrCut[kw_str,li,1]
  if (znak_z=".") goto kont
  if (znak_z=" ") goto kont
  if (znak_z=",") znak_z := "."
  str := str+znak_z
kont:
  li := li+1
  if (li < dl) goto next
//  okalert["str pomocniczy= "+str]
  kw := StringNaLiczbe[str]
//  okalert["kw "+ToStr["#kw#S:2"]]
  ExitAlg[0]
//  
% LICZBA2.ALG
//wejscie: kw_str - kwota na stringu
//wyjscie: kw - kwota jako kwota
//pomija wszytskie spacje w stringu wejsciowym
  str := ""
  dl := Strlen[kw_str]
  li := 0
next:
  znak_z := StrCut[kw_str,li,1]
  if (znak_z=" ") goto kont
  str := str+znak_z
kont:
  li := li+1
  if (li < dl) goto next
// okalert["str pomocniczy= "+str]
  kw := StringNaLiczbe[str]
//  okalert["kw "+ToStr["#kw#S:2"]]
  ExitAlg[0]
//  
% LICZBA3.ALG
//zmienia string na liczbe
//string zawiera spacje jako oddzialeniki tysiecy, przecinek jako kropke dziesietna
//string moze moiec wiecej niz 2 miejsca po przecinku
//wejscie: kw_str - kwota na stringu
//wyjscie: kw - kwota jako kwota
//pomin wszytskie spacje w stringu wejsciowym
  kw := 0
  if (kw_str = "") goto koniec
  str := ""
  dl := Strlen[kw_str]
  li := 0
next:
  znak_z := StrCut[kw_str,li,1]
  if (znak_z=" ") goto kont
  str := str+znak_z
kont:
  li := li+1
  if (li < dl) goto next
  kw_str := str
//teraz kw_str zaiwra string bez spacji
//  okalert["kw_str "+ToStr["#kw_str#S:3"]]
  CallSl["INTERFEJS->snali"]
//  okalert["kw_mmm "+ToStr["#kw#S:3"]]
koniec:
  kw := round[kw,2]
//
% LICZBA4.ALG
//zmienia string na liczbe
//string zawiera spacje jako oddzialeniki tysiecy, kropke jako kropke dziesietna
//string moze moiec wiecej niz 2 miejsca po przecinku
//wejscie: kw_str - kwota na stringu
//wyjscie: kw - kwota jako kwota
//pomin wszytskie spacje w stringu wejsciowym
  kw := 0
  if (kw_str = "") goto koniec
  str := ""
  dl := Strlen[kw_str]
  li := 0
next:
  znak_z := StrCut[kw_str,li,1]
  if (znak_z=" ") goto kont
  str := str+znak_z
kont:
  li := li+1
  if (li < dl) goto next
  kw_str := str
//teraz kw_str zaiwra string bez spacji
//  okalert["kw_str "+ToStr["#kw_str#S:3"]]
  CallSl["INTERFEJS->snali_kropka"]
//  okalert["kw_mmm "+ToStr["#kw#S:3"]]
koniec:
  kw := round[kw,2]
//
% SPACJA.ALG
//wejscie: kod - string ze spacjami
//wyjscie: kod - string, w ktorym spacje sa zamieniaone na "_"
  str := ""
  dl := Strlen[kod]
  li := 0
next:
  znak_z := StrCut[kod,li,1]
  if (znak_z=" ") znak_z := "_"
  str := str+znak_z
kont:
  li := li+1
  if (li < dl) goto next
//  okalert["kod  "+kod+" str pomocniczy= "+str]
  kod := str
  ExitAlg[0]
//  


//********************************************************************
//KONIEC dodatkowe procedurki do wykorzytsania w interfejsie - w CNV
//********************************************************************

// ===== wczytywanie danych do rejestru BAZA
% WRITE_DANE_TO_BAZA.ALG
  if (minzero and (oprkwt = . or Round[oprkwt,2] = 0)) goto _loop_kwt
  if (update) goto _sum_kwt
  if (kompres and RejOp["B:ZnajdzRek",oprpfx+"*"+oprkod]) goto _sum_kwt
  RejOp["B:DodajRek",""]
  xRejWstawP_D["B:BAZA_oprdat",oprdat]
  xRejWstawP_S["B:BAZA_oprpfx",oprpfx]
  xRejWstawP_S["B:BAZA_oprkod",oprkod]
  xRejWstawP_S["B:BAZA_oprnaz",oprnaz]
  xRejWstawP_S["B:BAZA_oprtrs",oprtrs]
  xRejWstawP_S["B:BAZA_rdzsfx",rdzsfx]
  xRejWstawP_S["B:BAZA_rdznaz",rdznaz]
  xRejWstawP_S["B:BAZA_rzlsfx",rzlsfx]
  xRejWstawP_S["B:BAZA_rzlnaz",rzlnaz]
  xRejWstawP_S["B:BAZA_klnsfx",klnsfx]
  xRejWstawP_S["B:BAZA_rzrfak",rzrfak]
  xRejWstawP_D["B:BAZA_rzrdat",rzrdat]
  xRejWstawP_D["B:BAZA_rzrtrm",rzrtrm]
  xRejWstawP_S["B:BAZA_rzrtyp",rzrtyp]
  xRejWstawP_S["B:BAZA_rzrrdz",rzrrdz]
  xRejWstawP_S["B:BAZA_vatrej",vatrej]
  xRejWstawP_S["B:BAZA_vatdok",vatdok]
  xRejWstawP_S["B:BAZA_vatold",vatold]
  xRejWstawP_S["B:BAZA_vattyp",vattyp]
  xRejWstawP_D["B:BAZA_vatdat",vatdat]
  xRejWstawP_D["B:BAZA_vatspr",vatspr]
  xRejWstawP_D["B:BAZA_vatobw",vatobw]
  xRejWstawP_D["B:BAZA_vatplt",vatplt]
  xRejWstawP_L["B:BAZA_vattrojstr",vattrojstr]
  xRejWstawP_S["B:BAZA_vatnipue",vatnipue]
  xRejWstawP_S["B:BAZA_vatkodue",vatkodue]
  xRejWstawP_S["B:BAZA_vatfpl",vatfpl]
  xRejWstawP_S["B:BAZA_vatsfx",vatsfx]
  xRejWstawP_S["B:BAZA_vatgus",vatgus]
  xRejWstawP_S["B:BAZA_vatuwagi",vatuwagi]
  xRejWstawP_S["B:BAZA_vatsposob",vatsposob]
  xRejWstawP_S["B:BAZA_vatkontoplat",vatkontoplat]
  xRejWstawP_S["B:BAZA_vatkontonetto",vatkontonetto]
  xRejWstawP_S["B:BAZA_dewsfx",dewsfx]
  xRejWstawP_K["B:BAZA_dewkwt",dewkwt]
 _sum_kwt:
  xRejWstawP_K["B:BAZA_oprkwt",RejWezP_K["B:BAZA_oprkwt"] + Round[oprkwt,2]]
  xRejWstawP_K["B:BAZA_vatnet",RejWezP_K["B:BAZA_vatnet"] + Round[vatnet,2]]
  xRejWstawP_K["B:BAZA_vatbrt",RejWezP_K["B:BAZA_vatbrt"] + Round[vatbrt,2]]
  RejOp["B:ZapiszRek",""]
 _loop_kwt:

// ===== zerowanie zmiennych bufora rejestru BAZA
% WRITE_NULL_TO_FIRM.ALG
  txtkln := ""
  txtfak := ""
  prordz := ""
  prokln := ""
  pronip := ""
  proreg := ""
  propes := ""
  pronz1 := ""
  pronz2 := ""
  promst := ""
  proadr := ""
  probnk := ""
  proknt := ""
  protl1 := ""
  protl2 := ""
  profax := ""
  protlx := ""
  pronipue := ""
  prokodue := ""

// --- wczytywanie danych kontrahenta do rejestru FIRM
% WRITE_DANE_TO_FIRM.ALG
  RejOp["C:DodajRek",""]
  xRejWstawP_S["C:FIRM_txtkln",txtkln]
  xRejWstawP_S["C:FIRM_txtfak",txtfak]
  xRejWstawP_S["C:FIRM_prordz",prordz]
  xRejWstawP_S["C:FIRM_prokln",prokln]
  xRejWstawP_S["C:FIRM_pronip",pronip]
  xRejWstawP_S["C:FIRM_proreg",proreg]
  xRejWstawP_S["C:FIRM_propes",propes]
  xRejWstawP_S["C:FIRM_pronz1",pronz1]
  xRejWstawP_S["C:FIRM_pronz2",pronz2]
  xRejWstawP_S["C:FIRM_promst",promst]
  xRejWstawP_S["C:FIRM_proadr",proadr]
  xRejWstawP_S["C:FIRM_probnk",probnk]
  xRejWstawP_S["C:FIRM_proknt",proknt]
  xRejWstawP_S["C:FIRM_protl1",protl1]
  xRejWstawP_S["C:FIRM_protl2",protl2]
  xRejWstawP_S["C:FIRM_profax",profax]
  xRejWstawP_S["C:FIRM_protlx",protlx]
  xRejWstawP_S["C:FIRM_pronipue",pronipue]
  xRejWstawP_S["C:FIRM_prokodue",prokodue]
  RejOp["C:ZapiszRek",""]
//
// ===== zaznaczanie anulowanych faktur VAT
% ZAZNACZANIE_ANULOWANYCH_FAKTUR_VAT.ALG
  RejOp["4:OtworzRej1","REJFAKTSPR.REX"]
  RejOp["4:ZmienKluczRej","5"]
  RejOp["A:OtworzRejSprawdz",naz_data]
  RejOp["A:WezPierwszyRek",""]
 _next_data_rek:
  if (RejWezP_S["A:DATA_vatold"] = "") goto _wez_next_data_rek
  if (not (RejOp["4:ZnajdzRek",RejWezP_S["A:DATA_vatrej"]+"*"+RejWezP_S["A:DATA_vatold"]])) goto _wez_next_data_rek
  RejWstawP_L["4:vatanulowany",.T.]
 _wez_next_data_rek:
  if (RejOp["A:WezNastepnyRek",""]) goto _next_data_rek
  RejOp["A:ZamknijRej",""]
  RejOp["4:ZamknijRej",""]

// ===== rozpoznawanie nazwy i lokalizacji pliku zrodlowego
% LOKALIZACJA_PLIKU.ALG
  if (int_pozycja = .) int_pozycja := 0
  RejOp["P:OtworzRej1",naz_plik]
  RejOp["P:WezPierwszyRek",""]
  plik_plik := ""
 _next_plik_rek:
  plik_name := RejWezP_S["P:PLIK_naz"]
  if (plik_name = "") goto _wez_next_plik_rek
 _cut_plik:
  if (StrIn[slash,plik_name] = -1) goto _add_plik
  plik_name := StrCut[plik_name,StrIn[slash,plik_name]+1,50]
  goto _cut_plik
 _add_plik:
  if (not (StrCut[plik_name,int_pozycja,StrLen[int_wyroznik]] == int_wyroznik)) goto _wez_next_plik_rek
  plik_plik := RejWezP_S["P:PLIK_idx"]
  goto _end_plik
 _wez_next_plik_rek:
  if (RejOp["P:WezNastepnyRek",""]) goto _next_plik_rek
 _end_plik:
  RejOp["P:ZamknijRej",""]
  if (not (plik_plik = "")) ExitAlg[0]
  if (int_omin) ExitAlg[1]
  OkAlert["UWAGA !!!$ $|Zaden z wybranych plik|ow nie zawiera wyr|o|znika: "+int_wyroznik]
  ExitAlg[1]

// ===== pobranie daty ostatniego ksiegowania w okresie otwartym
% DATA_OSTATNIEGO_KSIEGOWANIA.ALG
  RejOp["Y:OtworzRej1","GLOB.RJR"]
  if (RejOp["Y:WezPierwszyRek",""]) goto _ok_rek
  lastdataksieg := C_DATE[255,A_DATE[PoczRok_Ksieg,"M"],A_DATE[PoczRok_Ksieg,"D"]+1]
  goto _end  
 _ok_rek:
  lastdataksieg := RejWezP_D["Y:gdataosti"]
  if (lastdataksieg = '') lastdataksieg := RejWezP_D["Y:gobrkoni"]
 _end:
  RejOp["Y:ZamknijRej",""]


// ===== Konwersja danych zwiazana ze zmiana dlugosci konta
// ==================================================================
// ===== DIALOG - INTPRZENIES -przenoszenie danych z innego ksiegozbioru
// ==================================================================
//********************************P******************************
% INTPRZENIES.GUI32.DLG
RESORS = dll\int.dll:INT_INTPRZENIES
PRZYCISK_CANCELID = 1
##DEFWINDOW =,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Przeniesienie definicji ca|lego interfejsu"
##0,BGT,ADP,,$$(@3)
##1,BGT,ADP,,$$(@4)
//##10,0,P,,,,,,,,zmienna:src_ksieg
##10,0,D,,,,&&lblue/white,&&lblue/lwhite,,,ZMIENNA:src_ksieg
##31,TLD,0,,"Uwaga: Operacja ta spowoduje zast|apienie definicji znajduj|acych",,yellow/black&yellow/black&blue/white
##32,TLD,0,,"        si|e w aktualnej ksi|edze definicjami z wybranej ",,yellow/black&yellow/black&blue/white
##33,TLD,0,,"        przez Ciebie ksi|egi, a nastepnie konwersj|e tych",,yellow/black&yellow/black&blue/white
##34,TLD,0,,"        definicji do nowego formatu.",,yellow/black&yellow/black&blue/white
##35,TLD,0,,"        Dotychczasowe definicje znajduj|ace si|e w aktualnej ",,yellow/black&yellow/black&blue/white
##36,TLD,0,,"        ksi|edze zostan|a wymazane.",,yellow/black&yellow/black&blue/white

 
#31                                                               #
#32                                                               #
#33                                                               #
#34                                                               #
#35                                                               #
#36                                                               #



 Wybierz ksi|eg|e |xr|od|low|a:     #10            #



          #0          #                #1          #    


// *********************************K*********************************************




% INTPRZENIES.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW =,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Przeniesienie definicji ca|lego interfejsu"
##0,BGT,ADP,,@3
##1,BGT,ADP,,@4
//##10,0,P,,,,,,,,zmienna:src_ksieg
##10,0,D,,,,&&lblue/white,&&lblue/lwhite,,,ZMIENNA:src_ksieg
##31,TLD,0,,"Uwaga: Operacja ta spowoduje zast|apienie definicji znajduj|acych",,yellow/black&yellow/black&blue/white
##32,TLD,0,,"        si|e w aktualnej ksi|edze definicjami z wybranej ",,yellow/black&yellow/black&blue/white
##33,TLD,0,,"        przez Ciebie ksi|egi, a nastepnie konwersj|e tych",,yellow/black&yellow/black&blue/white
##34,TLD,0,,"        definicji do nowego formatu.",,yellow/black&yellow/black&blue/white
##35,TLD,0,,"        Dotychczasowe definicje znajduj|ace si|e w aktualnej ",,yellow/black&yellow/black&blue/white
##36,TLD,0,,"        ksi|edze zostan|a wymazane.",,yellow/black&yellow/black&blue/white

 
#31                                                               #
#32                                                               #
#33                                                               #
#34                                                               #
#35                                                               #
#36                                                               #



 Wybierz ksi|eg|e |xr|od|low|a:     #10            #



          #0          #                #1          #    


// ------------------------------------------------------------------
% TABLICA-AKCJI-INTPRZENIES
  "AKCJA-F2-POLE10",INTPRZENIES_F2_POLE10

% INTPRZENIES_F2_POLE10.ALG
//  CallAlg["FINN-KSIEGOZBIORY-OPIS-WYBIERZ"]
  D_STRING := WybierzFinn["Ksiegozbior"]
  src_ksieg := D_STRING

% PRZENIESIENIE_DANYCH.ALG
  klucz_vat := ""
  src_ksieg := ""
  dst_ksieg := nazwa_ksieg
  nazwa_pliku := "system\int\int.txt"
  DyskOp["WezSystemX","",""]
  if (D_string = "D-") slash := "\"
  if (D_string = "X-") slash := "/"
 _begin:
  D_POS := 10
  ExDialogOp["IdzDoDialogu","INTPRZENIES"]
  if (D_POS = 1) ExitAlg[0]
  if (not (src_ksieg == dst_ksieg)) goto _kopiowanie
  Okalert["Poniewa|z wybrana zosta|la ksi|ega w kt|orej jeste|s$nast|api wy|l|acznie konwertowanie definicji !!!"]
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  ExitAlg[0]
 _kopiowanie:
  RejOp["X:OtworzRej1","KSIEG.RXR"]
  RejOp["X:ZmienKluczRej","1"]
  if (RejOp["X:ZnajdzRek",src_ksieg]) goto _exist_src
  OkAlert["Nie ma ksi|egi: "+src_ksieg]
  goto_begin
 _exist_src:
  src_dlgrdz := RejWezP_K["X:ksieg_dlrodz"]
  src_dlgrzl := RejWezP_K["X:ksieg_dlrozl"]
  RejOp["X:ZnajdzRek",dst_ksieg]
  int_cnv := .T.
  int_cnv := int_cnv and (RejWezP_K["X:ksieg_dlrodz"] = src_dlgrdz)
  int_cnv := int_cnv and (RejWezP_K["X:ksieg_dlrozl"] = src_dlgrzl)
  int_cnv := not int_cnv
  RejOp["X:ZamknijRej",""]

  if (not (YesNAlert["Dotychczasowe dane$ $z ksi|egi - "+dst_ksieg+"$ $zostan|a usuni|ete$ $Czy na pewno?"])) ExitAlg[0]
  ExDialogOp["OdczytajDialog","DIALOG-PRZENOSZENIE"]
  ExDialogOp["WyswietlDialog",""]
  DyskOp["UsunKatalog",dst_ksieg+slash+"int",""]
  DyskOp["KopiujKatalog",src_ksieg+slash+"int",dst_ksieg+slash+"int"]
  memo_int := "INTERFACE_"+nazwa_ksieg
  RejOp["U:OtworzRej1","FRM_MEMO.RJR"]
  if (RejOp["U:ZnajdzRek",memo_int]) goto _exist_int
  RejOp["U:DodajRek",""]
  RejWstawP_S["U:FRM_frm",memo_int]
 _exist_int:
  if (int_cnv) RejWstawP_L["U:FRM_log0",int_cnv]
  RejOp["U:ZamknijRej",""]
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  RejOp["U:OtworzRej1","FRM_MEMO.RJR"]
  RejOp["U:ZnajdzRek",memo_int]
  RejWstawP_L["U:FRM_log0",.N.]
  RejOp["U:ZamknijRej",""]

% DIALOG-PRZENOSZENIE.DLG
##DEFWINDOW = 10,14,20,65,ACHP,,,,,"Przenoszenie definicji - prosz|e czeka|c"
Przenoszone tablice z definicjami:

// ====== konwersja rejestrow pomocniczych
% KONW_PLIKI_II.ALG
  RejOp["XX:OtworzRejSprawdz",naz_baza]
  RejOp["XX:ZamknijRej",""]
  RejOp["XX:OtworzRejSprawdz",naz_firm]
  RejOp["XX:ZamknijRej",""]
  RejOp["XX:OtworzRejSprawdz",naz_data]
  RejOp["XX:ZamknijRej",""]

// ===== konwersja bazy danych obejmujaca zmiane dlugosci pol
% KONWERTOWANIE_BAZY_DANYCH.ALG
  modul_wersja := "PERSEUS_2.00"
  naz_kat := ""
  naz_prg := ""
  int_cnv := .N.
  int_exp := .N.
  memo_int := "INTERFACE_PERS"+nazwa_ksieg
  RejOp["U:OtworzRej1","FRM_MEMO.RJR"]
  if (RejOp["U:ZnajdzRek",memo_int]) goto _exist_int
  RejOp["U:DodajRek",""]
  RejWstawP_S["U:FRM_frm",memo_int]
 _exist_int:
  int_cnv := RejWezP_L["U:FRM_log0"]
  if (int_cnv) goto _do_konwersja
  if (modul_wersja == RejWezP_S["U:FRM_str0"]) goto _end
  OkAlert["UWAGA:$ $Teraz nast|api konwersja bazy danych modu|lu INTERFEJS$do wersji: "+modul_wersja]
 _do_konwersja:
  FinnOp["OpenMain",nazwa_ksieg]
  plikname := "INT_DEKR.RXR"
  CallAlg["KONWERTOWANIE_REJESTRU"]
  RejOp["R:OtworzRej1","INT_DEKR.RXR"]
  if (not (RejOp["R:WezPierwszyRek",""])) goto _end
 _next_rek: 
  CallAlg["NAZ_KAT_NA_MALE"]
  CallAlg["NAZ_PRG_NA_MALE"]
  int_exp := .T.
  plikname := "INT_DEFF.RXR" + "+" + naz_kat + "\int_deff"
  CallAlg["KONWERTOWANIE_REJESTRU"]
  int_exp := .N.
  plikname := "INT_SLOW.RXR" + "+" + naz_kat + "\int_slow"
  CallAlg["KONWERTOWANIE_REJESTRU"]
  plikname := "INT_BAZA.RXR" + "+" + naz_kat + "\int_baza"
  CallAlg["KONWERTOWANIE_REJESTRU"]
  plikname := "INT_FIRM.RXR" + "+" + naz_kat + "\int_firm"
  CallAlg["KONWERTOWANIE_REJESTRU"]
  plikname := "INT_DATA.RXR" + "+" + naz_kat + "\int_data"
  CallAlg["KONWERTOWANIE_REJESTRU"]
  plikname := "INT_TEMP.RXR" + "+" + naz_kat + "\int_temp"
  CallAlg["KONWERTOWANIE_REJESTRU"]
  plikname := "INT_ERRS.RXR" + "+" + naz_kat + "\int_errs"
  CallAlg["KONWERTOWANIE_REJESTRU"]
  plikname := "INT_ROZR.RXR" + "+" + naz_kat + "\int_rozr"
  CallAlg["KONWERTOWANIE_REJESTRU"]
  plikname := "INT_RODZ.RXR" + "+" + naz_kat + "\int_rodz"
  CallAlg["KONWERTOWANIE_REJESTRU"]
  plikname := "INT_ROZL.RXR" + "+" + naz_kat + "\int_rozl"
  CallAlg["KONWERTOWANIE_REJESTRU"]
  plikname := "INT_KNTR.RXR" + "+" + naz_kat + "\int_kntr"
  CallAlg["KONWERTOWANIE_REJESTRU"]
  plikname := "INT_REJV.RXR" + "+" + naz_kat + "\int_rejv"
  CallAlg["KONWERTOWANIE_REJESTRU"]
  plikname := "INT_KLAS.RXR" + "+" + naz_kat + "\int_klas"
  CallAlg["KONWERTOWANIE_REJESTRU"]
  plikname := "INT_DEWW.RXR" + "+" + naz_kat + "\int_deww"
  CallAlg["KONWERTOWANIE_REJESTRU"]
  plikname := "INT_GLOB.RJR" + "+" + naz_kat + "\int_glob"
  CallAlg["KONWERTOWANIE_REJESTRU"]
  if (RejOp["R:WezNastepnyRek",""]) goto _next_rek
  RejOp["R:ZamknijRej",""]
  FinnOp["Close",""]
 _end:
  RejWstawP_S["U:FRM_str0",modul_wersja]
  RejOp["U:ZamknijRej",""]

// ===== konwertowanie pojedynczego rejestru
% KONWERTOWANIE_REJESTRU.ALG
  if (int_cnv and int_exp) CallAlg["INT_EXP_IMP"]
  if (not (RejOp["SprawdzPlikRej",plikname])) ExitAlg[0]
  if (not (RejOp["X:OtworzRej1",plikname])) ExitAlg[0]
  bool := RejOp["X:SprawdzStrukture",""]
  if (bool) RejOp["X:ZamknijRej",""]
  if (bool) ExitAlg[0]
  RejOp["X:KonwertujPlik",""]

// ===== zamiana nazwy katalogu na male litery
% NAZ_KAT_NA_MALE.ALG
  naz_kat := RejWezP_S["R:DEKR_kat"]
  DyskOp["NaMale",naz_kat,""]
  naz_kat := D_String
  naz_prg := RejWezP_S["R:DEKR_prg"]
  naz_int_nag := RejWezP_S["R:DEKR_int"]
  naz_intd := RejWezP_S["R:dekr_int"]+":"+StrCut[RejWezP_S["R:dekr_naz"],0,40]
  DyskOp["NaMale",naz_prg,""]
  naz_prg := D_String
//madzia-dopisalam sprawdzanie, czy nazwa katalogu polecenia (naz_prg)
//jest pusta!
  if (naz_prg = "") ExitAlg[0]
//  naz_kat := naz_prg+"\"+naz_kat
  DyskOp["WezSystemX","",""]
  if (D_string = "D-") slash := "\"
  if (D_string = "X-") slash := "/"
  naz_kat := naz_prg+slash+naz_kat

% NAZ_KAT_NA_MALE_N.ALG
//zmiana - rejestr INT_DEKR otwarty bez literki. 
//rejestr ustawiony na poleceniu, ktorego dekrety chcemy wydrukowac
  naz_kat := RejWezP_S["DEKR_kat"]
  DyskOp["NaMale",naz_kat,""]
  naz_kat := D_String
  naz_prg := RejWezP_S["DEKR_prg"]
  DyskOp["NaMale",naz_prg,""]
  naz_prg := D_String
//madzia-dopisalam sprawdzanie, czy nazwa katalogu polecenia (naz_prg)
//jest pusta!
  if (naz_prg = "") ExitAlg[0]
  naz_kat := naz_prg+"\"+naz_kat
//
// ===== zamiana nazwy katalogu na male litery
% NAZ_PRG_NA_MALE.ALG
  naz_prg := RejWezP_S["R:DEKR_prg"]
  DyskOp["NaMale",naz_prg,""]
  naz_prg := D_String

// ===== eksport rejestru z jedengo i import do drugiego ksiegozbioru
% INT_EXP_IMP.ALG
  FinnOp["Close",""]
  FinnOp["OpenMain",src_ksieg]
  if (RejOp["OtworzRej",plikname]) goto _exist_rej
  OkAlert["Nie istnieje tablica "+plikname]
  FinnOp["Close",""]
  ExitAlg[0]
 _exist_rej:
///okalert["Export  "+plikname]
  DispLine["Export "+plikname]
  boolx := RejOp["WezPierwszyRek",""]
  if (not (boolx)) goto _loop
  DrukujAkcja["TEXTFILEPARAM = #nazwa_pliku#S:0"]
 _petla:
  CallFrm["int\int_exp.cal"]
///  line := ToStr["#RejLines[""""]#S:0"]
///  DrukujLinia[line]
///  DrukujLinia[ToStr["#RejLines[""""]#"]]
  if (RejOp["WezNastepnyRek",""]) goto _petla
  DrukujAkcja["DrukujKoniec"]
 _loop:
  RejOp["ZamknijRej",""]
  FinnOp["Close",""]
  if (not (boolx)) FinnOp["OpenMain",src_ksieg]
  if (not (boolx)) ExitAlg[0]

  FinnOp["OpenMain",dst_ksieg]
///okalert["Import  "+plikname]
  DispLine["Import "+plikname]
  RejOp["UsunPlikRej",plikname]
  RejOp["X:OtworzRej",plikname]
  RejOp["X:ImportujRejestr",nazwa_pliku]
  RejOp["X:ZamknijRej",""]
  FinnOp["Close",""]
  FinnOp["OpenMain",src_ksieg]

// ===== ustawianie skrajnych dat okresu polecenia
% USTAW_DATY.ALG
  if (dat > dat2) dat2 := dat
  if (dat < dat1) dat1 := dat

// ===== zapisanie zakresu dat w rejestrze FRM_MEMO
% ZAPISZ_DATY.ALG
  RejOp["U:OtworzRej1","FRM_MEMO.RJR"]
  RejOp["U:ZnajdzRek",memo_idx]
  RejWstawP_S["U:FRM_str8",StrCut[""+dat1,3,5]]
  RejWstawP_S["U:FRM_str9",StrCut[""+dat2,3,5]]
  RejOp["U:ZamknijRej",""]

// ===== zapisanie nazwy wczytanegp pliku txt 
% ZAPISZ_NAZWE_PLIKU.ALG
//plik_name == nazwa pliku
  memo_idx := "INTERFACE_"+nazwa_ksieg+"&"+naz_int+"&"+os_ksieg
  RejOp["U:OtworzRej1","FRM_MEMO.RJR"]
  if (RejOp["U:ZnajdzRek",memo_idx]) goto _zap
  RejOp["U:DodajRek",""]
  RejWstawP_S["U:FRM_frm",memo_idx]
  RejWstawP_S["U:FRM_str7",plik_name]
  RejOp["U:ZapiszRek",""]
  RejOp["U:ZamknijRej",""]
  ExitAlg[0]
_zap:
  RejWstawP_S["U:FRM_str7",plik_name]
  RejOp["U:ZapiszRek",""]
  RejOp["U:ZamknijRej",""]
  ExitAlg[0]

// ===== zapisanie nazwy ostatniego PK
% ZAPISZ_NAZWE_INT.ALG
//biezacy rekord z INT_DEKR - nazwa ostatniego PK
  memo_int := "INTERFACE_"+nazwa_ksieg
  RejOp["U:OtworzRej1","FRM_MEMO.RJR"]
  if (RejOp["U:ZnajdzRek",memo_int]) goto _izap
  RejOp["U:DodajRek",""]
  RejWstawP_S["U:FRM_frm",memo_int]
  RejWstawP_S["U:FRM_str6",RejWezP_S["R:dekr_int"]]
  RejOp["U:ZapiszRek",""]
  RejOp["U:ZamknijRej",""]
  ExitAlg[0]
_izap:
  RejWstawP_S["U:FRM_str6",RejWezP_S["R:dekr_int"]]
  RejOp["U:ZapiszRek",""]
  RejOp["U:ZamknijRej",""]
  ExitAlg[0]

// ===== odczytanie nazwy wczytanego pliku txt 
% ODCZYTAJ_NAZWE_PLIKU.ALG
//podstaw odczytana nazw na plik_poprz
  plik_poprz := ""
  memo_idx := "INTERFACE_"+nazwa_ksieg+"&"+naz_int+"&"+os_ksieg
  RejOp["U:OtworzRej1","FRM_MEMO.RJR"]
  if (RejOp["U:ZnajdzRek",memo_idx]) goto _odcz
  RejOp["U:ZamknijRej",""]
  ExitAlg[0]
_odcz:
  plik_poprz := RejWezP_S["U:FRM_str7"]
  RejOp["U:ZamknijRej",""]
  ExitAlg[0]

// ===== odczytanie nazwy ostaniego PK 
% ODCZYTAJ_NAZWE_INT.ALG
//odczytaj nazwe int i odszukaj ja w rejestrze INT_DEKR
  int_poprz := ""
  memo_int := "INTERFACE_"+nazwa_ksieg
  RejOp["U:OtworzRej1","FRM_MEMO.RJR"]
  if (RejOp["U:ZnajdzRek",memo_int]) goto _iodcz
  RejOp["U:ZamknijRej",""]
  ExitAlg[0]
_iodcz:
  int_poprz := RejWezP_S["U:FRM_str6"]
  RejOp["U:ZamknijRej",""]
  if (int_poprz = "") ExitAlg[0]
  RejOp["R:ZnajdzRek",int_poprz]
  ExitAlg[0]

// ==== wysweitlanie paska stanu realizacji
% DISPLAY_PASEK.ALG
 _disp_tlo:
  if (lp/liczbarekordow < pr/sm) ExitAlg[0]
  DispText["±"]
  pr := pr + 1
  goto _disp_tlo

// ===== czytanie parametrow z INT_GLOB
% READ_PARAM.ALG
  if (RejOp["G:ZnajdzRek",indexpar]) goto _read_param
  RejOp["G:DodajRek",""]
  xRejWstawP_S["G:GLOBAL_index",indexpar]
  xRejWstawP_S["G:GLOBAL_tresc",paramtxt]
  xRejWstawP_S["G:GLOBAL_nazwa",paramnaz]
  RejOp["G:ZapiszRek",""]
 _read_param:
  paramtxt := RejWezP_S["G:GLOBAL_tresc"]
  paramnaz := RejWezP_S["G:GLOBAL_nazwa"]
  paramkwt := StringNaLiczbe[paramtxt]
  if (paramtxt = "T") paramlog := .T.
  if (paramtxt = "N") paramlog := .N.

// ===== zapis parametrow do INT_GLOB
% WRITE_PARAM.ALG
  RejOp["G:ZnajdzRek",indexpar]
  RejWstawP_S["G:GLOBAL_tresc",paramtxt]
  RejWstawP_S["G:GLOBAL_nazwa",paramnaz]

// ===== polecenie nie zawiera dodatkowych parametrow
% NO_PARAM.ALG
  OkAlert["W tym poleceniu ksi|egowania parametry nie wyst|epuj|a"]

// nowe rozwiazania do wersji 3.05
// ==================================================================
// ===== DIALOG - INTROZRMENU - dialog do wyboru kont 
// ==================================================================
% TABLICA-AKCJI-INTROZRMENU
  "AKCJA-PRZED-WYSWIETLENIEM",INTROZRMENU_PRZED_WYSW
  "AKCJA-BUTTON5",INTROZRMENU_MODIF
% INTROZRMENU.DLG
##DEFWINDOW = 5,2,,77,ACP
##100,0,BCMP,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:INTROZRMENU,O,KLUCZ,1
##5,GBTL,P,,"%M%odyfikacja"
##90,,ADP,,@5
 Wykaz kontrahent|ow

 #100                                                                     #
 

  #5        #                                 #90          #
// ------------------------------------------------------------------
//
% INTROZRMENU.MEN
D=100
//LINIA-DIALOG = REJESTR-ROZR-EDYCJA,"Kolumny DLA ROZR"
110,,,,12,"Konto"   # symbol konta  (zamiennik)
111,,,,10,"Kontrahent"   # symbol kontrahenta (zamiennik)
100,,,,11,"|Xr|od|lowy"   # identyfikator operacji (index) (zrodlowy)
102,,,,,"Nazwa"         # nazwa
103,,,,,"Adres"         # adres
//% REJESTR-ROZR-EDYCJA.DIC
//"INTROZRMENU",0
//
% INTROZRMENU_PRZED_WYSW.ALG
  RejOp["O:WezPierwszyRek",""]
  ExDialogOp["IdzDoPozycji","100"]

% INTROZRMENU_MODIF.ALG
  if (RejOp["O:PustyRej",""]) ExitAlg[0]
  ExDialogOp["IdzDoDialogu","INTROZRBOX"]
  ExDialogOp["IdzDoPozycji","100"]
  ExDialogOp["WyswietlPozycje","100"]
//
// ==================================================================
// ===== DIALOG - INTROZRBOX - definiowanie konta i kontrahenta
// ==================================================================
% TABLICA-AKCJI-INTROZRBOX
  "AKCJA-PRZED-WYSWIETLENIEM",INTROZRBOX_PRZED_WYSW
  "AKCJA-BUTTON91",INTROZRBOX_AKCEPTUJESZ
  "AKCJA-BUTTON92",INTROZRBOX_REZYGNUJESZ
  "AKCJA-F2-POLE10",INTROZRBOX_F2_POLE10
  "AKCJA-F2-POLE20",INTROZRBOX_F2_POLE20
//*****************************P***********************

% INTROZRBOX.DLG
##DEFWINDOW = 10,4,22,75,ACP
##10,0,P,,,,,,,,pole:O:SUFF_ktr
##20,0,P,,,,,,,,pole:O:SUFF_rdz
##30,D,P,,,,,,,,pole:O:SUFF_kod
##31,D,P,,,,,,,,pole:O:SUFF_naz
##32,D,P,,,,,,,,pole:O:SUFF_adr
##33,D,P,,,,,,,,pole:O:SUFF_nip
##91,,ADP,,@3
##92,,ADP,,@4
 Modyfikacja zamiennik|ow

 Zamiennik symbolu kontrahenta:     #10            #
 Zamiennik konta            :       #20            #
 
 Symbol kontrahenta |xr|od|lowy:       #30                          #
 Nazwa:   #31                                                          #
 Adres:   #32                                                          #
 NIP  :   #33                                                          #


  #91           #                         #92           #
// ------------------------------------------------------------------
//
% INTROZRBOX_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","10"]

% INTROZRBOX_AKCEPTUJESZ.ALG
  RejOp["O:ZapiszRek",""]
  ExDialogOp["KoniecWykonywania",""]

% INTROZRBOX_REZYGNUJESZ.ALG
  ExDialogOp["KoniecWykonywania",""]

% INTROZRBOX_F2_POLE10.ALG
  FinnOp["@3OpenMainX",""]
  kod := RejWezP_S["O:SUFF_ktr"]
  D_STRING := kod
  D_STRING := WybierzFinn["RejestrKlientow"]
  if (D_STRING = "") D_STRING := kod
  RejWstawP_S["O:SUFF_ktr",kod]
  FinnOp["Close",""]

% INTROZRBOX_F2_POLE20.ALG
  FinnOp["@3OpenMainX",""]
  kod := RejWezP_S["O:SUFF_rdz"]
  D_STRING := kod
  D_STRING := WybierzFinn["PlanRodz"]
  if (D_STRING = "") D_STRING := kod
  RejWstawP_S["O:SUFF_rdz",kod]
  FinnOp["Close",""]

// --------------------------------------------
% PLAN.BUT # "buttony" do rejestru 
// Ogladanie rekordu (z modyfikacja)
"%D%odanie rekordu",5,1
"%U%suni|ecie rekordu",6,1
"%M%odyfikacja rekordu",4,1   # modyfikacja
//"Rekord: @        ",7,1
@5,0,1               # Koniec
// --------------------------------------------
// ==================================================================
// ===== DIALOG - INTDEFFMENU - rejestr definicji dekretow
// ==================================================================
% TABLICA-AKCJI-INTDEFFMENU
  "AKCJA-PRZED-WYSWIETLENIEM",INTDEFFMENU_PRZED_WYSW
  "AKCJA-BUTTON4",INTDEFFMENU_DODAJ
  "AKCJA-BUTTON5",INTDEFFMENU_MODIF
  "AKCJA-BUTTON6",INTDEFFMENU_USUN

//********************************************************

% INTDEFFMENU.GUI32.DLG
##DEFWINDOW = 5,2,,57,ACP
##100,0,BCMP,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:INTDEFFMENU,D,KLUCZ,1
##4,GBTL,P,,"%D%odanie"
##5,GBTL,P,,"%M%odyfikacja"
##6,GBTL,P,,"%U%suwanie"
##90,,ADP,,$$(@5)
 Wykaz dekret|ow

 #100                                                 #
 
  #4        #
  #5        #                          #90          #
  #6        #
//************************************************************

% INTDEFFMENU.DLG
##DEFWINDOW = 5,2,,57,ACP
##100,0,BCMP,,,,white&white,yellow/magenta&black/white,lred&white,,MENU_NA_REKORDY:INTDEFFMENU,D,KLUCZ,1
##4,GBTL,P,,"%D%odanie"
##5,GBTL,P,,"%M%odyfikacja"
##6,GBTL,P,,"%U%suwanie"
##90,,ADP,,@5
 Wykaz dekret|ow

 #100                                                 #
 
  #4        #
  #5        #                          #90          #
  #6        #
// ------------------------------------------------------------------

% INTDEFFMENU.MEN
100         # index definicji (index)
101         # nazwa operacji


% INTDEFFMENU_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","100"]
  if (RejOp["D:PustyRej",""]) ExDialogOp["IdzDoPozycji","4"]

% INTDEFFMENU_DODAJ.ALG
  tryb := "D"
  rek := RejWezP_S["D:DEFF_oprdef"]
  if (RejOp["D:PustyRej",""]) rek := ""
  RejOp["D:DodajRek",""]
  ExDialogOp["IdzDoDialogu","INTDEFFBOX"]
  ExDialogOp["IdzDoPozycji","100"]
  ExDialogOp["WyswietlPozycje","100"]

% INTDEFFMENU_MODIF.ALG
  tryb := "M"
  if (RejOp["D:PustyRej",""]) ExitAlg[0]
  rek := RejWezP_S["D:DEFF_oprdef"]
  ExDialogOp["IdzDoDialogu","INTDEFFBOX"]
  ExDialogOp["IdzDoPozycji","100"]
  ExDialogOp["WyswietlPozycje","100"]

% INTDEFFMENU_USUN.ALG
  tryb := "U"
  if (RejOp["D:PustyRej",""]) ExitAlg[0]
  rek := RejWezP_S["D:DEFF_oprdef"]
  kod := ""
  A_OK := YesNAlert["Usun|a|c dekret o symbolu  "+rek+"  ?"]
  if (not (A_OK)) goto _loop_usun
  if (RejOp["D:WezNastepnyRek",""]) goto _read
  RejOp["D:ZnajdzRek",rek]
  if (RejOp["D:WezPoprzedniRek",""]) goto _read
  goto _usun
 _read:
  kod := RejWezP_S["D:DEFF_oprdef"]
 _usun:
  RejOp["D:ZnajdzRek",rek]
  RejOp["D:UsunRek",""]
  ExDialogOp["UsunRekordZMenu","100"]
  if (not (kod = "")) RejOp["D:ZnajdzRek",kod]
  ExDialogOp["IdzDoPozycji","100"]
 _loop_usun:
  ExDialogOp["WyswietlPozycje","100"]

// ==================================================================
// ===== DIALOG - INTDEFFBOX - definiowanie konta i kontrahenta
// ==================================================================
% TABLICA-AKCJI-INTDEFFBOX
  "AKCJA-PRZED-WYSWIETLENIEM",INTDEFFBOX_PRZED_WYSW
  "AKCJA-BUTTON91",INTDEFFBOX_AKCEPTUJESZ
  "AKCJA-BUTTON92",INTDEFFBOX_REZYGNUJESZ
//*************************************************************
% INTDEFFBOX.GUI32.DLG
RESORS = dll\int.dll:INT_INTDEFFBOX
##DEFWINDOW = 1,1,22,78,ACP
##10,0,P,,,,,,,,pole:D:DEFF_oprdef
##20,0,P,,,,,,,,pole:D:DEFF_oprnaz
##30,0,P,,,,,,,,pole:D:DEFF_oprtrs
##110,0,P,,,'W',,,,,pole:D:DEFF_rdzpfxwn
##111,0,P,,,,,,,,pole:D:DEFF_rdzsfxwn
##112,0,P,,,,,,,,pole:D:DEFF_rdzaddwn
##113,0,P,,,,,,,,pole:D:DEFF_rdzmodwn
##120,0,P,,,,,,,,pole:D:DEFF_rzlpfxwn
##121,0,P,,,,,,,,pole:D:DEFF_rzlsfxwn
##122,0,P,,,,,,,,pole:D:DEFF_rzladdwn
##123,0,P,,,,,,,,pole:D:DEFF_rzlmodwn
##124,0,P,,,,,,,,pole:D:DEFF_rzlmetwn
##130,0,P,,,,,,,,pole:D:DEFF_klnpfxwn
##131,0,P,,,,,,,,pole:D:DEFF_klnsfxwn
##140,0,P,,,,,,,,pole:D:DEFF_rzrmodwn
##141,0,P,,,,,,,,pole:D:DEFF_rzrmetwn
##150,0,P,,,,,,,,pole:D:DEFF_vatmodwn
##160,0,P,,,,,,,,pole:D:DEFF_dewmodwn
##210,0,P,,,'M',,,,,pole:D:DEFF_rdzpfxma
##211,0,P,,,,,,,,pole:D:DEFF_rdzsfxma
##212,0,P,,,,,,,,pole:D:DEFF_rdzaddma
##213,0,P,,,,,,,,pole:D:DEFF_rdzmodma
##220,0,P,,,,,,,,pole:D:DEFF_rzlpfxma
##221,0,P,,,,,,,,pole:D:DEFF_rzlsfxma
##222,0,P,,,,,,,,pole:D:DEFF_rzladdma
##223,0,P,,,,,,,,pole:D:DEFF_rzlmodma
##224,0,P,,,,,,,,pole:D:DEFF_rzlmetma
##230,0,P,,,,,,,,pole:D:DEFF_klnpfxma
##231,0,P,,,,,,,,pole:D:DEFF_klnsfxma
##240,0,P,,,,,,,,pole:D:DEFF_rzrmodma
##241,0,P,,,,,,,,pole:D:DEFF_rzrmetma
##250,0,P,,,,,,,,pole:D:DEFF_vatmodma
##260,0,P,,,,,,,,pole:D:DEFF_dewmodma
##40,0,P,,,,,,,,pole:D:DEFF_oprznk
##91,,ADP,,$$(@3)
##92,,ADP,,$$(@4)
 Tre|s|c: #20                                    # Index dekretu: #10      #
 Parametr tre|sci: #30#
                                             Strona Wn        Strona %M%a
 Prefix konta:                               #110           # #210           #
 Suffix konta:                               #111#            #211#
 Metoda zak|ladania konta rodzajowego:        #112#            #212#
 Metoda aktualiz.nazwy konta rodzajowego:    #113#            #213#
 Prefix klasyfikacji:                        #120     #       #220     #
 Suffix klasyfikacji:                        #121#            #221#
 Metoda zak|ladania klasyfikacji:            #122#            #222#
 Metoda aktualiz.nazwy klasyfikacji:         #123#            #223#
 Metoda rejestr.zapis|ow na klasyf.:          #124#            #224#
 Prefix kontrahenta:                         #130           # #230           #
 Suffix kontrahenta:                         #131#            #231#
 Metoda aktualiz.kontrah.w rej.kontrah.:     #140#            #240#
 Metoda rejestr.transakcji rozrachunkowych:  #141#            #241#
 Czy jest to konto z atrybutem - VAT ?:      #150#            #250#
 Czy jest to konto z atrybutem - dewizowe ?: #160#            #260#
 
 Spos|ob prezentacji kwoty: #40#
                                             #91           #  #92           #
// ************************************************************************************


% INTDEFFBOX.DLG
##DEFWINDOW = 1,1,22,78,ACP
##10,0,P,,,,,,,,pole:D:DEFF_oprdef
##20,0,P,,,,,,,,pole:D:DEFF_oprnaz
##30,0,P,,,,,,,,pole:D:DEFF_oprtrs
##110,0,P,,,'W',,,,,pole:D:DEFF_rdzpfxwn
##111,0,P,,,,,,,,pole:D:DEFF_rdzsfxwn
##112,0,P,,,,,,,,pole:D:DEFF_rdzaddwn
##113,0,P,,,,,,,,pole:D:DEFF_rdzmodwn
##120,0,P,,,,,,,,pole:D:DEFF_rzlpfxwn
##121,0,P,,,,,,,,pole:D:DEFF_rzlsfxwn
##122,0,P,,,,,,,,pole:D:DEFF_rzladdwn
##123,0,P,,,,,,,,pole:D:DEFF_rzlmodwn
##124,0,P,,,,,,,,pole:D:DEFF_rzlmetwn
##130,0,P,,,,,,,,pole:D:DEFF_klnpfxwn
##131,0,P,,,,,,,,pole:D:DEFF_klnsfxwn
##140,0,P,,,,,,,,pole:D:DEFF_rzrmodwn
##141,0,P,,,,,,,,pole:D:DEFF_rzrmetwn
##150,0,P,,,,,,,,pole:D:DEFF_vatmodwn
##160,0,P,,,,,,,,pole:D:DEFF_dewmodwn
##210,0,P,,,'M',,,,,pole:D:DEFF_rdzpfxma
##211,0,P,,,,,,,,pole:D:DEFF_rdzsfxma
##212,0,P,,,,,,,,pole:D:DEFF_rdzaddma
##213,0,P,,,,,,,,pole:D:DEFF_rdzmodma
##220,0,P,,,,,,,,pole:D:DEFF_rzlpfxma
##221,0,P,,,,,,,,pole:D:DEFF_rzlsfxma
##222,0,P,,,,,,,,pole:D:DEFF_rzladdma
##223,0,P,,,,,,,,pole:D:DEFF_rzlmodma
##224,0,P,,,,,,,,pole:D:DEFF_rzlmetma
##230,0,P,,,,,,,,pole:D:DEFF_klnpfxma
##231,0,P,,,,,,,,pole:D:DEFF_klnsfxma
##240,0,P,,,,,,,,pole:D:DEFF_rzrmodma
##241,0,P,,,,,,,,pole:D:DEFF_rzrmetma
##250,0,P,,,,,,,,pole:D:DEFF_vatmodma
##260,0,P,,,,,,,,pole:D:DEFF_dewmodma
##40,0,P,,,,,,,,pole:D:DEFF_oprznk
##91,,ADP,,@3
##92,,ADP,,@4
 Tre|s|c: #20                                    # Index dekretu: #10      #
 Parametr tre|sci: #30#
                                             Strona Wn        Strona %M%a
 Prefix konta:                               #110           # #210           #
 Suffix konta:                               #111#            #211#
 Metoda zak|ladania konta rodzajowego:        #112#            #212#
 Metoda aktualiz.nazwy konta rodzajowego:    #113#            #213#
 Prefix klasyfikacji:                        #120     #       #220     #
 Suffix klasyfikacji:                        #121#            #221#
 Metoda zak|ladania klasyfikacji:            #122#            #222#
 Metoda aktualiz.nazwy klasyfikacji:         #123#            #223#
 Metoda rejestr.zapis|ow na klasyf.:          #124#            #224#
 Prefix kontrahenta:                         #130           # #230           #
 Suffix kontrahenta:                         #131#            #231#
 Metoda aktualiz.kontrah.w rej.kontrah.:     #140#            #240#
 Metoda rejestr.transakcji rozrachunkowych:  #141#            #241#
 Czy jest to konto z atrybutem - VAT ?:      #150#            #250#
 Czy jest to konto z atrybutem - dewizowe ?: #160#            #260#
 
 Spos|ob prezentacji kwoty: #40#
                                             #91           #  #92           #
// ------------------------------------------------------------------
//
% INTDEFFBOX_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","10"]

% INTDEFFBOX_AKCEPTUJESZ.ALG
  if (not (D:DEFF_oprdef = "")) goto _ok_nul
  OkAlert["Pole musi by|c wype|lnione !!!"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
 _ok_nul:
  kod := D:DEFF_oprdef
  if (not (RejOp["Y:ZnajdzRek",kod])) goto _ok_box
  if (RejWezP_K["D:RejestrRekPos"] = RejWezP_K["Y:RejestrRekPos"]) goto _ok_box
  OkAlert["Dekret o tym symbolu ju|z istnieje !!!"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
 _ok_box:
  RejOp["D:ZapiszRek",""]
  ExDialogOp["KoniecWykonywania",""]

% INTDEFFBOX_REZYGNUJESZ.ALG
  if (tryb = "M" or tryb = "D") RejOp["D:UsunZmiany",""]
  if (tryb = "D") RejOp["D:UsunRek",""]
  if (not (rek = "")) RejOp["D:ZnajdzRek",rek]
  ExDialogOp["KoniecWykonywania",""]

// ====================================================================
//Slowniki do odczytywania/zapisywania rekordow rejestru na zmienne
// ====================================================================
% SLOWNIK_SLOW.DIC # slownik odczytywania na zmienne rejestr INT_SLOW
"SLOW_kod",0,,"i1"
"SLOW_naz",0,,"i2"
"SLOW_def",0,,"i3"
"SLOW_znk",0,,"i4"
// --------------------------------------------
% SLOWNIK_3.DIC # slownik odczytywania na zmienne rejestr INT_KLAS, INT_REJV, INT_ROZL, INT_DEWW
"SUFF_kod",0,,"i1"
"SUFF_sfx",0,,"i2"
"SUFF_naz",0,,"i3"
// -------------------------------------------
% SLOWNIK_5.DIC # slownik odczytywania na zmienne rejestr INT_KNTR,INT_RODZ
"SUFF_kod",0,,"i1"
"SUFF_sfx",0,,"i2"
"SUFF_naz",0,,"i3"
"SUFF_adr",0,,"i4"
"SUFF_nip",0,,"i5"
// -------------------------------------------
% SLOWNIK_ROZR.DIC # slownik odczytywania na zmienne rejestr INT_ROZR
"SUFF_kod",0,,"i1"
"SUFF_rdz",0,,"i2"
"SUFF_ktr",0,,"i3"
"SUFF_naz",0,,"i4"
"SUFF_adr",0,,"i5"
"SUFF_nip",0,,"i6"
// -------------------------------------------
% SLOWNIK_DEFF.DIC # slownik odczytywania na zmienne rejestr INT_DEFF
"DEFF_oprdef",0,,"i1"
"DEFF_oprnaz",0,,"i2"
"DEFF_oprtrs",0,,"i3"
"DEFF_oprznk",0,,"i4"
"DEFF_rdzpfxwn",0,,"i5"
"DEFF_rdzsfxwn",0,,"i6"
"DEFF_rdzaddwn",0,,"i7"
"DEFF_rdzmodwn",0,,"i8"
"DEFF_rzlpfxwn",0,,"i9"
"DEFF_rzlsfxwn",0,,"i10"
"DEFF_rzladdwn",0,,"i11"
"DEFF_rzlmodwn",0,,"i12"
"DEFF_rzlmetwn",0,,"i13"
"DEFF_klnpfxwn",0,,"i14"
"DEFF_klnsfxwn",0,,"i15"
"DEFF_rzrmodwn",0,,"i16"
"DEFF_rzrmetwn",0,,"i17"
"DEFF_vatmodwn",0,,"i18"
"DEFF_dewmodwn",0,,"i19"
"DEFF_rdzpfxma",0,,"i20"
"DEFF_rdzsfxma",0,,"i21"
"DEFF_rdzaddma",0,,"i22"
"DEFF_rdzmodma",0,,"i23"
"DEFF_rzlpfxma",0,,"i24"
"DEFF_rzlsfxma",0,,"i25"
"DEFF_rzladdma",0,,"i26"
"DEFF_rzlmodma",0,,"i27"
"DEFF_rzlmetma",0,,"i28"
"DEFF_klnpfxma",0,,"i29"
"DEFF_klnsfxma",0,,"i30"
"DEFF_rzrmodma",0,,"i31"
"DEFF_rzrmetma",0,,"i32"
"DEFF_vatmodma",0,,"i33"
"DEFF_dewmodma",0,,"i34"
// -------------------------------------------
// ====================================================================
// Slownik z nazwami rejstrow do kopiownia miedzy poleceniami ksieg
// ====================================================================
% KOPIOWANIE.DIC
"INT_ROZR.RXR",0,,"S|lownik kont i kontrahent|ow"
"INT_RODZ.RXR",1,,"S|lownik kont"
"INT_ROZL.RXR",2,,"S|lownik klasyfikacji pomocniczej"
"INT_KNTR.RXR",3,,"S|lownik kontrahent|ow"
"INT_REJV.RXR",4,,"S|lownik rejestr|ow VAT"
"INT_KLAS.RXR",5,,"S|lownik klasyfikacji VAT"
"INT_DEWW.RXR",6,,"S|lownik walut"
"INT_DEFF.RXR",7,,"Tablica definicji dekret|ow"
"INT_SLOW.RXR",8,,"Tablica operacji ksi|egowych"
// ====================================================================
// ===== TABLICA REJESTROW
% REJDEFTABLE
%<< REJDEFTABLE
,,0,"INT_DEKR.RXR",..\int\int_dekr,1     # rejestr z wykazem polecen
,,0,"INT_DEKR.RJR",..\int\int_dekr,1     # rejestr z wykazem polecen
,,0,"INT_DEFF.RXR",..\int,1              # rejestr z definicjami ksiegowan
,,0,"INT_SLOW.RXR",..\int,1              # slownik kodow i dekretow
,,0,"INT_SLOW.RJR",..\int,1              # slownik kodow i dekretow
,,0,"INT_ROZR.RXR",..\int,1              # slownik kont i kontrah. rozrachunkowych
,,0,"INT_RODZ.RXR",..\int,1              # slownik kont
,,0,"INT_ROZL.RXR",..\int,1              # slownik klasyfikacji
,,0,"INT_KNTR.RXR",..\int,1              # slownik kontrahentow
,,0,"INT_REJV.RXR",..\int,1              # slownik rejestrow VAT
,,0,"INT_KLAS.RXR",..\int,1              # slownik klasyfikacji VAT
,,0,"INT_DEWW.RXR",..\int,1              # slownik walut
//
,,0,"INT_BAZA.RXR",..\int,1              # dane bazowe dla linii zapisow
,,0,"INT_BAZA.RJR",..\int,1              # dane bazowe dla linii zapisow
,,0,"INT_NAGL.RJR",.,2                   # tmp do ogladani naglowkow transkacji, struktura jak int_baza
,,0,"INT_FIRM.RXR",..\int,1              # dane bazowe dla kontrahentow
,,0,"INT_FIRM.RJR",..\int,1              # dane bazowe dla kontrahentow
,,0,"INT_DATA.RXR",..\int,1              # rejestr z podstawionymi kontami
,,0,"INT_DATA.RJR",..\int,1              # rejestr z podstawionymi kontami
,,0,"INT_TEMP.RXR",..\int,1              # rejestr pomocniczy do polecenia
,,0,"INT_PLIK.RXR",..\int,1              # rejestr z nazwami plikow zrodlowych
,,0,"INT_GLOB.RJR",..\int,1              # rejestr parametrami konwersji
,,0,"INT_ERRS.RXR",..\int,1              # wykaz stwierdzonych bledow
,,0,"INT_MESS.RXR",..\wlasne\int\int_mess   # rejestr komunikatow o bledach
//
,,0,"WYBOR_SLOW.RXR",., 	         # TMP do wyboru slownikow do kopiowania
,,0,"WYBOR_PK.RXR",., 	                 # TMP do wyboru PK docelowych do kopiowania
,,0,"WYBOR_INFO.RXR",., 	         # TMP do zapisyawnia info o przebiegu kopiowania
,5191,0,"INT_TXT1.RXR",int_txt1,2        # rejestr 1 - dane zrodlowe ASCII
,5191,0,"INT_TXT1.RJR",int_txt1,2        # rejestr 1 - dane zrodlowe ASCII
,5192,0,"INT_TXT2.RXR",int_txt2,2        # rejestr 2 - dane zrodlowe ASCII
,5192,0,"INT_TXT2.RJR",int_txt2,2        # rejestr 2 - dane zrodlowe ASCII
,5193,0,"INT_TXT3.RXR",int_txt3,2        # rejestr 3 - dane zrodlowe ASCII
,5193,0,"INT_TXT3.RJR",int_txt3,2        # rejestr 3 - dane zrodlowe ASCII
,5194,0,"INT_TXT4.RXR",int_txt4,2        # rejestr 4 - dane zrodlowe ASCII
,5194,0,"INT_TXT4.RJR",int_txt4,2        # rejestr 4 - dane zrodlowe ASCII
,5195,0,"INT_TXT5.RXR",int_txt5,2        # rejestr 5 - dane zrodlowe ASCII
,5195,0,"INT_TXT5.RJR",int_txt5,2        # rejestr 5 - dane zrodlowe ASCII
,5196,0,"INT_TXT6.RXR",int_txt6,2        # rejestr 6 - dane zrodlowe ASCII
,5196,0,"INT_TXT6.RJR",int_txt6,2        # rejestr 6 - dane zrodlowe ASCII
,5197,0,"INT_TXT7.RXR",int_txt7,2        # rejestr 7 - dane zrodlowe ASCII
,5197,0,"INT_TXT7.RJR",int_txt7,2        # rejestr 7 - dane zrodlowe ASCII
,5198,0,"INT_TXT8.RXR",int_txt8,2        # rejestr 8 - dane zrodlowe ASCII
,5198,0,"INT_TXT8.RJR",int_txt8,2        # rejestr 8 - dane zrodlowe ASCII
,5199,0,"INT_TXT9.RXR",int_txt9,2        # rejestr 9 - dane zrodlowe ASCII
,5199,0,"INT_TXT9.RJR",int_txt9,2        # rejestr 9 - dane zrodlowe ASCII
//
,,0,"INT_IMPD.RXR",..\wlasne\int         # rejestr 1 - definicje pol rekordu zrodlowego
//
,,0,"GLOB.RJR",glob,1                    # dane o ostatnich ksiegowaniach
//
// do PROMAGA
,,0,"INT_SUMA.RJR",int_suma,1              # sumowanie linii w dokumencie
,,0,"INT_SUMAGR.RJR",int_sumagr,1              # sumowanie linii w dokumencie
// =================================================================
// ===== rozne slowniki
% 200.DIC # slownik sposobow pobierania tresci
"",0,,"Tre|s|c z linii DEFF"
"1",1,,"Data + tre|s|c z linii DEFF"
"2",2,,"Zakres dat + tre|s|c z linii DEFF"
"3",3,,"Tre|s|c z pliku BAZA"
"4",4,,"Data + tre|s|c z pliku BAZA"
"5",5,,"Zakres dat + tre|s|c z pliku BAZA"
"6",6,,"Tre|s|c z linii DEFF + tre|s|c z pliku BAZA"
"7",7,,"Data + tre|s|c z linii DEFF + tre|s|c z pliku BAZA"
"8",8,,"Zakres dat + tre|s|c z linii DEFF + tre|s|c z pliku BAZA"
//
% 201.DIC # slownik z rodzajem suffix'u
"",0,,"Suffix nie wyst|epuje"
"Z",1,,"Suffix z rejestru zrodlowego"
"T",2,,"Suffix ze s|lownika zamiennik|ow"
//
% 202.DIC # slownik z metoda zakladania nowych kont
"",0,,"Manualne dodawanie nowych kont"
"A",1,,"Automatyczne dodawanie nowych kont"
//
% 203.DIC # slownik z metoda aktualizacji danych o koncie
"",0,,"Nazwa konta nie podlega aktualizacji"
"A",1,,"Bezwarunkowa aktualizacja nazwy konta"
"W",2,,"Aktualizacja nazwy konta jesli nazwa ta nie jest pusta"
//
% 204.DIC # slownik sposobow ksiegowania kont rozrachunkowych
"",0,,"Konto nie ma atrybutu rozrachunkowe"
"N",1,,"Nie modyfikowa|c danych istniej|acego kontrahenta"
"A",2,,"Modyfikowa|c wszystkie dane istniej|acego kontrahenta"
"W",3,,"Modyfikowa|c wybrane dane istniej|acego kontrahenta"
//
% 205.DIC # slownik sposobow ksiegowania kont VAT
"",0,,"Konto nie ma atrybutu VAT"
"T",1,,"Konto ma atrybut VAT"
//
% 206.DIC # slownik dla metody konsolidacji zapisow klasyfikacji
"",0,,"Zapisy klasyfikacji pomoc. b|ed|a zebrane w jeden zapis"
"N",1,,"Dla ka|zdego zapisu klasyfikacji pomoc. odr|ebny zapis"
"M",2,,"Wczytywanie sekwencyjne (bez sumowania)"
//
% 207.DIC # slownik dla metody konsolidacji transakcji rozrachunkowych
"",0,,"Transakcje rozrachunkowe bed|a zebrane w jeden zapis"
"N",1,,"Dla ka|zdej transakcji rozrachunkowej odr|ebny zapis"
"M",2,,"Wiele transakcji rozrachunkowych do jedengo zapisu"
//
% 208.DIC # slownik dla metody rejestracji kont przeciwstawnych
"",0,,"Jest konto przeciwstawne je|sli zosta|lo zdefiniowane"
"N",1,,"Konta Wn i Ma w odr|ebnych zapisach ksi|egowych"
//
% 209.DIC # slownik dla metody konsolidacji danych zrodlowych
"",0,,"Kody transformacji odr|ebne dla symbolu konta i kontrahenta"
"W",1,,"Wsp|olny kod transformacji dla symbolu konta i kontrahenta"
//
% 210.DIC # slownik sposobow ksiegowania kont dewizowych
"",0,,"Konto nie ma atrybutu dewizowe"
"D",1,,"Konto ma atrybut dewizowe"
"Z",2,,"Atrybut konta taki jak atrybut konta nadrz|ednego"
//
% 211.DIC # slownik symboli dokumentow ksiegowych
"",0,,"symbol standardowy XX (w okresie)"
"XA",1,,"dokumenty ksi|egowane (do przodu)"
"XB",2,,"dokumenty ksi|egowane (do przodu)"
"XC",3,,"dokumenty ksi|egowane (do przodu)"
"XD",4,,"dokumenty ksi|egowane (do przodu)"
"XE",5,,"dokumenty ksi|egowane (do przodu)"
"XF",6,,"dokumenty ksi|egowane (do przodu)"
"XG",7,,"dokumenty ksi|egowane (do przodu)"
"XH",8,,"dokumenty ksi|egowane (do przodu)"
"XI",9,,"dokumenty ksi|egowane (do przodu)"
"XJ",10,,"dokumenty ksi|egowane (do przodu)"
"XK",11,,"dokumenty ksi|egowane (w okresie)"
"XL",12,,"dokumenty ksi|egowane (w okresie)"
"XM",13,,"dokumenty ksi|egowane (w okresie)"
"XN",14,,"dokumenty ksi|egowane (w okresie)"
"XO",15,,"dokumenty ksi|egowane (w okresie)"
"XP",16,,"dokumenty ksi|egowane (w okresie)"
"XQ",17,,"dokumenty ksi|egowane (w okresie)"
"XR",18,,"dokumenty ksi|egowane (w okresie)"
"XS",19,,"dokumenty ksi|egowane (w okresie)"
"XT",20,,"dokumenty ksi|egowane (w okresie)"
"XFV",21,,"dokumenty ksi|egowane (w okresie)"
"XFK",22,,"dokumenty ksi|egowane (w okresie)"
"XRV",23,,"dokumenty ksi|egowane (w okresie)"
"XRU",24,,"dokumenty ksi|egowane (w okresie)"
"XRK",25,,"dokumenty ksi|egowane (w okresie)"
"XWF",26,,"dokumenty ksi|egowane (w okresie)"
"XPZ",27,,"dokumenty ksi|egowane (w okresie)"
"XPK",28,,"dokumenty ksi|egowane (w okresie)"
"XSD",29,,"dokumenty ksi|egowane (w okresie)"
"XWZ",30,,"dokumenty ksi|egowane (w okresie)"
"XMB",31,,"dokumenty ksi|egowane (w okresie)"
"XKA",32,,"dokumenty ksi|egowane (w okresie)"
"XKB",33,,"dokumenty ksi|egowane (w okresie)"
"XKD",34,,"dokumenty ksi|egowane (w okresie)"
//
% 212.DIC # slownik do konwersji kwoty/strony ksi|egowej
"",0,,"Kwota bez zmian"
"P",1,,"Zmiana znaku kwoty na przeciwny"
//
% 213.DIC # slownik do metody sortowania slownik¢w zamiennikow
"",0,,"Porz|adek po kodach wynikowych"
"Z",1,,"Porz|adek po kodach |xr|od|lowych"
//
% 214.DIC # slownik zawierajacy formaty pliku i standardy polskich liter
"",0,,"Format pliku - PERSEUS; polskie litery - brak"
"P",10,,"Format pliku - PERSEUS; polskie litery - brak"
"PP",11,,"Format pliku - PERSEUS; polskie litery - PERSEUS"
"PM",12,,"Format pliku - PERSEUS; polskie litery - MAZOVIA"
"PL",13,,"Format pliku - PERSEUS; polskie litery - LATIN2"
"PI",14,,"Format pliku - PERSEUS; polskie litery - ISO-LATIN2"
"PU",15,,"Format pliku - PERSEUS; polskie litery - UTF-8"
"T",20,,"Format pliku - ASCII; polskie litery - brak"
"TP",21,,"Format pliku - ASCII; polskie litery - PERSEUS"
"TM",22,,"Format pliku - ASCII; polskie litery - MAZOVIA"
"TL",23,,"Format pliku - ASCII; polskie litery - LATIN2"
"TI",24,,"Format pliku - ASCII; polskie litery - ISO-LATIN2"
"TU",25,,"Format pliku - ASCII; polskie litery - UTF-8"
"D",30,,"Format pliku - Dbase; polskie litery - brak"
"DP",31,,"Format pliku - Dbase; polskie litery - PERSEUS"
"DM",32,,"Format pliku - Dbase; polskie litery - MAZOVIA"
"DL",33,,"Format pliku - Dbase; polskie litery - LATIN2"
"DI",34,,"Format pliku - Dbase; polskie litery - ISO-LATIN2"
"DU",35,,"Format pliku - Dbase; polskie litery - UTF-8"
"H",40,,"Format pliku - PERS; polskie litery - brak"
"HP",41,,"Format pliku - PERS; polskie litery - PERSEUS"
"HM",42,,"Format pliku - PERS; polskie litery - MAZOVIA"
"HL",43,,"Format pliku - PERS; polskie litery - LATIN2"
"HI",44,,"Format pliku - PERS; polskie litery - ISO-LATIN2"
"HU",45,,"Format pliku - PERS; polskie litery - UTF-8"
"W",90,,"Format ASCII - sep.w|lasny; polskie litery - brak"
"WP",91,,"Format ASCII - sep. w|lasny; polskie litery - PERSEUS"
"WM",92,,"Format ASCII - sep.w|lasny; polskie litery - MAZOVIA"
"WL",93,,"Format ASCII - sep.w|lasny; polskie litery - LATIN2"
"WI",94,,"Format ASCII - sep.w|lasny; polskie litery - ISO-LATIN2"
"WU",95,,"Format ASCII - sep.w|lasny; polskie litery - UTF-8"
//
% 215.DIC # sposob automatycznego zakladania kont z atrybutem - dewizowe
"",0,,"Wymaga suffix'a waluty w definicji BAZA"
"D",1,,"Nowe konto przymuje atrybut nadrz|ednego konta "
//
% 216.DIC # slownik do zmiany stron w linii zapisu na przeciwne
"",0,,"kwota w zapisie bez zmiany znaku"
"D",1,,"kwota w zapisie zawsze dodatnia"
"U",2,,"kwota w zapisie zawsze ujemna"
//
///% 217.DIC # sposob wczytywania danych zrodlowych
///"",0,," - Wczytywanie danych bezpo|srednio z pliku |zr|od|lowego"
///"T",1,,"ASCII - Wczytywanie danych |xr|od|lowych zgodnie z definicj|a"
///"D",2,,"DBASE - Wczytywanie danych |xr|od|lowych zgodnie z definicj|a"
//
% 217.DIC # seperator wlasny w pliku ASCII
"Å",0,,"Seperator p|ol rekordu - znak 'Å'"
"º",1,,"Seperator p|ol rekordu - znak 'º'"
"³",2,,"Seperator p|ol rekordu - znak '³'"
//"´",3,,"Seperator p|ol rekordu - znak '´'"
"¹",3,,"Seperator p|ol rekordu - znak '¹'"
"Î",4,,"Seperator p|ol rekordu - znak 'Î'"
";",5,,"Seperator p|ol rekordu - znak ';'"
"|",6,,"Seperator p|ol rekordu - znak '|'"
"Ò",7,,"Seperator p|ol rekordu - znak 'Ò'"
//
% 219.DIC # slownik dla metody rejestracji zapisow kont rodzajowych
"",0,,"Zapisy kont rodzajowych b|e|a zebrane w jeden zapis"
"N",1,,"Dla ka|zdego zapisu konta rodzajowego odr|ebny zapis"
//
// ==========================================================================
// ===== DEFINICJE REJESTROW
//=====================================================
// rejestr WYBOR_SLOW       #TMP do wyboru slownikow z ptaszkiem
//=====================================================
//----------------------------------------
% WYBOR_SLOW.RXR    
//---------------------------
1
1
WYBOR_SLOW
"WYBOR_SLOW"
"ZAZNACZAJ-MENU:120"
//---------------------------
% WYBOR_SLOW.DBF		
0,log,,,,,D             # plik z pustymi miejscami
1,string,12,,1	        # ws_sym - nazwa rejestru ze slownikiem
2,string,40,	        # ws_opis - opis rejestru ze slownikiem
120,log,,,2		# ws_ptaszek; ind2
//
//---------------------------
% WYBOR_SLOW.DIC
//---------------------------
"ws_sym",1,Estring
"ws_opis",2,Estring
"ws_ptaszek",120,Elog
//---------------------------
% WYBOR_SLOW.MEN
//---------------------------
D=73,"Wyb|or s|lownik|ow do kopiowania"
2,,,,
//---------------------------
% WYBOR_SLOW.BUT        #lista przyciskow opcji 
//---------------------------
//napis, identyfikator, tryb
//tryb 0 - wybor, koniec
"%W%yb|or ",1,0
@4,3,0  #rezygnujesz
//
//=====================================================
//WYBOR_SLOW-MENU okienka menu_na_rekordy dla roznych trybow rejestr WYBOR_SLOW
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
% WYBOR_SLOW-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wyb|or s|lownik|ow do kopiowania"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,TLD,0,,"Zaznacz s|lownik",,&&lwhite/blue

//
% WYBOR_SLOW_MENU_GORNE-KONIEC.XXX
*15,"%Z%aznacz wszystkie"
*16,"%O%dznacz wszystkie"
//
//---------------------------
% WYBOR_SLOW-MENU-0.DLG
//wybor wartosci
PRZYCISK_CANCELID = 3
%< WYBOR_SLOW-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:WYBOR_SLOW_MENU_GORNE-0                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//
% WYBOR_SLOW_MENU_GORNE-0                          
P =3,,AD
*1,"%W%yb|or"
*3,@4
%< WYBOR_SLOW_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-WYBOR_SLOW-MENU-0
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",WYBOR_SLOW-MENU_PRZED_WYSW
  "AKCJA-BUTTON15",WYBOR_SLOW-MENU_ZAZNACZ
  "AKCJA-BUTTON16",WYBOR_SLOW-MENU_ODZNACZ
//
% WYBOR_SLOW-MENU_PRZED_WYSW.ALG
//ustawienie parametrow menu_na_rekordy
  ExDialogOp["UstawMenuParam","100:WYBOR_SLOW,,KLUCZ,1"]
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% WYBOR_SLOW-MENU_ZAZNACZ.ALG
//zaznacz wszytkie slowniki do kopiowania
  RejOp["WezPierwszyRek",""]
next:
  RejWstawP_L["ws_ptaszek",.T.]
  if (RejOp["WezNastepnyRek",""]) goto next
  ExDialogOp["WyswietlPozycje","100"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
//
% WYBOR_SLOW-MENU_ODZNACZ.ALG
//odznacz wszytkie slowniki do kopiowania
  RejOp["WezPierwszyRek",""]
next:
  RejWstawP_L["ws_ptaszek",.N.]
  if (RejOp["WezNastepnyRek",""]) goto next
  ExDialogOp["WyswietlPozycje","100"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
//
//=====================================================
//KONIEC WYBOR_SLOW-MENU
//=====================================================
//
//=====================================================
// rejestr WYBOR_SLOW          KONIEC
//=====================================================
//
//=====================================================
// rejestr WYBOR_PK       #TMP do wyboru PK z ptaszkiem
//=====================================================
//----------------------------------------
% WYBOR_PK.RXR    
//---------------------------
1
1
WYBOR_PK
"WYBOR_PK"
"ZAZNACZAJ-MENU:120"
//---------------------------
% WYBOR_PK.DBF		
0,log,,,,,D             # plik z pustymi miejscami
1,string,8,2,1,,N       # wpk_sym symbol polecenia ksiegowania(unikalny)
2,string,50             # wpk_opis Nazwa polecenia ksiegowania
3,string,20             # wpk_kat katalog dla polecenia ksiegowania
120,log,,,2		# wpk_ptaszek; ind2
//
//---------------------------
% WYBOR_PK.DIC
//---------------------------
"wpk_sym",1,Estring
"wpk_opis",2,Estring
"wpk_kat",3,Estring
"wpk_ptaszek",120,Elog
//---------------------------
% WYBOR_PK.MEN
//---------------------------
D=73,"Wyb|or docelowych polece|n ksi|egowania"
1,,,,
2,,,,
//---------------------------
% WYBOR_PK.BUT        #lista przyciskow opcji 
//---------------------------
//napis, identyfikator, tryb
//tryb 0 - wybor, koniec
"%W%yb|or ",1,0
@4,3,0  #rezygnujesz
//
//=====================================================
//WYBOR_PK-MENU okienka menu_na_rekordy dla roznych trybow rejestr WYBOR_PK
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
% WYBOR_PK-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wyb|or polece|n ksi|egowania do kopiowania"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,TLD,0,,"Zaznacz polecenie ksi|egowania",,&&lwhite/blue

//
% WYBOR_PK_MENU_GORNE-KONIEC.XXX
*15,"%Z%aznacz wszystkie"
*16,"%O%dznacz wszystkie"
//
//---------------------------
% WYBOR_PK-MENU-0.DLG
//wybor wartosci
PRZYCISK_CANCELID = 3
%< WYBOR_PK-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:WYBOR_PK_MENU_GORNE-0                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//
% WYBOR_PK_MENU_GORNE-0                          
P =3,,AD
*1,"%W%yb|or"
*3,@4
%< WYBOR_PK_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-WYBOR_PK-MENU-0
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",WYBOR_PK-MENU_PRZED_WYSW
  "AKCJA-BUTTON15",WYBOR_PK-MENU_ZAZNACZ
  "AKCJA-BUTTON16",WYBOR_PK-MENU_ODZNACZ
//
% WYBOR_PK-MENU_PRZED_WYSW.ALG
//ustawienie parametrow menu_na_rekordy
  ExDialogOp["UstawMenuParam","100:WYBOR_PK,,KLUCZ,1"]
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% WYBOR_PK-MENU_ZAZNACZ.ALG
//zaznacz wszytkie slowniki do kopiowania
  RejOp["WezPierwszyRek",""]
next:
  RejWstawP_L["wpk_ptaszek",.T.]
  if (RejOp["WezNastepnyRek",""]) goto next
  ExDialogOp["WyswietlPozycje","100"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
//
% WYBOR_PK-MENU_ODZNACZ.ALG
//odznacz wszytkie slowniki do kopiowania
  RejOp["WezPierwszyRek",""]
next:
  RejWstawP_L["wpk_ptaszek",.N.]
  if (RejOp["WezNastepnyRek",""]) goto next
  ExDialogOp["WyswietlPozycje","100"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
//
//=====================================================
//KONIEC WYBOR_PK-MENU
//=====================================================
//
//=====================================================
// rejestr WYBOR_PK          KONIEC
//=====================================================
//
//=====================================================
// rejestr WYBOR_INFO       #TMP do zapisywania info o przebiegu kopiowania aslownikow
//=====================================================
//----------------------------------------
% WYBOR_INFO.RXR    
//---------------------------
1
1
"WYBOR_INFO"
"WYBOR_INFO"
// --------------------------------------------
% WYBOR_INFO.DBF # struktura rekordu
0,log,,,,,D             # usuwanie "w miejscu"
1,string,12,,1	        # wi_sym - nazwa rejestru ze slownikiem
2,string,40,	        # wi_opis - opis rejestru ze slownikiem
3,string,8,2,,,         # wi_pk_zrod symbol pk zrodlowego
4,string,8,2,,,         # wi_pk_doc symbol pk docelowego
5,string,8,,,,          # wi_status status: OK/BLAD
6,string,80,,,,         # wi_blad - opis bladu lub inny komunikat
7,ulong,,,,,            # wi_dod ilosc dodanych rekordow w docelowym
8,ulong,,,,,            # wi_mod ilosc modyfikowanych rekordow w docelowym
// --------------------------------------------
% WYBOR_INFO.DIC # slownik pol rekordu
"wi_sym",1,Estring
"wi_opis",2,Estring
"wi_pk_zrod",3,Estring
"wi_pk_doc",4,Estring
"wi_status",5,Estring
"wi_blad",6,Estring
"wi_dod",7,Ekwota
"wi_mod",8,Ekwota
// --------------------------------------------
% WYBOR_INFO.BOX # okienko do wprowadzania i modyfikacji danych
D = "Informacje szczeg|o|lowe"
"Kopiowany s|lownik:",2
"Polecenie |xr|od|lowe:",3
"Polecenie docelowe:",4
"Status:",5
"Informacje dodatkowe:",6,A
"Dopisano rekord|ow:",7
"Zmodyfikowano rekord|ow:",8
// --------------------------------------------
% WYBOR_INFO.BUT # "buttony" do rejestru 
// Ogladanie statusu (z modyfikacja)
"%O%pis",4,1   # modyfikacja
//"S|lownik:@            ",7,1
@5,0,1               # Koniec
// --------------------------------------------
% WYBOR_INFO.MEN # menu z rubrykami
D = 73,"Komunikaty z przebiegu kopiowania"
LINIA-DIALOG = WYBOR_INFO-EDYCJA,"Kolumny dla WYBOR_INFO"
2,,,,30,"Kopiowany s|lownik"
3,,,,11,"Polecenie |xr|od|lowe"
4,,,,11,"Polecenie docelowe"
5,,,,,"Status" 
% WYBOR_INFO-EDYCJA.DIC  
"WYBOR_INFO",0
//
//=====================================================
//WYBOR_INFO-MENU-? okienka menu_na_rekordy rejestr WYBOR_INFO
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
//**********************************P************************
% WYBOR_INFO-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:WYBOR_INFO_MENU_DEF
%< WYBOR_INFO-MENU-DEF.XXX
//
% WYBOR_INFO-MENU-1.GUI32.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< WYBOR_INFO-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:WYBOR_INFO_MENU_GORNE-1                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//
//**************************************K***************************************
% WYBOR_INFO-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Komunikaty z przebiegu kopiowania"
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,TLD,0,,"S|lownik                        PK |xr|od|lowe PK docelowe Status",,&&lwhite/blue

//
% WYBOR_INFO_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
//
//---------------------------
% WYBOR_INFO-MENU-1.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< WYBOR_INFO-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:WYBOR_INFO_MENU_GORNE-1                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//
% WYBOR_INFO_MENU_GORNE-1                          
P =3,,AD
*0,@5
%< WYBOR_INFO_MENU_GORNE-SRODEK.XXX
//
//---------------------------
% TABLICA-AKCJI-WYBOR_INFO-MENU-1
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",WYBOR_INFO-MENU_PRZED_WYSW
//
% WYBOR_INFO-MENU_PRZED_WYSW.ALG
//ustawienie parametrow menu_na_rekordy
  ExDialogOp["UstawMenuParam","100:WYBOR_INFO,,KLUCZ,1"]
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
//=====================================================
//KONIEC WYBOR_INFO-MENU-?
//=====================================================
//=====================================================
//WYBOR_INFO-REKORD-?
//=====================================================
//
//*****************************P**********************************
% WYBOR_INFO-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Informacje szczeg|o|lowe"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:WYBOR_INFO
//
% WYBOR_INFO-REKORD-2.GUI32.DLG
//pokaz
RESORS = dll\int.dll:WYBOR_INFO_REKORD_P
PRZYCISK_CANCELID = 3
%<WYBOR_INFO-REKORD.GUI32.XXX

  #100                                                      
                                                                 #3        #
                                                             #100


//*****************************************************************************************
% WYBOR_INFO-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Informacje szczeg|o|lowe"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:WYBOR_INFO
//
% WYBOR_INFO-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<WYBOR_INFO-REKORD.XXX

  #100                                                      
                                                                 #3        #
                                                             #100
// ------------------------------------------------------------------
% TABLICA-AKCJI-WYBOR_INFO-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",WYBOR_INFO-REKORD-2_PRZED_WYSW
//
% WYBOR_INFO-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","1"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
//=====================================================
//KONIEC WYBOR_INFO-REKORD-?
//=====================================================
//
//=====================================================
// KONIEC rejestr WYBOR_INFO
//=====================================================
//
// ===== rejestry do wczytywania danych zrodlowych ASCII
% INT_TXT1.RXR,INT_TXT2.RXR,INT_TXT3.RXR,INT_TXT4.RXR,INT_TXT5.RXR,INT_TXT6.RXR,INT_TXT7.RXR,INT_TXT8.RXR,INT_TXT9.RXR,INT_TXT1.RJR,INT_TXT2.RJR,INT_TXT3.RJR,INT_TXT4.RJR,INT_TXT5.RJR,INT_TXT6.RJR,INT_TXT7.RJR,INT_TXT8.RJR,INT_TXT9.RJR
100
0
"INT_TXT1"
"INT_TXT1"

"Powt|orzony symbol rekordu !"
"Zmieniasz symbol rekordu ?"
"Czy doda|c ten rekord ?"
"Czy usun|a|c ten rekord ?"
"Czy doda|c nast|epny rekord ?"
"Rekord o podanym symbolu nie istnieje !$Czy doda|c ten rekord ?"
"Nie ma |zadnych rekord|ow !"
"Tablica rekord|ow |xr|od|lowych jest pusta !$Wprowadzasz pierwszy rekord ?"
"Nie ma rekordu o podanym symbolu.$Znale|x|c nast|epny ?"
"%s - nie ma takiego rekordu !"
INT_TXT1-WARUNEK
// --------------------------------------------
% INT_TXT1.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,100           # pole nr 00
101,string,100,,1         # pole nr 01 indkes nr 1
102,string,100            # pole nr 02
103,string,100            # pole nr 03
104,string,100            # pole nr 04
105,string,100            # pole nr 05
106,string,100            # pole nr 06
107,string,100            # pole nr 07
108,string,100            # pole nr 08
109,string,100            # pole nr 09
110,string,100            # pole nr 10
111,string,100            # pole nr 11
112,string,100            # pole nr 12
113,string,100            # pole nr 13
114,string,100            # pole nr 14
115,string,100            # pole nr 15
116,string,100            # pole nr 16
117,string,100            # pole nr 17
118,string,100            # pole nr 18
119,string,100            # pole nr 19
120,string,100            # pole nr 20
121,string,100            # pole nr 21
122,string,100            # pole nr 22
123,string,100            # pole nr 23
124,string,100            # pole nr 24
125,string,100            # pole nr 25
126,string,100            # pole nr 26
127,string,100            # pole nr 27
128,string,100            # pole nr 28
129,string,100            # pole nr 29
130,string,100            # pole nr 30
131,string,100            # pole nr 31
132,string,100            # pole nr 32
133,string,100            # pole nr 33
134,string,100            # pole nr 34
135,string,100            # pole nr 35
136,string,100            # pole nr 36
137,string,100            # pole nr 37
138,string,100            # pole nr 38
139,string,100            # pole nr 39
140,string,100            # pole nr 40
141,string,100            # pole nr 41
142,string,100            # pole nr 42
143,string,100            # pole nr 43
144,string,100            # pole nr 44
145,string,100            # pole nr 45
146,string,100            # pole nr 46
147,string,100            # pole nr 47
148,string,100            # pole nr 48
149,string,100            # pole nr 49
150,string,100            # pole nr 50
151,string,100            # pole nr 51
152,string,100            # pole nr 52
153,string,100            # pole nr 53
154,string,100            # pole nr 54
155,string,100            # pole nr 55
156,string,100            # pole nr 56
157,string,100            # pole nr 57
158,string,100            # pole nr 58
159,string,100            # pole nr 59
// --------------------------------------------
% INT_TXT1.DIC # slownik pol rekordu
"P00",100,Estring,"Pole nr 00"
"P01",101,Estring,"Pole nr 01"
"P02",102,Estring,"Pole nr 02"
"P03",103,Estring,"Pole nr 03"
"P04",104,Estring,"Pole nr 04"
"P05",105,Estring,"Pole nr 05"
"P06",106,Estring,"Pole nr 06"
"P07",107,Estring,"Pole nr 07"
"P08",108,Estring,"Pole nr 08"
"P09",109,Estring,"Pole nr 09"
"P10",110,Estring,"Pole nr 10"
"P11",111,Estring,"Pole nr 11"
"P12",112,Estring,"Pole nr 12"
"P13",113,Estring,"Pole nr 13"
"P14",114,Estring,"Pole nr 14"
"P15",115,Estring,"Pole nr 15"
"P16",116,Estring,"Pole nr 16"
"P17",117,Estring,"Pole nr 17"
"P18",118,Estring,"Pole nr 18"
"P19",119,Estring,"Pole nr 19"
"P20",120,Estring,"Pole nr 20"
"P21",121,Estring,"Pole nr 21"
"P22",122,Estring,"Pole nr 22"
"P23",123,Estring,"Pole nr 23"
"P24",124,Estring,"Pole nr 24"
"P25",125,Estring,"Pole nr 25"
"P26",126,Estring,"Pole nr 26"
"P27",127,Estring,"Pole nr 27"
"P28",128,Estring,"Pole nr 28"
"P29",129,Estring,"Pole nr 29"
"P30",130,Estring,"Pole nr 30"
"P31",131,Estring,"Pole nr 31"
"P32",132,Estring,"Pole nr 32"
"P33",133,Estring,"Pole nr 33"
"P34",134,Estring,"Pole nr 34"
"P35",135,Estring,"Pole nr 35"
"P36",136,Estring,"Pole nr 36"
"P37",137,Estring,"Pole nr 37"
"P38",138,Estring,"Pole nr 38"
"P39",139,Estring,"Pole nr 39"
"P40",140,Estring,"Pole nr 40"
"P41",141,Estring,"Pole nr 41"
"P42",142,Estring,"Pole nr 42"
"P43",143,Estring,"Pole nr 43"
"P44",144,Estring,"Pole nr 44"
"P45",145,Estring,"Pole nr 45"
"P46",146,Estring,"Pole nr 46"
"P47",147,Estring,"Pole nr 47"
"P48",148,Estring,"Pole nr 48"
"P49",149,Estring,"Pole nr 49"
"P50",150,Estring,"Pole nr 50"
"P51",151,Estring,"Pole nr 51"
"P52",152,Estring,"Pole nr 52"
"P53",153,Estring,"Pole nr 53"
"P54",154,Estring,"Pole nr 54"
"P55",155,Estring,"Pole nr 55"
"P56",156,Estring,"Pole nr 56"
"P57",157,Estring,"Pole nr 57"
"P58",158,Estring,"Pole nr 58"
"P59",159,Estring,"Pole nr 59"
// -------------------------------------------
% INT_TXT1.BOX # okienko do wprowadzania i modyfikacji danych
D = "Rejestr z danymi |xr|od|lowymi ASCII"
"Pole 00:",100,A
"Pole 01:",101,A
"Pole 02:",102,A
"Pole 03:",103,A
"Pole 04:",104,A
"Pole 05:",105,A
"Pole 06:",106,A
"Pole 07:",107,A
"Pole 08:",108,A
"Pole 09:",109,A
"Pole 10:",110,A
"Pole 11:",111,A
"Pole 12:",112,A
"Pole 13:",113,A
"Pole 14:",114,A
"Pole 15:",115,A
"Pole 16:",116,A
"Pole 17:",117,A
"Pole 18:",118,A
"Pole 19:",119,A
"Pole 20:",120,A
"Pole 21:",121,A
"Pole 22:",122,A
"Pole 23:",123,A
"Pole 24:",124,A
"Pole 25:",125,A
"Pole 26:",126,A
"Pole 27:",127,A
"Pole 28:",128,A
"Pole 29:",129,A
"Pole 30:",130,A
"Pole 31:",131,A
"Pole 32:",132,A
"Pole 33:",133,A
"Pole 34:",134,A
"Pole 35:",135,A
"Pole 36:",136,A
"Pole 37:",137,A
"Pole 38:",138,A
"Pole 39:",139,A
"Pole 40:",140,A
"Pole 41:",141,A
"Pole 42:",142,A
"Pole 43:",143,A
"Pole 44:",144,A
"Pole 45:",145,A
"Pole 46:",146,A
"Pole 47:",147,A
"Pole 48:",148,A
"Pole 49:",149,A
"Pole 50:",150,A
"Pole 51:",151,A
"Pole 52:",152,A
"Pole 53:",153,A
"Pole 54:",154,A
"Pole 55:",155,A
"Pole 56:",156,A
"Pole 57:",157,A
"Pole 58:",158,A
"Pole 59:",159,A
// --------------------------------------------
% INT_TXT1-WARUNEK.DIC
"Pole 00:",100
"Pole 01:",101
"Pole 02:",102
"Pole 03:",103
"Pole 04:",104
"Pole 05:",105
"Pole 06:",106
"Pole 07:",107
"Pole 08:",108
"Pole 09:",109
// --------------------------------------------
% INT_TXT1.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (P00 = "") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_TXT1.BUT # "buttony" do rejestru 
// Ogladanie rekordu (z modyfikacja)
"%D%odanie rekordu",5,1
"%U%suni|ecie rekordu",6,1
"%M%odyfikacja rekordu",4,1   # modyfikacja
//"Rekord: @        ",7,1
@5,0,1               # Koniec
// --------------------------------------------
% INT_TXT1-WYBIERZ.DIC
"INT_TXT1",0
% REJESTR-TXT1-EDYCJA.DIC
"INT_TXT1",0


// --------------------------------------------
% INT_TXT1.MEN # menu z rubrykami
//D = 73,"Tablica z danymi |zr|od|lowymi ASCII",AB
D = 73,"",AB
//LINIA-DIALOG = "INT_TXT1-WYBIERZ","Kolumny  do wyboru"  
LINIA-DIALOG = REJESTR-TXT1-EDYCJA,"Kolumny  do wyboru"  
100,,,,9,"Pole 00"   
101,,,,9,"Pole 01"  
102,,,,9,"Pole 02"  
103,,,,9,"Pole 03"
104,,,,10,"Pole 04"
105,,,,10,"Pole 05"
106,,,,10,"Pole 06"
//
//=====================================================
//INT_TXT1-MENU-? okienka menu_na_rekordy dla roznych trybow rejestrow INT_TXT1-9
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
//******************************P***************************
% INT_TXT1-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:INT_TXT1_MENU_DEF
%< INT_TXT1-MENU-DEF.XXX
//
% INT_TXT1-MENU-1.GUI32.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_TXT1-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_TXT1_MENU_GORNE-0                     
#101                                                                      #101
#102
                                                                         #102<
 #100                                                                   #




//*****************************K***************************
% INT_TXT1-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Tablica z danymi |xr|od|lowymi"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,TLD,0,,"Pole 00   Pole 01   Pole 02   Pole 03   Pole 04    Pole 05    Pole 06",,&&lwhite/blue
//
% INT_TXT1_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
//*501,"Operacje"
*4,"Z%m%ie|n"
*5,"%D%odaj"
*6,"%U%su|n"
//
% INT_TXT1_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"Rekord"
9,"%N%ast|epny rekord"
10,"%F%iltr"
//
//---------------------------
% INT_TXT1-MENU-1.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_TXT1-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_TXT1_MENU_GORNE-0                     
#101                                                                      #101
#102
                                                                         #102<
 #100                                                                   #

//
% INT_TXT1_MENU_GORNE-0                          
P =3,,AD
*0,@5
%< INT_TXT1_MENU_GORNE-SRODEK.XXX
%< INT_TXT1_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-INT_TXT1-MENU-1
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_TXT1-MENU_PRZED_WYSW
//
% INT_TXT1-MENU_PRZED_WYSW.ALG
//ustawienie parametrow menu_na_rekordy
  ExDialogOp["UstawMenuParam","100:INT_TXT1,,,"]
//ustaw naglowek okna
//  ExDialogOp["ZmienNaglowek","Tablica z danymi |xr|od|lowymi (plik "+nr_txt+")"] 
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
//=====================================================
//KONIEC INT_TXT1-MENU-? okienka menu_na_rekordy dla roznych trybow rejestrow INT_TXT1-9
//=====================================================
//
//=====================================================
//INT_TXT1-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
//********************************P********************
% INT_TXT1-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane rekordu"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_TXT1
//
% INT_TXT1-REKORD-1.GUI32.DLG
RESORS = dll\int.dll:INT_TXT1_REKORD1
//dodaj
PRZYCISK_CANCELID = 2
%< INT_TXT1-REKORD-0.GUI32.DLG
//
% INT_TXT1-REKORD-0.GUI32.DLG
RESORS = dll\int.dll:INT_TXT1_REKORD1
//zmien
PRZYCISK_CANCELID = 2
%<INT_TXT1-REKORD.GUI32.XXX

  #100                                                      #1            #
                                                            #2            #
                                                        #100
// ------------------------------------------------------------------
% INT_TXT1-REKORD-2.GUI32.DLG
//pokaz
RESORS = dll\int.dll:INT_TXT1_REKORD1_P
PRZYCISK_CANCELID = 3
%<INT_TXT1-REKORD.GUI32.XXX

  #100                                                      
                                                                 #3        #
                                                             #100
// ------------------------------------------------------------------
//********************************K*******************
% INT_TXT1-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane rekordu"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_TXT1
//
% INT_TXT1-REKORD-1.DLG
//dodaj
PRZYCISK_CANCELID = 2
%< INT_TXT1-REKORD-0.DLG
//
% INT_TXT1-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_TXT1-REKORD.XXX

  #100                                                      #1            #
                                                            #2            #
                                                        #100
// ------------------------------------------------------------------
% INT_TXT1-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_TXT1-REKORD.XXX

  #100                                                      
                                                                 #3        #
                                                             #100
// ------------------------------------------------------------------
% TABLICA-AKCJI-INT_TXT1-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_TXT1-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_TXT1-REKORD_AKCEPTUJESZ
//
% INT_TXT1-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","100"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","*"]
  ExitAlg[0]
//
// ------------------------------
% TABLICA-AKCJI-INT_TXT1-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_TXT1-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_TXT1-REKORD_AKCEPTUJESZ
//
// ------------------------------
% TABLICA-AKCJI-INT_TXT1-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_TXT1-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_TXT1-REKORD_AKCEPTUJESZ
//
% INT_TXT1-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","1"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_TXT1-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["p00"] = "")) goto koniec
  OkAlert["Wprowad|x pole nr 00!"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_TXT1-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
// ==============================================================
// ===== rejestr z definicjami pol w rekordzie zrodlowym
% INT_IMPD.RXR # inicjalizacja rejestru
101
1
"INT_IMPD"
"INT_IMPD"

"Powt|orzony symbol definicji pola !"
"Zmieniasz definicj|e pola ?"
"Czy doda|c definicj|e tego pola ?"
"Czy usun|a|c definicj|e tego pola ?"
"Czy doda|c definicj|e nast|epnego pola ?"
"Definicja pola o podanym symbolu nie istnieje !$Czy doda|c definicj|e tego pola ?"
"Nie ma definicji definicji |zadnych p|ol !"
"Rejestr jest pusty !$Wprowadzasz definicj|e pierwszego pola ?"
"Nie ma definicji pola o podanym symbolu.$Znale|x|c nast|epn|a ?"
"%s - nie ma takiej definicji!"
INT_IMPD-WARUNEK
// --------------------------------------------
% INT_IMPD.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,4,2,1,,N      # symbol definicji pola
101,string,40            # nazwa pola
102,xkwota,,0            # poczatek pola
// --------------------------------------------
% INT_IMPD.DIC # slownik pol rekordu
"IMPD_kod",100,Estring   # symbol definicji pola
"IMPD_naz",101,Estring   # nazwa pola
"IMPD_poc",102,Ekwota    # poczatek pola
// -------------------------------------------
% INT_IMPD.BOX # okienko do wprowadzania i modyfikacji danych
D = "S|lownik definicji p|ol rekordu"
"Numer pola:",100
"",,T
"Numer kolumny pocz|atkowej:",102,A
"",,T
"Opis pola:",101,A
// --------------------------------------------
% INT_IMPD-WARUNEK.DIC
"Numer pola:",100
"Numer kolumny pocz|atkowej:",102
"Opis pola:",101
// --------------------------------------------
% INT_IMPD.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (IMPD_kod = "") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_IMPD.BUT # "buttony" do rejestru 
// Ogladanie definicji pola (z modyfikacja)
///"%D%odanie def. pola",5,1
"%M%odyfikacja def. pola",4,1   # modyfikacja
///"%U%suni|ecie def. pola",6,1
"Pole: @        ",7,1
@5,0,1               # Koniec
// --------------------------------------------
% INT_IMPD.MEN # menu z rubrykami
D = 73,"Rejestr definicji p|ol rekordu"
100,,,,10   # numer pola
102,,,,8   # kolumna
101        # opis pola
//
//=====================================================
//INT_IMPD-MENU-? okienka menu_na_rekordy dla roznych trybow INT_IMPD
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji 
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
% INT_IMPD-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
//buttony z zakresu 50-59 - nistandardowa obsluga standardowych buttonow
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Tablica definicji p|ol rekordu"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,TLD,0,,"Numer pola Kolumna  Opis pola",,&&lwhite/blue

//
% INT_IMPD_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
*4,"Z%m%ie|n"
//
% INT_IMPD_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"Pole"
9,"%N%ast|epne pole"
10,"%F%iltr"
//
//---------------------------
% INT_IMPD-MENU-2.DLG
//modyfikacja,dodawanie, bez filtra
PRZYCISK_CANCELID = 0
%< INT_IMPD-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_IMPD_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//
% INT_IMPD_MENU_GORNE-2                          
P =3,,AD
*0,@5
%< INT_IMPD_MENU_GORNE-SRODEK.XXX
%< INT_IMPD_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-INT_IMPD-MENU-2
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_IMPD_MENU_2_PRZED_WYSW
//
% INT_IMPD_MENU_2_PRZED_WYSW.ALG
  ExDialogOp["UstawMenuParam","100:INT_IMPD,,KLUCZ,1"]
//ustaw naglowek okna 
//  ExDialogOp["ZmienNaglowek","Definicje p|ol rekordu |xr|od|lowego dla polecenia "+naz_int]
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
//=====================================================
//INT_IMPD-REKORD-? okienka z rekordem dla roznych trybow 
// ==============================================================
//
% INT_IMPD-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Definicja pola rekordu |xr|od|lowego"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_IMPD
//
% INT_IMPD-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_IMPD-REKORD.XXX

  #100                                                      #1            #
                                                            #2            #
                                                        #100
// ------------------------------------------------------------------
% INT_IMPD-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_IMPD-REKORD.XXX

  #100                                                      
                                                                 #3        #
                                                             #100
// ------------------------------------------------------------------
% TABLICA-AKCJI-INT_IMPD-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_IMPD-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_IMPD-REKORD_AKCEPTUJESZ
//
% INT_IMPD-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","100"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","*"]
  ExitAlg[0]
//
// ------------------------------
% TABLICA-AKCJI-INT_IMPD-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_IMPD-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_IMPD-REKORD_AKCEPTUJESZ
//
// ------------------------------
% TABLICA-AKCJI-INT_IMPD-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_IMPD-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_IMPD-REKORD_AKCEPTUJESZ
//
% INT_IMPD-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","1"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_IMPD-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["impd_kod"] = "")) goto koniec
  OkAlert["Wprowad|x numer pola!"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_IMPD-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
// ==============================================================
// ===== rejestr z wykazem dekretow
% INT_DEKR.RXR,INT_DEKR.RJR # inicjalizacja rejestru
100
1
"INT_DEKR"
#
#
"Powt|orzony symbol polecenia$lub nazwa podkatalogu polecenia !"
"Zmieniasz dane polecenia ?"
"Czy doda|c to polecenie ?"
"Czy usun|a|c to polecenie ?"
"Czy doda|c nast|epne polecenie ?"
"Polecenie o podanym symbolu nie istnieje !$Czy doda|c to polecenie ?"
"Nie ma |zadnych polece|n !"
"Tablica polece|n ksi|egowych jest pusta !$Wprowadzasz pierwsze polecenie ?"
"Nie ma polecenia o podanym symbolu.$Znale|x|c nast|epne ?"
"%s - nie ma takiego polecenia ksi|egowania !"
INT_DEKR-WARUNEK
// --------------------------------------------
% INT_DEKR.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string, 8,2,1,,N     # symbol polecenia ksiegowania (unikalny)
101,string,50            # Nazwa polecenia ksiegowania
102,string, 8,2,2,,N     # nazwa podkatalogu dyskowego (musi byc unikalna)
103,string, 8            # nazwa algorytmu (.CNV)
104,string, 8,2,,,       # nazwa programu (katalogu polecenia)(nie musi byc unikalna)
111,string,80            # nazwa i lokalizacja pliku zrodlowego ASCII nr 1
112,string,80            # nazwa i lokalizacja pliku zrodlowego ASCII nr 2
113,string,80            # nazwa i lokalizacja pliku zrodlowego ASCII nr 3
114,string,80            # nazwa i lokalizacja pliku zrodlowego ASCII nr 4
115,string,80            # nazwa i lokalizacja pliku zrodlowego ASCII nr 5
116,string,80            # nazwa i lokalizacja pliku zrodlowego ASCII nr 6
117,string,80            # nazwa i lokalizacja pliku zrodlowego ASCII nr 7
118,string,80            # nazwa i lokalizacja pliku zrodlowego ASCII nr 8
119,string,80            # nazwa i lokalizacja pliku zrodlowego ASCII nr 9
121,dic,,214             # sposob wczytywania pliku zrodlowego ASCII nr 1
122,dic,,214             # sposob wczytywania pliku zrodlowego ASCII nr 2
123,dic,,214             # sposob wczytywania pliku zrodlowego ASCII nr 3
124,dic,,214             # sposob wczytywania pliku zrodlowego ASCII nr 4
125,dic,,214             # sposob wczytywania pliku zrodlowego ASCII nr 5
126,dic,,214             # sposob wczytywania pliku zrodlowego ASCII nr 6
127,dic,,214             # sposob wczytywania pliku zrodlowego ASCII nr 7
128,dic,,214             # sposob wczytywania pliku zrodlowego ASCII nr 8
129,dic,,214             # sposob wczytywania pliku zrodlowego ASCII nr 9
141,dic,,218             # format pliku zrodlowego nr 1
142,dic,,218             # format pliku zrodlowego nr 2
143,dic,,218             # format pliku zrodlowego nr 3
144,dic,,218             # format pliku zrodlowego nr 4
145,dic,,218             # format pliku zrodlowego nr 5
146,dic,,218             # format pliku zrodlowego nr 6
147,dic,,218             # format pliku zrodlowego nr 7
148,dic,,218             # format pliku zrodlowego nr 8
149,dic,,218             # format pliku zrodlowego nr 9
151,dic,,90              # polskie litery dla pliku zrodlowego nr 1
152,dic,,90              # polskie litery dla pliku zrodlowego nr 2
153,dic,,90              # polskie litery dla pliku zrodlowego nr 3
154,dic,,90              # polskie litery dla pliku zrodlowego nr 4
155,dic,,90              # polskie litery dla pliku zrodlowego nr 5
156,dic,,90              # polskie litery dla pliku zrodlowego nr 6
157,dic,,90              # polskie litery dla pliku zrodlowego nr 7
158,dic,,90              # polskie litery dla pliku zrodlowego nr 8
159,dic,,90              # polskie litery dla pliku zrodlowego nr 9
161,string,1             # separator kolumn dla pliku zrodlowego nr 1
162,string,1             # separator kolumn dla pliku zrodlowego nr 2
163,string,1             # separator kolumn dla pliku zrodlowego nr 3
164,string,1             # separator kolumn dla pliku zrodlowego nr 4
165,string,1             # separator kolumn dla pliku zrodlowego nr 5
166,string,1             # separator kolumn dla pliku zrodlowego nr 6
167,string,1             # separator kolumn dla pliku zrodlowego nr 7
168,string,1             # separator kolumn dla pliku zrodlowego nr 8
169,string,1             # separator kolumn dla pliku zrodlowego nr 9
181,string,8             # nazwa programu konwertujacego nr 1
182,string,8             # nazwa programu konwertujacego nr 2
183,string,8             # nazwa programu konwertujacego nr 3
184,string,8             # nazwa programu konwertujacego nr 4
185,string,8             # nazwa programu konwertujacego nr 5
186,string,8             # nazwa programu konwertujacego nr 6
187,string,8             # nazwa programu konwertujacego nr 7
188,string,8             # nazwa programu konwertujacego nr 8
189,string,8             # nazwa programu konwertujacego nr 9
191,string,8             # nazwa pliku z definicja rekordu zrodlowego nr 1
192,string,8             # nazwa pliku z definicja rekordu zrodlowego nr 2
193,string,8             # nazwa pliku z definicja rekordu zrodlowego nr 3
194,string,8             # nazwa pliku z definicja rekordu zrodlowego nr 4
195,string,8             # nazwa pliku z definicja rekordu zrodlowego nr 5
196,string,8             # nazwa pliku z definicja rekordu zrodlowego nr 6
197,string,8             # nazwa pliku z definicja rekordu zrodlowego nr 7
198,string,8             # nazwa pliku z definicja rekordu zrodlowego nr 8
199,string,8             # nazwa pliku z definicja rekordu zrodlowego nr 9
130,dic,,211             # symbol dokumentu ksiegowego
131,dic,,208             # metoda rejestracji kont przeciwstawnych
132,dic,,209             # sposob wprowadzania kodow transformacji
133,dic,,213             # sposob sortowania slownikow zamiennikow
134,dic,,217             # seperator pliku ASCII
135,dic,,219             # metoda rejestracji zapisow kont rodzajowych
// --------------------------------------------
% INT_DEKR.DIC # slownik pol rekordu
"DEKR_int",100,Estring      # index interface'u
"DEKR_naz",101,Estring      # nazwa interface'u
"DEKR_kat",102,Estring      # nazwa katalogu dyskowego
"DEKR_cnv",103,Estring      # nazwa algorytmu (.CNV) 
"DEKR_prg",104,Estring      # nazwa programu
"DEKR_txt1",111,Estring     # nazwa i lokalizacja pliku zrodlowego (ASCII) nr 1
"DEKR_txt2",112,Estring     # nazwa i lokalizacja pliku zrodlowego (ASCII) nr 2
"DEKR_txt3",113,Estring     # nazwa i lokalizacja pliku zrodlowego (ASCII) nr 3
"DEKR_txt4",114,Estring     # nazwa i lokalizacja pliku zrodlowego (ASCII) nr 4
"DEKR_txt5",115,Estring     # nazwa i lokalizacja pliku zrodlowego (ASCII) nr 5
"DEKR_txt6",116,Estring     # nazwa i lokalizacja pliku zrodlowego (ASCII) nr 6
"DEKR_txt7",117,Estring     # nazwa i lokalizacja pliku zrodlowego (ASCII) nr 7
"DEKR_txt8",118,Estring     # nazwa i lokalizacja pliku zrodlowego (ASCII) nr 8
"DEKR_txt9",119,Estring     # nazwa i lokalizacja pliku zrodlowego (ASCII) nr 9
"DEKR_imp1",121,Estring     # sposob wczytywania pliku zrodlowego (ASCII) nr 1
"DEKR_imp2",122,Estring     # sposob wczytywania pliku zrodlowego (ASCII) nr 2
"DEKR_imp3",123,Estring     # sposob wczytywania pliku zrodlowego (ASCII) nr 3
"DEKR_imp4",124,Estring     # sposob wczytywania pliku zrodlowego (ASCII) nr 4
"DEKR_imp5",125,Estring     # sposob wczytywania pliku zrodlowego (ASCII) nr 5
"DEKR_imp6",126,Estring     # sposob wczytywania pliku zrodlowego (ASCII) nr 6
"DEKR_imp7",127,Estring     # sposob wczytywania pliku zrodlowego (ASCII) nr 7
"DEKR_imp8",128,Estring     # sposob wczytywania pliku zrodlowego (ASCII) nr 8
"DEKR_imp9",129,Estring     # sposob wczytywania pliku zrodlowego (ASCII) nr 9
"dekr_format1",141,Estring  # format pliku zrodlowego nr 1
"dekr_format2",142,Estring  # format pliku zrodlowego nr 2
"dekr_format3",143,Estring  # format pliku zrodlowego nr 3
"dekr_format4",144,Estring  # format pliku zrodlowego nr 4
"dekr_format5",145,Estring  # format pliku zrodlowego nr 5
"dekr_format6",146,Estring  # format pliku zrodlowego nr 6
"dekr_format7",147,Estring  # format pliku zrodlowego nr 7
"dekr_format8",148,Estring  # format pliku zrodlowego nr 8
"dekr_format9",149,Estring  # format pliku zrodlowego nr 9
"dekr_pl1",151,Estring      # polskie litery dla pliku zrodlowego nr 1
"dekr_pl2",152,Estring      # polskie litery dla pliku zrodlowego nr 2
"dekr_pl3",153,Estring      # polskie litery dla pliku zrodlowego nr 3
"dekr_pl4",154,Estring      # polskie litery dla pliku zrodlowego nr 4
"dekr_pl5",155,Estring      # polskie litery dla pliku zrodlowego nr 5
"dekr_pl6",156,Estring      # polskie litery dla pliku zrodlowego nr 6
"dekr_pl7",157,Estring      # polskie litery dla pliku zrodlowego nr 7
"dekr_pl8",158,Estring      # polskie litery dla pliku zrodlowego nr 8
"dekr_pl9",159,Estring      # polskie litery dla pliku zrodlowego nr 9
"dekr_sep1",161,Estring     # separator kolumn dla pliku zrodlowego nr 1
"dekr_sep2",162,Estring     # separator kolumn dla pliku zrodlowego nr 2
"dekr_sep3",163,Estring     # separator kolumn dla pliku zrodlowego nr 3
"dekr_sep4",164,Estring     # separator kolumn dla pliku zrodlowego nr 4
"dekr_sep5",165,Estring     # separator kolumn dla pliku zrodlowego nr 5
"dekr_sep6",166,Estring     # separator kolumn dla pliku zrodlowego nr 6
"dekr_sep7",167,Estring     # separator kolumn dla pliku zrodlowego nr 7
"dekr_sep8",168,Estring     # separator kolumn dla pliku zrodlowego nr 8
"dekr_sep9",169,Estring     # separator kolumn dla pliku zrodlowego nr 9
"DEKR_cnv1",181,Estring     # nazwa programu konwertujacego nr 1
"DEKR_cnv2",182,Estring     # nazwa programu konwertujacego nr 2
"DEKR_cnv3",183,Estring     # nazwa programu konwertujacego nr 3
"DEKR_cnv4",184,Estring     # nazwa programu konwertujacego nr 4
"DEKR_cnv5",185,Estring     # nazwa programu konwertujacego nr 5
"DEKR_cnv6",186,Estring     # nazwa programu konwertujacego nr 6
"DEKR_cnv7",187,Estring     # nazwa programu konwertujacego nr 7
"DEKR_cnv8",188,Estring     # nazwa programu konwertujacego nr 8
"DEKR_cnv9",189,Estring     # nazwa programu konwertujacego nr 9
"DEKR_plk1",191,Estring     # nazwa pliku z definicja rekordu zrodlowego nr 1
"DEKR_plk2",192,Estring     # nazwa pliku z definicja rekordu zrodlowego nr 2
"DEKR_plk3",193,Estring     # nazwa pliku z definicja rekordu zrodlowego nr 3
"DEKR_plk4",194,Estring     # nazwa pliku z definicja rekordu zrodlowego nr 4
"DEKR_plk5",195,Estring     # nazwa pliku z definicja rekordu zrodlowego nr 5
"DEKR_plk6",196,Estring     # nazwa pliku z definicja rekordu zrodlowego nr 6
"DEKR_plk7",197,Estring     # nazwa pliku z definicja rekordu zrodlowego nr 7
"DEKR_plk8",198,Estring     # nazwa pliku z definicja rekordu zrodlowego nr 8
"DEKR_plk9",199,Estring     # nazwa pliku z definicja rekordu zrodlowego nr 9
"DEKR_smb",130,Estring      # symbol dokumentu ksiegowego
"DEKR_sid",131,Estring      # metoda rejestracji kont przeciwstawnych
"DEKR_tfs",132,Estring      # sposob wprowadzania kodow transformacji
"DEKR_srt",133,Estring      # sposob sortowania slownikow zamiennikow
"DEKR_sep",134,Estring      # seperator pliku ASCII
"DEKR_mrk",135,Estring      # metoda rejestracji zapisow kont rodzajowych
// -------------------------------------------
% INT_DEKR.BOX # okienko do wprowadzania i modyfikacji danych
D = "Dane polecenia ksi|egowania"
"Symbol polecenia:",100,AU
"Nazwa:",101,A
"",,T
"Nazwa katalogu z poleceniem:",104,A
"Nazwa podkatalogu z definicjami:",102,AU
"Nazwa algorytmu (plik z rozszerzeniem "".cnv""):",103,A
"",,T
"Pozosta|le parametry",,T
"Symbol dokumentu ksi|egowego:",130,A
"Metoda rejestracji kont przeciwstawnych:",131,A
"Spos|ob wprowadzania kod|ow transformacji:",132,A
"Spos|ob sortowania s|lownik|ow zamiennik|ow:",133,A
"Seperator pliku ASCII:",134,A
"",,T
"Lokalizacj|e oraz nazwy i typy plik|ow |xr|od|lowych",,T
"zdefiniuj po wybraniu polecenia ksi|egowania",,T
// -------------------------------------------
% INT_DEKR-WARUNEK.DIC
"Symbol polecenia:",100
"Nazwa:",101
// --------------------------------------------
% INT_DEKR.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (DEKR_int = "") goto error
if (DEKR_int == "INT_DEKR") goto error
ID := 102
if (DEKR_kat = "") goto error
if (DEKR_kat == "INT_DEKR") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_DEKR.BUT # "buttony" do rejestru 
// Ogladanie konta (z modyfikacja)
"%M%odyfikacja polecenia",4,1   # modyfikacja
"%D%odanie polecenia",5,1
"%U%suni|ecie polecenia",6,1
"Polecenie: @        ",7,1
@5,0,1               # Koniec
// Wybor konta (z modyfikacja) dla "wywolaj menu"
"%W%yb|or polecenia",1,4
"Polecenie: @        ",7,4
@4,3,4               # Rezygnujesz
// --------------------------------------------
% INT_DEKR.MEN # menu z rubrykami
D = 73,"Tablica polece|n ksi|egowania",AB
LINIA-DIALOG = INT_DEKR_M,"Rejestr INT_DEKR"
100,,,,10,"Symbol"         # index interface'u (index)
101,,,,27,"Nazwa interfejsu"   # nazwa interface'u
104,,,,10,"Katalog"    # nazwa katalogu
111,,,,,"Nazwa pliku |xr|od|lowego"         # nazwa pliku zrodlowego 1
% INT_DEKR_M.DIC
"INT_DEKR",0
//
//=====================================================
//INT_DEKR-MENU-? okienka menu_na_rekordy dla roznych trybow rejestr INT_DEKR
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicja poczatku dialogu
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
//*****************************************************************
% INT_DEKR-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:INT_DEKR_MENU_DEF
##0,,ADP,,$$(@3)
##1,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
%< INT_DEKR-MENU-DEF.XXX
//
% INT_DEKR-MENU-0.GUI32.DLG
//wybor wartosci z modyfikacja
PRZYCISK_CANCELID = 3
%< INT_DEKR-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DEKR_MENU_GORNE-0                     
#101                                                                      #101
#102
                                                                         #102<

 #100                                                                   #

//



% INT_DEKR-MENU-1.GUI32.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 3
%< INT_DEKR-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DEKR_MENU_GORNE-1                     
#101                                                                      #101
#102
                                                                         #102<

 #100                                                                   #

//

% INT_DEKR-MENU-5.GUI32.DLG
//wybor wartosci z modyfikacja dla kopiowania PK
PRZYCISK_CANCELID = 3
%< INT_DEKR-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DEKR_MENU_GORNE-5                     
#101                                                                      #101
#102
                                                                         #102<

 #100                                                                   #

//

//*********************************K********************************
% INT_DEKR-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Polecenia ksi|egowania"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,TLD,0,,"Symbol   Nazwa polecenia ksi|egowania Katalog  Nazwa pliku |xr|od|lowego(1)",,&&lwhite/blue
//
% INT_DEKR_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
*501,"Operacje"
4,"Z%m%ie|n"
5,"%D%odaj"
6,"%U%su|n"
//
% INT_DEKR_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"Polecenie"
9,"%N%ast|epne polecenie"
10,"%F%iltr"
*503,"Drukuj"
12,"Dekrety"
*504,"Dane |xr|od|lowe"
15,"%L%okalizacja"
//16,"Parametry"
//
%INT_DEKR_STARE_BUTTONY.XXX
##0,,ADP,,@5		   # "Koniec"
##1,BTG,ADP,,"%W%yb|or"
##2,LBTG,P,,"%O%pis"
##3,,ADP,,@4		# "Rezygnujesz"
##4,LBTG,P,,"Z%m%ie|n"
##5,LBTG,P,,"%D%odaj"
##6,LBTG,P,,"%U%su|n"
##8,LBTG,P,,"%Z%najd|x"
##9,LBTG,P,,"%N%ast|epny"	
##10,LBTG,P,,"%F%iltr"
##12,LBTG,P,,"Druku%j% dekrety"
##15,LBTG,P,,"%L%okalizacja"
##16,LBTG,P,,"%P%arametry"
##20,TLD,0,,"      Tablica polece|n ksi|egowania",,yellow/blue&yellow/blue
##21,TLD,0,," Wyb|or |xr|od|lowego polecenia ksi|egowania",,yellow/blue&yellow/blue
//---------------------------------------------
%INT_DEKR-MENU-KONIEC_STARE.XXX
//koncowe buttony - niezmienne dla wszystkich trybow 
                                                   #2                #
                                                   #6                #
                                                   #8                #
                                                   #9                #
                                                   #12               #
                                                   #15               #
                                                   #16               #
                                                #100
//---------------------------
% INT_DEKR-MENU-SRODEK_STARE.XXX
//---------------------------
//buttony srodkowe - rozne dla roznych trybow 
                                                   --------------------
                                                   #4                #
                                                   #5                #
//---------------------------

% INT_DEKR-MENU-0.DLG
//wybor wartosci z modyfikacja
PRZYCISK_CANCELID = 3
%< INT_DEKR-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DEKR_MENU_GORNE-0                     
#101                                                                      #101
#102
                                                                         #102<
 #100                                                                   #

//
% INT_DEKR_MENU_GORNE-0                          
P =3,,AD
*1,"%W%yb|or"
*3,@4
%< INT_DEKR_MENU_GORNE-SRODEK.XXX
%< INT_DEKR_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% INT_DEKR-MENU-1.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 3
%< INT_DEKR-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DEKR_MENU_GORNE-1                     
#101                                                                      #101
#102
                                                                         #102<
 #100                                                                   #

//
% INT_DEKR_MENU_GORNE-1                          
P =3,,AD
*1,"%W%yb|or"
*3,@5
%< INT_DEKR_MENU_GORNE-SRODEK.XXX
%< INT_DEKR_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% INT_DEKR-MENU-2.DLG
//wybor wartosci z bez modyfikacji
PRZYCISK_CANCELID = 3
%< INT_DEKR-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DEKR_MENU_GORNE-2                     
#101                                                                      #101
#102
                                                                         #102<
 #100                                                                   #

//
% INT_DEKR_MENU_GORNE-2                          
P =3,,AD
*1,"%W%yb|or"
*3,@4
//---------------------------
% INT_DEKR-MENU-5.DLG
//wybor wartosci z modyfikacja dla kopiowania PK
PRZYCISK_CANCELID = 3
%< INT_DEKR-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DEKR_MENU_GORNE-5                     
#101                                                                      #101
#102
                                                                         #102<
 #100                                                                   #

//
% INT_DEKR_MENU_GORNE-5                          
P =3,,AD
*1,"%W%yb|or"
*3,@4
%< INT_DEKR_MENU_GORNE-SRODEK.XXX
//*502,"Znajd|x"
//8,"Polecenie"
//9,"%N%ast|epne polecenie"
//10,"%F%iltr"
//
//---------------------------
% TABLICA-AKCJI-INT_DEKR-MENU-0,TABLICA-AKCJI-INT_DEKR-MENU-1,TABLICA-AKCJI-INT_DEKR-MENU-2
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DEKR-MENU_PRZED_WYSW
  "AKCJA-BUTTON12",INT_DEKR-MENU_DRUKUJ
  "AKCJA-BUTTON15",INT_DEKR-MENU_LOKALIZACJA
  "AKCJA-BUTTON16",INT_DEKR-MENU_PARAMETRY
//
//------------------------------
% TABLICA-AKCJI-INT_DEKR-MENU-5
//------------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DEKR-MENU-5_PRZED_WYSW
//
% INT_DEKR-MENU_PRZED_WYSW.ALG
//ustaw naglowek okna 
//  ExDialogOp["ZmienNaglowek","Wyb|or |xr|d|lowego polecenia ksi|egowania"]
//ustawienie parametrow menu_na_rekordy
//  okalert["przed akcja"]
  ExDialogOp["UstawMenuParam","100:INT_DEKR,,KLUCZ,1"]
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% INT_DEKR-MENU-5_PRZED_WYSW.ALG
//ustawienie parametrow menu_na_rekordy
  ExDialogOp["UstawMenuParam","100:INT_DEKR,,KLUCZ,1"]
//ustaw naglowek okna 
//  ExDialogOp["ZmienNaglowek","Wyb|or |xr|od|lowego polecenia ksi|egowania"]
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% INT_DEKR-MENU_DRUKUJ.ALG
//drukowanie dekretow
  CallAlg["KONWERTOWANIE_BAZY_DANYCH"]
  CallALg["NAZ_KAT_NA_MALE_N"]
  naz_intd := RejWezP_S["dekr_int"]+":"+StrCut[RejWezP_S["R:dekr_naz"],0,40]
  naz_deff := "INT_DEFF.RXR" + "+" + naz_kat + "\int_deff"
  naz_slow := "INT_SLOW.RXR" + "+" + naz_kat + "\int_slow"
  IdzDoWydruku["int\int_prtd.drk",""]
  ExitAlg[0]
//
% INT_DEKR-MENU_LOKALIZACJA.ALG
//lokalizacja plikow zrodlowych
//  RejOp["R:OtworzRej","INT_DEKR.RXR"]
//  RejOp["R:ZnajdzRek",RejWezP_S["dekr_int"]]
  ExDialogOp["IdzDoDialogu","LOKALIZACJA"]
//  if (D_POS=90) RejOp["R:ZapiszRek",""]
//  RejOp["R:ZamknijRej",""]
  ExitAlg[0]
//
% INT_DEKR-MENU_PARAMETRY.ALG
//paramtery dodatkowe (plik z rozszerzeniem *.cnv)
  plik_name := ""
  naz_cnv := RejWezP_S["dekr_cnv"] + ".cnv"
  DyskOp["NaMale",naz_cnv,""]
  naz_cnv := D_String
  if (not(naz_cnv = ".cnv")) goto dalej
  okAlert["Dla tego polecenia ksi|egowanie nie zdefiniowano$algorytmu do wprowadzenia dodatkowych parametr|ow$(plik z rozszerzeniem *.cnv)"]
  ExitAlg[0]
dalej:
//nadaj wartosci zmiennym - s¥ uzywane w plikach *.cnv
  CallALg["NAZ_KAT_NA_MALE_N"]
  naz_deff := "INT_DEFF.RXR" + "+" + naz_kat + "\int_deff"
  naz_slow := "INT_SLOW.RXR" + "+" + naz_kat + "\int_slow"
  naz_baza := "INT_BAZA.RXR" + "+" + naz_kat + "\int_baza"
  naz_firm := "INT_FIRM.RXR" + "+" + naz_kat + "\int_firm"
  naz_data := "INT_DATA.RXR" + "+" + naz_kat + "\int_data"
  naz_temp := "INT_TEMP.RXR" + "+" + naz_kat + "\int_temp"
  naz_plik := "INT_PLIK.RXR" + "+" + naz_kat + "\int_plik"
  naz_errs := "INT_ERRS.RXR" + "+" + naz_kat + "\int_errs"
  naz_rozr := "INT_ROZR.RXR" + "+" + naz_kat + "\int_rozr"
  naz_rodz := "INT_RODZ.RXR" + "+" + naz_kat + "\int_rodz"
  naz_rozl := "INT_ROZL.RXR" + "+" + naz_kat + "\int_rozl"
  naz_kntr := "INT_KNTR.RXR" + "+" + naz_kat + "\int_kntr"
  naz_rejv := "INT_REJV.RXR" + "+" + naz_kat + "\int_rejv"
  naz_klas := "INT_KLAS.RXR" + "+" + naz_kat + "\int_klas"
  naz_deww := "INT_DEWW.RXR" + "+" + naz_kat + "\int_deww"
  naz_impd := "INT_IMPD.RXR" + "+" + naz_kat + "\int_impd"
  naz_glob := "INT_GLOB.RJR" + "+" + naz_kat + "\int_glob"
  if (DyskOp["JestPlik","wlasne\int\"+naz_kat+"\"+naz_cnv,""]) goto _jest
  DyskOp["WezSystemX","",""]
  if (D_string = "D-") slash := "\"
  if (D_string = "X-") slash := "/"
  nazz_cnv := "wlasne"+slash+"int"+slash+naz_kat+slash+naz_cnv
  OkAlert["Na dysku brak algorytmu do wprowadzenia parametr|ow:$(plik z rozszerzeniem *.cnv)$"+nazz_cnv]
  ExitAlg[0]
_jest:
  parametry := .T.
  IdzDoWydruku["int\"+naz_kat+"\"+naz_cnv,""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_DEKR-MENU-?
//=====================================================
//
//=====================================================
//INT_DEKR-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
//***********************************P******************************************8
% INT_DEKR-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane polecenia ksi|egowania"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##202,DZ,ADPH,,
##20,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLEUNIKALNE:dekr_int
##21,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_naz
##22,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_prg
##23,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLEUNIKALNE:dekr_kat
##24,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_cnv
##25,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_smb
##26,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_sid
##27,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_tfs
##28,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_srt
##29,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_mrk
##31,TLD,0,,"Pozosta|le parametry:",,yellow/black&yellow/black&blue/white
##32,TLD,0,,"Lokalizacj|e oraz nazwy i typy plik|ow |xr|od|lowych ",,yellow/black&yellow/black&blue/white
##33,TLD,0,,"zdefiniuj w okienku ""Lokalizacja""",,yellow/black&yellow/black&blue/white
//
% INT_DEKR-REKORD-1.GUI32.DLG
//RESORS = dll\int.dll:INT_DEKR_REKORD
//dodaj
PRZYCISK_CANCELID = 2
%< INT_DEKR-REKORD-0.GUI32.DLG
//
% INT_DEKR-REKORD-0.GUI32.DLG
//zmien
RESORS = dll\int.dll:INT_DEKR_REKORD
PRZYCISK_CANCELID = 2
%<INT_DEKR-REKORD.GUI32.XXX

 #202
  Symbol polecenia: ............................. #20    # 
  Nazwa: #21                                             #
  Nazwa katalogu polecenia: ..................... #22    #
  Nazwa podkatalogu z definicjami: .............. #23    #    #1        #
  Nazwa algorytmu (plik z rozszerzeniem ".cnv"):  #24     #

  #31                                                  #
  Symbol dokumentu ksi|egowego: ..................#25 #<
  Metoda rejestracji kont przeciwstawnych: ......#26#<
  Spos|ob wprowadzania kod|ow transformacji: ......#27#<       #2        #
  Spos|ob sortowania s|lownik|ow zamiennik|ow: ......#28#<
  Metoda rejestracji zapis|ow kont rodzajowych: ..#29#<
 
  #32                                                 #
  #33                                                  #  #202  
//-----------------------------------------------------------
//
% INT_DEKR-REKORD-2.GUI32.DLG
RESORS = dll\int.dll:INT_DEKR_REKORD_P
//pokaz
PRZYCISK_CANCELID = 3
%<INT_DEKR-REKORD.GUI32.XXX

 #202
  Symbol polecenia: ............................. #20    # 
  Nazwa: #21                                             #
  Nazwa katalogu polecenia: ..................... #22    #
  Nazwa podkatalogu z definicjami: .............. #23    #  
  Nazwa algorytmu (plik z rozszerzeniem ".cnv"):  #24     #

  #31                                                  #      #3         #
  Symbol dokumentu ksi|egowego: ..................#25 #<
  Metoda rejestracji kont przeciwstawnych: ......#26#<
  Spos|ob wprowadzania kod|ow transformacji: ......#27#<     
  Spos|ob sortowania s|lownik|ow zamiennik|ow: ......#28#<
  Metoda rejestracji zapis|ow kont rodzajowych: ..#29#<
 
  #32                                                 #
  #33                                                  #  #202  
//


//*******************************************K****************
//-----------------------------------------------------------

% INT_DEKR-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane polecenia ksi|egowania"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##202,DZ,ADPH,,
##20,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLEUNIKALNE:dekr_int
##21,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_naz
##22,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_prg
##23,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLEUNIKALNE:dekr_kat
##24,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_cnv
##25,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_smb
##26,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_sid
##27,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_tfs
##28,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_srt
##29,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_mrk
##31,TLD,0,,"Pozosta|le parametry:",,yellow/black&yellow/black&blue/white
##32,TLD,0,,"Lokalizacj|e oraz nazwy i typy plik|ow |xr|od|lowych ",,yellow/black&yellow/black&blue/white
##33,TLD,0,,"zdefiniuj w okienku ""Lokalizacja""",,yellow/black&yellow/black&blue/white
//
% INT_DEKR-REKORD-1.DLG
//dodaj
PRZYCISK_CANCELID = 2
%< INT_DEKR-REKORD-0.DLG
//
% INT_DEKR-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_DEKR-REKORD.XXX

 #202
  Symbol polecenia: ............................. #20    # 
  Nazwa: #21                                             #
  Nazwa katalogu polecenia: ..................... #22    #
  Nazwa podkatalogu z definicjami: .............. #23    #    #1        #
  Nazwa algorytmu (plik z rozszerzeniem ".cnv"):  #24     #

  #31                                                  #
  Symbol dokumentu ksi|egowego: ..................#25 #<
  Metoda rejestracji kont przeciwstawnych: ......#26#<
  Spos|ob wprowadzania kod|ow transformacji: ......#27#<       #2        #
  Spos|ob sortowania s|lownik|ow zamiennik|ow: ......#28#<
  Metoda rejestracji zapis|ow kont rodzajowych: ..#29#<
 
  #32                                                 #
  #33                                                  #  #202  
//-----------------------------------------------------------
//
% INT_DEKR-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_DEKR-REKORD.XXX

 #202
  Symbol polecenia: ............................. #20    # 
  Nazwa: #21                                             #
  Nazwa katalogu polecenia: ..................... #22    #
  Nazwa podkatalogu z definicjami: .............. #23    #  
  Nazwa algorytmu (plik z rozszerzeniem ".cnv"):  #24     #

  #31                                                  #      #3         #
  Symbol dokumentu ksi|egowego: ..................#25 #<
  Metoda rejestracji kont przeciwstawnych: ......#26#<
  Spos|ob wprowadzania kod|ow transformacji: ......#27#<     
  Spos|ob sortowania s|lownik|ow zamiennik|ow: ......#28#<
  Metoda rejestracji zapis|ow kont rodzajowych: ..#29#<
 
  #32                                                 #
  #33                                                  #  #202  
//
//-----------------------------------------------------------
% TABLICA-AKCJI-INT_DEKR-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DEKR-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_DEKR-REKORD_AKCEPTUJESZ
//
% INT_DEKR-REKORD-0_PRZED_WYSW.ALG
//  Okalert["rek 0"]
//  kat_pol := RejWezP_S["dekr_prg"]
//  OkAlert["kat_polecenia "+kat_pol]
  ExDialogOp["IdzDoPozycji","20"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","*"]
  ExitAlg[0]
//
% TABLICA-AKCJI-INT_DEKR-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DEKR-REKORD-1_PRZED_WYSW
  "AKCJA-BUTTON1",INT_DEKR-REKORD_AKCEPTUJESZ
//
% INT_DEKR-REKORD-1_PRZED_WYSW.ALG
//  Okalert["rek 1"]
  ExDialogOp["IdzDoPozycji","20"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","*"]
  ExitAlg[0]
//
% TABLICA-AKCJI-INT_DEKR-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DEKR-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_DEKR-REKORD_AKCEPTUJESZ
//
% INT_DEKR-REKORD-2_PRZED_WYSW.ALG
//  Okalert["rek 2"]
  ExDialogOp["IdzDoPozycji","1"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% TABLICA-AKCJI-INT_DEKR-REKORD-3
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DEKR-REKORD-3_PRZED_WYSW
  "AKCJA-BUTTON1",INT_DEKR-REKORD_AKCEPTUJESZ
//
% INT_DEKR-REKORD-3_PRZED_WYSW.ALG
//  Okalert["rek 3"]
  ExitAlg[0]
//
% INT_DEKR-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["dekr_int"] = "")) goto dalej1
  OkAlert["Wprowad|x symbol polecenia !"]
  ExDialogOp["IdzDoPozycji","20"]
  ExitAlg[0]
dalej1:
  if (not (RejWezP_S["dekr_prg"] = "")) goto dalej2
  OkAlert["Wprowad|x nazw|e katalogu polecenia !"]
  ExDialogOp["IdzDoPozycji","22"]
  ExitAlg[0]
dalej2:
  if (not (RejWezP_S["dekr_kat"] = "")) goto koniec
  OkAlert["Wprowad|x nazw|e podkatalogu!"]
  ExDialogOp["IdzDoPozycji","23"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_DEKR-REKORD-?
//=====================================================
//madzia koniec rekordd OLD
//
//=====================================================
//KONIEC rejestr INT_DEKR.RXR
//=====================================================
// ===== rejestr TMP  z naglowkami trankacji
% INT_NAGL.RJR # inicjalizacja rejestru
101
1
"INT_NAGL"
"INT_NAGL"
"ZAZNACZAJ-MENU:222"
% INT_NAGL.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
99,ulong,,,,,N	         # rejestrrekpos z pliku trans.dbf 
100,ydate,,,1            # data operacji
110,string,30,,4         # symbol konta 
111,string,50            # nazwa konta 
130,string,30            # symbol kontrahenta
140,string,20,,2         # symbol transakcji
222,log,,,3              # nagl_ptaszek; 
% INT_NAGL.DIC # struktura rekordu
"nagl_id",99,Ekwota,"ID trans"
"nagl_data",100,Edata,"Data"
"nagl_konto",110,Estring,"Symbol konta"
"nagl_nazwa",111,Estring,"Nazwa konta "
"nagl_klsym",130,Estring,"Symbol kontrahneta "
"nagl_trans",140,Estring,"Symbol transakcji"
"nagl_ptaszek",222,Elog
% INT_NAGL.BUT # "buttony" do rejestru 
// Ogladanie 
//@5,0,1               # Koniec
"Usu|n$zaznaczone",1,1               # Koniec
@4,3,1               # REZYGNUJESZ
"akuku",0,1               # REZYGNUJESZ
% INT_NAGL.MEN # menu z rubrykami
D = 73,"Transakcje bez zapis|ow ",AB
//190,,,,4,"Usu|n"
100,,,,,"Data"
110,,,,11,"Konto "
111,,,,20,"Nazwa kontrahenta"
140,,,,15,"Transkacja"
//------dialog do wyboru transakcji
% WYBIERZ_TRANSAKCJE.DLG
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Transkacje bez zapis|ow "
PRZYCISK_CANCELID = 1
##0,,ADP,,@17
//##100,0,P,,,,,,,,MENU_ROZWIJANE:WYBIERZ_BUDYNKI
##1,,ADP,,@4  
##4,,ADP,,"Zaznacz wszystkie"
##5,,ADP,,"Usu|n zaznaczenie"
##6,,ADP,,"Usu|n wybrane$transakcje"
##7,,ADP,,"Poka|z transakcje"
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##21,B,0,,"Data",,&&lwhite/blue,&&lwhite/magenta,,,ZMIENNA:TRANS_klucz,,,1,"1"
##23,B,0,,"Symbol",,&&lwhite/blue,&&lwhite/magenta,,,ZMIENNA:TRANS_klucz,,,1,"2"
##24,B,0,,"Konto",,&&lwhite/blue,&&lwhite/magenta,,,ZMIENNA:TRANS_klucz,,,1,"4"
##200,0,ACPM,,,,,,,,MENU_NA_REKORDY

                                                                          Kolejno|s|c:
                                                                          #21  ##23    ##24    #
  #200                                                                    #4                 #
                                                       
                                                                          #5                 #

                                                                          #7                 #

                                                                          #6
                                                                                             #6
                 
                                                                      #200#1                 #


% TABLICA-SL-AKCJI-WYBIERZ_TRANSAKCJE
"AKCJA-PRZED-WYSWIETLENIEM",INTERFEJS->wybierz_trans_przed  
"AKCJA-PRZED-WYKONYWANIEM",() = exdialogop("idzdopozycji","200");
"AKCJA-BUTTON4",INTERFEJS->wybierz_trans_zaznacz
"AKCJA-BUTTON5",INTERFEJS->wybierz_trans_odznacz
"AKCJA-BUTTON6",INTERFEJS->wybierz_trans_usun
"AKCJA-BUTTON7",INTERFEJS->wybierz_trans_pokaz
"AKCJA-BUTTON21",INTERFEJS->wybierz_trans_zmiana_klucza
"AKCJA-BUTTON23",INTERFEJS->wybierz_trans_zmiana_klucza
"AKCJA-BUTTON24",INTERFEJS->wybierz_trans_zmiana_klucza
//---------------------------------------------------------------
//
//=====================================================
// ===== rejestr z danym bazowymi do tworzenia zapisow ksiegowych
% INT_BAZA.RXR,INT_BAZA.RJR # inicjalizacja rejestru
101
1
"INT_BAZA"
"INT_BAZA"

"Powt|orzony symbol rekordu !"
"Zmieniasz dane rekordu ?"
"Czy doda|c ten rekord ?"
"Czy usun|a|c ten rekord ?"
"Czy doda|c nast|epny rekord ?"
"Rekord o podanym symbolu nie istnieje !$Czy doda|c ten rekord ?"
"Nie ma |zadnych rekord|ow !"
"Rejestr jest pusty !$Wprowadzasz pierwszy rekord ?"
"Nie ma rekordu o podanym symbolu.$Znale|x|c nast|epny ?"
"%s - nie ma takiego rekordu !"
INT_BAZA-WARUNEK
// --------------------------------------------
% INT_BAZA.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
99,ulong,,,2,,NM	 # baza_id identyfik. rekordu w int_baza
98,string,70,,           # opis dokumentu (do naglowka dokumentu ksieg.)
100,ydate                # data operacji
101,string,20,,1         # prefix operacji
102,string,40,,1         # kod operacji
103,string,50            # nazwa operacji
110,string,30            # suffix konta 
111,string,50            # nazwa konta 
112,string,100           # tresc zapisu ksiegowego
113,kwota                # kwota zapisu ksiegowego
120,string,30            # suffix klasyfikacji
121,string,50            # nazwa klasyfikacji
130,string,30            # suffix kontrahenta
140,string,30            # symbol transakcji
141,ydate                # data transakcji
142,ydate                # termin platnosci
143,string,1,2           # typ transakcji (D-dostawca; O-Odbiorca)
144,string,1,2           # rodzaj transakcji (T-trans.; Z-zaplata; K-korekta)
150,string,20            # symbol rejestru VAT
151,string,30            # symbol dokumentu VAT
152,string,30            # dotyczy dokumentu VAT
153,string,3,2           # typ dokumentu VAT (slownik dokumentow VAT)
154,ydate                # data dokumentu VAT
155,ydate                # data sprzedazy/otrzymania
156,ydate                # data obowiazku VAT
157,string,10,2          # suffix symbolu klasyfikacji VAT
158,string,1,2           # symbol klasyfikacji GUS
159,kwota                # kwota netto z linii VAT
160,kwota                # kwota bruto z linii VAT
161,string,50,,          # vatuwagi uwagi do naglowka VAT 
162,string,30,,          # vatkontoplat VAT konto WN brutto
163,string,30,,          # vatkontonetto VAT konto MA netto
164,string,1,,           # vatsposob - sposob wyliczenia kwoty vat: "B" - od brutto, "N" - od netto, "S" - sumowanie
170,string,5             # suffix symbolu waluty
171,kwota                # kwota waluty
180,string,81            # info o bˆedzie
181,ydate                # data platnosci VAT
182,string,1             # VAT forma platnosci
183,log,                 # VAT czy transkacja trojstronna (unia)
184,string,13,2,         # VAT nip UE
185,string,2,            # VAT kod kraju UE UE
190,string,1		 # ptaszek - byl blad
// klucz dodatkowy
102,0,,,3         	 # klucz 3 - kod operacji
// --------------------------------------------
% INT_BAZA.DIC # slownik pol rekordu
"BAZA_id",99,Ekwota,"Id"
"BAZA_opisdok",98,Estring,"Opis do nag||lowka dokumentu"
"BAZA_oprdat",100,Edata,"Data"
"BAZA_oprpfx",101,Estring,"Prefix operacji"
"BAZA_oprkod",102,Estring,"Kod operacji"
"BAZA_oprnaz",103,Estring,"Nazwa operacji"
"BAZA_rdzsfx",110,Estring,"Suffix konta"
"BAZA_rdznaz",111,Estring,"Nazwa konta "
"BAZA_oprtrs",112,Estring,"Tre|s|c zapisu ksi|egowego"
"BAZA_oprkwt",113,Ekwota,"Kwota"
"BAZA_rzlsfx",120,Estring,"Suffix klasyfikacji"
"BAZA_rzlnaz",121,Estring,"Nazwa klasyfikacji"
"BAZA_klnsfx",130,Estring,"Suffix kontrahenta"
"BAZA_rzrfak",140,Estring,"Symbol transakcji"
"BAZA_rzrdat",141,Edata,"Data transakcji"
"BAZA_rzrtrm",142,Edata,"Termin platno|sci"
"BAZA_rzrtyp",143,Estring,"Typ transakcji"
"BAZA_rzrrdz",144,Estring,"Rodzaj transakcji(T/Z/K)"
"BAZA_vatrej",150,Estring,"Symbol rejestru VAT"
"BAZA_vatdok",151,Estring,"Symbol dokumentu VAT"
"BAZA_vatold",152,Estring,"Dotyczy dokumentu VAT"
"BAZA_vattyp",153,Estring,"Typ dokumentu VAT"
"BAZA_vatdat",154,Edata,"Data dokumentu VAT"
"BAZA_vatspr",155,Edata,"Data sprzeda|zy/otrzymania"
"BAZA_vatobw",156,Edata,"Data obowi|azku VAT"
"BAZA_vatsfx",157,Estring,"Suffix symbolu klasyfikacji VAT"
"BAZA_vatgus",158,Estring,"Symbol klasyfikacji GUS"
"BAZA_vatnet",159,Ekwota,"Kwota netto z linii VAT"
"BAZA_vatbrt",160,Ekwota ,"Kwota brutto z linii VAT"
"BAZA_vatuwagi",161,Estring,"Uwagi z linii VAT"
"BAZA_vatkontoplat",162,Estring,"Konto WN (brutto) z linii VAT"
"BAZA_vatkontonetto",163,Estring,"Konto MA (netto) z linii VAT"
"BAZA_vatsposob",164,Estring,"Spos|b wyliczenia vat (od brutto, netto)"
"BAZA_dewsfx",170,Estring,"Suffix symbolu waluty"
"BAZA_dewkwt",171,Ekwota,"Kwota waluty"
"BAZA_blad",180,Estring,"Info o b|l|edzie"
"BAZA_vatplt",181,Edata,"Data p|latno|sci VAT"
"BAZA_vatfpl",182,Estring,"VAT forma platnosci"
"BAZA_vattrojstr",183,Elog,"Czy tr|ojstronna "
"BAZA_vatnipue",184,Estring,"NIP UE"
"BAZA_vatkodue",185,Estring,"UE kod kraju"
"BAZA_ptaszek",190,Estring,"B|l|ad"
// -------------------------------------------
% INT_BAZA.BOX # okienko do wprowadzania i modyfikacji danych
D = "Rejestr INT_BAZA"
//"Numer rekordu:",99,A
"B|l|ad w rekordzie:",180,A
"Opis dokumentu:",98,A
"Data operacji:",100,A
"Prefix operacji:",101,A
"Kod operacji:",102,A
"Nazwa:",103,A
"",,T
"Suffix konta:",110,A
"Nazwa konta:",111,A
"Tre|s|c zapisu:",112,A
"Kwota:",113,A
"",,T
"Suffix klasyfikacji pom.:",120,A
"Nazwa klasyfikacji pom.:",121,A
"",,T
"Suffix kontrahenta:",130,A
"",,T
"Symbol transakcji:",140,A
"Data transakcji:",141,A
"Termin p|latno|sci:",142,A
"Typ transakcji (D/O):",143,A
"Rodzaj transakcji (T/Z/K):",144,A
"",,T
"Symbol rejestru VAT:",150,A
"Symbol dokumentu VAT:",151,A
"Dotyczy dokumentu VAT:",152,A
"Typ dokumentu VAT (s|lownik dok VAT):",153,A
"Data dokumentu VAT:",154,A
"Data sprzeda|zy/otrzymania:",155,A
"Data obowi|azku VAT:",156,A
"Data p|latno|sci VAT:",181,A
"Forma p|latno|sci VAT:",182,A
"Czy transakcja tr|ojstronna:",183,A
"NIP UE:",184,A
"Kod kraju :",185,A
"Suffix symbolu klasyfikacji VAT:",157,A
"Symbol klasyfikacji GUS:",158,A
"Kwota netto z linii VAT:",159,A
"Kwota brutto z linii VAT:",160,A
"",,T
"Suffix symbolu waluty:",170,A
"Kwota waluty:",171,A
// --------------------------------------------
% INT_BAZA.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (BAZA_oprdat = '') goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_BAZA.BUT # "buttony" do rejestru 
// Ogladanie rekordu (z modyfikacja)
"%M%odyfikacja rekordu",4,1   # modyfikacja
"%D%odanie rekordu",5,1
"%U%suni|ecie rekordu",6,1
"%S%uma rekord|ow",1,1
"Rekord: @        ",7,1
@5,0,1               # Koniec
// Ogladanie rekordu (z modyfikacja)
"%M%odyfikacja rekordu",4,0   # modyfikacja
"%D%odanie rekordu",5,0
"%U%suni|ecie rekordu",6,0
"%S%uma rekord|ow",1,0
"Rekord: @        ",7,0
@5,0,0               # Koniec
// przegladanie - do raportowania
"%M%odyfikacja rekordu",4,3   # modyfikacja
"%D%odanie rekordu",5,3
"%U%suni|ecie rekordu",6,3
"Rekord: @        ",7,3
@5,0,3               # Koniec
// --------------------------------------------
% INT_BAZA-WARUNEK.DIC
"Data operacji:",100
"Prefix operacji:",101
"Kod operacji:",102
"Nazwa:",103
"B|l|ad:",190
// --------------------------------------------
% INT_BAZA-WYBIERZ.DIC
"INT_BAZA",0

// --------------------------------------------
% INT_BAZA_1.MEN # menu z rubrykami
D = 73,"Rejestr INT_BAZA",AB
LINIA-DIALOG = "INT_BAZA-WYBIERZ","Kolumny  do wyboru"  
190,,,,4,"B|l|ad"
100,,,,,"Data"
102,,,,20,"Kod operacji"
103,,,,20,"Nazwa operacji"
113,,,,13,"Kwota"
// --------------------------------------------
% INT_BAZA.MEN # menu z rubrykami do rej RJR
D = 73,"Transakcje ",AB
LINIA-DIALOG = "INT_BAZA-WYBIERZ","Kolumny  do wyboru"  
100,,,,,"Data"
110,,,,15,"Nr kontrahenta"
140,,,,15,"Transkacja"
113,,,,13,"Kwota"
//
//=====================================================
//INT_BAZA-MENU-? okienka menu_na_rekordy dla roznych trybow rejestr INT_BAZA
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
//**************************P***********************************
% INT_BAZA-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:INT_BAZA_MENU_DEF
%< INT_BAZA-MENU-DEF.XXX
//
% INT_BAZA-MENU-1.GUI32.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_BAZA-MENU-DEF.GUI32.XXX
// #20                                                                   #
##101,0,P,,,,,,,,Menu_rozwijane:INT_BAZA_MENU_GORNE-0                     
#101                                                                      #101
#102
                                                                         #102<
 #100                                                                   #

//

//******************************K******************************
% INT_BAZA-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane |xr|od|lowe po konwersji dla zapis|ow"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,TLD,0,,"B|l|ad Data     Kod operacji         Nazwa operacji               Kwota",,&&lwhite/blue
//
% INT_BAZA_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
//*501,"Operacje"
*4,"Z%m%ie|n"
*5,"%D%odaj"
*6,"%U%su|n"
//
% INT_BAZA_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"Operacj|e"
9,"%N%ast|epn|a operacj|e"
10,"%F%iltr"
*15,"%S%uma rekord|ow"
*16,"%B%|l|edy"
//
% INT_BAZA-STARE_BUTTONY.XXX
##0,,ADP,,@5		   # "Koniec"
##1,BTG,ADP,,"%W%yb|or"
##2,LBTG,P,,"%O%pis"
##3,,ADP,,@4		# "Rezygnujesz"
##4,LBTG,P,,"Z%m%ie|n"
##5,LBTG,P,,"%D%odaj"
##6,LBTG,P,,"%U%su|n"
##8,LBTG,P,,"%Z%najd|x"
##9,LBTG,P,,"%N%ast|epny"	
##10,LBTG,P,,"%F%iltr"
##12,LBTG,P,,"Druku%j% dekrety"
##15,LBTG,P,,"%S%uma rekord|ow"
##16,LBTG,P,,"%B%|l|edy"
//---------------------------------------------
%INT_BAZA-MENU-KONIEC_STARE.XXX
//koncowe buttony - niezmienne dla wszystkich trybow 
                                                   #6                #
                                                   #8                #
                                                   #9                #
                                                   #15               #
                                                   #16               #
                                                #100
//---------------------------
% INT_BAZA-MENU-SRODEK_STARE.XXX
//---------------------------
//buttony srodkowe - rozne dla roznych trybow 
                                                   --------------------
                                                   #4                #
                                                   #5                #
//---------------------------
% INT_BAZA-MENU-1.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_BAZA-MENU-DEF.XXX
// #20                                                                   #
##101,0,P,,,,,,,,Menu_rozwijane:INT_BAZA_MENU_GORNE-0                     
#101                                                                      #101
#102
                                                                         #102<
 #100                                                                   #

//
% INT_BAZA_MENU_GORNE-0                          
P =3,,AD
*0,@5
%< INT_BAZA_MENU_GORNE-SRODEK.XXX
%< INT_BAZA_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-INT_BAZA-MENU-1
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_BAZA-MENU_PRZED_WYSW
  "AKCJA-BUTTON15",INT_BAZA-MENU_SUMA
  "AKCJA-BUTTON16",INT_BAZA-MENU_BLEDY
//
% INT_BAZA-MENU_PRZED_WYSW.ALG
//ustawienie parametrow menu_na_rekordy
  ExDialogOp["UstawMenuParam","100:INT_BAZA_1,,KLUCZ,1"]
//ustaw naglowek okna
  ExDialogOp["ZmienNaglowek","Dane |xr|od|lowe po konwersji dla zapis|ow dla polecenia "+naz_int_nag] 
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% INT_BAZA-MENU_SUMA.ALG
//sumowanie rekordow
  RejOp["X:OtworzRej1",naz_baza]
  lp := 0
  if (not (RejOp["X:WezPierwszyRek",""])) goto _show
 _next_rek:
  lp := lp + RejWezP_K["X:BAZA_oprkwt"]
  if (RejOp["X:WezNastepnyRek",""]) goto _next_rek
 _show:
  OkAlert["Suma:"+lp]
  RejOp["X:ZamknijRej",""]
  exitAlg[0]
//
% INT_BAZA-MENU_BLEDY.ALG
//wyswietlenie bledow dla pozycji
  RejOp["C:OtworzRej1",naz_errs]
  if (RejOp["C:PustyRej",""]) goto _pusty
//usatw wartosc filtru
  rek_nr := "INT_BAZA"+ToStr["#RejWezP_K[""B:BAZA_id""]#S:0"]
  RejOp["C:WywolajMenu","3"]
  RejOp["C:ZamknijRej",""]
  ExitAlg[0]
_pusty:
  OkAlert["Nie ma zarejestrowanych b|l|ed|ow"]
  RejOp["C:ZamknijRej",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_BAZA-MENU-? 
//=====================================================
//
//=====================================================
//INT_BAZA-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//******************************P*****************************
% INT_BAZA-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane zapisu"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_BAZA
//
% INT_BAZA-REKORD-1.GUI.DLG
//dodaj
PRZYCISK_CANCELID = 2
%< INT_BAZA-REKORD-0.GUI32.DLG
//
% INT_BAZA-REKORD-0.GUI32.DLG
RESORS = dll\int.dll:INT_BAZA_REKORD1
//zmien
PRZYCISK_CANCELID = 2
%<INT_BAZA-REKORD.GUI32.XXX

  #100                                                      #1            #
                                                            #2            #
                                                        #100
// ------------------------------------------------------------------
% INT_BAZA-REKORD-2.GUI32.DLG
RESORS = dll\int.dll:INT_BAZA_REKORD1_P
//pokaz
PRZYCISK_CANCELID = 3
%<INT_BAZA-REKORD.GUI32.XXX

  #100                                                      
                                                            #3            #
                                                        #100
// ------------------------------------------------------------------

//******************************K*********************************************

% INT_BAZA-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane zapisu"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_BAZA
//
% INT_BAZA-REKORD-1.DLG
//dodaj
PRZYCISK_CANCELID = 2
%< INT_BAZA-REKORD-0.DLG
//
% INT_BAZA-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_BAZA-REKORD.XXX

  #100                                                      #1            #
                                                            #2            #
                                                        #100
// ------------------------------------------------------------------
% INT_BAZA-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_BAZA-REKORD.XXX

  #100                                                      
                                                            #3            #
                                                        #100
// ------------------------------------------------------------------
% TABLICA-AKCJI-INT_BAZA-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_BAZA-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_BAZA-REKORD_AKCEPTUJESZ
//
% INT_BAZA-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","100"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","*"]
  ExitAlg[0]
//
% TABLICA-AKCJI-INT_BAZA-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_BAZA-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_BAZA-REKORD_AKCEPTUJESZ
//
% TABLICA-AKCJI-INT_BAZA-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_BAZA-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_BAZA-REKORD_AKCEPTUJESZ
//
% INT_BAZA-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","1"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_BAZA-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_D["baza_oprdat"] = '')) goto koniec
  OkAlert["Wprowad|x dat|e operacji !"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_BAZA-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
// ==============================================================
// ===== rejestr z danymi bazowymi o kontrahentach
% INT_FIRM.RXR,INT_FIRM.RJR # inicjalizacja rejestru
100
1
"INT_FIRM"
"INT_FIRM"

"Powt|orzony symbol kontrahenta !"
"Zmieniasz symbol kontrahenta ?"
"Czy doda|c tego kontrahenta ?"
"Czy usun|a|c tego kontrahenta ?"
"Czy doda|c nast|epnego kontrahenta ?"
"Kontrahent o podanym symbolu nie istnieje !$Czy doda|c tego kontarhenta ?"
"Nie ma |zadnych kontrahent|ow !"
"Rejestr jest pusty !$Wprowadzasz pierwszy rekord ?"
"Nie ma kontrahenta o podanym symbolu.$Znale|x|c nast|epnego ?"
"%s - nie ma takiego kontrahenta !"
INT_FIRM-WARUNEK
// --------------------------------------------
% INT_FIRM.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,15,,1         # symbol kontrahenta zrodlowy
101,string,15,,2         # symbol dokumentu zrodlowy
110,string,15,,3         # konto kontrahenta Perseus
120,string,15,,4         # symbol kontrahenta Perseus
121,string,15            # NIP
122,string,15            # regon
123,string,11            # pesel
124,string,40            # nazwa kontrahenta 1
125,string,40            # nazwa kontrahenta 2
126,string,40            # kod + miasto
127,string,40            # adres
128,string,40            # nazwa banku
129,string,40            # konto bankowe
130,string,40            # telefon 1
131,string,40            # telefon 2
132,string,40            # fax
133,string,40            # telex
195,string,13,2,         # nip UE
196,string,2,            # kod kraju UE UE
// --------------------------------------------
% INT_FIRM.DIC # slownik pol rekordu
"FIRM_txtkln",100,Estring,"Symbol kontrahenta |xrod|lowy"
"FIRM_txtfak",101,Estring,"Symbol dokumentu |xrod|lowy"
"FIRM_prordz",110,Estring,"Konto kontrahenta Perseus"
"FIRM_prokln",120,Estring,"Symbol kontrahenta Perseus"
"FIRM_pronip",121,Estring,"NIP"
"FIRM_proreg",122,Estring,"Regon"
"FIRM_propes",123,Estring,"Pesel"
"FIRM_pronz1",124,Estring,"Nazwa kontrahenta 1"
"FIRM_pronz2",125,Estring,"Nazwa kontrahenta 2"
"FIRM_promst",126,Estring,"Kod + miasto"
"FIRM_proadr",127,Estring,"Adres"
"FIRM_probnk",128,Estring,"Nazwa banku"
"FIRM_proknt",129,Estring,"Konto bankowe"
"FIRM_protl1",130,Estring,"Telefon 1"
"FIRM_protl2",131,Estring,"Telefon 2"
"FIRM_profax",132,Estring,"Fax"
"FIRM_protlx",133,Estring,"Telex"
"FIRM_pronipue",195,Estring,"NIP UE "
"FIRM_prokodue",196,Estring,"Kod kraju"
// -------------------------------------------
% INT_FIRM.BOX # okienko do wprowadzania i modyfikacji danych
D = "Rejestr INT_FIRM"
"Symbol kontrahenta (|xr|od|lowy):",100,A
"Symbol dokumentu (|xr|od|lowy):",101,A
"",,T
"Konto kontrahenta (Perseus):",110,A
"Symbol kontrahenta (Perseus):",120,A
"NIP kontrahenta:",121,A
"Nazwa 1:",124,A
"Nazwa 2:",125,A
"Kod i miasto:",126,A
"Adres:",127,A
"Bank:",128,A
"Konto bankowe:",129,A
"Telefon 1:",130,A
"Telefon 2:",131,A
"Fax:",132,A
"Telex:",133,A
"Regon:",122,A
"Pesel:",123,A
"NIP UE :",195,A
"Kod kraju :",196,A
// --------------------------------------------
% INT_FIRM-WARUNEK.DIC
"Symbol kontrahenta (|xr|od|lowy):",100
"Symbol dokumentu (|xr|od|lowy):",101
"Konto kontrahenta (Perseus):",110
"Symbol kontrahenta (Perseus):",120
"NIP kontrahenta:",121
// --------------------------------------------
% INT_FIRM.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (FIRM_txtkln = "") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_FIRM.BUT # "buttony" do rejestru 
// Ogladanie konta (z modyfikacja)
"%D%odanie rekordu",5,1
"%M%odyfikacja rekordu",4,1   # modyfikacja
"%U%suni|ecie rekordu",6,1
"Rekord: @        ",7,1
@5,0,1               # Koniec
// --------------------------------------------
% INT_FIRM-WYBIERZ.DIC
"INT_FIRM",0

// --------------------------------------------
% INT_FIRM.MEN # menu z rubrykami
D = 73,"Rejestr INT_FIRM",AB
LINIA-DIALOG = "INT_FIRM-WYBIERZ","Kolumny  do wyboru"  
100,,,,11,"Dane"
101,,,,8,"|xr|od|lowe"
120,,,,11,"Dane"
110,,,,10,"Perseus"
122,,,,11,"Regon"
121,,,,15,"NIP"
123,,,,11,"Pesel"
//
//=====================================================
//INT_FIRM-MENU-? okienka menu_na_rekordy dla roznych trybow rejestr INT_FIRM
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
//**********************************P****************************
% INT_FIRM-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:INT_FIRM_MENU_DEF
%< INT_FIRM-MENU-DEF.XXX
//
% INT_FIRM-MENU-1.GUI32.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_FIRM-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_FIRM_MENU_GORNE-1                     
#101                                                                      #101
#102
                                                                         #102<
 #100                                                                   #

//
//*************************************K******************************************
% INT_FIRM-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane |xr|od|lowe po konwersji z kontrahentami"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,TLD,0,,"Dane  |xr|od|lowe       Dane  Perseus          Regon       NIP            ",,&&lwhite/blue
//
% INT_FIRM_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
//*501,"Operacje"
*4,"Z%m%ie|n"
*5,"%D%odaj"
*6,"%U%su|n"
//
% INT_FIRM_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"Kontrahenta"
9,"%N%ast|epnego kontrahenta"
10,"%F%iltr"
//
//---------------------------
% INT_FIRM-MENU-1.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_FIRM-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_FIRM_MENU_GORNE-1                     
#101                                                                      #101
#102                                                                       
                                                                         #102<
 #100                                                                   #

//
% INT_FIRM_MENU_GORNE-1                          
P =3,,AD
*0,@5
%< INT_FIRM_MENU_GORNE-SRODEK.XXX
%< INT_FIRM_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-INT_FIRM-MENU-1
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_FIRM-MENU_PRZED_WYSW
//
% INT_FIRM-MENU_PRZED_WYSW.ALG
//ustawienie parametrow menu_na_rekordy
  ExDialogOp["UstawMenuParam","100:INT_FIRM,,KLUCZ,1"]
//ustaw naglowek okna
  ExDialogOp["ZmienNaglowek","Dane |xr|od|lowe po konwersji z kontrahentami dla polecenia "+naz_int_nag] 
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
//=====================================================
//KONIEC INT_FIRM-MENU-?
//=====================================================
//
//=====================================================
//INT_FIRM-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//*****************************P*********************************
% INT_FIRM-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane kontrahenta"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_FIRM
//
% INT_FIRM-REKORD-1.GUI32.DLG
//dodaj
PRZYCISK_CANCELID = 2
%< INT_FIRM-REKORD-0.GUI32.DLG
//
% INT_FIRM-REKORD-0.GUI32.DLG
//zmien
RESORS = dll\int.dll:INT_FIRM_REKORD1
PRZYCISK_CANCELID = 2
%<INT_FIRM-REKORD.GUI32.XXX

  #100                                                      #1            #
                                                            #2            #
                                                        #100
// ------------------------------------------------------------------

% INT_FIRM-REKORD-2.GUI32.DLG
//pokaz
RESORS = dll\int.dll:INT_FIRM_REKORD1_P
PRZYCISK_CANCELID = 3
%<INT_FIRM-REKORD.GUI32.XXX

  #100                                                      
                                                            #3            #
                                                        #100
// ------------------------------------------------------------------


% INT_FIRM-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane kontrahenta"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_FIRM
//
% INT_FIRM-REKORD-1.DLG
//dodaj
PRZYCISK_CANCELID = 2
%< INT_FIRM-REKORD-0.DLG
//
% INT_FIRM-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_FIRM-REKORD.XXX

  #100                                                      #1            #
                                                            #2            #
                                                        #100
// ------------------------------------------------------------------
% INT_FIRM-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_FIRM-REKORD.XXX

  #100                                                      
                                                            #3            #
                                                        #100
// ------------------------------------------------------------------
% TABLICA-AKCJI-INT_FIRM-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_FIRM-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_FIRM-REKORD_AKCEPTUJESZ
//
% INT_FIRM-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","100"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","*"]
  ExitAlg[0]
//
% TABLICA-AKCJI-INT_FIRM-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_FIRM-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_FIRM-REKORD_AKCEPTUJESZ
//
% TABLICA-AKCJI-INT_FIRM-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_FIRM-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_FIRM-REKORD_AKCEPTUJESZ
//
% INT_FIRM-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","1"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_FIRM-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["firm_txtkln"] = "")) goto koniec
  OkAlert["Wprowad|x symbol kontrahenta !"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_FIRM-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
// ==============================================================
// ===== rejestr z definicjami ksiegowan
% INT_DEFF.RXR # inicjalizacja rejestru
100
1
"INT_DEFF"
"INT_DEFF"
#
"Powt|orzony symbol dekretu !"
"Zmieniasz definicj|e dekretu ?"
"Czy doda|c t|e definicj|e ?"
"Czy usun|a|c t|e definicj|e ?"
"Czy doda|c nast|epn|a definicj|e ?"
"Definicja o podanym symbolu nie istnieje !$Czy doda|c t|e definicj|e ?"
"Nie ma |zadnych definicji dekret|ow !"
"Tablica definicji dekret|ow jest pusta !$Wprowadzasz pierwsz|a definicj|e ?"
"Nie ma definicji o podanym symbolu dekretu.$Znale|x|c nast|epn|a ?"
"%s - nie ma takiej definicji !"
INT_DEFF-WARUNEK
// --------------------------------------------
% INT_DEFF.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
//magda 2007.04.19 - zmiana dlugosci pola
//100,string,4,2,1,1,,N    # index definicji 
100,string,10,2,1,1,,N    # index definicji 
101,string,50            # tre|s|c operacji
102,dic,,200             # metoda pobierania tre|sci operacji
103,dic,,216             # sposob prezentacji kwoty w zapisie
110,2000                 # prefix konta  Wn
111,dic,,201             # suffix konta  Wn
112,dic,,202             # metoda zakladania konta  Wn
113,dic,,203             # metoda aktualizacji nazwy konta  Wn
120,2002                 # prefix klasyfikacji Wn
121,dic,,201             # suffix klasyfikacji Wn
122,dic,,202             # metoda zakladania klasyfikacji Wn
123,dic,,203             # metoda aktualizacji nazwy klasyfikacji Wn
124,dic,,206             # metoda rejestrowania zapisow na klasyfikacji Wn
130,2100                 # prefix symbolu kontrahenta Wn
131,dic,,201             # suffix symbolu kontrahenta Wn
140,dic,,204             # metoda aktualizacji kontrahenta w KLFILE  Wn
141,dic,,207             # metoda rejestrowania transakcji rozrachunkowych Wn
150,dic,,205             # konto z atrybutem VAT Wn
160,dic,,210             # konto z atrybutem dewizowe Wn
210,2000                 # prefix konta  Ma
211,dic,,201             # suffix konta  Ma
212,dic,,202             # metoda zakladania konta  Ma
213,dic,,203             # metoda aktualizacji nazwy konta  Ma
220,2002                 # prefix klasyfikacji Ma
221,dic,,201             # suffix klasyfikacji Ma
222,dic,,202             # metoda zakladania klasyfikacji Ma
223,dic,,203             # metoda aktualizacji nazwy klasyfikacji Ma
224,dic,,206             # metoda rejestrowania zapisow na klasyfikacji Ma
230,2100                 # prefix symbolu kontrahenta Ma
231,dic,,201             # suffix symbolu kontrahenta Ma
240,dic,,204             # metoda aktualizacji kontrahenta w KLFILE Ma
241,dic,,207             # metoda rejestrowania transakcji rozrachunkowych Ma
250,dic,,205             # konto z atrybutem VAT Ma
260,dic,,210             # konto z atrybutem dewizowe Ma
// --------------------------------------------
% INT_DEFF.DIC # slownik pol rekordu
"DEFF_oprdef",100,Estring      # index definicji
"DEFF_oprnaz",101,Estring      # nazwa operacji
"DEFF_oprtrs",102,Estring      # metoda tworzenia tresci operacji
"DEFF_oprznk",103,Estring      # sposob prezentacji kwoty w zapisie
"DEFF_rdzpfxwn",110,Estring    # prefix konta  Wn
"DEFF_rdzsfxwn",111,Estring    # suffix konta  Wn
"DEFF_rdzaddwn",112,Estring    # metoda zakladania konta  Wn
"DEFF_rdzmodwn",113,Estring    # metoda aktualizacji nazwy konta  Wn
"DEFF_rzlpfxwn",120,Estring    # prefix klasyfikacji Wn
"DEFF_rzlsfxwn",121,Estring    # suffix klasyfikacji Wn
"DEFF_rzladdwn",122,Estring    # metoda zakladania klasyfikacji Wn
"DEFF_rzlmodwn",123,Estring    # metoda aktualizacji nazwy klasyfikacji Wn
"DEFF_rzlmetwn",124,Estring    # metoda rejestrowania zapisow na klasyfikacji Wn
"DEFF_klnpfxwn",130,Estring    # prefix kontrahenta Wn
"DEFF_klnsfxwn",131,Estring    # suffix kontrahenta Wn
"DEFF_rzrmodwn",140,Estring    # metoda aktualizacji kontrahenta w rej.kontr. Wn
"DEFF_rzrmetwn",141,Estring    # metoda rejestrowania transakcji rozrachunkowych Wn
"DEFF_vatmodwn",150,Estring    # konto z atrybutem VAT Wn
"DEFF_dewmodwn",160,Estring    # konto z atrybutem dewizowe Wn
"DEFF_rdzpfxma",210,Estring    # prefix konta  Ma
"DEFF_rdzsfxma",211,Estring    # suffix konta  Ma
"DEFF_rdzaddma",212,Estring    # metoda zakladania konta  Ma
"DEFF_rdzmodma",213,Estring    # metoda aktualizacji nazwy konta  Ma
"DEFF_rzlpfxma",220,Estring    # prefix klasyfikacji Ma
"DEFF_rzlsfxma",221,Estring    # suffix klasyfikacji Ma
"DEFF_rzladdma",222,Estring    # metoda zakladania klasyfikacji MA
"DEFF_rzlmodma",223,Estring    # metoda aktualizacji nazwy klasyfikacji MA
"DEFF_rzlmetma",224,Estring    # metoda rejestrowania zapisow na klasyfikacji Ma
"DEFF_klnpfxma",230,Estring    # prefix kontrahenta Ma
"DEFF_klnsfxma",231,Estring    # suffix kontrahenta Ma
"DEFF_rzrmodma",240,Estring    # metoda aktualizacji kontrahenta w rej.kontr. Ma
"DEFF_rzrmetma",241,Estring    # metoda rejestrowania transakcji rozrachunkowych Ma
"DEFF_vatmodma",250,Estring    # konto z atrybutem VAT Ma
"DEFF_dewmodma",260,Estring    # konto z atrybutem dewizowe Ma
// -------------------------------------------
% INT_DEFF-WARUNEK.DIC
"Symbol dekretu:",100
"Tre|s|c:",101
// --------------------------------------------
% INT_DEFF.MEN # menu z rubrykami
D = 73,"Tablica definicji dekret|ow"
LINIA-DIALOG = REJESTR-DEFF-EDYCJA,"Kolumny dla DEFF"
100,,,,15,"Symbol dekretu"         # symbol dekretu
101,,,,50,"Tre|s|c operacji"         # tresc operacji
% REJESTR-DEFF-EDYCJA.DIC
"INT_DEFF",0
//
//=====================================================
//INT_DEFF-MENU-? okienka menu_na_rekordy dla roznych trybow rejestr INT_DEFF
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
//*****************************************
% INT_DEFF-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:INT_DEFF_MENU_DEF
##0,,ADP,,$$(@3)
##1,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
%< INT_DEFF-MENU-DEF.XXX
//
% INT_DEFF-MENU-0.GUI32.DLG
//wybor wartosci z modyfikacja
PRZYCISK_CANCELID = 3
%< INT_DEFF-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DEFF_MENU_GORNE-0                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//
% INT_DEFF-MENU-1.GUI32.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_DEFF-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DEFF_MENU_GORNE-1                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//
% INT_DEFF-MENU-2.GUI32.DLG
//wybor wartosci z bez modyfikacji
PRZYCISK_CANCELID = 3
%< INT_DEFF-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DEFF_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//
//************************************************************************************8
% INT_DEFF-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Definicje dekret|ow"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,TLD,0,,"Symbol   Tre|s|c operacji",,&&lwhite/blue

//
% INT_DEFF_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
//*501,"Operacje"
*4,"Z%m%ie|n"
*5,"%D%odaj"
*6,"%U%su|n"
//
% INT_DEFF_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"Dekret"
9,"%N%ast|epny dekret"
*503,"Drukuj"
12,"Dekrety"
//
%INT_DEFF_STARE_BUTTONY.XXX
##0,,ADP,,@5		   # "Koniec"
##1,BTG,ADP,,"%W%yb|or"
##2,LBTG,P,,"%O%pis"
##3,,ADP,,@4		# "Rezygnujesz"
##4,LBTG,P,,"Z%m%ie|n"
##5,LBTG,P,,"%D%odaj"
##6,LBTG,P,,"%U%su|n"
##8,LBTG,P,,"%Z%najd|x"
##9,LBTG,P,,"%N%ast|epny"	
##10,LBTG,P,,"%F%iltr"
##12,LBTG,P,,"Druku%j%"
##20,TLD,0,,"      Tablica definicji dekret|ow",,yellow/blue&yellow/blue
#20                                             #

//---------------------------------------------
%INT_DEFF-MENU-KONIEC_STARE.XXX
//koncowe buttony - niezmienne dla wszystkich trybow 
                                                   #2                #
                                                   #6                #
                                                   #8                #
                                                   #9                #
                                                   #12               #
                                                #100
//---------------------------
% INT_DEFF-MENU-SRODEK_STARE.XXX
//---------------------------
//buttony srodkowe - rozne dla roznych trybow 
                                                   --------------------
                                                   #4                #
                                                   #5                #
//---------------------------
% INT_DEFF-MENU-0.DLG
//wybor wartosci z modyfikacja
PRZYCISK_CANCELID = 3
%< INT_DEFF-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DEFF_MENU_GORNE-0                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//
% INT_DEFF_MENU_GORNE-0                          
P =3,,AD
*1,"%W%yb|or"
*3,@4
%< INT_DEFF_MENU_GORNE-SRODEK.XXX
%< INT_DEFF_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% INT_DEFF-MENU-1.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_DEFF-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DEFF_MENU_GORNE-1                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//
% INT_DEFF_MENU_GORNE-1                          
P =3,,AD
*0,@5
%< INT_DEFF_MENU_GORNE-SRODEK.XXX
%< INT_DEFF_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% INT_DEFF-MENU-2.DLG
//wybor wartosci z bez modyfikacji
PRZYCISK_CANCELID = 3
%< INT_DEFF-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DEFF_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//
% INT_DEFF_MENU_GORNE-2                          
P =3,,AD
*1,"%W%yb|or"
*3,@4
%< INT_DEFF_MENU_GORNE-SRODEK.XXX
%< INT_DEFF_MENU_GORNE-KONIEC.XXX
//---------------------------
% TABLICA-AKCJI-INT_DEFF-MENU-0,TABLICA-AKCJI-INT_DEFF-MENU-1,TABLICA-AKCJI-INT_DEFF-MENU-2
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DEFF-MENU_PRZED_WYSW
  "AKCJA-BUTTON12",INT_DEFF-MENU_DRUKUJ
//
% INT_DEFF-MENU_PRZED_WYSW.ALG
//ustawienie parametrow menu_na_rekordy
  ExDialogOp["ZmienNaglowek","Definicje dekret|ow dla polecenia "+naz_int_nag]
  ExDialogOp["UstawMenuParam","100:INT_DEFF,,KLUCZ,1"]
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% INT_DEFF-MENU_DRUKUJ.ALG
//drukowanie dekretow
  naz_deff := "INT_DEFF.RXR" + "+" + naz_kat + "\int_deff"
  naz_slow := "INT_SLOW.RXR" + "+" + naz_kat + "\int_slow"
  IdzDoWydruku["int\int_prtd.drk",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_DEFF-MENU-?
//=====================================================
//
//=====================================================
//INT_DEFF-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
//*******************************************************
% INT_DEFF-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane dekretu dokumentu ksi|egowego"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##10,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLEUNIKALNE:deff_oprdef
##20,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_oprnaz
##30,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_oprtrs
##110,0,D,,,'W',&&lblue/white,&&lblue/lwhite,,,POLE:deff_rdzpfxwn
##111,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rdzsfxwn
##112,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rdzaddwn
##113,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rdzmodwn
##120,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzlpfxwn
##121,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzlsfxwn
##122,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzladdwn
##123,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzlmodwn
##124,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzlmetwn
##130,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_klnpfxwn
##131,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_klnsfxwn
##140,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzrmodwn
##141,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzrmetwn
##150,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_vatmodwn
##160,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_dewmodwn
##210,0,D,,,'M',&&lblue/white,&&lblue/lwhite,,,POLE:deff_rdzpfxma
##211,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rdzsfxma
##212,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rdzaddma
##213,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rdzmodma
##220,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzlpfxma
##221,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzlsfxma
##222,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzladdma
##223,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzlmodma
##224,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzlmetma
##230,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_klnpfxma
##231,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_klnsfxma
##240,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzrmodma
##241,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzrmetma
##250,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_vatmodma
##260,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_dewmodma
##40,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_oprznk
//
% INT_DEFF-REKORD-1.GUI32.DLG
//RESORS = dll\int.dll:INT_DEFF_REKORD_1
//dodaj
PRZYCISK_CANCELID = 2
%< INT_DEFF-REKORD-0.GUI32.DLG
//
% INT_DEFF-REKORD-0.GUI32.DLG
RESORS = dll\int.dll:INT_DEFF_REKORD_1
//zmien
PRZYCISK_CANCELID = 2
%<INT_DEFF-REKORD.GUI32.XXX

 Symbol dekretu: #10      #
 Tre|s|c: #20                                    #
 Parametr tre|sci: #30#
                                             Strona Wn        Strona %M%a
 Prefix konta:                               #110           # #210           #
 Suffix konta:                               #111#            #211#
 Metoda zak|ladania konta:                    #112#            #212#
 Metoda aktualizacji nazwy konta:            #113#            #213#
 Prefix klasyfikacji pomocniczej:            #120     #       #220     #
 Suffix klasyfikacji pomocniczej:            #121#            #221#
 Metoda zak|ladania klasyf. pomocniczej:      #122#            #222#
 Metoda aktualiz. nazwy klasyf. pomocniczej: #123#            #223#
 Metoda rejestr.zapis|ow klasyf. pomocniczej: #124#            #224#
 Prefix kontrahenta:                         #130           # #230           #
 Suffix kontrahenta:                         #131#            #231#
 Metoda aktualiz.kontrah.w rej.kontrah.:     #140#            #240#
 Metoda rejestr.transakcji rozrachunkowych:  #141#            #241#
 Czy jest to konto z atrybutem - VAT ?:      #150#            #250#
 Czy jest to konto z atrybutem - dewizowe ?: #160#            #260#
 
 Spos|ob prezentacji kwoty: #40#


             #1              #         #2              #


//***********************************************************************
% INT_DEFF-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane dekretu dokumentu ksi|egowego"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##10,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLEUNIKALNE:deff_oprdef
##20,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_oprnaz
##30,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_oprtrs
##110,0,D,,,'W',&&lblue/white,&&lblue/lwhite,,,POLE:deff_rdzpfxwn
##111,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rdzsfxwn
##112,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rdzaddwn
##113,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rdzmodwn
##120,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzlpfxwn
##121,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzlsfxwn
##122,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzladdwn
##123,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzlmodwn
##124,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzlmetwn
##130,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_klnpfxwn
##131,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_klnsfxwn
##140,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzrmodwn
##141,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzrmetwn
##150,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_vatmodwn
##160,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_dewmodwn
##210,0,D,,,'M',&&lblue/white,&&lblue/lwhite,,,POLE:deff_rdzpfxma
##211,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rdzsfxma
##212,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rdzaddma
##213,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rdzmodma
##220,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzlpfxma
##221,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzlsfxma
##222,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzladdma
##223,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzlmodma
##224,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzlmetma
##230,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_klnpfxma
##231,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_klnsfxma
##240,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzrmodma
##241,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_rzrmetma
##250,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_vatmodma
##260,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_dewmodma
##40,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:deff_oprznk
//
% INT_DEFF-REKORD-1.DLG
//dodaj
PRZYCISK_CANCELID = 2
%< INT_DEFF-REKORD-0.DLG
//
% INT_DEFF-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_DEFF-REKORD.XXX

 Symbol dekretu: #10      #
 Tre|s|c: #20                                    #
 Parametr tre|sci: #30#
                                             Strona Wn        Strona %M%a
 Prefix konta:                               #110           # #210           #
 Suffix konta:                               #111#            #211#
 Metoda zak|ladania konta:                    #112#            #212#
 Metoda aktualizacji nazwy konta:            #113#            #213#
 Prefix klasyfikacji pomocniczej:            #120     #       #220     #
 Suffix klasyfikacji pomocniczej:            #121#            #221#
 Metoda zak|ladania klasyf. pomocniczej:      #122#            #222#
 Metoda aktualiz. nazwy klasyf. pomocniczej: #123#            #223#
 Metoda rejestr.zapis|ow klasyf. pomocniczej: #124#            #224#
 Prefix kontrahenta:                         #130           # #230           #
 Suffix kontrahenta:                         #131#            #231#
 Metoda aktualiz.kontrah.w rej.kontrah.:     #140#            #240#
 Metoda rejestr.transakcji rozrachunkowych:  #141#            #241#
 Czy jest to konto z atrybutem - VAT ?:      #150#            #250#
 Czy jest to konto z atrybutem - dewizowe ?: #160#            #260#
 
 Spos|ob prezentacji kwoty: #40#


             #1              #         #2              #
// ------------------------------------------------------------------
//****************************************************************
% INT_DEFF-REKORD-2.GUI32.DLG
RESORS = dll\int.dll:INT_DEFF_REKORD_2
//pokaz
PRZYCISK_CANCELID = 3
%<INT_DEFF-REKORD.GUI32.XXX

 Symbol dekretu: #10      #
 Tre|s|c: #20                                    #
 Parametr tre|sci: #30#
                                             Strona Wn        Strona %M%a
 Prefix konta:                               #110           # #210           #
 Suffix konta:                               #111#            #211#
 Metoda zak|ladania konta:                    #112#            #212#
 Metoda aktualizacji nazwy konta:            #113#            #213#
 Prefix klasyfikacji pomocniczej:            #120     #       #220     #
 Suffix klasyfikacji pomocniczej:            #121#            #221#
 Metoda zak|ladania klasyf. pomocniczej:      #122#            #222#
 Metoda aktualiz. nazwy klasyf. pomocniczej: #123#            #223#
 Metoda rejestr.zapis|ow klasyf. pomocniczej: #124#            #224#
 Prefix kontrahenta:                         #130           # #230           #
 Suffix kontrahenta:                         #131#            #231#
 Metoda aktualiz.kontrah.w rej.kontrah.:     #140#            #240#
 Metoda rejestr.transakcji rozrachunkowych:  #141#            #241#
 Czy jest to konto z atrybutem - VAT ?:      #150#            #250#
 Czy jest to konto z atrybutem - dewizowe ?: #160#            #260#
 
 Spos|ob prezentacji kwoty: #40#


                           #3              #
//**************************************************************************
% INT_DEFF-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_DEFF-REKORD.XXX

 Symbol dekretu: #10      #
 Tre|s|c: #20                                    #
 Parametr tre|sci: #30#
                                             Strona Wn        Strona %M%a
 Prefix konta:                               #110           # #210           #
 Suffix konta:                               #111#            #211#
 Metoda zak|ladania konta:                    #112#            #212#
 Metoda aktualizacji nazwy konta:            #113#            #213#
 Prefix klasyfikacji pomocniczej:            #120     #       #220     #
 Suffix klasyfikacji pomocniczej:            #121#            #221#
 Metoda zak|ladania klasyf. pomocniczej:      #122#            #222#
 Metoda aktualiz. nazwy klasyf. pomocniczej: #123#            #223#
 Metoda rejestr.zapis|ow klasyf. pomocniczej: #124#            #224#
 Prefix kontrahenta:                         #130           # #230           #
 Suffix kontrahenta:                         #131#            #231#
 Metoda aktualiz.kontrah.w rej.kontrah.:     #140#            #240#
 Metoda rejestr.transakcji rozrachunkowych:  #141#            #241#
 Czy jest to konto z atrybutem - VAT ?:      #150#            #250#
 Czy jest to konto z atrybutem - dewizowe ?: #160#            #260#
 
 Spos|ob prezentacji kwoty: #40#


                           #3              #
// ------------------------------------------------------------------
% TABLICA-AKCJI-INT_DEFF-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DEFF-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_DEFF-REKORD_AKCEPTUJESZ
//
% TABLICA-AKCJI-INT_DEFF-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DEFF-REKORD-1_PRZED_WYSW
  "AKCJA-BUTTON1",INT_DEFF-REKORD_AKCEPTUJESZ
//
% TABLICA-AKCJI-INT_DEFF-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DEFF-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_DEFF-REKORD_AKCEPTUJESZ
//
% INT_DEFF-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["deff_oprdef"] = "")) goto dalej1
  OkAlert["Wprowad|x symbol dekretu !"]
  ExDialogOp["IdzDoPozycji","10"]
  ExitAlg[0]
dalej1:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
% INT_DEFF-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","10"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","*"]
  ExitAlg[0]
//
% INT_DEFF-REKORD-1_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","10"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","*"]
  ExitAlg[0]
//
% INT_DEFF-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","1"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_DEFF-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
// ==============================================================
// ===== slownik dla przyporzadkowania kodom dekretow
% INT_SLOW.RXR,INT_SLOW.RJR # inicjalizacja rejestru
110
1
"INT_SLOW"
"INT_SLOW"

"Powt|orzony kod operacji !"
"Czy zmieniasz dane ?"
"Czy doda|c t|e operacj|e ?"
"Czy usun|a|c t|e operacj|e ?"
"Czy doda|c nast|epn|a operacj|e ?"
"Operacja o podanym kodzie nie istnieje !$Czy doda|c t|e operacj|e ?"
"Nie ma |zadnych operacji ksi|egowych !"
"Tablica operacji ksi|egowych jest pusta !$Wprowadzasz pierwsz|a operacj|e ?"
"Nie ma operacji o podanym kodzie.$Znale|x|c nast|epn|a ?"
"%s - nie ma takiej operacji !"
INT_SLOW-WARUNEK
// --------------------------------------------
% INT_SLOW.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,40,2,1,,N     # slow_kod - Kod operacji
101,string,50            # slow_naz - nazwa operacji
//magda 2007.04.19 - zmiana dlugosci pola
//110,string,4,2           # slow_def - index definicji dekretu
110,string,10,2           # slow_def - index definicji dekretu
111,dic,,212             # slow_znk =- konwersja znaku kwoty na przeciwny
// --------------------------------------------
% INT_SLOW.DIC # slownik pol rekordu
"SLOW_kod",100,Estring   # Kod operacji
"SLOW_naz",101,Estring   # nazwa operacji
"SLOW_def",110,Estring   # index definicji dekretu
"SLOW_znk",111,Estring   # konwersja znaku kwoty na przeciwny
// -------------------------------------------
% INT_SLOW.BOX # okienko do wprowadzania i modyfikacji danych
D = "S|lownik operacji ksi|egowych"
"Index definicji dekretu:",110,A
"Konwersja znaku kwoty na przeciwny:",111,A
"Kod operacji:",100
"Nazwa operacji:",101
// --------------------------------------------
% INT_SLOW.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (SLOW_kod = "") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// -------------------------------------------
% INT_SLOW-WARUNEK.DIC
"Kod operacji:",100
"Nazwa operacji:",101
"Index definicji dekretu:",110
// --------------------------------------------
% INT_SLOW.BUT # "buttony" do rejestru 
// Ogladanie konta (z modyfikacja)
//"%D%odanie operacji",5,1
"%M%odyfikacja operacji",4,1   # modyfikacja
"%U%suni|ecie operacji",6,1
"Operacja: @        ",7,1
@5,0,1               # Koniec
// Ogladanie (z modyfikacja)
"%M%odyfikacja operacji",4,2   # modyfikacja
"%U%suni|ecie operacji",6,2
"Operacja: @        ",7,2
@5,0,2               # Koniec
// przegladanie - do raportowania
@5,0,3               # Koniec
// --------------------------------------------
% INT_SLOW_1.MEN # menu z rubrykami dla rej RXR
D = 73,"Tablica polece|n ksi|egowania"
LINIA-DIALOG = REJESTR-SLOW-EDYCJA,"Kolumny dla SLOW"
110,,,,10,"Dekret"          # index definicji dekretu
111,,,,10,"Znak kwoty"     # zmiana znaku kwoty
100,,,,25,"Kod operacji"   # identyfikator operacji (index)
101,,,,25,"Nazwa operacji"   # nazwa operacji
// --------------------------------------------
% INT_SLOW.MEN # menu z rubrykami dla rej RJR
//D = 65,"Lista dokument|ow za us|lugi (../4/M)"
D = 65,"Lista "
LINIA-DIALOG = REJESTR-SLOW-EDYCJA,"Kolumny dla SLOW"
100,,,,10,"Numer "   # symbol dokumentu 
110,,,,10,"Data"     # data dokumentu
101,,,,45,"Nazwa"    # nazwa kontrahneta
% REJESTR-SLOW-EDYCJA.DIC
"INT_SLOW,0
//
//=====================================================
//INT_SLOW-MENU-? okienka menu_na_rekordy dla roznych trybow rejestr INT_SLOW
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
//**********************************P********************************
% INT_SLOW-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:INT_SLOW_MENU_DEF
%< INT_SLOW-MENU-DEF.XXX
//
% INT_SLOW-MENU-2.GUI32..DLG
//modyfikacja bez dodawania
//specjalnie tryb "2" zeby przy pustym rejestrze nie wymuszal
//wprowadzania nowego rekordu!!!!
%< INT_SLOW-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_SLOW_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//
//**********************************K********************************
% INT_SLOW-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
PRZYCISK_CANCELID = 0
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Operacje ksi|egowe"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,TLD,0,,"Dekret     Znak kwoty Kod operacji         Nazwa operacji",,&&lwhite/blue

//
% INT_SLOW_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
//*501,"Operacje"
*4,"Z%m%ie|n"
*6,"%U%su|n"
//
% INT_SLOW_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"Operacj|e"
9,"%N%ast|epn|a operacj|e"
//
//---------------------------
% INT_SLOW-MENU-2.DLG
//modyfikacja bez dodawania
//specjalnie tryb "2" zeby przy pustym rejestrze nie wymuszal
//wprowadzania nowego rekordu!!!!
%< INT_SLOW-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_SLOW_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//
% INT_SLOW_MENU_GORNE-2                          
P =3,,AD
*0,@5
%< INT_SLOW_MENU_GORNE-SRODEK.XXX
%< INT_SLOW_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-INT_SLOW-MENU-2
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_SLOW-MENU_PRZED_WYSW
//
% INT_SLOW-MENU_PRZED_WYSW.ALG
//ustawienie parametrow menu_na_rekordy
  ExDialogOp["UstawMenuParam","100:INT_SLOW_1,,KLUCZ,1"]
//ustaw naglowek okna 
  ExDialogOp["ZmienNaglowek","Operacje ksi|egowe dla polecenia "+naz_int_nag]
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
//=====================================================
//KONIEC INT_SLOW-MENU-?
//=====================================================
//
//=====================================================
//INT_SLOW-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
//*****************************P********************************
% INT_SLOW-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane operacji ksi|egowej"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##202,DZ,ADPH,,
##20,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:slow_def
##21,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:slow_znk
##22,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:slow_kod
##23,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:slow_naz
##31,TLD,0,,"ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-",,yellow/black&yellow/black&blue/white
//
% INT_SLOW-REKORD-1.GUI32.DLG
RESORS = dll\int.dll:INT_SLOW_REKORD
//dodaj
%< INT_SLOW-REKORD-0.GUI32.DLG
//
% INT_SLOW-REKORD-0.GUI32.DLG
RESORS = dll\int.dll:INT_SLOW_REKORD_P
//zmien
PRZYCISK_CANCELID = 2
%<INT_SLOW-REKORD.GUI32.XXX

 #202
  Symbol dekretu: ............................ #20      #      #1         #
  Konwersja znaku kwoty na przeciwny: ................ #21#<  
  #31                                                  #
  Kod operacji: ........... #22                          #     #2         #
  Nazwa: #23                                             ##202

//-----------------------------------------------------------
% INT_SLOW-REKORD-2.GUI32.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_SLOW-REKORD.GUI32.XXX

 #202
  Symbol dekretu: ............................ #20      # 
  Konwersja znaku kwoty na przeciwny: ................ #21#< 
  #31                                                  #     #3            #
  Kod operacji: ........... #22                          #     
  Nazwa: #23                                             ##202

//-----------------------------------------------------------
//******************************K******************************

% INT_SLOW-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane operacji ksi|egowej"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##202,DZ,ADPH,,
##20,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:slow_def
##21,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:slow_znk
##22,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:slow_kod
##23,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:slow_naz
##31,TLD,0,,"ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-",,yellow/black&yellow/black&blue/white
//
% INT_SLOW-REKORD-1.DLG
//dodaj
%< INT_SLOW-REKORD-0.DLG
//
% INT_SLOW-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_SLOW-REKORD.XXX

 #202
  Symbol dekretu: ............................ #20      #      #1         #
  Konwersja znaku kwoty na przeciwny: ................ #21#<  
  #31                                                  #
  Kod operacji: ........... #22                          #     #2         #
  Nazwa: #23                                             ##202

//-----------------------------------------------------------
% INT_SLOW-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_SLOW-REKORD.XXX

 #202
  Symbol dekretu: ............................ #20      # 
  Konwersja znaku kwoty na przeciwny: ................ #21#< 
  #31                                                  #     #3            #
  Kod operacji: ........... #22                          #     
  Nazwa: #23                                             ##202

//-----------------------------------------------------------
//
% TABLICA-AKCJI-INT_SLOW-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_SLOW-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_SLOW-REKORD_AKCEPTUJESZ
  "AKCJA-F2-POLE20",INT_SLOW-REKORD_WYBOR
  "AKCJA-PO-POLU20",INT_SLOW-REKORD_SPR_DEF
//
% INT_SLOW-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","20"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","20"]
  ExDialogOp["PozycjaWprowadzana","21"]
  ExDialogOp["PozycjaNieWprowadzana","22"]
  ExDialogOp["PozycjaNieWprowadzana","23"]
  ExitAlg[0]
//
% INT_SLOW-REKORD_WYBOR.ALG
//F2 wybor symbolu dekretu ksiegowego
  D_STRING := RejWezP_S["slow_def"]
  RejOp["X:OtworzRejSprawdz",naz_deff]
  RejOp["X:ZnajdzRek",D_STRING] 
  if (not(RejOp["X:WywolajMenuX","2"])) goto wy2
  D_STRING := RejWezP_S["X:deff_oprdef"]
wy2:
  RejOp["X:ZamknijRej",""]
  ExDialogOp["WyswietlPozycje","20"]
  ExitAlg[0]
//
% INT_SLOW-REKORD_SPR_DEF.ALG
//po polu symbol dekretu - sprawdzic czy jest ten symbol w INT_DEFF
  A_OK := .T.
  if (not(RejWezP_S["slow_def"] = "")) goto spr
  ExitAlg[0]
spr:
  if (RejWezP_S["slow_def"] = "#") ExitAlg[0]
  D_STRING := RejWezP_S["slow_def"]
  RejOp["X:OtworzRejSprawdz",naz_deff]
  if (RejOp["X:ZnajdzRek",D_STRING] ) goto koniec
//blad: nie znaleziono symbolu dekretu
  A_OK := .N.
  OkAlert["Nie znaleziono symbolu dekretu: "+D_STRING+"$w tablicy definicji dekret|ow!"]
  ExDialogOp["IdzDoPozycji","20"]
koniec:
  RejOp["X:ZamknijRej",""]
  ExitAlg[0]
//
% TABLICA-AKCJI-INT_SLOW-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_SLOW-REKORD-1_PRZED_WYSW
  "AKCJA-BUTTON1",INT_SLOW-REKORD_AKCEPTUJESZ
//
% INT_SLOW-REKORD-1_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","20"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","20"]
  ExDialogOp["PozycjaWprowadzana","21"]
  ExDialogOp["PozycjaNieWprowadzana","22"]
  ExDialogOp["PozycjaNieWprowadzana","23"]
  ExitAlg[0]
//
% TABLICA-AKCJI-INT_SLOW-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_SLOW-REKORD-2_PRZED_WYSW
//  "AKCJA-BUTTON1",INT_SLOW-REKORD_AKCEPTUJESZ
//
% INT_SLOW-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","1"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_SLOW-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["slow_def"] = "")) goto koniec
  OkAlert["Wprowad|x symbol dekretu !"]
  ExDialogOp["IdzDoPozycji","20"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_SLOW-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
// ==============================================================
// = slownik substytutow klasyfikacji  i kontrahentow 
% INT_ROZR.RXR # inicjalizacja rejestru
110
1
"INT_ROZR"
"INT_ROZR"

"Powt|orzony symbol konta !"
"Zmieniasz dane konta ?"
"Czy doda|c to konto ?"
"Czy usun|a|c to konto ?"
"Czy doda|c nast|epne konto ?"
"Konto o podanym symbolu nie istnieje !$Czy doda|c to konto ?"
"Nie ma |zadnych kont !"
"Tablica zamiennik|ow kont jest pusta !$Wprowadzasz pierwsze konto ?"
"Nie ma konta o podanym symbolu.$Znale|x|c nast|epne ?"
"%s - nie ma takiego konta !"
INT_ROZR-WARUNEK
// --------------------------------------------
% INT_ROZR.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,20,2,1,,N     # suff_kod suffix konta  - zrodlowy
110,string,20,2,2        # suff_rodz suffix konta  - zamiennik
111,string,20,2,3        # suff_ktr suffix kontrahenta - zamiennik
102,string,50            # suff_naznazwa konta  - zrodlowa
103,string,50            # adres kontrahenta - zrodlowy
104,string,14            # NIP kontrahenta - zrodlowy
// --------------------------------------------
% INT_ROZR.DIC # slownik pol rekordu
"SUFF_kod",100,Estring   # suffix konta - zrodlowy
"SUFF_rdz",110,Estring   # suffix konta  - zamiennik
"SUFF_ktr",111,Estring   # suffix kontrahenta - zamiennik
"SUFF_naz",102,Estring   # nazwa konta  - zrodlowa
"SUFF_adr",103,Estring   # adres kontrahenta - zrodlowy
"SUFF_nip",104,Estring   # NIP kontrahenta - zrodlowy
// --------------------------------------------
% INT_ROZR-WARUNEK.DIC
"Suffix konta - zamiennik:",110
"Suffix konta - |xr|od|lowy:",100
"Suffix kontrahenta - zamiennik:",111
"Nazwa:",102
"Adres:",103
"NIP:",104
// --------------------------------------------
% INT_ROZR.MEN
D = 73,"",AB
LINIA-DIALOG = REJESTR-ROZR-EDYCJA,"Kolumny dla ROZR"
110,,,,15,"Konto zamiennik"   # symbol konta  (zamiennik)
111,,,,20,"Kontrahent-zamiennik"   # symbol kontrahenta (zamiennik)
100,,,,15,"Konto-|xr|od|lowy"   # symbol konta  (zrodlowy)
104,,,,13,"Nip"        # NIP zrodlowy
102,,,,50,"Nazwa"         # nazwa
% REJESTR-ROZR-EDYCJA.DIC
"INT_ROZR",0
//
//=====================================================
//INT_ROZR-MENU-? okienka menu_na_rekordy dla roznych trybow rejestru INT_ROZR
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
//******************************P*****************************
% INT_ROZR-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:INT_ROZR_MENU_DEF
%< INT_ROZR-MENU-DEF.XXX

% INT_ROZR-MENU-2.GUI32.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_ROZR-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_ROZR_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20      # #21        # #22        #   #23                             #
                                                                         #102<
 #100                                                                   #
//
% INT_ROZR-MENU-1.GUI32.DLG
//przegladanie - do rejtmp
PRZYCISK_CANCELID = 0
%< INT_ROZR-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_ROZR_MENU_GORNE-1                     
#101                                                                      #101
#102
 #20      # #21        # #22        #   #23                             #
                                                                         #102<
 #100                                                                   #

//


//*********************************K*************************************
% INT_ROZR-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"S|lownik zamiennik|ow kont i kontrahent|ow"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,B,0,,"Konto",,&&lwhite/blue,&&lwhite/blue,,,ZMIENNA:kntr_numer_klucza,,A,1,"2"
##21,B,0,,"Kontrahent",,&&lwhite/blue,&&lwhite/blue,,,ZMIENNA:kntr_numer_klucza,,,1,"3"
##22,B,0,,"|Xr|od|lowy",,&&lwhite/blue,&&lwhite/blue,,,ZMIENNA:kntr_numer_klucza,,,1,"1"
##23,TLD,0,,"NIP            Nazwa",,&&lwhite/blue
//##20,TLD,0,,"Zamiennik    |Xrod|lowy     NIP            Nazwa",,&&lwhite/blue
//
% INT_ROZR_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
//*501,"Operacje"
*4,"Z%m%ie|n"
*6,"%U%su|n"
//
% INT_ROZR_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"Konto"
9,"%N%ast|epne konto"
10,"%F%iltr"
*504,"Druku%j%"
*503,"Operacje pozosta|le"
15,"Zmie|n klucz"
16,"Wyczy|s|c s|lownik"
17,"Utw|orz konta"
18,"Wyczy|s|c konta"
19,"Utw|orz symbole kontrahent|ow"
//
//---------------------------
% INT_ROZR-MENU-2.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_ROZR-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_ROZR_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20      # #21        # #22        #   #23                             #
                                                                         #102<

 #100                                                                   #

//
% INT_ROZR_MENU_GORNE-2                          
P =3,,AD
*0,@5
%< INT_ROZR_MENU_GORNE-SRODEK.XXX
%< INT_ROZR_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-INT_ROZR-MENU-2
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_ROZR-MENU_PRZED_WYSW
  "AKCJA-BUTTON15",INT_ROZR-MENU_ZMIEN_KLUCZ
  "AKCJA-BUTTON16",INT_ROZR-MENU_WYCZYSC
  "AKCJA-BUTTON17",INT_ROZR-MENU_UTWORZ
  "AKCJA-BUTTON18",!SL.INTERFEJS->int_rozr_menu_wyczysc_konta
  "AKCJA-BUTTON19",!SL.INTERFEJS->int_rozr_menu_utworz_symbole
  "AKCJA-BUTTON20",INT_ROZR-ZMIANA-KLUCZA
  "AKCJA-BUTTON21",INT_ROZR-ZMIANA-KLUCZA
  "AKCJA-BUTTON22",INT_ROZR-ZMIANA-KLUCZA
  "AKCJA-BUTTON504",INT_ROZR-MENU-DRUKUJ
//
//---------------------------
% INT_ROZR-MENU-1.DLG
//przegladanie - do rejtmp
PRZYCISK_CANCELID = 0
%< INT_ROZR-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_ROZR_MENU_GORNE-1                     
#101                                                                      #101
#102
 #20      # #21        # #22        #   #23                             #
                                                                         #102<
 #100                                                                   #

//
% INT_ROZR_MENU_GORNE-1                          
P =3,,AD
*0,@5
*2,"%P%oka|z"
*502,"Znajd|x"
8,"Konto"
9,"%N%ast|epne konto"
10,"%F%iltr"
*503,"Operacje pozosta|le"
15,"Zmie|n klucz"
//
//---------------------------
% TABLICA-AKCJI-INT_ROZR-MENU-1
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_ROZR-MENU_PRZED_WYSW_1
  "AKCJA-BUTTON15",INT_ROZR-MENU_ZMIEN_KLUCZ
  "AKCJA-BUTTON20",INT_ROZR-ZMIANA-KLUCZA
  "AKCJA-BUTTON21",INT_ROZR-ZMIANA-KLUCZA
  "AKCJA-BUTTON22",INT_ROZR-ZMIANA-KLUCZA
//
% INT_ROZR-MENU_PRZED_WYSW_1.ALG
//pobierz numer klucza do wywietlania
  kntr_numer_klucza := 2
  rozr_kontr := 2
  rozr_konto := ""
  rozr_znak := 1
  if (RejWezP_S["R:dekr_srt"]="Z") kntr_numer_klucza := 1
//ustawienie parametrow menu_na_rekordy
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
  if (kntr_numer_klucza = 3) goto _klucz3
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_ROZR,,KLUCZ,1"]
  goto kont
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_ROZR,,KLUCZ,2"]
  goto kont
_klucz3:
  ExDialogOp["UstawMenuParam","100:INT_ROZR,,KLUCZ,3"]
  goto kont
kont:
//ustaw naglowek okna
  ExDialogOp["ZmienNaglowek","Powt|orzone zamienniki dla polecenia "+naz_int_nag] 
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% INT_ROZR-MENU_PRZED_WYSW.ALG
//pobierz numer klucza do wywietlania
  kntr_numer_klucza := 2
  rozr_kontr := 2
  rozr_konto := ""
  rozr_znak := 1
  if (RejWezP_S["R:dekr_srt"]="Z") kntr_numer_klucza := 1
//ustawienie parametrow menu_na_rekordy
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
  if (kntr_numer_klucza = 3) goto _klucz3
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_ROZR,,KLUCZ,1"]
  goto kont
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_ROZR,,KLUCZ,2"]
  goto kont
_klucz3:
  ExDialogOp["UstawMenuParam","100:INT_ROZR,,KLUCZ,3"]
  goto kont
kont:
//ustaw naglowek okna
  ExDialogOp["ZmienNaglowek","S|lownik zamiennik|ow kont i kontrahent|ow dla polecenia "+naz_int_nag] 
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% INT_ROZR-MENU_ZMIEN_KLUCZ.ALG
//wywolaj okienko dialogowe do wybrania klucza sortowania
  ExDialogOp["IdzDoDialogu","ROZR_KLUCZ"]
  if (D_POS=91) ExitAlg[0]
  CallAlg["INT_ROZR-ZMIANA-KLUCZA"]
//
% INT_ROZR-ZMIANA-KLUCZA.ALG
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
  if (kntr_numer_klucza = 3) goto _klucz3
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_ROZR,,KLUCZ,1"]
  goto _koniec
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_ROZR,,KLUCZ,2"]
  goto _koniec
_klucz3:
  ExDialogOp["UstawMenuParam","100:INT_ROZR,,KLUCZ,3"]
  goto _koniec
_koniec:
  ExDialogOp["WyswietlPozycje","100"]
//odswiez ptaszki na ekranie
  ExDialogOp["ZmienWartoscGrupy","1"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
//
% INT_ROZR-MENU-DRUKUJ.ALG
//drukuj slownik kont i kontrahentow
  zmenu := .T.
  naz_plik := "INT_ROZR.RXR" + "+" + naz_kat + "\int_rozr"
  IdzDoWydruku["int\int_prts.drk",""]
  ExitAlg[0]
//
% INT_ROZR-MENU_WYCZYSC.ALG
  if (not(YesAlert["Ta operacja spowoduje bezpowrotne wymazanie danych$ze s|lownika zamiennik|ow kont i kontrahent|ow$Kontynuowa|c?"])) ExitAlg[0]
  RejOp["WyczyscRej",""]
  ExDialogOp["WyswietlPozycje","100"]
  ExitAlg[0]
//
% INT_ROZR-MENU_UTWORZ.ALG
//wywolaj okienko dialogowe do tworzenia symboli kont
  ExDialogOp["IdzDoDialogu","ROZR_UTWORZ"]
  if (D_POS=91) ExitAlg[0]
  if (not(yesalert["Tworzy|c symbole kont ?"])) ExitAlg[0]
  ustawczekajinfo["start2","Tworzenie symboli kont"]
//  rejop["xx:otworzrej1","INT_ROZR.RXR"]
  nr_kl := rejwezp_k["o:szukajklucz"]
  rejop["o:zmienkluczrej","0"]
  rejop["o:wezpierwszyrek",""]
next:
  ustawczekajinfo["nastepny","Kontrahent: "+rejwezp_s["o:suff_naz"]]
  if (not(pustepole["o:suff_rdz"])) goto kont
  if (rozr_kontr = 1) goto d1
//spr czy kod ma spacje i czy nie jest pusty
  kod := rejwezp_s["o:suff_ktr"]
//madzia - dodalam wyciananie symbolu zamiennika od znaku
// rozr_znak - od którego znaku. gdy rozr_znak = pusty, 0 lub 1 => symbol zamiennika niezamienny
  if (rozr_znak=.) rozr_znak := 1
  if (rozr_znak=0) rozr_znak := 1
  kod := StrCut[kod,rozr_znak-1,StrLen[kod]-rozr_znak+1]
//okalert["kod="+kod]
  if (CallAlg["JEST_SPACJA"] = 1) rejwstawp_s["o:suff_rdz",rozr_konto+kod]
  goto kont
d1:
//spr czy kod ma spacje i czy nie jest pusty
  kod := rejwezp_s["o:suff_kod"]
  if (CallAlg["JEST_SPACJA"] = 1) rejwstawp_s["o:suff_rdz",rozr_konto+rejwezp_s["o:suff_kod"]]
kont:
  if (rejop["o:weznastepnyrek",""]) goto next
//  rejop["xx:zamknijrej",""]
  ustawczekajinfo["stop",""]
  rejop["o:zmienkluczrej",ToStr["#nr_kl#S:0"]]
  ExDialogOp["WyswietlPozycje","100"]
//
//----------------------------------------------------------------
//okienko z do zmiany klucza sortowania ROZR_KLUCZ
//----------------------------------------------------------------
//
% ROZR_KLUCZ.DLG
PRZYCISK_CANCELID = 91
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wybierz kolejno|s|c wy|swietlania "
##90,,ADP,,@3
##91,,ADP,,@4
##20,0,P,,"Wed|lug symboli |xr|od|lowych kont",,,,,,ZMIENNA:kntr_numer_klucza,,A,1,1
##21,0,P,,"Wed|lug symboli zamiennik|ow kont",,,,,,ZMIENNA:kntr_numer_klucza,,,1,2
##22,0,P,,"Wed|lug symboli zamiennik|ow kontrahent|ow",,,,,,ZMIENNA:kntr_numer_klucza,,,1,3


	#20                                       #
	#21                                       #
	#22                                       #


      #90             #              #91             #
//-----------------------------------------------------------
//
% TABLICA-AKCJI-ROZR_KLUCZ	
  "AKCJA-PRZED-WYSWIETLENIEM",ROZR_KLUCZ_PRZED_WYSW
  "AKCJA-BUTTON91",ROZR_KLUCZ_AKCEPT
//
% ROZR_KLUCZ_PRZED_WYSW.ALG
  if (kntr_numer_klucza = 1) goto pm1
  if (kntr_numer_klucza = 2) goto pm2
  if (kntr_numer_klucza = 3) goto pm2
pm1:
  ExDialogOp["IdzDoPozycji","20"]
  ExitAlg[0]
pm2:
  ExDialogOp["IdzDoPozycji","21"]
  ExitAlg[0]
pm3:
  ExDialogOp["IdzDoPozycji","22"]
  ExitAlg[0]
//
% ROZR_KLUCZ_AKCEPT.ALG
  ExDialogOp["KoniecWykonywania",""]
//
//----------------------------------------------------------------
//KONIEC okienko z do zmiany klucza sortowania ROZR_KLUCZ
//----------------------------------------------------------------
//
//----------------------------------------------------------------
//okienko z do tworzenia kont w  ROZR_KLUCZ
//----------------------------------------------------------------
//
% ROZR_UTWORZ.DLG
PRZYCISK_CANCELID = 91
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Automatyczne tworzenie symboli kont "
##90,,ADP,,@3
##91,,ADP,,@4
##25,0,AD,,,,&&lblue/white,&&lblue/lwhite,,,ZMIENNA:rozr_konto,string:2
##20,0,P,,"Wed|lug symboli |xr|od|lowych kontrahent|ow",,,,,,ZMIENNA:rozr_kontr,,A,1,1
##21,0,P,,"Wed|lug symboli zamiennik|ow kontrahent|ow",,,,,,ZMIENNA:rozr_kontr,,,1,2
##22,0,D,,,,&&lblue/white,&&lblue/lwhite,,,ZMIENNA:rozr_znak,byte
##201,DZ,ADPH,,"Tworzenie symboli kont: "  


    Podaj suffix konta:     #25          #


   #201
     #20                                      #
     #21                                      #(od znaku numer: #22#<)
	                                                                       #201<


     #90             #             #91             #
//-----------------------------------------------------------
//
% TABLICA-AKCJI-ROZR_UTWORZ	
  "AKCJA-PRZED-WYSWIETLENIEM",ROZR_UTWORZ_PRZED_WYSW
  "AKCJA-BUTTON90",ROZR_UTWORZ_AKCEPT
  "AKCJA-BUTTON91",ROZR_UTWORZ_REZYGN
  "AKCJA-BUTTON21",ROZR_UTWORZ_ZNAK
  "AKCJA-F2-POLE25",ROZR_UTWORZ_F2_POLE25
//
% ROZR_UTWORZ_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","25"]
  ExitAlg[0]
//
% ROZR_UTWORZ_AKCEPT.ALG
  if (not (rozr_konto = "")) goto koniec
  if (YesNAlert["Suffix konta pusty!$Czy tak ma zosta|c ?"]) goto koniec
//  OkAlert["Wprowad|x suffix konta!"]
  ExDialogOp["IdzDoPozycji","25"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
//
% ROZR_UTWORZ_REZYGN.ALG
  ExDialogOp["KoniecWykonywania",""]
//
% ROZR_UTWORZ_F2_POLE25.ALG
//podpowiedz symbol konta 
  FinnOp["@3OpenMainX",""]
  kod_kont := rozr_konto
  D_STRING := kod_kont
  D_STRING := WybierzFinn["PlanRodz"]
  if (D_STRING = "") D_STRING := kod_kont
  FinnOp["Close",""]
//
//----------------------------------------------------------------
//KONIEC okienko z do tworzenia kont w  ROZR_KLUCZ
//----------------------------------------------------------------
//
//=====================================================
//KONIEC INT_ROZR-MENU-?
//=====================================================
//
//=====================================================
//INT_ROZR-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
//*****************P**********************************
% INT_ROZR-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane konta i kontrahenta"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##202,DZ,ADPH,,
##20,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_rdz
##21,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_ktr
##22,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_kod
##23,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_naz
##24,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_adr
##25,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_nip
##31,TLD,0,,"ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-",,yellow/black&yellow/black&blue/white
//
% INT_ROZR-REKORD-0.GUI32.DLG
RESORS = dll\int.dll:INT_ROZR_REKORD
//zmien
PRZYCISK_CANCELID = 2
%<INT_ROZR-REKORD.GUI32.XXX

 #202
  Suffix konta - zamiennik: ......... #20                #   
  Suffix kontrahenta - zamiennik: ... #21                #    #1           #
  #31                                                  #
  Suffix kontrahenta - |xr|od|lowy: .... #22                # 
  Nazwa: #23                                             #
  Adres: #24                                             #    #2           #
  NIP: .................................... #25          ##202
// ------------------------------------------------------------------
% INT_ROZR-REKORD-2.GUI32.DLG
RESORS = dll\int.dll:INT_ROZR_REKORD_P
//pokaz
PRZYCISK_CANCELID = 3
%<INT_ROZR-REKORD.GUI32.XXX

 #202
  Suffix konta - zamiennik: ......... #20                #   
  Suffix kontrahenta - zamiennik: ... #21                #   
  #31                                                  #      #3           #
  Suffix kontrahenta - |xr|od|lowy: .... #22                # 
  Nazwa: #23                                             #
  Adres: #24                                             #
  NIP: .................................... #25          ##202
// ------------------------------------------------------------------

//***************************K***************************************
% INT_ROZR-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane konta i kontrahenta"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##202,DZ,ADPH,,
##20,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_rdz
##21,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_ktr
##22,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_kod
##23,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_naz
##24,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_adr
##25,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_nip
##31,TLD,0,,"ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-",,yellow/black&yellow/black&blue/white
//
% INT_ROZR-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_ROZR-REKORD.XXX

 #202
  Suffix konta - zamiennik: ......... #20                #   
  Suffix kontrahenta - zamiennik: ... #21                #    #1           #
  #31                                                  #
  Suffix kontrahenta - |xr|od|lowy: .... #22                # 
  Nazwa: #23                                             #
  Adres: #24                                             #    #2           #
  NIP: .................................... #25          ##202
// ------------------------------------------------------------------
% INT_ROZR-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_ROZR-REKORD.XXX

 #202
  Suffix konta - zamiennik: ......... #20                #   
  Suffix kontrahenta - zamiennik: ... #21                #   
  #31                                                  #      #3           #
  Suffix kontrahenta - |xr|od|lowy: .... #22                # 
  Nazwa: #23                                             #
  Adres: #24                                             #
  NIP: .................................... #25          ##202
// ------------------------------------------------------------------
% TABLICA-AKCJI-INT_ROZR-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_ROZR-REKORD-0_PRZED_WYSW
  "AKCJA-F2-POLE20",INT_ROZR-REKORD_F2_POLE20
  "AKCJA-F2-POLE21",INT_ROZR-REKORD_F2_POLE21
  "AKCJA-PO-POLU20",!SL.INTERFEJS->int_rozr_rekord_po_polu20
  "AKCJA-PO-POLU21",!SL.INTERFEJS->int_rozr_rekord_po_polu21
  "AKCJA-BUTTON1",INT_ROZR-REKORD_AKCEPTUJESZ
//
% INT_ROZR-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","20"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","20"]
  ExDialogOp["PozycjaWprowadzana","21"]
  ExDialogOp["PozycjaNiewprowadzana","22"]
  ExDialogOp["PozycjaNiewprowadzana","23"]
  ExDialogOp["PozycjaNiewprowadzana","24"]
  ExDialogOp["PozycjaNiewprowadzana","25"]
  ExitAlg[0]
//
// ------------------------------
% TABLICA-AKCJI-INT_ROZR-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_ROZR-REKORD-0_PRZED_WYSW
  "AKCJA-F2-POLE20",INT_ROZR-REKORD_F2_POLE20
  "AKCJA-F2-POLE21",INT_ROZR-REKORD_F2_POLE21
  "AKCJA-PO-POLU20",!SL.INTERFEJS->int_rozr_rekord_po_polu20
  "AKCJA-PO-POLU21",!SL.INTERFEJS->int_rozr_rekord_po_polu21
  "AKCJA-BUTTON1",INT_ROZR-REKORD_AKCEPTUJESZ
//
// ------------------------------
% TABLICA-AKCJI-INT_ROZR-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_ROZR-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_ROZR-REKORD_AKCEPTUJESZ
//
% INT_ROZR-REKORD_F2_POLE20.ALG
//podpowiedz symbol konta 
  FinnOp["@3OpenMainX",""]
  kod_kont := RejWezP_S["suff_rdz"]
  D_STRING := kod_kont
  D_STRING := WybierzFinn["PlanRodz"]
  if (D_STRING = "") D_STRING := kod_kont
  RejWstawP_S["suff_rdz",kod_kont]
  FinnOp["Close",""]
//
% INT_ROZR-REKORD_F2_POLE21.ALG
//podpowiedz z rej kontrahentow
  FinnOp["@3OpenMainX",""]
  kod_ktr := RejWezP_S["suff_ktr"]
  naz_ktr := RejWezP_S["suff_naz"]
  D_STRING := kod_ktr
  D_STRING := WybierzFinn["RejestrKlientow"]
  if (D_STRING = "") D_STRING := kod_ktr
  FinnOp["Close",""]
  ExitAlg[0]
//
% INT_ROZR-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","3"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_ROZR-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["suff_rdz"] = "")) goto dalej
  OkAlert["Wprowad|x symbol konta (zamiennik)!"]
  ExDialogOp["IdzDoPozycji","20"]
  ExitAlg[0]
dalej:
  if (not (RejWezP_S["suff_ktr"] = "")) goto koniec
  OkAlert["Wprowad|x symbol kontrahenta (zamiennik)!"]
  ExDialogOp["IdzDoPozycji","21"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_ROZR-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
// ==============================================================
// ===== slownik substytutow kont 
% INT_RODZ.RXR # inicjalizacja rejestru
101
1
"INT_RODZ"
"INT_RODZ"

"Powt|orzony symbol konta !"
"Zmieniasz symbol konta ?"
"Czy doda|c to konto ?"
"Czy usun|a|c to konto ?"
"Czy doda|c nast|epne konto ?"
"Konto o podanym symbolu nie istnieje !$Czy doda|c to konto ?"
"Nie ma |zadnych kont !"
"Tablica zamiennik|ow kont jest pusta !$Wprowadzasz pierwsze konto ?"
"Nie ma konta o podanym symbolu.$Znale|x|c nast|epne ?"
"%s - nie ma takiego konta !"
INT_RODZ-WARUNEK
// --------------------------------------------
% INT_RODZ.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,20,2,1,,N     # suff_kod suffix konta  - zrodlowy
101,string,20,2,2        # suff_sfx suffix konta  - zamiennik
102,string,50            # nazwa konta  - zrodlowa
103,string,50            # adres kontrahenta - zrodlowy
104,string,14            # NIP kontrahenta - zrodlowy
// --------------------------------------------
% INT_RODZ.DIC # slownik pol rekordu
"SUFF_kod",100,Estring   # suffix konta  - zrodlowy
"SUFF_sfx",101,Estring   # suffix konta  - zamiennik
"SUFF_naz",102,Estring   # nazwa konta  - zrodlowa
"SUFF_adr",103,Estring   # adres kontrahenta - zrodlowy
"SUFF_nip",104,Estring   # NIP kontrahenta - zrodlowy
// -------------------------------------------
% INT_RODZ.BOX # okienko do wprowadzania i modyfikacji danych
D = "S|lownik zamiennik|ow kont"
"Suffix konta - zamiennik:",101,A
"ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-",,T
"Suffix konta - |xr|od|lowy:",100
"Nazwa:",102
"Adres:",103
"NIP:",104
// --------------------------------------------
% INT_RODZ-WARUNEK.DIC
"Suffix konta - zamiennik:",101
"Suffix konta - |xr|od|lowy:",100
"Nazwa:",102
"Adres:",103
"NIP:",104
// --------------------------------------------
% INT_RODZ.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (SUFF_kod = "") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_RODZ.BUT # "buttony" do rejestru 
// Ogladanie konta (z modyfikacja)
//"%D%odanie konta",5,1
"Z%m%ie|n",4,1   # modyfikacja
"%U%su|n",6,1
"Symbol:@           ",7,1
@5,0,1               # Koniec
// --------------------------------------------
% INT_RODZ.MEN # menu z rubrykami
D = 73,"Tablica zamiennik|ow kont",AB
LINIA-DIALOG = REJESTR-RODZ-EDYCJA,"Kolumny dla RODZ"
101,,,,20,"Zamiennik"   # konto (zamiennik)
100,,,,20,"|Xr|od|lowy"   # identyfikator operacji (index) (zrodlowy)
104,,,,13,"Nip"        # NIP zrodlowy
102,,,,50,"Nazwa"         # nazwa
% REJESTR-RODZ-EDYCJA.DIC
"INT_RODZ",0
//
//=====================================================
//INT_RODZ-MENU-? okienka menu_na_rekordy dla roznych trybow rejestru INT_RODZ
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
//**********************************P************************************
% INT_RODZ-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:INT_RODZ_MENU_DEF
%< INT_RODZ-MENU-DEF.XXX

% INT_RODZ-MENU-2.GUI32.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_RODZ-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_RODZ_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20        # #21      #     #23                                         #
                                                                         #102<
 #100                                                                   #

//
% INT_RODZ-MENU-1.GUI32.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_RODZ-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_RODZ_MENU_GORNE-1                     
#101                                                                      #101
#102
 #20        # #21      #     #23                                         #
                                                                         #102<
 #100                                                                   #

//

//********************************K********************************
% INT_RODZ-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"S|lownik zamiennik|ow kont"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,B,0,,"Zamiennik",,&&lwhite/blue,&&lwhite/blue,,,ZMIENNA:kntr_numer_klucza,,A,1,"2"
##21,B,0,,"|Xr|od|lowy",,&&lwhite/blue,&&lwhite/blue,,,ZMIENNA:kntr_numer_klucza,,,1,"1"
##23,TLD,0,,"NIP            Nazwa",,&&lwhite/blue
//##20,TLD,0,,"Zamiennik    |Xrod|lowy     NIP            Nazwa",,&&lwhite/blue
//
% INT_RODZ_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
//*501,"Operacje"
*4,"Z%m%ie|n"
*6,"%U%su|n"
//
% INT_RODZ_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"Konto"
9,"%N%ast|epne konto"
10,"%F%iltr"
*504,"Druku%j%"
*503,"Operacje pozosta|le"
15,"Zmie|n klucz"
16,"Wyczy|s|c s|lownik"
17,"Wyczy|s|c konta"
//
//---------------------------
% INT_RODZ-MENU-2.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_RODZ-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_RODZ_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20        # #21      #     #23                                         #
                                                                         #102<

 #100                                                                   #

//
% INT_RODZ_MENU_GORNE-2                          
P =3,,AD
*0,@5
%< INT_RODZ_MENU_GORNE-SRODEK.XXX
%< INT_RODZ_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-INT_RODZ-MENU-2
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_RODZ-MENU_PRZED_WYSW
  "AKCJA-BUTTON15",INT_RODZ-MENU_ZMIEN_KLUCZ
  "AKCJA-BUTTON16",INT_RODZ-MENU_WYCZYSC
  "AKCJA-BUTTON17",!SL.INTERFEJS->int_rodz_menu_wyczysc_konta
  "AKCJA-BUTTON20",INT_RODZ-ZMIANA-KLUCZA
  "AKCJA-BUTTON21",INT_RODZ-ZMIANA-KLUCZA
  "AKCJA-BUTTON504",INT_RODZ-MENU-DRUKUJ
//
//---------------------------
% INT_RODZ-MENU-1.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_RODZ-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_RODZ_MENU_GORNE-1                     
#101                                                                      #101
#102
 #20        # #21      #     #23                                         #
                                                                         #102<
 #100                                                                   #

//
% INT_RODZ_MENU_GORNE-1                          
P =3,,AD
*0,@5
*2,"%P%oka|z"
*502,"Znajd|x"
8,"Konto"
9,"%N%ast|epne konto"
10,"%F%iltr"
*503,"Operacje pozosta|le"
15,"Zmie|n klucz"
//
//---------------------------
% TABLICA-AKCJI-INT_RODZ-MENU-1
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_RODZ-MENU_PRZED_WYSW_1
  "AKCJA-BUTTON15",INT_RODZ-MENU_ZMIEN_KLUCZ
  "AKCJA-BUTTON20",INT_RODZ-ZMIANA-KLUCZA
  "AKCJA-BUTTON21",INT_RODZ-ZMIANA-KLUCZA
//
% INT_RODZ-MENU_PRZED_WYSW_1.ALG
//pobierz numer klucza do wywietlania
  kntr_numer_klucza := 2
  if (RejWezP_S["R:dekr_srt"]="Z") kntr_numer_klucza := 1
//ustawienie parametrow menu_na_rekordy
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_RODZ,,KLUCZ,1"]
  goto kont
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_RODZ,,KLUCZ,2"]
  goto kont
kont:
//ustaw naglowek okna
  ExDialogOp["ZmienNaglowek","Powt|orzone zamienniki dla polecenia "+naz_int_nag] 
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% INT_RODZ-MENU_PRZED_WYSW.ALG
//pobierz numer klucza do wywietlania
  kntr_numer_klucza := 2
  if (RejWezP_S["R:dekr_srt"]="Z") kntr_numer_klucza := 1
//ustawienie parametrow menu_na_rekordy
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_RODZ,,KLUCZ,1"]
  goto kont
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_RODZ,,KLUCZ,2"]
  goto kont
kont:
//ustaw naglowek okna
  ExDialogOp["ZmienNaglowek","S|lownik zamiennik|ow kont dla polecenia "+naz_int_nag] 
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% INT_RODZ-MENU_ZMIEN_KLUCZ.ALG
//wywolaj okienko dialogowe do wybrania klucza sortowania
  ExDialogOp["IdzDoDialogu","KNTR_KLUCZ"]
  if (D_POS=91) ExitAlg[0]
  CallAlg["INT_RODZ-ZMIANA-KLUCZA"]
//
% INT_RODZ-ZMIANA-KLUCZA.ALG
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_RODZ,,KLUCZ,1"]
  goto _koniec
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_RODZ,,KLUCZ,2"]
  goto _koniec
_koniec:
  ExDialogOp["WyswietlPozycje","100"]
//odswiez ptaszki na ekranie
  ExDialogOp["ZmienWartoscGrupy","1"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
//
% INT_RODZ-MENU-DRUKUJ.ALG
//drukuj slownik kont
  zmenu := .T.
  naz_plik := "INT_RODZ.RXR" + "+" + naz_kat + "\int_rodz"
  IdzDoWydruku["int\int_prts.drk",""]
  ExitAlg[0]
//
% INT_RODZ-MENU_WYCZYSC.ALG
  if (not(YesAlert["Ta operacja spowoduje bezpowrotne wymazanie$danych ze s|lownika zamiennik|ow kont$Kontynuowa|c?"])) ExitAlg[0]
  RejOp["WyczyscRej",""]
  ExDialogOp["WyswietlPozycje","100"]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_RODZ-MENU-?
//=====================================================
//=====================================================
//INT_RODZ-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
//***********************P************************************
% INT_RODZ-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane konta"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##202,DZ,ADPH,,
##20,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_sfx
##21,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_kod
##22,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_naz
##23,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_adr
##24,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_nip
##31,TLD,0,,"ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-",,yellow/black&yellow/black&blue/white
//
% INT_RODZ-REKORD-0.GUI32.DLG
RESORS = dll\int.dll:INT_RODZ_REKORD
//zmien
PRZYCISK_CANCELID = 2
%<INT_RODZ-REKORD.GUI32.XXX

 #202
  Suffix konta - zamiennik: ......... #20                #   
  #31                                                  #      #1         #
  Suffix konta |xr|od|lowy: ............ #21                # 
  Nazwa: #22                                             #
  Adres: #23                                             #    #2         #
  NIP: .................................... #24          ##202 
//-----------------------------------------------------------
% INT_RODZ-REKORD-2.GUI32.DLG
RESORS = dll\int.dll:INT_RODZ_REKORD_P
//pokaz
PRZYCISK_CANCELID = 3
%<INT_RODZ-REKORD.GUI32.XXX

 #202
  Suffix konta - zamiennik: ......... #20                #   
  #31                                                  #
  Suffix konta |xr|od|lowy: ............ #21                #    #3         #
  Nazwa: #22                                             #
  Adres: #23                                             #
  NIP: .................................... #24          ##202
// ------------------------------------------------------------------

//*****************************K*********************************************
% INT_RODZ-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane konta"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##202,DZ,ADPH,,
##20,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_sfx
##21,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_kod
##22,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_naz
##23,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_adr
##24,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_nip
##31,TLD,0,,"ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-",,yellow/black&yellow/black&blue/white
//
% INT_RODZ-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_RODZ-REKORD.XXX

 #202
  Suffix konta - zamiennik: ......... #20                #   
  #31                                                  #      #1         #
  Suffix konta |xr|od|lowy: ............ #21                # 
  Nazwa: #22                                             #
  Adres: #23                                             #    #2         #
  NIP: .................................... #24          ##202 
//-----------------------------------------------------------
% INT_RODZ-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_RODZ-REKORD.XXX

 #202
  Suffix konta - zamiennik: ......... #20                #   
  #31                                                  #
  Suffix konta |xr|od|lowy: ............ #21                #    #3         #
  Nazwa: #22                                             #
  Adres: #23                                             #
  NIP: .................................... #24          ##202
// ------------------------------------------------------------------
% TABLICA-AKCJI-INT_RODZ-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_RODZ-REKORD-0_PRZED_WYSW
  "AKCJA-F2-POLE20",INT_RODZ-REKORD_F2_POLE20
  "AKCJA-PO-POLU20",!SL.INTERFEJS->int_rodz_rekord_po_polu20("INT_RODZ")
  "AKCJA-BUTTON1",INT_RODZ-REKORD_AKCEPTUJESZ
//
% INT_RODZ-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","20"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","20"]
  ExDialogOp["PozycjaNiewprowadzana","21"]
  ExDialogOp["PozycjaNiewprowadzana","22"]
  ExDialogOp["PozycjaNiewprowadzana","23"]
  ExDialogOp["PozycjaNiewprowadzana","24"]
  ExitAlg[0]
//
// ------------------------------
% TABLICA-AKCJI-INT_RODZ-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_RODZ-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_RODZ-REKORD_AKCEPTUJESZ
  "AKCJA-F2-POLE20",INT_RODZ-REKORD_F2_POLE20
  "AKCJA-PO-POLU20",!SL.INTERFEJS->int_rodz_rekord_po_polu20("INT_RODZ")
//
// ------------------------------
% TABLICA-AKCJI-INT_RODZ-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_RODZ-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_RODZ-REKORD_AKCEPTUJESZ
//
% INT_RODZ-REKORD_F2_POLE20.ALG
//podpowiedz symbol konta 
  FinnOp["@3OpenMainX",""]
  kod_kont := RejWezP_S["suff_sfx"]
  D_STRING := kod_kont
  D_STRING := WybierzFinn["PlanRodz"]
  if (D_STRING = "") D_STRING := kod_kont
  RejWstawP_S["suff_sfx",kod_kont]
  FinnOp["Close",""]
//
% INT_RODZ-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","3"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_RODZ-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["suff_sfx"] = "")) goto koniec
  OkAlert["Wprowad|x symbol konta (zamiennik)!"]
  ExDialogOp["IdzDoPozycji","20"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_RODZ-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
// ==============================================================
// ===== slownik substytutow klasyfikacji
% INT_ROZL.RXR # inicjalizacja rejestru
101
1
"INT_ROZL"
"INT_ROZL"

"Powt|orzony symbol zamiennika klasyfikacji !"
"Zmieniasz dane klasyfikacji ?"
"Czy doda|c ten zamiennik klasyfikacji ?"
"Czy usun|a|c ten zamiennik klasyfikacji ?"
"Czy doda|c nast|epny zamiennik klasyfikacji ?"
"Klasyfikacja o podanym symbolu nie istnieje !$Czy doda|c ten zamiennik klasyfikacji ?"
"Nie ma |zadnych klasyfikacji pomocniczych !"
"Tablica zamiennik|ow  klasyfikacji pomocniczej jest pusta !$Wprowadzasz pierwszy zamiennik ?"
"Nie ma zamiennika o podanym symbolu.$Znale|x|c nast|epny ?"
"%s - nie ma takiego zamiennika !"
INT_ROZL-WARUNEK
// --------------------------------------------
% INT_ROZL.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,20,2,1,,N     # suffix klasyfikacji - zrodlowy
101,string,20,2,2        # suffix klasyfikacji - zamiennik
102,string,50            # nazwa klasyfikacji - zrodlowa
// --------------------------------------------
% INT_ROZL.DIC # slownik pol rekordu
"SUFF_kod",100,Estring,"|Xr|od|lowy"   # suffix klasyfikacji - zrodlowy
"SUFF_sfx",101,Estring,"Zamiennik"   # suffix klasyfikacji - zamiennik
"SUFF_naz",102,Estring,"Nazwa |xR|od|lowa"   # nazwa klasyfikacji - zrodlowa
// -------------------------------------------
% INT_ROZL.BOX # okienko do wprowadzania i modyfikacji danych
D = "S|lownik zamiennik|ow klasyfikacji pomocniczej"
"Suffix klasyfikacji pomocniczej - zamiennik:",101,A
"ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-",,T
"Suffix klasyfikacji pomocniczej - |xr|od|lowy:",100
"Nazwa:",102,A
// --------------------------------------------
% INT_ROZL-WARUNEK.DIC
"Suffix klasyfikacji pomocniczej - zamiennik:",101
"Suffix klasyfikacji pomocniczej - |xr|od|lowy:",100
"Nazwa:",102
// --------------------------------------------
% INT_ROZL.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (SUFF_kod = "") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_ROZL.BUT # "buttony" do rejestru 
// Ogladanie konta (z modyfikacja)
//"%D%odanie konta",5,1
"Z%m%ie|n",4,1   # modyfikacja
"%U%su|n",6,1
"Symbol:@           ",7,1
@5,0,1               # Koniec
// --------------------------------------------
% INT_ROZL.MEN # menu z rubrykami
D = 50,"tablica zamiennik|ow klasyfikacji pomocniczej"
LINIA-DIALOG = REJESTR-ROZL-EDYCJA,"Kolumny dla ROZL"
101,,,,15,"Zamiennik"   # klasyfikacja (zamiennik)
100,,,,15,"|Xr|od|lowy"   # klasyfikacja zrodlowa 
102,,,,,"Nazwa"         # nazwa
% REJESTR-ROZL-EDYCJA.DIC
"INT_ROZL",0
//
//=====================================================
//INT_ROZL-MENU-? okienka menu_na_rekordy dla roznych trybow rejestru INT_ROZL
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------

//*********************************************
% INT_ROZL-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:INT_ROZL_MENU_DEF
##0,,ADP,,$$(@3)
##1,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
%< INT_ROZL-MENU-DEF.XXX
//**********************************
% INT_ROZL-MENU-2.GUI32.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_ROZL-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_ROZL_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20        #  #21      #        #23                                         #
                                                                         #102<
 #100                                                                   #

//
//*************************************************************

% INT_ROZL-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"S|lownik zamiennik|ow klasyfikacji pomocniczej"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,B,0,,"Zamiennik",,&&lwhite/blue,&&lwhite/blue,,,ZMIENNA:kntr_numer_klucza,,A,1,"2"
##21,B,0,,"|Xr|od|lowy",,&&lwhite/blue,&&lwhite/blue,,,ZMIENNA:kntr_numer_klucza,,,1,"1"
##23,TLD,0,,"Nazwa",,&&lwhite/blue

//
% INT_ROZL_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
//*501,"Operacje"
*4,"Z%m%ie|n"
*6,"%U%su|n"
//
% INT_ROZL_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"Klasyfikacj|e"
9,"%N%ast|epn|a klasyfikacj|e"
10,"%F%iltr"
*504,"Druku%j%"
*503,"Operacje pozosta|le"
15,"Zmie|n klucz"
16,"Wyczy|s|c s|lownik"
//
//---------------------------
% INT_ROZL-MENU-2.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_ROZL-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_ROZL_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20        #  #21      #        #23                                         #
                                                                         #102<
 #100                                                                   #

//
% INT_ROZL_MENU_GORNE-2                          
P =3,,AD
*0,@5
%< INT_ROZL_MENU_GORNE-SRODEK.XXX
%< INT_ROZL_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-INT_ROZL-MENU-2
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_ROZL-MENU_PRZED_WYSW
  "AKCJA-BUTTON15",INT_ROZL-MENU_ZMIEN_KLUCZ
  "AKCJA-BUTTON16",INT_ROZL-MENU_WYCZYSC
  "AKCJA-BUTTON20",INT_ROZL-ZMIANA-KLUCZA
  "AKCJA-BUTTON21",INT_ROZL-ZMIANA-KLUCZA
  "AKCJA-BUTTON504",INT_ROZL-MENU-DRUKUJ
//
% INT_ROZL-MENU_PRZED_WYSW.ALG
//pobierz numer klucza do wywietlania
  kntr_numer_klucza := 2
  if (RejWezP_S["R:dekr_srt"]="Z") kntr_numer_klucza := 1
//ustawienie parametrow menu_na_rekordy
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_ROZL,,KLUCZ,1"]
  goto kont
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_ROZL,,KLUCZ,2"]
  goto kont
kont:
//ustaw naglowek okna
  ExDialogOp["ZmienNaglowek","S|lownik zamiennik|ow klasyfikacji pomocniczej dla polecenia "+naz_int_nag] 
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% INT_ROZL-MENU_ZMIEN_KLUCZ.ALG
//wywolaj okienko dialogowe do wybrania klucza sortowania
  ExDialogOp["IdzDoDialogu","KNTR_KLUCZ"]
  if (D_POS=91) ExitAlg[0]
  CallAlg["INT_ROZL-ZMIANA-KLUCZA"]
//
% INT_ROZL-ZMIANA-KLUCZA.ALG
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_ROZL,,KLUCZ,1"]
  goto _koniec
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_ROZL,,KLUCZ,2"]
  goto _koniec
_koniec:
  ExDialogOp["WyswietlPozycje","100"]
//odswiez ptaszki na ekranie
  ExDialogOp["ZmienWartoscGrupy","1"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
//
% INT_ROZL-MENU-DRUKUJ.ALG
//drukuj slownik kontrzoliczeniowych (klasyfikacj apom.)
  zmenu := .T.
  naz_plik := "INT_ROZL.RXR" + "+" + naz_kat + "\int_rozl"
  IdzDoWydruku["int\int_prts.drk",""]
  ExitAlg[0]
//
% INT_ROZL-MENU_WYCZYSC.ALG
  if (not(YesAlert["Ta operacja spowoduje bezpowrotne wymazanie danych$ze s|lownika zamiennik|ow klasyfikacji pomocniczej$Kontynuowa|c?"])) ExitAlg[0]
  RejOp["WyczyscRej",""]
  ExDialogOp["WyswietlPozycje","100"]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_ROZL-MENU-?
//=====================================================
//=====================================================
//INT_ROZL-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
//******************************************************
% INT_ROZL-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane klasyfikacji pomocniczej"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##202,DZ,ADPH,,
##20,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_sfx
##21,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_kod
##22,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_naz
##31,TLD,0,,"ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-",,yellow/black&yellow/black&blue/white

% INT_ROZL-REKORD-0.GUI32.DLG
RESORS = dll\int.dll:INT_ROZL_REKORD
//zmien
PRZYCISK_CANCELID = 2
%<INT_ROZL-REKORD.GUI32.XXX

 #202
  Suffix klasyfikacji - zamiennik: .. #20                #   
                                                              #1           #
  #31                                                  #

  Suffix klasyfikacji - |xr|od|lowy: ... #21                # 
  Nazwa: #22                                             ##202#2           #
// ------------------------------------------------------------------
% INT_ROZL-REKORD-2.GUI32.DLG
RESORS = dll\int.dll:INT_ROZL_REKORD_P
//pokaz
PRZYCISK_CANCELID = 3
%<INT_ROZL-REKORD.GUI32.XXX

 #202
  Suffix klasyfikacji - zamiennik: .. #20                #   

  #31                                                  #      #3           #

  Suffix klasyfikacji - |xr|od|lowy: ... #21                # 
  Nazwa: #22                                             ##202
// ------------------------------------------------------------------

//***************************************************************************
% INT_ROZL-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane klasyfikacji pomocniczej"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##202,DZ,ADPH,,
##20,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_sfx
##21,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_kod
##22,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_naz
##31,TLD,0,,"ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-",,yellow/black&yellow/black&blue/white
//
% INT_ROZL-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_ROZL-REKORD.XXX

 #202
  Suffix klasyfikacji - zamiennik: .. #20                #   
                                                              #1           #
  #31                                                  #

  Suffix klasyfikacji - |xr|od|lowy: ... #21                # 
  Nazwa: #22                                             ##202#2           #
// ------------------------------------------------------------------
% INT_ROZL-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_ROZL-REKORD.XXX

 #202
  Suffix klasyfikacji - zamiennik: .. #20                #   

  #31                                                  #      #3           #

  Suffix klasyfikacji - |xr|od|lowy: ... #21                # 
  Nazwa: #22                                             ##202
// ------------------------------------------------------------------
% TABLICA-AKCJI-INT_ROZL-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_ROZL-REKORD-0_PRZED_WYSW
  "AKCJA-F2-POLE20",INT_ROZL-REKORD_F2_POLE20
  "AKCJA-BUTTON1",INT_ROZL-REKORD_AKCEPTUJESZ
//
% INT_ROZL-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","20"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","20"]
  ExDialogOp["PozycjaNiewprowadzana","21"]
  ExDialogOp["PozycjaNiewprowadzana","22"]
  ExitAlg[0]
//
// ------------------------------
% TABLICA-AKCJI-INT_ROZL-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_ROZL-REKORD-0_PRZED_WYSW
  "AKCJA-F2-POLE20",INT_ROZL-REKORD_F2_POLE20
  "AKCJA-BUTTON1",INT_ROZL-REKORD_AKCEPTUJESZ
//
// ------------------------------
% TABLICA-AKCJI-INT_ROZL-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_ROZL-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_ROZL-REKORD_AKCEPTUJESZ
//
% INT_ROZL-REKORD_F2_POLE20.ALG
//podpowiedz symbol klasyfikacji
  FinnOp["@3OpenMainX",""]
  kod_rozl := RejWezP_S["suff_sfx"]
  D_STRING := kod_rozl
  D_STRING := WybierzFinn["PlanRozl"]
  if (D_STRING = "") D_STRING := kod_rozl
  RejWstawP_S["suff_sfx",kod_rozl]
  FinnOp["Close",""]
//
% INT_ROZL-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","3"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_ROZL-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["suff_sfx"] = "")) goto koniec
  OkAlert["Wprowad|x symbol klasyfikacji (zamiennik)!"]
  ExDialogOp["IdzDoPozycji","20"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_ROZL-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
// ==============================================================
// ===== slownik substytutow symboli kontrahentow
% INT_KNTR.RXR # inicjalizacja rejestru
101
1
"INT_KNTR"
"INT_KNTR"

"Powt|orzony symbol kontrahenta !"
"Zmieniasz symbol kontrahenta ?"
"Czy doda|c tego kontrahenta ?"
"Czy usun|a|c tego kontrahenta ?"
"Czy doda|c nast|epnego kontrahenta ?"
"Kontrahent o podanym symbolu nie istnieje !$Czy doda|c tego kontrahenta ?"
"Nie ma |zadnych kontrahent|ow !"
"Tablica zamiennik|ow kontrahent|ow jest pusta !$Wprowadzasz pierwszego kontrahenta ?"
"Nie ma kontrahenta o podanym symbolu.$Znale|x|c nast|epnego ?"
"%s - nie ma takiego kontrahenta !"
INT_KNTR-WARUNEK
// --------------------------------------------
% INT_KNTR.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,20,2,1,,N     # suff_kod suffix kontrahenta - zrodlowy
101,string,20,2,2        # suff_sfx suffix kontrahenta - zamiennik
102,string,50            # nazwa kontrahenta - zrodlowa
103,string,50            # adres kontrahenta - zrodlowy
104,string,14            # NIP kontrahenta - zrodlowy
// --------------------------------------------
% INT_KNTR.DIC # slownik pol rekordu
"SUFF_kod",100,Estring   # suffix kontrahenta - zrodlowy
"SUFF_sfx",101,Estring   # suffix kontrahenta - zamiennik
"SUFF_naz",102,Estring   # nazwa kontrahenta - zrodlowa
"SUFF_adr",103,Estring   # adres kontrahenta - zrodlowy
"SUFF_nip",104,Estring   # NIP kontrahenta - zrodlowy
// -------------------------------------------
% INT_KNTR-WARUNEK.DIC
"Suffix kontrahenta - zamiennik:",101
"Suffix kontrahenta - |xr|od|lowy:",100
"Nazwa:",102
"Adres:",103
"NIP:",104
// -------------------------------------------
% INT_KNTR.BOX # okienko do wprowadzania i modyfikacji danych
D = "S|lownik zamiennik|ow kontrahent|ow"
"Suffix kontrahenta - zamiennik:",101,A
"ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-",,T
"Suffix kontrahenta - |xr|od|lowy:",100
"Nazwa:",102
"Adres:",103
"NIP:",104
// --------------------------------------------
% INT_KNTR.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (SUFF_kod = "") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_KNTR.BUT # "buttony" do rejestru 
// Ogladanie kontrahenta (z modyfikacja)
//"%D%odanie kontrahenta",5,1
"Z%m%ie|n",4,1   # modyfikacja
"%U%su|n",6,1
"Kontrahent: @        ",7,1
@5,0,1               # Koniec
// --------------------------------------------
% INT_KNTR.MEN # menu z rubrykami
D = 73,"Tablica zamiennik|ow kontrahent|ow",AB
LINIA-DIALOG = REJESTR-KNTR-EDYCJA,"Kolumny dla KNTR" 
101,,,,10,"Zamiennik"   # identyfikator kontrahenta (zamiennik)
100,,,,10,"|Xr|od|lowy"  # identyfikator kontrahenta (zrodlowy)
104,,,,13,"Nip"        # NIP zrodlowy
102,,,,50,"Nazwa"        # nazwa zrodlowa
% REJESTR-KNTR-EDYCJA.DIC
"INT_KNTR",0
//
//=====================================================
//INT_KNTR-MENU-? okienka menu_na_rekordy dla roznych trybow rejestru INT_KNTR
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
//*******************************P*****************************
% INT_KNTR-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:INT_KNTR_MENU_DEF
%< INT_KNTR-MENU-DEF.XXX
//
% INT_KNTR-MENU-2.GUI32.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_KNTR-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_KNTR_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20        # #21      #     #23                                         #
                                                                         #102<
 #100                                                                   #

//

% INT_KNTR-MENU-1.GUI32.DLG
//Wyswietlenie - tylko dla rejtemp
PRZYCISK_CANCELID = 0
%< INT_KNTR-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_KNTR_MENU_GORNE-1                     
#101                                                                      #101
#102
 #20        # #21      #     #23                                         #
                                                                         #102<
 #100                                                                   #

//

//**********************************K**************************
% INT_KNTR-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"S|lownik zamiennik|ow kontrahent|ow"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,B,0,,"Zamiennik",,&&lwhite/blue,&&lwhite/blue,,,ZMIENNA:kntr_numer_klucza,,A,1,"2"
##21,B,0,,"|Xr|od|lowy",,&&lwhite/blue,&&lwhite/blue,,,ZMIENNA:kntr_numer_klucza,,,1,"1"
##23,TLD,0,,"NIP            Nazwa",,&&lwhite/blue
//##20,TLD,0,,"Zamiennik    |Xrod|lowy     NIP            Nazwa",,&&lwhite/blue
//
% INT_KNTR_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
//*501,"Operacje"
*4,"Z%m%ie|n"
*6,"%U%su|n"
//
% INT_KNTR_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"Kontrahenta"
9,"%N%ast|epnego kontrahenta"
10,"%F%iltr"
*504,"Druku%j%"
*503,"Operacje pozosta|le"
15,"Zmie|n klucz"
16,"Wyczy|s|c s|lownik"
//
//---------------------------
% INT_KNTR-MENU-2.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_KNTR-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_KNTR_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20        # #21      #     #23                                         #
                                                                         #102<

 #100                                                                   #

//
% INT_KNTR_MENU_GORNE-2                          
P =3,,AD
*0,@5
%< INT_KNTR_MENU_GORNE-SRODEK.XXX
%< INT_KNTR_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-INT_KNTR-MENU-2
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_KNTR-MENU_PRZED_WYSW
  "AKCJA-BUTTON15",INT_KNTR-MENU_ZMIEN_KLUCZ
  "AKCJA-BUTTON16",INT_KNTR-MENU_WYCZYSC
  "AKCJA-BUTTON20",INT_KNTR-ZMIANA-KLUCZA
  "AKCJA-BUTTON21",INT_KNTR-ZMIANA-KLUCZA
  "AKCJA-BUTTON504",INT_KNTR-MENU-DRUKUJ
//
//---------------------------
% INT_KNTR-MENU-1.DLG
//Wyswietlenie - tylko dla rejtemp
PRZYCISK_CANCELID = 0
%< INT_KNTR-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_KNTR_MENU_GORNE-1                     
#101                                                                      #101
#102
 #20        # #21      #     #23                                         #
                                                                         #102<

 #100                                                                   #

//
% INT_KNTR_MENU_GORNE-1                          
P =3,,AD
*0,@5
*2,"%P%oka|z"
*502,"Znajd|x"
8,"Kontrahenta"
9,"%N%ast|epnego kontrahenta"
10,"%F%iltr"
*503,"Operacje pozosta|le"
15,"Zmie|n klucz"
//
//---------------------------
% TABLICA-AKCJI-INT_KNTR-MENU-1
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_KNTR-MENU_PRZED_WYSW_1
  "AKCJA-BUTTON15",INT_KNTR-MENU_ZMIEN_KLUCZ
  "AKCJA-BUTTON20",INT_KNTR-ZMIANA-KLUCZA
  "AKCJA-BUTTON21",INT_KNTR-ZMIANA-KLUCZA
//
% INT_KNTR-MENU_PRZED_WYSW_1.ALG
//pobierz numer klucza do wywietlania
  kntr_numer_klucza := 2
  if (RejWezP_S["R:dekr_srt"]="Z") kntr_numer_klucza := 1
//ustawienie parametrow menu_na_rekordy
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_KNTR,,KLUCZ,1"]
  goto kont
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_KNTR,,KLUCZ,2"]
  goto kont
kont:
//ustaw naglowek okna
  ExDialogOp["ZmienNaglowek","Powt|orzone zamienniki dla polecenia "+naz_int_nag] 
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% INT_KNTR-MENU_PRZED_WYSW.ALG
//pobierz numer klucza do wywietlania
  kntr_numer_klucza := 2
  if (RejWezP_S["R:dekr_srt"]="Z") kntr_numer_klucza := 1
//ustawienie parametrow menu_na_rekordy
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_KNTR,,KLUCZ,1"]
  goto kont
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_KNTR,,KLUCZ,2"]
  goto kont
kont:
//ustaw naglowek okna
  ExDialogOp["ZmienNaglowek","S|lownik zamiennik|ow kontrahent|ow dla polecenia "+naz_int_nag] 
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% INT_KNTR-MENU_ZMIEN_KLUCZ.ALG
//wywolaj okienko dialogowe do wybrania klucza sortowania
  ExDialogOp["IdzDoDialogu","KNTR_KLUCZ"]
  if (D_POS=91) ExitAlg[0]
  CallAlg["INT_KNTR-ZMIANA-KLUCZA"]
//
% INT_KNTR-ZMIANA-KLUCZA.ALG
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_KNTR,,KLUCZ,1"]
  goto _koniec
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_KNTR,,KLUCZ,2"]
  goto _koniec
_koniec:
  ExDialogOp["WyswietlPozycje","100"]
//odswiez ptaszki na ekranie
  ExDialogOp["ZmienWartoscGrupy","1"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
//
% INT_KNTR-MENU-DRUKUJ.ALG
//drukuj slownik kontrahentow
  zmenu := .T.
  naz_plik := "INT_KNTR.RXR" + "+" + naz_kat + "\int_kntr"
  IdzDoWydruku["int\int_prts.drk",""]
  ExitAlg[0]
//
% INT_KNTR-MENU_WYCZYSC.ALG
  if (not(YesAlert["Ta operacja spowoduje bezpowrotne wymazanie$danych ze s|lownika zamiennik|ow kontrahent|ow$Kontynuowa|c?"])) ExitAlg[0]
  RejOp["WyczyscRej",""]
  ExDialogOp["WyswietlPozycje","100"]
  ExitAlg[0]
//
//----------------------------------------------------------------
//okienko z do zmiany klucza sortowania KNTR_KLUCZ
//----------------------------------------------------------------
//
% KNTR_KLUCZ.DLG
PRZYCISK_CANCELID = 91
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wybierz kolejno|s|c wy|swietlania "
##90,,ADP,,@3
##91,,ADP,,@4
##20,0,P,,"Wed|lug symboli |xr|od|lowych",,,,,,ZMIENNA:kntr_numer_klucza,,A,1,1
##21,0,P,,"Wed|lug symboli zamiennik|ow",,,,,,ZMIENNA:kntr_numer_klucza,,,1,2


	#20                          #
	#21                          #


      #90             #              #91             #
//-----------------------------------------------------------
//
% TABLICA-AKCJI-KNTR_KLUCZ	
  "AKCJA-PRZED-WYSWIETLENIEM",KNTR_KLUCZ_PRZED_WYSW
  "AKCJA-BUTTON91",KNTR_KLUCZ_AKCEPT
//
% KNTR_KLUCZ_PRZED_WYSW.ALG
  if (kntr_numer_klucza = 1) goto pm1
  if (kntr_numer_klucza = 2) goto pm2
pm1:
  ExDialogOp["IdzDoPozycji","20"]
  ExitAlg[0]
pm2:
  ExDialogOp["IdzDoPozycji","21"]
  ExitAlg[0]
//
% KNTR_KLUCZ_AKCEPT.ALG
  ExDialogOp["KoniecWykonywania",""]
//
//----------------------------------------------------------------
//KONIEC okienko z do zmiany klucza sortowania KNTR_KLUCZ
//----------------------------------------------------------------
//=====================================================
//KONIEC INT_KNTR-MENU-?
//=====================================================
//=====================================================
//INT_KNTR-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//**************************P*********************************
% INT_KNTR-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane kontrahenta"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##202,DZ,ADPH,,
##20,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_sfx
##21,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_kod
##22,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_naz
##23,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_adr
##24,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_nip
##31,TLD,0,,"ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-",,yellow/black&yellow/black&blue/white
//
% INT_KNTR-REKORD-0.GUI32.DLG
RESORS = dll\int.dll:INT_KNTR_REKORD
//zmien
PRZYCISK_CANCELID = 2
%<INT_KNTR-REKORD.GUI32.XXX

 #202
  Suffix kontrahenta - zamiennik: ... #20                #   
  #31                                                  #      #1          #
  Suffix kontrahenta - |xr|od|lowy: .... #21                # 
  Nazwa: #22                                             #
  Adres: #23                                             #    #2          #
  NIP: .................................... #24          ##202 
//-----------------------------------------------------------
//
% INT_KNTR-REKORD-2.GUI32.DLG
RESORS = dll\int.dll:INT_KNTR_REKORD_P
//pokaz
PRZYCISK_CANCELID = 3
%<INT_KNTR-REKORD.GUI32.XXX

 #202
  Suffix kontrahenta - zamiennik: ... #20                #   
  #31                                                  #
  Suffix kontrahenta - |xr|od|lowy: .... #21                #   #3          #
  Nazwa: #22                                             #
  Adres: #23                                             #
  NIP: .................................... #24          ##202
//-----------------------------------------------------------
//**************************K***********************************


% INT_KNTR-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane kontrahenta"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##202,DZ,ADPH,,
##20,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_sfx
##21,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_kod
##22,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_naz
##23,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_adr
##24,D,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:suff_nip
##31,TLD,0,,"ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-",,yellow/black&yellow/black&blue/white
//
% INT_KNTR-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_KNTR-REKORD.XXX

 #202
  Suffix kontrahenta - zamiennik: ... #20                #   
  #31                                                  #      #1          #
  Suffix kontrahenta - |xr|od|lowy: .... #21                # 
  Nazwa: #22                                             #
  Adres: #23                                             #    #2          #
  NIP: .................................... #24          ##202 
//-----------------------------------------------------------
//
% INT_KNTR-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_KNTR-REKORD.XXX

 #202
  Suffix kontrahenta - zamiennik: ... #20                #   
  #31                                                  #
  Suffix kontrahenta - |xr|od|lowy: .... #21                #   #3          #
  Nazwa: #22                                             #
  Adres: #23                                             #
  NIP: .................................... #24          ##202
//-----------------------------------------------------------
% TABLICA-AKCJI-INT_KNTR-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_KNTR-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_KNTR-REKORD_AKCEPTUJESZ
  "AKCJA-BUTTON2",INT_KNTR-REKORD_REZYGNUJESZ
  "AKCJA-F2-POLE20",INT_KNTR-REKORD_F2_POLE20
  "AKCJA-PO-POLU20",!SL.INTERFEJS->int_rodz_rekord_po_polu20("INT_KNTR")
//
% INT_KNTR-REKORD-0_PRZED_WYSW.ALG
  naz_ktr_przed := RejWezP_S["suff_naz"]
  ExDialogOp["IdzDoPozycji","20"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","20"]
  ExDialogOp["PozycjaNiewprowadzana","21"]
//  ExDialogOp["PozycjaNiewprowadzana","22"]
  ExDialogOp["PozycjaWprowadzana","22"]
  ExDialogOp["PozycjaNiewprowadzana","23"]
  ExDialogOp["PozycjaNiewprowadzana","24"]
  ExitAlg[0]
//
% INT_KNTR-REKORD_F2_POLE20.ALG
//podpowiedz z rej kontrahentow
  FinnOp["@3OpenMainX",""]
  kod_ktr := RejWezP_S["suff_sfx"]
  naz_ktr := RejWezP_S["suff_naz"]
  D_STRING := kod_ktr
  D_STRING := WybierzFinn["RejestrKlientow"]
  if (D_STRING = "") D_STRING := kod_ktr
//  kod_ktr := D_STRING
  RejWstawP_S["suff_sfx",kod_ktr]
// odszukaj nazwe klienta
  rejop["x:otworzrejczytaj","REJESTRKL.RXR"]
  rejop["x:zmienkluczrej","1"]
//  if (rejop["x:znajdzrek",kod_ktr]) naz_ktr := rejwezp_s["x:kl_nazwa1"]
  if (rejop["x:znajdzrek",D_STRING]) naz_ktr := rejwezp_s["x:kl_nazwa1"]
//  okalert["sym "+D_STRING+", nazwa "+naz_ktr]
  rejop["x:zamknijrej",""]
  RejWstawP_S["suff_naz",naz_ktr]
  FinnOp["Close",""]
  ExDialogOp["WyswietlPozycje","22"]
  ExitAlg[0]
//
// ------------------------------
% TABLICA-AKCJI-INT_KNTR-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_KNTR-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_KNTR-REKORD_AKCEPTUJESZ
  "AKCJA-BUTTON2",INT_KNTR-REKORD_REZYGNUJESZ
  "AKCJA-F2-POLE20",INT_KNTR-REKORD_F2_POLE20
  "AKCJA-PO-POLU20",!SL.INTERFEJS->int_rodz_rekord_po_polu20("INT_KNTR")
//
// ------------------------------
% TABLICA-AKCJI-INT_KNTR-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_KNTR-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_KNTR-REKORD_AKCEPTUJESZ
//
% INT_KNTR-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","3"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_KNTR-REKORD_REZYGNUJESZ.ALG
  RejOp["UsunZmiany",""]
  RejWstawP_S["suff_naz",naz_ktr_przed]
  ExDialogOp["KoniecWykonywania",""]
//
% INT_KNTR-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["suff_sfx"] = "")) goto koniec
  OkAlert["Wprowad|x symbol kontrahenta (zamiennik)!"]
  ExDialogOp["IdzDoPozycji","20"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_KNTR-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
// ==============================================================
// ===== slownik substytutow rejestrow VAT
% INT_REJV.RXR # inicjalizacja rejestru
101
1
"INT_REJV"
"INT_REJV"

"Powt|orzony symbol zamiennika rejestru VAT !"
"Zmieniasz dane zamiennika rejestru VAT ?"
"Czy doda|c ten zamiennik rejestru VAT ?"
"Czy usun|a|c ten zamiennik rejestru VAT ?"
"Czy doda|c nast|epny zamiennik rejestru VAT ?"
"Zamiennik o podanym symbolu nie istnieje !$Czy doda|c ten zamiennik ?"
"Nie ma |zadnych tablic zamiennik|ow VAT !"
"Tablica zamiennik|ow rejestr|ow VAT jest pusta !$Wprowadzasz pierwszy zamiennik ?"
"Nie ma zamiennika o podanym symbolu.$Znale|x|c nast|epny ?"
"%s - nie ma takiego zamiennika !"
INT_REJV-WARUNEK
// --------------------------------------------
% INT_REJV.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,20,2,1,,N     # symbol rejestru VAT - zrodlowy
101,string,,802,2        # symbol rejestru VAT - zamiennik
102,string,50            # nazwa rejestru VAT - zrodlowa
// --------------------------------------------
% INT_REJV.DIC # slownik pol rekordu
"SUFF_kod",100,Estring   # symbol rejestru VAT - zrodlowy
"SUFF_sfx",101,Estring   # symbol rejestru VAT - zamiennik
"SUFF_naz",102,Estring   # nazwa rejestru VAT - zrodlowa
// -------------------------------------------
% INT_REJV-WARUNEK.DIC 
"Symbol rejestru VAT - zamiennik:",101
"Symbol rejestru VAT - |xr|od|lowy:",100
"Nazwa:",102
// --------------------------------------------
% INT_REJV.BOX 
D = "S|lownik zamiennik|ow rejestr|ow VAT"
"Symbol rejestru VAT - zamiennik:",101,A
"ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-",,T
"Symbol rejestru VAT - |xr|od|lowy:",100
"Nazwa:",102,A
// --------------------------------------------
% INT_REJV.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (SUFF_kod = "") goto error
ID := 101
if (SUFF_sfx = "") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_REJV.BUT # "buttony" do rejestru 
// Ogladanie rejestru (z modyfikacja)
//"%D%odanie rejestru",5,1
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     "Z%m%ie|n",4,1   # modyfikacja
"%U%su|n",6,1
"Rejestr: @        ",7,1
@5,0,1               # Koniec
// --------------------------------------------
% INT_REJV.MEN # menu z rubrykami
D = 73,"Tablica zamiennik|ow rejestru VAT"
LINIA-DIALOG = REJESTR-REJV-EDYCJA,"Kolumny dla REJV"
101,,,,50,"Zamiennik"     # identyfikator rejestru (zamiennik)
100,,,,50,"|Xr|od|lowy"   # identyfikator rejestru (zrodlowy)
102,,,,,"Nazwa"           # nazwa rejestru
% REJESTR-REJV-EDYCJA.DIC
"INT_REJV",0
//
//=====================================================
//INT_REJV-MENU-? okienka menu_na_rekordy dla roznych trybow rejestru INT_REJV
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
//********************************P****************************
% INT_REJV-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:INT_REJV_MENU_DEF
%< INT_REJV-MENU-DEF.XXX

% INT_REJV-MENU-2.GUI32.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_REJV-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_REJV_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20        #  #21      #        #23                                         #
                                                                         #102<
 #100                                                                   #

//

//*****************************K*************************************************
% INT_REJV-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"S|lownik zamiennik|ow rejestr|ow VAT"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,B,0,,"Zamiennik",,&&lwhite/blue,&&lwhite/blue,,,ZMIENNA:kntr_numer_klucza,,A,1,"2"
##21,B,0,,"|Xr|od|lowy",,&&lwhite/blue,&&lwhite/blue,,,ZMIENNA:kntr_numer_klucza,,,1,"1"
##23,TLD,0,,"Nazwa",,&&lwhite/blue

//
% INT_REJV_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
//*501,"Operacje"
*4,"Z%m%ie|n"
*6,"%U%su|n"
//
% INT_REJV_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"Rejestr"
9,"%N%ast|epny rejestr"
10,"%F%iltr"
*504,"Druku%j%"
*503,"Operacje pozosta|le"
15,"Zmie|n klucz"
16,"Wyczy|s|c s|lownik"
//
//---------------------------
% INT_REJV-MENU-2.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_REJV-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_REJV_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20        #  #21      #        #23                                         #
                                                                         #102<
 #100                                                                   #

//
% INT_REJV_MENU_GORNE-2                          
P =3,,AD
*0,@5
%< INT_REJV_MENU_GORNE-SRODEK.XXX
%< INT_REJV_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-INT_REJV-MENU-2
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_REJV-MENU_PRZED_WYSW
  "AKCJA-BUTTON15",INT_REJV-MENU_ZMIEN_KLUCZ
  "AKCJA-BUTTON16",INT_REJV-MENU_WYCZYSC
  "AKCJA-BUTTON20",INT_REJV-ZMIANA-KLUCZA
  "AKCJA-BUTTON21",INT_REJV-ZMIANA-KLUCZA
  "AKCJA-BUTTON504",INT_REJV-MENU-DRUKUJ
//
% INT_REJV-MENU_PRZED_WYSW.ALG
//pobierz numer klucza do wywietlania
  kntr_numer_klucza := 2
  if (RejWezP_S["R:dekr_srt"]="Z") kntr_numer_klucza := 1
//ustawienie parametrow menu_na_rekordy
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_REJV,,KLUCZ,1"]
  goto kont
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_REJV,,KLUCZ,2"]
  goto kont
kont:
//ustaw naglowek okna
  ExDialogOp["ZmienNaglowek","S|lownik zamiennik|ow rejestr|ow VAT dla polecenia "+naz_int_nag] 
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% INT_REJV-MENU_ZMIEN_KLUCZ.ALG
//wywolaj okienko dialogowe do wybrania klucza sortowania
  ExDialogOp["IdzDoDialogu","KNTR_KLUCZ"]
  if (D_POS=91) ExitAlg[0]
  CallAlg["INT_REJV-ZMIANA-KLUCZA"]
//
% INT_REJV-ZMIANA-KLUCZA.ALG
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_REJV,,KLUCZ,1"]
  goto _koniec
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_REJV,,KLUCZ,2"]
  goto _koniec
_koniec:
  ExDialogOp["WyswietlPozycje","100"]
//odswiez ptaszki na ekranie
  ExDialogOp["ZmienWartoscGrupy","1"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
//
% INT_REJV-MENU-DRUKUJ.ALG
//drukuj slownik rejetsrow VAT
  zmenu := .T.
  naz_plik := "INT_REJV.RXR" + "+" + naz_kat + "\int_rejv"
  IdzDoWydruku["int\int_prts.drk",""]
  ExitAlg[0]
//
% INT_REJV-MENU_WYCZYSC.ALG
  if (not(YesAlert["Ta operacja spowoduje bezpowrotne wymazanie$danych ze s|lownika zamiennik|ow rejstr|ow VAT$Kontynuowa|c?"])) ExitAlg[0]
  RejOp["WyczyscRej",""]
  ExDialogOp["WyswietlPozycje","100"]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_REJV-MENU-?
//=====================================================
//=====================================================
//INT_REJV-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
//*********************************P************************
% INT_REJV-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane rejestru VAT"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_REJV
//
% INT_REJV-REKORD-0.GUI32.DLG
RESORS = dll\int.dll:INT_REJV_REKORD1
//zmien
PRZYCISK_CANCELID = 2
%<INT_REJV-REKORD.GUI32.XXX

  #100                                                           #1        #
                                                                 #2        #
                                                             #100
// ------------------------------------------------------------------
% INT_REJV-REKORD-2.GUI32.DLG
RESORS = dll\int.dll:INT_REJV_REKORD1_P
//pokaz
PRZYCISK_CANCELID = 3
%<INT_REJV-REKORD.GUI32.XXX

  #100                                                      
                                                                 #3        #
                                                             #100
// ------------------------------------------------------------------

//********************************K*************************************************


% INT_REJV-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane rejestru VAT"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_REJV
//
% INT_REJV-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_REJV-REKORD.XXX

  #100                                                           #1        #
                                                                 #2        #
                                                             #100
// ------------------------------------------------------------------
% INT_REJV-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_REJV-REKORD.XXX

  #100                                                      
                                                                 #3        #
                                                             #100
// ------------------------------------------------------------------
% TABLICA-AKCJI-INT_REJV-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_REJV-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_REJV-REKORD_AKCEPTUJESZ
//
% INT_REJV-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","101"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","101"]
  ExitAlg[0]
//
// ------------------------------
% TABLICA-AKCJI-INT_REJV-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_REJV-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_REJV-REKORD_AKCEPTUJESZ
//
// ------------------------------
% TABLICA-AKCJI-INT_REJV-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_REJV-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_REJV-REKORD_AKCEPTUJESZ
//
% INT_REJV-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","3"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_REJV-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["suff_kod"] = "")) goto koniec
  OkAlert["Wprowad|x symbol rejestru (zamiennik)!"]
  ExDialogOp["IdzDoPozycji","101"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_REJV-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
// ==============================================================
// ===== slownik zamiennikow klasyfikacji VAT
% INT_KLAS.RXR # inicjalizacja rejestru
101
1
"INT_KLAS"
"INT_KLAS"

"Powt|orzony symbol zamiennika klasyfikacji VAT !"
"Zmieniasz dane klasyfikacji VAT ?"
"Czy doda|c ten zamiennik klasyfikacji VAT ?"
"Czy usun|a|c ten zamiennik klasyfikacji VAT ?"
"Czy doda|c nast|epny zamiennik klasyfikacji VAT ?"
"Klasyfikacja VAT o podanym symbolu nie istnieje !$Czy doda|c t|e klasyfikacj|e ?"
"Nie ma |zadnych zamiennik|ow klasyfikacji VAT !"
"Tablica zamiennik|ow klasyfikacji VAT jest pusta !$Wprowadzasz pierwsz|a klasyfikacj|e ?"
"Nie ma klasyfikacji VAT o podanym symbolu.$Znale|x|c nast|epn|a ?"
"%s - nie ma takiej klasyfikacji !"
INT_KLAS-WARUNEK
// --------------------------------------------
% INT_KLAS.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,10,2,1,,N     # symbol klasyfikacji VAT - zrodlowy
101,string,,834,2        # symbol klasyfikacji VAT - zamiennik
102,string,50            # nazwa klasyfikacji VAT - zrodlowa
// --------------------------------------------
% INT_KLAS.DIC # slownik pol rekordu
"SUFF_kod",100,Estring   # symbol klasyfikacji VAT - zrodlowy
"SUFF_sfx",101,Estring   # symbol klasyfikacji VAT - zamiennik
"SUFF_naz",102,Estring   # nazwa klasyfikacji VAT - zrodlowa
// -------------------------------------------
% INT_KLAS.BOX # okienko do wprowadzania i modyfikacji danych
D = "S|lownik zamiennik|ow klasyfikacji VAT"
"Symbol klasyfikacji VAT - zamiennik:",101,A
"ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-",,T
"Symbol klasyfikacji VAT - |xr|od|lowy:",100
"Nazwa:",102,A
// --------------------------------------------
% INT_KLAS-WARUNEK.DIC
"Symbol klasyfikacji VAT - zamiennik:",101
"Symbol klasyfikacji VAT - |xr|od|lowy:",100
"Nazwa:",102
// --------------------------------------------
% INT_KLAS.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (SUFF_kod = "") goto error
ID := 101
if (SUFF_sfx = "") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_KLAS.BUT # "buttony" do rejestru 
// Ogladanie klasyfikacji (z modyfikacja)
//"%D%odanie klasyfikacji",5,1
"Z%m%ie|n",4,1   # modyfikacja
"%U%su|n",6,1
"Klasyfikacja: @        ",7,1
@5,0,1               # Koniec
// --------------------------------------------
% INT_KLAS.MEN # menu z rubrykami
D = 73,"Tablica zamiennik|ow klasyfikacji VAT"
LINIA-DIALOG = REJESTR-KLAS-EDYCJA,"Kolumny dla KLAS"
101,,,,50,"Zamiennik"     # identyfikator klasyfikacji (zamiennik)
100,,,,50,"|Xr|od|lowy"   # identyfikator klasyfikacji (zrodlowy)
102,,,,,"Nazwa"           # nazwa

% REJESTR-KLAS-EDYCJA.DIC
"INT_KLAS",0
//
//=====================================================
//INT_KLAS-MENU-? okienka menu_na_rekordy dla roznych trybow rejestru INT_KLAS
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
//***************************P************************************
% INT_KLAS-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:INT_KLAS_MENU_DEF
%< INT_KLAS-MENU-DEF.XXX
//
% INT_KLAS-MENU-2.GUI32.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_KLAS-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_KLAS_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20        # #21      #     #23                                         #
                                                                         #102<
 #100                                                                   #

//

//******************************K************************************************
% INT_KLAS-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"S|lownik zamiennik|ow klasyfikacji VAT"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,B,0,,"Zamiennik",,&&lwhite/blue,&&lwhite/blue,,,ZMIENNA:kntr_numer_klucza,,A,1,"2"
##21,B,0,,"|Xr|od|lowy",,&&lwhite/blue,&&lwhite/blue,,,ZMIENNA:kntr_numer_klucza,,,1,"1"
##23,TLD,0,,"Nazwa",,&&lwhite/blue

//
% INT_KLAS_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
//*501,"Operacje"
*4,"Z%m%ie|n"
*6,"%U%su|n"
//
% INT_KLAS_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"Klasyfikacj|e"
9,"%N%ast|epn|a klasyfikacj|e"
10,"%F%iltr"
*504,"Druku%j%"
*503,"Operacje pozosta|le"
15,"Zmie|n klucz"
16,"Wyczy|s|c s|lownik"
//
//---------------------------
% INT_KLAS-MENU-2.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_KLAS-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_KLAS_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20        # #21      #     #23                                         #
                                                                         #102<
 #100                                                                   #

//
% INT_KLAS_MENU_GORNE-2                          
P =3,,AD
*0,@5
%< INT_KLAS_MENU_GORNE-SRODEK.XXX
%< INT_KLAS_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-INT_KLAS-MENU-2
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_KLAS-MENU_PRZED_WYSW
  "AKCJA-BUTTON15",INT_KLAS-MENU_ZMIEN_KLUCZ
  "AKCJA-BUTTON16",INT_KLAS-MENU_WYCZYSC
  "AKCJA-BUTTON20",INT_KLAS-ZMIANA-KLUCZA
  "AKCJA-BUTTON21",INT_KLAS-ZMIANA-KLUCZA
  "AKCJA-BUTTON504",INT_KLAS-MENU-DRUKUJ
//
% INT_KLAS-MENU_PRZED_WYSW.ALG
//pobierz numer klucza do wywietlania
  kntr_numer_klucza := 2
  if (RejWezP_S["R:dekr_srt"]="Z") kntr_numer_klucza := 1
//ustawienie parametrow menu_na_rekordy
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_KLAS,,KLUCZ,1"]
  goto kont
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_KLAS,,KLUCZ,2"]
  goto kont
kont:
//ustaw naglowek okna
  ExDialogOp["ZmienNaglowek","S|lownik zamiennik|ow klasyfikacji VAT dla polecenia "+naz_int_nag] 
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% INT_KLAS-MENU_ZMIEN_KLUCZ.ALG
//wywolaj okienko dialogowe do wybrania klucza sortowania
  ExDialogOp["IdzDoDialogu","KNTR_KLUCZ"]
  if (D_POS=91) ExitAlg[0]
  CallAlg["INT_KLAS-ZMIANA-KLUCZA"]
//
% INT_KLAS-ZMIANA-KLUCZA.ALG
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_KLAS,,KLUCZ,1"]
  goto _koniec
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_KLAS,,KLUCZ,2"]
  goto _koniec
_koniec:
  ExDialogOp["WyswietlPozycje","100"]
//odswiez ptaszki na ekranie
  ExDialogOp["ZmienWartoscGrupy","1"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
//
% INT_KLAS-MENU-DRUKUJ.ALG
//drukuj slownik klasyfikacji VAT
  zmenu := .T.
  naz_plik := "INT_KLAS.RXR" + "+" + naz_kat + "\int_klas"
  IdzDoWydruku["int\int_prts.drk",""]
  ExitAlg[0]
//
% INT_KLAS-MENU_WYCZYSC.ALG
  if (not(YesAlert["Ta operacja spowoduje bezpowrotne wymazanie$danych ze s|lownika zamiennik|ow klasyfikacji VAT$Kontynuowa|c?"])) ExitAlg[0]
  RejOp["WyczyscRej",""]
  ExDialogOp["WyswietlPozycje","100"]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_KLAS-MENU-?
//=====================================================
//=====================================================
//INT_KLAS-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
//*********************************P****************************
% INT_KLAS-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane klasyfikcji VAT"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_KLAS
//
% INT_KLAS-REKORD-0.GUI32.DLG
RESORS = dll\int.dll:INT_KLAS_REKORD1
//zmien
PRZYCISK_CANCELID = 2
%<INT_KLAS-REKORD.GUI32.XXX

  #100                                                           #1        #
                                                                 #2        #
                                                             #100
// ------------------------------------------------------------------
% INT_KLAS-REKORD-2.GUI32.DLG
RESORS = dll\int.dll:INT_KLAS_REKORD1_P
//pokaz
PRZYCISK_CANCELID = 3
%<INT_KLAS-REKORD.GUI32.XXX

  #100                                                      
                                                                 #3        #
                                                             #100
//********************************K************************************************


% INT_KLAS-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane klasyfikcji VAT"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_KLAS
//
% INT_KLAS-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_KLAS-REKORD.XXX

  #100                                                           #1        #
                                                                 #2        #
                                                             #100
// ------------------------------------------------------------------
% INT_KLAS-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_KLAS-REKORD.XXX

  #100                                                      
                                                                 #3        #
                                                             #100
// ------------------------------------------------------------------
% TABLICA-AKCJI-INT_KLAS-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_KLAS-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_KLAS-REKORD_AKCEPTUJESZ
//
% INT_KLAS-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","101"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","101"]
  ExitAlg[0]
//
// ------------------------------
% TABLICA-AKCJI-INT_KLAS-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_KLAS-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_KLAS-REKORD_AKCEPTUJESZ
//
// ------------------------------
% TABLICA-AKCJI-INT_KLAS-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_KLAS-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_KLAS-REKORD_AKCEPTUJESZ
//
% INT_KLAS-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","3"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_KLAS-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["suff_kod"] = "")) goto koniec
  OkAlert["Wprowad|x symbol klasyfikacji (zamiennik)!"]
  ExDialogOp["IdzDoPozycji","101"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_KLAS-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
// ==============================================================
// ===== slownik substytutow dewiz
% INT_DEWW.RXR # inicjalizacja rejestru
101
1
"INT_DEWW"
"INT_DEWW"

"Powt|orzony symbol waluty !"
"Zmieniasz symbol waluty ?"
"Czy doda|c t|e walut|e ?"
"Czy usun|a|c t|e walut|e ?"
"Czy doda|c nast|epn|a walut|e ?"
"Waluta o podanym symbolu nie istnieje !$Czy doda|c t|e walut|e ?"
"Nie ma |zadnych walut !"
"Tablica zamiennik|ow walut jest pusta !$Wprowadzasz pierwsz|a walut|e ?"
"Nie ma waluty o podanym symbolu.$Znale|x|c nast|epn|a ?"
"%s - nie ma takiej waluty !"
INT_DEWW-WARUNEK
// --------------------------------------------
% INT_DEWW.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,10,2,1,,N     # symbol waluty - zrodlowy
101,string,4,2,2         # symbol waluty - zamiennik
102,string,50            # nazwa waluty zrodlowa
// --------------------------------------------
% INT_DEWW.DIC # slownik pol rekordu
"SUFF_kod",100,Estring   # symbol waluty - zrodlowy
"SUFF_sfx",101,Estring   # symbol waluty - zamiennik
"SUFF_naz",102,Estring   # nazwa waluty - zrodlowa
// -------------------------------------------
% INT_DEWW.BOX # okienko do wprowadzania i modyfikacji danych
D = "S|lownik zamiennik|ow walut"
"Symbol waluty - zamiennik:",101,A
"ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-",,T
"Symbol waluty - |xr|od|lowy:",100
"Nazwa:",102,A
// --------------------------------------------
% INT_DEWW-WARUNEK.DIC
"Symbol waluty - zamiennik:",101
"Symbol waluty - |xr|od|lowy:",100
"Nazwa:",102
// --------------------------------------------
% INT_DEWW.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (SUFF_kod = "") goto error
ID := 101
if (SUFF_sfx = "") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_DEWW.BUT # "buttony" do rejestru 
// Ogladanie waluty (z modyfikacja)
//"%D%odanie waluty",5,1
"Z%m%ie|n",4,1   # modyfikacja
"%U%su|n",6,1
"Waluta: @        ",7,1
@5,0,1               # Koniec
// --------------------------------------------
% INT_DEWW.MEN # menu z rubrykami
D = 73,"Tablica zamiennik|ow walut"
LINIA-DIALOG = "REJESTR-DEWW-EDYCJA","Kolumny dla DEWIZ"
101,,,,50,"Zamiennik"     # identyfikator waluty (zamiennik)
100,,,,50,"|Xr|od|lowy"   # identyfikator waluty (zrodlowy)
102,,,,,"Nazwa"          # nazwa
% REJESTR-DEWW-EDYCJA.DIC
"INT_DEWW",0
//
//=====================================================
//INT_DEWW-MENU-? okienka menu_na_rekordy dla roznych trybow rejestru INT_DEWW
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
//*********************************P****************************
% INT_DEWW-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:INT_DEWW_MENU_DEF
%< INT_DEWW-MENU-DEF.XXX
//
% INT_DEWW-MENU-2.GUI32.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_DEWW-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DEWW_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20        # #21      #     #23                                         #
                                                                         #102<
 #100                                                                   #

//

//***************************************K***********************************


% INT_DEWW-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"S|lownik zamiennik|ow walut"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,B,0,,"Zamiennik",,&&lwhite/blue,&&lwhite/blue,,,ZMIENNA:kntr_numer_klucza,,A,1,"2"
##21,B,0,,"|Xr|od|lowy",,&&lwhite/blue,&&lwhite/blue,,,ZMIENNA:kntr_numer_klucza,,,1,"1"
##23,TLD,0,,"Nazwa",,&&lwhite/blue

//
% INT_DEWW_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
//*501,"Operacje"
*4,"Z%m%ie|n"
*6,"%U%su|n"
//
% INT_DEWW_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"Walut|e"
9,"%N%ast|epn|a walut|e"
10,"%F%iltr"
*504,"Druku%j%"
*503,"Operacje pozosta|le"
15,"Zmie|n klucz"
16,"Wyczy|s|c s|lownik"
//
//---------------------------
% INT_DEWW-MENU-2.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_DEWW-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DEWW_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20        # #21      #     #23                                         #
                                                                         #102<
 #100                                                                   #

//
% INT_DEWW_MENU_GORNE-2                          
P =3,,AD
*0,@5
%< INT_DEWW_MENU_GORNE-SRODEK.XXX
%< INT_DEWW_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-INT_DEWW-MENU-2
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DEWW-MENU_PRZED_WYSW
  "AKCJA-BUTTON15",INT_DEWW-MENU_ZMIEN_KLUCZ
  "AKCJA-BUTTON16",INT_DEWW-MENU_WYCZYSC
  "AKCJA-BUTTON20",INT_DEWW-ZMIANA-KLUCZA
  "AKCJA-BUTTON21",INT_DEWW-ZMIANA-KLUCZA
  "AKCJA-BUTTON504",INT_DEWW-MENU-DRUKUJ
//
% INT_DEWW-MENU_PRZED_WYSW.ALG
//pobierz numer klucza do wywietlania
  kntr_numer_klucza := 2
  if (RejWezP_S["R:dekr_srt"]="Z") kntr_numer_klucza := 1
//ustawienie parametrow menu_na_rekordy
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_DEWW,,KLUCZ,1"]
  goto kont
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_DEWW,,KLUCZ,2"]
  goto kont
kont:
//ustaw naglowek okna
  ExDialogOp["ZmienNaglowek","S|lownik zamiennik|ow walut dla polecenia "+naz_int_nag] 
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% INT_DEWW-MENU_ZMIEN_KLUCZ.ALG
//wywolaj okienko dialogowe do wybrania klucza sortowania
  ExDialogOp["IdzDoDialogu","KNTR_KLUCZ"]
  if (D_POS=91) ExitAlg[0]
  CallAlg["INT_DEWW-ZMIANA-KLUCZA"]
//
% INT_DEWW-ZMIANA-KLUCZA.ALG
  if (kntr_numer_klucza = 1) goto _klucz1
  if (kntr_numer_klucza = 2) goto _klucz2
_klucz1:
  ExDialogOp["UstawMenuParam","100:INT_DEWW,,KLUCZ,1"]
  goto _koniec
_klucz2:
  ExDialogOp["UstawMenuParam","100:INT_DEWW,,KLUCZ,2"]
  goto _koniec
_koniec:
  ExDialogOp["WyswietlPozycje","100"]
//odswiez ptaszki na ekranie
  ExDialogOp["ZmienWartoscGrupy","1"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
//
% INT_DEWW-MENU-DRUKUJ.ALG
//drukuj slownik walut
  zmenu := .T.
  naz_plik := "INT_DEWW.RXR" + "+" + naz_kat + "\int_deww"
  IdzDoWydruku["int\int_prts.drk",""]
  ExitAlg[0]
//
% INT_DEWW-MENU_WYCZYSC.ALG
  if (not(YesAlert["Ta operacja spowoduje bezpowrotne wymazanie$danych ze s|lownika zamiennik|ow walut$Kontynuowa|c?"])) ExitAlg[0]
  RejOp["WyczyscRej",""]
  ExDialogOp["WyswietlPozycje","100"]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_DEWW-MENU-?
//=====================================================
//=====================================================
//INT_DEWW-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
//***************************P******************************
% INT_DEWW-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane waluty"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_DEWW
//
% INT_DEWW-REKORD-0.GUI32.DLG
RESORS = dll\int.dll:INT_DEWW_REKORD1
//zmien
PRZYCISK_CANCELID = 2
%<INT_DEWW-REKORD.GUI32.XXX

  #100                                                           #1        #
                                                                 #2        #
                                                             #100
// ------------------------------------------------------------------
% INT_DEWW-REKORD-2.GUI32.DLG
RESORS = dll\int.dll:INT_DEWW_REKORD1_P
//pokaz
PRZYCISK_CANCELID = 3
%<INT_DEWW-REKORD.GUI32.XXX

  #100                                                      
                                                                 #3        #
                                                             #100
// ------------------------------------------------------------------
//*********************************K********************************************
% INT_DEWW-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane waluty"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_DEWW
//
% INT_DEWW-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_DEWW-REKORD.XXX

  #100                                                           #1        #
                                                                 #2        #
                                                             #100
// ------------------------------------------------------------------
% INT_DEWW-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_DEWW-REKORD.XXX

  #100                                                      
                                                                 #3        #
                                                             #100
// ------------------------------------------------------------------
% TABLICA-AKCJI-INT_DEWW-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DEWW-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_DEWW-REKORD_AKCEPTUJESZ
//
% INT_DEWW-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","101"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","101"]
  ExitAlg[0]
//
// ------------------------------
% TABLICA-AKCJI-INT_DEWW-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DEWW-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_DEWW-REKORD_AKCEPTUJESZ
//
// ------------------------------
% TABLICA-AKCJI-INT_DEWW-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DEWW-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_DEWW-REKORD_AKCEPTUJESZ
//
% INT_DEWW-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","3"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_DEWW-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["suff_kod"] = "")) goto koniec
  OkAlert["Wprowad|x symbol waluty (zamiennik)!"]
  ExDialogOp["IdzDoPozycji","101"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_DEWW-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
// ==============================================================
// ===== dekr do naliczania polecen ksiegowania
% INT_DATA.RXR,INT_DATA.RJR # inicjalizacja rejestru
100
1
"INT_DATA"
"INT_DATA"

"Powt|orzony symbol rekordu !"
"Zmieniasz symbol rekordu ?"
"Czy doda|c ten rekord ?"
"Czy usun|a|c ten rekord ?"
"Czy doda|c nast|epny rekord ?"
"Rekord o podanym symbolu nie istnieje !$Czy doda|c ten rekord ?"
"Nie ma |zadnych rekord|ow !"
"Tablica jest pusta !$Wprowadzasz pierwszy rekord ?"
"Nie ma rekordu o podanym symbolu.$Znale|x|c nast|epny ?"
"%s - nie ma takiego rekordu !"
INT_DATA-WARUNEK
// --------------------------------------------
% INT_DATA.DBF # struktura rekordu
0,log,,,,,D           # usuwanie "w miejscu"
99,ulong,,,2,,NM      # data_id identyfik. rekordu w int_data
98,ulong              # data_wnma identyfikator stronawn-ma zapisu
100,string,80, ,1,,N  # index operacji (jednoznaczny klucz unikalny)
//
//magda 2007.04.19 - zmiana dlugosci pola
//110,string, 4,2       # index definicji dekretu
110,string,10,2       # index definicji dekretu
111,string, 1,2       # strona ksiegowa operacji
112,string,100        # tresc operacji
113,kwota             # kwota operacji
114,string,1          # sposob prezentacji kwoty w zapisie
//
120,string,20,2       # symbol konta 
121,string,50         # nazwa konta 
122,string,1          # sposob zakladania konta 
123,string,1          # sposob modyfikacji nazwy konta 
124,string,8,2        # atrybuty konta 
//
130,string,20,2       # symbol klasyfikacji
131,string,50         # nazwa klasyfikacji
132,string,1          # sposob modyfikacji nazwy klasyfikacji
133,string,1          # sposob rejestracji zapisow na klasyfikacji
//
140,string,15         # symbol kontrahenta zrodlowy
141,string,15         # symbol kontrahenta Perseus
142,string,1          # sposob modyfikacji kontrahenta w rejestrze kontrahentow
//
150,string,30         # symbol transakcji
151,ydate             # data transakcji
152,ydate             # termin platnosci
153,string,1          # typ transakcji
154,string,1          # rodzaj transakcji
155,string,1          # sposob rejetracji zapisow rozrachunkowych
//
160,string,10         # symbol rejestru VAT
161,string,30         # symbol dokumentu VAT
162,string,30         # dotyczy dokumentu VAT
163,string,3          # typ dokumentu VAT (slownik dokumentow VAT)
164,ydate             # data wystawienia dokumentu VAT
165,ydate             # data sprzedazy/otrzymania
166,ydate             # data obowiazku VAT
167,string,8          # symbol klasyfikacji VAT
168,string,1          # symbol klasyfikacji GUS
169,kwota             # kwota netto
170,kwota             # kwota brutto
180,string,81         # info o bˆedzie
181,string,1	      # ptaszek - byl blad
182,ydate             # data platnosci VAT
183,string,1          # VAT forma platnosci
184,string,50,,       # vatuwagi uwagi do naglowka VAT 
185,string,30,,       # vatkontoplat VAT konto WN brutto
186,string,30,,       # vatkontonetto VAT konto MA netto
187,string,1,,        # vatsposob: sposob wyliczenia vat: "B" o d brutto, "N" od netto 
188,log,,,            # vattrojstr: czy transkacja trojstronna (unia)
195,string,13,2,      # VAT nip UE
196,string,2,         # VAT kod kraju UE UE
//
190,string,4          # symbol waluty
191,kwota             # kwota waluty
// --------------------------------------------
% INT_DATA.DIC # slownik pol rekordu
"DATA_id",99,Ekwota,"Id"
"DATA_wnma",98,Ekwota,"Identyfikator |l|acz|acy stron|e wn i ma zapisu"
"DATA_opridx",100,Estring,"Kod operacji (jednoznaczny klucz unikalny)"
"DATA_oprdef",110,Estring,"Index definicji dekretu"
"DATA_oprstr",111,Estring,"Strona ksi|egowa operacji"
"DATA_oprtrs",112,Estring,"Tre|s|c operacji"
"DATA_oprkwt",113,Ekwota,"Kwota operacji"
"DATA_oprznk",114,Estring,"Spos|ob prezentacji kwoty w zapisie"
"DATA_rdzknt",120,Estring,"Symbol konta"
"DATA_rdznaz",121,Estring,"Nazwa konta"
"DATA_rdzadd",122,Estring,"Spos|ob zak|ladania konta"
"DATA_rdzmod",123,Estring,"Spos|ob modyfikacji nazwy konta"
"DATA_rdzatr",124,Estring,"Atrybuty konta"
"DATA_rzlknt",130,Estring,"Symbol klasyfikacji (kls)"
"DATA_rzlnaz",131,Estring,"Nazwa klasyfikacji (kls)"
"DATA_rzlmod",132,Estring,"Spos|ob modyfikacji nazwy klasyfikacji (kls)"
"DATA_rzlmet",133,Estring,"Spos|ob rejestracji zapis|ow na klasyfikacji (kls)"
"DATA_klnsfx",140,Estring,"Symbol kontrahenta |xrod|lowy (rzr i vat)"
"DATA_klnpln",141,Estring,"Symbol kontrahenta Perseus (rzr)"
"DATA_klnmod",142,Estring,"Spos|ob modyfikacji kontrahenta w rejestrze kontrahentow (rzr)"
"DATA_rzrfak",150,Estring,"Symbol transakcji (rzr i vat)"
"DATA_rzrdat",151,Edata,"Data transakcji (rzr)"
"DATA_rzrtrm",152,Edata,"Termin p|latnosci (rzr)"
"DATA_rzrtyp",153,Estring,"Typ transakcji (rzr)"
"DATA_rzrrdz",154,Estring,"Rodzaj transakcji (rzr)"
"DATA_rzrmet",155,Estring,"Spos|ob rejestracji zapisow rozrachunkowych (rzr)"
"DATA_vatrej",160,Estring,"Symbol rejestru VAT (vat)"
"DATA_vatdok",161,Estring,"Symbol dokumentu VAT (vat)"
"DATA_vatold",162,Estring,"Dotyczy dokumentu VAT (vat)"
"DATA_vattyp",163,Estring,"Typ dokumentu VAT (s|lownik dokumentow VAT) (vat)"
"DATA_vatdat",164,Edata,"Data wystawienia dokumentu VAT (vat)"
"DATA_vatspr",165,Edata,"Data sprzeda|zy/otrzymania (vat)"
"DATA_vatobw",166,Edata,"Data obowi|azku VAT (vat)"
"DATA_vatvat",167,Estring,"Symbol klasyfikacji VAT (vat)"
"DATA_vatgus",168,Estring,"Symbol klasyfikacji GUS (vat)"
"DATA_vatnet",169,Ekwota,"Kwota netto (vat)"
"DATA_vatbrt",170,Ekwota,"Kwota brutto (vat)"
"DATA_vatplt",182,Edata,"Data p|latno|sci VAT (vat)"
"DATA_vatfpl",183,Estring,"VAT forma platno|sci (vat)"
"DATA_vatuwagi",184,Estring,"Uwagi z linii VAT"
"DATA_vatkontoplat",185,Estring,"Konto WN (brutto) z linii VAT"
"DATA_vatkontonetto",186,Estring,"Konto MA (netto) z linii VAT"
"DATA_vatsposob",187,Estring,"Spso|b obliczenia vat od brutto, od netto "
"DATA_vattrojstr",188,Elog,"Czy transakcja tr|ojstronna "
"DATA_blad",180,Estring,"Info o b|l|edzie"
"DATA_ptaszek",181,Estring,"B|l|ad"
"DATA_dewsym",190,Estring,"Symbol waluty (dew)"
"DATA_dewkwt",191,Ekwota,"Kwota waluty (dew)"
"DATA_vatnipue",195,Estring,"NIP UE "
"DATA_vatkodue",196,Estring,"Kod kraju"
// -------------------------------------------
% INT_DATA.BOX # okienko do wprowadzania i modyfikacji danych
D = "S|lownik INT_DATA"
"B|l|ad w rekordzie:",180,A
"Klucz:",100,AU
//
"Dane og|olne",,T
"Symbol dekretu:",110,A
"Strona ksi|egowa operacji:",111,A
"Spos|ob prezentacji kwoty w zapisie:",114,A
"Tresc operacji:",112,A
"Kwota operacji:",113,A
//
"Dotyczy konta",,T
"Symbol konta:",120,A
"Nazwa konta:",121,A
"Spos|ob zak|ladania konta:",122,A
"Spos|ob modyfikacji nazwy konta:",123,A
"Atrybuty konta:",124,A
//
"Dotyczy zapis|ow klasyfikacji pomocniczej",,T
"Symbol klasyfikacji pomocniczej:",130,A
"Nazwa:",131,A
"Spos|ob modyfikacji nazwy:",132,A
"Spos|ob rejestracji zapis|ow klasyfikacji:",133,A
//
"Dotyczy kontrahenta",,T
"Symbol kontrahenta |xr|od|lowy:",140,A
"Symbol kontrahenta Perseus:",141,A
"Spos|ob modyfikacji kontrahenta w rej.kontr.:",142,A
//
"Dotyczy zapis|ow rozrachunkowych",,T
"Symbol transakcji:",150,A
"Data transakcji:",151,A
"Termin p|latno|sci:",152,A
"Typ transakcji:",153,A
"Rodzaj transakcji:",154,A
"Spos|ob rejestracji zapis|ow rozrachunkowych:",155,A
//
"Dotyczy zapis|ow VAT",,T
"Symbol rejestru VAT:",160,A
"Symbol dokumentu VAT:",161,A
"Dotyczy dokumentu VAT:",162,A
"Typ dokumentu VAT:",163,A
"Data wystawienia dokumentu VAT:",164,A
"Data sprzeda|zy/otrzymania:",165,A
"Data obowi|azku VAT:",166,A
"Data p|latno|sci VAT:",182,A
"Forma p|latno|sci VAT:",183,A
"Symbol klasyfikacji VAT:",167,A
"Symbol klasyfikacji GUS:",168,A
"Kwota netto:",169,A
"Kwota brutto:",170,A
"Czy transakcja tr|ojstronna :",188,A
"NIP UE :",195,A
"Kod kraju :",196,A
//
"Dotyczy zapis|ow dewizowych",,T
"Symbol waluty:",190,A
"Kowta waluty:",191,A
// --------------------------------------------
% INT_DATA.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (DATA_opridx = "") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_DATA.BUT # "buttony" do rejestru 
// Ogladanie konta (z modyfikacja)
"%M%odyfikacja rekordu",4,1   # modyfikacja
"%D%odanie rekordu",5,1
"%U%suni|ecie rekordu",6,1
"%S%uma rekord|ow",1,1
"Rekord: @        ",7,1
@5,0,1               # Koniec
// --------------------------------------------
% INT_DATA-WARUNEK.DIC
"Symbol dekretu:",110
"Tresc operacji:",112
"Symbol konta:",120
"Symbol klasyfikacji pomocniczej:",130
"B|l|ad:",181
// --------------------------------------------
% INT_DATA-WYBIERZ.DIC
"INT_DATA",0

// --------------------------------------------
% INT_DATA.MEN # menu z rubrykami
D = 73,"Tablica INT_DATA",AB
LINIA-DIALOG = "INT_DATA-WYBIERZ","Kolumny  do wyboru"  
181,,,,4,"B|l|ad"
110,,,,10,"Dekret"
111,,,,6,"Strona"
120,,,,10,"Konto"
122,,,,2,"" 
130,,,,10,"Klasyfikacja"
132,,,,2,""
141,,,,10,"Kontrahent"
142,,,,,""
113,,,,11,"Kwota"
//
//=====================================================
//INT_DATA-MENU-? okienka menu_na_rekordy dla roznych trybow rejestr INT_DATA
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
//**********************************P******************************
% INT_DATA-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:INT_DATA_MENU_DEF
%< INT_DATA-MENU-DEF.XXX
//
% INT_DATA-MENU-1.GUI32.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_DATA-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DATA_MENU_GORNE-0                     
#101                                                                      #101
#102
                                                                         #102<
 #100                                                                   #

//
//***********************************K*****************************
% INT_DATA-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane |xr|od|lowe z podstawionymi kontami"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,TLD,0,,"B|l|ad Dekret     Strona Konto         Klasyfikacja  Kontrahent        Kwota",,&&lwhite/blue
//
% INT_DATA_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
//*501,"Operacje"
*4,"Z%m%ie|n"
*5,"%D%odaj"
*6,"%U%su|n"
//
% INT_DATA_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"Dekret"
9,"%N%ast|epny dekret"
10,"%F%iltr"
*15,"%S%uma rekord|ow"
*16,"%B%|l|edy"
//
% INT_DATA-MENU-STARE_BUTTONY.XXX
##0,,ADP,,@5		   # "Koniec"
##1,BTG,ADP,,"%W%yb|or"
##2,LBTG,P,,"%O%pis"
##3,,ADP,,@4		# "Rezygnujesz"
##4,LBTG,P,,"Z%m%ie|n"
##5,LBTG,P,,"%D%odaj"
##6,LBTG,P,,"%U%su|n"
##8,LBTG,P,,"%Z%najd|x"
##9,LBTG,P,,"%N%ast|epny"	
##10,LBTG,P,,"%F%iltr"
##12,LBTG,P,,"Druku%j% dekrety"
##15,LBTG,P,,"%S%uma rekord|ow"
##16,LBTG,P,,"%B%|l|edy"
//
//---------------------------------------------
%INT_DATA-MENU-KONIEC_STARE.XXX
//koncowe buttony - niezmienne dla wszystkich trybow 
                                                   #6                #
                                                   #8                #
                                                   #9                #
                                                   #15               #
                                                   #16               #
                                                #100
//---------------------------
% INT_DATA-MENU-SRODEK_STARE.XXX
//---------------------------
//buttony srodkowe - rozne dla roznych trybow 
                                                   --------------------
                                                   #4                #
                                                   #5                #
//---------------------------
% INT_DATA-MENU-1.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_DATA-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_DATA_MENU_GORNE-0                     
#101                                                                      #101
#102
                                                                         #102<
 #100                                                                   #

//
% INT_DATA_MENU_GORNE-0                          
P =3,,AD
*0,@5
%< INT_DATA_MENU_GORNE-SRODEK.XXX
%< INT_DATA_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-INT_DATA-MENU-1
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DATA-MENU_PRZED_WYSW
  "AKCJA-BUTTON15",INT_DATA-MENU_SUMA
  "AKCJA-BUTTON16",INT_DATA-MENU_BLEDY
//
% INT_DATA-MENU_PRZED_WYSW.ALG
//ustawienie parametrow menu_na_rekordy
  ExDialogOp["UstawMenuParam","100:INT_DATA,,KLUCZ,1"]
//usatw naglowek
  ExDialogOp["ZmienNaglowek","Dane |xr|od|lowe z podstawionymi kontami dla polecenia "+naz_int_nag] 
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% INT_DATA-MENU_SUMA.ALG
//sumowanie rekordow
  RejOp["X:OtworzRejSprawdz",naz_data]
  lp := 0
  if (not (RejOp["X:WezPierwszyRek",""])) goto _show
 _next_rek:
  lp := lp + RejWezP_K["X:DATA_oprkwt"]
  if (RejOp["X:WezNastepnyRek",""]) goto _next_rek
 _show:
  OkAlert["Suma:"+lp]
  RejOp["X:ZamknijRej",""]
  exitAlg[0]
//
% INT_DATA-MENU_BLEDY.ALG
//wyswietlenie bledow dla pozycji
  RejOp["YY:OtworzRej1",naz_errs]
  if (RejOp["YY:PustyRej",""]) goto _pusty
//ustaw wartosc filtru
  rek_nr := "INT_DATA"+ToStr["#RejWezP_K[""C:DATA_id""]#S:0"]
  RejOp["YY:WywolajMenu","3"]
  RejOp["YY:ZamknijRej",""]
  ExitAlg[0]
_pusty:
  OkAlert["Nie ma zarejestrowanych b|l|ed|ow"]
  RejOp["YY:ZamknijRej",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_DATA-MENU-? 
//=====================================================
//
//=====================================================
//INT_DATA-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//**********************************P**************************
% INT_DATA-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane dekretu"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_DATA
//
% INT_DATA-REKORD-1.GUI32.DLG
//dodaj
PRZYCISK_CANCELID = 2
%< INT_DATA-REKORD-0.GUI32.DLG
//
% INT_DATA-REKORD-0.GUI32.DLG
RESORS = dll\int.dll:INT_DATA_REKORD1
//zmien
PRZYCISK_CANCELID = 2
%<INT_DATA-REKORD.GUI32.XXX

  #100                                                      #1            #
                                                            #2            #
                                                        #100
// ------------------------------------------------------------------
% INT_DATA-REKORD-2.gui32.DLG
//pokaz
RESORS = dll\int.dll:INT_DATA_REKORD1_P
PRZYCISK_CANCELID = 3
%<INT_DATA-REKORD.gui32.XXX

  #100                                                      
                                                            #3            #
                                                        #100
// ------------------------------------------------------------------





//*****************************K*********************************
% INT_DATA-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane dekretu"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_DATA
//
% INT_DATA-REKORD-1.DLG
//dodaj
PRZYCISK_CANCELID = 2
%< INT_DATA-REKORD-0.DLG
//
% INT_DATA-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_DATA-REKORD.XXX

  #100                                                      #1            #
                                                            #2            #
                                                        #100
// ------------------------------------------------------------------
% INT_DATA-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_DATA-REKORD.XXX

  #100                                                      
                                                            #3            #
                                                        #100
// ------------------------------------------------------------------
% TABLICA-AKCJI-INT_DATA-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DATA-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_DATA-REKORD_AKCEPTUJESZ
//
% INT_DATA-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","100"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","*"]
  ExitAlg[0]
//
% TABLICA-AKCJI-INT_DATA-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DATA-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_DATA-REKORD_AKCEPTUJESZ
//
% TABLICA-AKCJI-INT_DATA-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_DATA-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_DATA-REKORD_AKCEPTUJESZ
//
% INT_DATA-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","1"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_DATA-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["data_oprdef"] = "")) goto koniec
  OkAlert["Wprowad|x symbol definicji dekretu !"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_DATA-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
// ==============================================================
// ===== jednopolowy temp do tworzenia polecenia ksiegowani
% INT_TEMP.RXR # inicjalizacja rejestru
100
1
"INT_TEMP"
"INT_TEMP"

"Powt|orzony symbol rekordu !"
"Zmieniasz symbol rekordu ?"
"Czy doda|c ten rekord ?"
"Czy usun|a|c ten rekord ?"
"Czy doda|c nast|epny rekord ?"
"Rekord o podanym symbolu nie istnieje !$Czy doda|c ten rekord ?"
"Nie ma |zadnych rekord|ow !"
"Tablica jest pusta !$Wprowadzasz pierwszy rekord ?"
"Nie ma rekordu o podanym symbolu.$Znale|x|c nast|epny ?"
"%s - nie ma takiego rekordu !"
INT_TEMP-WARUNEK
// --------------------------------------------
% INT_TEMP.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,30,2,1,,N     # index linii dokumentu oczekujacego
101,string,170           # linia dokumentu oczekujacego
102,string,170           # linia dokumentu oczekujacego
103,string,170           # linia dokumentu oczekujacego
104,string,50            # prefix
105,string,50            # numer faktury
// --------------------------------------------
% INT_TEMP.DIC # slownik pol rekordu
"TEMP_odl",100,Estring,"Indeks linii"
"TEMP_st1",101,Estring,"Linia dokumentu cz. 1"
"TEMP_st2",102,Estring,"Linia dokumentu cz. 2"
"TEMP_st3",103,Estring,"Linia dokumentu cz. 3"
"TEMP_pfx",104,Estring,"Prefix"
"TEMP_fak",105,Estring,"NUmer faktury"
// -------------------------------------------
% INT_TEMP.BOX # okienko do wprowadzania i modyfikacji danych
D = "Tablica INT_TEMP"
"Indeks linii:",100,AU
"st1:",101,A
"st2:",102,A
"st3:",103,A
"pfx:",104,A
"fak:",105,A
// --------------------------------------------
% INT_TEMP-WARUNEK.DIC
"Indeks linii:",100
"st1:",101
"st2:",102
"st3:",103
// --------------------------------------------
% INT_TEMP.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (TEMP_odl = "") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_TEMP.BUT # "buttony" do rejestru 
// Ogladanie konta (z modyfikacja)
"%D%odanie rekordu",5,1
"%M%odyfikacja rekordu",4,1   # modyfikacja
"%U%suni|ecie rekordu",6,1
"Rekord: @        ",7,1
@5,0,1               # Koniec
// --------------------------------------------
% INT_TEMP-WYBIERZ.DIC
"INT_TEMP",0

// --------------------------------------------
% INT_TEMP.MEN # menu z rubrykami
D = 73,"Tablica INT_TEMP",AB
//LINIA-DIALOG = "INT_TEMP-WYBIERZ","Kolumny  do wyboru"  
//LINIA-DIALOG = REJESTR-INT_TEMP-EDYCJA,"Kolumny  do wyboru"  
100,,,,16,"Indeks linii"
101,,,,50,"Linia dokumentu oczekuj|acego"
% REJESTR-INT_TEMP-EDYCJA.DIC
"INT_TEMP",0
//
//=====================================================
//INT_TEMP-MENU-? okienka menu_na_rekordy dla roznych trybow rejestr INT_TEMP
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
//******************************P**********************************
% INT_TEMP-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:INT_TEMP_MENU_DEF
%< INT_TEMP-MENU-DEF.XXX
//
% INT_TEMP-MENU-1.GUI32.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_TEMP-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_TEMP_MENU_GORNE-1                     
#101                                                                      #101
#102
                                                                         #102<
 #100                                                                   #

//



//******************************K**********************************
% INT_TEMP-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Tablica pomocnicza do tworzenia polecenia"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,TLD,0,,"Indeks linii     Linia dokumentu oczekuj|acego",,&&lwhite/blue
//
% INT_TEMP_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
//*501,"Operacje"
*4,"Z%m%ie|n"
*5,"%D%odaj"
*6,"%U%su|n"
//
% INT_TEMP_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"Lini|e"
9,"%N%ast|epn|a lini|e"
10,"%F%iltr"
//
//---------------------------
% INT_TEMP-MENU-1.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_TEMP-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_TEMP_MENU_GORNE-1                     
#101                                                                      #101
#102
                                                                         #102<
 #100                                                                   #

//
% INT_TEMP_MENU_GORNE-1                          
P =3,,AD
*0,@5
%< INT_TEMP_MENU_GORNE-SRODEK.XXX
%< INT_TEMP_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-INT_TEMP-MENU-1
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_TEMP-MENU_PRZED_WYSW
//
% INT_TEMP-MENU_PRZED_WYSW.ALG
//ustawienie parametrow menu_na_rekordy
  ExDialogOp["UstawMenuParam","100:INT_TEMP,,KLUCZ,1"]
//ustaw naglowek okna
  ExDialogOp["ZmienNaglowek","Tablica pomocnicza do tworzenia polecenia "+naz_int_nag] 
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
//=====================================================
//KONIEC INT_TEMP-MENU-?
//=====================================================
//
//=====================================================
//INT_TEMP-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//******************************P**********************************

% INT_TEMP-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane linii dokumentu"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_TEMP
//
% INT_TEMP-REKORD-1.GUI32.DLG
//dodaj
PRZYCISK_CANCELID = 2
%< INT_TEMP-REKORD-0.GUI32.DLG
//
% INT_TEMP-REKORD-0.GUI32.DLG
//zmien
RESORS = dll\int.dll:INT_TEMP_REKORD1
PRZYCISK_CANCELID = 2
%<INT_TEMP-REKORD.GUI32.XXX

  #100                                                      #1            #
                                                            #2            #
                                                        #100
// ------------------------------------------------------------------
% INT_TEMP-REKORD-2.GUI32.DLG
//pokaz
RESORS = dll\int.dll:INT_TEMP_REKORD1_P
PRZYCISK_CANCELID = 3
%<INT_TEMP-REKORD.GUI32.XXX

  #100                                                      
                                                            #3            #
                                                        #100


//*******************************K********************************
% INT_TEMP-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane linii dokumentu"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_TEMP
//
% INT_TEMP-REKORD-1.DLG
//dodaj
PRZYCISK_CANCELID = 2
%< INT_TEMP-REKORD-0.DLG
//
% INT_TEMP-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_TEMP-REKORD.XXX

  #100                                                      #1            #
                                                            #2            #
                                                        #100
// ------------------------------------------------------------------
% INT_TEMP-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_TEMP-REKORD.XXX

  #100                                                      
                                                            #3            #
                                                        #100
// ------------------------------------------------------------------
% TABLICA-AKCJI-INT_TEMP-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_TEMP-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_TEMP-REKORD_AKCEPTUJESZ
//
% INT_TEMP-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","100"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","*"]
  ExitAlg[0]
//
% TABLICA-AKCJI-INT_TEMP-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_TEMP-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_TEMP-REKORD_AKCEPTUJESZ
//
% TABLICA-AKCJI-INT_TEMP-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_TEMP-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_TEMP-REKORD_AKCEPTUJESZ
//
% INT_TEMP-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","1"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_TEMP-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["TEMP_odl"] = "")) goto koniec
  OkAlert["Wprowad|x indeks linii !"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_TEMP-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
// ==============================================================
// ===== rejestr z nazwami plikow zrodlowych
% INT_PLIK.RXR # inicjalizacja rejestru
110
1
"INT_PLIK"
"INT_PLIK"

"Powt|orzony symbol klucza !"
"Zmieniasz symbol klucza ?"
"Czy doda|c ten klucz ?"
"Czy usun|a|c ten klucz ?"
"Czy doda|c nast|epny klucz ?"
"Klucz o podanym symbolu nie istnieje !$Czy doda|c ten klucz ?"
"Nie ma |zadnych kluczy !"
"Tablica plik|ow jest pusta !$Wprowadzasz pierwszy plik ?"
"Nie ma pliku o podanym symbolu.$Znale|x|c nast|epny ?"
// --------------------------------------------
% INT_PLIK.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,1,,1          # index linii
110,string,80            # nazwa pliku zrodlowego
// --------------------------------------------
% INT_PLIK.DIC # slownik pol rekordu
"PLIK_idx",100,Estring   # index linii
"PLIK_naz",110,Estring   # nazwa pliku zrodlowego
// -------------------------------------------
% INT_PLIK.BOX # okienko do wprowadzania i modyfikacji danych
D = "Tablica nazw plik|ow |xr|od|lowych"
"Numer:",100
"",,T
"Nazwa pliku |xr|od|lowego:",110,A
// --------------------------------------------
% INT_PLIK.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (PLIK_idx = "") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_PLIK.BUT # "buttony" do rejestru 
// Ogladanie pliku (z modyfikacja)
"%M%odyfikacja linii",4,1   # modyfikacja
//"%U%suni|ecie linii",6,1
"Linia:   @   ",7,1
@5,0,1               # Koniec
// --------------------------------------------
% INT_PLIK.MEN # MENU Z RUBRYKAMI
D = 73,"Tablica nazw plik|ow |xr|od|lowych"
100,,,,20,"Numer"   # numer (1-9)
110,,,,50,"Nazwa pliku |xr|od|lowego"   # nazwa pliku zrodlowego
//
//=====================================================
//INT_PLIK-MENU-? okienka menu_na_rekordy dla roznych trybow INT_PLIK
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji 
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
//****************************P**********************************
% INT_PLIK-MENU-DEF.GUI32.XXX
RESORS = dll\int.dll:INT_PLIK_MENU_DEF
%< INT_PLIK-MENU-DEF.XXX
//
% INT_PLIK-MENU-2.GUI32.DLG
//modyfikacja,dodawanie, bez filtra
PRZYCISK_CANCELID = 0
%< INT_PLIK-MENU-DEF.GUI32.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_PLIK_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//

//*****************************K*********************************
% INT_PLIK-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
//buttony z zakresu 50-59 - nistandardowa obsluga standardowych buttonow
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Tablica nazw plik|ow |xr|od|lowych"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,TLD,0,,"Numer Nazwa pliku |xr|od|lowego",,&&lwhite/blue

//
% INT_PLIK_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
*4,"Z%m%ie|n"
//
//---------------------------
% INT_PLIK-MENU-2.DLG
//modyfikacja,dodawanie, bez filtra
PRZYCISK_CANCELID = 0
%< INT_PLIK-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_PLIK_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//
% INT_PLIK_MENU_GORNE-2                          
P =3,,AD
*0,@5
%< INT_PLIK_MENU_GORNE-SRODEK.XXX
//
//---------------------------
% TABLICA-AKCJI-INT_PLIK-MENU-2
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_PLIK_MENU_2_PRZED_WYSW
//
% INT_PLIK_MENU_2_PRZED_WYSW.ALG
  ExDialogOp["UstawMenuParam","100:INT_PLIK,,KLUCZ,1"]
//ustaw naglowek okna 
  ExDialogOp["ZmienNaglowek","Tablica nazw plik|ow |xr|od|lowych dla polecenia "+naz_int_nag]
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
//=====================================================
//INT_PLIK-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
//********************************P***************************
% INT_PLIK-REKORD.GUI32.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane rekordu"
##1,,ADP,,$$(@3)
##2,,ADP,,$$(@4)
##3,,ADP,,$$(@5)
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_PLIK
//
% INT_PLIK-REKORD-0.GUI32.DLG
RESORS = dll\int.dll:INT_PLIK_REKORD1
//zmien
PRZYCISK_CANCELID = 2
%<INT_PLIK-REKORD.GUI32.XXX

  #100                                                      #1            #
                                                            #2            #
                                                        #100
// ------------------------------------------------------------------
% INT_PLIK-REKORD-2.GUI32.DLG
//pokaz
RESORS = dll\int.dll:INT_PLIK_REKORD1_P
PRZYCISK_CANCELID = 3
%<INT_PLIK-REKORD.GUI32.XXX

  #100                                                      
                                                                 #3        #
                                                             #100
// ------------------------------------------------------------------


//*********************************K**************************
% INT_PLIK-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane rekordu"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_PLIK
//
% INT_PLIK-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_PLIK-REKORD.XXX

  #100                                                      #1            #
                                                            #2            #
                                                        #100
// ------------------------------------------------------------------
% INT_PLIK-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_PLIK-REKORD.XXX

  #100                                                      
                                                                 #3        #
                                                             #100
// ------------------------------------------------------------------
% TABLICA-AKCJI-INT_PLIK-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_PLIK-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_PLIK-REKORD_AKCEPTUJESZ
//
% INT_PLIK-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","100"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","*"]
  ExitAlg[0]
//
// ------------------------------
% TABLICA-AKCJI-INT_PLIK-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_PLIK-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_PLIK-REKORD_AKCEPTUJESZ
//
// ------------------------------
% TABLICA-AKCJI-INT_PLIK-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_PLIK-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_PLIK-REKORD_AKCEPTUJESZ
//
% INT_PLIK-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","1"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_PLIK-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["plik_idx"] = "")) goto koniec
  OkAlert["Wprowad|x numer!"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_PLIK-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
// ==============================================================
// ==============================================================
// ===== rejestr z parametrami konwersji
% INT_GLOB.RJR # inicjalizacja rejestru
101
1
"INT_GLOB"
"INT_GLOB"

"Powt|orzony symbol parametru !"
"Zmieniasz symbol parametru ?"
"Czy doda|c ten parametr ?"
"Czy usun|a|c ten parametr ?"
"Czy doda|c nast|epny parametr ?"
"Parametr o podanym symbolu nie istnieje !$Czy doda|c ten parametr ?"

"Nie ma |zadnych parametr|ow !"
"Tablica parametr|ow jest pusta !$Wprowadzasz pierwszy parametr ?"
"Nie ma parametru o podanym symbolu.$Znale|x|c nast|epny ?"
// --------------------------------------------
% INT_GLOB.DBF # struktura rekordu
0,log,,,,,D               # usuwanie "w miejscu"
100,string,25,,1,,N       # identyfikator parametru
101,string,80             # wartosc parametru
102,string,40             # nazwa parametru
// --------------------------------------------
% INT_GLOB.DIC # slownik pol rekordu
"GLOBAL_index",100,Estring      # identyfikator parametru
"GLOBAL_tresc",101,Estring      # wartosc parametru
"GLOBAL_nazwa",102,Estring      # nazwa parametru
// -------------------------------------------
% INT_GLOB.BOX # okienko do wprowadzania i modyfikacji danych
D = "Tablica parametr|ow konwersji"
"Identyfikator parametru:",100
"",,T
"Warto|s|c parametru:",101,A
"Nazwa parametru:",102,A
// --------------------------------------------
% INT_GLOB.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (GLOBAL_index = "") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_GLOB.BUT # "buttony" do rejestru 
// Ogladanie pliku (z modyfikacja)
"%M%odyfikacja paramtru",4,1   # modyfikacja
"%U%suni|ecie parametru",6,1
"Parametr: @           ",7,1
@5,0,1               # Koniec
// --------------------------------------------
% INT_GLOB.MEN # MENU Z RUBRYKAMI
D = 50,"Tablica parametr|ow konwersji"
100         # identyfikator parametru (index)
101,,,,10   # wartosc parametru
102         # nazwa parametru
//
// ==============================================================
// ===== rejestr z wykazem stwierdzonych bledow
% INT_ERRS.RXR # inicjalizacja rejestru
100
1
"INT_ERRS"
"INT_ERRS"

"Powt|orzony symbol komunikatu !"
"Zmieniasz symbol komunikatu ?"
"Czy doda|c ten komunikat ?"
"Czy usun|a|c ten komunikat ?"
"Czy doda|c nast|epny komunikat ?"
"Komunikat o podanym symbolu nie istnieje !$Czy doda|c ten komunikat ?"
"Nie ma |zadnych zarejestrowanych b|l|ed|ow !"
"Tablica b|l|ed|ow jest pusta !$Wprowadzasz pierwszy b|l|ad ?"
"Nie ma komunikatu o podanym symbolu.$Znale|x|c nast|epny ?"
"%s - nie ma takiego komunikatu !"
INT_ERRS-WARUNEK
// --------------------------------------------
% INT_ERRS.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,40,,1         # index bledu
101,string,5             # kod bledu
102,ydate                # data operacji
110,string,40            # opis bledu 0
111,string,40            # opis bledu 1
112,string,40            # opis bledu 2
113,string,70            # opis bledu z INT_MESS
114,string,20,,2         # nazwa_rej+numer rekordu; ind 2
120,kwota                # kwota do sprawdzania
121,kwota                # kwota do sprawdzania
122,kwota                # kwota do sprawdzania
// --------------------------------------------
% INT_ERRS.DIC # slownik pol rekordu
"ERRS_idx",100,Estring
"ERRS_kod",101,Estring
"ERRS_dat",102,Edata     # data operacji
"ERRS_ob0",110,Estring   # opis bledu 0
"ERRS_ob1",111,Estring   # opis bledu 1
"ERRS_ob2",112,Estring   # opis bledu 2
"ERRS_mes",113,Estring   # opis bledu z INT_MESS
"ERRS_rek",114,Estring   # nazwa rejestru+numer rekordu
"ERRS_kw0",120,Ekwota    # kwota do sprawdzania
"ERRS_kw1",121,Ekwota    # kwota do sprawdzania
"ERRS_kw2",122,Ekwota    # kwota do sprawdzania
// -------------------------------------------
% INT_ERRS-WARUNEK.DIC
//---------------------------
"Index b|l|edu:",100
"Kod b|l|edu:",101
//---------------------------
% INT_ERRS.BOX # okienko do wprowadzania i modyfikacji danych
D = "Tablica zarejestrowanych  b|l|ed|ow"
"Index b|l|edu:",100,A
"Kod b|l|edu:",101,A
"Data operacji:",102,A
"Opis b|l|edu 0:",110,A
"Opis b|l|edu 1:",111,A
"Opis b|l|edu 2:",112,A
"Opis b|l|edu 3:",113,A
"Kwota b|l|edu 0:",120,A
"Kwota b|l|edu 1:",121,A
"Kwota b|l|edu 2:",122,A
// --------------------------------------------
% INT_ERRS.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (ERRS_idx = "") goto error
ID := 101
if (ERRS_kod = "") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_ERRS.BUT # "buttony" do rejestru 
// Ogladanie bledu (z modyfikacja)
"%M%odyfikacja b|l|edu",4,1   # modyfikacja
"%U%suni|ecie b|l|edu",6,1
"B|lad:@            ",7,1
@5,0,1               # Koniec
// --------------------------------------------
% INT_ERRS.MEN # menu z rubrykami
D = 73,"Tablica zarejestrowanych  b|l|ed|ow"
100,,,,15   # index bledu (index)
101,,,,4   # kod bledu
102   # data operacji
110   # opis b|ledu
//
//=====================================================
//INT_ERRS-MENU-? okienka menu_na_rekordy dla roznych trybow INT_ERRS
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji 
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
% INT_ERRS-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
//buttony z zakresu 50-59 - nistandardowa obsluga standardowych buttonow
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wykaz b|l|ed|ow"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,TLD,0,,"Symbol b|l|edu    Kod   Data    Opis b|l|edu",,&&lwhite/blue

//
% INT_ERRS_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
//*501,"Operacje"
*4,"Z%m%ie|n"
*6,"%U%su|n"
//
% INT_ERRS_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"B|l|ad"
9,"%N%ast|epny b|l|ad"
//
//---------------------------
% INT_ERRS-MENU-2.DLG
//modyfikacja,dodawanie, bez filtra
PRZYCISK_CANCELID = 0
%< INT_ERRS-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_ERRS_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//
% INT_ERRS_MENU_GORNE-2                          
P =3,,AD
*0,@5
%< INT_ERRS_MENU_GORNE-SRODEK.XXX
%< INT_ERRS_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% INT_ERRS-MENU-3.DLG
//modyfikacja,dodawanie, z filtrem
%<INT_ERRS-MENU-2.DLG
//
//---------------------------
% TABLICA-AKCJI-INT_ERRS-MENU-3
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_ERRS_MENU_3_PRZED_WYSW
//
//---------------------------
% TABLICA-AKCJI-INT_ERRS-MENU-2
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_ERRS_MENU_2_PRZED_WYSW
//
% INT_ERRS_MENU_2_PRZED_WYSW.ALG
  ExDialogOp["UstawMenuParam","100:INT_ERRS,,KLUCZ,2"]
//ustaw naglowek okna 
  ExDialogOp["ZmienNaglowek","Wykaz b|l|ed|ow dla polecenia ksi|egowego "+naz_int_nag]
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% FILTR_ERRS.ALG
  A_OK := RejOkWartoscN["ERRS_FILTR"]
//
% INT_ERRS_MENU_3_PRZED_WYSW.ALG
  ExDialogOp["UstawMenuParam","100:INT_ERRS,,KLUCZ,2"]
//  ExDialogOp["ZmienNaglowek","Wykaz b|l|ed|ow dla wybranej pozycji"]
//zaloz filtr na rejestr INT_ERRS
  RejInitN["ERRS_FILTR"]
  RejWpiszWartoscN_S["ERRS_FILTR",114,.T.,rek_nr]
  if (not( RejSzukajWartoscN["ERRS_FILTR",2,.T.])) goto nieznalazlem
kont1:
  ExDialogOp["UstawFiltrAlg","100:FILTR_ERRS"]
kont:
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
nieznalazlem:
  OkAlert["Dla tej pozycji b|l|edy nie wyst|api|ly!"]
  goto kont1
//
//=====================================================
//KONIEC INT_ERRS-MENU-?
//=====================================================
//
//=====================================================
//INT_ERRS-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
% INT_ERRS-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane b|l|edu"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##202,DZ,ADPH,,
##8,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:errs_idx
##9,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:errs_kod
##20,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:errs_dat
##21,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:errs_ob0
##22,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:errs_ob1
##23,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:errs_ob2
##24,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:errs_mes
##25,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:errs_kw0
##26,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:errs_kw1
##27,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:errs_kw2
//
% INT_ERRS-REKORD-1.DLG
//dodaj
%< INT_ERRS-REKORD-0.DLG
//
% INT_ERRS-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_ERRS-REKORD.XXX

  Symbol b|l|edu: ....................... #8                          # 
  Kod b|l|edu: .................................................. #9  #
  Data operacji: ........................................... #20    #
  Opis 1: .................. #21                                    #   
  Opis 2: .................. #22                                    #   
  Opis 3: .................. #23                                    #  
  Opis 4: #24                                                       #   
  Kwota 1: ......................................... #25            #
  Kwota 2: ......................................... #26            #   
  Kwota 3: ......................................... #27            #


             #1              #         #2              #
//-----------------------------------------------------------
//
% INT_ERRS-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_ERRS-REKORD.XXX
  
  Symbol b|l|edu: ...................... #8                          # 
  Kod b|l|edu: ................................................. #9  #   
  Data operacji: .......................................... #20    #
  Opis 1: ................. #21                                    #   
  Opis 2: ................. #22                                    #   
  Opis 3: ................. #23                                    #  
  Opis 4: #24                                                      #   
  Kwota 1: ........................................ #25            #
  Kwota 2: ........................................ #26            #   
  Kwota 3: ........................................ #27            #


                         #3            #
//-----------------------------------------------------------
//
% TABLICA-AKCJI-INT_ERRS-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_ERRS-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_ERRS-REKORD_AKCEPTUJESZ
//
% TABLICA-AKCJI-INT_ERRS-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_ERRS-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_ERRS-REKORD_AKCEPTUJESZ
//
% INT_ERRS-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","8"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","*"]
  ExitAlg[0]
//
% TABLICA-AKCJI-INT_ERRS-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_ERRS-REKORD-2_PRZED_WYSW
//
% INT_ERRS-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","1"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_ERRS-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["errs_idx"] = "")) goto dalej
  OkAlert["Wprowad|x symbol b|l|edu !"]
  ExDialogOp["IdzDoPozycji","8"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
dalej:
  if (not (RejWezP_S["errs_kod"] = "")) goto koniec
  OkAlert["Wprowad|x kod b|l|edu !"]
  ExDialogOp["IdzDoPozycji","9"]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_ERRS-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
// ==============================================================
// ===== rejestr komunikatow o bledach
% INT_MESS.RXR # inicjalizacja rejestru
101
1
"INT_MESS"
"INT_MESS"

"Powt|orzony symbol komunikatu !"
"Zmieniasz opis b|l|edu ?"
"Czy doda|c ten b|l|ad ?"
"Czy usun|a|c ten b|l|ad ?"
"Czy doda|c nast|epny b|l|ad ?"
"B|l|ad o podanym symbolu nie istnieje !$Czy doda|c ten b|l|ad ?"
"Nie ma |zadnych b|l|ed|ow !"
"Tablica b|l|ed|ow jest pusta !$Wprowadzasz pierwszy b|l|ad ?"
"Nie ma b|l|edu o podanym symbolu.$Znale|x|c nast|epny ?"
"%s - nie ma takiego b|l|edu !"
INT_MESS-WARUNEK
// --------------------------------------------
% INT_MESS.DBF # struktura rekordu
0,log,,,,,D              # usuwanie "w miejscu"
100,string,5,2,1,,N      # kod bledu
101,string,70            # opis bledu
102,string,1,2           # typ bledu
// --------------------------------------------
% INT_MESS.DIC # slownik pol rekordu
"MESS_kod",100,Estring   # kod bledu
"MESS_mes",101,Estring   # opis bledu
"MESS_typ",102,Estring   # typ bledu
// -------------------------------------------
% INT_MESS.BOX # okienko do wprowadzania i modyfikacji danych
D = "Tablica komunikat|ow o b|l|edach"
"Opis:",101,A
"Typ b|l|edu:",102,A
"Kod b|l|edu:",100
// --------------------------------------------
% INT_MESS-WARUNEK.DIC
"Opis:",101
"Typ b|l|edu:",102
"Kod b|l|edu:",100
// --------------------------------------------
% INT_MESS.CHK # sprawdzanie poprawnosci wybranych pol
OK := .T.
ERRMESS := "Pole musi by|c wype|lnione !"
ID := 100
if (MESS_kod = "") goto error
ID := 101
if (MESS_mes = "") goto error
goto __OK
error:
BEEP[0]
OK := .N.
__OK:
// --------------------------------------------
% INT_MESS.BUT # "buttony" do rejestru 
// Ogladanie komunikatu (z modyfikacja)
//"%D%odanie komunikatu",5,1
//"%U%suni|ecie komunikatu",6,1
"%M%odyfikacja komunikatu",4,1   # modyfikacja
"Komunikat: @        ",7,1
@5,0,1               # Koniec
// --------------------------------------------
% INT_MESS.MEN # menu z rubrykami
D = 73,"Tablica komunikatow o b|l|edach"
100   # kod bledu (index)
102,,,,3   # typ bledu
101,,,,62   # opis bladu
//
//=====================================================
//INT_MESS-MENU-? okienka menu_na_rekordy dla roznych trybow rejestru INT_MESS
//=====================================================
//sekcje z kawalkami definicji dialogow
// kazdy dialog *-MENU-? sklada sie z sekcji:
//*-DEF.XXX - definicje pozycji
//poczatek buttonow wpisywany bezposrednio do dialogu *-MENU-?
//*-MENU_GORNE-KONIEC - menu gorne, buttony koncowe
//*-MENU_GORNE-SRODEK - menu gorne, buttony srodkowe
//---------------------------
% INT_MESS-MENU-DEF.XXX
//definicja buttonow i pozycji - niezmienna dla wszytskich trybow
//buttony z zakresu 0-10 - obsluga standardowa Stasia
##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Tablica komunikat|ow o b|l|edach"
//##DEFWINDOW =6,3,,76,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##100,0,ACMP,,,,,,,,MENU_NA_REKORDY
##102,DZ,0,,,,&&lwhite/blue,&&lwhite/blue
##20,TLD,0,,"Kod  Typ  Opis b|l|edu",,&&lwhite/blue

//
% INT_MESS_MENU_GORNE-SRODEK.XXX
*2,"%P%oka|z"
*4,"Z%m%ie|n"
//
% INT_MESS_MENU_GORNE-KONIEC.XXX
*502,"Znajd|x"
8,"B|l|ad"
9,"%N%ast|epny b|l|ad"
10,"%F%iltr"
*504,"Druku%j%"
//
//---------------------------
% INT_MESS-MENU-2.DLG
//modyfikacja,dodawanie
PRZYCISK_CANCELID = 0
%< INT_MESS-MENU-DEF.XXX
##101,0,P,,,,,,,,Menu_rozwijane:INT_MESS_MENU_GORNE-2                     
#101                                                                      #101
#102
 #20                                                                   #
                                                                         #102<
 #100                                                                   #

//
% INT_MESS_MENU_GORNE-2                          
P =3,,AD
*0,@5
%< INT_MESS_MENU_GORNE-SRODEK.XXX
%< INT_MESS_MENU_GORNE-KONIEC.XXX
//
//---------------------------
% TABLICA-AKCJI-INT_MESS-MENU-2
//---------------------------
  "AKCJA-PRZED-WYSWIETLENIEM",INT_MESS-MENU_PRZED_WYSW
  "AKCJA-BUTTON504",INT_MESS-MENU-DRUKUJ
//
% INT_MESS-MENU_PRZED_WYSW.ALG
//ustawienie parametrow menu_na_rekordy
  ExDialogOp["UstawMenuParam","100:INT_MESS,,KLUCZ,1"]
//ustaw naglowek okna
//zawsze ustawiaj sie na rekordach okienka wertowania
  ExDialogOp["IdzDoPozycji","100"]
//
% INT_MESS-MENU-DRUKUJ.ALG
//drukuj slownik z zestawem rozpoznawanych bledow
  IdzDoWydruku["int\int_prtm.drk",""]
  ExitAlg[0]
//
//=====================================================
//INT_MESS-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
//
% INT_MESS-REKORD.XXX
//dialog - okienko z rekordem - definicje pozycji
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Dane rekordu"
##1,,ADP,,"Z%a%pisz"
##2,,ADP,,"An%u%luj"
##3,,ADP,,@5
##100,0,ACMP,,,,,,,,OKNO_NA_REKORD:INT_MESS
//
% INT_MESS-REKORD-0.DLG
//zmien
PRZYCISK_CANCELID = 2
%<INT_MESS-REKORD.XXX

  #100                                                      #1            #
                                                            #2            #
                                                        #100
// ------------------------------------------------------------------
% INT_MESS-REKORD-2.DLG
//pokaz
PRZYCISK_CANCELID = 3
%<INT_MESS-REKORD.XXX

  #100                                                      
                                                                 #3        #
                                                             #100
// ------------------------------------------------------------------
% TABLICA-AKCJI-INT_MESS-REKORD-0
  "AKCJA-PRZED-WYSWIETLENIEM",INT_MESS-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_MESS-REKORD_AKCEPTUJESZ
//
% INT_MESS-REKORD-0_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","100"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaWprowadzana","*"]
  ExitAlg[0]
//
// ------------------------------
% TABLICA-AKCJI-INT_MESS-REKORD-1
  "AKCJA-PRZED-WYSWIETLENIEM",INT_MESS-REKORD-0_PRZED_WYSW
  "AKCJA-BUTTON1",INT_MESS-REKORD_AKCEPTUJESZ
//
// ------------------------------
% TABLICA-AKCJI-INT_MESS-REKORD-2
  "AKCJA-PRZED-WYSWIETLENIEM",INT_MESS-REKORD-2_PRZED_WYSW
  "AKCJA-BUTTON1",INT_MESS-REKORD_AKCEPTUJESZ
//
% INT_MESS-REKORD-2_PRZED_WYSW.ALG
  ExDialogOp["IdzDoPozycji","1"]
  ExDialogOp["PozycjaAktywna","*"]
  ExDialogOp["PozycjaNiewprowadzana","*"]
  ExitAlg[0]
//
% INT_MESS-REKORD_AKCEPTUJESZ.ALG
  if (not (RejWezP_S["mess_kod"] = "")) goto dalej
  OkAlert["Wprowad|x kod b|l|edu!"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
dalej:
  if (not (RejWezP_S["mess_mes"] = "")) goto koniec
  OkAlert["Wprowad|x opis b|l|edu!"]
  ExDialogOp["IdzDoPozycji","100"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
//=====================================================
//KONIEC INT_MESS-REKORD-? okienka z rekordem dla roznych trybow 
//=====================================================
// ==============================================================
// ===== rejestr z datami otwartego okresu ksiegowego
% GLOB.RJR # inicjalizacja rejestru
100
0
"GLOB"
// --------------------------------------------
% GLOB.DIC # slownik pol rekordu
"gdataosti",100,Edata      # data ostatniego ksiegowania w otwartym okresie ksiegowym
"gobrpoczi",101,Edata      # data poczatkowa otwartego okresu ksiegowego
"gobrkoni",102,Edata       # data koncowa otwartego okresu ksiegowego
"gokrzami",103,Elog        # czy okres zamkniety
//
// ====================================================================
// ===================================================================
// ==================================================================
//*****************************GUI********************************
% INTERFACE.GUI32.DLG
RESORS = dll\int.dll:INT_INTERFACE
PRZYCISK_CANCELID = 91
//##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Tworzenie polecenia ksi|egowania  "
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##90,,ADP,,$$(@3)
##91,,ADP,,$$(@4)
##10,D,AC,,,,&&lblue/white,&&lblue/lwhite,,,ZMIENNA:naz_int,string
##9,D,AC,,,,&&lblue/white,&&lblue/lwhite,,,ZMIENNA:naz_naz,string
//##9,D,,,,,,,,,zmienna:naz_int,string
//##10,D,,,,,,,,,zmienna:naz_naz,string
##11,0,P,,"%w%czytywania danych |xr|od|lowych",,,,,,zmienna:faza,,,0,1
##12,0,P,,"%k%onwertowania danych do postaci bazowej",,,,,,zmienna:faza,,,0,2
##13,0,P,,"%d%ekretowania dokumentu ksi|egowego",,,,,,zmienna:faza,,,0,3
##14,0,P,,"%t%worzenia polecenie ksi|egowania",,,,,,zmienna:faza,,,0,4
##15,0,P,,"%o%dk|ladania dokumentu ksi|egowego",,,,,,zmienna:faza,,,0,5
##20,BGTL,ADP,," %L%okalizacja"
##21,BGTL,ADP,," %P%arametry"
##202,DZ,ADPH,,"Rozpoczyna|c tworzenie polecenia ksi|egowania od:"
//##21,BGTL,ACP,," %P%arametry"

  

   #202 
    #11                                     #
    #12                                     #
    #13                                     #
    #14                                     #
    #15                                     #        #202


      #90          #               #91          #

________________________________________________________

      #20          #               #21          #
// -------------------------
//*********************************GUIk**********************
% INTERFACE.DLG
PRZYCISK_CANCELID = 91
//##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Tworzenie polecenia ksi|egowania  "
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,
##90,,ADP,,"Wykon%a%j"
##91,,ADP,,@4
##10,D,AC,,,,&&lblue/white,&&lblue/lwhite,,,ZMIENNA:naz_int,string
##9,D,AC,,,,&&lblue/white,&&lblue/lwhite,,,ZMIENNA:naz_naz,string
//##9,D,,,,,,,,,zmienna:naz_int,string
//##10,D,,,,,,,,,zmienna:naz_naz,string
##11,0,P,,"%w%czytywania danych |xr|od|lowych",,,,,,zmienna:faza,,,0,1
##12,0,P,,"%k%onwertowania danych do postaci bazowej",,,,,,zmienna:faza,,,0,2
##13,0,P,,"%d%ekretowania dokumentu ksi|egowego",,,,,,zmienna:faza,,,0,3
##14,0,P,,"%t%worzenia polecenie ksi|egowania",,,,,,zmienna:faza,,,0,4
##15,0,P,,"%o%dk|ladania dokumentu ksi|egowego",,,,,,zmienna:faza,,,0,5
##20,BGTL,ADP,," %L%okalizacja"
##21,BGTL,ADP,," %P%arametry"
##202,DZ,ADPH,,"Rozpoczyna|c tworzenie polecenia ksi|egowania od:"
//##21,BGTL,ACP,," %P%arametry"

  

   #202 
    #11                                     #
    #12                                     #
    #13                                     #
    #14                                     #
    #15                                     #        #202


      #90          #               #91          #

________________________________________________________

      #20          #               #21          #
// -------------------------
% TABLICA-AKCJI-INTERFACE
  "AKCJA-PRZED-WYSWIETLENIEM",INTERFACE_PRZED
  "AKCJA-BUTTON20",INTERFACE_LOKALIZACJA
  "AKCJA-BUTTON21",INTERFACE_PARAMETRY
//
% INTERFACE_PRZED.ALG
//ustaw naglowek okna
  ExDialogOp["ZmienNaglowek","Tworzenie polecenia ksi|egowania " + naz_int]
  ExDialogOp["IdzDoPozycji","90"]
//
% INTERFACE_LOKALIZACJA.ALG
  RejOp["OtworzRejSprawdz","INT_DEKR.RXR"]
  RejOp["ZnajdzRek",naz_int]
  ExDialogOp["IdzDoDialogu","LOKALIZACJA"]
//  if (D_POS=90) RejOp["ZapiszRek",""]
  RejOp["ZamknijRej",""]
  ExDialogOp["IdzDoPozycji","90"]
//
% INTERFACE_PARAMETRY.ALG
  if (not(naz_cnv = ".cnv")) goto dalej
  okAlert["Dla tego polecenia ksi|egowanie nie zdefiniowano$algorytmu do wprowadzneia dodatkowych parametr|ow$(plik z rozszerzeniem *.cnv)"]
  ExitAlg[0]
dalej:
  if (DyskOp["JestPlik","wlasne\int\"+naz_kat+"\"+naz_cnv,""]) goto _jest
  nazz_cnv := "wlasne"+slash+"int"+slash+naz_kat+slash+naz_cnv
  OkAlert["Na dysku brak algorytmu do wprowadzenia parametr|ow:$(plik z rozszerzeniem *.cnv)$"+nazz_cnv]
  ExitAlg[0]
_jest:
  parametry := .T.
  IdzDoWydruku["int\"+naz_kat+"\"+naz_cnv,""]
  ExDialogOp["IdzDoPozycji","90"]
  ExitAlg[0]
//
// -------------------------
% LOKALIZACJA.GUI32.DLG
RESORS = dll\int.dll:INT_LOKALIZACJA
PRZYCISK_CANCELID = 91
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Lokalizacja i struktura rekord|ow plik|ow |xr|od|lowych"
##90,,ADP,,$$(@3)
##91,,ADP,,$$(@4)
##10,D,AC,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_int
##9,D,AC,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_naz
##11,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt1
##21,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl1
##31,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format1
##41,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv1
##12,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt2
##22,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl2
##32,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format2
##42,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv2
##13,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt3
##23,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl3
##33,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format3
##43,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv3
##14,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt4
##24,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl4
##34,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format4
##44,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv4
##15,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt5
##25,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl5
##35,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format5
##45,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv5
##16,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt6
##26,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl6
##36,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format6
##46,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv6
##17,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt7
##27,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl7
##37,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format7
##47,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv7
##18,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt8
##28,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl8
##38,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format8
##48,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv8
##19,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt9
##29,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl9
##39,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format9
##49,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv9


 Polecenie:  #10    #, #9                                     #


                                                                    Plik z
  Dane |xr|od|lowe                                   Polskie  Format  konwersj|a
  |Scie|zka [Plik]                                  litery   pliku   pierwotn|a
 
1: #11                                          # #21   #  #31   #  #41    #
2: #12                                          # #22   #  #32   #  #42    #
3: #13                                          # #23   #  #33   #  #43    #
4: #14                                          # #24   #  #34   #  #44    #
5: #15                                          # #25   #  #35   #  #45    #
6: #16                                          # #26   #  #36   #  #46    #
7: #17                                          # #27   #  #37   #  #47    #
8: #18                                          # #28   #  #38   #  #48    #
9: #19                                          # #29   #  #39   #  #49    #


                #90             #           #91             #
// -------------------------
% LOKALIZACJA.DLG
//##DEFWINDOW = 4,2,23,77,ACP
//##DEFWINDOW = ,,,,ACP
PRZYCISK_CANCELID = 91
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Lokalizacja i struktura rekord|ow plik|ow |xr|od|lowych"
##90,,ADP,,"Z%a%pisz"
##91,,ADP,,"An%u%luj"
##10,D,AC,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_int
##9,D,AC,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_naz
##11,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt1
##21,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl1
##31,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format1
##41,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv1
##12,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt2
##22,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl2
##32,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format2
##42,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv2
##13,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt3
##23,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl3
##33,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format3
##43,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv3
##14,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt4
##24,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl4
##34,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format4
##44,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv4
##15,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt5
##25,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl5
##35,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format5
##45,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv5
##16,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt6
##26,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl6
##36,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format6
##46,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv6
##17,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt7
##27,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl7
##37,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format7
##47,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv7
##18,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt8
##28,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl8
##38,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format8
##48,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv8
##19,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_txt9
##29,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_pl9
##39,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_format9
##49,0,D,,,,&&lblue/white,&&lblue/lwhite,,,POLE:DEKR_cnv9


 Polecenie:  #10    #, #9                                     #


                                                                    Plik z
  Dane |xr|od|lowe                                   Polskie  Format  konwersj|a
  |Scie|zka [Plik]                                  litery   pliku   pierwotn|a
 
1: #11                                          # #21   #  #31   #  #41    #
2: #12                                          # #22   #  #32   #  #42    #
3: #13                                          # #23   #  #33   #  #43    #
4: #14                                          # #24   #  #34   #  #44    #
5: #15                                          # #25   #  #35   #  #45    #
6: #16                                          # #26   #  #36   #  #46    #
7: #17                                          # #27   #  #37   #  #47    #
8: #18                                          # #28   #  #38   #  #48    #
9: #19                                          # #29   #  #39   #  #49    #


                #90             #           #91             #
// -------------------------
% TABLICA-AKCJI-LOKALIZACJA
  "AKCJA-PRZED-WYKONYWANIEM",LOKALIZACJA_PRZED_WYKON
  "AKCJA-PO-POLU31",LOKALIZACJA_STRUKTURA_REKORDU_1
  "AKCJA-PO-POLU32",LOKALIZACJA_STRUKTURA_REKORDU_2
  "AKCJA-PO-POLU33",LOKALIZACJA_STRUKTURA_REKORDU_3
  "AKCJA-PO-POLU34",LOKALIZACJA_STRUKTURA_REKORDU_4
  "AKCJA-PO-POLU35",LOKALIZACJA_STRUKTURA_REKORDU_5
  "AKCJA-PO-POLU36",LOKALIZACJA_STRUKTURA_REKORDU_6
  "AKCJA-PO-POLU37",LOKALIZACJA_STRUKTURA_REKORDU_7
  "AKCJA-PO-POLU38",LOKALIZACJA_STRUKTURA_REKORDU_8
  "AKCJA-PO-POLU39",LOKALIZACJA_STRUKTURA_REKORDU_9
  "AKCJA-BUTTON91",!SL.INTERFEJS->lokalizacja_rezygn
  "AKCJA-BUTTON90",!SL.INTERFEJS->lokalizacja_akceptujesz
//
% LOKALIZACJA_PRZED_WYKON.ALG
  ExDialogOp["IdzDoPozycji","11"]
  ExitAlg[0]
//
% LOKALIZACJA_STRUKTURA_REKORDU_1.ALG
  nr_i := 1
  CallAlg["LOKALIZACJA_STRUKTURA_REKORDU"]
  ExitAlg[0]
//
% LOKALIZACJA_STRUKTURA_REKORDU_2.ALG
  nr_i := 2
  CallAlg["LOKALIZACJA_STRUKTURA_REKORDU"]
  ExitAlg[0]
//
% LOKALIZACJA_STRUKTURA_REKORDU_3.ALG
  nr_i := 3
  CallAlg["LOKALIZACJA_STRUKTURA_REKORDU"]
  ExitAlg[0]
//
% LOKALIZACJA_STRUKTURA_REKORDU_4.ALG
  nr_i := 4
  CallAlg["LOKALIZACJA_STRUKTURA_REKORDU"]
  ExitAlg[0]
//
% LOKALIZACJA_STRUKTURA_REKORDU_5.ALG
  nr_i := 5
  CallAlg["LOKALIZACJA_STRUKTURA_REKORDU"]
  ExitAlg[0]
//
% LOKALIZACJA_STRUKTURA_REKORDU_6.ALG
  nr_i := 6
  CallAlg["LOKALIZACJA_STRUKTURA_REKORDU"]
  ExitAlg[0]
//
% LOKALIZACJA_STRUKTURA_REKORDU_7.ALG
  nr_i := 7
  CallAlg["LOKALIZACJA_STRUKTURA_REKORDU"]
  ExitAlg[0]
//
% LOKALIZACJA_STRUKTURA_REKORDU_8.ALG
  nr_i := 8
  CallAlg["LOKALIZACJA_STRUKTURA_REKORDU"]
  ExitAlg[0]
//
% LOKALIZACJA_STRUKTURA_REKORDU_9.ALG
  nr_i := 9
  CallAlg["LOKALIZACJA_STRUKTURA_REKORDU"]
  ExitAlg[0]
//
% LOKALIZACJA_STRUKTURA_REKORDU.ALG
//uruchomienie dialogu do wprowadzenia struktury rekordu zrodlowego
//tylko dla plikow o formacie KOLUMNY
  imp_i := RejWezP_S["dekr_format" + ToStr["#nr_i#S:0"]]
  if (imp_i="KOLUMNY") goto kolumny
  if (imp_i="W|LASNY") goto wlasny
  ExitAlg[0]
wlasny:
//definiowanie separatora wlasnego
  nr_plk := nr_i
  sep := ""
//  kod_sep := .
  kod_sep := ""
  kod_sep := RejWezP_S["dekr_sep"+ToStr["#nr_plk#S:0"]]
  ExDialogOp["IdzDoDialogu","DEFINIOWANIE_WLA"]
  if (D_POS=91) ExitAlg[0]
//zapisz kod separatora
//  CallSl["INTERFEJS->kod_sep"]
//  RejWstawP_S["dekr_sep"+ToStr["#nr_plk#S:0"],sep]
  RejWstawP_S["dekr_sep"+ToStr["#nr_plk#S:0"],kod_sep]
  ExitAlg[0]
kolumny:
//definiowanie strukltury rekordu zrodlwoego (od ktorej kolumny pole)
  if (not(YesAlert["Wprowadzasz definicj|e rekordu $w pliku |xr|od|lowym?"])) ExitAlg[0]
//wprowadzanie definicji struktury rekordu pliku zrodlowego
  naz_prg := ""
  naz_kat := ""
  naz_plk := ""
  CallALg["NAZ_KAT_NA_MALE_N"]
  naz_plk := RejWezP_S["dekr_plk" + ToStr["#nr_i#S:0"]]
  nr_plk := nr_i
_dia:
  ExDialogOp["IdzDoDialogu","DEFINIOWANIE_LOK"]
  if (D_POS=91) ExitAlg[0]
  DyskOp["NaMale",naz_plk,""]
  naz_plk := D_String
  if (DyskOp["JestPlik","wlasne\int\"+naz_kat+"\"+naz_plk+".dbf",""]) goto _def
  if (not (YesNAlert["Plik o podanej nazwie nie istnieje$ $Chcesz go za|lo|zy|c ?"])) goto _dia
 _def:
  naz_impd := "INT_IMPD.RXR" + "+" + naz_kat + "\" + naz_plk
  RejOp["I:OtworzRej1",naz_impd]
//zapisz nazwe pliku
  RejWstawP_S["dekr_plk"+ToStr["#nr_plk#S:0"],naz_plk]
  intlpx := RejWezP_K["I:LiczbaRekordow"]
  intlpz := .
 _dialog_struktura:
  ExDialogOp["IdzDoDialogu","STRUKTURA"]
  if (D_POS=91) ExitAlg[0]
  if (intlpz = 0 or intlpz = . and (intlpx = . or intlpx = 0)) goto _end
  if (intlpz = . or intlpz = intlpx) goto _menu
  if (intlpz > 0 and intlpz < 51) goto _zmiana
 _zmiana:
  if (not (YesNAlert["Czy chcesz zmieni|c ilo|s|c p|ol$ $w definicji rekordu pliku |xr|od|lowego ?"])) goto _dialog_struktura
  if (intlpx < intlpz) goto _add
 _cut:
//usun pola
  RejOp["I:WezOstatniRek",""]
  RejOp["I:UsunRek",""]
  if (intlpz < RejWezP_K["I:LiczbaRekordow"]) goto _cut
  goto _menu
 _add:
//dodaj pola
  intlp := RejWezP_K["I:LiczbaRekordow"]
  kod := ToStr["#intlp#S:0"]
  if (StrLen[kod] = 1) kod := "0"+kod
  kod := "P"+kod
  RejOp["I:DodajRek",""]
  RejWstawP_S["I:IMPD_kod",kod]  
  intlp := intlp + 1
  if (intlp < intlpz) goto _add
//edycja pol
 _menu:
  RejOp["I:WywolajMenu","2"]
  intlpx := RejWezP_K["I:LiczbaRekordow"]
 _end:
  RejOp["I:ZamknijRej",""]
  if (intlpx = 0) RejOp["UsunPlikRej",naz_impd]
  ExitAlg[0]
//
// -------------------------
% DEFINIOWANIE_LOK.DLG
//##DEFWINDOW = 8,9,18,70,ACP
PRZYCISK_CANCELID = 91
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Definiowanie struktury rekordu pliku |xr|od|lowego"
##90,,ADP,,@3
##91,,ADP,,@4
##10,D,AC,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_int
##9,D,AC,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_naz
##11,0,D,,,,&&lblue/white,&&lblue/lwhite,,,ZMIENNA:naz_plk,string
##12,0,D,,,,&&lblue/white,&&lblue/lwhite,,,ZMIENNA:nr_plk,xkwota:0

Polecenie:  #10    #, #9                                     #

  
Nazwa pliku ze struktur|a:        #11    #
Numer pliku |xr|od|lowego (1-9):    #12    #



      #90             #              #91             #
// -------------------------
% TABLICA-AKCJI-DEFINIOWANIE_LOK
  "AKCJA-PRZED-WYKONYWANIEM",DEFINIOWANIE_LOK_PRZED_WYKON
  "AKCJA-BUTTON90", DEFINIOWANIE_LOK_AKCEPTUJESZ
//
% DEFINIOWANIE_LOK_PRZED_WYKON.ALG
  ExDialogOp["IdzDoPozycji","11"]
  ExitAlg[0]
//
% DEFINIOWANIE_LOK_AKCEPTUJESZ.ALG
  if (not (naz_plk = "")) goto koniec
  OkAlert["Wprowad|x nazw|e pliku ze struktur|a!"]
  ExDialogOp["IdzDoPozycji","11"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
// -------------------------
% DEFINIOWANIE_WLA.DLG
PRZYCISK_CANCELID = 91
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Wprowadzenie w|lasnego separatora p|ol rekordu "
##90,,ADP,,"Z%a%pisz"
##91,,ADP,,"An%u%luj"
##10,D,AC,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_int
##9,D,AC,,,,&&lblue/white,&&lblue/lwhite,,,POLE:dekr_naz
//##11,0,ACP,,,,,,,,SLOWNIK:kod_sep,217
##11,0,D,,,,&&lblue/white,&&lblue/lwhite,,,SLOWNIK:kod_sep,217
//##11,0,P,,,,,,,,zmienna:kod_sep,xkwota:0
//##12,D,P,,,,,,,,zmienna:nr_plk,xkwota:0

Polecenie:  #10    #, #9                                     #

  
Podaj kod separatora p|ol (F2):        #11    #



      #90             #              #91             #
// -------------------------
% TABLICA-AKCJI-DEFINIOWANIE_WLA
  "AKCJA-PRZED-WYKONYWANIEM",DEFINIOWANIE_WLA_PRZED_WYKON
  "AKCJA-BUTTON90", DEFINIOWANIE_WLA_AKCEPTUJESZ
//
% DEFINIOWANIE_WLA_PRZED_WYKON.ALG
  ExDialogOp["IdzDoPozycji","11"]
  ExitAlg[0]
//
% DEFINIOWANIE_WLA_AKCEPTUJESZ.ALG
//  if (not (kod_sep = .)) goto koniec
  if (not (kod_sep = "")) goto koniec
  OkAlert["Wprowad|x kod separatora p|ol!"]
  ExDialogOp["IdzDoPozycji","11"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
// -------------------------
% DEFINIOWANIE.DLG
PRZYCISK_CANCELID = 91
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Definiowanie struktury rekordu pliku |xr|od|lowego"
##90,,ADP,,@3
##91,,ADP,,@4
##10,D,AC,,,,&&lblue/white,&&lblue/lwhite,,,POLE:R:dekr_int
##9,D,AC,,,,&&lblue/white,&&lblue/lwhite,,,POLE:R:dekr_naz
##11,0,D,,,,&&lblue/white,&&lblue/lwhite,,,ZMIENNA:naz_plk,string
##12,0,D,,,,&&lblue/white,&&lblue/lwhite,,,ZMIENNA:nr_plk,xkwota:0

Polecenie:  #10    #, #9                                     #

  
Nazwa pliku ze struktur|a:        #11    #
Numer pliku |xr|od|lowego (1-9):    #12    #



      #90             #              #91             #
// -------------------------
% TABLICA-AKCJI-DEFINIOWANIE
  "AKCJA-BUTTON90", DEFINIOWANIE_AKCEPTUJESZ
  "AKCJA-PO-POLU12",DEFINIOWANIE_PO_POLU12
//
% DEFINIOWANIE_AKCEPTUJESZ.ALG
  if (not (naz_plk = "")) goto koniec
  OkAlert["Wprowad|x nazw|e pliku z definicjami!"]
  ExDialogOp["IdzDoPozycji","11"]
  ExitAlg[0]
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
% DEFINIOWANIE_PO_POLU12.ALG
//numer z zakresu 1 do 9
  A_OK := .T.
  if (nr_plk = .) ExitAlg[0]
  if ((nr_plk < 1) OR (nr_plk >9)) goto _blad
  ExitAlg[0]
_blad:
  A_OK := .N.
  OkAlert["Numer pliku |xr|od|lowego $ w zakresie od 1 do 9!"]
  ExDialogOp["IdzDoPozycji","12"]
  ExitAlg[0]
//
// -------------------------
% STRUKTURA.DLG
PRZYCISK_CANCELID = 91
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Definiowanie ilo|sci p|ol w rekordzie pliku |xr|od|lowego"
##90,,ADP,,@3
##91,,ADP,,@4
//##9,D,,,,,,,,,zmienna:naz_plk,string
##9,D,AC,,,,&&lblue/white,&&lblue/lwhite,,,ZMIENNA:naz_plk,string
##10,0,D,,,,&&lblue/white,&&lblue/lwhite,,,ZMIENNA:intlpx,xkwota:0
//##10,D,P,,,,,,,,zmienna:intlpx,xkwota:0
##11,0,D,,,,&&lblue/white,&&lblue/lwhite,,,ZMIENNA:intlpz,xkwota:0
//##11,0,P,,,,,,,,zmienna:intlpz,xkwota:0

Nazwa pliku ze struktur|a:  #9     #


Aktualna liczba p|ol w rekordzie:                    #10 #
Docelowa liczba p|ol w rekordzie:                    #11 #
     


      #90             #              #91             #
// ----------------------------
% TABLICA-AKCJI-STRUKTURA
  "AKCJA-PRZED-WYKONYWANIEM",STRUKTURA_PRZED_WYKON
  "AKCJA-BUTTON90", STRUKTURA_AKCEPTUJESZ
  "AKCJA-PO-POLU11",STRUKTURA_PO_POLU11
//
% STRUKTURA_AKCEPTUJESZ.ALG
koniec:
  ExDialogOp["KoniecWykonywania",""]
  ExitAlg[0]
//
% STRUKTURA_PO_POLU11.ALG
  A_OK := .T.
  if ((intlpz = .) OR (intlpz = 0)) ExitAlg[0]
  if ((intlpz < 1) OR (intlpz >50)) goto _blad
  ExitAlg[0]
_blad:
  A_OK := .N.
  OkAlert["Maksymalna liczba p|ol - 50; minimalna - 1"]
  ExDialogOp["IdzDoPozycji","11"]
  ExitAlg[0]
//
% STRUKTURA_PRZED_WYKON.ALG
  ExDialogOp["IdzDoPozycji","11"]
  ExitAlg[0]
//
% JEST_SPACJA.ALG
//wejscie: kod - string ze spacjami
//wyjscie: 1 - OK, bez spacji
//wyjscie: 0 - byly spacje (komunikat1)
//         0 - lub string wejsciowy jest pusty
  str := ""
  kod1 := kod
  dl := Strlen[kod]
  if (kod = "") ExitAlg[0]
  li := 0
next:
  znak_z := StrCut[kod,li,1]
  if (znak_z=" ") goto blad
  str := str+znak_z
kont:
  li := li+1
  if (li < dl) goto next
//  okalert["kod  "+kod+" str pomocniczy= "+str]
  kod := str
  ExitAlg[1]
blad:
//string zawiera spacje
  okalert["B|l|ad! Symbol kontrahenta zawiera spacje!$"+kod1]
  ExitAlg[0]
//  
//madzia
% KONW_NIP.ALG
//funkcja do konwertowania nipu:
// wejscie: zmienna pronip: zawiera nip do sprawdzenia
//dzialanie: jesli spotka znak "-" usuwa go
// wyjscie: zmienna pronip zawiera nip bez myslnikow
  str := ""
  kod1 := pronip
  dl := Strlen[pronip]
  if (pronip = "") ExitAlg[0]
  li := 0
next:
  znak_z := StrCut[pronip,li,1]
  if (znak_z="-") goto kont
  str := str+znak_z
kont:
  li := li+1
  if (li < dl) goto next
  pronip := str
  ExitAlg[1]
//
// ====================================================================
// SEKCJE W SL
// ====================================================================
//
%SL.interfejs_funkcje_w_sl

implements("INTERFEJS");

define snali()
{
  %sepearatorem czesci dzisietnej jest przecinek
  variable kw_str = dajazmienna_S("kw_str");
  variable pr = is_substr(kw_str,",");
  variable len = strlen(kw_str);
  variable il = len - pr;
  variable kw_str1;
  if (not(pr==0)) kw_str1 = substr(kw_str,1,pr-1)+substr(kw_str,pr+1,il);
  else kw_str1 = kw_str;
  variable kw = stringnaliczbe(kw_str1);
  if (not(pr == 0))
  {
    if (il == 1) kw = kw/10;
    if (il == 2) kw = kw/100;
    if (il == 3) kw = kw/1000;
    if (il == 4) kw = kw/10000;
  }
  ustawazmienna_K("kw",kw);
}

define snali_kropka()
{
  %to samo co snali tylko sepearatorem czesci dzisietnej jest kropka
  variable kw_str = dajazmienna_S("kw_str");
  variable pr = is_substr(kw_str,".");
  variable len = strlen(kw_str);
  variable il = len - pr;
  variable kw_str1;
  if (not(pr==0)) kw_str1 = substr(kw_str,1,pr-1)+substr(kw_str,pr+1,il);
  else kw_str1 = kw_str;
  variable kw = stringnaliczbe(kw_str1);
  if (not(pr == 0))
  {
    if (il == 1) kw = kw/10;
    if (il == 2) kw = kw/100;
    if (il == 3) kw = kw/1000;
    if (il == 4) kw = kw/10000;
  }
  ustawazmienna_K("kw",kw);
}


define wybierz_trans_przed()
{
   variable klucz = string(dajazmienna_I("TRANS_klucz"));
   () = exdialogop("ustawmenuparam","200:INT_NAGL,XT,KLUCZ,"+klucz+",XT,,DS");
}

define wybierz_trans_zaznacz()
{
   if (rejop("xt:wezpierwszyrek"))
   {
     do
     {
       rejwstawp_l("xt:nagl_ptaszek",1);
     }while (rejop("xt:weznastepnyrek"));
   }
   () = rejop("xt:wezpierwszyrek");
   () = exdialogop("wyswietlpozycje","200");
   () = exdialogop("idzdopozycji","200");
}

define wybierz_trans_zmiana_klucza()
{
   variable klucz = string(dajazmienna_I("TRANS_klucz"));
   %okalert("klucz = "+klucz);
   () = exdialogop("ustawmenuparam","200:INT_NAGL,XT,KLUCZ,"+klucz+",XT,,DS");
   %() = exdialogop("wezpierwszy","200");
   () = exdialogop("wyswietlpozycje","200");
   () = exdialogop("idzdopozycji","200");
}

define wybierz_trans_odznacz()
{
   if (rejop("xt:wezpierwszyrek"))
   {
     do
     {
       rejwstawp_l("xt:nagl_ptaszek",0);
     }while (rejop("xt:weznastepnyrek"));
   }
   () = rejop("xt:wezpierwszyrek");
   () = exdialogop("wyswietlpozycje","200");
   () = exdialogop("idzdopozycji","200");
}

define wybierz_trans_usun()
{
  () = rejop("xt:zmienkluczrej","3");
  if (not(rejop("xt:znajdzrek","T")))
  {
    okalert("Nie zaznaczono |zadnej transakcji do usuni|ecia !");
    return;
  }
  else
  {
    %usuwanie
    variable licznik = 0;
    do
    {
      if (rejwezp_l("xt:nagl_ptaszek") == 1)
      {
	licznik++;
        %odszukaj naglowek transakcji
	if (not(rejop("xn:ustawrekpos",string(rejwezp_k("xt:nagl_id"))))) 
	{
	  okalert("Nie odnaleziono transkacji: "+rejwezp_s("xt:nagl_trans"));
	  continue;
	}
        () = rejop("xn:usunrekustaw");
      }
    } while (rejop("xt:weznastepnyrekn"));
  }
  okalert("Usuni|eto "+string(licznik)+" transakcji");
  () = exdialogop("koniecwykonywania");
}

define wybierz_trans_pokaz()
{
   variable LOC_KONTOSYM;
   if (pustepole("xt:nagl_klsym"))
   {
     okalert("Nie mo|zna ogl|ada|c !$Brak symbolu kontrahenta !");
     return;
   }
   ustawazmienna_S("d_string",rejwezp_s("xt:nagl_klsym"));
   if (pustepole("xt:nagl_konto"))
   {
     okalert("Nie mo|zna ogl|ada|c !$Brak symbolu konta !");
     return;
   }
   LOC_KONTOSYM = rejwezp_s("xt:nagl_konto");
   () = finnop("@3openmainx");
   if ((not finnop("znajdzdok",LOC_KONTOSYM)) or (not finnop("tofirstzap")) )
   {
     %brak zapisow
     okalert(LOC_KONTOSYM + " - brak zapis|ow na tym koncie !");
     finnop("close");
     return;
   }
   finnop("close");
   %finnidzdo("kartrodz",LOC_KONTOSYM,"");
   finnidzdo("kartrozr",LOC_KONTOSYM,"");
   return;
}

define transkacje_usuwanie()
{
  %usuwanie naglowkow tranaksacji bez zapisow
  %UWAGA: operacja niebezpieczna !!!!
  %jesli w oczekujacych sa niezaksiegowane dokumenty z zapisami rozrachunkowymi - potraktuje je jeako transkajce bez zapisow!!!!

  %dzialnie:
  % - wyszukje transkacje, ktore maja tylko naglowki
  % - wyswietla do zaptaszkowania liste takich tranakcji
  % - usuwa zaptaszkowane naglowki transkacji

  () = rejop("xn:otworzrej1","TRANS.RJR");
  () = rejop("xn:zmienkluczrej","1");
  () = rejop("xz:otworzrej1","ROZL.RJR");
  () = rejop("xz:zmienkluczrej","1");
  () = rejop("xz:zmienkluczrej","1");
  () = rejop("xp:otworzrej","PLANRODZ.RJR");
  () = rejop("xt:otworzrejtemp","INT_NAGL.RJR");
  EXIT_BLOCK
  {
    () = rejop("xt:zamknijrej");
    () = rejop("xn:zamknijrej");
    () = rejop("xz:zamknijrej");
    () = rejop("xp:zamknijrej");
  }
  if (not(rejop("xn:wezpierwszyrek")))
  {
    okalert("Nie ma |zadnych transkacji !");
    return;
  }
  variable bylo = 0;
  do
  {
    %szukaj zapisow transkacji
    if (rejop("xz:znajdzrek",string(rejwezp_k("xn:rejestrrekpos"))))
    {
      %okalert("tra ma zapisy");
      continue;
    }
    else
    {
      %dodaj tra do rejestru
      bylo = 1;
      () = rejop("xt:dodajrek");
      xrejwstawp_l("xt:nagl_ptaszek",0);
      xrejwstawp_k("xt:nagl_id",rejwezp_k("xn:rejestrrekpos"));
      xrejwstawp_d("xt:nagl_data",rejwezp_d("xn:transdata"));
      xrejwstawp_s("xt:nagl_trans",rejwezp_s("xn:transsym"));
      xrejwstawp_s("xt:nagl_nazwa","");
      xrejwstawp_s("xt:nagl_konto","");
      xrejwstawp_s("xt:nagl_klsym","");
      () = rejop("xt:zapiszrek");
      %szukaj w planie kont
      %if (rejop("xp:znajdzrek",string(rejwezp_k("xn:transkontoid"))))
      if (rejop("xp:ustawrekpos",string(rejwezp_k("xn:transkontoid"))))
      {
        rejwstawp_s("xt:nagl_nazwa",rejwezp_s("xp:plan_nazwa"));
        rejwstawp_s("xt:nagl_konto",rejwezp_s("xp:plan_symbol"));
        rejwstawp_s("xt:nagl_klsym",rejwezp_s("xp:plan_klsym"));
      }
    }
  } while (rejop("xn:weznastepnyrek"));
  if (bylo == 0)
  {
    okalert("Nie znaleziono nagl|owk|ow transkacji bez zapis|ow !");
    return;
  }
  else
  {
    if (not(yesalert("Znaleziono transakcje puste - bez zapis|ow$ Czy chcesz obejrze|c list|e pustych transkacje ?"))) return;
    ustawazmienna_I("TRANS_klucz",4);
    () = exdialogop("idzdodialogu","WYBIERZ_TRANSAKCJE");
  }
}

define akcept_jedna_lina(numer)
{
}

define int_rodz_menu_wyczysc_konta()
{
  %czysci slownik z kontami - usuwa tylko symbol konta
  %rejestr int_rodz
  if (not(yesalert("Ta operacja spowoduje bezpowrotne wymazanie$danych zamiennik|ow kont ze s|lownika zamiennik|ow kont$Kontynuowa|c?"))) return;
  variable kl = rejwezp_i("szukajklucz");
  () = rejop("zmienkluczrej","1");
  if (rejop("wezpierwszyrek"))
  {
    do
    {
      if (pustepole("suff_sfx")) continue;
      rejwstawp_s("suff_sfx","");
    } while (rejop("weznastepnyrek"));
  }
  () = rejop("zmienkluczrej",string(kl));
  () = exdialogop("wyswietlpozycje","100");
}

define int_rozr_menu_wyczysc_konta()
{
  %czysci slownik z kontami - usuwa tylko symbol konta
  % rejestr int_rozr
  if (not(yesalert("Ta operacja spowoduje bezpowrotne wymazanie$danych zamiennik|ow kont ze s|lownika zamiennik|ow kont$Kontynuowa|c?"))) return;
  variable kl = rejwezp_i("szukajklucz");
  () = rejop("zmienkluczrej","1");
  if (rejop("wezpierwszyrek"))
  {
    do
    {
      if (pustepole("suff_rdz")) continue;
      rejwstawp_s("suff_rdz","");
    } while (rejop("weznastepnyrek"));
  }
  () = rejop("zmienkluczrej",string(kl));
  () = exdialogop("wyswietlpozycje","100");
}

define int_rozr_menu_utworz_symbole()
{
  %tworzy symbole zamiennikow kontrahnetow 
  %symbole zmainnikow wg zasady: pierwsza liera z nazwy + numer kolejny (bez zer na poczatku)
  %dla ACSS: bierze pierwsza lietre nazwy, szuka pierwszego wolnego numeru
  % rejestr int_rozr
  %tylko dla pustych symboli zamiennikow
  if (not(yesalert("Czy tworzy|c zamienniki symbolu kontrahenta ?$(pierwsza litera nazwy + numer kolejny)" ))) return;
  () = rejop("xx:otworzrejczytaj","REJESTRKL.RXR");
  () = rejop("xx:zmienkluczrej","1");
  () = rejop("yy:otworzrejtemp","INT_BAZA.RXR");
  () = rejop("yy:zmienkluczrej","3");
  variable kl = rejwezp_i("szukajklucz");
  variable lit = "";
  variable nowy_sym = "";
  variable numer ;
  variable nowy_numer = "";
  variable str_numer = "";
  variable koniec = 0;
  variable liczba = gl_daj_pusta_kwota();
  () = rejop("zmienkluczrej","1");
  if (rejop("wezpierwszyrek"))
  {
    do
    {
      %pomin jesli jest juz zamiennik symbolu kontrhneta
      if (not(pustepole("suff_ktr"))) continue;
      %przypisz  zamiennik
      if (pustepole("suff_naz")) continue;
      lit = strup(substr(rejwezp_s("suff_naz"),1,1));
      %okalert("pierwsza litera "+lit,"litera na liczbe "+string(stringnaliczbe(lit)));
      %if (stringnaliczbe(lit) >= 0) okalert("lit wiekasza od 0"); 
      %sprawdz czy pierwsza liera nie jestliczba
      if (stringnaliczbe(lit) >= 0 ) 
      {
        okalert("Uwaga ! Dla kontrahneta "+rejwezp_s("suff_kod")+", "+rejwezp_s("suff_naz")+"$nie mog|e utworzy|c zamiennika symbolu kontrahenta,$pierwszy znak nazwy nie jest liter|a !");
	continue;
      }
      nowy_sym = lit+"01";
      numer = 1;
      %szukaj symbolu litera+"01" w rej kontrahnetow i w rej z dodoanymi
      if (not(rejop("xx:znajdzrek",nowy_sym)) and not(rejop("yy:znajdzrek",nowy_sym)))
      {
        %nie znaleziono symbolu - sprawdz czy dodano w tej kolejce
	%okalert("nie znaleziono 1: "+nowy_sym);
        %nie znaleziono symbolu - podstaw
        %okalert("wstawiam 1 "+nowy_sym);
        rejwstawp_s("suff_ktr",nowy_sym);
        () = rejop("yy:dodajrek");
        rejwstawp_s("yy:baza_oprkod",nowy_sym);
        rejwstawp_k("yy:baza_oprkwt",1);
        continue;
      }
      else
      {
          %znaleziono symbol w litera + "01" w rejestrze kontrahnetow - lub w rejestrze z dodanymi - szukaj nastepnego
	  do
	  {
	    numer = numer+1;
	    str_numer = string(numer);
	    if (strlen(str_numer)==1) str_numer = "0"+str_numer;
            nowy_sym = lit+str_numer;
            if (not(rejop("xx:znajdzrek",nowy_sym)) and not(rejop("yy:znajdzrek",nowy_sym)))
	    {
              %nie znaleziono symbolu - podstaw
	      %okalert("wstawiam 3 "+nowy_sym);
	      rejwstawp_s("suff_ktr",nowy_sym);
	      () = rejop("yy:dodajrek");
	      rejwstawp_s("yy:baza_oprkod",nowy_sym);
	      rejwstawp_k("yy:baza_oprkwt",numer);
	      break;
	    }
	  }while(1);
      }
    } while (rejop("weznastepnyrek"));
  }
  () = rejop("zmienkluczrej",string(kl));
  () = rejop("xx:zamknijrej");
  () = rejop("yy:zamknijrej");
  () = exdialogop("wyswietlpozycje","100");
}

define int_rozr_menu_utworz_symbole_old()
{
  %tworzy symbole zamiennikow kontrahnetow 
  %symbole zmainnikow wg zasady: pierwsza liera z nazwy + numer kolejny (bez zer na poczatku)
  %dla ACSS: bierze pierwsza lietre nazwy, szuka pierwszego wolnego numeru
  % rejestr int_rozr
  %tylko dla pustych symboli zamiennikow
  if (not(yesalert("Czy tworzy|c zamienniki symbolu kontrahenta ?" ))) return;
  () = rejop("xx:otworzrejczytaj","REJESTRKL.RXR");
  () = rejop("xx:zmienkluczrej","1");
  () = rejop("yy:otworzrejtemp","INT_BAZA.RXR");
  () = rejop("yy:zmienkluczrej","3");
  variable kl = rejwezp_i("szukajklucz");
  variable lit = "";
  variable nowy_sym = "";
  variable numer = "";
  variable nowy_numer = "";
  variable liczba = gl_daj_pusta_kwota();
  () = rejop("zmienkluczrej","1");
  if (rejop("wezpierwszyrek"))
  {
    do
    {
      %pomin jesli jest juz zamiennik symbolu kontrhneta
      if (not(pustepole("suff_ktr"))) continue;
      %przypisz  zamiennik
      if (pustepole("suff_naz")) continue;
      lit = strup(substr(rejwezp_s("suff_naz"),1,1));
      okalert("pierwsza litera "+lit);
      nowy_sym = lit+"01";
      numer = 1;
      %szukaj symbolu litera+"1"
      if (not(rejop("xx:znajdzrek",nowy_sym)))
      {
        %nie znaleziono symbolu - sprawdz czy dodoano w tej kolejce
        if (not(rejop("yy:znajdzrek",nowy_sym)))
	{
          %nie znaleziono symbolu - podstaw
	  rejwstawp_s("suff_ktr",nowy_sym);
	  rejwstawp_s("yy:baza_oprkod",nowy_sym);
	  rejwstawp_k("yy:baza_oprkwt",1);
	  continue;
	}
	else
	{
	  % w tym algorytmie  dodano nowego kontrahneta na ta litere - szukja ostatniego numeru 
	  %szukaj nowego symbolu we wlasnie dodoanych
	  do
	  {
	      if (not(substr(rejwezp_s("yy:baza_oprkod"),1,1) == lit)) break;
	      liczba = stringnaliczbe(substr(rejwezp_s("yy:baza_oprkod"),2,strlen(rejwezp_s("yy:baza_oprkod"))-1));
	      if (liczba > numer) numer = liczba;
          } while (rejop("yy:weznastepnyrek"));
	  numer = numer +1;
	  %zapisz nowy symbol
          nowy_sym = lit+string(numer);
          rejwstawp_s("suff_ktr",nowy_sym);
          rejwstawp_s("yy:baza_oprkod",nowy_sym);
          rejwstawp_k("yy:baza_oprkwt",numer);
	}
      }
      else
      {
        %w rejstrze kontrahnetow jest kontrahnet na ta litere - szukaj najwyzszego numeru
	numer = 1;
	do
	{
	  %nowy_numer = numer+1;
	  if (not(substr(rejwezp_s("xx:kl_sym"),1,1) == lit)) break;
	  liczba = stringnaliczbe(substr(rejwezp_s("xx:kl_sym"),2,strlen(rejwezp_s("xx:kl_sym"))-1));
	  if (liczba == gl_daj_pusta_kwota)
	  { 
	    okalert("Nie mog|e nada|c prawidlowego symbolu kontrahneta na liter|e "+lit+" ! $Nadaj|e numer "+lit+"999999999 !");
	    nowy_numer = 999999999;
	    break;
	  }
	  else
	  {
	    if (liczba > numer) numer = liczba;
	  }
        }while (rejop("xx:weznastepnyrek"));
        %nadaj nowy symbol
	numer = numer +1;
        nowy_sym = lit+string(numer);
	okalert("nowy symbol kontr == "+ nowy_sym);
	%szukaj nowego symbolu we wlasnie dodoanych
	if (rejop("yy:znajdzrek",nowy_sym))
	{
	  do
	  {
	    if (not(substr(rejwezp_s("yy:baza_oprkod"),1,1) == lit)) break;
	    liczba = stringnaliczbe(substr(rejwezp_s("yy:baza_oprkod"),2,strlen(rejwezp_s("yy:baza_oprkod"))-1));
	    if (liczba > numer) numer = liczba;
          } while (rejop("yy:weznastepnyrek"));
	  numer = numer +1;
	}
	%zapisz nowy symbol
        nowy_sym = lit+string(numer);
        rejwstawp_s("suff_ktr",nowy_sym);
        rejwstawp_s("yy:baza_oprkod",nowy_sym);
        rejwstawp_k("yy:baza_oprkwt",numer);
      }
    } while (rejop("weznastepnyrek"));
  }
  okalert("koniec petli");
  () = rejop("yy:zobaczdbf");
  () = rejop("zmienkluczrej",string(kl));
  () = rejop("xx:zamknijrej");
  () = rejop("yy:zamknijrej");
  () = exdialogop("wyswietlpozycje","100");
}


define int_rodz_rekord_po_polu20(rej)
{
  %we: rej nazwa rejestru (INT_KNTR lub INT_RODZ)
  %int_rodz,int_kntr - po polu 20 sprawdzanie czy powtarza sie symbol zamiennika konta/kontrahenta
  %rej. tmp do wyswietlenia powtorzen zamiennikow 
  () = rejop("tt:otworzrejtemp",rej+".RXR");
  %kopia rejestru z kontami 
  if (pustepole("suff_sfx")) return;
  () = rejop("kk:drotworzplik","");
  () = rejop("kk:zmienkluczrej","2");
  variable zk = rejwezp_s("suff_sfx");
  if (rejop("kk:znajdzrek",zk))
  {
    do
    {
      %sprawdz nr rekordu
      if (rejwezp_k("rejestrrekpos") == rejwezp_k("kk:rejestrrekpos")) continue;
      %okalert("znaleziono ju|z taki zamiennik konta w rejestrze!$Symbol kontrahenta: "+rejwezp_s("kk:suff_kod"));
      () = rejop("tt:dodajrek");
      () = rejop("kk:przeniespola","tt:");
      () = rejop("tt:zapiszrek");
    } while (rejop("kk:weznastepnyrekn"));
  }

  () = rejop("tt:zmienkluczrej","2");
  if (rejop("tt:wezpierwszyrek"))
  {
    %wyswietl powtorzone zamienniki 
    if (yesalert("Znaleziono powt|orzone symbole zamiennik|ow w rejestrze!$Wy|swieli|c list|e?")) () = rejop("tt:wywolajmenu","1");
  }

  () = rejop("tt:zamknijrej");
  () = rejop("kk:zamknijrej");
  return;
}

define int_rozr_rekord_po_polu20()
{
  %int_rozr - po polu 20 sprawdzanie czy powtarza sie symbol zamiennika konta
  if (pustepole("suff_rdz")) return;
  %rej. tmp do wyswietlenia powtorzen zamiennikow kont
  () = rejop("tt:otworzrejtemp","INT_ROZR.RXR");
  %kopia rejestru z kontami i kontr
  () = rejop("kk:drotworzplik","");
  () = rejop("kk:zmienkluczrej","2");
  variable zk = rejwezp_s("suff_rdz");
  if (rejop("kk:znajdzrek",zk))
  {
    do
    {
      %sprawdz nr rekordu
      if (rejwezp_k("rejestrrekpos") == rejwezp_k("kk:rejestrrekpos")) continue;
      %okalert("znaleziono ju|z taki zamiennik konta w rejestrze!$Symbol kontrahenta: "+rejwezp_s("kk:suff_kod"));
      () = rejop("tt:dodajrek");
      () = rejop("kk:przeniespola","tt:");
      () = rejop("tt:zapiszrek");
    } while (rejop("kk:weznastepnyrekn"));
  }
  
  () = rejop("tt:zmienkluczrej","2");
  if (rejop("tt:wezpierwszyrek"))
  {
    %wyswietl powtorzone zamienniki kont
    if (yesalert("Znaleziono powt|orzone symbole zamiennik|ow kont w rejestrze!$Wy|swieli|c list|e?")) () = rejop("tt:wywolajmenu","1");
  }

  () = rejop("tt:zamknijrej");
  () = rejop("kk:zamknijrej");
  return;
}

define int_rozr_rekord_po_polu21()
{
  %int_rozr - po polu 20 sprawdzanie czy powtarza sie symbol zamiennika kontrahenta
  if (pustepole("suff_ktr")) return;
  %rej. tmp do wyswietlenia powtorzen zamiennikow kontrahentow
  () = rejop("tt:otworzrejtemp","INT_ROZR.RXR");
  %kopia rejestru z kontami i kontr
  () = rejop("kk:drotworzplik","");
  () = rejop("kk:zmienkluczrej","3");
  variable zk = rejwezp_s("suff_ktr");
  if (rejop("kk:znajdzrek",zk))
  {
    do
    {
      %sprawdz nr rekordu
      if (rejwezp_k("rejestrrekpos") == rejwezp_k("kk:rejestrrekpos")) continue;
      %okalert("znaleziono ju|z taki zamiennik kontrahenta w rejestrze!$Symbol kontrahenta: "+rejwezp_s("kk:suff_kod"));
      () = rejop("tt:dodajrek");
      () = rejop("kk:przeniespola","tt:");
      () = rejop("tt:zapiszrek");
    } while (rejop("kk:weznastepnyrekn"));
  }

  () = rejop("tt:zmienkluczrej","2");
  if (rejop("tt:wezpierwszyrek"))
  {
    %wyswietl powtorzone zamienniki kontrahentow
    if (yesalert("Znaleziono powt|orzone symbole zamiennik|ow kontrahent|ow w rejestrze!$Wy|swieli|c list|e?")) () = rejop("tt:wywolajmenu","1");
  }

  () = rejop("tt:zamknijrej");
  () = rejop("kk:zamknijrej");
  return;
}

define lokalizacja_rezygn()
{ 
  %wycofanie zmian
  () = rejop("usunzmiany");
  () = exdialogop("koniecwykonywania");
  return; 

}

define lokalizacja_akceptujesz()
{
  %sprawdza poprawnosci danych w okienku lokalizacja
  variable i;

  i = 0;
  do
  {
    i++;
    if (pustepole("dekr_txt"+string(i)))
    {
      %pole z danymi zrodlowymi puste=>nie sprawdzaj
      continue;
    }
    else
    {
      %sprawdz polskie litery
      if (pustepole("dekr_pl"+string(i)))
      {
        okalert("Wprowad|x format polskich liter!");
        exdialogop("idzdopozycji","2"+string(i));
	return;
      }
      else
      {
        %sprawdz format danych
        if (pustepole("dekr_format"+string(i)))
	{
          okalert("Wprowad|z format pliku!");
          exdialogop("idzdopozycji","3"+string(i));
	  return;
	}
	else
	{
	  %dla formatu WLASNY sprawdz separator
          if ((rejwezp_s("dekr_format"+string(i))=="W|LASNY") and (pustepole("dekr_sep"+string(i))))
	  {
            okalert("Wprowad|z separator p|ol!");
            exdialogop("idzdopozycji","3"+string(i));
	    return;
	  }
	}
      }
    }
  }while (i < 9);

  %zapisz zmiany
  () = rejop("zapiszrek");
  () = exdialogop("koniecwykonywania");
  return;

}

define kod_sep()
{
  %zamiana kodu ascii separatora na string

  variable a = char(dajazmienna_I("kod_sep"));
  ustawazmienna_S("sep",a);
  return;
}

define proc1()
{
   variable z_polskie = gl_dajkonwpolskie(dajazmienna_S("plx"));
   %okalert("z polskie "+z_polskie);
   if (strup(z_polskie) != "DEFAEKS") () = rejop("J:importpolskielitery",z_polskie);
   ustawazmienna_S("wynik",z_polskie);
   return;
}


define pobierz_dic(nazwa)
{
  % ze zmiennej nazwa wycina 8 ostatnich znakow, czyli nazwe rejestru
  variable tmp = substr(nazwa,strlen(nazwa)-7,8) ;
  return tmp;
}

define kopiuj_slow(slow_source, slow_destin,tryb)
{
  %kopiowanie rejestrow
  %wejscie: slow_source: nazwa rejestru zrodlowego z pelna sciezka
  %         slow_destin: nazwa rejestru docelowego z pelna sciezka
  %         tryb: sposob postepowania gdy napotkamy taki sam klucz w zrodle/docelowym
  %         jest otwarty rejestr do zpisywania info o przebiegu kopiownia - rejetsr "WI:". W tym rej jest juz dodany rekord.
  %               -  0 zawsze zostawiaj wartosc z docelowego
  %               -  1 zawsze nadpisuj wartoscia ze zrodlowego
  %               -  2 zawsze pytaj uzytkownika co zrobic

  %dekalracj zmiennych 
  variable i1="";
  variable i2="";
  variable i3="";
  variable i4="";
  variable i5="";
  variable i6="";
  variable i7="";
  variable i8="";
  variable i9="";
  variable i10="";
  variable i11="";
  variable i12="";
  variable i13="";
  variable i14="";
  variable i15="";
  variable i16="";
  variable i17="";
  variable i18="";
  variable i19="";
  variable i20="";
  variable i21="";
  variable i22="";
  variable i23="";
  variable i24="";
  variable i25="";
  variable i26="";
  variable i27="";
  variable i28="";
  variable i29="";
  variable i30="";
  variable i31="";
  variable i32="";
  variable i33="";
  variable i34="";

  variable ilosc_dod = 0;
  variable ilosc_mod = 0;

  variable kod_zrod = "";
  variable slownik = "";

  %pobierz nazwe slownika (sekcja *.DIC)
  variable dic_source = pobierz_dic(slow_source);
  variable dic_destin = pobierz_dic(slow_destin);
  %ustaw nazwe slownika do przepisywania rekordu do zmiennych
  switch (dic_source)
  {case "int_rozr":
         slownik = "slownik_rozr";
  }
  {case "int_kntr" or case "int_rodz":
         slownik = "slownik_5";
  }
  {case "int_klas" or case "int_rejv" or case "int_deww" or case "int_rozl":
         slownik = "slownik_3";
  }
  {case "int_deff":
         slownik = "slownik_deff";
  }
  {case "int_slow":
         slownik = "slownik_slow";
  }

  %okalert("slownik do zmiennych "+slownik);
  () = rejop("XS:otworzrej1",slow_source);   
  () = rejop("XS:zmienkluczrej","1");   
  () = rejop("XD:otworzrej1",slow_destin);   
  () = rejop("XD:zmienkluczrej","1");   

  %sprawdz, czy zrodlowy jest pusty
  if (rejop("XS:pustyrej")) 
  {
    %okalert("Brak rekord|ow w s|lowniku |xr|od|lowym$"+slow_source);
    rejwstawp_s("WI:wi_status","B|L|AD");
    rejwstawp_s("WI:wi_blad","Brak rekord|ow w s|lowniku |xr|od|lowym");
    gl_zamknij_rej("XS:");
    gl_zamknij_rej("XD:");
    return 1;
  }

  %sprawdz, czy docelowy jest pusty
  if (rejop("XD:pustyrej")) 
  {
    %rejestr docelowy  jest pusty
    () = rejop("XS:kopiujplikrej","XD:");
    %rejestry docelowy/zrodlowy zamyka automatycznie "kopiujplikrej"
    rejwstawp_s("WI:wi_blad","S|lownik docelowy jest pusty. Przekopiowanio wszytskie rekordy");
  }
  else
  {
    %rejestr docelowy nie jest pusty
    if (rejop("XS:wezpierwszyrek"))
    {
      do
      {
	%odczytaj rekord zrodlowy na zmienne
        () = rejop("XS:przepiszdozmiennych",slownik);
	%sprawdz, czy w docelowym jest taki rekord
	kod_zrod = dajazmienna_S("i1");
	if (rejop("XD:znajdzrek",kod_zrod))
	{
	  %znaleziono kod w rej docelowym
	  switch(tryb)
	  {case 0:
	    %nie zmieniaj w docelowym
	  }
	  {case 1:
	    % nadpisuj w docelowym wartoscia ze zrodlowego
	    ilosc_mod = ilosc_mod+1;
            () = rejop("XD:przepiszdopol",slownik);
	    () = rejop("XD:zapiszrek");
	  }
	  {case 2:
	    %pytaj co robic?
	    if (yesalert("W s|lowniku docelowym napotkano rekord$z kodem |zr|od|lowym: "+kod_zrod+"$Nadpisa|c dane w s|lowniku docelowym?"))
	    {
	      ilosc_mod = ilosc_mod+1;
              () = rejop("XD:przepiszdopol",slownik);
	      () = rejop("XD:zapiszrek");
	    }
	    else
	    {
	      %nie zmieniac!
	    }
	  }
	}
	else
	{
	  %nie znaleziono kodu w rej. docelowym - dodajrek!
	  ilosc_dod = ilosc_dod+1;
	  () = rejop("XD:dodajrek");
          () = rejop("XD:przepiszdopol",slownik);
	  () = rejop("XD:zapiszrek");
	}
      } while (rejop(("XS:weznastepnyrek")));
      rejwstawp_k("WI:wi_mod",ilosc_mod);
      rejwstawp_k("WI:wi_dod",ilosc_dod);
      gl_zamknij_rej("XS:");
      gl_zamknij_rej("XD:");
    }
    else
    {
      %okalert("Brak rekord|ow w s|lowniku |xr|od|lowym$"+slow_source);
      rejwstawp_s("WI:wi_status","B|L|AD");
      rejwstawp_s("WI:wi_blad","Brak rekord|ow w s|lowniku |xr|od|lowym"+slow_source);
      gl_zamknij_rej("XS:");
      gl_zamknij_rej("XD:");
    }
  }

  return 1;

}

define zapisz_pfx()
{
  %we: zmienna index zawiera prefix
  %wydziela ze zmiennej index prefix
  variable index = dajazmienna_S("index");
  variable m,z;
  m = is_substr(index,"&");
  if (m == 1) z = "";
  else
  {
    z = substr(index,1,m-1);
  }
  rejwstawp_s("t:temp_pfx",z);
  rejwstawp_s("t:temp_fak",dajazmienna_S("rzrfak"));
}

define pfx(l)
{
  %wydziela z pola data_opridx pfx
  variable m,z;
  m = is_substr(rejwezp_s("a:data_opridx"),"&");
  if (m == 1) z = "";
  else
  {
    z = substr(rejwezp_s("a:data_opridx"),1,m-1);
  }
  %okalert("pfx= "+z);
  switch(l)
  {case 1:
    % ustaw index_pfx
    ustawazmienna_S("index_pfx",z);
  }
  {case 0:
    % ustaw nindex_pfx
    ustawazmienna_S("nindex_pfx",z);
  }
}

define proc_kopiuj_slow()
{
  %do wywowlania z alga kopiuj_slow z parametrami na zmiennych z alga
  variable source = dajazmienna_S("slow_source");
  %okalert("source "+source);
  variable destin = dajazmienna_S("slow_destin");
  %okalert("destin "+destin);
  variable tryb = dajazmienna_K("slow_tryb");
  %okalert("tryb "+string(tryb));
  kopiuj_slow(source,destin,tryb);
  return;
  
}

define kopiuj_pk(pk_source, pk_destin)
{
}

%SL.koniec_interfejs_funkcje_w_sl
//
// ====================================================================
// KONIEC SEKCJE W SL
// ====================================================================
