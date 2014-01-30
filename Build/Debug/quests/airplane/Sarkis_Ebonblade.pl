sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings. $name.  Have you come here to test your dark powers of skill and spell casting?");
}
if($text=~/i have come here to test my dark powers of skill/i){
quest::say("You will be tested by either Gragrot or Tynicon.  Choose one!");
}
if($text=~/i wish to be tested by gragrot/i){
quest::say("Gragrot it is!  Take this book and read it.  When you are finished. hand it back to me and I shall summon Gragrot to test you.");
quest::summonitem("18524"); }
}
sub EVENT_ITEM { 
if($itemcount{18523} == 1){
quest::say("Farewell."); }
}
#END of FILE Zone:airplane  ID:4268 -- Sarkis_Ebonblade 

