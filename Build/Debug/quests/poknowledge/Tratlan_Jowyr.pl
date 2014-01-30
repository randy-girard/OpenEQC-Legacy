sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("looks deeply into the pool in front of him. 'Well darn it! I still can't see anything in this blasted [pool]. can you Wicas?'");
}
if($text=~/what pool?/i){
quest::say("glances up at you like he just noticed your presence. 'This pool.  There is supposed to be strong [magic] in it.'");
}
if($text=~/what magic?/i){
quest::say("Scrying magic.  These pools can supposedly glance into all of the knowledge past. present. and future."); }
}
#END of FILE Zone:poknowledge  ID:202061 -- Tratlan_Jowyr 

