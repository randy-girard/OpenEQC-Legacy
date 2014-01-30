sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings. friend.  I am the keeper of the [Boots of Ro].  Please rest here with us in our camp of righteousness.  No harm can come to you while we paladins keep watch.");
}
if($text=~/what boots of ro/i){
quest::say("You and I must be brothers and serve the Lord of Underfoot.  Go to Kaladim and serve her cathedral.  When you think you are ready. then ask Lord Datur if you are an [honored member] of the temple.  If the answer is yes.  then I will trust you."); }
}
#END of FILE Zone:rathemtn  ID:50110 -- Nicholas 

