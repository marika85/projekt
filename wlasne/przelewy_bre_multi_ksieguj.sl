////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//
// Perseus Spolka z o.o 
// Wszystkie prawa zastrzezone
// 
// Data utworzenia: 2003.12.03
//////////////////////////////////////////////////////////////////////////////
//
% PARAM-CZYTAJ-PRZELEW-WB.alg
raport := ToStr["#os_ksieg#S&#nazwa_ksieg#S&PRZELEW-WB"]
if (RejOp["T:ZnajdzRek",raport]) _read_param
    RejOp["T:DodajRek",""]
    xRejWstawP_S["T:frm_frm",raport] 
    RejOp["T:ZapiszRek",""]
_read_param:
  ks_strona := RejWezP_L["T:FRM_log0"]
  ks_nr := RejWezP_L["T:FRM_log1"]
  ks_tresc := RejWezP_S["T:FRM_str1"]
  ks_sort := RejWezP_K["T:FRM_kwota0"]
//
% PARAM-ZAPISZ-PRZELEW-WB.alg
raport := ToStr["#os_ksieg#S&#nazwa_ksieg#S&PRZELEW-WB"]
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

% PRZELEW-POLECENIE-WYCIAG.ALG
  Rejop["T:otworzrej","FRM_MEMO.RJR"]
  DOK_REZYGNUJESZ := .T.
  dok_bank := ""
  dok_wyciag := ""
  dok_zapisy := .N.
  d1 := ''
  d2 := ''
  konto_bank_glob := ""
  ks_strona := .N.
  ks_tresc := ""
  ks_nr := .N.
  ks_sort := 0
  opis_dok := ""
  callalg["PARAM-CZYTAJ-PRZELEW-WB"]
  wyciag := ks_wyciag
  ExDialogOp["IdzDoDialogu","DOK-NAGLOWEK"]
  if (DOK_REZYGNUJESZ) goto dalej
  IF (Not YesAlert["Ksi|egowa|c wyci|ag bankowy ?"]) goto dalej
    ks_wyciag := wyciag
    callalg["PARAM-ZAPISZ-PRZELEW-WB"]
    CallAlg["PRZELEW-DEKRET-WYCIAG"]
    ExDialogOp["KoniecWykonywania",""]
  dalej:
  rejop["t:zamknijrej",""]
  koniec:  
//////////////////////////////////////////////////////////////////////////////
% PRZELEW-DEKRET-WYCIAG.ALG
  rejop["b:zmienkluczrej","1"]
  rejop["c:zmienkluczrej","4"]
  rejop["d:zmienkluczrej","4"]
  rejop["e:zmienkluczrej","4"]
  txt_komunikat := "Ksi|egowanie przelew|ow.Prosz|e czeka|c !"
  numlp := 0
  CallAlg["komunikat-work"]
  jest := .N.
  IF (FinnOp["OpenTemp",""]) goto dalej00
    OkAlert["Nie mog|e otworzy|c ksi|egi do ksi|egowania !"]
    goto koniec
  dalej00:
  IF (RejOp["Y:OtworzRejSprawdz",id_modul+"PRZELEW.RJR"]) goto dalej01
    OkAlert["Nie mog|e otworzy|c listy z przelewami !"]
    goto koniec  
  dalej01:
  RejOp["Y:ZmienKluczRej","2"]
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
  RejOp["K:OtworzRejSprawdz","REJESTRKL.RXR"]
  kurs_data := data_dok_ks
  kurs_waluta := rejwezp_s["a:m_waluta"]
  kurs_tryb := 1
  kurs_kwota := .
  if (kurs_waluta == "PLN") goto kurs_pln
    CallAlg["WEZ-KURS-KUPNA"]
    CallAlg["WEZ-KURS-SPRZEDAZY"]
    CallAlg["WEZ-KURS"]
  kurs_pln:
  suma_rozchodow := 0
  suma_przychodow := 0
// --------------------------------------------------------------
//
//       sortowanie
//
// --------------------------------------------------------------
  kontobank_id := rejwezp_k["a:m_id"]
  rejop["c:zmienkluczrej","3"]
  rejop["c:znajdzrek",tostr["#kontobank_id#S:0"]]
  if (rejop["0:otworzrejsprawdz","PSORT.TMP"]) goto next_0
    goto koniec22
  next_0:
  RejOp["0:wyczyscrej",""]
  next_00:
  if (not(kontobank_id = RejWezP_k["c:m_id"])) goto next_02
  if (kontobank_id = RejWezP_k["c:m_id"]) goto next_03
  goto next_01
  next_03:
     RejOp["0:dodajrek",""]
     xrejwstawp_k["0:dokid",rejwezp_k["c:rejestrrekpos"]]
     xrejwstawp_k["0:dokid_strona",1]
     xrejwstawp_k["0:kwota",rejwezp_k["c:iz_kwota_zap"]]
     if (ks_sort = 0) xrejwstawp_k["0:kwota",rejwezp_k["c:iz_id"]]
     rejop["0:zapiszrek",""]
  next_01:
  if (rejop["c:WezNastepnyRek",""]) goto next_00
  next_02:
  rejop["0:zmienkluczrej","3"]
  if (ks_sort = 0) rejop["0:zmienkluczrej","0"]
  if (ks_sort = 0) rejop["0:zmienkluczrej","2"]
  rejop["y:zmienkluczrej","2"]
  if (ks_sort = 0) rejop["0:wezpierwszyrek",""]
  if (ks_sort = 1) rejop["0:wezpierwszyrek",""]
  if (ks_sort = 2) rejop["0:wezostatnirek",""]
// -------------------------------------------------------------------------------
  rejop["c:zmienkluczrej","3"]
  st := ToStr["*#dok_bank#S,'#data_dok_ks#S',,'#okres_ks#S',0,""#opis_dok#S"""]
  FinnLine[st]
// -------------------------------------------------------------------------------
petlaprzelew:
  rejop["c:ustawrekpos",ToStr["#rejwezp_k[""0:dokid""]#S:0"]]
  strona := 1
  m_id := rejwezp_k["a:m_id"]
  m_id_t := tostr["#m_id#S:0"]
  z_id := rejwezp_k["c:in_id"]
  z_id_t := tostr["#z_id#S:0"]
  rejop["b:znajdzrek",z_id_t]
  zz_id := rejwezp_k["c:iz_id"]
  zz_id_t := tostr["#zz_id#S:0"]
  num_lp := rejwezp_k["c:iz_id"]
  if (rejwezp_s["c:iz_612"] == "C") strona := 2
  if (rejwezp_s["c:iz_612"] == "D") strona := 1
  if (rejwezp_s["c:iz_612"] == "RC") strona := 4
  if (rejwezp_s["c:iz_612"] == "RD") strona := 3
  if (pustepole["c:iz_id_przelew"]) goto dalej02
  if (not(strona = 1)) goto dalej02
////////////////////////////////////////////////////////////////////////////  
//
//    callalg["PRZELEW-DEKRET-WYCIAG-PRZELEW"]
//    goto nextprzelew
//
////////////////////////////////////////////////////////////////////////////  
  dalej02:
    kurs_data := data_dok_ks
    if ((strona = 2) or (strona = 4)) callalg["wez-kurs-kupna"]
    if ((strona = 1) or (strona = 3)) callalg["wez-kurs-sprzedazy"]
    A_OK := .N.
    
  jest := .T.
  konto_klient := RejWezP_S["c:iz_konto_plan"]
  klient := RejWezP_S["c:iz_konto_kl_sym"]
  kwota := RejWezP_K["c:iz_kwota_zap"]
  tresc1 := RejWezP_S["c:iz_860"]+" "+RejWezP_S["c:iz_861"]
  trans := RejWezP_S["c:iz_transakcja"]
  tresc_full_zap := rejwezp_s["c:iz_862"]+" "+rejwezp_s["c:iz_863"]+" "+rejwezp_s["c:iz_864"]+" "+rejwezp_s["c:iz_864"]
  if (not(strona = 1)) tresc_full_zap := ""
  rozpisz_trans := .N.
  konto_ks := kontobank
  if (not(ks_strona)) konto_ks := ""
//
  num_lp := rejwezp_k["c:iz_id"]
  xdok_zapisy := dok_zapisy
  if ((konto_klient == "") and (trans == "#")) xdok_zapisy := .T.
  if ((konto_klient == "") and (trans == "#") and (not(xdok_zapisy))) rozpisz_trans := .T.
  if ((konto_klient == "") and (trans == "#") and (xdok_zapisy)) rozpisz_trans := .T.
  if (rozpisz_trans) goto transakcje_rozpisuj
//  
  if (not(konto_klient = "")) goto dalej001
    OkALert["W przelewie dla klienta o symbolu "+klient+",$ brak konta z planu kont !"]
    if (not(YesAlert["Czy ksi|egowa|c na konto domy|slne:"+dok_bank_glob+" ?"])) goto nextprzelew
    if (not(dok_bank_glob = "")) goto dalej0010
        OkALert["Konto domy|slne nie jest zdefiniowane w rejestrze kont bankowych !$ Zapis zostanie pomini|ety ."]
        goto nextprzelew
    dalej0010:
    konto_klient := dok_bank_glob
  dalej001:
// ---------------------------------------------------------------------------------
  rozr := .N.
  rozl := .N.
  dew := .N.
  CallAlg["plan-klient-x"]
  char := ""
  if (rozr) char := "R" 
  if (rozl) char := char+"L" 
  if (dew) char := char+"D"
  tresc_ks := opis_dok
  tresc_ks_zap := ""
  if ((not(trans == "#")) and (rozr)) goto no_rozpisanie_tra
        klucz := m_id_t+"*"+z_id_t+"*"+zz_id_t
        if (not(rejop["d:znajdzrek",klucz])) goto no_rozpisanie_tra
            trans := rejwezp_s["d:it_transakcja"]
            if (xdok_zapisy) kwota := rejwezp_k["d:it_kwota_zap"]
            tresc_ks_zap := rejwezp_s["d:it_transakcja"]
  no_rozpisanie_tra:
  tresc_ks := opis_dok
  tresc_ks_zap := ""
//  if (rozr) callalg["zrob-tresc-trans-wg-rozpisania"]
  callalg["zrob-tresc-zapisu"]
  Displine[tresc_ks+""]
// ---------------------------------------------------------------------------------
// linia ksiegowa
// ---------------------------------------------------------------------------------
    if ((strona = 3) or (strona = 4)) kwota := kwota*-1
// ---------------------------------------------------------------------------------
    kurs_data := data_dok_ks
    if ((strona = 2) or (strona = 4)) callalg["wez-kurs-kupna"]
    if ((strona = 1) or (strona = 3)) callalg["wez-kurs-sprzedazy"]
    A_OK := .N.
    callsl["KSIEGUJ_BRE_MULTI->ustal_typ_kurs"]
    if (not(a_ok) ) goto zm_kurs_data_raport
        if ((strona = 1) or (strona = 3)) goto kurs_spr
            dzien := rejwezp_s["b:in_601"]
            kurs_data := stringnadate[strcut[dzien,0,2]+"."+strcut[dzien,2,2]+"."+strcut[dzien,4,2]]
            callalg["wez-kurs-sprzedazy"]
        goto zm_kurs_data_raport
        kurs_spr:
            dzien := rejwezp_s["b:in_621"]
            kurs_data := stringnadate[strcut[dzien,0,2]+"."+strcut[dzien,2,2]+"."+strcut[dzien,4,2]]
            callalg["wez-kurs-sprzedazy"]
    zm_kurs_data_raport:
// ---------------------------------------------------------------------------------
    kwota_dew := kwota
    if (kurs_waluta == "PLN") goto skip_no_dew00
        kwota := round[(kwota*kurs_kwota)/dewprzelkurs[kurs_waluta],2]
        if (kwota = .) kwota := kwota_dew
    skip_no_dew00:
    st := ToStr["""#tresc_ks#L80"",#konto_klient#S,#kwota#S:X,#konto_ks#S,,#char#S,#klient#S,,,,"]
    if ((strona = 2) or (strona = 4)) st := ToStr["""#tresc_ks#L80"",#konto_ks#S,#kwota#S:X,#konto_klient#S,,,,,#char#S,#klient#S"]
    FinnLine[st]
    if ((strona = 1) or (strona = 3)) suma_rozchodow := suma_rozchodow+kwota
    if ((strona = 2) or (strona = 4)) suma_przychodow := suma_przychodow+kwota
    jest := .T.
// ---------------------------------------------------------------------------------    
// waluta
// ---------------------------------------------------------------------------------
    xkurs_waluta := kurs_waluta
    xkurs_kwota := kurs_kwota
    if (not(dew)) goto skipno_dew
    if (not(kurs_waluta == "PLN")) goto skip_no_dew01
      if (pustepole["c:iz_866"]) goto skip_no_dew011
        xkurs_waluta := rejwezp_s["c:iz_866"]
        xkurs_kwota := round[stringnaliczbe[rejwezp_s["c:iz_868"]]*dewprzelkurs[xkurs_waluta],2]
        kwota_dew := stringnaliczbe[rejwezp_s["c:iz_867"]]
        goto skip_no_dew01
      skip_no_dew011:
        kwota_dew := Round[(kwota/kurs_kwota)*dewprzelkurs[kurs_waluta],2]      
    skip_no_dew01:
      st_r := "WN"
      if ((strona = 2) or (strona = 4)) st_r := "MA"
//      okalert[rejlines["c:"]]
      if (strin["EUR",xkurs_waluta] > -1) xkurs_waluta := "EUR"
      if (strin["USD",xkurs_waluta] > -1) xkurs_waluta := "USD"
      if (strin["GBP",xkurs_waluta] > -1) xkurs_waluta := "GBP"
      st := ToStr["DEW#st_r#S = #kwota_dew#S:2,#xkurs_waluta#S:2,#xkurs_kwota#S:2,"]
      FinnLine[st]
      finnop["konieclinii",""]
    skipno_dew:
// ---------------------------------------------------------------------------------
// klasyfikacja
// ---------------------------------------------------------------------------------
    if (not(rozl)) goto skipno_rozl
        klucz := m_id_t+"*"+z_id_t+"*"+zz_id_t
        if (not(rejop["e:znajdzrek",klucz])) goto skipno_rozl
        s_kwota_rzl := 0
    petla_010:
    if ((rejwezp_k["e:ik_id"] = zz_id) and (rejwezp_k["e:iz_id"] = z_id) and (rejwezp_k["e:m_id"] = m_id)) goto ok_kls
        goto skipno_rozl    
    ok_kls:
        kwota_rzl := rejwezp_k["e:ik_kwota_zap"]
        konto_rzl := rejwezp_s["e:ik_konto_plan"]
        st_r := "WN"
        if ((strona = 2) or (strona = 4)) st_r := "MA"
        if (kurs_waluta == "PLN") goto skip_no_dew02
            kwota_rzl := round[(kwota_rzl*kurs_kwota)/dewprzelkurs[kurs_waluta],2]
        skip_no_dew02:        
        st := ToStr["ROZL#st_r#S = #kwota_rzl#S:X,#konto_rzl#S,"]
        FinnLine[st]
        finnop["konieclinii",""]
        s_kwota_rzl := s_kwota_rzl+kwota_rzl
        if (s_kwota_rzl = kwota) goto skipno_rozl
    if (rejop["e:weznastepnyrek",""]) goto petla_010
    skipno_rozl:
// ---------------------------------------------------------------------------------
// transakcje
// ---------------------------------------------------------------------------------
    if (not(rozr)) goto skipno_trans    
    transakcje_rozpisuj:
        klucz := m_id_t+"*"+z_id_t+"*"+zz_id_t
        if (not(rejop["d:znajdzrek",klucz])) goto skipno_findtrans 
          konto_klient := rejwezp_s["d:it_konto_plan"]
          if (xdok_zapisy) kwota := rejwezp_k["d:it_kwota_zap"]
          rozr := .N.
          rozl := .N.
          dew := .N.
          CallAlg["plan-klient-x"]
          char := ""
          if (rozr) char := "R" 
          if (rozl) char := char+"L" 
          if (dew) char := char+"D"
          tresc_ks := ""
          callalg["zrob-tresc-zapisu"]
          
        if (not(rozpisz_trans)) goto nie_rozpisz
          kwota_dew := kwota
          if (kurs_waluta == "PLN") goto tr_skip_no_dew00
            kwota := round[(kwota*kurs_kwota)/dewprzelkurs[kurs_waluta],2]
          tr_skip_no_dew00:
          tresc_ks := ""
          trans := rejwezp_s["d:it_transakcja"]
          callalg["zrob-tresc-zapisu"]
//          
          if (not(rejwezp_l["d:it_kompensata"])) goto no_kom01
            konto_ks := kontobank
            if (not(ks_strona)) konto_ks := ""
            kwota := kwota*-1
            k_konto_klient := konto_ks
            k_konto_ks := konto_klient
            konto_klient := k_konto_klient
            konto_ks := k_konto_ks
          no_kom01:
//          
          st := ToStr["""#tresc_ks#L80"",#konto_klient#S,#kwota#S:X,#konto_ks#S,"]
          if ((strona = 2) or (strona = 4)) st := ToStr["""#tresc_ks#L80"",#konto_ks#S,#kwota#S:X,#konto_klient#S,"]
//
          finnline[st]
          if (not(dew)) goto tr_skipno_dew
          if (not(kurs_waluta == "PLN")) goto tr_skip_no_dew01
            kwota_dew := Round[(kwota/kurs_kwota)*dewprzelkurs[kurs_waluta],2]
          tr_skip_no_dew01:
          st_r := "WN"
          if ((strona = 2) or (strona = 4)) st_r := "MA"
          if (not(rejwezp_l["d:it_kompensata"])) goto no_kom02
            st_r := "MA"
            if ((strona = 2) or (strona = 4)) st_r := "WN"          
          no_kom02:
          st := ToStr["DEW#st_r#S = #kwota_dew#S:2,#kurs_waluta#S:2,#kurs_kwota#S:2,''"]
          FinnLine[st]
          tr_skipno_dew:    
        nie_rozpisz:
//          st := ToStr["""#tresc_ks#L80"",#konto_klient#S,#kwota#S:X,#konto_ks#S,"]
//          if ((strona = 2) or (strona = 4)) st := ToStr["""#tresc_ks#L80"",#konto_ks#S,#kwota#S:X,#konto_klient#S,"]
//          finnline[st]
    petla_02:
    if ((rejwezp_k["d:it_id"] = zz_id) and (rejwezp_k["d:iz_id"] = z_id) and (rejwezp_k["d:m_id"] = m_id)) goto ok_tra
    goto skipno_trans 
    ok_tra:
        data_plat := ''
        st_r := "WZ"
        if ((strona = 2) or (strona = 4)) st_r := "Z"
        symbol_tra := rejwezp_s["d:it_transakcja"]
        kwota_tra := rejwezp_k["d:it_kwota_zap"]
        konto_tra := rejwezp_s["d:it_konto_plan"]
        kwota_dew := 0
        if (not(rejwezp_l["d:it_kompensata"])) goto no_kom03
          st_r := "Z"
          if ((strona = 2) or (strona = 4)) st_r := "WZ"
          kwota_tra := rejwezp_k["d:it_kwota_zap"]*-1
        no_kom03:
        if (kurs_waluta == "PLN") goto skip_no_dew03
            kwota_dew := kwota_tra
            kwota_tra := round[(kwota_tra*kurs_kwota)/dewprzelkurs[kurs_waluta],2]
            if (kwota_tra = .) kwota_tra := kwota_dew
//            if (st_r == "WZ") okalert[kwota_tra+" "+kwota_dew+" "+kurs_kwota]
        skip_no_dew03:
        
        tr_ce := "DAC"
        if (st_r == "Z") tr_ce := "OAC"
        
        if ((dew) and (kurs_waluta == "PLN")) kwota_dew := Round[(kwota_tra/kurs_kwota)*dewprzelkurs[kurs_waluta],2]
        if (pustepole["d:it_kwota_zap_zl"]) st := ToStr["ROZR = ""#symbol_tra#S"",'#data_dok_ks#S',#kwota_tra#S:X,#st_r#S,,#tr_ce#S,#kwota_dew#S:2"]
        if (not(pustepole["d:it_kwota_zap_zl"])) st := ToStr["ROZR = ""#symbol_tra#S"",'#data_dok_ks#S',#rejwezp_k[""d:it_kwota_zap_zl""]#S:X,#st_r#S,,#tr_ce#S,#rejwezp_k[""d:it_kwota_zap""]#S:2"]
        if ((not(pustepole["d:it_kwota_zap_zl"])) and (kurs_waluta == "PLN")) st := ToStr["ROZR = ""#symbol_tra#S"",'#data_dok_ks#S',#rejwezp_k[""d:it_kwota_zap""]#S:X,#st_r#S,,#tr_ce#S,"]
        if ((dew) and (not(kurs_waluta == "PLN"))) st := ToStr["ROZR = ""#symbol_tra#S"",'#data_dok_ks#S',#kwota_tra#S:X,#st_r#S,,#tr_ce#S,#kwota_dew#S:2"]
        
//        if (tr_ce == "DAC") okalert["1 "+st+" $ "+kwota_tra+" "+kwota_dew+" "+kurs_kwota]
        FinnLine[st]

        if (not(xdok_zapisy)) goto skip_rozpisz_trans
          if (rejwezp_s["c:iz_transakcja"] == "#") goto skip_reszta_trans
        skip_rozpisz_trans:
    if (rejop["d:weznastepnyrek",""]) goto petla_02
//  -------------------------------------- transakcje jako poszczegolne linie ksiegowe
    skip_reszta_trans:
    if (not(rejop["d:weznastepnyrek",""])) goto skipno_trans
//
    petla_020:
    if ((rejwezp_k["d:it_id"] = zz_id) and (rejwezp_k["d:iz_id"] = z_id) and (rejwezp_k["d:m_id"] = m_id)) goto ok_tra0
    goto skipno_trans 
    ok_tra0:
        data_plat := ''
        st_r := "WZ"
        if ((strona = 2) or (strona = 4)) st_r := "Z"
        symbol_tra := rejwezp_s["d:it_transakcja"]
        kwota_tra := rejwezp_k["d:it_kwota_zap"]
        konto_tra := rejwezp_s["d:it_konto_plan"]
// ------ glowna linia
        tresc_ks := ""
        trans := symbol_tra
        callalg["zrob-tresc-zapisu"]
        kwota_dew := 0
        if (not(rejwezp_l["d:it_kompensata"])) goto no_kom04
          st_r := "Z"
          if ((strona = 2) or (strona = 4)) st_r := "WZ"
          kwota_tra := rejwezp_k["d:it_kwota_zap"]*-1
        no_kom04:
        if (kurs_waluta == "PLN") goto skip_no_dew04
            kwota_dew := kwota_tra
            kwota_tra := round[(kwota_tra*kurs_kwota)/dewprzelkurs[kurs_waluta],2]
        skip_no_dew04:
        if ((dew) and (kurs_waluta == "PLN")) kwota_dew := Round[(kwota_tra/kurs_kwota)*dewprzelkurs[kurs_waluta],2]        
          tresc_ks := ""
          trans := rejwezp_s["d:it_transakcja"]
          callalg["zrob-tresc-zapisu"]
//          
          if (not(rejwezp_l["d:it_kompensata"])) goto no_kom05
            konto_ks := kontobank
            if (not(ks_strona)) konto_ks := ""
            k_konto_tra := konto_ks
            k_konto_ks := konto_tra
            konto_tra := k_konto_tra
            konto_ks := k_konto_ks
          no_kom05:
//
        st := ToStr["""#tresc_ks#L80"",#konto_tra#S,#kwota_tra#S:X,#konto_ks#S,"]
        if ((strona = 2) or (strona = 4)) st := ToStr["""#tresc_ks#L80"",#konto_ks#S,#kwota_tra#S:X,#konto_tra#S,"]
        FinnLine[st]
// ------ walutowa linia
        kwota_dew := 0
        if (not(dew)) goto tskipno_dew
        if (not(kurs_waluta == "PLN")) goto tskip_no_dew01
            kwota_dew := Round[(kwota_tra/kurs_kwota)*dewprzelkurs[kurs_waluta],2]
        tskip_no_dew01:
        st_r := "WN"
        if ((strona = 2) or (strona = 4)) st_r := "MA"
        if (not(rejwezp_l["d:it_kompensata"])) goto no_kom06
          st_r := "MA"
          if ((strona = 2) or (strona = 4)) st_r := "WN"
        no_kom06:

        if (pustepole["d:it_kwota_zap_zl"]) st := ToStr["DEW#st_r#S = #kwota_dew#S:2,#kurs_waluta#S:2,#kurs_kwota#S:2,"]
        if (not(pustepole["d:it_kwota_zap_zl"])) st := ToStr["DEW#st_r#S = #rejwezp_k[""d:it_kwota_zap""]#S:2,#kurs_waluta#S:2,#kurs_kwota#S:2,"]
        FinnLine[st]
        finnop["konieclinii",""]
        tskipno_dew:
// ------ 
        st_r := "WZ"
        if ((strona = 2) or (strona = 4)) st_r := "Z"
        tr_ce := "DAC"
        if (not(rejwezp_l["d:it_kompensata"])) goto no_kom07
          st_r := "Z"
          if ((strona = 2) or (strona = 4)) st_r := "WZ"
        no_kom07:
        if (st_r == "Z") tr_ce := "OAC"        
        if (pustepole["d:it_kwota_zap_zl"]) st := ToStr["ROZR = ""#symbol_tra#S"",'#data_dok_ks#S',#kwota_tra#S:X,#st_r#S,,#tr_ce#S,#kwota_dew#S:2"]
        if (not(pustepole["d:it_kwota_zap_zl"])) st := ToStr["ROZR = ""#symbol_tra#S"",'#data_dok_ks#S',#rejwezp_k[""d:it_kwota_zap_zl""]#S:X,#st_r#S,,#tr_ce#S,#rejwezp_k[""d:it_kwota_zap""]#S:2"]
        if ( (not(pustepole["d:it_kwota_zap_zl"])) and (rejwezp_l["d:it_kompensata"])) st := ToStr["ROZR = ""#symbol_tra#S"",'#data_dok_ks#S',#rejwezp_k[""d:it_kwota_zap_zl""]*-1#S:X,#st_r#S,,#tr_ce#S,#rejwezp_k[""d:it_kwota_zap""]*-1#S:2"]
        if ((not(pustepole["d:it_kwota_zap_zl"])) and (kurs_waluta == "PLN")) st := ToStr["ROZR = ""#symbol_tra#S"",'#data_dok_ks#S',#rejwezp_k[""d:it_kwota_zap""]#S:X,#st_r#S,,#tr_ce#S,"]
        if  ( (not(pustepole["d:it_kwota_zap_zl"])) and (kurs_waluta == "PLN") and (rejwezp_l["d:it_kompensata"]) ) st := ToStr["ROZR = ""#symbol_tra#S"",'#data_dok_ks#S',#rejwezp_k[""d:it_kwota_zap""]*-1#S:X,#st_r#S,,#tr_ce#S,"]
        if ((dew) and (not(kurs_waluta == "PLN"))) st := ToStr["ROZR = ""#symbol_tra#S"",'#data_dok_ks#S',#kwota_tra#S:X,#st_r#S,,#tr_ce#S,#kwota_dew#S:2"]
        FinnLine[st]
//      okalert["2 "+st]
//        if (rejwezp_l["d:it_kompensata"]) okalert["2 "+st]
    if (rejop["d:weznastepnyrek",""]) goto petla_020
    goto skipno_trans    
    skipno_findtrans:
    if (not(rozr)) goto skipno_trans    
        st_r := "WZ"
        if ((strona = 2) or (strona = 4)) st_r := "Z"
        if (not(rejwezp_l["d:it_kompensata"])) goto no_kom08
          st_r := "Z"
          if ((strona = 2) or (strona = 4)) st_r := "WZ"
        no_kom08:
        tr_ce := "DAC"
        if (st_r == "Z") tr_ce := "OAC"        
        st := ToStr["ROZR = ""#RejWezP_S[""c:iz_transakcja""]#S"",'#data_dok_ks#S',#kwota#S:X,#st_r#S,,#tr_ce#S,"]
        FinnLine[st]
//      okalert["3 "+st]
//        if (rejwezp_l["d:it_kompensata"]) okalert["3 "+st]
// ---------------------------------------------------------------------------------    
    skipno_trans:
// ---------------------------------------------------------------------------------    
nextprzelew:
  konto_ks := kontobank
  if (not(ks_strona)) konto_ks := ""
czyx := .N.
if (ks_sort = 0) czyx := rejop["0:wezNastepnyrek",""]
if (ks_sort = 1) czyx := rejop["0:wezNastepnyrek",""]
if (ks_sort = 2) czyx := rejop["0:wezpoprzednirek",""]
if (czyx) goto petlaprzelew
// ---------------------------------------------------------------------------------    
  koniec3:
  if (jest) FinnOp["DokOdl",""]
//  if (not(suma_rozchodow = rejwezp_k["c:is_kw_deb"])) okalert["Z|la kwota rozchod|ow !"]
//  if (not(suma_przychodow = rejwezp_k["c:is_kw_kre"])) okalert["Z|la kwota przychod|ow !"]
  if (jest) rejwstawp_s["a:m_status","odloz"]
  koniec2:
  if (not(jest)) OkAlert["Brak danych do zaksi|egowania !"]
  koniec22:
  RejOp["0:Zamknijrej",""]
  RejOp["K:zamknijrej",""]
  RejOp["X:ZamknijRej",""]
  koniec21:
  RejOp["Z:ZamknijRej",""]
  koniec1:
  RejOp["Y:ZamknijRej",""]
  koniec:
  rejop["c:zmienkluczrej","1"]
  rejop["b:zmienkluczrej","2"]
// ----------------------------------------------------------
// ----------------------------------------------------------
// ----------------------------------------------------------
// ----------------------------------------------------------
% ZROB-TRESC-ZAPISU.ALG
// ---------------------------------------------------------------------------------
// tresc zapisu
// ---------------------------------------------------------------------------------
    tresc_z_zap := RejWezP_S["c:iz_862"]+ " "+RejWezP_S["c:iz_863"] + " "+RejWezP_S["c:iz_864"]
    numlp := numlp +1
    tresc_ks := ""
    wyciagx1 := wyciag +"/"+ToStr["#numlp#S"]
    if (not(ks_nr)) wyciagx1 := rejwezp_s["b:in_28c"]
    tresc_ks := wyciagx1+" "+ks_tresc
    tresc_tmp := trans
    callalg["wstaw_trans_tresc"]
// ----------------------------   
    tresc_tmp :=  tresc_z_zap
    if ((not(rozr)) and (not(rozl))) goto tresc_norzr
        goto trescno_rzr
    tresc_norzr:
        tresc_tmp := tresc_z_zap
        callalg["wstaw_tresc_tresc"]
        tresc_tmp :=  tresc_z_zap
        callalg["wstaw_nazwa_kl_tresc"]
    trescno_rzr:
//    
    tresc_tmp := tresc_z_zap
    if (rozl) goto tresc_kls
        goto trescno_kls
    tresc_kls:
        tresc_tmp := tresc_z_zap
        callalg["wstaw_tresc_tresc"]
        tresc_tmp :=  RejWezP_S["c:iz_861"]
        callalg["wstaw_nazwa_kl_tresc"]
    trescno_kls:
// ----------------------------    
    tresc_tmp :=  tresc_z_zap
    if (klient == "") goto trescno_kl
    if (not(rejop["K:znajdzrek",klient])) goto zrob_nazwa_kl
      if (not(pustepole["K:kl_nazwa1"])) tresc_tmp := rejwezp_s["K:kl_nazwa1"]
    zrob_nazwa_kl:
        callalg["wstaw_nazwa_kl_tresc"]
        tresc_tmp :=  tresc_z_zap
        callalg["wstaw_tresc_tresc"]
    trescno_kl:
//    
% YZROB-TRESC-ZAPISU.ALG
  tresc_ks := ""
  numlp := numlp +1
  numlp := num_lp
  if (not(ks_nr)) tresc_ks := wyciag+" "+ks_tresc
  if (ks_nr) tresc_ks := wyciag+" "+"/"+ToStr["#numlp#S"]+" "+ks_tresc  
  
  if (rozr) goto tresc_rozr
    tresc_tmp := ""
    callalg["wstaw_trans_tresc"]
    goto tresc_norozr
  tresc_rozr:
    tresc_tmp := trans
    callalg["wstaw_trans_tresc"]
    tresc_tmp := ""
    callalg["wstaw_tresc_tresc"]
  tresc_norozr:
  
  if (rozr) goto tresc_rozr1
    tresc_tmp := RejWezP_S["c:iz_862"]+ " "+RejWezP_S["c:iz_863"] + " "+RejWezP_S["c:iz_864"]
    if ((pustepole["c:iz_862"])) tresc_tmp := RejWezP_S["c:iz_861"]
    callalg["wstaw_tresc_tresc"]
  tresc_rozr1:
  
  tresc_tmp :=  ""
  callalg["wstaw_nazwa_kl_tresc"]
  tresc_ks := tostr["#tresc_ks#L80"]
//  
// wyjscie z trescia tresc_ks
//  
% XZROB-TRESC-ZAPISU.ALG
// ---------------------------------------------------------------------------------
// tresc zapisu
// ---------------------------------------------------------------------------------
    numlp := numlp +1
    tresc_ks := ""
    wyciagx1 := wyciag +"/"+ToStr["#numlp#S"]
    if (not(ks_nr)) wyciagx1 := rejwezp_s["b:in_28c"]
    tresc_ks := wyciagx1+" "+ks_tresc
    tresc_tmp := trans
    callalg["wstaw_trans_tresc"]
// ----------------------------   
    tresc_tmp :=  RejWezP_S["c:iz_861"]
    if ((not(rozr)) and (not(rozl))) goto tresc_norzr
        goto trescno_rzr
    tresc_norzr:
        tresc_tmp := RejWezP_S["c:iz_862"]+ " "+RejWezP_S["c:iz_863"] + " "+RejWezP_S["c:iz_864"]
        callalg["wstaw_tresc_tresc"]
        tresc_tmp :=  ""
        callalg["wstaw_nazwa_kl_tresc"]
    trescno_rzr:
//    
    tresc_tmp := RejWezP_S["c:iz_861"]
    if (rozl) goto tresc_kls
        goto trescno_kls
    tresc_kls:
        tresc_tmp := RejWezP_S["c:iz_861"]
        callalg["wstaw_tresc_tresc"]
        tresc_tmp :=  RejWezP_S["c:iz_861"]
        callalg["wstaw_nazwa_kl_tresc"]
    trescno_kls:
// ----------------------------    
    tresc_tmp :=  RejWezP_S["c:iz_861"]
    if (klient == "") goto trescno_kl
    if (not(rejop["K:znajdzrek",klient])) goto zrob_nazwa_kl
      if (not(pustepole["K:kl_nazwa1"])) tresc_tmp := rejwezp_s["K:kl_nazwa1"]
    zrob_nazwa_kl:
        callalg["wstaw_nazwa_kl_tresc"]
        tresc_tmp :=  RejWezP_S["c:iz_861"]
        callalg["wstaw_tresc_tresc"]
    trescno_kl:
//    
% zrob-tresc-trans-wg-rozpisania.alg
  zlp := 0
  trans := ""
  klucz := m_id_t+"*"+z_id_t+"*"+zz_id_t
  if (not(rejop["d:znajdzrek",klucz])) goto no_rozpisanie_tra
    petla:
    if ((rejwezp_k["d:it_id"] = zz_id) and (rejwezp_k["d:iz_id"] = z_id) and (rejwezp_k["d:m_id"] = m_id)) goto ok_tra
      goto no_rozpisanie_tra
    ok_tra:
        if (zlp = 0) trans := rejwezp_s["d:it_transakcja"]
        if (zlp > 0 ) trans := trans+";"+rejwezp_s["d:it_transakcja"]
    zlp := 1
    if (rejop["d:weznastepnyrek",""]) goto petla
    rejop["d:znajdzrek",klucz]
  no_rozpisanie_tra:
//
% SL.ksiegowanie-danych-bre-multicache-raport
  
implements("KSIEGUJ_BRE_MULTI");

define ustal_typ_kurs()
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
  ustawazmienna_L("A_OK",ok);
}

define ustal_poprzedni_raport_kurs()
{
    variable nrko = rejwezp_s("a:m_nrkonta");
    variable nrra = rejwezp_s("a:m_numer");
    variable rpos = rejwezp_k("a:rejestrrekpos");
    variable d = gl_daj_pusta_data();
    
    if (rejop("x:otworzrej","BRE_MULTI_RAPORT.RJR")){
        () = rejop("x:zmienkluczrej","2");
        if (rejop("x:znajdzrek",nrra)){
            do {
                if (not(rpos == rejwezp_k("x:rejestrrekpos"))) {
                    d = rejwezp_d("x:m_data");
                    break;
                }
            } while (rejop("x:wezpoprzednirek"));
        }
        () = rejop("x:zamknijrej");
    }
    if (pustadata(d)) {
        okalert("Nie mog|e znale|x|c poprzedniego wyci|agu bankowego !");
    } else {
        okalert(datanas(d));
    }
}
