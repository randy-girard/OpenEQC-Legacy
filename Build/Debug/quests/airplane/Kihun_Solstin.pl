sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("So, you have made it this far.  I am Kihun Solstin, the Master of Wind.  I control the unfettered Element like none other.  As you should have learned. Air is the most potent of Elements.  It fuels Fire. Water is comprised of it, and Earth cannot restrain it.  Knowing this, do you seek the Element of Wind?");
}
if($text=~/what element of wind/i){
quest::say("I will test you then,  In this wondrous plane of Air. find the Crown of Elemental Mastery. and search the world below for an Elemental Binder. and a cloak fashioned from the feathers of a Pegusus,  Return them to me and I shall give you the Element of Wind,");
}
if($text=~/i seek the element of wind/i){
quest::say("I will test you then,  In this wondrous plane of Air, find the Crown of Elemental Mastery, and search the world below for an Elemental Binder, and a cloak fashioned from the feathers of a Pegusus.  Return them to me and I shall give you the Element of Wind."); }
}
#END of FILE Zone:airplane  ID:6480 -- Kihun_Solstin 

