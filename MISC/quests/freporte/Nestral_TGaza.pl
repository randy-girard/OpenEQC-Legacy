############################################
# ZONE: East Freeport (freporte)
# DATABASE: PEQ-Velious
# LAST EDIT DATE: June 25,2005
# VERSION: 1.0
# BASE QUEST BY: PEQ Team
# DEVELOPER: MWMDRAGON
#
# *** NPC INFORMATION ***
#
# NAME: Nestral_TGaza
# ID: 10105
# TYPE: Rogue Guild Master
# RACE: Dark Elf
# LEVEL: 61
#
# *** ITEMS GIVEN OR TAKEN ***
#
# Message to Rebby ID-18923
# Rebby's Rat Whiskers ID-13158
#
# *** QUESTS INVOLVED IN ***
#
#1 - Note to Rebby
#2 - Rebbys Whiskers
#
# *** QUESTS AVAILABLE TO ***
#
#1 - All
#2 - All
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
   quest::say("It's been so busy around here lately. Barely time to eat and sleep, much have my fun. Oh well, keeps me employed. But and I really could use someone to [ help ] me out around here.");
   }

   if($text=~/help/i)
   {
   quest::say("Yea and if you can help me out with A few things that'd be great. Geez and where do we Start? I need someone to run over to [ Janam and Rebbys ]? Can you do that for me?");
   }

    if($text=~/Janam and Rebbys/i)
   {
   quest::say("Janam and Rebby are A couple of merchants working the area around the Theater of the Tranquil and the Ashen Order, in West Freeport. It's part of my job to keep tabs on those two rascals. I need someone to take this note to Rebby for me. Don't worry, your efforts won't go unnoticed $name.");
   # Message to Rebby ID-18923
   quest::summonitem("18923");
   }

}

######## EVENT_ITEM AREA ###################
### Called when the NPC is handed items

sub EVENT_ITEM
{

   # Rebby's Rat Whiskers ID-13158
   if($itemcount{13158} == 1)
   {
   quest::ding();
   quest::say("Thank you $name, You have done well.");
   quest::exp("100");
   quest::givecash("1","0","0","0");

   ### Random Item choosing if needed
   # $random=int(rand itemid+itemid+itemid);
   # quest::summonitem($randon);

   # itemname ID- itemid
   #quest::summonitem("0000");

   # Coalition of Tradefolk Underground Faction ID - 48
   quest::faction("48","1");
   # Coalition of Trade Folk Faction ID - 47
   quest::faction("47","1");
   # Carson McCabe Faction ID - 31
   quest::faction("31","1");
   # Corrupt Qeynos Guards Faction ID - 53
   quest::faction("53","1");
   # Freeport Militia Faction ID - 105
   quest::faction("105","1");
   } 
   else 
   {
	if($class ne 'Rogue') {
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
#END of FILE Zone:freporte  ID:10105 -- Nestral_TGaza



