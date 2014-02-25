################################### 
#Zone: Ak`Anon                    #                                              
#Short Name: akanon               #                                                                  
#Zone ID: 55                      #                                        
###################################                                             
#NPC Name: Lyra_Lyrestringer      #                             
#NPC ID: 55155                    #                                      
###################################
sub EVENT_SAY {
if($text=~/Hail/i){
quest::say("Hail $name.  Are you [interested] in helping the League of Antonican Bards by delivering some [mail]?");
}
if($text=~/I am interested in delivering some mail/i){
quest::say("I have messages that need to go to well. right now I have one that needs to go to Kelethin.  Will you [deliver] mail to [Kelethin] for me?");
}
if($text=~/I will deliver mail to kelethin/i){
quest::say("Take this letter to Jakum Webdancer in Kelethin.  You can find him at the bard guild hall.  I am sure he will compensate you for your troubles."); }
}


