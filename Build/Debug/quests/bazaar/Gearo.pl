sub EVENT_SAY { 
if($text=~/I will take the gems/i){
quest::say("Good $name! Here they are, please take them back to that gargantuan barbarian and let him know I want a raise for all this hard work!");
quest::summonitem("4767"); }
}
sub EVENT_ITEM { 
if($itemcount{4766} == 1){
quest::say("Ah you were sent from I see. So whats that tall drink of water up too? He must be busy at the store if he has you delivering his supplies for him. Well enough about all that. If he has trusted you to bring his supplies here I suppose I can give you these gems I picked up for him. Will you [take the gems] to him?");
quest::say("Ah you were sent from Steaon Alarenier, I see. So whats that tall drink of water up too? He must be busy at the store if he has you delivering his supplies for him. Well enough about all that. If he has trusted you to bring his supplies here I suppose I can give you these gems I picked up for him. Will you [take the gems] to him?");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:bazaar  ID:151001 -- Gearo 

