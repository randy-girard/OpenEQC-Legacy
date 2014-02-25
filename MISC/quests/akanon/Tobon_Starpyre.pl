################################### 
#Zone: Ak`Anon                    #                                              
#Short Name: akanon               #                                                                  
#Zone ID: 55                      #                                        
###################################                                             
#NPC Name: Tobon_Starpyre         #                             
#NPC ID: 55130                    #
#Quest Status: Complete           #                                      
###################################
sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("It is good to see the young show an interest in the ways of magic. Its circles can be used in tandem with our unique ways of tinkering. Have you [joined the Eldritch Collective] or are you [merely curious]?");
}
if($text=~/I am merely curious/i){
quest::say("Please look around. We have much knowledge within these halls. May you soon find your place among our members. Good day.");
}
if($text=~/I have joined the Eldritch Collective/i){
quest::say("Very good. Would you like to [go on a little mission] or are you busy studying?");
}
if($text=~/I will go on a little mission/i){
quest::say("Fabulous! Here is a list of the observers outside of Ak'Anon. Go and ask each for a [spare telescope lens]. Each should give you one. We have need of them.  I await your return as does your reward, either Fire Bolt or Fingers of Fire.  Meant for a skilled wizard of the eighth trial.");
quest::summonitem("18868"); }
}
sub EVENT_ITEM { 
if($itemcount{18774} == 1){
quest::summonitem(13523);
quest::faction(11204,1);
quest::faction(303,-1);
quest::faction(305,-1);
quest::faction(Not_Found,1);
quest::faction(Not_Found,1); }
}
 

