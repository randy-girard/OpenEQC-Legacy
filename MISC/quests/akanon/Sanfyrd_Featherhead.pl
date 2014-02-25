################################### 
#Zone: Ak`Anon                    #                                              
#Short Name: akanon               #                                                                  
#Zone ID: 55                      #                                        
###################################                                             
#NPC Name: Sanfyrd_Featherhead    #                             
#NPC ID: 55090                    #
#Quest Status: Incomplete         #                                      
###################################
sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings! I am the operator of this scrapyard. If you have any scrap metal. I would be glad to purchase it from you in loads of four.  The Gemchoppers no longer allow me to accept blackbox fragments and micro servos."); }
}
 
sub EVENT_ITEM {
if($itemcount{13198} == 4){
quest::say("Excellent work. You were born to be a warrior. Here is a little bonus for the good job.");
quest::faction(115,3);
quest::faction(176,3);
quest::faction(210,3);
quest::faction(71,-3);
quest::faction(39,-3); 
quest::exp(65);
quest::givecash(0,0,7,0); }
}


