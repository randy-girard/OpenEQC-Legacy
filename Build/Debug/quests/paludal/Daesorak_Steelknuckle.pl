sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Lo there stranger what ya doin in ere? You know how dangerous it can be down ere! I be lucky I got some of da finest miners werkin for me. I sure do hope we get those supplies soon.");
}
if($text=~/I can return a letter to your wife/i){
quest::say("I thank you $name. Without your help I doubt we would have been able to finish this project on time! Please take this to my wife Aliane back home. You can surely count on me telling the Patriarch of how much help you have been when I return home. I wish you good journeys as for me its back to work I go!");
quest::summonitem("4756"); }
}
#END of FILE Zone:paludal  ID:156061 -- Daesorak_Steelknuckle 

