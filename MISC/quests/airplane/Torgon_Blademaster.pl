sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings, $name. Are you a true warrior?");
}
if($text=~/i am a true warrior/i){
quest::say("Then you shall be tested as one.  Choose.  Do you wish to be tested by Falorn or Ogog?");
}
if($text=~/i wish to be tested by falorn/i){
quest::say("So be it, warrior.  Take this book and read it.  When you are finished, hand it back to me and I shall summon the mighty warrior Falorn to test you.");
quest::summonitem("18520");
}
if($text=~/i wish to be tested by ogog/i){
quest::say("Ogog?  You are indeed brave for choosing that brute.  Take this book telling the tale of Ogog and read it.  When you are finished, hand it back to me.");
quest::summonitem("18521"); }
}
sub EVENT_ITEM { 
if($itemcount{18520} == 1){
quest::say("Farewell."); }
}
#END of FILE Zone:airplane  ID:5039 -- Torgon_Blademaster 

