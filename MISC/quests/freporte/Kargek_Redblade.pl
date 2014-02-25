############################################
# ZONE: East Freeport (freeporte)
# DATABASE: PEQ-Velious
# LAST EDIT DATE: June 6,2005
# VERSION: 1.0
# BASE QUEST BY: PEQ Team
# DEVELOPER: MWMDRAGON
#
# *** NPC INFORMATION ***
#
# NAME: Kargek_Redblade
# ID: 10117
# TYPE: Warrior
# RACE: Human
# LEVEL: 50
#
# *** ITEMS GIVEN OR TAKEN ***
#
# Wax Sealed Note ID-20673
# Tiny Lute ID-20674
# Redblade's Legacy ID- 18083
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
   quest::emote("looks up from his forge and says,");
   quest::say("Hello there, Can I help you?");
   quest::me("Your eyes are drawn to an extremely large [red sword Scabbard] strapped to his back with No sword in it");
   quest::say("I said, can I help you or do you need help from [Wenden]?");
   }

   if($text=~/Wenden/i)
   {
   quest::emote("points to the other side of the forge and says,");
   quest::say("Wenden is my partner. He is standing right over there. If it Is a question about a weapon, he will probably have the answers.");
   }

   if($text=~/red sword Scabbard/i)
   {
   quest::emote("turns to look at you and says,");
   quest::say("It is a family Heirloom. I might tell you the story behind it if you do me a little [Favor].");
   }

    if($text=~/favor/i)
   {
   quest::say("An associate of mine is wandering somewhere in The Feerrott. His name is Oknoggin Stonesmacker. If you will Deliver this note to him, I would appreciate it.");
   # Wax Sealed Note ID-20673
   quest::summonitem("20673");
   } 
   
}

######## EVENT_ITEM AREA ###################
### Called when the NPC is handed items

sub EVENT_ITEM
{

   # Tiny Lute ID-20674
   if($itemcount{20674} == 1)
   {
   quest::ding();
   quest::say("Thank you for delivering the note to my Associate. Take this book - It will tell you A little of the history of The old scabbard. If you would like to own the scabbard, seek out my Younger brother Tenal and give him the book.");
   quest::exp("100");

   # Redblade's Legacy ID- 18083
   quest::summonitem("18083");
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
#END of FILE Zone:freporte  ID:10117 -- Kargek_Redblade



