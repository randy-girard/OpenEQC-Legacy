############################################
# ZONE: West Freeport (freportw)
# DATABASE: PEQ-Velious
# LAST EDIT DATE: April 29,2005
# VERSION: 1.0
# BASE QUEST BY: PEQ Team
# DEVELOPER: MWMDRAGON
#
# *** NPC INFORMATION ***
#
# NAME: Puab_Closk
# ID: 9086
# TYPE: Monk Guild Master
# RACE: Human
# LEVEL: 61
#
# *** ITEMS GIVEN OR TAKEN ***
#
# Puab's Token ID-12369
# A tattered note ID-18746
# Torn Cloth Tunic ID-13507
# Tattered Parchment ID-28055
# Treant Fists ID-12344
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

if($text=~/Hail/i)
{
quest::say("Greetings. I am Puab Closk, Master of the Ashen Order.  Our home is your home, friend. Feel free to stay as long as you like.  Learn our ways as many have done in the past.  To fight like the tiger and strike like the cobra are your goals. Cough- [treant fist] -Cough!");
}

if($text=~/treant fist/i)
{
quest::say("I have these items, and will gift them to any [monk of great skill]");
}

if($text=~/monk of great skill/i)
{
quest::say("Then you shall aid our family. My former pupil [Clawfist] has been banished by his people. You will go to him and hand him this token as proof of your origin. He shall be expecting you.");
# Puab's Token ID-12369
quest::summonitem("12369");
}

if($text=~/Clawfist/i)
{
quest::say("Clawfist is a Kerran, a catman. He braved the dangers of Norrath to reach the Ashen Order. He sought knowledge of our disiples. He learned well.");
}

if($text=~/Where is Clawfist/i)
{
quest::say("Clawfist has been banished by the Kerrans of Odus. Where they have sent him I am unsure");
}

}

sub EVENT_ITEM
{ 
 # A tattered note ID-18746
 if ($itemcount{18746} == 1)
 {
	quest::ding();
	quest::say("Welcome to the Order");
        # Torn Cloth Tunic ID-13507
	quest::summonitem("13507");
	quest::exp("100");
 }
 # Tattered Parchment ID-28055
 elsif ($itemcount{28055} == 1)
 {
        quest::ding();
	quest::say("You have performed a great service to one who is your brother. Your loyalty shines brightly, as does your skill. Take the treant fists. They are yours now.");
        # Treant Fists ID-12344
	quest::summonitem("12344");
	quest::exp("100");
	# Ashen Order Faction ID-12
	quest::faction("12","1");
	# Knights of Truth Faction ID-184
	quest::faction("184","1");
	# Silent Fist Clan Faction ID-300
	quest::faction("300","1");
 }
 else
 {
	if($class ne 'Monk')
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

#END of FILE Zone:freportw  ID:9086 -- Puab_Closk