################################### 
#Zone: Ak`Anon                    #                                              
#Short Name: akanon               #                                                                  
#Zone ID: 55                      #                                        
###################################                                             
#NPC Name: Rilgor_Plegnog         #                             
#NPC ID: 55121                    #
#Quest Status: Complete           #                                      
###################################
sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail.");
}
if($text=~/What do you know about a mechanical pen?/i){
quest::say("Why do you want one of those contraptions. You will spend more time repairing it then you will writing with it. But if you insist on getting one, you are going to have to do a small favor.");
quest::say("Rilgor Plegnog tugs at your robe and grins evilly. Mighty nice outfit you have there. Sure beats these drab robes us three are wearing. Hmm...my favorite color is purple, in fact a shiny metallic purple would do nicely. How bad did you want that pen?"); }
}
sub EVENT_ITEM { 
if($item1=="18703"){
quest::say("Thanks.");
quest::summonitem("13524");
quest::exp("100");
}
if($item1=="1360"){
quest::say("Very nice!! It is perfect! Here take this pen. Have fun with it.");
quest::summonitem("10600"); }
}


