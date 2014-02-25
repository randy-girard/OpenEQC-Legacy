sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail. $name - If you are interested in helping the League of Antonican Bards by delivering some mail then you should talk to Idia."); }
}
sub EVENT_ITEM { 
if($itemcount{18163} == 1){
quest::say("More mail - you have done us a noteworthy service!  Please take this gold for your troubles.  If you are interested in more work. just ask Idia.");
quest::givecash("0","0","3","0");
quest::faction("316","1");
quest::faction("322","1");
quest::faction("Not_Found","1");
quest::faction("149","-1");
quest::faction("165","-1"); }
}
#END of FILE Zone:gfaydark  ID:54177 -- Jakum_Webdancer 

