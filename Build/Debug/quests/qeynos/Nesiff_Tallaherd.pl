sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings, $name! Nesiff Tallaherd, owner and operator of Nesiff's Wooden Weapons, at your service. I am the finest woodworker in all of Qeynos. Even the Qeynos Guard uses my arrows, thanks to [Guard Weleth].");
}
if($text=~/who is guard weleth/i){
quest::say("Guard Weleth is like a son to me.  He is responsible for purchasing supplies for the Qeynos Guard. He buys arrows from me. He is usually stationed near the North Gate."); }
}
#END of FILE Zone:qeynos  ID:1106 -- Nesiff_Tallaherd 

