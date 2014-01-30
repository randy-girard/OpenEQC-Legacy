sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hi there $name. It's nice to meet ye. Many great deals here today if I don't say so myself."); }
}
sub EVENT_ITEM { 
if($itemcount{4757} == 1){
quest::say("Ah Hardam sent you eh. Fair enough then, please let him know I will get to selling these goods as soon as possible and please let him know that the helm will be done soon. All I need is a certain [piece].");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:bazaar  ID:151002 -- Faeroi 

