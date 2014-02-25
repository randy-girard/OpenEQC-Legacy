sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Rodcet Nife welcomes you into our noble camp.  I am the keeper of the [Vambraces of Ro].");
}
if($text=~/what vambracers of ro/i){
quest::say("Foolish person!! The word is out amongst the followers of the Prime Healer not to trust you."); }
}
#END of FILE Zone:rathemtn  ID:50114 -- Marianna 

