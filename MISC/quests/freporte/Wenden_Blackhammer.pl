############################################
# ZONE: East Freeport (freporte)
# DATABASE: PEQ-Velious
# LAST EDIT DATE: May 1,2005
# VERSION: 1.0
# BASE QUEST BY: PEQ Team
# DEVELOPER: MWMDRAGON
#
# *** NPC INFORMATION ***
#
# NAME: Wenden_Blackhammer
# ID: 10116
# TYPE: Warrior
# RACE: Dwarf
# LEVEL: 50
#
# *** ITEMS GIVEN OR TAKEN ***
#
# Unjeweled Dragon Head Hilt ID-20668
# Diamond ID-10037
# Black Sapphire ID-10036
# Jacinth ID-10053
# Jeweled Dragon Head Hilt ID-20671
# Severely Damaged Dragon Head Hilt ID- 20669
# Rejesiam Ore ID-20666
# Ball of Everliving Golem ID-20677
# Finely Crafted Dragon Head Hilt ID-20672
#
# *** QUESTS INVOLVED IN ***
#
#1 - Repair of the Unjeweled Dragon Head Hilt
#2 - Repair of the Severely Damaged Dragon Head Hilt
#
# *** QUESTS AVAILABLE TO ***
#
#1 - Warrior
#2 - Warrior
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
quest::say("What do you need?  Be specific. I'm busy right now!");
}

if($text=~/what hilt/i)
{
quest::say("What is it you need to be knowing about hilts?  Do you need one made or [repaired]?");
}

if($text=~/repaired/i)
{
quest::say("Well. tell me the name of the hilt you need repaired and I'll see what I can do.");
}

if($text=~/unjeweled dragon head hilt/i)
{
quest::say("That just looks like it's missing some gems.  I'm not quite sure what type of gems either but I can tell you two things about them just by the settings.  They were all different. and they all were very. very expensive.  If I try to put the wrong kind of gems in these slots. it may be ruined forever.  I'll do whatever you want though. Just bring me the three gems you want me to try and put in the hilt.");
}

if($text=~/Severely Damaged Dragon Head Hilt/i)
{
quest::say("Unfotunatly this hilt can only be reforged with the propper components. You might have a rough time finding the correct ore types needed for this hilt. I'll do whatever you want though. Just bring me the two components you want me to try and reforge this hilt with and I'll do it.");
}

}

sub EVENT_ITEM
{
   # Unjeweled Dragon Head Hilt ID-20668 - Diamond ID-10037 - Black Sapphire ID-10036 - Jacinth ID-10053
   if($itemcount{20668} == 1 && $itemcount{10037} == 1 && $itemcount{10036} == 1 && $itemcount{10053} == 1)
   {
   quest::emote("begins to fiddle with the hilt, gently pressing the gems into place. It seems to take forever as you watch in silence. Wenden slowly places the last gem in place and gently bends the settings to hold the gems before he hands it back to you. 'That's a very impressive looking hilt there. The material it is made out of seems strangely familiar,' Wenden says as he turns back to his forge and his other work.");
   quest::exp("1000");
   quest::ding();
   # Jeweled Dragon Head Hilt ID-20671
   quest::summonitem("20671");

   }

   # Severely Damaged Dragon Head Hilt ID- 20669 - Rejesiam Ore ID-20666 - Ball of Everliving Golem ID-20677
   elsif($itemcount{20669} == 1 && $itemcount{20666} == 1 && $itemcount{20677} == 1)
   {
   quest::emote("works his magic with his forge as you have never seen done quite like this. The bending and shaping to repair the hilt is only something a master of his art could even fathom to try. Once the hilt has been cooled in a near by bucket of ice cold water, he checks it for balance and resonance before handing it to you.");
   quest::exp("1000");
   quest::ding();
   # Finely Crafted Dragon Head Hilt ID-20672
   quest::summonitem("20672");

   }
}

#END of FILE Zone:freporte  ID:10116 -- Wenden_Blackhammer


