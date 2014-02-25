sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Pleasure to meet you $name. I am Lady Salinsa Deifdosan of House Marr. I have spent many hours on the battlefield in service of our glorious god however these days I spend my time training new [recruits].");
}
if($text=~/what recruits/i){
quest::say("Well you see sense I am such a well seasoned adventurer my knowledge is very helpful to the young members of our house. That is why I have developed a system of hunting and gathering assignments that reward the new recruit with a set of armor that they work very hard to craft themselves. Are you a [young cleric of House Marr]? If so I will be happy to offer my assignments to you.");
}
if($text=~/i am a young cleric of house marr/i){
quest::say("Great! Let me first begin by explaining how you will be creating your own armor. You will use this magical kit I have presented you with to gather numerous [recipe components]. Your magical kit will be used to gather specific materials that will form together in certain numbers and quantities to create an armor material. You must then take the material you have fashioned to a forge along with armor molds that I will supply you with to create your armor."); }
}
#END of FILE Zone:freportn  ID:8005 -- Salinsa_Delfdosan 

