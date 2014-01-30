sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Welcome to the Twilight Sea!  This is the docking entrance to Katta Castellum. $name. tell me do you know any songs?'");
}
if($text=~/i know some songs/i){
quest::say("Ah you do. you don't happen to be a bard do you?");
}
if($text=~/i am a bard/i){
quest::say("Great. I have just what you need. Would you like to earn some armor?");
}
if($text=~/i would like to earn some armor/i){
quest::say("I thought so I have a helm. breastplate. vambraces. greaves. pauldrons. bracer. and boots. For the rest speak to Brolan over there about armor.");
}
if($text=~/what breastplate/i){
quest::say("For the breastplate you must bring me an astral jewel. a mark of music. a diamond studded medal. and a glorious flower.");
}
if($text=~/what vambracers/i){
quest::say("For the vambraces you must bring me a sun jewel. a mark of entertainment. a sapphire studded medal. and velvet sleeves.");
}
if($text=~/what greaves/i){
quest::say("For the greaves you must bring me a moon jewel. a mark of the drum. an emerald studded medal. and memory crystal.");
}
if($text=~/what pauldrons/i){
quest::say("For the pauldrons you must bring me a star jewel. a mark of the mandolin. and an opal studded medal.");
}
if($text=~/what bracer/i){
quest::say("For the bracer you must bring me a cloud jewel. a mark of song. and a pearl studded medal.");
}
if($text=~/what boots/i){
quest::say("For the boots you must bring me a sky jewel. a mark of poetry. and a star ruby studded medal."); }
}
#END of FILE Zone:twilight  ID:170134 -- Herald_Shelia_Gransith 

