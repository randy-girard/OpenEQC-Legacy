sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings friend. Welcome to my place of private contemplation. I relax here and leaf through my old studies. admiring at creations from the past made by races we thought would never amount to anything.");
}
if($text=~/tell me about your research./i){
quest::say("My research?  Oh. I imagine Tenada sent you to me.  I'd love to tell you about my studies. if you have time to listen. [Continue]");
}
if($text=~/continue/i){
quest::say("I have come to Knowledge to fine-tune my abilities in spell craft.  To date I've been able to create some minor incantations. but have had little success in creating any magic that was truly revolutionary.  I am actually in a bit of a race with the other Sages who are my contemporaries.  They too are looking to make a major breakthrough . . . Come to think of it. I could probably find quite a few [uses for their research]. should you manage to come by any of it. [Continue]");
quest::say("Sorry. I digress.  Where was I?  Oh yes! In the past I. as well as the other Sages. have had little success; however from the volumes of information found here. each of us found a new outlook on the creation of magic.  I found that most of the magical discoveries came from existing magical components. mostly runes and words of power.  Should you come by any of these components please use this box to check to see if they have the proper magical configuration. the extractor will be able to remove what it needs if you find a valid combination. right now I believe the box will only function with a single word and rune of approximately the same power.");
quest::summonitem("17176");
}
if($text=~/uses for their research?/i){
quest::say("Well it couldn't hurt. now could it?  If you manage to 'acquire' any of their research feel free to show it to my assistants; Xelrin's research to Tenada and Gunyth's research to Winon downstairs."); }
}
#END of FILE Zone:poknowledge  ID:202050 -- Sage_Balic 

