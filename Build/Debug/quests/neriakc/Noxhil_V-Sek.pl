sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings. $name!  We of the Dead are proud to have you among us.  Your lineage is well known.  Still. you must learn to claw your way to the upper echelon.  There are many [menial tasks] to be performed before you can truly be inducted as a member.");
}
if($text=~/what menial tasks/i){
quest::say("You cannot avoid the toil of peons. We have all spent our time in the lower ranks. There are duties such as [collecting beetle eyes].");
}
if($text=~/what collecting beetle eyes/i){
quest::say("Take this chest.  It has been fitted with a mold designed to hold ten beetle eyes.  We require them for further experiments.  Do not return until you fill the chest."); }
}
#END of FILE Zone:neriakc  ID:42042 -- Noxhil_V`Sek 

