sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("And a fine day to you. too. $name! What is it that brings you here? Fortune? Adventure? In either case. it will be more fun than the duty I have. I am to acquire what scrolls I can for the High Council of Erudin. And you're also in luck. as I seek the services of a mighty adventurer like yourself. Do you wish to [aid me in my duty]?");
}
if($text=~/i want to aid you in your duty/i){
quest::say("Then you will do this for me. Venture beyond this outpost to the most distant lands and the darkest dungeons. Within them. the creatures with the greatest power will have scrolls. The residents here will be able to give you general locations of the most dangerous places. I wish to obtain the scrolls of Atol's Spectral Shackles. Tears of Druzzil. Inferno of Al'Kabor. and lastly. Pillar of Frost. Make haste. as the High Council cannot be kept waiting! Fear not. I shall [reward] you well.");
}
if($text=~/what reward?/i){
quest::say("I am not empty-handed. I have already located some of the most rare scrolls. I'll part with one of my four for what you return to me. Fare thee well!");
}
if($text=~/i wish to aid you in your duty/i){
quest::say("Then you will do this for me. Venture beyond this outpost to the most distant lands and the darkest dungeons. Within them. the creatures with the greatest power will have scrolls. The residents here will be able to give you general locations of the most dangerous places. I wish to obtain the scrolls of Atol's Spectral Shackles. Tears of Druzzil. Inferno of Al'Kabor. and lastly. Pillar of Frost. Make haste. as the High Council cannot be kept waiting! Fear not. I shall [reward] you well."); }
}
#END of FILE Zone:firiona  ID:84166 -- Barnal_Flamehand 

