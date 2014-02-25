sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hello there traveler. I have many wares for sale so please take a look at what I have. If you think all my goods are junk and wish to buy from someone else though Ill understand."); }
}
sub EVENT_ITEM { 
if($itemcount{26057} == 1){
quest::say("I see you have brought a book from the Commissioner. Well I'm not much for reading but I will surely try anything that may increase my sales. Anyways I'm sure you arent that interested in how bad my sales are and would like to be on your way so here you go.");
quest::summonitem("26058");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:fungusgrove  ID:157030 -- Thar_Anton 

