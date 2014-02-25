################################### 
#Zone: Ak`Anon                    #                                              
#Short Name: akanon               #                                                                  
#Zone ID: 55                      #                                        
###################################                                             
#NPC Name: Drigaz_Grumblegrowl    #                             
#NPC ID: 55157                    #
#Quest Status: Complete           #                                      
###################################
sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Grrreetings, $name. would you like to share a roasted rat steak or perhaps a tall glass of gnomish spirits? Have no fear of my appearance. My bark is meaner than my bite! Grraw haw haw!"); }
}


