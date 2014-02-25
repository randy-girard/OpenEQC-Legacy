############################################
# ZONE: West Freeport (freportw)
# DATABASE: PEQ-Velios
# LAST EDIT DATE: April 30,2005
# VERSION: 1.0
# DEVELOPER: MWMDRAGON
#
# *** NPC INFORMATION ***
#
# NAME: Armorer_Dellin
# ID: 9007
# TYPE: Warrior
# RACE: Freeport Guards
# LEVEL: 40
#
# *** ITEMS GIVEN OR TAKEN ***
#
# Militia Armory Token ID-12273
# Reserve Militia Tunic ID-3097
#
# *** QUESTS INVOLVED IN ***
#
#1 - Freport Militia Tunic
#
# *** QUESTS AVAILABLE TO ***
#
#1 - Warrior
#
############################################

sub EVENT_SAY
{
if($text=~/Hail/i)
 {
 quest::say("Hail! If you be A new reserve member, show me your militia armory token. If you are not yet initiated, I suggest you head to the toll gate in the Commonlands and speak with Guard Valon.");
 }
}

sub EVENT_ITEM
{
   # Militia Armory Token ID-12273
   if($itemcount{12273} == 1)
   {
   quest::say("Welcome to the Freeport Militia. As A reserve member we require you to wear this tunic and fight when, who and wherever Sir Lucan commands, No questions asked! There is No turning back! Remember to keep clear of North Freeport. You have made A wise decision. Hail Sir Lucan! ");

   quest::ding();
   quest::exp(50);
   # Reserve Militia Tunic ID-3097
   quest::summonitem("3097");

   # Freeport Militia Faction
   quest::faction("105","1");
   # Coalition of TradeFolk III Faction
   quest::faction("369","1");
   # Knights of Truth Faction
   quest::faction("184","-1");
   # Priests of Marr Faction
   quest::faction("258","-1");
   }
}

#END of FILE Zone:freportw  ID:9007 -- Armorer_Dellin