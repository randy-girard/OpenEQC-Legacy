############################################
# ZONE: East Freport (freporte)
# DATABASE: PEQ-Velious
# LAST EDIT DATE: May 27,2005
# VERSION: 1.0
# BASE QUEST BY: PEQ Team
# DEVELOPER: MWMDRAGON
#
# *** NPC INFORMATION ***
#
# NAME: Netuk_Phenzon
# ID: 10101
# TYPE: Shadowknight Guild Master
# RACE: Human
# LEVEL: 61
#
# *** ITEMS GIVEN OR TAKEN ***
#
# A Sealed Letter ID- 12270 (Not the Correct note but it will do)
#
# Random Reward Items
#
# Bronze Bastard Sword ID-5029
# Bronze Battle Axe ID-5028
# Bronze Halberd ID-5031
#
# *** QUESTS INVOLVED IN ***
#
#1 - questname
#2 - questname
#3 - questname
#
# *** QUESTS AVAILABLE TO ***
#
#1 - classes_that_can_do_the_quest
#2 - classes_that_can_do_the_quest
#3 - classes_that_can_do_the_quest
#
# *** NPC NOTES ***
#
#
#
############################################

######## EVENT_SAY AREA ####################
### Called when the NPC is spoken to by a PC

sub EVENT_SAY
{
   if($text=~/Hail/i)
   {
   quest::say("Welcome $name. Let us fill your heart with hate. May you carry that hate unto your fellow citizens. Innoruuk has need of your services. We have A [ mission ] for you. ");
   }

   if($text=~/mission/i)
   {
   quest::say("There is a man called Groflah Steadirt. He runs A weapons shop here in Freeport. Our sources tell us he was given A piece of parchment taken from one of our allies. Who that is is none of your business. We only require you to recover the parchment, which he No doubt has on him. End his life and return the note to me. Do not let me see your miserable face again until you have the parchment. ");
   }

}

######## EVENT_ITEM AREA ###################
### Called when the NPC is handed items

sub EVENT_ITEM
{

   # A Sealed Letter ID- 12270 (Not the Correct note but it will do)
   if($itemcount{12270} == 1)
   {
   quest::ding();
   quest::say("This isn't much, but let it show you the gratitude the Dismal Rage has for your deeds.");
   quest::exp("100");

   
   ### Random Item choosing if needed
   $random=int(rand 5029+5028+5031);
   # Bronze Bastard Sword ID-5029 - Bronze Battle Axe ID-5028 - Bronze Halberd ID-5031
   quest::summonitem($random);

   # Dismal Rage Faction ID - 86
   quest::faction("86","1");
   # Opal Dark Briar Faction ID - 235
   quest::faction("235","1");
   # Knights of Truth Faction ID - 184
   quest::faction("184","-1");
   }

   else {
	if($class ne 'Shadowknight')
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

######## EVENT_AGGRO AREA ##################
### Called when the NPC is aggroed

sub EVENT_AGGRO
{



}

######## EVENT_ATTACK AREA #################
### Called when the NPC is Attacked

sub EVENT_ATTACK
{



}

######## EVENT_DEATH AREA ##################
### Called when the NPC is killed

sub EVENT_DEATH
{



}

######## EVENT_ENTER AREA ##################
### Called when a PC enters the NPCs Proximity

sub EVENT_ENTER
{



}

######## EVENT_EXIT AREA ###################
### Called when a PC exits the NPCs Proximity

sub EVENT_EXIT
{



}

######## EVENT_HP AREA #####################
### Called when the HP of the NPC drop below a set level

sub EVENT_HP
{



}

######## EVENT_SIGNAL AREA #################
### Called when a signal is sent to the NPC

sub EVENT_SIGNAL
{



}

######## EVENT_SLAY AREA ###################
### Called when the NPC kills someone

sub EVENT_SLAY
{



}

######## EVENT_SPAWN AREA ##################
### Called when the NPC spawns

sub EVENT_SPAWN
{



}

######## EVENT_TIMER AREA ##################
### Called when a timer has completed its cycle

sub EVENT_TIMER
{



}

######## EVENT_WAYPOINT AREA ###############
### Called when the NPC reaches a waypoint

sub EVENT_WAYPOINT
{



}

### EQEmu Quest Template By: MWMDRAGON
### The End of this script must contain 2 empty lines for the EQ Quest System
#END of FILE Zone:freporte  ID:10101 -- Netuk_Phenzon



