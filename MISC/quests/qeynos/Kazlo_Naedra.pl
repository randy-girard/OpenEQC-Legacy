sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail, $name..  I'm Kazlo Naedra of the Order of Three.  We always seem to be running out of [supplies] around here, which is, of course, very distracting to our studies.");
}
if($text=~/what supplies/i){
quest::say("The Order of Three has been monitoring your recent activities, and we are appalled by you and your actions! Now, begone!"); }
}
#END of FILE Zone:qeynos  ID:1063 -- Kazlo_Naedra 

