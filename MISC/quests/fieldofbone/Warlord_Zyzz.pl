sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("There is little time for talk. There are plenty of [tiny invaders].  Do your part and exterminate as many as you can.  All of Cabilis shall look favorably upon you in the long run."); }
}
sub EVENT_ITEM { 
if($itemcount{12650} == 4){
quest::say("The bounty is awarded to one who can return four scorpion pincers.");
quest::say("The bounty is awarded to one who can return four scorpion pincers.");
quest::say("Magnificent!!  The more pincers I get the fewer scorpions there are.  Here. Take the bounty.");
quest::givecash("0","1","0","0");
quest::faction("11501","1");
quest::faction("228","1");
quest::faction("Not_Found","1");
quest::faction("11502","1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:fieldofbone  ID:78089 -- Warlord_Zyzz 

