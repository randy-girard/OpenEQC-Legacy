################################### 
#Zone: Burning Woods              #                                              
#Short Name: burningwood          #                                                                  
#Zone ID: 87                      #                                        
###################################                                             
#NPC Name: Slixin_Klex            #                             
#NPC ID: 87047                    #
#Quest Status: Complete           #                                      
###################################
sub EVENT_SAY { 
if($text=~/what burning of the land/i){
quest::say("Fiery death from the sky. Rock and fire burning our lands. Death and destruction splintering our tribe. Once strong we were but the fiery rocks from the sky crushed our proud cities and weakened our [tribe].");
}
if($text=~/tribe/i){
quest::say("Obulus was our people. The hills and trees were our lands. We tamed the dark and wilds and bent the forests to our needs. But all is gone, all our people, all our works, even the [medallion] that was the symbol of our power.");
}
if($text=~/medallion/i){
quest::say("Medallion of the Obulus. Symbol of our proud peoples. Broken into [pieces] long lost to the dark forests now. I know where they are now but I am no longer flesh. If I were I would find them to bring them back together.");
}
if($text=~/pieces/i){
quest::say("Hhhhh. Three pieces there are. One sits in the hands of Sselot though he knows its purpose not. Another sits upon an iksar ghost in Trakanons. The last is held by a long rotted iksar skeleton in the Dreadlands. Bring them all here and I may be able to unite them again. Perhaps this will even free me from my torment&ldots; or not."); }
}


