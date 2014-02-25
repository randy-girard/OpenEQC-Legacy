sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings!  I am the holder of the secret of the [Breastplate of Ro].  You may rest here.  You are quite safe within this camp of paladins.");
}
if($text=~/what breastplate of ro/i){
quest::say("You need to prove your loyalty to my temple.  Go to Felwithe and seek out the Clerics of Tunare.  Prove to them your faith.  Then ask the leader of this church if you are a [honored member]."); }
}
#END of FILE Zone:rathemtn  ID:50113 -- Abigail 

