################################### 
#Zone: Burning Woods              #                                              
#Short Name: burningwood          #                                                                  
#Zone ID: 87                      #                                        
###################################                                             
#NPC Name: a_sarnak_imitator      #                             
#NPC ID: 87065                    #
#Quest Status: Complete           #                                      
###################################
sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Much time has passed since the creation of the Staff of the Serpent. The power of discord is seeping into our fair world, and only the most powerful of us shall stand to force it back. The time has come for a new tool, and a new breed of enchanter. Are you [prepared] to meet this challenge?");
}
if($text=~/prepared/i){
quest::say("I have recently received this ancient tome; it contains knowledge that may prove invaluable to the construction of a new staff. Unfortunately, time has had its way with it. I need you to find the missing pages so we can get to work. There should be ten, unless they have been destroyed by time and decay.");;
quest::summonitem(57918); }
}


