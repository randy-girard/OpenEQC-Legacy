sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings, young one. Are you a [child of the trees]?");
}
if($text=~/what child of the trees/i){
quest::say("Then you are welcome in my presence. I shall call forth some loyal children if you but speak the name. Will or Fenalla will serve you well."); }
}
#END of FILE Zone:airplane  ID:4825 -- Strandar_Pinemist 

