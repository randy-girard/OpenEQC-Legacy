sub EVENT_SAY { 
if($text=~/what is Payala?/i){
quest::say("Payala has the sweetest nectar in all the lands. You can find them throughout the thicket beneath the blue leafed Payala tree. Try some. I have many Payala goodies for sale. I always say, 'the quickest way to someones heart is a freshly baked Payala tart!''"); }
}
sub EVENT_ITEM { 
if($itemcount{30619} == 4){
quest::say("Oh thank you ever so much! You are truly as sweet as the gift you bring.");
quest::summonitem("30625","7");
quest::faction("Not_Found","1");
}
if($itemcount{30625} == 2 && $itemcount{30619} == 3){
quest::say("Oh thank you ever so much! You are truly as sweet as the gift you bring.");
quest::summonitem("30625","2");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:shadeweaver  ID:165172 -- Saren_Kaja 

