sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings, adventurer!  A mighty warrior such as yourself deserves only the finest in armor and we here at Firepride's were trained by the finest dwarven smiths.  We shall be branching out and crafting [other items] soon, also."); }
}
sub EVENT_ITEM { 
if($itemcount{13129} == 1){
quest::say("Ha! This is great. Here's your money, murderer! Hope the guards don't find you. Now get lost! Take the tunic. Maybe Garuc will reward you for such a vile deed. I sure don't want to keep it around here.");
quest::summonitem("13134");
quest::givecash("4","3","0","0");
quest::faction("10102","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1");
quest::faction("10108","1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:qeynos  ID:1127 -- Ton_Firepride 

