sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("I'm Captain Bosec. and I am the officer in charge down here. It's my job to patrol the prison and try to keep any [goblins] from getting into Highpass."); }
}
sub EVENT_ITEM { 
if($itemcount{13790} == 1){
quest::say("Well done! We could really use the extra help around here.");
quest::givecash("3","3","4","0");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("10102","1");
quest::faction("Not_Found","1");
}
if($itemcount{13790} == 4){
quest::say("Well done! We could really use the extra help around here.");
quest::givecash("1","5","4","0");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("10102","1");
quest::faction("Not_Found","1");
}
if($itemcount{13790} == 2){
quest::say("Well done! We could really use the extra help around here.");
quest::givecash("3","5","1","0");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("10102","1");
quest::faction("Not_Found","1");
}
if($itemcount{13790} == 2){
quest::say("Well done! We could really use the extra help around here.");
quest::givecash("2","4","2","0");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("10102","1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:highkeep  ID:6034 -- Captain_Bosec 

