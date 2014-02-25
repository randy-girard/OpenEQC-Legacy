sub EVENT_SAY { 
if ($text=~/Hail/i){quest::say("Hello $name . welcome to the Kunark translocation area. Do you wish to [journey to Kunark]?"); }
if ($text=~/journey to Kunark/i){quest::say("Very well.");
quest::castspell($userid,2709); }
}
#END of FILE Zone:nexus  ID:152004 -- Kunark_Scion 

