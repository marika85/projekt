//dodoanie pola porto do FREJFATTSPR.REX
% VATFAKTOUT.DBF
70,string,20,1		# formularz
71,string,20,1		# data wytworzenia
72,string,30,1		# okres za ktory import dataod-datado
73,string,50,1  # opis wlasny
95,string,,57344,,,A # osoba dodajaca
96,ydate,,,,,A       # data dodania
97,string,,57344,,,C # osoba modyfikujaca
98,ydate,,,,,C       # data modyfikacji
999,log                     # zaznaczanie
74,log             #zle dlugi sprzedaz SZD
215,kwota           #optibelt - porto
//
22,0,,,11     # klucz nr 11: rodzaj vat ( nalezny, naliczony)
70,0,,,11			#formularz
71,0,,,11	# data wytworzenia
72,0,,,11	# okres
71,0,,,12
22,0,,,12
22,0,,,13
7,0,,,13
1,0,,,13

% VATFAKTOUT.DIC
"vatform",70,Estring,"Formularz"					# program zewnetrzny 
"vatdatawytw",71,Estring,"Data wytw."					# data wytworzenia
"vatokr",72,Estring,"Okres"				# okres dataod-datado
"vatopis",73,Estring,"Opis"				# opis
"vatzaznacz",999,Elog,"Zaznacz"			# zaznaczanie
"szd",74,Elog,"SZD"                  # sprzedaz zle dlugi SZD
"porto",215,Ekwota,"Porto"
//
% DANE_DO_DEKLARACJI_vat7.DLG
PRZYCISK_CANCELID = 91
##DEFWINDOW=,,,,ADHP,,,,&&lwhite/blue,"Wyb|or dokument|ow do wydruku danych do VAT7"
##10,0,0,,,,&&black/white,&&blue/lwhite,,,zmienna:rd1,ydate
##11,0,0,,,,&&black/white,&&blue/lwhite,,,zmienna:rd2,ydate
##12,0,0,,"",,&&black/lwhite,&&blue/lwhite,,,zmienna:vatin,,0,12,T
##13,0,0,,"",,&&black/lwhite,&&blue/lwhite,,,zmienna:vatin,,O,12,N
##14,0,0,,"",,&&black/lwhite,&&blue/lwhite,,,zmienna:vatout,,0,14,T
##15,0,0,,"",,&&black/lwhite,&&blue/lwhite,,,zmienna:vatout,,O,14,N
##90,,ADP,,@3,,&&blue/white,&&white/blue
##91,,ADP,,@4,,&&blue/white,&&white/blue
##101,DZ,ADHP,,"Obowi|azek w okresie:"
##102,DZ,ADHP,,"Wariant raportu:"
 #101
                                             #90         #
        #10    #    -    #11    #          

                                          #101<
 #102
                                             #91         #
  #12#<Dane z rejestr|ow Perseus      
   
  #14#<Dane z hurtowni danych do JPK_VAT
                                       
                                          #102<    
% TABLICA-AKCJI-DANE_DO_DEKLARACJI_vat7
"AKCJA-BUTTON90",DANE_VAT7_AKCE
% DANE_VAT7_AKCE.ALG
 if (rd1 = '' or rd2 = '' or not (rd1 > rd2)) goto _ok_data
 OkAlert["Niepoprawna kolejno|s|c dat !!!"]
 exdialogop["idzdopozycji","10"]
 exitalg[0]
 _ok_data:
if (not (rd1 = '' and rd2 = '')) goto _ok_rok
if (YesNAlert["Za ca|ly rok obrotowy ?"]) goto _ok_rok
 exdialogop["idzdopozycji","10"]
 exitalg[0]
 _ok_rok:
 if(vatin or vatout) goto ok_zaznacz
 OkAlert["Prosz|e wybra|c wariant raportu!!!"]
 exdialogop["idzdopozycji","12"]
 exitalg[0]
ok_zaznacz:
exdialogop["koniecwykonywania",""]
exitalg[0]
// -----------------------------------------------//
