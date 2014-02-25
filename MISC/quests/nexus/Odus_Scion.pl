sub EVENT_SAY { 
if ($text=~/Hail/i){quest::say("Greetings $name . I am Kendal Groetan. I am here to assist and watch over those who wish to return to the continent of Odus. Do you wish to [journey to Odus]?"); }
if ($text=~/journey to Odus/i){quest::say("Very well.");
quest::castspell($userid,2707); }
}
#END of FILE Zone:nexus  ID:152003 -- Odus_Scion 

