sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail. $name - If you are interested in helping the League of Antonican Bards by delivering some mail. you should talk to Ton Twostring."); }
}
sub EVENT_ITEM { 
if($itemcount{18158} == 1){
quest::givecash("0","0","12","0");
quest::faction("316","1");
quest::faction("322","1");
quest::faction("Not_Found","1");
quest::faction("149","-1");
quest::faction("165","-1"); }
}
#END of FILE Zone:freportn  ID:8102 -- Felisity_Starbright 

