sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail. citizen!  This is no place for you.  Make sure you keep it that way.  We do not need any more [hollow men].");
}
if($text=~/what hollow men/i){
quest::say("There is only one sentence in Erudin. death!!  And death by purging is the most common. The insides of the criminal are literally pulled out chunk by chunk through the mouth.  Then the hollow man is set adrift to float the seas of Erud's Crossing. his body cleansed of all anarchy."); }
}
#END of FILE Zone:erudnint  ID:24020 -- Warden_Lius 

