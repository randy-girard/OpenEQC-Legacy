sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings, $name.  Do you believe that you are a great wizard?");
}
if($text=~/i am a great wizard/i){
quest::say("I will not take your word for it!  You must prove your greatness to my apprentices.  Do you wish to be tested by Neasin or by Abec?"); }
}
#END of FILE Zone:airplane  ID:5408 -- Wizard_Schrock 

