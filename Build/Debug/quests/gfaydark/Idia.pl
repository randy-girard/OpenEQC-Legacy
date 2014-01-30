sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail. $name - Are you [interested] in helping the League of Antonican Bards by delivering some [mail]?");
}
if($text=~/am interested/i){
quest::say("I have messages that need to go to - well. right now I have one that needs to go to Freeport.  Will you [deliver] mail to [Freeport] for me?");
}
if($text=~/What mail/i){
quest::say("The League of Antonican Bards has a courier system made up of travelers. adventurers and [agents].  We pay good gold to anyone who will take messages from bards such as myself to one of our more distant offices.  Are you [interested]?");
}
if($text=~/who agents/i){
quest::say("Lyra Lyrestringer. Tacar Tissleplay. Kilam Oresinger and Siltria Marwind all report to Jakum Webdancer.");
}
if($text=~/deliver freeport/i){
quest::say("Take this letter to Felicity Starbright. You can find her at the bard guild hall. I'm sure she will compensate you for your trouble.");
}
if($text=~/I will deliver mail to freeport/i){
quest::say("Take this letter to Felicity Starbright. You can find her at the bard guild hall. I'm sure she will compensate you for your trouble.");
quest::say("Take this letter to Felisity Starbright. You can find her at the bard guild hall. I'm sure she will compensate you for your trouble.");
}
if($text=~/what agents/i){
quest::say("Lyra Lyrestringer. Tacar Tissleplay. Kilam Oresinger and Siltria Marwind all report to Jakum Webdancer."); }
}
#END of FILE Zone:gfaydark  ID:54176 -- Idia 

