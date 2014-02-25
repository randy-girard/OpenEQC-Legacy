sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings, $name!  Are you a [citizen of Qeynos] or are you a [traveler of sorts]?");
}
if($text=~/i am a citizen of qeynos/i){
quest::say("Then you are aware of how few ships come and go to the continent of Erudin. The port authority is even planning to tax all passage aboard the ships. You will be happy to know that a few other engineers and I are designing a [titanic bridge].");
}
if($text=~/what titanic bridge/i){
quest::say("My grand plan has always been to erect a bridge which would span the distance between Qeynos and Odus. It would bypass the city of Erudin. Antonius Bayle would take full control of the bridge and its adjacent territories. This has had some opposition in Erudin, but for the most part, they just believe it is impossible to build such a bridge."); }
}
#END of FILE Zone:qeynos  ID:1104 -- Hansl_Bigroon 

