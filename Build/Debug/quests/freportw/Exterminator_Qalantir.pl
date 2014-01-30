############################################
# ZONE: West Freeport (freportw)
# DATABASE: PEQ-Velios
# LAST EDIT DATE: April 5,2005
# VERSION: 2.0
# DEVELOPER: MWMDRAGON
#
# *** NPC INFORMATION ***
#
# NAME: Exterminator_Qalantir
# ID: 9128
# TYPE: Warrior
# RACE: Human
# LEVEL: 30
#
# *** ITEMS GIVEN OR TAKEN ***
#
# Rat Whiskers ID-13071
#
# *** QUESTS INVOLVED IN ***
#
#1 - Exterminate the Vermin (West Freeport)
#
# *** QUESTS AVAILABLE TO ***
#
#1 - All
#
############################################

sub EVENT_SAY
{
  if ($text=~/hail/i)
  {
  quest::say("Pleased to meet you $name, if you are a newcomer to Freeport then you can clearly see we are having quite the rat problem. If you are interested the militia has granted me some coin to reward those that bring me four rat whiskers.")
  }

}
sub EVENT_ITEM
{
 # Rat Whiskers ID-13071
 if ($itemcount{13071} == 4)
 {
 quest::say("This is good work! I know this isnt much but it is all I can offer you. Thanks for your help!");
 quest::ding();
 quest::exp(25);
 quest::givecash ("1","1","1","0");
 }
}

#END of FILE Zone:freportw  ID:9128 -- Exterminator_Qalantir