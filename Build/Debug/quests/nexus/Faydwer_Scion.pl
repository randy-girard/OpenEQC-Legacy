sub EVENT_SAY { 
if ($text=~/Hail/i){quest::say("Greetings $name . I am Jucian Featherhigh. the guardian of this teleport. It will take you back to my home in the Faydark. Do you wish to [journey to Faydwer]?"); }
if ($text=~/journey to Faydwer/i){quest::say("Very well.");
quest::castspell($userid,2706); }
}
#END of FILE Zone:nexus  ID:152002 -- Faydwer_Scion 

