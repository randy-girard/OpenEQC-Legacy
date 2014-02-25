sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("I'm not in any mood for conversation. My favorite hat was torn right from my head by a gigantic bat the other night and I am quite upset.");
}
if($text=~/what other tasks?/i){
quest::say("I will sew you your own personal dreadful cap if you bring me the necessary components. I will need the pelt of a feared beast. some gold thread. and an imbued amber.");
}
if($text=~/what hat/i){
quest::say("It is a marvelous cap sewn from the finest textiles and imbued with the divine power of our lord of fear. Cazic Thule!"); }
}
sub EVENT_ITEM { 
if($itemcount{1528} == 1){
quest::summonitem("1530");
quest::faction("Not_Found","-1");
quest::faction("Not_Found","-1");
quest::faction("302","1");
quest::faction("Not_Found","-1");
quest::faction("Not_Found","-1"); }
}
#END of FILE Zone:paineel  ID:75009 -- Azzar_Habbib 

