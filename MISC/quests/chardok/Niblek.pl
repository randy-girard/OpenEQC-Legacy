sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("I Niblek. You want someting from Niblek?  Niblek find treasures in walls.  Niblek like to trade treasures."); }
}
sub EVENT_ITEM { 
if($itemcount{6026} == 1 && $itemcount{5038} == 1){
quest::say("I's wants more shiny tings dan dat. yes I does.");
quest::say("I much happy now!!  I want shiny tings for long time!  I give you ugly broken necklace now!");
quest::summonitem("19964");
}
if($itemcount{10036} == 1 && $itemcount{10035} == 1){
quest::say("I's wants more shiny tings dan dat. yes I does.");
quest::say("I much happy now!!  I want shiny tings for long time!  I give you ugly broken necklace now!");
quest::summonitem("19964"); }
}
#END of FILE Zone:chardok  ID:103125 -- Niblek 

