sub EVENT_SAY { 
if($text=~/what boots/i){
quest::say("If you want the Boots of Concealment go gather for me a meteor jewel. a mark of silence. and an engraved fire emerald statuette.");
}
if($text=~/what bracer/i){
quest::say("If you want the Bracer of Concealment go gather for me a sky jewel. a mark of cunning. and an engraved black diamond statuette.");
}
if($text=~/what tunic/i){
quest::say("If you want the Tunic of Concealment go gather for me a sun jewel. a mark of stealth. an engraved diamond statuette. and a tethered leash.");
}
if($text=~/what greaves/i){
quest::say("If you want the Greaves of Concealment go gather for me a star jewel. a mark of burglary. an engraved ruby statuette. and a small brass figurine.");
}
if($text=~/what deals/i){
quest::say("Ah $nameyou fancy yerself to be a rogue.  Well I can cut ya a deal on some armor if you be wantin' some.");
}
if($text=~/what coif/i){
quest::say("If you want the Coif of Concealment go gather for me an astral jewel. a mark of thievery. an engraved sapphire statuette. and a brass linked chain.");
}
if($text=~/what mantle/i){
quest::say("If you want the Mantle of Concealment go gather for me a cloud jewel. a mark of forgery. and an engraved star sapphire statuette."); }
}
#END of FILE Zone:twilight  ID:170144 -- Bolli_Hillfoot 

