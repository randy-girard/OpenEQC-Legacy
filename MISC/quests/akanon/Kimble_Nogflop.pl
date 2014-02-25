################################### 
#Zone: Ak`Anon                    #                                              
#Short Name: akanon               #                                                                  
#Zone ID: 55                      #                                        
###################################                                             
#NPC Name: Kimble_Nogflop         #                             
#NPC ID: 55137                    #
#Quest Status: Complete           #                                      
###################################
sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings!  I am the keeper of this zoo.  I advise you to stay on the upper tiers to observe the animals."); }
}
sub EVENT_ITEM {
if($item1=="13945"){
quest::say("Ah, thank you. Here.. take this Regurgitonic. Give it to who may need it and they will surely cough up whatever may be inside of them with no harm to them whatsoever.");  
quest::summonitem(12140);
quest::faction(115,3);
quest::faction(210,3);
quest::faction(176,3);
quest::faction(71,-3);
quest::exp(100); }
}



