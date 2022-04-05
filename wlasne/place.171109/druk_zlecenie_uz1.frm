//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//
// Perseus Spolka z o.o 
// Wszystkie prawa zastrzezone
// 
// Data utworzenia: 2002.11.27
//////////////////////////////////////////////////////////////////////////////
// Wydruk umowy zlecenie i rachunku na osobnych stronach
## DIALOGPARAM
## include place\drukuj_pity_def.inc
%%      xpracownik := RejWezP_S["A:pracownik"]
%% if(not(RejOp["X:OtworzRej","zlbiorca.RXR"])) goto esc
%% If(RejOp["X:ZnajdzRek",xpracownik]) goto ok_pracownik
%%      OkAlert["Brak danych o pracowniku - "+xpracownik+" Nale|zy je uzupe|lni|c !!"]
%%      goto brak_pracownika
%% ok_pracownik:
//%%      S06       := RejWezP_S["X:urzad"]+" ul."+RejWezP_S["X:u_ulica"]+" "+RejWezP_S["X:u_dom"]+"   "+RejWezP_S["X:u_kod"]+" "+RejWezP_S["X:u_miasto"]
%%      nip_zl       := RejWezP_S["X:nip"]
%%      S25       := RejWezP_S["X:nip"]
%%      S26       := RejWezP_S["X:pesel"]
%%      S27       := RejWezP_S["X:nazwisko"]
%%      S28       := RejWezP_S["X:imie1"]
%%      S29       := RejWezP_S["X:imie2"]
%%      S30       := RejWezP_S["X:im_oj"]
%%      S31       := RejWezP_S["X:im_ma"]
%%      D32       := RejWezP_D["X:datau"]
%%      miejsceu  := RejWezP_S["X:miejsce_u"]
%%      S33       := "POLSKA"
%%      S34       := RejWezP_S["X:wojew"]
%%      S36       := RejWezP_S["X:ulica"]
%%      S37       := RejWezP_S["X:dom"]
%%      S38       := RejWezP_S["X:lokal"]
%%      S39       := RejWezP_S["X:miasto"]
%%      S40       := RejWezP_S["X:kod"]
%%      S41       := RejWezP_S["X:urzad"]
%%      dowod     := RejWezP_S["X:dowod"]
%%      konto_klas :=  RejWezP_S["X:kontorozl1"]
%%      S51       := RejWezP_S["X:powiat"]
%%      S52       := RejWezP_S["X:gmina"]
%%      S53       := RejWezP_S["X:poczta"]
%%      plec      := RejWezP_S["X:plec"]
//%% rodzaj_wyplaty := RejWezP_S["X:rodzaj_wyplaty"]
//%% sposob_wyplaty := ""
//%% if (rodzaj_wyplaty = 0) sposob wyplaty := "got|owk|a"
//%% if (rodzaj_wyplaty = 1) sposob wyplaty := "przelewem na konto"+RejWezP_S["X:bank"]
%% brak_pracownika:
%% RejOp["X:ZamknijRej",""]
//
%% RejOp["F:OtworzRej1","URZAD.RXR"]
%%  If(Not(RejOp["F:ZnajdzRek",s41])) goto no_urzad
%%      s42      := RejWezP_S["F:urzad"]+"   ul. "+RejWezP_S["F:u_ulica"]+" "+RejWezP_S["F:u_dom"]+" "+RejWezP_S["F:u_kod"]+"  "+RejWezP_S["F:u_miasto"]
%%      S54       := RejWezP_S["F:urzad"]
%%      S55       := "ul. "+RejWezP_S["F:u_ulica"]
%%      S56       := RejWezP_S["F:u_kod"]+"  "+RejWezP_S["F:u_miasto"]
%% no_urzad:
%% RejOp["F:ZamknijRej",""]
//
%%      koniec_um := .N.
%%      grosz     := .
%%      grosz1    := .
// zmienne beda pobierane z rejestrow
%%      proc_k_uzys := .
//%% rejop["b:zobaczdbf",""]
%%      k_uzys    := RejWezP_K["B:sk_uzys"]
%%      wyn_z     := RejWezP_K["B:sbrutto"]
%%      sueu      := RejWezP_K["B:sueu"]
%%      suru      := RejWezP_K["B:suru"]
%%      sucu      := RejWezP_K["B:sucu"]
%%      szalzdr   := RejWezP_K["B:szalzdr"]+RejWezP_K["B:szalzdrn"]
%%      spodst_z  := RejWezP_K["B:spodst_z"]
%%      spodstkup := RejWezP_K["B:spodstkup"]
%%      podatek   := RejWezP_K["B:szalpod"]
%%      k_opod    := RejWezP_K["B:spodstopod"]
%%      proc      := RejWezP_K["B:sprocpod"]
%%      k_wypl    := RejWezP_K["A:dowypl"]
%%      wykon1    := RejWezP_S["A:tresc1"]
%%      wykon2    := RejWezP_S["A:tresc2"]
%%      wykon3    := RejWezP_S["A:tresc3"]
%%      dodnia    := RejWezP_D["A:dodnia"]
%%      dataumowy := RejWezP_D["A:datawypl"]
//
%%      numer_umowy1 := RejWezP_S["A:lista"]
%%      numer_umowy2 := RejWezP_K["A:nrwzorca"]
%%      numer_umowy4 := RejWezP_K["A:nrlisty_br"]
%% numer_umowy3 :=  numer_umowy1 + "*" + numer_umowy2
////////////////////////////////////////////////////////////////////////
// ODCZYTANIE NAZWY LISTY WZORCOWEJ
%% RejOp["GA:OtworzRej","ZLLISTY.RXR"]
%% if (RejOp["GA:ZnajdzRek",numer_umowy1]) numer_umowy1 := RejWezP_S["GA:nazlista"]
%% RejOp["GA:ZamknijRej",""]
////////////////////////////////////////////////////////////////////////
// ODCZYTANIE DANYCH Z UMOWY
%% placab := .
%% fplatnosc := ""
%% numer_umowy := ""
%% fskladnik := ""
%% dodnia_um := dodnia
%% rodzaj_umowy := "zlecenie/o dzie|lo"
%% RejOp["FU:OtworzRej","ZLUMOWA.RXR"]
%% RejOp["FU:ZmienKluczRej","8"]
%% if (not(RejOp["FU:ZnajdzRek",numer_umowy3])) goto bez_umowy
%%  fplatnosc := RejWezP_S["FU:fplatnosc"]
%%  wyn_z_um    := RejWezP_K["FU:placab"]
%%  dataumowy := RejWezP_D["FU:oddnia"]
%%  dodnia_um    := RejWezP_D["FU:dodnia"]
%%  rodzaj_umowy := RejWezP_S["FU:typumowy"]
%% if (rodzaj_umowy == "UZ") rodzaj_umowy := "zlecenie"
%% if (rodzaj_umowy == "UD") rodzaj_umowy := "o dzie|lo"
%% numer_umowy := rejwezp_s["fu:fsymbol_u"]
%% fskladnik := rejwezp_s["fu:fskladnik"]
%% bez_umowy:
%% RejOp["FU:ZamknijRej",""]
%% xczyprock_uz := .T.
%% rejop["x:otworzrej","plsklad.rxr"]
%% if(not(rejop["x:znajdzrek",fskladnik])) goto zamknij_skla
%% xczyprock_uz := rejwezp_l["x:czyprock_uz"]
%% zamknij_skla:
%% rejop["x:zamknijrej",""]
%% rok := StrCut[studatas[dodnia],0,4]
%% if (dodnia = '') dodnia := dodnia_um
%% um_dzien := StrCut[ToStr["#dataumowy#S"],6,2]
%% um_mies := StrCut[ToStr["#dataumowy#S"],3,2]
%% um_rok := StrCut[studatas[dataumowy],0,4]
//%% okalert[""+um_rok]
%% data_umowy := um_dzien+"."+um_mies+"."+um_rok
%% do_dzien := StrCut[ToStr["#dodnia#S"],6,2]
%% do_mies := StrCut[ToStr["#dodnia#S"],3,2]
%% do_rok := StrCut[studatas[dodnia],0,4]
%% do_dnia := do_dzien+"."+do_mies+"."+do_rok
%% grosz_um := StringNaLiczbe[StrCut[ToStr["#wyn_z_um#S:2"],StrLen[ToStr["#wyn_z_um#S:2"]]-2,2]]
////////////////////////////////////////////////////////////////////////
//%%      numer_umowy := ToStr["#numer_umowy1#S #numer_umowy2#S"]
%% if(numer_umowy="")      numer_umowy := ToStr["#numer_umowy4#S/#numer_umowy1#S/#rok#S "]
//
//%%      reprezentant1 := ""
//%%      reprezentant2 := ""
// definicja stawki % k.uzysk.przych.
// Obliczam podatek i kwote do wyplaty
%% proc_k_uzys := roundn[(k_uzys*100)/(spodstkup-sueu-suru-sucu),2]
%% if(not(xczyprock_uz)) proc_k_uzys := .
%% grosz    := StringNaLiczbe[StrCut[ToStr["#wyn_z#S:2"],StrLen[ToStr["#wyn_z#S:2"]]-2,2]]
%% grosz1   := StringNaLiczbe[StrCut[ToStr["#k_wypl#S:2"],StrLen[ToStr["#k_wypl#S:2"]]-2,2]]
//
%% fp := "jednorazowo/miesi|ecznie/za godzin|e"
%% if (fplatnosc == "Jedn") fp := "jednorazowo"
%% if (fplatnosc == "Mies") fp := "w ratach miesi|ecznych"
%% fp01 := "wykonywanie/wykonanie"
%% if (fplatnosc == "Jedn") fp01 := "wykonanie"
%% if (fplatnosc == "Mies") fp01 := "wykonywanie"
%% fp02 := "b|edzie otrzymywa|l/otrzyma"
%% if (fplatnosc == "Jedn") fp02 := "otrzyma"
%% if (fplatnosc == "Mies") fp02 := "b|edzie otrzymywa|l"
//
%% zleceniodawca := S081 + " " + S082
//%% zleceniodawca := "Miastem Sto|lecznym Warszawa"
%% adres := S083+"  "+S086+"/"+S087
//%% adres := "Pl. Bankowy 3/5"
//
%% plec01 := "Pani|a/Panem"
%% if (plec == "K") plec01 := "Pani|a"
%% if (plec == "M") plec01 := "Panem"
%% plec02 := "zamieszka|l|a/ym "
%% if (plec == "K") plec02 := "zamieszka|l|a"
%% if (plec == "M") plec02 := "zamieszka|lym "
//
@q
@T@K@M                       @FUMOWA ZLECENIE NR #numer_umowy#S@@ @@ @@ @@
@T@K @@ @@
@T@KW dniu #data_umowy#L10 w #reprezentant1#S, pomi|edzy:  @F#zleceniodawca#S@@ , z siedzib|a: @F#adres#S, #s085#S@@ ,  
zwanym dalej "Zleceniodawc|a" reprezentowanym przez #reprezentant2#S, a @@ @@
@T@K#plec01#S @F#s28#S #S27#S@@ @@ @@ 
@T@K#plec02#S #S40#S #S39#S, #S36#S #S37#S/#S38#S @@ @@
@T@KDow|od osobisty seria i nr: #dowod#S @@ @@
@T@KNIP: #nip_zl#S @@ @@
@T@Kzwanym dalej "Zleceniobiorc|a", zawarto umow|e nast|epuj|acej tre|sci: @@ @@
@T@K @@ @@

//@T@K@M                                     §1 @@ @@ @@
//@T@K @@ @@
@T@K@F§1.@@ Zleceniodawca zleca, a Zleceniobiorca przyjmuje wykonanie nast|epuj|acych prac: @@ @@
@T@K    @F#wykon1#S@@ @@ @@
%% if (wykon2 == "") goto po_wykon2
@T@K    @F#wykon2#S@@ @@ @@
%% po_wykon2:
%% if (wykon3 == "") goto po_wykon3
@T@K    @F#wykon3#S@@ @@ @@
%% po_wykon3:
@T@K    zwanych dalej zleceniem. @@ @@
@T@K    Zleceniobiorca wykona zlecenie do dnia: #do_dnia#S. @@ @@
@T@K @@ @@
@T@K@F§2.@@ Zlecenie b|edzie wykonywane w siedzibie/poza siedzib|a Zleceniodawcy. @@ @@
@T@K @@ @@
@T@K@F§3.@@ Zleceniobiorcy za wykonanie czynno|sci przewidzianych w §1 umowy przys|luguje wynagrodzenie brutto w wysoko|sci:  @F#wyn_z#S:X@@ z|l,
    (s|lownie z|l: #slownie[wyn_z,0,0]#S gr: #SLOWNIE[grosz,0,0]#S) #fp#S, z kt|orego dokona si|e stosownych potr|ace|n. @@ @@
@T@K    Wyp|lata wynagrodzenia nast|api po wystawieniu rachunku przez Zleceniobiorc|e i stwierdzeniu przez Zleceniodawc|e 
    terminowego i prawid|lowego wykonania zlecenia, b|ed|acego przedmiotem niniejszej umowy.@@ @@
@T@K @@ @@
@T@K@F§4.@@ Zleceniodawca o|swiadcza, |ze wnosi/nie wnosi o obj|ecie go dobrowolnym ubezpieczeniem: emerytalnym, rentowym, chorobowym, 
    zdrowotnym z tyt. pracy na podstawie umowy - zlecenia.@@ @@
@T@K @@ @@
@T@K@F§5.@@ Zmiany umowy wymagaj|a formy pisemnej w postaci aneksu.@@ @@
@T@K @@ @@
@T@K@F§6.@@ W sprawach spornych maj|a zastosowanie przepisy Kodeksu Cywilnego.@@ @@
@T@K @@ @@
@T@K@F§7.@@ Umowa zosta|la sporz|adzona w dw|och jednobrzmi|acych egzemplarzach, po jednym dla ka|zdej ze stron.@@ @@
@T@K @@ @@
@T@K @@ @@
@T@K @@ @@
@T@K @@ @@
@T@P@@               @v@MZLECENIOBIORCA@@@@                                     @P@@ @v@MZLECENIODAWCA@@@@ @@ 
@T@K @@ @@
@T@K @@ @@
@T@K @@ @@
@T@P@@     @v@M.................................@@@@                  @P@@ @v@M...................................@@@@ @@
@T@K@@
@@@n@@
## FINISHPAGE
//%% malpa_q := "@q"
//%% if (D_PR_NAZWASEKCJA !== "HTML") malpa_q := "</table> <table cellpadding=1 cellspacing=0 border=0 width=""100%"" style=""page-break-before:always"">"
//#malpa_q#S
## include place\rachunek.inc
@@
%% esc:


