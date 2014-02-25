sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Ah. outsiders. I have heard word of your travel here.  Perhaps you wish to become a friend of the kin?");
}
if($text=~/i wish to become a friend of the kin/i){
quest::say("Good. then you would not mind assisting us with a matter of grave importance.  We have received news of an alarming sort.  There walks amongst us a spy of the storm giants. who feeds our every move to them and their accursed strategist.  For the life of us. we cannot deduce whom the traitor is. however we have received word from Wenglawks of Kael. an associate of ours. that he has information concerning this.  For a measly sum of 100 platinum. he has offered to give us the information to rid ourselves of this traitor.  If you are indeed friend to the kin. take this note to Wenglawks and rid us of this traitor.");
quest::summonitem("29068"); }
}
#END of FILE Zone:skyshrine  ID:114093 -- Sentry_Kale 

