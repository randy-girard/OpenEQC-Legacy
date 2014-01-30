sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail and well met. $name!  Have you come to study. or can you [perform a task] for me this day?");
}
if($text=~/i can perform a task/i){
quest::say("That is the spirit.  There are many black wolves wandering Faydark these days.  One of my brethren needs a black wolf skin as a component for his magic.  Bring me a black wolf skin. and I shall reward you for your efforts."); }
}
#END of FILE Zone:felwitheb  ID:62019 -- Tarker_Blazetoss 

