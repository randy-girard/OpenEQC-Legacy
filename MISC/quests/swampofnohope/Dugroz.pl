sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Fffrroaaak!!  Go away!  I don't want to [work for them] anymore!  Go find another slave!"); }
}
sub EVENT_ITEM { 
if($itemcount{7236} == 1 && $itemcount{7256} == 1){
quest::say("My thanks to you. $name. take this key. I know not what door it opens.  Now if I can just find that necklace of power that I took from my master's lair!");
quest::summonitem("20600"); }
}
#END of FILE Zone:swampofnohope  ID:83149 -- Dugroz 

