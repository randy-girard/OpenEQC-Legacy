sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings. $name.  I am sorry but I can't concentrate on my post and talk to you at the same time.  Especially when I should be out searching for [Lucie]..  Please excuse me.");
}
if($text=~/lucie/i){
quest::say("Lucie is my only daughter.  Her mother was killed by gnolls a little over a year ago.  Now Lucie is missing.  Ton Firepride said he saw her playing in the south pond.  I have told her a million times to stay out of the aqueducts..  She never listens..  Now I spend every free moment searching for my little girl..  If only I could find some clue to her fate..  Well. I need to get back to work.  Fare well. $name."); }
}
#END of FILE Zone:qeynos2  ID:2071 -- Guard_Elron 

