sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Why hello. I'm in charge of the fishing operations here on Jern's Isle.  Fish are my area of expertise.'");
}
if($text=~/what fish/i){
quest::say("We have fish come in here all the time. sometimes we catch an oddity now and again.");
}
if($text=~/what oddity/i){
quest::say("Once we pulled up this ancient chest filled with this dark plate armor.");
}
if($text=~/what dark plate armor/i){
quest::say("Looked the like kind of armor a dark knight would wear. if ya want it I'm sure we could arrange a trade of some sort.");
}
if($text=~/what breastplate/i){
quest::say("For the darkened knight's breastplate fetch me a cloud jewel. a mark of fear. a delicate glass sculpture. and a painted ornament.");
}
if($text=~/what vambracers/i){
quest::say("For the darkened knight's vambraces fetch me a sky jewel. a mark of terror. a runed ornamental mace. and an ancient tablet.");
}
if($text=~/what greaves/i){
quest::say("For the darkened knight's greaves fetch me a meteor jewel. a mark of dread. the King's Tome. and a polished ivory idol.");
}
if($text=~/what pauldrons/i){
quest::say("For the darkened knight's pauldrons fetch me an astral jewel. a mark of hatred. and an ancient petrified tulip.");
}
if($text=~/what bracer/i){
quest::say("For the darkened knight's bracer fetch me a sun jewel. a mark of intimidation. and a small rough marble figurine.");
}
if($text=~/what boots/i){
quest::say("For the darkened knight's boots fetch me a moon jewel. a mark of horror. and a fanged talisman."); }
}
#END of FILE Zone:twilight  ID:170137 -- Brodlan_Remdo 

