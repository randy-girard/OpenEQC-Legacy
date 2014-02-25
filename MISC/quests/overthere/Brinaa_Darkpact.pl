sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hello. $name. It's nice to see more able bodies around this part of the outland. We came here in search of the magical powers that are supposed to exist in the ruins and dungeons of this area. We need you to bring back evidence of this power in the form of scrolls. I can't offer much coin in payment. but I do have some rare scrolls I already brought back that may interest you. if you wish to [help in the search.]");
}
if($text=~/i wish to help in the search/i){
quest::say("Excellent! Here is what we are still seeking. The scrolls of Death Pact. Upheaval. Yaulp IV. and Reckoning. If you return one of these to me. I'll release one of my rare scrolls to you."); }
}
#END of FILE Zone:overthere  ID:93103 -- Brinaa_Darkpact 

