sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Good evening. Are not the stars beautiful? Somewhere out there. I imagine there is another world and another person staring right back at me. If you have business with me. please save it for the morning in the palace."); }
}
sub EVENT_ITEM { 
if($itemcount{13118} == 1){
quest::summonitem("13122","1");
quest::faction("Not_Found","1");
quest::faction("103","1");
quest::faction("302","-1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:erudnext  ID:98002 -- Nolusia_Finharn 

