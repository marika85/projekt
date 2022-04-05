//sed -e :a -e N -e "s/\n/ /" -e ta C:\TwójPlik.txt > C:\TwójNowyPlik.txt
//XML
%% out_txt := plik_path+slash+"po_konv"
%% out_txt3 := ""
//zamien slash na podwojny slash
%% goto zamien1
%% kont1:
%% out_txt1 := plik_path+slash+"!inttemp"
%% in_txt1 := plik_path+slash+plik_name
%% in_txt := ""
//usun znaki CRLF z pliku xml
%% goto zamien3
%% kont3:
%% in_txt1 := out_txt3
//zamien slash na podwojny slash
%% goto zamien
%% kont:
%% par0 := in_txt
%% par1 := out_txt
%% CallPyt["import wolaj_m | wolaj_m.xm_wykonaj()"]
%% if (not DyskOP["JestPlik",out_txt,""]) okalert["Nie ma  pliku po_konw.txt"]
%% dyskop["kopiujplik",out_txt,out_txt1]
%% ExitFrm[0]
%% zamien:
//zamienia w stringu slash na podwojny slash
%% dl := strlen[in_txt1]
%% li := 0
%% in_txt := ""
%% next:
%% znak := strcut[in_txt1,li,1]
%% if (znak = "\") znak := znak+"\"
%% in_txt := in_txt + znak
%% li := li+1
%% if (li < dl) goto next
//%% okalert["in_txt = "+in_txt]
%% goto kont
%% zamien1:
//zamienia w stringu slash na podwojny slash
%% out_txt2 := out_txt
%% dl := strlen[out_txt2]
%% li := 0
%% out_txt := ""
%% next1:
%% znak := strcut[out_txt2,li,1]
%% if (znak = "\") znak := znak+"\"
%% out_txt := out_txt + znak
%% li := li+1
%% if (li < dl) goto next1
//%% okalert["out_txt = "+out_txt]
%% goto kont1
//usun znaki CRLF z pliku xml
%% zamien3:
%% int_txt4 := plik_path+slash+plik_name
%% out_txt4 := plik_path+slash+plik_name+"4"
%% sed := "sed -e :a -e N -e ""s// /"" -e ta "+int_txt4+" > "+out_txt4 
%% WolajSystem[sed,.T.]
%% int_txt3 := out_txt4
%% out_txt3 := plik_path+slash+plik_name+"1"
%% sed := "sed -e :a -e N -e ""s/\n/ /"" -e ta "+int_txt3+" > "+out_txt3 
%% WolajSystem[sed,.T.]
%% goto kont3
