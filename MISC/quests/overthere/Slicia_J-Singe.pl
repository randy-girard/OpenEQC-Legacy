sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Why is it that you have come to this place? If you are coming here to search for [magical scrolls]. just get back on that so-called ship you came here on and forget everything you thought you heard.");
}
if($text=~/what magical scrolls/i){
quest::say("Is your hearing failing you!? Unless you [have something I need]. be gone!");
}
if($text=~/i have something you need/i){
quest::say("I must have the scrolls of Gift of Xev. Bristlebane's Bundle. Quiver of Marr. and the Scars of Sigil. If you don't have one of these. leave my sight!  If you do. I think we can work up a fair trade."); }
}
#END of FILE Zone:overthere  ID:93099 -- Slicia_J`Singe 

