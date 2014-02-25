sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("You dare speak to Master Treskar!!  You be [sent by Hukulk] or you be hurtin'!! Me have no time to waste with ugly one like you!!");
}
if($text=~/i was sent by hukulk/i){
quest::say("Ha!!  Hukulk accept puny troll now?!!  Ha!!  You join us and you join fight.  Nightkeep enemy is $name enemy!!  You help smash [other weak shadowknights].  Them weak.  We true power!!  You bash good and maybe you do [secret mission] for Treskar.");
}
if($text=~/what secret mission/i){
quest::say("Me talk to you 'bout dat when you do more to help Nightkeep!!  Kill all Greenbloods!!  Kill all froggies!!"); }
}
#END of FILE Zone:grobb  ID:40013 -- Treskar 

