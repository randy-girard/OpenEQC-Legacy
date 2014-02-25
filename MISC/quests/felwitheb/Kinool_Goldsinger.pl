sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail and welcome.  I am sure you have much to do, but could I ask a [favor] of you?");
}
if($text=~/What favor/i){
quest::say("Oh, um, on second thought, never mind.  I should really just do it myself.  Thank you anyway."); }
}
sub EVENT_ITEM { 
if($itemcount{18778} == 1){
quest::say("Greetings and welcome aboard!  My name's Kinool. Master Enchanter of the Keepers of the Art.  Here is your guild tunic. Make us proud, young pupil!");
quest::summonitem("13593");
quest::faction("10502","1");
quest::faction("105","1");
quest::faction("Not_Found","1");
quest::faction("305","-1"); }
}
#END of FILE Zone:felwitheb  ID:62020 -- Kinool_Goldsinger 

