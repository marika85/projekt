//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//
// Perseus Spolka z o.o 
// Wszystkie prawa zastrzezone
// 
// Data utworzenia: 2009.05.10
// Historia zmian
//////////////////////////////////////////////////////////////////////////////
// Emisja do systemu ZURA
//////////////////////////////////////////////////////////////////////////////
// pole 0:i30 - data raportu od
// pole 0:i31 - data raportu do
// pole 0:i32 - data raportu 
// pole 0:i33 pierwszy rekord
// 1 - HIDG dekret
// 2 - Best Western BRZEG
// 3 - SCANDIC
//
//// Opera import
//%% callalgfile["wspolne/wspolnefunkcje.sl;optima.sl","URUCHOM_OPERA_IMPORT"]
//
//
  
% URUCHOM_OPERA_IMPORT.ALG
  callalgfile["optima.sl","SL.O_PTIMA->uruchom_modul"]

% URUCHOM_WCZYTAJ_CSV.ALG
  callalgfile["optima.sl","SL.O_PTIMA->uruchom_modul_csv"]

% REJDEFTABLE
%<<REJDEFTABLE
,,0,"TMP_IMP.REJ",.,2
,,0,"ITMP_IMP.REJ",.,2
    
//========================================
//definicje rejestrow
//========================================
% ITMP_IMP.REJ
0
0
ITMP_IMP
//
% ITMP_IMP.DBF
0,log,,,,,D           # usuwanie "w miejscu"
%<TMP_IMP.DBF
//
% ITMP_IMP.DIC
%<TMP_IMP.DIC
//
% TMP_IMP.REJ
0
0
TMP_IMP
//
% TMP_IMP.DBF
1,string,110,1,1
2,string,110,,2
3,string,110,,3
4,string,110,,4
5,string,110,,5
6,string,110,,6
7,string,110,,7
8,string,110,,8
9,string,110,,9
10,string,110,,10
11,string,80
12,string,80
13,string,80
14,string,80
15,string,80
16,string,80
17,string,80
18,string,80
19,string,80
20,string,80
21,string,80
22,string,80
23,string,80
24,string,80
25,string,80
26,string,80
27,string,80
28,string,80
29,string,80
30,string,80
31,string,80
32,string,80
33,string,80
34,string,80
35,string,110
36,string,110
37,string,80
38,string,80
39,string,80
40,string,80
41,string,80
42,string,80
43,string,80
44,string,80
45,string,80
46,string,80
47,string,80
48,string,80
49,string,80
%<DOK-EMISJA-FK.DBF
//
% TMP_IMP.DIC
"i01",1,Estring,"A"
"i02",2,Estring,"B"
"i03",3,Estring,"C"
"i04",4,Estring,"D"
"i05",5,Estring,"E"
"i06",6,Estring,"F"
"i07",7,Estring,"G"
"i08",8,Estring,"H"
"i09",9,Estring,"I"
"i10",10,Estring,"J"
"i11",11,Estring,"K"
"i12",12,Estring,"L"
"i13",13,Estring,"M"
"i14",14,Estring,"N"
"i15",15,Estring,"O"
"i16",16,Estring,"P"
"i17",17,Estring,"Q"
"i18",18,Estring,"R"
"i19",19,Estring,"S"
"i20",20,Estring,"T"
"i21",21,Estring,"U"
"i22",22,Estring,"V"
"i23",23,Estring,"W"
"i24",24,Estring,"X"
"i25",25,Estring,"Y"
"i26",26,Estring,"Z"
"i27",27,Estring,"AA"
"i28",28,Estring,"AB"
"i29",29,Estring,"AC"
"i30",30,Estring,"AD"
"i31",31,Estring,"AE"
"i32",32,Estring,"AF"
"i33",33,Estring,"AG"
"i34",34,Estring,"AH"
"i35",35,Estring,"AI"
"i36",36,Estring,"AJ"
"i37",37,Estring,"AK"
"i38",38,Estring,"AL"
"i39",39,Estring,"AM"
"i40",40,Estring,"AN"
"i41",41,Estring,"AE"
"i42",42,Estring,"AF"
"i43",43,Estring,"AG"
"i44",44,Estring,"AH"
"i45",45,Estring,"AI"
"i46",46,Estring,"AJ"
"i47",47,Estring,"AK"
"i48",48,Estring,"AL"
"i49",49,Estring,"AM"
%<DOK-EMISJA-FK.DIC
//
//
% DOK-EMISJA-FK.DBF
98,string,20    # nip
99,string,100   # info
100,2100        # ko symbol
101,2000        # ko konto
102,2000        # vat konto
103,string,20,2 # rej VAT
104,string,20,2 # klas VAT
105,2000        # netto konto
106,string,10   # typ dok
107,ydate       # data fa
108,ydate       # data termin
109,ydate       # data pod
110,ydate       # data w
111,string,40   # nazwa pliku
112,2002        # konto netto kls
113,2000        # ko konto roznic
114,2002        # konto netto kls roznic
115,xkwota,,4   # kurs 1
116,xkwota,,4   # kurs 2
117,xkwota,,x   # BRUTTO jako klucz
118,xkwota,,x   # BRUTTO jako klucz
119,xkwota,,x   # BRUTTO jako klucz
1,0,,,11
117,0,,,11 

% DOK-EMISJA-FK.DIC
"nip",98,Estring,"NIP"
"f_nip",98,Estring,"NIP"
"f_info",99,Estring,"Info"
"f_symbol",100,Estring,"Symbol"
"f_konto",101,Estring,"Konto"
"f_konto_vat",102,Estring,"Konto VAT"
"f_rejestr_vat",103,Estring,"Rej VAT"
"f_klas_vat",104,Estring,"Klas VAT"
"f_konto_netto",105,Estring,"Konto NETTO"
"f_typ_dok",106,Estring,"Typ"
"f_data_fa",107,Edata
"f_data_termin",108,Edata
"f_data_pod",109,Edata
"f_data_w",110,Edata
"f_nazwa_pliku",111,Estring
"f_konto_kls",112,Estring,"Konto KLS"
"f_konto_netto_r",113,Estring,"Konto roznic"
"f_konto_kls_r",114,Estring,"Konto KLS roznic"
"kurs",115,Ekwota
"kurs2",116,Ekwota
"f_brutto",117,Ekwota
"f_netto",118,Ekwota
"f_vat",119,Ekwota
  
% TABLICA-SL-AKCJI-WYBIERZ-PLIK-IMPORT
"AKCJA-BUTTON0",O_PTIMA->akceptuj_plik
"AKCJA-F2-POLE10",O_PTIMA->wybierz_plik
//  
% WYBIERZ-PLIK-IMPORT.DLG
PRZYCISK_CANCELID = 1
##DEFWINDOW = ,,,,ADPSH,lwhite/black&white,lwhite/red&black/white,magenta/black&white,,"Import danych"
##0,,ADP,,@3
##1,,ADP,,@4
##10,0,ACPH,,"Wybierz plik wej|sciowy:",,,,,,ZMIENNA:PLIK_WEJ,4003


 #10                                                                 #
 
 
                                                  #0      #  #1      # 
//


///////////////////////////////////////////////////////////////
% wstaw_vat_oper.alg
//okalert["1111"]
//rejop["0:zobaczdbf",""]
ustawczekajinfo["start4","Import faktur - prosz|e czeka|c"]
rejop["0:wezpierwszyrek",""]
data_od := rejwezp_s["0:i30"]
data_od := strcut[data_od,6,2]+"."+strcut[data_od,3,2]+"."+strcut[data_od,0,2]
data_do := rejwezp_s["0:i31"]
data_do := strcut[data_do,6,2]+"."+strcut[data_do,3,2]+"."+strcut[data_do,0,2]
data_wy := rejwezp_s["0:i32"]
data_wy := strcut[data_wy,6,2]+"."+strcut[data_wy,3,2]+"."+strcut[data_wy,0,2]
typ := rejwezp_s["0:i33"]
petla_a:
fv := rejwezp_s["0:i02"]
//if(rejop["fe:znajdzrek",fv]) goto jest_fa
rejop["fe:dodajrek",""]
fe_id := rejwezp_k["fe:vatid"]
xrejwstawp_l["fe:vatstrona",.N.]
xrejwstawp_s["fe:vatsymdok",fv]
xrejwstawp_s["fe:vattyp","F"]
xrejwstawp_s["fe:vatrejestr","OUT_S"]
xrejwstawp_s["fe:vatstatus","inny"]
tekst := rejwezp_s["0:i04"]
d1 := strin[",",tekst]
nazwa := rejwezp_s["0:i35"]
datax := rejwezp_s["0:i01"]
datax := strcut[datax,6,2]+"."+strcut[datax,3,2]+"."+strcut[datax,0,2]
datad := stringnadate[datax]
adres := rejwezp_s["0:i36"]
nipx := ""
nip := ""
nipue := ""
nipx := rejwezp_s["0:i05"]
d_string := nipx
callalg["usun_spacje"]
//callalg["zamiana_kresek"]
//okalert["nipx=."+nipx+"."]
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
xrejwstawp_d["fe:vatdatadok",datad]
xrejwstawp_d["fe:vatdataspr",datad]
xrejwstawp_d["fe:vatdataobow",datad]
xrejwstawp_s["fe:vatform","WLASNY"]
xrejwstawp_s["fe:vatokr",data_od+"-"+data_do]
xrejwstawp_s["fe:vatdatawytw",data_wy]
xrejwstawp_s["fe:vatopis",opis_imp]
kvat := .
knet := .
kbrutt := .
kzap := .
n := 11
if (typ = "3" or typ = "2") n := 16
czy_byl := .N.
petla_kwota:
ns := tostr["#n#S:0"]
if (n<10) ns := tostr["0#n#S:0"]
pole_s := rejwezp_s["0:i"+ns]
// usuniecie spacji
d_string := pole_s
callalg["usun_spacje"]
pole_s := d_string
pole_s1 := pole_s
//
// tu wstawienie zapisow do faktury
if (typ ="3" or typ = "2") goto inne_kolumny
if (n=8 or n=11) kwx := stringnaliczbe[pole_s1]
if (n=7 or n=10) kwy := stringnaliczbe[pole_s1]
if (n=6 or n=9) goto n_3
if(n=12) kwx := stringnaliczbe[pole_s1]
if(n=12) kwy := 0
if(n=12) goto n_3
if(n=13) kwx := stringnaliczbe[pole_s1]
if(n=13) kwy := .
if(n=13) goto n_3
goto nastepny_n
n_3:
if(n=6) stawka := "S23"
if(n=9) stawka := "S08"
if(n=12) stawka := "SK0"
//if(n=12) stawka := "S05"
if(n=13) stawka := "SZW"
goto wspolne
inne_kolumny:
if (n=8 or n=11 or n=16) kwx := stringnaliczbe[pole_s1]
if (n=7 or n=10 or n=15) kwy := stringnaliczbe[pole_s1]
if (n=6 or n=9 or n=14) goto n_31
if(n=12) kwx := stringnaliczbe[pole_s1]
if(n=12) kwy := 0
if(n=12) goto n_31
if(n=13) kwx := stringnaliczbe[pole_s1]
if(n=13) kwy := .
if(n=13) goto n_31
goto nastepny_n
n_31:
if(n=6) stawka := "S23"
if(n=9) stawka := "S08"
if(n=14) stawka := "S05"
if(n=12) stawka := "SK0"
if(n=13) stawka := "SZW"
wspolne:
if (kwx+0=0 and kwy+0=0) goto nastepny_n
rejop["ff:dodajrek",""]
xrejwstawp_s["ff:vatindeksVAT",stawka]
xrejwstawp_s["ff:vatgus","U"]
xrejwstawp_k["ff:vatkwotanetto",kwx]
xrejwstawp_k["ff:vatpodatek",kwy]
xrejwstawp_k["ff:vatkwotabrutto",stringnaliczbe[pole_s1]]
xrejwstawp_k["ff:vatdofaktury",fe_id]
xrejdodajp_k["fe:vatsumanetto",kwx]
xrejdodajp_k["fe:vatsumavat",kwy]
xrejdodajp_k["fe:vatsumabrutto",kwx+kwy]
xrejdodajp_k["fe:vatkwotazapl",kwx+kwy]
rejop["ff:zapiszrek",""]
czy_byl := .T.
goto nastepny_n
nastepny_n:
n := n-1
if(n>5) goto petla_kwota
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
xx1 := "15"
xx2 := "16"
xx3 := "17"
if(typ="3" or typ="2") xx1 := "21"
if(typ="3" or typ = "2") xx2 := "22"
if(typ="3" or typ = "2") xx3 := "23"
//xrejwstawp_k["fe:vatsumanetto",stringnaliczbe[rejwezp_s["0:i"+xx1]]]
//xrejwstawp_k["fe:vatsumavat",stringnaliczbe[rejwezp_s["0:i"+xx2]]]
//xrejwstawp_k["fe:vatsumabrutto",stringnaliczbe[rejwezp_s["0:i"+xx3]]]
//xrejwstawp_k["fe:vatkwotazapl",stringnaliczbe[rejwezp_s["0:i"+xx3]]]
//
if (pustepole["fe:vatsumanetto"]) xrejwstawp_k["fe:vatsumanetto",0]
if (pustepole["fe:vatsumavat"]) xrejwstawp_k["fe:vatsumavat",0]
if (pustepole["fe:vatsumabrutto"]) xrejwstawp_k["fe:vatsumabrutto",0]
if (pustepole["fe:vatkwotazapl"]) xrejwstawp_k["fe:vatkwotazapl",0]
rejop["fe:zapiszrek",""]
goto nastepny_a
jest_fa:
rejop["0:weznastepnyrek",""]
nastepny_a:
ustawczekajinfo["nastepny",""]
if(rejop["0:weznastepnyrek",""]) goto petla_a
koniec_imp:
ustawczekajinfo["stop",""]
//rejop["v:zobaczdbf",""]
//rejop["fe:zamknijrej",""]

% SL.dok-emisja-optima

implements("O_PTIMA");

define ustal_znak(l)
{
  variable pr,sr,zn;
  pr = strin("\,",l);
  sr = strin("\;",l);
  zn = "\,";
  if (sr > pr) zn = "\;";
  return zn;
}

define ren_znak(z,n,t)
{
variable t1,t2;
  forever {
    variable czy = strin(z,t);
    if (czy == -1) return t;
    t1 = strcut(t,0,czy);
    t2 = strcut(t,czy+2,strlen(t)-czy-1);
    t = t1+n+t2;
  }
  return t;
}

private define daj_klucz(co)
{
   switch (co)
     { case 0: return "!DSS.raport_op_wej"; }
     { case 1: return "!DSS.raport_csv_wej"; }

}

define akceptuj_plik()
{
   if (gl_blad_linia_pustazm("PLIK_WEJ","Wprowad|x plik wej|sciowy !",10)) return;
   if (yesalert("Zacz|a|c import danych z pliku "+dajazmienna_S("PLIK_WEJ")+" ?")) () = exdialogop("koniecwykonywania");
}
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

define czy_plik_juz_byl(p)
{
  variable r;
  r = 0;
  return r;
}


//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
private define usun_line_1(l)
{
variable ll,lll;
   l = strtrim_beg(l);
   l = strtrim_end(l);
   if (l == "") return l;
   variable t = gl_konwertuj_import_polskie_utf_8(l);
   t = konwertujstring(t,"KONWTEXT");
   l = t;   
   return l;
}

private define usun_line_2(l)
{
variable ll,lll;
   l = strtrim_beg(l);
   l = strtrim_end(l);
   l = gl_cut_znak("\n",l);
   return l;
}

private define usun_line(l)
{
   l = strtrim_beg(l);
   l = strtrim_end(l);
   if (l == "") return l;
   l = konwertujstring(l,"ISO-LATIN2-KONWTEXT");
   return l;
}

define zapisz_pole_kwota(lp,t)
{
    t = gl_cut_znak("\,",t);
    t = gl_cut_znak(" ",t);
  variable p;
    p = string(lp);
    if (lp < 10) p ="0"+string(lp);
    xrejwstawp_s("0:i"+p,t);
    lp += 1;
  return lp;
}

define ustal_wstaw_nazwa(l)
{
  l = usun_line_2(l);
  variable i=1;
  if (l == "Poland") {
    xrejwstawp_s("0:i39",l);
    i = 0;
  } else {
    if (strin("0",l) > -1) i=0;
    if (strin("1",l) > -1) i=0;
    if (strin("2",l) > -1) i=0;
    if (strin("3",l) > -1) i=0;
    if (strin("4",l) > -1) i=0;
    if (strin("5",l) > -1) i=0;
    if (strin("6",l) > -1) i=0;
    if (strin("7",l) > -1) i=0;
    if (strin("8",l) > -1) i=0;
    if (strin("9",l) > -1) i=0;
  }
  () = rejop("0:zapiszrek");
  return i;
}
define wycinaj_linie1(ll,ve)
{
  variable g,t,s,l,lin,dt;
  dt = "";
  lin = 0;
  l = ll;
  % data
  g = strin(" ",l);
  if (g > -1) {
    dt = strcut(l,0,g);
    if (ve) dt = gl_ren_znak(".","-",dt);
    l = usun_line_2(strcut(l,g,strlen(l)-g));
  }
  % folio no
  g = strin(" ",l);
  if (g > -1) {
    t = strcut(l,0,g);
    if (rejop("0:znajdzrek",t)){
      lin = 1;
    } else {
      () = rejop("0:dodajrek");
      xrejwstawp_s("0:i01",dt);
    }
    xrejwstawp_s("0:i02",t);
    l = usun_line_2(strcut(l,g,strlen(l)-g));
  }
  if (not(usun_line_2(strcut(l,20,12)) == "")) {
  % fiscal bil
    g = strin(" ",l);
    if (g > -1) {
      t = strcut(l,0,g);
      xrejwstawp_s("0:i03",t);
      l = usun_line_2(strcut(l,g,strlen(l)-g));
    }
  }
  if (not(lin)) {
  % nazwa firmy
    t = usun_line_2(strcut(ll,33,24));
    if (ve) t = usun_line_2(strcut(ll,37,24));
    if (pustepole("0:i04")) {
      xrejwstawp_s("0:i04",t);
      xrejwstawp_s("0:i35",t);
      if (not(ustal_wstaw_nazwa(t))) xrejwstawp_s("0:i36",t);
    } else {
      if (ustal_wstaw_nazwa(t)) {
        xrejwstawp_s("0:i35",rejwezp_s("0:i35")+" "+t);
      } else {
        xrejwstawp_s("0:i36",rejwezp_s("0:i36")+" "+t);
      }
    }
    xrejwstawp_s("0:i04",t);
    () = rejop("0:zapiszrek");
  }
  % Nip firmy  
  l = usun_line_2(strcut(ll,57,strlen(ll)-57));
  if (ve) l = usun_line_2(strcut(ll,66,strlen(ll)-66));
  g = strin(" ",l);
    t = strcut(ll,57,15);
    if (ve) t = strcut(ll,66,10);
    t = gl_cut_znak("-",t);
    t = usun_line_2(gl_cut_znak(" ",t));
    t = gl_cut_znak("\n",t);
    if (not(lin)) xrejwstawp_s("0:i05",t);
    l = usun_line_2(strcut(ll,73,strlen(ll)-72));
    if (ve) l = usun_line_2(strcut(ll,75,strlen(ll)-74));
  % TERAZ KWOTY
  variable p="0";
  variable lp=6;  
  if (lin) lp = 12;
  if ((lin) and ve) lp = 15;
  
  % Tax Group 1 
  % Gross Amt
  g = strin(".",l);
  if (g > -1) {
    t = strcut(l,0,g+3);  
    lp = zapisz_pole_kwota(lp,t);
    l = usun_line_2(strcut(l,g+3,strlen(l)-g-3));  
  }
  % Tax Amt
  g = strin(".",l);
  if (g > -1) {
    t = strcut(l,0,g+3);  
    lp = zapisz_pole_kwota(lp,t);
    l = usun_line_2(strcut(l,g+3,strlen(l)-g-3));  
  }  
  
  % Net Amt
  g = strin(".",l);
  if (g > -1) {
    t = strcut(l,0,g+3);  
    lp = zapisz_pole_kwota(lp,t);
    l = usun_line_2(strcut(l,g+3,strlen(l)-g-3));  
  }  

  % Tax Group 2
  % Gross Amt
  g = strin(".",l);
  if (g > -1) {
    t = strcut(l,0,g+3);  
    lp = zapisz_pole_kwota(lp,t);
    l = usun_line_2(strcut(l,g+3,strlen(l)-g-3));  
  }
  % Tax Amt
  g = strin(".",l);
  if (g > -1) {
    t = strcut(l,0,g+3);  
    lp = zapisz_pole_kwota(lp,t);
    l = usun_line_2(strcut(l,g+3,strlen(l)-g-3));  
  }  
  
  % Net Amt
  g = strin(".",l);
  if (g > -1) {
    t = strcut(l,0,g+3);  
    lp = zapisz_pole_kwota(lp,t);
    l = usun_line_2(strcut(l,g+3,strlen(l)-g-3));  
  }  

  if (not(dajazmienna_L("TAX4"))) {
  % Tax Group 3
  % Gross Amt
  g = strin(".",l);
  if (g > -1) {
    t = strcut(l,0,g+3);  
    lp = zapisz_pole_kwota(lp,t);
    l = usun_line_2(strcut(l,g+3,strlen(l)-g-3));  
  }
  % Tax Amt
  g = strin(".",l);
  if (g > -1) {
    t = strcut(l,0,g+3);  
    lp = zapisz_pole_kwota(lp,t);
    l = usun_line_2(strcut(l,g+3,strlen(l)-g-3));  
  }  
  
  % Net Amt
  g = strin(".",l);
  if (g > -1) {
    t = strcut(l,0,g+3);  
    lp = zapisz_pole_kwota(lp,t);
    l = usun_line_2(strcut(l,g+3,strlen(l)-g-3));  
  }  
//  
  
  } else {
  % Tax Group 4
  % Gross Amt
  lp = 14;
  g = strin(".",l);
  if (g > -1) {
    t = strcut(l,0,g+3);  
    lp = zapisz_pole_kwota(lp,t);
    l = usun_line_2(strcut(l,g+3,strlen(l)-g-3));  
  }
  % Tax Amt
  g = strin(".",l);
  if (g > -1) {
    t = strcut(l,0,g+3);  
    lp = zapisz_pole_kwota(lp,t);
    l = usun_line_2(strcut(l,g+3,strlen(l)-g-3));  
  }  
  
  % Net Amt
  g = strin(".",l);
  if (g > -1) {
    t = strcut(l,0,g+3);  
    lp = zapisz_pole_kwota(lp,t);
    l = usun_line_2(strcut(l,g+3,strlen(l)-g-3));  
  }  
  }
  if (strin(" Micros ",rejwezp_s("0:i04")) > -1) xrejwstawp_s("0:i05","MICROS");
  () = rejop("0:zapiszrek");
}

define wycinaj_linie2(ll,lp,f,ve)
{
  variable t,l,tt;
  if (lp == 2) {
  t = usun_line_2(strcut(ll,20,13));
  if (not(t == "")) {
  %  fiscal bill
    t = rejwezp_s("0:i03")+" "+strcut(ll,20,13);
    xrejwstawp_s("0:i03",t);
  % nazwa adres
    tt = usun_line_2(strcut(ll,33,24));
    if (ve) tt = usun_line_2(strcut(ll,37,26));
    
    t = rejwezp_s("0:i04")+" "+tt;
    if (not(f)) {
        if (ustal_wstaw_nazwa(tt)) {
          xrejwstawp_s("0:i35",rejwezp_s("0:i35")+" "+tt);
        } else {
          xrejwstawp_s("0:i36",rejwezp_s("0:i36")+" "+tt);
        }        
      xrejwstawp_s("0:i04",t);
      () = rejop("0:zapiszrek");
    }
    
  % nip reszta
    t = rejwezp_s("0:i05")+" "+strcut(ll,57,15);
    if (ve)  t = rejwezp_s("0:i05")+" "+strcut(ll,66,10);
    t = gl_cut_znak("-",t);
    t = gl_cut_znak(" ",t);
    t = gl_cut_znak("\n",t);
    if (not(f)) xrejwstawp_s("0:i05",t);
  } else {
    if (ve) {
 % nazwa    
      tt = usun_line_2(strcut(ll,37,26));
      if (not(tt == "") ) {
        t = rejwezp_s("0:i04")+" "+tt;
        if (not(f)) {
        xrejwstawp_s("0:i04",t);
        if (ustal_wstaw_nazwa(tt)) {
          xrejwstawp_s("0:i35",rejwezp_s("0:i35")+" "+tt);
        } else {
          xrejwstawp_s("0:i36",rejwezp_s("0:i36")+" "+tt);
        }        
        }
      }
 % nip      
      tt = usun_line_2(strcut(ll,66,10));
      if (not(tt == "")) {
        t = rejwezp_s("0:i05")+" "+tt;
        t = gl_cut_znak("-",t);
        t = gl_cut_znak(" ",t);
        t = gl_cut_znak("\n",t);
        if (not(f)) xrejwstawp_s("0:i05",t);    
      }      
      () = rejop("0:zapiszrek");
    }
  }
  }
  if (lp > 2) {
    t =  rejwezp_s("0:i04")+" "+usun_line_2(ll);
    if (not(f)) {
        if (ustal_wstaw_nazwa(ll)) {
          xrejwstawp_s("0:i35",rejwezp_s("0:i35")+" "+usun_line_2(ll));
        } else {
          xrejwstawp_s("0:i36",rejwezp_s("0:i36")+" "+usun_line_2(ll));
        }        
      xrejwstawp_s("0:i04",t);
    }
  }
  if (strin(" Micros ",rejwezp_s("0:i04")) > -1) xrejwstawp_s("0:i05","MICROS");
  () = rejop("0:zapiszrek");
}
define ustal_raport_dat(l)
{
  variable g,t;
  if (apuste("D_D0")) {
    g = strin("-",l);
    if (daj_zS("D_D3")=="3")     g = strin(".",l);
 
    if (g > -1) {
      t = strcut(l,g-2,8);
      ustawazmienna_S("D_D0",t);    
    }
  }
}
define ustal_zakres_dat(l)
{
  variable g,t;
  if (apuste("D_D1")) {
    g = strin("Date",l);
    if (g > -1) {
      t = strcut(l,g+5,8);
      ustawazmienna_S("D_D1",t);    
    }
  }
  if (apuste("D_D2")) {
    g = strin("To Date",l);
    if (g > -1) {
      t = strcut(l,g+8,8);
      ustawazmienna_S("D_D2",t);    
    }  
  }
}

define wczytaj()
{
  if (jestprogram("pdftotext")) {
    wolajsystems("X-KONWERTUJ-PDF-TO-TEXT "+dajazmienna_S("PLIK_WEJ"),0); 
    ustawazmienna_S("PLIK_WEJ",dajazmienna_S("PLIK_WEJ")+".txt");
  } else {
    okalert("Brak programu do konwersji !");
    return;
  }
  variable fi;
  variable linia,liniax,ver,zn;
  variable ile;
  variable i;
  variable wykonaj,wykonajl,strona,filter,micros;
   
  fi = fopen(dajazmienna_S("PLIK_WEJ"),"r");
  if (fi == NULL) {
      okalert("Nie mo|zna otworzy|c pliku " + dajazmienna_S("PLIK_WEJ") + " !");
      return;
  }
  % odczytuj kolejne linie
  ile = 0;
  filter = 0;
  wykonaj = 0;
  wykonajl = 0;
  strona = 1;
  ustawazmienna_L("TAX4",0);
   
  while (-1 != fgets (&linia, fi)) {
    % usun spacje z poczatku i konca
    liniax = linia;
    linia = usun_line(linia);
    
    if (not(linia == "")) {
//      ustal_raport_dat(linia);    
      if (dajazmienna_S("D_D3") == "0") {
        ver = 0;
        ustawazmienna_S("D_D3","1");
        zn = "-";
        if (strin("SCANDIC",linia) > -1) {
          ustawazmienna_S("D_D3","3");
          ver = 1;
          zn = ".";
        }
      }
      ustal_raport_dat(linia);    
      if (strin("Tax ID",linia) > -1) wykonaj = 1;      
      if (strin("Tax Group",linia) > -1) filter = 0;
      if (strin("Tax Group 4",linia) > -1) filter = 1;
      if (strin("Filter",linia) > -1) {
        filter = 1;
        ustal_zakres_dat(linia);
      }
      if ( (strcut(liniax,0,2) == "  ") and (strin("Total",liniax) > -1) ) wykonaj = 0;
      if (strin("Nontaxable",liniax) > -1)  wykonaj = 0;
      if (strin("Tax Group 4",liniax) > -1)  ustawazmienna_L("TAX4",1);
      
      if (wykonaj) {
        if (strcut(liniax,2,1) == zn) {
        
          if (not(strin(" Micros ",liniax) < -1)) {          
            wykonajl = 1;
            wycinaj_linie1(liniax,ver);            
          } else {         wykonajl = 0;      }
          
        } else {
            wykonajl = wykonajl+1;
            wycinaj_linie2(liniax,wykonajl,filter,ver);          
        }
        
      } else {        wykonajl = 0;      }
      
      
    () = ustawczekajinfo("Nastepny","Next");
    }
  }   
//  () = ustawczekajinfo("Stop","");
  () = fclose(fi);
}
///////////////////////////////////////////////////////////////////////////////////
define ustal_jak()
{
  variable zn,ro; 
  variable fi,ofi;
  variable linia;
  zn = "";
   fi = fopen(dajazmienna_S("PLIK_WEJ"),"r");
   ofi = fopen(dajazmienna_S("PLIK_WEJ")+".txt","w+");
   if (fi == NULL) {
      okalert("Nie mo|zna otworzy|c pliku " + dajazmienna_S("PLIK_WEJ") + " !");
      return 0;
   }
  
  while (-1 != fgets (&linia, fi)) {
  if (strlen(linia) > 10) {
   % pierwszy i ostatni cudzy
   if (zn == "") {
        zn = ustal_znak(linia);
   }
    linia = gl_cut_znak("#",linia);
    () = fputs(linia,ofi);
   }
  }
  () = fclose(fi);
  () = fclose(ofi);
  ustawazmienna_S("PLIK_WEJ",dajazmienna_S("PLIK_WEJ")+".txt");
//  
//  () = dyskop("kopiujplik",dajazmienna_S("PLIK_WEJ")+".txt",dajazmienna_S("PLIK_WEJ"));
//  () = dyskop("usunplik",dajazmienna_S("PLIK_WEJ")+".txt");

  
  ro = 1;
  if (zn ==  "\;") ro = 2;
  return ro;
}
define kwota_s(t)
{
  variable g,nk,tt,nnk;
//okalert("t="+string(t));
  g = strin(".",t);
  if (g > -1) {
   t = strcut(t,0,g+3);
   nnk = stringnaliczbe(strcut(t,g+3,1));
   nnk = kwotarop("+",nnk,0);
//   okalert("nnk="+string(nnk),"t="+t);
   if (kwotalop(">=",nnk,5)) nk = 0.01;
   else nk = 0.00;
   tt = kwotarop("+",stringnaliczbe(t),nk);
   if (kwotalop("<",stringnaliczbe(t),0)) tt = kwotarop("-",stringnaliczbe(t),nk);
   t = gl_kwotanas(tt,2);
  }
  return t;
}
define wczytaj_dane_zrej()
{
  variable l,g,t,n,s,d;
  s = 0 ;
  do {
    l = rejwezp_s("1:i01");
    if (strin("REJESTR VAT od",l) > -1) {
      () = rejop("0:dodajrek");
      g = strin("-",l);
      if (g > -1) {
        d = strcut(l,g-4,10);
        t = strcut(d,8,2)+"-"+strcut(d,5,2)+"-"+strcut(d,2,2);
        ustawazmienna_S("D_D1",t);
      }
       d = strcut(l,g+11,10);
       t = strcut(d,8,2)+"-"+strcut(d,5,2)+"-"+strcut(d,2,2);
       ustawazmienna_S("D_D2",t);
       ustawazmienna_S("D_D0",t);
    }
    if (strin("#:",l) > -1) {
      () = rejop("0:zapiszrek");
      () = rejop("0:dodajrek");
      s = 1;
      d = "";
      if (not(pustepole("1:i08"))) {
        d = gl_data_zliczby(rejwezp_s("1:i08"));        
        xrejwstawp_s("0:i01",strcut(d,6,2)+"-"+strcut(d,3,2)+"-"+strcut(d,0,2));
      }
      xrejwstawp_s("0:i02",rejwezp_s("1:i03"));
      t = rejwezp_s("1:i14");
      l = t;
      n = "";
      g = strin("NIP:",l);
      if (g > -1) {
        t = strcut(l,0,g);
        n = strcut(l,g+5,strlen(l)-g-5);
        n = gl_cut_znak("-",n);
        n = gl_cut_znak(" ",n);
      }
      xrejwstawp_s("0:i04",t);
      xrejwstawp_s("0:i05",n);
      g = strin("\,",t);
      if (g > -1) {
        xrejwstawp_s("0:i35",strcut(t,0,g));
        xrejwstawp_s("0:i36",strcut(t,g+1,strlen(t)-g+1));    
      }
    } else {
      if (s) {
// 23      
        xrejwstawp_s("0:i08",kwota_s(rejwezp_s("1:i02")));
        xrejwstawp_s("0:i07",kwota_s(rejwezp_s("1:i06")));
        xrejwstawp_s("0:i06",kwota_s(rejwezp_s("1:i11")));
//8         
        xrejwstawp_s("0:i11",kwota_s(rejwezp_s("1:i17")));
        xrejwstawp_s("0:i10",kwota_s(rejwezp_s("1:i22")));
        xrejwstawp_s("0:i09",kwota_s(rejwezp_s("1:i25")));
//5         
        xrejwstawp_s("0:i16",kwota_s(rejwezp_s("1:i29")));
        xrejwstawp_s("0:i15",kwota_s(rejwezp_s("1:i31")));
        xrejwstawp_s("0:i14",kwota_s(rejwezp_s("1:i34")));
// 0 ZW       
        xrejwstawp_s("0:i13",kwota_s(rejwezp_s("1:i38")));
        xrejwstawp_s("0:i12",kwota_s(rejwezp_s("1:i40")));
// RAZEM
        xrejwstawp_s("0:i17",kwota_s(rejwezp_s("1:i42")));
//        
        () = rejop("0:zapiszrek");
        s = 0;
      }
    }
    
  
  } while (rejop("1:weznastepnyrek"));
}

define wczytaj_inny()
{  
  variable file = dajazmienna_S("PLIK_WEJ");
  variable plik,ro;
  ro = 0;
  if (strin("csv",file) > -1) {
    ro = ustal_jak;
  } 
  if (strin("xls",file) > -1) {
    ro = 1;
    if (jestprogram("xls2csv")) {
      wolajsystems("X-KONWERTUJ-XLS-TO-CSV "+dajazmienna_S("PLIK_WEJ"),0); 
      ustawazmienna_S("PLIK_WEJ",dajazmienna_S("PLIK_WEJ")+".csv");
    } else {
      okalert("Brak programu do konwersji !");
      return;
    }
  } 
 if (not(ro == 0)) {
  plik = dajazmienna_S("PLIK_WEJ");
  () = rejop("1:importpolskielitery","ISO-LATIN2");
  if (ro == 1)() = rejop("1:importustawseparator","\,");
  if (ro == 2) () = rejop("1:importustawseparator","\;");
  () = rejop("1:importujrejestr",plik);
 }
 if (rejop("1:wezpierwszyrek")) {
  wczytaj_dane_zrej;
  () = rejop("0:zmienkluczrej","0");
  if (rejop("0:wezpierwszyrek")) {
    () = rejop("0:usunrek");
    () = rejop("0:wezpierwszyrek");
    xrejwstawp_s("0:i30",dajazmienna_S("D_D1"));
    xrejwstawp_s("0:i31",dajazmienna_S("D_D2"));
    xrejwstawp_s("0:i32",dajazmienna_S("D_D0"));
    xrejwstawp_s("0:i33","2");
    () = rejop("0:zapiszrek");     
  }
 }
}

///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////

define uruchom_modul()
{
//  okalert(gl_data_zliczby("42736"));
  ustawazmienna_S("PLIK_WEJ",global_dajparams(daj_klucz(0)));
  variable czy,file;
 () = rejop("0:otworzrejtemp","TMP_IMP.REJ"); 
 () = rejop("0:zmienkluczrej","2");
 () = rejop("1:otworzrejtemp","TMP_IMP.REJ"); 

  variable l=1;
  ustawazmienna_K("D_POS",0);
  if (l) {
   ustawazmienna_L("PLIK_USUN",0);
   () = exdialogop("idzdodialogu","WYBIERZ-PLIK-IMPORT");   
  }
  if (gl_daj_dpos() == 0) {
      czy = 0;
      if (not(czy)) {
        file = dajazmienna_S("PLIK_WEJ");
        global_piszparams(daj_klucz(0),file);

        () = ustawczekajinfo("Start4","Wczytanie raportu. Prosz|e czeka|c ...");
        if (l) {
          ustawazmienna_S("D_D0","");
          ustawazmienna_S("D_D1","");
          ustawazmienna_S("D_D2","");
// wczytywanie          
          if (strin(".pdf",file) > -1) {
            ustawazmienna_S("D_D3","0");
            wczytaj();
          } else {
            ustawazmienna_S("D_D3","2");
            wczytaj_inny();
          }           
// oczyszczenie z micros wp³at          
          if (rejop("0:wezpierwszyrek")) {
            () = rejop("0:zmienkluczrej","5");
            forever {
              if (rejop("0:znajdzrek","MICROS")) {
                () = rejop("0:usunrek");
              } else { break; }
            () = ustawczekajinfo("Nastepny","Next");
            }
            
            () = rejop("0:zmienkluczrej","0");
            () = rejop("0:wezpierwszyrek");
            xrejwstawp_s("0:i30",dajazmienna_S("D_D1"));
            xrejwstawp_s("0:i31",dajazmienna_S("D_D2"));
            xrejwstawp_s("0:i32",dajazmienna_S("D_D0"));
            xrejwstawp_s("0:i33",dajazmienna_S("D_D3"));
            () = rejop("0:zapiszrek");            
            czy = 1;
           if (not(czy)) () = rejop("0:zobaczdbf");
          }
//          
        }
        () = ustawczekajinfo("Stop","");
        
      }
//////////////////////////////////////////////////////////////////   
  if (czy) {
    if (rejop("0:wezpierwszyrek"))  {
      () = rejop("fe:otworzrej","frejfaktspr.rex");
      () = rejop("ff:otworzrej","frejzapspr.rjr");
// tu dialog pozwalajacy wprowadzic opis wlasny
      ustaw_zS("opis_imp","");
      () = exdialogop("idzdodialogu","OPIS_IMPORTU");
//okalert["1"]
      () = callalg("wstaw_vat_oper");
      () = rejop("ff:zamknijrej");
      () = rejop("fe:zamknijrej");
    }
  }
//////////////////////////////////////////////////////////////////   
  () = rejop("0:zamknijrej");   
  () = rejop("1:zamknijrej");   
  }
}

///////////////////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
define xwczytaj_csv()
{
 () = rejop("0:importpolskielitery","ISO-LATIN2");
 () = rejop("0:importustawseparator","\;");
 () = rejop("0:importujrejestr",dajazmienna_S("PLIK_WEJ"));
}

define rob_plan2()
{
  variable v,s,w,l;
 () = rejop("pl2:otworzrej1","PLANROZL.RJR");
  l = yesalert("Czy|s|c plan ?");
  if (l) () = rejop("pl2:wyczyscrej");
 () = rejop("0:wezpierwszyrek");
  v = 1;
  do {
  if (v == 1) {
  if (not(pustepole("0:i01"))) {
    s = usun_line_2( rejwezp_s("0:i01"));
    w = s;
    s = gl_cut_znak(" ",s);
    s = gl_cut_znak("*",s);
    s = gl_cut_znak("?",s);
    if (not(rejop("pl2:znajdzrek",s))) {
      () = rejop("pl2:dodajrek");
      xrejwstawp_s("pl2:plan_symbol",s);
      xrejwstawp_s("pl2:plan_nazwa",usun_line_2(rejwezp_s("0:i02")));
      xrejwstawp_k("pl2:plan_cechy",0);
      if (strin("*",w) > -1) xrejwstawp_k("pl2:plan_cechy",3);
      if (strin("?",w) > -1) xrejwstawp_k("pl2:plan_cechy",3);
      () = rejop("pl2:zapiszrek");
    }
  
  }
  }
  }while (rejop("0:weznastepnyrek"));
  ()= rejop("pl2:zamknijrej");
}

define uruchom_modul_csv()
{
  ustawazmienna_S("PLIK_WEJ",global_dajparams(daj_klucz(1)));
  variable czy;
 () = rejop("0:otworzrejtemp","TMP_IMP.REJ"); 
 () = rejop("0:zmienkluczrej","1");

  variable l=1;
  ustawazmienna_K("D_POS",0);
  if (l) {
   ustawazmienna_L("PLIK_USUN",0);
   () = exdialogop("idzdodialogu","WYBIERZ-PLIK-IMPORT");   
  }
  if (gl_daj_dpos() == 0) {
        global_piszparams(daj_klucz(1),dajazmienna_S("PLIK_WEJ"));

        () = ustawczekajinfo("Start4","Wczytanie raportu. Prosz|e czeka|c ...");
        if (l) {
          xwczytaj_csv();
          () = rejop("0:zmienkluczrej","0");
          rob_plan2();
          czy = 0;
//          if (not(czy)) () = rejop("0:zobaczdbf");
        }
        }
        () = ustawczekajinfo("Stop","");        
        
  () = rejop("0:zamknijrej");   
}

