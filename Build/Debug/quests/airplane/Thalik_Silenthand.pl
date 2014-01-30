sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings, $name.  Do you believe you are a great rogue?");
}
if($text=~/i am a great rogue/i){
quest::say("I will not take your word for it!  You must prove your greatness to one of my apprentices.  Do you wish to be tested by Rayne or by Kendrick?");
}
if($text=~/i wish to be tested by rayne/i){
quest::say("Rayne it shall be.  Take this book and read it.  When you are finished, hand it back to me and I shall summon the mighty rogue Rayne to test you.");
quest::summonitem("18522");
}
if($text=~/i wish to be tested by kendrick/i){
quest::say("Kendrick it shall be.  Take this book and read it.  When you are finished, hand it back to me and I shall summon the mighty rogue Kendrick to test you.");
quest::summonitem("18523"); }
}
sub EVENT_ITEM { 
if($itemcount{18521} == 1){
quest::say("Farewell.");
}
if($itemcount{18522} == 1){
quest::say("Farewell."); }
}
#END of FILE Zone:airplane  ID:4949 -- Thalik_Silenthand 

