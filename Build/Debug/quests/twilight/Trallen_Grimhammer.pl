sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings and well met $name. Don't listen to ol' Latrag over there he'll never stop brewin' the best durn ale to be found.");
}
if($text=~/what boots/i){
quest::say("For the boots yer gonna have to get me a sun jewel. a mark of destiny. and a fleshy vine.");
}
if($text=~/what armor/i){
quest::say("Latrag is goin' on 'bout his armor again isn't he. Well friend be ye a paladin?");
}
if($text=~/i am a paladin/i){
quest::say("Of course ya are $name. why would have ya asked me about the armor if ye wasn't eh. I have the boots. mask. cloak. gauntlets. gorget. girdle. and a sword. Which do ye want?");
}
if($text=~/what mask/i){
quest::say("For the mask yer gonna have to get me a moon jewel. a mark of blessings. and some crystallized dew.");
}
if($text=~/what cloak/i){
quest::say("For the cloak yer gonna have to get me a star jewel. a mark of the steadfast. a lexicon of the sun. and some glade dew.");
}
if($text=~/what gauntlets/i){
quest::say("For the gauntlets yer gonna have to get me a cloud jewel. a mark of honor. and some naturally formed quartz.");
}
if($text=~/what gorget/i){
quest::say("For the gorget yer gonna have to get me a sky jewel. a mark of gallantry. and a lunar marked stone.");
}
if($text=~/what girdle/i){
quest::say("For the girdle yer gonna have to get me a meteor jewel. a mark of heart. a lexicon of the moon. and a dread leech eye.");
}
if($text=~/what sword/i){
quest::say("For the sword yer gonna have to get me an astral jewel. a mark of the noble. a hardened clay sculpture. and a runic ear plug."); }
}
#END of FILE Zone:twilight  ID:170108 -- Trallen_Grimhammer 

