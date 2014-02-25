sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings young one, have a seat by the fire.  You will notice the dance being preformed.  This is much more than just a dance though.  It is a ritual that we preform to [purge the evil spirits] that are plaguing the thicket.");
}
if($text=~/I will purge the evil spirits/i){
quest::say("Lately there has been a surge in the number of Lodi Kai threatening our trade routes.  This ritual of is preformed around a fire that burns from their [remains].  Setting their remains in the fire will free their tie with this world and shall ward off their numbers."); }
}
#END of FILE Zone:shadeweaver  ID:165115 -- Hymnist_Omiyad 

