############################################
# ZONE: West Freeport (freportw)
# DATABASE: PEQ-Velios
# DATE: April 5,2005
# VERSION: 2.0
# DEVELOPER: MWMDRAGON
#
# *** NPC INFORMATION ***
#
# NAME: Cain_Darkmoore
# ID: 9092
# TYPE: Guild Master Warrior
# RACE: Human
# LEVEL: 61
#
# *** ITEMS GIVEN OR TAKEN ***
#
# A Tattered Note ID-18742
# Dirty Training Tunic ID-13572
# Deathfist Slashed Belts ID-13916
#
# *** QUESTS INVOLVED IN ***
#
#1 - Warrior Newbie Note
#2 - Deathfist Slashed Belts (Good)
#
# *** QUESTS AVAILABLE TO ***
#
#1 - Warrior
#2 - All
#
############################################

sub EVENT_SAY
{ 
  if($text=~/Hail/i)
  {
  quest::say("Hail. $name!  We are the Steel Warriors of Freeport.  Our training disciplines have created some of the finest warriors ever to walk upon Norrath.  Perhaps the bards shall sing songs of you one day.  Let your first mission be the extermination of [Clan Deathfist].");
  }
  if($text=~/Clan Deathfist/i)
  {
  quest::say("The orcs of the Commonlands call themselves Clan Deathfist.  They have committed many vile acts upon the residents of the Commonlands as well as persons traveling to and from Freeport.  They must be destroyed.  Go forth to slay them.  I shall pay a bounty for every two Deathfist belts.  If you are a true warrior of the bunker. perhaps you can begin with [the green and blue].");
  }
  if($text=~/the green and blue/i && $class == 'Warrior')
  {
  quest::say("The green and blue was a test for all skilled warriors. All one needed do was return to me four orc legionnaire shoulderpads. Two from the loathsome green skinned Deathfist Clan and two from the vile blue skinned Crushbone Clan. But we have no more bunker battle blades to spare. We must prepare for war!!");
  }
  if($text=~/bigger problem/i)
  {
  quest::say("The bigger problem is the Freeport Militia. Go to the Hall of Truth and speak with the Knights of Truth about that. They have already started their campaign to rid the city of the militia. The so-called Freeport Militia is not to be trusted.");
  }

}

sub EVENT_ITEM
{ 
   # Deathfist Slashed Belts ID-13916
 	 if($itemcount{13916} == 2)
 	   {
     quest::say("Very fine work $name . With your help, we shall soon rid the commonlands of the orcs. Then we can move on to a [bigger problem].");
	   quest::ding();
	   quest::givecash("0","0","8","0");
	   quest::exp(50);
     	   # Freeport Militia Faction
	   quest::faction("105","-1");
	   # Steel Warriors Faction
	   quest::faction("311","1");
	   # Knights of Truth Faction
     quest::faction("184","1");
     }

	 # A Tattered Note ID-18742
 	 if($itemcount{18748} == 1 && $class == 'Warrior')
   	 {
  	 quest::say("Welcome to the Steel Warriors. young warrior.  It is time to prove your mettle.  Look to the outskirts of Freeport and join the fray.  Show Clan Deathfist what a warrior of the bunker can do.");
	   quest::ding();
	   # Dirty Training Tunic ID-13572
	   quest::summonitem("13572");
	   quest::exp(100);
 	   }
     elsif($class != 'Warrior')
	   {
		quest::say("You are not a member of my guild. I will not train you!");
		quest::summonitem($item1) if($item1);
		quest::summonitem($item2) if($item2);
		quest::summonitem($item3) if($item3);
		quest::summonitem($item4) if($item4);
		return;
	   }
    else
 	  {
  #assume it is a discipline tome...
	quest::traindisc($item1) if(quest::isdisctome($item1));
	quest::traindisc($item2) if(quest::isdisctome($item2));
	quest::traindisc($item3) if(quest::isdisctome($item3));
	quest::traindisc($item4) if(quest::isdisctome($item4));
 	}
}
#END of FILE Zone:freportw  ID:9092 -- Cain_Darkmoore

