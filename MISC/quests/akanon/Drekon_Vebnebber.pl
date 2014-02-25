################################### 
#Zone: Ak`Anon                    #                                              
#Short Name: akanon               #                                                                  
#Zone ID: 55                      #                                        
###################################                                             
#NPC Name: Drekon_Vebnebber       #                             
#NPC ID: 55116                    #
#Quest Status: Complete           #                                      
###################################
sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hello, $name.  It is grand to make your acquaintance.  I am the in-house merchant-slash-file clerk.  I have goods to offer and I handle all the Gemchopper paperwork. Thrilling, don't you think?"); }
}
  

