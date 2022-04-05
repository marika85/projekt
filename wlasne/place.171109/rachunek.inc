//////////////////////////////////////////////////////////////////////////////
// Rachunek do umowy zlecenie, o dzielo itd.
// Podlaczony do plikow:
// - druk_zlecenie_r.frm	- rachunek
// - druk_zlecenie_uz1.frm	- umowa zlecenie + rachunek
// - druk_zlecenie_ud1.frm	- umowa o dzielo + rachunek
//////////////////////////////////////////////////////////////////////////////
// okreslenie skladek na fpp dla zleceniobiorcy
%% xfpp := fpp
%% xfgp := fgp
%% xkodprac := rejwezp_s["a:kodprac"]
%%  rejop["Kod:otworzrej1","kodprac.rxr"]
%%    if(not(rejop["kod:znajdzrek",xkodprac])) goto nopracownik
%%      if(not(pustepole["kod:fpp"])) xfpp := rejwezp_k["kod:fpp"]
%%      if(not(pustepole["kod:fgp"])) xfgp := rejwezp_k["kod:fgp"]
%% nopracownik:
%% rejop["kod:zamknijrej",""]
%%      suep      := RejWezP_K["B:suep"]
%%      surp      := RejWezP_K["B:surp"]
%%      suwp      := RejWezP_K["B:suwp"]
%%      snalzdr   := RejWezP_K["B:snalzdr"]
%%      szalzdr   := RejWezP_K["B:szalzdr"]
%%      szalzdrn  := RejWezP_K["B:szalzdrn"]
%%      spodst_cw := RejWezP_K["B:spodst_cw"]
%%      naliczony_podatek := RejWezP_K["B:snalpod"]
%%      spotrac := rejwezp_k["b:spotrac"]
%% datarachunku := RejWezP_D["A:data_rachunku"]
%% sposob_zaplaty := "w kasie/na konto bankowe"
//%% sposob_l_zaplaty := RejWezP_L["A:przelewac"]
//%% if (sposob_l_zaplaty) sposob_zaplaty := "na konto bankowe"
//%% if (not(sposob_l_zaplaty)) sposob_zaplaty := "w kasie"
%% sposob_k_zaplaty := RejWezP_K["A:rodzaj_wyplaty"]
%% if ((sposob_k_zaplaty = 1)or(sposob_k_zaplaty = 2)) sposob_zaplaty := "na konto bankowe"
%% if (sposob_k_zaplaty = 0) sposob_zaplaty := "w kasie"
//////////////////////////////////////////////////////////////////////////////
//
@T@v@N#S27#R20 #S28#L10@@@@@v@N                                   @@@@@u               #s20#S, dnia #datarachunku#S@@@@
@T@v@N           (nazwisko i imi|e)@@@@@@@v@N          @@@@@@   
%% rachunek:

@T@K@M                                         @F     R A C H U N E K @@@@@@@@
//@T@K@@@@

@T@KDla #S081#S #s082#S z siedzib|a w #s085#S , #adres#S za wykonanie pracy w okresie
do dnia #dodnia#S wed|lug umowy #rodzaj_umowy#S nr #numer_umowy#S
z dnia #dataumowy#S na kwot|e brutto #wyn_z#L14:2 (s|lownie:  #slownie[wyn_z,0,0]#S z|l.  i #SLOWNIE[grosz,0,0]#S gr.)@J@@
Prosz|e o wyp|lacenie wynagrodzenia #sposob_zaplaty#S @@@@
@T@K@@@@
@T@v@@@v@@@u@N                                                    ......................................@@@@@@
@T@v@@@v@@@u@N                                                           (podpis wystawcy rachunku)@@@@@@
@T@K컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴@@@@
@T@K@F POTWIERDZENIE ODBIORU PRACY @@@@@@
//@T@K1. Praca zosta|la wykonana i przyj|eta zgodnie z umow|a@@@@
@T@K Praca zosta|la wykonana i przyj|eta zgodnie z umow|a@@@@

//@T@K2. Wykonana praca jest dzie|lem w rozumieniu Przepis|ow z 4 lutego 1994 r. o prawie autorskim i prawach pokrewnych (tekst
//   jednolity z 2000 r.Dz.U.Nr 80, poz 904 z p|o|xn.zm.) i podlega przepisom art.22, ust.9,pkt.3 ustawy z 26 lipca 1991 r. 
//   o podatku dochodowym od os|ob fizycznych (tekst jednolity z 2000 r. Dz. U.Nr 14, poz.176 z p|o|xn.zm.).@@@@
@T@K@@@@
@T@K@@@@
@T@v@@@v@@@u@N                                                    .........................................@@@@@@
@T@v@@@v@@@u@N                                                       (data i podpis przyjmuj|acego prace) @@@@@@
@T@K컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴   @@@@
@T@k@F ROZLICZENIE UMOWY@@ @@@@
@T@K1. Kwota brutto zl.@@@L                                          @R #wyn_z#R14:2@@@@
@T@K2. Kwota sk|ladek na ubezpieczenia spo|leczne razem:@@@L@@           @R #sueu+suru+sucu#R14:2@@@@
@T@L@@@K        a) emerytalne@@                                        @R #sueu#R14:2 @@@@
@T@L@@@K        b) rentowe@@                                           @R #suru#R14:2@@@@
@T@L@@@K        c) chorobowe@@                                       @R   #sucu#R14:2@@@@
%% dpo := 0
//%% dpo := wyn_z-(sueu+suru+sucu)
%% dpo := spodst_z
@T@K3. Podstawa obliczenia sk|l.zdrowotnej                 @@@L@@       @R #dpo#R14:2@@@@
@T@K4. Koszty uzyskania przychodu #proc_k_uzys#R3%@@@L               @@ @R            #k_uzys#R14:2@@@@
@T@K5. Doch|od podlegaj|acy opodatkowaniu          @@@L@@             @R    #k_opod#R14:2@@@@
@T@K6. Potr|acona zaliczka podatku dochodowego (z poz.5) #proc#R4%@@@L     @R#naliczony_podatek#R14:2@@@@
@T@K7. Sk|ladka ubezpieczenia zdrowotnego @@                     @L@@   @R #snalzdr#R14:2@@@@
@T@K8. Sk|ladka ubezpieczenia zdrowotnego do potr|acenia z podatku @@@L@R #szalzdr#R14:2@@@@
@T@K9. Sk|ladka ubezpieczenia zdrowotnego pomniejszaj|aca doch|od@@@L   @R #szalzdrn#R14:2@@@@
@T@K10.Nale|zna zaliczka na podatek dochodowy @@@L@@                  @R   #podatek#R14:2@@@@
@T@K11.Potr|acenia  @@@L@@                                               @R#spotrac#R14:2@@@@
@T@K12.Do wyp|laty  @@@L@@                                               @R#k_wypl#R14:2@@@@
@T@K@@@@
@T@K@F SKLADKI POKRYWANE ZE |SRODK|OW ZLECAJ|ACEGO @@@@@@
@T@v1. Emerytalne                 @@@R  #suep#R14:2@@
@T@v2. Rentowe                 @@@R     #surp#R14:2@@@@
@T@v3. Wypadkowe                  @@@R  #suwp#R14:2@@@@
@T@v4. Razem                      @@@R  #suep+surp+suwp#R14:2@@@@
%% kwota_fp := spodst_cw*(xfpp/100)
%% kwota_fg := spodst_cw*(xfgp/100)
@T@v5. Fundusz Pracy           @@@R     #kwota_fp#R14:2@@@@
@T@v6. FG|SP                    @@@R     #kwota_fg#R14:2@@@@
@T@K컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴   @@@@
@T@v@M       @FObliczy|l@@ @@@@                      @v@M@FSprawdzi|l pod wzgl|edem formalnym i rachunkowym@@@@@@              @u@M@FZatwierdzi|l@@@@@@ @@
@T@K@@@@
@T@K@@@@
@T@v@M ..................................@@@@       @v@M..................................@@@@                @u@M..................................@@@@@@
@T@v@M     data, podpis i piecz|atka @@@@                @v@Mdata, podpis i piecz|atka@@@@                           @u@M data, podpis i piecz|atka @@@@@@
@T@K컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴 @@@@
@T@K@FOtrzyma|lem kwot|e #k_wypl#S:2 (s|lownie: #slownie[k_wypl,0,0]#S z|l@@  i @F#SLOWNIE[grosz1,0,0]#S gr)@@@@@@
@T@K@@@@
@T@K@O................................................... @@@@@@
@T@K@O          data i podpis                       @@@@@@
