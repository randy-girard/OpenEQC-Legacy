sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hello there. $name.  Please watch where you are stepping when you're out in the field.  Nothing is more frustrating than having some fine jumjum ruined by our own careless feet.  That reminds me. [Deputy Tagil] still owes us for that jumjum he stomped on the other day!");
}
if($text=~/who is Deputy Tagil/i){
quest::say("Deputy Tagil is a fine young halfling who serves the vale well.  But the other day. chasing that dirty Nillipuss. he trampled some fresh Jumjum.  He promised to make amends but it must have slipped his mind.  Please take this note to him as a friendly reminder."); }
}
sub EVENT_ITEM { 
if($itemcount{13240} == 1){
quest::say("I knew that Deputy Tagil had simply forgotten.  He really is a good young halfling.  Here. take this as a small payment for your time.");
quest::summonitem("13083","1");
quest::givecash("12","0","0","0");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1"); }
}
#END of FILE Zone:rivervale  ID:19057 -- Uner_Gnarltrunk 

