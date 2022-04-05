% DIALOG-VAT.DLG
##DEFWINDOW= ,,,,ADHS,,&&white/lblue,,&&lwhite/blue,"Dane dodatkowe "
##17,0,P,,"1. art.86 ust.8 pkt1 ustawy",,,,,,zmienna:p1,,0,17,T
##18,0,P,,"",,,,,,zmienna:p1,,O,17,N
##10,0,P,,"2. art.119 ustawy",,,,,,zmienna:p2,,0,10,T
##11,0,P,,"",,,,,,zmienna:p2,,O,10,N
##12,0,P,,"3. art.120 ust.4 i 5 ustawy",,,,,,zmienna:p3,,0,12,T
##13,0,P,,"",,,,,,zmienna:p3,,O,12,N
##14,0,P,,"4. art.122 ustawy",,,,,,zmienna:p4,,0,14,T
##15,0,P,,"",,,,,,zmienna:p4,,O,14,N
##19,0,P,,"5. art.136 ustawy",,,,,,zmienna:p5,,0,19,T
##20,0,P,,"",,,,,,zmienna:p5,,O,19,N
##30,0,P,,"tak",,,,,,zmienna:str10,,0,30,"T"
##31,0,P,,"",,,,,,zmienna:str10,,O,30,"N"
##32,0,P,,"tak",,,,,,zmienna:str11,,0,32,"T"
##33,0,P,,"",,,,,,zmienna:str11,,O,32,"N"
##35,0,P,,"tak",,,,,,zmienna:kw3,,0,35,1
##36,0,P,,"",,,,,,zmienna:kw3,,O,35,0
##22,0,P,,"z|lo|zenie deklaracji",,,,,,zmienna:dokumentacja,,0,22,N
##21,0,P,,"korekta deklaracji",,,,,,zmienna:dokumentacja,,O,22,T
##37,0,P,,"dane z rejestr|ow Perseus",,,,,,zmienna:p6,,0,37,T
##38,0,P,,"",,,,,,zmienna:p6,,O,37,N
##39,0,P,,"dane z hurtowni danych",,,,,,zmienna:str9,,0,39,T
##40,0,P,,"",,,,,,zmienna:str9,,O,39,N
##23,0,P,,"tak",,,,,,zmienna:zwrot,,0,23,T
##24,0,P,,"nie",,,,,,zmienna:zwrot,,O,23,N
##25,0,P,,"tak",,,,,,zmienna:termin,,0,25,T
##26,0,P,,"nie",,,,,,zmienna:termin,,O,25,N
##27,0,P,,,,,,,,zmienna:str7,string:2
##28,0,P,,,,,,,,zmienna:str8,string:2
##29,0,P,,,,,,,,zmienna:telefon
##34,0,P,,,,,,,,zmienna:email
##16,,AD,,@3,,&&black/lwhite,&&lwhite/blue
##4,,AD,,@4,,&&black/lwhite,&&lwhite/blue

Cel z|lo|zenia formularza:   Wariant raportu:
 #22                   #   #37                         #
 #21                   #   #39                         #

Podatnik wykonywa|l czynno|sci, o kt|orych mowa w:
 #17                                                   #
 #10                                                   #
 #12                                                   # 
 #14                                                   # 
 #19                                                   # 

Podatnik korzysta z obni|zenia zobowi|azania
podatkowego (art.108d):                            #30 #

Podatnik wnioskuje o zwrot podatku na rachunek VAT:#32 #
Podatnik wystawi|l faktur|e (art.106e ust.1 pkt 18a):#35 #

Do deklaracji do|l|aczono:
 wniosek o zwrot podatku                   #23 #   #24 #
 wniosek o przyspieszenie terminu zwrotu   #25 #   #26 #
 
Dane osoby sporz|adzaj|acej deklaracj|e:
Nazwisko : #27                                         #
Imi|e:     #28                 #  tel.: #29            #
E-mail:    #34                                         #

 #16           #    #4             #

//
% DIALOG-VATDEKL.DLG
##DEFWINDOW= ,,,,ADHS,,&&white/lblue,,&&lwhite/blue,"Dane dodatkowe "
##37,0,P,,"dane z rejestr|ow Perseus",,,,,,zmienna:p6,,0,37,T
##38,0,P,,"",,,,,,zmienna:p6,,O,37,N
##39,0,P,,"dane z hurtowni danych dla deklaracji VAT",,,,,,zmienna:str9,,0,39,T
##40,0,P,,"",,,,,,zmienna:str9,,O,39,N
##10,0,P,,"2. art.119 ustawy",,,,,,zmienna:p2,,0,10,T
##11,0,P,,"",,,,,,zmienna:p2,,O,10,N
##12,0,P,,"3. art.120 ust.4 i 5 ustawy",,,,,,zmienna:p3,,0,12,T
##13,0,P,,"",,,,,,zmienna:p3,,O,12,N
##14,0,P,,"4. art.122 ustawy",,,,,,zmienna:p4,,0,14,T
##15,0,P,,"",,,,,,zmienna:p4,,O,14,N
##19,0,P,,"5. art.136 ustawy",,,,,,zmienna:p5,,0,19,T
##20,0,P,,"",,,,,,zmienna:p5,,O,19,N
##30,0,P,,"tak",,,,,,zmienna:str10,,0,30,"T"
##31,0,P,,"",,,,,,zmienna:str10,,O,30,"N"
##17,0,P,,"tak",,,,,,zmienna:p1,,0,17,T
##18,0,P,,"",,,,,,zmienna:p1,,O,17,N
##27,0,P,,,,,,,,zmienna:str7,string:2
##28,0,P,,,,,,,,zmienna:str8,string:2
##29,0,P,,,,,,,,zmienna:telefon
##34,0,P,,,,,,,,zmienna:email
##16,,AD,,@3,,&&black/lwhite,&&lwhite/blue
##4,,AD,,@4,,&&black/lwhite,&&lwhite/blue

Wariant raportu:
 #37                                    #
 #39                                    #

Podatnik wykonywa|l czynno|sci, o kt|orych mowa w:
 #10                                                   #
 #12                                                   # 
 #14                                                   # 
 #19                                                   # 

Podatnik korzysta z obni|zenia zobowi|azania
podatkowego (art.108d):                            #30 #

Podatnik wnioskuje o zaliczenie zwrotu podatku
na poczet przysz|lych zobowi|aza|n podatkowych:       #17 #
 
Dane osoby sporz|adzaj|acej deklaracj|e:
Nazwisko : #27                                         #
Imi|e:     #28                 #  tel.: #29            #
E-mail:    #34                                         #

 #16           #    #4             #

//
