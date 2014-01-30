sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Askr looks up at you and when he does. you take note of the scraggly beard on his weather-worn face; the scent of ale permeates your senses and pushes you to look away slightly. In an apparent drunken stupor. Askr begins to speak with surprising clarity. 'Here to wash the windows and clean the flooring. are you? No? Well. you can't be much help then. And the likes of you obviously wouldn't be able to get rid of the massive problem we're having. Bah. says I. You can help me no more than any of these other vagrants. Leave me alone to my ale and my misery.'");
}
if($text=~/what problem/i){
quest::say("Askr points drunkenly towards the exit of the cave. 'Have you not seen the foul denizens of destruction outside? Hrmph! Going everywhere they please. pillaging. plundering. . . I'm lucky to have survived this long. Bah. it doesn't matter. there's nothing that anyone can do to stop them. and that is why I'm still stuck here with my *hic* potions.'"); }
}
#END of FILE Zone:postorms  ID:209046 -- Askr_the_Lost 

