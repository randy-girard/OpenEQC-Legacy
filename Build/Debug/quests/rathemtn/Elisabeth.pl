sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Very good to meet you. $name.  I am the keeper of the [Greaves of Ro].  Please feel free to rest and recuperate here.  We shall see that you are safe from the evils of the Rathe Mountains.");
}
if($text=~/what greaves of ro/i){
quest::say("Go to the countryside of Freeport.  There. you shall seek out any nightfall giants .  They have terrorized the countryside for too long.  They have protection from common weapons.  Rely on magic.  I failed in tracking them down.  You shall succeed and when return any single head to me. you shall be awarded the mold for the greaves."); }
}
#END of FILE Zone:rathemtn  ID:50109 -- Elisabeth 

