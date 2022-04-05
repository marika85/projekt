%% e := ""
%% e1 := ""
%% e2 := ""
%% mm2 := ""
%% if(not(opisxx=="przegladarka")) goto wspolne2
%% e := "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
%% e1 := "<td colspan=5 align=center valign=top style='font-size:9pt;'>"
%% e2 := "<td colspan=2 align=center valign=top style='font-size:9pt;'>"
%% mm2 := "</table> <table  border=0 cellpadding=0 cellspacing=0 width=1045>"
%% wspolne2:
#mm2#S@T#e1#S        Sumy sk|ladek na ubezpieczenia spo|leczne:#c#S#wl1#S#e#S#c#S#wl2#S#c#S@@
@T#e2#S  pokrywa ubezpieczony   #c#S    #wl1#S#e#S#c#S        #e2#Spokrywa pracodawca   #c#S    #wl1#S#e#S#c#S         #wl1#S Koszt uzyskania przychod|ow:#c#S#wr1#S #ssumx28#R9:2#c#S@@        
@T#wl1#S Emerytalne:#c#S    #wr1#S #ssumx22#R12:2#c#S  #wl1#S#e#S#c#S    #wl1#S Emerytalne:#c#S    #wr1#S #ssumx25#R12:2 #c#S     #wl1#S#e#S#c#S         #wl1#S Fundusz pracy:        #c#S#wr1#S#roundn[sumfpp,2]#R15:2#c#S@@
@T#wl1#S Rentowe:#c#S       #wr1#S #ssumx23#R12:2#c#S  #wl1#S#e#S#c#S    #wl1#S Rentowe:#c#S       #wr1#S #ssumx26#R12:2 #c#S     #wl1#S#e#S#c#S         #wl1#S F.G.|S.P.:            #c#S#wr1#S #roundn[sumfgp,2]#R15:2#c#S@@
@T#wl1#S Chorobowe:#c#S     #wr1#S #ssumx24#R12:2#c#S  #wl1#S#e#S#c#S    #wl1#S Wypadkowe:#c#S     #wr1#S #ssumx27#R12:2 #c#S     #wl1#S#e#S#c#S         #wl1#S F.E.P.:               #c#S#wr1#S#roundn[sumfep,2]#R15:2#c#S@@
@T#wl5#S#c#S@@
@T#wl5#S#c#S@@
//
//@T #wl2#SSporz|adzi|l:AAA#c#S  #wl1#S#e#S#c#S  #wl1#S#weznazwisko[os_ksieg]#L44#c#S   #ws1#S    ............. #c#S  #wl1#S#e#S#c#S   #ws1#S  ........................#c#S@S@@@@                                                 
//@T#wl3#S#c#S                            #wl1#S#e#S#c#S                                          #ws1#S data #c#S            #wl1#S#e#S@@         #ws1#Spodpis #c#S@S@@@@                                                          
//@T#wl5#S#c#S@@
//
//@T #wl2#SSprawdzono pod wzgl|edem:#c#S  #wl1#S#e#S#c#S  #wl1#S merytorycznym #c#S                   #ws1#S    ............. #c#S  #wl1#S#e#S#c#S   #ws1#S  ........................#c#S@S@@@@                                                 
//@T#wl3#S#c#S                            #wl1#S#e#S#c#S                                          #ws1#S data #c#S            #wl1#S#e#S#c#S         #ws1#Spodpis #c#S@S@@@@                                                          
//@T#wl5#S#c#S@@
//
//@T#wl2#S#c#SSporz|adzi|l i sprawdzi|l pod wzgl|edem:#wl1#S#e#S#c#S #wl1#S formalnym i rachunkowym #c#S         #ws1#S    .............#c#S    #wl1#S#e#S#c#S   #ws1#S ........................ #c#S@S@@@@
//@T#wl3#S#c#S                            #wl1#S#e#S#c#S                                          #ws1#S data #c#S            #wl1#S#e#S#c#S       #ws1#S  podpis  #c#S@S@@@@                                                         
//@T#wl5#S#c#S@@
@T@L@@@@
@T@L@@@@
@T@L@@@@
@T#wl2#SSporz|adzi|l i sprawdzi|l pod wzgl|edem formalnym i rachunkowym:#c#S#wl1#S#e#S#c#S#wl1#S#c#S                                        #ws1#S  ............. #c#S  #wl1#S#e#S#c#S  #ws1#S  ......................... #c#S      #ws1#S#c#S@@
@T#wl3#S#c#S                          #wl1#S#e#S#c#S                                             #ws1#Sdata #c#S            #wl1#S#e#S#c#S         #ws1#Spodpis#c#S                              #ws1#S#c#S@@
@T@L@@@@
@T@L@@@@
@T#wl2#S Zatwierdzono do wyp|laty:#c#S#wl1#S#e#S#c#S#wl1#S#c#S                                        #ws1#S  ............. #c#S  #wl1#S#e#S#c#S  #ws1#S  ......................... #c#S      #ws1#S#c#S@@
@T#wl3#S#c#S                          #wl1#S#e#S#c#S                                             #ws1#Sdata #c#S            #wl1#S#e#S#c#S         #ws1#Spodpis#c#S                              #ws1#S#c#S@@

@T#wl5#S#c#S@@
@T@L@@@@
@T@L@@@@
%% defzmiennaL["omin_angaz",.N.]
%% if(przegladanie or omin_angaz) goto koniec_stopki
@T#wl5#S Legenda:@J@@
* - Wynagrodzenie anga|z  przed pomniejszeniem  z tytu|lu nieobecno|sci#c#S@@
%% koniec_stopki: