sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hello. $name. This place is quite a formidable outpost. but it lacks the comforts of home. Once I have finished collecting some of my [missing scrolls]. I'll be able to leave this place and all its hidden dangers.");
}
if($text=~/what missing scrolls/i){
quest::say("Travelers have been bringing back numerous scrolls from the depths of darkness in the Outlands. They contain arcane knowledge specific to our classes. Only four are left that I seek. Keep a wary out for Theft of Thoughts. Color Slant. Cripple. and Dementia. Return any one of these to me and your reward shall be a scroll that can be found nowhere else."); }
}
#END of FILE Zone:overthere  ID:93098 -- Siladdarae_N`Riese 

