sub EVENT_ITEM { 
if($itemcount{1415} == 1 && $itemcount{1425} == 1){
quest::say("Well I'll be derned. An outlander that can make a good Bearmeat 'n Bread! Thank ye. $name.");
quest::summonitem("1419");
quest::faction("336","-1");
quest::faction("330","1");
quest::faction("Not_Found","1");
quest::faction("331","-1");
}
if($itemcount{1415} == 1){
quest::say("Well I'll be derned. An outlander that can make a good Bearmeat 'n Bread! Thank ye. $name.");
quest::summonitem("1419");
quest::faction("336","-1");
quest::faction("330","1");
quest::faction("Not_Found","1");
quest::faction("331","-1");
}
if($itemcount{1415} == 2){
quest::say("Well I'll be derned. An outlander that can make a good Bearmeat 'n Bread! Thank ye. $name.");
quest::summonitem("1419");
quest::faction("336","-1");
quest::faction("330","1");
quest::faction("Not_Found","1");
quest::faction("331","-1"); }
}
#END of FILE Zone:thurgadina  ID:115030 -- Guard_Leif 

