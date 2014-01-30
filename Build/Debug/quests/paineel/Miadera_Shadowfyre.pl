sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Ahhhahahaha! The terror that lays over this city like a blanket tingles my bones with vigor. I seek a fellow apostle of Cazic-Thule to assist me in the [summoning of Terror].");
}
if($text=~/what summoning of terror/i){
quest::say("Ahhhahahaha! The terror that lays over this city like a blanket tingles my bones with vigor. I seek a fellow apostle of Cazic-Thule to assist me in the [summoning of Terror].");
}
if($text=~/i want to assist you in the summoning of terror/i){
quest::say("Ahhhahahaha! The terror that lays over this city like a blanket tingles my bones with vigor. I seek a fellow apostle of Cazic-Thule to assist me in the [summoning of Terror].");
}
if($text=~/i want to assist you in the summoning of fright/i){
quest::say("Ahhhahahaha! The terror that lays over this city like a blanket tingles my bones with vigor. I seek a fellow apostle of Cazic-Thule to assist me in the [summoning of Terror]."); }
}
#END of FILE Zone:paineel  ID:75070 -- Miadera_Shadowfyre 

