sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings outsider. I trust you have [peaceful intentions] while visiting our village?");
}
if($text=~/I have peaceful intentions/i){
quest::say("That is good to hear. Those filthy kobolds have caused enough trouble. We do not need more enemies.' Jali turns around and glances at another Kejekan. This one seems somewhat ill. Her fur is coming out in patches and strange sores cover her body. 'That is my wife. Yuio. She has come down with a sickness. no doubt caused by those accursed kobolds.' Anger wracks Jali's face as he speaks. 'I would ask you for [help] but you are a stranger and owe us nothing. Of course if you did assist me. I would be forever grateful.'");
}
if($text=~/I will help/i){
quest::say("Oh thank you. You are most kind. I fear that there is not much time left for my dear Yuio. Please speak to [Khonza Ayssla]. She is most wise and perhaps can find some cure for this affliction.");
}
if($text=~/who is Khonza Ayssla?/i){
quest::say("Khonza Ayssla is the village's High Shaman. She teaches the ancient ways of Okanjo and is most wise. If she cannot assist you I do not know who can. I would go myself but I am too worried to leave my dear wife behind. When you find Khonza. tell her that Jali sent you. Please hurry. friend!"); }
}
#END of FILE Zone:stonebrunt  ID:100113 -- Jali_Kaliio 

