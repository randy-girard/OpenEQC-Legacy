############################################
# ZONE: West Freeport (freportw)
# DATABASE: PEQ-Velios
# LAST EDIT DATE: April 5,2005
# VERSION: 2.0
# DEVELOPER: MWMDRAGON
#
# *** NPC INFORMATION ***
#
# NAME: Captain_Hazran
# ID: 9109
# TYPE: Guild Master Warrior
# RACE: Freeport Guard
# LEVEL: 61
#
# *** ITEMS GIVEN OR TAKEN ***
#
# Deathfist Slashed Belts ID-13916
#
# *** QUESTS INVOLVED IN ***
#
#1 - Deathfist Slashed Belts (Evil)
#
# *** QUESTS AVAILABLE TO ***
#
#1 - All
#
############################################


sub EVENT_SAY
{
 if($text=~/Hail/i)
  {
  quest::say("Hail. $name!  We are the Militia of Freeport.  Our training disciplines have created some of the finest guards ever to walk upon Norrath.  To prove your loyalty and ability your first mission is to be the extermination of [Clan Deathfist].");
  }
  if($text=~/Clan Deathfist/i)
  {
  quest::say("The orcs of the Commonlands call themselves Clan Deathfist.  They have committed many vile acts upon the residents of the Commonlands as well as persons traveling to and from Freeport.  They must be destroyed.  Go forth to slay them.  I shall pay a bounty for every two Deathfist belts.");
  }

  if($text=~/bigger problem/i)
  {
  quest::say("The bigger problem is the Knights of Truth. We have already started our campaign to rid the city of the Knights. The so-called Knights of Truth are not to be trusted.");
  }

}

sub EVENT_ITEM
{
 #do all other handins first, then let it do disciplines
 # Deathfist Slashed Belts ID-13916
 if($itemcount{13916} == 2)
 {
        quest::say("Very fine work $name . With your help, we shall soon rid the commonlands of the orcs. Then we can move on to a [bigger problem].");
	quest::ding();
	quest::givecash("0","0","8","0");
	quest::exp(50);
 	# Freeport Militia Faction
 	quest::faction("105","1");
 	# Steel Warriors Faction
 	quest::faction("311","-1");
 	# Knights of Truth Faction
  	quest::faction("184","-1");
 }
  else
  {
	if($class ne 'Warrior')
	{
	quest::say("You are not a member of my guild. I will not train you!");
	quest::summonitem($item1) if($item1);
	quest::summonitem($item2) if($item2);
	quest::summonitem($item3) if($item3);
	quest::summonitem($item4) if($item4);
	return;
	}
	#assume it is a discipline tome...
	quest::traindisc($item1) if(quest::isdisctome($item1));
	quest::traindisc($item2) if(quest::isdisctome($item2));
	quest::traindisc($item3) if(quest::isdisctome($item3));
	quest::traindisc($item4) if(quest::isdisctome($item4));
  }


}

#END of FILE Zone:freportw  ID:9109 -- Captain_Hazran
