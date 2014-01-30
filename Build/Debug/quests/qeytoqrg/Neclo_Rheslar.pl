sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Ah..   Hello. citizen..  Watch your step. there have been many vicious beasts about today."); }
}
sub EVENT_ITEM { 
if($itemcount{18823} == 1){
quest::say("Ah..  Hello friend..  So. I see Daenor sent you..  Uh huh. ok..  Here's something that will be very useful for you.  Practice this well. friend..  It will help protect you in this harsh world.");
quest::summonitem("15288","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1");
quest::faction("Not_Found","-1"); }
}
#END of FILE Zone:qeytoqrg  ID:4106 -- Neclo_Rheslar 

