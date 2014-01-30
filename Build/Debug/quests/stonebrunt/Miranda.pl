sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("I'm not supposed to talk to strangers but if my parents let you in here I guess it's ok. Do you like [candy]? I would give you some candy to play a game with me but my [dice] are gone now.");
}
if($text=~/what dice?/i){
quest::say("I had my dice in a little bag and lost it outside the walls of the village. I think the kobolds must have found it."); }
}
#END of FILE Zone:stonebrunt  ID:100125 -- Miranda 

