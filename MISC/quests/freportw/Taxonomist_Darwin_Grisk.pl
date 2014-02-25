############################################
# ZONE: West Freeport (freportw)
# DATABASE: PEQ-Velious
# LAST EDIT DATE: May 2,2005
# VERSION: 1.0
# DEVELOPER: MWMDRAGON
#
# *** NPC INFORMATION ***
#
# NAME: Taxonomist_Darwin_Grisk
# ID: 9055
# TYPE: Magician
# RACE: Froglok
# LEVEL: 65
#
# *** ITEMS GIVEN OR TAKEN ***
#
# Warded Satchel ID-17590
#
# *** QUESTS INVOLVED IN ***
#
#1 - Luggald Rumors
#
# *** QUESTS AVAILABLE TO ***
#
#1 - All
#
# *** NPC NOTES ***
#
#
#
############################################

sub EVENT_SAY
{
if($text=~/Hail/i)
 {
 quest::say("Have you come to [help]? If not, be gone! I will not have my time wasted.");
 }

 if($text=~/Help/i)
 {
 quest::say("Recently rumors have surfaced that a new race, the Luggalds, walks the land. I suspect that some evil force is involved in their appearance. Are you [willing] to risk unknown dangers to help me find out?");
 }

 if($text=~/willing/i)
 {
 quest::say("Good. I have not been able to confirm the existence of these beings. I will need definite proof if the rest of the members of the Academy are to believe me. Take this Warded Satchel and retrieve three examples of Luggald Flesh.");
 # Warded Satchel ID-17590
 quest::summonitem("17590");
 }

}

#END of FILE Zone:freportw  ID:9055 -- Taxonomist_Darwin_Grisk