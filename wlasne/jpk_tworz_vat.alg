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
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// naliczanie danych vat do SPRAWOZDAN
// ============
% zamiana_kresek11.alg
// nip przed zamiana wchodzi jako d_string i jako d_string opuszcza alg
if(strIn["-",d_string]<0) ExitAlg[0]
d_string1 := d_string
d_string := ""
petla2:
 mmx := strIn["-",d_string1]
 IF(mmx <0) d_string := d_string + d_string1
 if(mmx<0) ExitAlg[0]
 d_string := d_string + StrCut[d_string1,0,mmx]
 dl_str1 := strlen[d_string1]
 d_string1 := Strcut[d_string1,mmx+1,dl_str1-mmx-1]
 goto petla2

% jpk_vat_tw.alg
finnop["openmain",""]
ks_s := ""
pusta_ks := .N.
if (not(Finnop["tofirstdok",""])) pusta_ks := .T.
rejop["tmp:wyczyscrej",""]
 ksiega_kon := nazwa_ksieg
data_p := rejwezp_d["naz:dataod"]
data_k := rejwezp_d["naz:datado"]
if(data_p ='') data_p := poczrok_ksieg
if(not(data_k ='')) goto po_xx0
d_data := poczrok_ksieg
callsl["gl_koniec_rok()"]
 data_k := d_data
po_xx0:
// tu odczytanie proporcji obowiazujacej w roku, którego dotycza dane do deklaracji
 prop_k := 100
 rejop["hk:otworzrej","h-ksiegi.rjr"]
 if(poczrok_ksieg <=data_p) goto odczyt_prop
// tu odszukanie ksiegi ktorej dotyczy korekta
 if (not(rejop["hk:wezpierwszyrek",""])) goto odczyt_prop
 petla_hkX:
 ks_s := rejwezp_s["hk:ks_sym"]
 if (ks_s == ksiega_kon) goto odczyt_prop
 if (not(FinnOp["OpenMain",ks_s])) goto next_hkx
 d_p := poczrok_ksieg
 d_data := d_p
 callsl["gl_koniec_rok()"]
 d_k := d_data
 if (d_k >=data_k and d_p<= data_p) goto odczyt_prop
 zamknij_hkx:
 finnop["close",""]
 next_hkx:
 if (rejop["hk:weznastepnyrek",""]) goto petla_hkx
//
 odczyt_prop:
 rejop["mm:otworzrej","VATPARAM.REX"]
 if(rejop["mm:wezpierwszyrek",""]) prop_k := rejwezp_k["mm:vatparamprop"]
 rejop["mm:zamknijrej",""]
 if(prop_k=.) prop_k := 100
 if(not(ks_s==ksiega_kon)) finnop["close",""]
 rejop["hk:zamknijrej",""]
//okalert["prop_k="+prop_k]
// utworzenie rejestru przyporzadkowan pol do deklaracji i rodzaju dokumentu oraz klasyfikacji
// do t0 vat nalezny, do t1 vat naliczony
// rejop["e:otworzrej","REJFAKTSPR.REX"]
//rejop["f:otworzrej","REJZAPSPR.RJR"]
 REjOp["PA:OtworzREjtemp","VAT_dekp.rjr"]
 REjOp["PX:OtworzREjtemp","VAT_dekp.rjr"]
 REjOp["BA:OtworzREjSprawdz","VAT_dekl.rjr"]
ustawczekajinfo["Start4","Przygotowanie danych. Prosz|e czeka|c ..."]
callalg["prep_vat_dekp"]
rejop["px:zmienkluczrej","3"]
 malypodatnikl := .N.
// CallAlg["ODCZYTAJ-DANE-UZYTKOWNIKA"]
callalg["odczytaj_metode_rozliczania_vat"]
// spreparowanie rejestru vat w zaleznosci czy maly podatnik czy tez duzy z fakturami zakupu od MP
// po_xx0:
 rd1 := data_p
 rd2 := data_k
//okalert["rd1="+rd1+"$RD2="+RD2]
 nazwa_frm := "DEKLVAT1"
mp_zap := .T.
// okalert["malypodatnikl="+malypodatnikl]
 if(malypodatnikl) goto omin_zakupy
 nazwa_frm := "DEKLVAT"
 mp_zap := .T.
 ksiega_kon := nazwa_ksieg
 Rejop["usunplikrej","MP-REJFAKTSPR.REX"]
 rejop["usunplikrej","MP-REJZAPSPR.RJR"]
// tu sprawdzenie czy korekta i czy dotyczy roku bie¿acego 
rejop["hk:otworzrej","h-ksiegi.rjr"]
format := rejwezp_s["naz:KodFormularza"]
cel := rejwezp_s["naz:CelZlozenia"]
if (format == "JPK_VAT (3)") cel := tostr["#rejwezp_k[""naz:CelZlozenia1""]#S:0"]
if (format == "JPK_VAT (2)" and cel = "1") goto zlozenie
if (format == "JPK_VAT (3)" and cel = "0") goto zlozenie
if(poczrok_ksieg <=data_p) goto zlozenie
// tu odszukanie ksiegi ktorej dotyczy korekta
if (not(rejop["hk:wezpierwszyrek",""])) goto zlozenie
petla_hk:
ks_s := rejwezp_s["hk:ks_sym"]
if (ks_s == ksiega_kon) goto zlozenie
if (not(FinnOp["OpenMain",ks_s])) goto next_hk
d_p := poczrok_ksieg
d_data := d_p
callsl["gl_koniec_rok()"]
d_k := d_data
if (d_k < data_p) goto zamknij_hk
if (data_p < d_p) goto zamknij_hk
 callalg["przepisz_duzych"]
zamknij_hk:
finnop["close",""]
next_hk:
if (rejop["hk:weznastepnyrek",""]) goto petla_hk
//
zlozenie:
rejop["hk:zamknijrej",""]
 callalg["przepisz_duzych"]
 rejop["sal:otworzrejtemp","MP-REJFAKTSPR.REX"]
 callalg["ustal_mp_kor"]
 rejop["sala:drotworzplik","sal:"]
 rejop["sal:zmienkluczrej","15"]
 rejop["sala:zmienkluczrej","16"]
 callalg["ustal_mp_vat"]
 rejop["sala:zamknijrej",""]
 rejop["sal:zamknijrej",""]
 Rejop["e:otworzrejsprawdz","MP-REJFAKTSPR.REX"]
 rejop["f:otworzrejsprawdz","MP-REJZAPSPR.RJR"]
//
//-----------------------------------------------------------------------------------------------------------
 goto omin_e
 omin_zakupy:
 if(not(malypodatnikl)) goto omin_mp
 nazwa_frm := "DEKLVAT1"
 Rejop["usunplikrej","MP-REJFAKTSPR.REX"]
 rejop["usunplikrej","MP-REJZAPSPR.RJR"]
 rejop["sal:otworzrejtemp","MP-REJFAKTSPR.REX"]
 rejop["sala:drotworzplik","sal:"]
 rejop["sal:zmienkluczrej","15"]
 rejop["sala:zmienkluczrej","16"]
  callalg["ustal_mp_vat"]
 rejop["sala:zamknijrej",""]
 rejop["sal:zamknijrej",""]
 Rejop["e:otworzrejsprawdz","MP-REJFAKTSPR.REX"]
 rejop["f:otworzrejsprawdz","MP-REJZAPSPR.RJR"]
 omin_mp:
 omin_e:
// dopisanie danych z rejestru dodatkowych danych out poza danymi z jpk_vat
// wstawka3
// odszukanie ksiegi zawierajacej hurtownie danych z podanego okresu
 rejop["hk:otworzrej","h-ksiegi.rjr"]
 if (not(rejop["hk:wezpierwszyrek",""])) goto zlozenie2
 petla_hk2:
 ks_s := rejwezp_s["hk:ks_sym"]
 if (ks_s == ksiega_kon) goto zlozenie2
 if (not(FinnOp["OpenMain",ks_s])) goto next_hk2
 d_p := poczrok_ksieg
 d_data := d_p
 callsl["gl_koniec_rok()"]
 d_k := d_data
 if (data_p >= d_p and data_k <= d_k) goto zlozenie2
 finnop["close",""]
 next_hk2:
 if (rejop["hk:weznastepnyrek",""]) goto petla_hk2
//
 zlozenie2:
 rejop["hk:zamknijrej",""]
// wstawka3 koniec
Rejop["ee:otworzrej","FREJFAKTSPR.REX"]
//rejop["ee:zobaczdbf",""]
rejop["ff:otworzrej","FREJZAPSPR.RJR"]
rejop["ff:zmienkluczrej","1"]
if(not(rejop["ee:wezpierwszyrek",""])) goto koniec_przepisywania1
petla_ee1:
 if (rejwezp_s["ee:vatform"]=="JPK_VAT") goto nastepny_ee1
 if(rejwezp_d["ee:vatdataobow"]<rd1 or rejwezp_d["ee:vatdataobow"]>rd2) goto nastepny_ee1
rejop["e:dodajrek",""]
klucz1k := rejwezp_k["e:vatid"]
rejop["ee:przeniespola","e:"]
xrejwstawp_k["e:vatid",klucz1k]
rejop["e:zapiszrek",""]
klucz := tostr["#rejwezp_k[""ee:vatid""]#S:0"]
if(not(rejop["ff:znajdzrek",klucz])) goto nastepny_ee1
petla_ff1:
rejop["f:dodajrek",""]
rejop["ff:przeniespola","f:"]
xrejwstawp_k["f:vatdofaktury",klucz1k]
rejop["f:zapiszrek",""]
if(rejop["ff:weznastepnyrekn",""]) goto petla_ff1
nastepny_ee1:
if(rejop["ee:weznastepnyrek",""]) goto petla_ee1
koniec_przepisywania1:
rejop["ee:zamknijrej",""]
rejop["ff:zamknijrej",""]
 if (not(nazwa_ksieg == ksiega_kon)) Finnop["close",""]
// rejop["e:zobaczdbf",""]
//
//
dataod := rejwezp_d["naz:dataod"]
datado := rejwezp_d["naz:datado"]
if(dataod ='') dataod := poczrok_ksieg
if(not(datado ='')) goto po_xx
d_data := poczrok_ksieg
callsl["gl_koniec_rok()"]
 datado := d_data
 po_xx:
okalert["Przyj|ety okres "+dataod+" - "+datado]
rd1 := dataod
rd2 := datado
xrejwstawp_d["naz:dataod",dataod]
xrejwstawp_d["naz:datado",datado]
rejop["naz:zapiszrek",""]
d_string := studatas[rd1]+"_"+studatas[rd2]
d_string_z := "."
d_string_na := ""
callsl["gl_zmien_tekst"]
tekst := d_string
id_nag := rejwezp_k["naz:iID"]
tekst1 := ""
teksts := ""
lps := 0
lpz := 0
rejop["t1:dodajrek",""]
xrejwstawp_k["t1:LpZakupu",lpz]
rejop["t1:zapiszrek",""]
  RejOp["E:ZmienKluczRej","0"]
 if (not (RejOp["E:WezPierwszyRek",""])) goto ulga
 RejOp["F:ZmienKluczRej","1"]
callalg["sprawdz_podmiot1"]
kw_l := .N.
 _next_fakt:
 ustawczekajinfo["Nastepny","Next"]
 vatdataobow := RejWezP_D["E:vatdataobow"]
 if (vatdataobow < rd1 or vatdataobow > rd2) goto _wez_next_fakt
if(rejwezp_l["e:jpk_nie"]) goto _wez_next_fakt
 _no_disp:
 vatid := ToStr["#RejWezP_K[""E:vatid""]#S:0"]
 vatstat := RejWezP_S["E:vatstatus"]
 typdok := RejWezP_S["E:vattyp"]
 vatanu := RejWezP_L["E:vatanulowany"]
 typrej := "S"
 if (RejWezP_L["E:vatstrona"]) typrej := "Z"
 okres := "B"
 if (vatstat == "inny") goto _odlozone
 if (vatstat == "odloz") odlozone := .T.
 if (vatstat == "odloz") okres := "O"
 if (vatstat == "odloz") goto _odlozone
 if (vatstat == "zaks" and pusta_ks) goto omin_zaks 
 if (vatstat == "zaks" and FinnOp["ZnajdzIdZapis",ToStr["#RejWezP_K[""E:vatnumerzap""]#S:0"]]) goto _ok_wybor
omin_zaks:
 if(vatstat == "zaks") okres := "P"
 if(vatstat == "zaks") goto _odlozone
 goto _wez_next_fakt
//
 _ok_wybor:
 if (Zrokiem[DKsieg] < rd1) okres := "P"
 if (Zrokiem[DKsieg] > rd2) okres := "N"
 _odlozone:
 LVAT := 0
 if (RejOp["F:ZnajdzRek",vatid]) goto xnext_zap
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+" - brak zapis|ow do faktury "+rejwezp_s["e:vatsymdok"]+"faktura zosta|la pomini|eta ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
// OkAlert["B|l|ad - brak zapis|ow do faktury !"]
 goto _wez_next_fakt
//
xnext_zap:
jest_z := .N.
 petla_zap:
 klas := RejWezP_S["F:vatindeksVAT"]
if (not(rejwezp_k["f:vatkwotanetto"] = . and rejwezp_k["f:vatpodatek"] = .)) kw_l := .T.
tura := 1
petla_tura:
index := typrej + okres +"*"+ klas
//if(tura=2) index := typrej + okres +"*"+ klas+"*VAT"
if(not(rejop["px:znajdzrek",index])) goto next_tura
petla_pxs:
rejop["ba:znajdzrek",rejwezp_s["px:DEKP_num"]]
//okalert["index=."+index+".$faktura="+rejwezp_s["e:vatsymdok"]+"$pozycja="+rejwezp_s["px:DEKP_num"]]
prop := rejwezp_k["ba:Dekl_prop"]
if(not(prop=.)) prop := prop_k
if(prop=.) prop := 100
//okalert["prop="+prop]
 _dodaj_temp_rek:
if(typrej=="Z") goto zakup
if(jest_z) goto dopisz_s
rejop["t0:dodajrek",""]
lps := lps+1
xrejwstawp_k["t0:LpSprzedazy",lps]
//if(rejwezp_d["e:vatdataspr"]= rejwezp_d["e:vatdatadok"]) goto omin_data_sprzedazy
xrejwstawp_d["t0:DataSprzedazy",rejwezp_d["e:vatdataspr"]]
omin_data_sprzedazy:
if(not(rejwezp_d["e:vatdatadok"]='')) goto wstaw_datawystawienia
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak daty wystawienia ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_datawystawienia:
xrejwstawp_d["t0:DataWystawienia",rejwezp_d["e:vatdatadok"]]
xrejwstawp_s["t0:NrDokumentu",rejwezp_s["e:vatsymdok"]]
if (not(rejwezp_s["e:vatnazwa"] ="")) goto wstaw_nazwakontrahenta
rejop["tmp:dodajrek",""]
//tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak nazwy kontrahenta ***********"
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak nazwy kontrahenta, wstawiono incydentalny"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_nazwakontrahenta:
xrejwstawp_s["t0:NazwaNabywcy",rejwezp_s["e:vatnazwa"]]
if (rejwezp_s["e:vatnazwa"]="") xrejwstawp_s["t0:NazwaNabywcy","incydentalny"]
if (not(rejwezp_s["e:vatadres"] ="")) goto wstaw_adreskontrahenta
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak adresu kontrahenta, wstawiono brak"
//tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak adresu kontrahenta ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_adreskontrahenta:
adres := rejwezp_s["e:vatadres"]
if (adres="") adres := "brak"
xrejwstawp_s["t0:AdresNabywcy",adres]
nrid := rejwezp_s["e:vatnip"]
if (strin[strcut[nrid,0,1],"NRP"]>-1) nrid := strcut[nrid,1,strlen[nrid]-1]
wykaz := "--WN--WNK--WD--WDK--WU--WUK"
if (strin["--"+rejwezp_s["e:vattyp"]+"--",wykaz]>-1) goto sprawdz_ue
if (nrid = "") goto sprawdz_ue
d_string := nrid
d_string_z := " "
d_string_na := ""
callsl["gl_zmien_tekst"]
nrid := d_string
ALG_xx := 1
linia := "gl_kontrola_nipxx("""+nrid+""")"
callsl[linia]
if (ALG_xx = 2) goto sprawdz_ue
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - nieprawid|lowy NIP kontrahenta ("+nrid+")+++++++++++"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
sprawdz_ue:
if (strin["--"+rejwezp_s["e:vattyp"]+"--",wykaz]>-1) nrid := rejwezp_s["e:kod_ue"]+rejwezp_s["e:nip_ue"]
if (nrid="") nrid := rejwezp_s["e:kod_ue"]+rejwezp_s["e:nip_ue"]
if (not(nrid ="")) goto wstaw_nrkontrahenta
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak NIP kontrahenta, wstawiono brak "
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_nrkontrahenta:
if (nrid="") nrid := "brak"
d_string := nrid
callalg["zamiana_kresek11"]
nrid := d_string
xrejwstawp_s["t0:NrKontrahenta",nrid]
dopisz_s:
if(rejwezp_s["px:DEKP_wyr"]=="NETTO") xrejdodajp_k["t0:K_"+rejwezp_s["px:DEKP_dekl"],roundn[rejwezp_k["f:vatkwotanetto"]*prop/100,2]]
if(rejwezp_s["px:DEKP_wyr"]=="VAT") xrejdodajp_k["t0:K_"+rejwezp_s["px:DEKP_dekl"],roundn[rejwezp_k["f:vatpodatek"]*prop/100,2]]
//if (not(rejwezp_k["f:vatkwotanetto"] = . and rejwezp_k["f:vatpodatek"] = .)) kw_l := .T.
jest_z := .T.
if(rejop["px:weznastepnyrekn",""]) goto petla_pxs
goto next_zap
zakup:
if(jest_z) goto dopisz_z
rejop["t1:dodajrek",""]
lpz := lpz+1
xrejwstawp_k["t1:LpZakupu",lpz]
if(not(rejwezp_d["e:vatdatadok"]='')) goto wstaw_datazakupu
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak daty zakupu ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_datazakupu:
xrejwstawp_d["t1:DataZakupu",rejwezp_d["e:vatdatadok"]]
xrejwstawp_d["t1:DataWplywuFaktury",rejwezp_d["e:vatdataspr"]]
nrid := rejwezp_s["e:vatnip"]
if(strin[strcut[nrid,0,1],"NRP"]>-1) nrid := strcut[nrid,1,strlen[nrid]-1]
wykaz := "--WN--WNK--WD--WDK--WU--WUK"
if (strin["--"+rejwezp_s["e:vattyp"]+"--",wykaz]>-1) goto sprawdz_ue1
if (nrid = "") goto sprawdz_ue1
d_string := nrid
d_string_z := " "
d_string_na := ""
callsl["gl_zmien_tekst"]
nrid := d_string
ALG_xx := 1
linia := "gl_kontrola_nipxx("""+nrid+""")"
callsl[linia]
if (ALG_xx = 2) goto sprawdz_ue1
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - nieprawid|lowy NIP kontrahenta "+nrid+ " +++++++++++"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
sprawdz_ue1:
if(strin["--"+rejwezp_s["e:vattyp"]+"--",wykaz]>-1) nrid := rejwezp_s["e:kod_ue"]+rejwezp_s["e:nip_ue"]
if(nrid="") nrid := rejwezp_s["e:kod_ue"]+rejwezp_s["e:nip_ue"]
if(not(nrid="")) goto wstaw_nrid
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak nr ID dostawcy, wstawiono brak"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_nrid:
if ( nrid="") nrid := "brak"
d_string := nrid
callalg["zamiana_kresek11"]
nrid := d_string
xrejwstawp_s["t1:NrIdWystawcy",nrid]
xrejwstawp_s["t1:NrFaktury",rejwezp_s["e:vatsymdok"]]
if(not(rejwezp_s["e:vatnazwa"]="")) goto wstaw_nazwa
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak nazwy dostawcy ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_nazwa:
xrejwstawp_s["t1:NazwaWystawcy",rejwezp_s["e:vatnazwa"]]
if(not(rejwezp_s["e:vatadres"]="")) goto wstaw_adres
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak adresu dostawcy ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_adres:
xrejwstawp_s["t1:AdresWystawcy",rejwezp_s["e:vatadres"]]
dopisz_z:
if(rejwezp_s["px:DEKP_wyr"]=="NETTO") xrejdodajp_k["t1:K_"+rejwezp_s["px:DEKP_dekl"],roundn[rejwezp_k["f:vatkwotanetto"]*prop/100,2]]
if(rejwezp_s["px:DEKP_wyr"]=="VAT") xrejdodajp_k["t1:K_"+rejwezp_s["px:DEKP_dekl"],roundn[rejwezp_k["f:vatpodatek"]*prop/100,2]]
jest_z := .T.
if(rejop["px:weznastepnyrekn",""]) goto petla_pxs
next_tura:
next_zap:
 if (RejOp["F:WezNastepnyRekn",""]) goto petla_zap
//if(typrej=="S") rejop["t0:zobaczdbf",""]
if (not(jest_z)) goto _wez_next_fakt
 rej := "t0:"
if(typrej=="Z") rej := "t1:"
xrejwstawp_l[rej+"oLog",.N.]
xrejwstawp_s[rej+"oPrg",nazwa_ksieg]
xrejwstawp_s[rej+"xx","VAT_"+tekst]
if(typrej=="S") rejop["t0:zapiszrek",""]
if(typrej=="Z") rejop["t1:zapiszrek",""]
if(kw_l) goto _wez_next_fakt
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak kwot w fakturze ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
 _wez_next_fakt: 
kw_n := 0
kw_v := 0
 if (RejOp["E:WezNastepnyRek",""]) goto _next_fakt
 _drukowanie:
 ulga:
 RejOp["E:ZamknijRej",""]
 RejOp["F:ZamknijRej",""]
// -------------------------------------------
// tu pobieranie danych  z rejestru korekt vat
// odszukanie ksiegi zawierajacej faktury wycofywane
rejop["hk:otworzrej","h-ksiegi.rjr"]
if (not(rejop["hk:wezpierwszyrek",""])) goto zlozenie1
petla_hk1:
ks_s := rejwezp_s["hk:ks_sym"]
if (ks_s == ksiega_kon) goto zlozenie1
if (not(FinnOp["OpenMain",ks_s])) goto next_hk1
d_p := poczrok_ksieg
d_data := d_p
callsl["gl_koniec_rok()"]
d_k := d_data
if (data_p >= d_p and data_k <= d_k) goto zlozenie1
finnop["close",""]
next_hk1:
if (rejop["hk:weznastepnyrek",""]) goto petla_hk1
//
zlozenie1:
rejop["hk:zamknijrej",""]
 rejop["e:otworzrej","H-REJFAKTSPR.REX"]
 rejop["f:otworzrej","H-REJZAPSPR.RJR"]
 rejop["f:zmienkluczrej","1"]
 data_del := strcut[studatas[rd2],0,7]
 if(not(rejop["e:wezpierwszyrek",""])) goto omin_arch
 _next_fakt1:
 ustawczekajinfo["Nastepny","Next"]
 if (not(rejwezp_s["e:vatdeklaracja"]==data_del)) goto _wez_next_fakt1
 _no_disp1:
 vatid := ToStr["#RejWezP_K[""E:vatid""]#S:0"]
 vatstat := RejWezP_S["E:vatstatus"]
 typdok := RejWezP_S["E:vattyp"]
 vatanu := RejWezP_L["E:vatanulowany"]
 typrej := "S"
 if (RejWezP_L["E:vatstrona"]) typrej := "Z"
 okres := "D"
 if(rejwezp_k["e:vatsumabrutto"]<0) okres := "W"
 if (vatstat == "odloz") odlozone := .T.
 if (vatstat == "odloz") okres := "O"
 if (not(RejOp["F:ZnajdzRek",vatid])) goto  _wez_next_fakt1
 jest_z := .N.
 kw_l := .N.
 petla_f:
 klas := RejWezP_S["F:vatindeksVAT"]
 index := typrej + okres +"*"+ klas
if (not(rejwezp_k["f:vatkwotanetto"] = . and rejwezp_k["f:vatpodatek"] = .)) kw_l := .T.
///////////////////////////////////////////
if(not(rejop["px:znajdzrek",index])) goto next_tura1
petla_pxs1:
rejop["ba:znajdzrek",rejwezp_s["px:DEKP_num"]]
prop := rejwezp_k["ba:Dekl_prop"]
if(not(prop=.)) prop := prop_k
if(prop=.) prop := 100
 _dodaj_temp_rek1:
if(typrej=="Z") goto zakup1
if(jest_z) goto dopisz_s1
rejop["t0:dodajrek",""]
lps := lps+1
xrejwstawp_k["t0:LpSprzedazy",lps]
//if(rejwezp_d["e:vatdataspr"]= rejwezp_d["e:vatdatadok"]) goto omin_data_sprzedazy1
xrejwstawp_d["t0:DataSprzedazy",rejwezp_d["e:vatdataspr"]]
omin_data_sprzedazy1:
if(not(rejwezp_d["e:vatdatadok"]='')) goto wstaw_datawystawienia1
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak daty wystawienia ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_datawystawienia1:
xrejwstawp_d["t0:DataWystawienia",rejwezp_d["e:vatdatadok"]]
xrejwstawp_s["t0:NrDokumentu",rejwezp_s["e:vatsymdok"]]
if (not(rejwezp_s["e:vatnazwa"] ="")) goto wstaw_nazwakontrahenta1
rejop["tmp:dodajrek",""]
//tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak nazwy kontrahenta ***********"
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak nazwy kontrahenta, wstawiono incydentalny"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_nazwakontrahenta1:
xrejwstawp_s["t0:NazwaNabywcy",rejwezp_s["e:vatnazwa"]]
if (not(rejwezp_s["e:vatadres"] ="")) goto wstaw_adreskontrahenta1
rejop["tmp:dodajrek",""]
//tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak adresu kontrahenta ***********"
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak adresu kontrahenta, wstawiono brak"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_adreskontrahenta1:
xrejwstawp_s["t0:AdresNabywcy",rejwezp_s["e:vatadres"]]
nrid := rejwezp_s["e:vatnip"]
if (strin[strcut[nrid,0,1],"NRP"]>-1) nrid := strcut[nrid,1,strlen[nrid]-1]
wykaz := "--WN--WNK--WD--WDK--WU--WUK"
if (strin["--"+rejwezp_s["e:vattyp"]+"--",wykaz]>-1) nrid := rejwezp_s["e:kod_ue"]+rejwezp_s["e:nip_ue"]
if (nrid="") nrid := rejwezp_s["e:kod_ue"]+rejwezp_s["e:nip_ue"]
if (not(nrid ="")) goto wstaw_nrkontrahenta1
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak NIP kontrahenta, wstawiono brak"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_nrkontrahenta1:
if(nrid = "") nrid := "brak"
xrejwstawp_s["t0:NrKontrahenta",nrid]
dopisz_s1:
if(rejwezp_s["px:DEKP_wyr"]=="NETTO") xrejdodajp_k["t0:K_"+rejwezp_s["px:DEKP_dekl"],roundn[rejwezp_k["f:vatkwotanetto"]*prop/100,2]]
if(rejwezp_s["px:DEKP_wyr"]=="VAT") xrejdodajp_k["t0:K_"+rejwezp_s["px:DEKP_dekl"],roundn[rejwezp_k["f:vatpodatek"]*prop/100,2]]
jest_z := .T.
if(rejop["px:weznastepnyrekn",""]) goto petla_pxs1
goto next_zap1
zakup1:
if(jest_z) goto dopisz_z1
rejop["t1:dodajrek",""]
lpz := lpz+1
xrejwstawp_k["t1:LpZakupu",lpz]
if(not(rejwezp_d["e:vatdatadok"]='')) goto wstaw_datazakupu1
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak daty zakupu ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_datazakupu1:
xrejwstawp_d["t1:DataZakupu",rejwezp_d["e:vatdatadok"]]
xrejwstawp_d["t1:DataWplywuFaktury",rejwezp_d["e:vatdataspr"]]
nrid := rejwezp_s["e:vatnip"]
if(strin[strcut[nrid,0,1],"NRP"]>-1) nrid := strcut[nrid,1,strlen[nrid]-1]
wykaz := "--WN--WNK--WD--WDK--WU--WUK"
if(strin["--"+rejwezp_s["e:vattyp"]+"--",wykaz]>-1) nrid := rejwezp_s["e:kod_ue"]+rejwezp_s["e:nip_ue"]
if(nrid="") nrid := rejwezp_s["e:kod_ue"]+rejwezp_s["e:nip_ue"]
if(not(nrid="")) goto wstaw_nrid1
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak nr ID wystawcy, wstawiono brak"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_nrid1:
if (nrid = "") nrid := "brak"
xrejwstawp_s["t1:NrIdWystawcy",nrid]
xrejwstawp_s["t1:NrFaktury",rejwezp_s["e:vatsymdok"]]
if(not(rejwezp_s["e:vatnazwa"]="")) goto wstaw_nazwa1
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak nazwy wystawcy ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_nazwa1:
xrejwstawp_s["t1:NazwaWystawcy",rejwezp_s["e:vatnazwa"]]
if(not(rejwezp_s["e:vatadres"]="")) goto wstaw_adres1
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak adresu wystawcy ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_adres1:
xrejwstawp_s["t1:AdresWystawcy",rejwezp_s["e:vatadres"]]
dopisz_z1:
if(rejwezp_s["px:DEKP_wyr"]=="NETTO") xrejdodajp_k["t1:K_"+rejwezp_s["px:DEKP_dekl"],roundn[rejwezp_k["f:vatkwotanetto"]*prop/100,2]]
if(rejwezp_s["px:DEKP_wyr"]=="VAT") xrejdodajp_k["t1:K_"+rejwezp_s["px:DEKP_dekl"],roundn[rejwezp_k["f:vatpodatek"]*prop/100,2]]
jest_z := .T.
if(rejop["px:weznastepnyrekn",""]) goto petla_pxs1
next_tura1:
next_zap1:
 if (RejOp["F:WezNastepnyRekn",""]) goto petla_f
if(not(jest_z)) goto _wez_next_fakt1
 rej := "t0:"
if(typrej=="Z") rej := "t1:"
xrejwstawp_l[rej+"oLog",.N.]
xrejwstawp_s[rej+"oPrg",nazwa_ksieg]
xrejwstawp_s[rej+"xx","VAT_"+tekst]
if(typrej=="S") rejop["t0:zapiszrek",""]
if(typrej=="Z") rejop["t1:zapiszrek",""]
if(kw_l) goto _wez_next_fakt1
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["e:vatrejestr"]+",faktura "+rejwezp_s["e:vatsymdok"]+" - brak kwot w fakturze ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
 _wez_next_fakt1: 
 kw_l := .N.
 if (RejOp["E:WezNastepnyRek",""]) goto _next_fakt1
omin_arch:
// if (not(nazwa_ksieg == ksiega_kon)) Finnop["close",""]
//------------------------------------------------------------------------------------------------
// wstawka4
// odszukanie ksiegi zawierajacej hurtownie danych z podanego okresu
 rejop["hk:otworzrej","h-ksiegi.rjr"]
 if (not(rejop["hk:wezpierwszyrek",""])) goto zlozenie3
 petla_hk3:
 ks_s := rejwezp_s["hk:ks_sym"]
 if (ks_s == ksiega_kon) goto zlozenie3
 if (not(FinnOp["OpenMain",ks_s])) goto next_hk3
 d_p := poczrok_ksieg
 d_data := d_p
 callsl["gl_koniec_rok()"]
 d_k := d_data
 if (data_p >= d_p and data_k <= d_k) goto zlozenie3
 finnop["close",""]
 next_hk3:
 if (rejop["hk:weznastepnyrek",""]) goto petla_hk3
//
 zlozenie3:
 rejop["hk:zamknijrej",""]
// wstawka4 koniec
// tu odczytanie danych odczytanych z rejestru out wylacznie z danych JPK_VAT
Rejop["ee:otworzrej","FREJFAKTSPR.REX"]
//rejop["ee:zobaczdbf",""]
rejop["ff:otworzrej","FREJZAPSPR.RJR"]
rejop["ff:zmienkluczrej","1"]
rejop["px:zmienkluczrej","4"]
if(not(rejop["ee:wezpierwszyrek",""])) goto koniec_przepisywania2
petla_ee2:
 if (not(rejwezp_s["ee:vatform"]=="JPK_VAT")) goto nastepny_ee2
 if(rejwezp_d["ee:vatdataobow"]<rd1 or rejwezp_d["ee:vatdataobow"]>rd2) goto nastepny_ee2
 typrej := "S"
 if (RejWezP_L["ee:vatstrona"]) typrej := "Z"
klucz := tostr["#rejwezp_k[""ee:vatid""]#S:0"]
if(not(rejop["ff:znajdzrek",klucz])) goto nastepny_ee2
 jest_z := .N.
 kw_l := .N.
petla_ff2:
if(not(rejwezp_k["ff:vatdofaktury"]= rejwezp_k["ee:vatid"])) goto nastepny_ee2
if (not(rejwezp_k["ff:vatkwotanetto"] = . and rejwezp_k["ff:vatpodatek"] = .)) kw_l := .T.
if (rejwezp_s["ff:vatpozdekln"] = "" and rejwezp_s["ff:vatpozdeklv"] = "") goto nastepny_ff2
if(typrej=="Z") goto zakup2
// --
if (jest_z) goto dopisz_s2
rejop["t0:dodajrek",""]
lps := lps+1
xrejwstawp_k["t0:LpSprzedazy",lps]
//if(rejwezp_d["ee:vatdataspr"]= rejwezp_d["ee:vatdatadok"]) goto omin_data_sprzedazy2
xrejwstawp_d["t0:DataSprzedazy",rejwezp_d["ee:vatdataspr"]]
omin_data_sprzedazy2:
if(not(rejwezp_d["ee:vatdatadok"]='')) goto wstaw_datawystawienia2
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["ee:vatrejestr"]+",faktura "+rejwezp_s["ee:vatsymdok"]+" - brak daty wystawienia ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_datawystawienia2:
xrejwstawp_d["t0:DataWystawienia",rejwezp_d["ee:vatdatadok"]]
xrejwstawp_s["t0:NrDokumentu",rejwezp_s["ee:vatsymdok"]]
if (not(rejwezp_s["ee:vatnazwa"] ="")) goto wstaw_nazwakontrahenta2
rejop["tmp:dodajrek",""]
//tekst1 := "Rejestr "+rejwezp_s["ee:vatrejestr"]+",faktura "+rejwezp_s["ee:vatsymdok"]+" - brak nazwy kontrahenta ***********"
tekst1 := "Rejestr "+rejwezp_s["ee:vatrejestr"]+",faktura "+rejwezp_s["ee:vatsymdok"]+" - brak nazwy kontrahenta, wstawiono incydentalny"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_nazwakontrahenta2:
xrejwstawp_s["t0:NazwaNabywcy",rejwezp_s["ee:vatnazwa"]]
if (not(rejwezp_s["ee:vatadres"] ="")) goto wstaw_adreskontrahenta2
rejop["tmp:dodajrek",""]
//tekst1 := "Rejestr "+rejwezp_s["ee:vatrejestr"]+",faktura "+rejwezp_s["ee:vatsymdok"]+" - brak adresu kontrahenta ***********"
tekst1 := "Rejestr "+rejwezp_s["ee:vatrejestr"]+",faktura "+rejwezp_s["ee:vatsymdok"]+" - brak adresu kontrahenta, wstawiono brak"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_adreskontrahenta2:
xrejwstawp_s["t0:AdresNabywcy",rejwezp_s["ee:vatadres"]]
nrid := rejwezp_s["ee:vatnip"]
if (strin[strcut[nrid,0,1],"NRP"]>-1) nrid := strcut[nrid,1,strlen[nrid]-1]
if(nrid = "") nrid := rejwezp_s["ee:kod_ue"]+rejwezp_s["ee:nip_ue"]
if (not(nrid ="")) goto wstaw_nrkontrahenta2
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["ee:vatrejestr"]+",faktura "+rejwezp_s["ee:vatsymdok"]+" - brak NIP kontrahenta,wstawiono brak"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_nrkontrahenta2:
if(nrid = "") nrid := "brak"
xrejwstawp_s["t0:NrKontrahenta",nrid]
dopisz_s2:
if(not(rejwezp_s["ff:vatpozdekln"] = "" or rejwezp_s["ff:vatpozdekln"]="      ")) xrejdodajp_k["t0:"+rejwezp_s["ff:vatpozdekln"],rejwezp_k["ff:vatkwotanetto"]]
if(not(rejwezp_s["ff:vatpozdeklv"] = "" or rejwezp_s["ff:vatpozdeklv"]="      ")) xrejdodajp_k["t0:"+rejwezp_s["ff:vatpozdeklv"],rejwezp_k["ff:vatpodatek"]]
if(rejwezp_s["ff:vatpozdekln"] = "K_12") xrejdodajp_k["t0:K_11",rejwezp_k["ff:vatkwotanetto"]]
if(rejwezp_s["ff:vatpozdekln"] = "K_14") xrejdodajp_k["t0:K_13",rejwezp_k["ff:vatkwotanetto"]]
if(rejwezp_s["ff:vatpozdeklv"] = "K_38") xrejdodajp_k["t0:K_23",rejwezp_k["ff:vatkwotanetto"]]
if(rejwezp_s["ff:vatpozdekln"] = "K_23") xrejdodajp_k["t0:K_24",rejwezp_k["ff:vatpodatek"]]
if(rejwezp_s["ff:vatpozdeklv"] = "K_38") xrejdodajp_k["t0:K_24",rejwezp_k["ff:vatpodatek"]]
jest_z := .T.
goto next_zap2
zakup2:
if(jest_z) goto dopisz_z2
rejop["t1:dodajrek",""]
lpz := lpz+1
xrejwstawp_k["t1:LpZakupu",lpz]
if(not(rejwezp_d["ee:vatdatadok"]='')) goto wstaw_datazakupu2
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["ee:vatrejestr"]+",faktura "+rejwezp_s["ee:vatsymdok"]+" - brak daty zakupu ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_datazakupu2:
xrejwstawp_d["t1:DataZakupu",rejwezp_d["ee:vatdatadok"]]
xrejwstawp_d["t1:DataWplywuFaktury",rejwezp_d["ee:vatdataspr"]]
nrid := rejwezp_s["ee:vatnip"]
if(strin[strcut[nrid,0,1],"NRP"]>-1) nrid := strcut[nrid,1,strlen[nrid]-1]
if (nrid="") nrid := rejwezp_s["ee:kod_ue"]+rejwezp_s["ee:nip_ue"]
if(not(nrid="")) goto wstaw_nrid2
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["ee:vatrejestr"]+",faktura "+rejwezp_s["ee:vatsymdok"]+" - brak nr ID wystawcy, wstawiono brak"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_nrid2:
if(nrid="") nrid := "brak"
xrejwstawp_s["t1:NrIdWystawcy",nrid]
xrejwstawp_s["t1:NrFaktury",rejwezp_s["ee:vatsymdok"]]
if(not(rejwezp_s["ee:vatnazwa"]="")) goto wstaw_nazwa2
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["ee:vatrejestr"]+",faktura "+rejwezp_s["ee:vatsymdok"]+" - brak nazwy wystawcy ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_nazwa2:
xrejwstawp_s["t1:NazwaWystawcy",rejwezp_s["ee:vatnazwa"]]
if(not(rejwezp_s["ee:vatadres"]="")) goto wstaw_adres2
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["ee:vatrejestr"]+",faktura "+rejwezp_s["ee:vatsymdok"]+" - brak adresu wystawcy ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
wstaw_adres2:
xrejwstawp_s["t1:AdresWystawcy",rejwezp_s["ee:vatadres"]]
dopisz_z2:
if(not(rejwezp_s["ff:vatpozdekln"] = "" or rejwezp_s["ff:vatpozdekln"]="      ")) xrejdodajp_k["t1:"+rejwezp_s["ff:vatpozdekln"],rejwezp_k["ff:vatkwotanetto"]]
if(not(rejwezp_s["ff:vatpozdeklv"] = "" or rejwezp_s["ff:vatpozdekln"]="      ")) xrejdodajp_k["t1:"+rejwezp_s["ff:vatpozdeklv"],rejwezp_k["ff:vatpodatek"]]
jest_z := .T.
next_tura2:
next_zap2:
 if (RejOp["FF:WezNastepnyRekn",""]) goto petla_ff2
if(not(jest_z)) goto _wez_next_fakt2
 rej := "t0:"
if(typrej=="Z") rej := "t1:"
xrejwstawp_l[rej+"oLog",.N.]
xrejwstawp_s[rej+"oPrg",nazwa_ksieg]
xrejwstawp_s[rej+"xx","VAT_"+tekst]
if(typrej=="S") rejop["t0:zapiszrek",""]
if(typrej=="Z") rejop["t1:zapiszrek",""]
if(kw_l) goto _wez_next_fakt2
rejop["tmp:dodajrek",""]
tekst1 := "Rejestr "+rejwezp_s["ee:vatrejestr"]+",faktura "+rejwezp_s["ee:vatsymdok"]+" - brak kwot w fakturze ***********"
xrejwstawp_s["tmp:t_opis",tekst1]
rejop["tmp:zapiszrek",""]
 _wez_next_fakt2: 
 kw_l := .N.
//--
 nastepny_ff2: 
 if(rejop["ff:weznastepnyrekn",""]) goto petla_ff2
 
 nastepny_ee2:
if(rejop["ee:weznastepnyrek",""]) goto petla_ee2
koniec_przepisywania2:
rejop["ee:zamknijrej",""]
rejop["ff:zamknijrej",""]
 if (not(nazwa_ksieg == ksiega_kon)) Finnop["close",""]
//------------------------------------------------------------------------------------------------
 _drukowanie1:
 RejOp["E:ZamknijRej",""]
 RejOp["F:ZamknijRej",""]
 if (not(nazwa_ksieg == ksiega_kon)) Finnop["close",""]
///////////////////////////////////////////
// FinnOp["Close",""]
esc1:
kklu := rejwezp_k["t1:szukajklucz"]
rejop["t1:zmienkluczrej","0"]
// przy zakupie dodawal sie jako pierwszy pusty rekord - trzeba go usunac
if(rejop["t1:wezpierwszyrek",""]) rejop["t1:usunrek",""]
rejop["t1:zmienkluczrej",tostr["#kklu#S:0"]]
//rejop["t1:zobaczdbf",""]
 ustawczekajinfo["Stop",""]
rejop["ba:zamknijrej",""]
rejop["pa:zamknijrej",""]
rejop["px:zamknijrej",""]
% jpk_vat.alg
//if(not(rejop["t0:wezpierwszyrek",""]) and not(rejop["t1:wezpierwszyrek",""])) goto esc1 
if(wjv=="JPK_VAT (2)") idzdowydruku["raporty_jpk_vat1.prn",""]
if(wjv =="JPK_VAT (3)") idzdowydruku["raporty_jpk_vat2.prn",""]
//idzdowydruku["raporty_jpk_vat1.prn",""]
  callsl["gl_zapisz_jpk(""t0:"",""VAT"",wezzmiennasrod(""O*Ksiegozbior""),1)"]
  callsl["gl_zapisz_jpk(""t1:"",""VAT"",wezzmiennasrod(""O*Ksiegozbior""),1)"]
esc1:

// spreparowanie rejestru vat_dekp.rjr
% prep_vat_dekp.alg
 numer := ""
 rodzaj1x := ""
 rodzaj := ""
 dekl_p := .N.
 dekl_b := .N.
 dekl_n := .N.
 dekl_o := .N.
 dekl_w := .N.
 dekl_d := .N.
 REjOp["CA:OtworzREjSprawdz","VAT_klas.rjr"]
 REjOp["BA:WezPierwszyRek",""]
 wroc_pole:
 n11 := ""
 n12 := ""
 n13 := ""
 n14 := ""
 n15 := ""
 n16 := ""
 numer := RejWEzP_S["BA:DEKL_num"]
 rodzaj1x := RejWEzP_S["BA:DEKL_typ"]
 if(RejWezP_L["BA:DEKL_p"]) n11 := rodzaj1x+"P"
 if(RejWezP_L["BA:DEKL_b"]) n12 := rodzaj1x+"B"
 if(RejWezP_L["BA:DEKL_n"]) n13 := rodzaj1x+"N"
 if(RejWezP_L["BA:DEKL_o"]) n14 := rodzaj1x+"O"
 if(RejWezP_L["BA:DEKL_w"]) n15 := rodzaj1x+"W"
 if(RejWezP_L["BA:DEKL_d"]) n16 := rodzaj1x+"D"
 if(not(REjOp["CA:ZnajdzRek",numer])) goto nastepne_pole
 nast_klas:
 klas := RejwezP_S["CA:KLAS_sym"]
 n := 1
 zm_dok:
 zm := ""
 if(n=1 and not(n11="")) zm := n11
 if(n=2 and not(n12="")) zm := n12
 if(n=3 and not(n13="")) zm := n13
 if(n=4 and not(n14="")) zm := n14
 if(n=5 and not(n15="")) zm := n15
 if(n=6 and not(n16="")) zm := n16
// okalert["zm="+zm]
 if(zm ="") goto nast_dok
 REjOp["PA:DodajRek",""]
 xRejWstawP_S["PA:DEKP_num",numer]
 xRejWstawP_S["PA:DEKP_rdz",zm]
 xRejWstawP_S["PA:DEKP_kls",klas]
 REjOp["PA:ZapiszRek",""]
 nast_dok:
 n := n+1
 if(n<7) goto zm_dok
 if(not(RejOp["CA:WezNastepnyRek",""])) goto nastepne_pole
 if(not(RejOp["CA:NowyKlucz",""])) goto nast_klas
 nastepne_pole:
if(RejOp["BA:WezNastepnyRek",""]) goto wroc_pole
// okalert["skonczylem"]
//
// utworzenie rejestru odniesienadresw
rejop["dv:otworzrej","DEF.RJR+vat"]
//rejop["dv:zobaczdbf",""]
rejop["dv:zmienkluczrej","1"]
rejop["pa:zmienkluczrej","1"]
if(not(rejop["dv:wezpierwszyrek",""])) goto koniec_przepisywania
petla_dv:
nrs := strcut[rejwezp_s["dv:F_naz"],0,2]
if(stringnaliczbe[nrs]=.) goto next_dv
if(not(rejwezp_s["dv:f_trb"]=="V")) goto next_dv
n := 0
petla_def:
def := rejwezp_s["dv:F_D"+tostr["#n#S:0"]]
if(def="") goto next_def
pole := StrCut[def,2,3]
str1 := StrCut[def,6,5]
if(not(rejop["pa:znajdzrek",pole])) goto next_def
petla_pa:
rejop["px:dodajrek",""]
rejop["pa:przeniespola","px:"]
xrejwstawp_s["px:DEKP_dekl",nrs]
xrejwstawp_s["px:DEKP_wyr",str1]
rejop["px:zapiszrek",""]
if(rejop["pa:weznastepnyrekn",""]) goto petla_pa
next_def:
n := n+1
if(n<10) goto petla_def
next_dv:
if(rejop["dv:weznastepnyrek",""]) goto petla_dv
koniec_przepisywania:
rejop["CA:zamknijrej",""]
rejop["dv:zamknijrej",""]
//rejop["px:zobaczdbf",""]



