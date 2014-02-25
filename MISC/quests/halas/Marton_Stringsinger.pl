sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail. $name - Are you [interested] in helping the League of Antonican Bards by delivering some [mail]?");
}
if($text=~/what mail/i){
quest::say("The League of Antonican Bards has a courier system made up of travelers and adventurers.  We pay good gold to anyone who will take messages from bards such as myself to one of our more central offices.  Are you [interested]?");
}
if($text=~/i am interested/i){
quest::say("I have messages that need to go to - well. right now I have one that needs to go to Qeynos.  Will you [deliver] mail to [Qeynos] for me?");
}
if($text=~/i will deliver mail to qeynos/i){
quest::say("Take this letter to Tralyn Marsinger in Qeynos.  You can find him at the bard guild hall.  I am sure he will compensate you for your troubles."); }
}
#END of FILE Zone:halas  ID:29076 -- Marton_Stringsinger 

