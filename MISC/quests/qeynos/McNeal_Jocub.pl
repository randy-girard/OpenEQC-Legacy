sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Good ta see ya! Now start showin' these poodlewalkers how a real fish drinks!");
}
if($text=~/what are you running low on/i){
quest::say("This is going to sound crazy, but my main supplier of [Blackburrow Stout] is one of the brewers themselves. I have run too low on the fine brew and need someone to [pick up my shipment].");
}
if($text=~/what blackburrow stout/i){
quest::say("Keep it down!! So you've heard of Blackburrow Stout? We sell it here in Fish's Backroom. If the Qeynos Guards knew, well.. it wouldn't be such a good thing. The stout is illegal, It's made by the gnolls. It is one of the finest brews you will ever taste. If you want any.. slide me a [moonstone].");
}
if($text=~/what moonstone/i){
quest::say("Looking for moonstones, are we? The only way I know of getting a moonstone is to hunt gnolls for Captain Tillin of the Qeynos Guards."); }
}
sub EVENT_ITEM { 
if($itemcount{10070} == 1){
quest::say("Here you go then. Don't go tellin' no Guards where that came from,  I would hate to rid myself of a good paying customer.");
quest::summonitem("13107","5");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("311","1");
}
if($itemcount{10070} == 4){
quest::say("Here you go then. Don't go tellin' no Guards where that came from, I would hate to rid myself of a good paying customer.");
quest::summonitem("13107","13");
quest::faction("311","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
}
if($itemcount{10070} == 3){
quest::say("Here you go then. Don't go tellin' no Guards where that came from, I would hate to rid myself of a good paying customer.");
quest::summonitem("13107","17");
quest::faction("311","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:qeynos  ID:1107 -- McNeal_Jocub 

