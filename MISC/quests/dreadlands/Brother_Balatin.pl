################################### 
#Zone: The Dreadlands             #                                              
#Short Name: dreadlands           #                                                                  
#Zone ID: 86                      #                                        
###################################                                             
#NPC Name: Brother_Balatin        #                             
#NPC ID: Multiple                 #
#Quest Status: Complete           #                                      
###################################
sub EVENT_SAY { 
if($text=~/Hail/i){
quest::emote("Brother Balatin turns toward you. A transparent human face materializes upon the skull. As he speaks the smells of rotted rat corpses rushes into your face. You must fight the urge to vomit. What discipline do you [follow]?");
}
if($text=~/follow/i){
quest::say("Then we are one. The rebirth of our circle shall start with you. I have waited decades for your arrival. You should seek the living brothers within Tunaria. When you have earned your garb then you will be [ready for the true drape].");
}
if($text=~/ready for the true drape/i){
quest::say("Seek the broken flute of our master. Taken from us by the Iksar twins of Vistrei. To me they shall come and to me your robe and to you shall come the dawning of the new brotherhood.");
quest::faction(50,-3);
quest::faction(317,7); }
}

sub EVENT_ITEM { 
 if ($itemcount{12256} == 1 && $itemcount{12979} == 1 && $itemcount{12980} == 1 ){  
  quest::summonitem(12970); 
  quest::exp(200);
 }
 else {
  #this looks made up, but I dont know:
  quest::say("May you have the correct items or lost forever will be all");  
 }
}

