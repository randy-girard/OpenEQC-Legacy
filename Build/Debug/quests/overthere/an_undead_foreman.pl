sub EVENT_SAY { 
if($text=~/i am a new worker/i){
quest::say("Hmmph!!  Too much flesh!!  If you want to work. you must first fill my eye sockets with my favorite gem.  This shall be your payment for your Sledgehammer."); }
}
sub EVENT_ITEM { 
if($itemcount{10023} == 1){
quest::summonitem("12863"); }
}
#END of FILE Zone:overthere  ID:93104 -- an_undead_foreman 

