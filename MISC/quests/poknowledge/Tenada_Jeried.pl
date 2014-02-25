sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("I am afraid I have little that I can talk about right now.  If you like you may speak to my [instructor] he can probably tell you about our work.");
}
if($text=~/who is your instructor?/i){
quest::say("My instructor is Sage Balic; you will be able to find him upstairs.  Ask him about his research. I'm sure he would love to tell you about his work."); }
}
#END of FILE Zone:poknowledge  ID:202046 -- Tenada_Jeried 

