############################################
# ZONE: West Freeport (freportw)
# DATABASE: PEQ-Velios
# LAST EDIT DATE: April 5,2005
# VERSION: 2.0
# DEVELOPER: MWMDRAGON
#
# *** NPC INFORMATION ***
#
# NAME: Brina_Foxtripper
# ID: 9096
# TYPE: Guild Master Warrior
# RACE: Human
# LEVEL: 61
#
# *** ITEMS GIVEN OR TAKEN ***
#
#
#
# *** QUESTS INVOLVED IN ***
#
#
#
# *** QUESTS AVAILABLE TO ***
#
#
#
############################################

sub EVENT_SAY
{
 if($text =~ /Hail/i)
 {
	quest::say('Hello. I am the guild master. For the great Warriors of Freeport.');
 }
}

sub EVENT_ITEM
{
 #do all other handins first, then let it do disciplines
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

#END of FILE Zone:freportw  ID:9096 -- Brina_Foxtripper
