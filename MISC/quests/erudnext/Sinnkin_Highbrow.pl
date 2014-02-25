sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Why. hello there fellow scholar!  Don't you just love books?  I am quite a bookworm myself.  I could read forever!  I am currently working my way through the 'T's."); }
}
sub EVENT_ITEM { 
if($itemcount{13121} == 1){
quest::summonitem("13118","1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:erudnext  ID:98036 -- Sinnkin_Highbrow 

