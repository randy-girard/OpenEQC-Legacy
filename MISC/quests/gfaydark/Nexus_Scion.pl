sub EVENT_SAY { 
if ($text=~/Hail/i){quest::say("Hello $name .  I do not have much time to chat. I must concentrate on the portal that is due to open soon. If you wish to [journey to Luclin], tell me so."); }
if ($text=~/journey to Luclin/i){quest::say("Very well.");
quest::castspell($userid,2935); }
}
#END of FILE Zone:gfaydark  ID:13060 -- Nexus_Scion 

