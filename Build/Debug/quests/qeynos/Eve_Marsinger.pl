sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail, $name - Are you [interested] in helping the League of Antonican Bards by delivering some [mail]?");
}
if($text=~/i am interested/i){
quest::say("I have messages that need to go to - well, right now I have one that needs to go to Highpass.  Will you [deliver] mail to [Highpass] for me?");
}
if($text=~/i want to deliver to highpass/i){
quest::say("Take this pouch to Lislia Goldtune in Highpass.  You can find her at the entrance to HighKeep.  I am sure she will compensate you for your troubles.");
}
if($text=~/what mail/i){
quest::say("The League of Antonican Bards has a courier system made up of travelers, adventurers and [agents].  We pay good gold to anyone who will take messages from bards such as myself to one of our more distant offices.  Are you [interested]?"); }
}
#END of FILE Zone:qeynos  ID:1139 -- Eve_Marsinger 

