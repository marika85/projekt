/////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//
// Perseus Spolka z o.o 
// Wszystkie prawa zastrzezone
// 
// Data utworzenia: 2002.11.27
//////////////////////////////////////////////////////////////////////////////
// Wydruk umowy zlecenie
## DIALOGPARAM
## include place\drukuj_pity_def.inc
%%      xpracownik := RejWezP_S["pracownik"]
%% if(not(RejOp["X:OtworzRej","zlbiorca.RXR"])) goto esc
%% If(RejOp["X:ZnajdzRek",xpracownik]) goto ok_pracownik
%%      OkAlert["Brak danych o pracowniku - "+xpracownik+" Nale|zy je uzupe|lni|c !!"]
%%      goto brak_pracownika
%% ok_pracownik:
//%%      S06       := RejWezP_S["X:urzad"]+" ul."+RejWezP_S["X:u_ulica"]+" "+RejWezP_S["X:u_dom"]+"   "+RejWezP_S["X:u_kod"]+" "+RejWezP_S["X:u_miasto"]
%%      nip_zl       := RejWezP_S["X:nip"]
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
%%      plec      := RejWezP_S["X:plec"]
%% brak_pracownika:
%% RejOp["X:ZamknijRej",""]
//
%% RejOp["F:OtworzRej1","URZAD.RXR"]
%%  If(Not(RejOp["F:ZnajdzRek",s41])) goto no_urzad
%%       s42      := RejWezP_S["F:urzad"]+" "+RejWezP_S["F:u_ulica"]+" "+RejWezP_S["F:u_dom"]+" "+RejWezP_S["F:u_kod"]+" "+RejWezP_S["F:u_miasto"]
%% no_urzad:
%% RejOp["F:ZamknijRej",""]
//
%%      koniec_um := .N.
%%      grosz    := .
%%      grosz1   := .
// zmienne beda pobierane z rejestrow
%%      proc_k_uzys := .
%%      wykon1   := RejWezP_S["tresc1"]
%%      wykon2   := RejWezP_S["tresc2"]
%%      wykon3   := RejWezP_S["tresc3"]
%%      dodnia    := RejWezP_D["dodnia"]
%%      dataumowy := RejWezP_D["oddnia"]
%% rok := StrCut[studatas[dataumowy],0,4]
%% um_dzien := StrCut[ToStr["#dataumowy#S"],6,2]
%% um_mies := StrCut[ToStr["#dataumowy#S"],3,2]
%% um_rok := strCut[studatas[dataumowy],0,4]
//%% okalert[""+um_rok]
%% data_umowy := um_dzien+"."+um_mies+"."+um_rok
%% do_dzien := StrCut[ToStr["#dodnia#S"],6,2]
%% do_mies := StrCut[ToStr["#dodnia#S"],3,2]
%% do_rok := StrCut[studatas[dodnia],0,4]
%% do_dnia := do_dzien+"."+do_mies+"."+do_rok
//%% okalert[""+data_umowy]
%%      numer_umowy1 := RejWezP_S["lista"]
%%      numer_umowy2 := RejWezP_K["nrlisty_br"]
////////////////////////////////////////////////////////////////////////
// ODCZYTANIE NAZWY LISTY WZORCOWEJ
%% RejOp["GA:OtworzRej","ZLLISTY.RXR"]
%% if (RejOp["GA:ZnajdzRek",numer_umowy1]) numer_umowy1 := RejWezP_S["GA:nazlista"]
%% RejOp["GA:ZamknijRej",""]
////////////////////////////////////////////////////////////////////////
//%%      numer_umowy := ToStr["#numer_umowy1#S #numer_umowy2#S"]
%% numer_umowy := rejwezp_s["fsymbol_u"]
%% if(numer_umowy="")     numer_umowy := ToStr["#numer_umowy2#S/#numer_umowy1#S/#rok#S "]
%%      wyn_z    := RejWezP_K["placab"]
%%      grosz    := StringNaLiczbe[StrCut[ToStr["#wyn_z#S:2"],StrLen[ToStr["#wyn_z#S:2"]]-2,2]]
//
%%      fplatnosc := RejWezP_S["fplatnosc"]
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
%% adres := "ul. "+S083+"  "+S086+"/"+S087
%% if(s087 = "") adres := "ul. "+S083+"  "+S086
//%% adres := "Pl. Bankowy 3/5"
//
%% plec01 := "Pani|a/Panem"
%% if (plec == "K") plec01 := "Pani|a"
%% if (plec == "M") plec01 := "Panem"
%% plec02 := "zamieszka|l|a/ym "
%% if (plec == "K") plec02 := "zamieszka|l|a"
%% if (plec == "M") plec02 := "zamieszka|lym "
%% if(reprezentant1="") reprezentant1 := ".............."
%% if(reprezentant2="") reprezentant2 := "..............................................................."
//
//@T@K @@ @@
@T@K@M                       @FUMOWA ZLECENIE NR #numer_umowy#S@@ @@ @@ @@
//@T@K @@ @@
@T@K @@ @@
@T@KW dniu #data_umowy#L10 w #reprezentant1#S, pomi|edzy:  @F#zleceniodawca#S@@ , z siedzib|a: @F#adres#S, #s085#S@@ ,  
zwanym dalej "Zleceniodawc|a" reprezentowanym przez #reprezentant2#S, a @@ @@
@T@K#plec01#S @F#s28#S #S27#S@@ @@ @@ 
@T@K#plec02#S #S40#S #S39#S, #S36#S #S37#S/#S38#S @@ @@
@T@KDow|od osobisty seria i nr: #dowod#S @@ @@
@T@KNIP: #nip_zl#S @@ @@
@T@Kzwanym dalej "Zleceniobiorc|a", zawarto umow|e nast|epuj|acej tre|sci: @@ @@
@T@K @@ @@

//@T@K@M                                     �1 @@ @@ @@
//@T@K @@ @@
@T@K@F�1.@@ Zleceniodawca zleca, a Zleceniobiorca przyjmuje wykonanie nast|epuj|acych prac: @@ @@
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
@T@K@F�2.@@ Zlecenie b|edzie wykonywane w siedzibie/poza siedzib|a Zleceniodawcy. @@ @@
@T@K @@ @@
@T@K@F�3.@@ Zleceniobiorcy za wykonanie czynno|sci przewidzianych w �1 umowy przys|luguje wynagrodzenie brutto w wysoko|sci:  @F#wyn_z#S:X@@ z|l,
    (s|lownie z|l: #slownie[wyn_z,0,0]#S gr: #SLOWNIE[grosz,0,0]#S) #fp#S, z kt|orego dokona si|e stosownych potr|ace|n. @@ @@
@T@K    Wyp|lata wynagrodzenia nast|api po wystawieniu rachunku przez Zleceniobiorc|e i stwierdzeniu przez Zleceniodawc|e 
    terminowego i prawid|lowego wykonania zlecenia, b|ed|acego przedmiotem niniejszej umowy.@@ @@
@T@K @@ @@
@T@K@F�4.@@ Zleceniodawca o|swiadcza, |ze wnosi/nie wnosi o obj|ecie go dobrowolnym ubezpieczeniem: emerytalnym, rentowym, chorobowym, 
    zdrowotnym z tyt. pracy na podstawie umowy - zlecenia.@@ @@
@T@K @@ @@
@T@K@F�5.@@ Zmiany umowy wymagaj|a formy pisemnej w postaci aneksu.@@ @@
@T@K @@ @@
@T@K@F�6.@@ W sprawach spornych maj|a zastosowanie przepisy Kodeksu Cywilnego.@@ @@
@T@K @@ @@
@T@K@F�7.@@ Umowa zosta|la sporz|adzona w dw|och jednobrzmi|acych egzemplarzach, po jednym dla ka|zdej ze stron.@@ @@
@T@K @@ @@
@T@K @@ @@
@T@K @@ @@
@T@K @@ @@
@T@P@@               @v@MZLECENIOBIORCA@@@@                                     @P@@ @v@MZLECENIODAWCA@@@@ @@ 
@T@K @@ @@
@T@K @@ @@
@T@K @@ @@
@T@P@@     @v@M.................................@@@@                  @P@@ @v@M...................................@@@@ @@
@T@K
//## FINISHPAGE = 57
%% esc:
