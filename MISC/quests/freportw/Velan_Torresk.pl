############################################
# ZONE: West Freeport (freportw)
# DATABASE: PEQ-Velious
# LAST EDIT DATE: April 25,2005
# VERSION: 1.0
# ORIGIONAL QUEST BY: PEQ Team
# DEVELOPER: MWMDRAGON
#
# *** NPC INFORMATION ***
#
# NAME: Velan_Torresk
# ID: 9065
# TYPE: Guild Master Monk
# RACE: Human
# LEVEL: 61
#
# *** ITEMS GIVEN OR TAKEN ***
#
# Deathfist Pawn Scalp ID-13794
# Snake Fang ID-13067
# Bone Chips ID-13073
# White Training Sash ID-10130
# Orange Headband ID-10112
# Giant Snake Rattle ID-13058
# Deathfist Slashed Belt ID-13916
# Desert Tarantula Chitin ID-20901
# Yellow Sash of Order ID-10131
#
# *** QUESTS INVOLVED IN ***
#
#1 - The White Training Sash
#2 - The Yellow Sash of Order
#
# *** QUESTS AVAILABLE TO ***
#
#1 - Monk
#2 - Monk
#
############################################


sub EVENT_SAY
{ 

if($text=~/Hail/i)
{
quest::say("Greetings. $name !  I am Velan Torresk of the Ashen Order.  I am in charge of training the newest members of our clan. and helping them advance their skills and rank.  When members perform certain tasks on behalf of the Order. they advance to a higher rank in our clan. and are awarded a special [sash].");
}

if($text=~/sash/i)
{
quest::say("The Sashes of Order are given out by the various trainers of our clan.  I give out the [white training sash] and the [yellow Sash of Order]. and [Reyia] is in charge of the [orange and red sashes].");
}

if($text=~/white training sash/i)
{
quest::say("The white training sash of the Ashen Order is awarded to our new members for completing a few simple tasks to prove their devotion to our clan. As you know, Freeport is a very hostile place, under constant attack from [orcs], wild beasts, and even the undead. To help keep this city and its citizens relatively safe, we must help the Militia protect the main gates. Bring me two Deathfist pawn scalps from those vile [Deathfist orcs], a snake fang, and some bone chips from a skeleton. Good luck, $name, represent us well!");
}

if($text=~/deathfist orcs/i || $text=~/orcs/i)
{
quest::say("The Deathfist Orcs are a large tribe of Orcs who live out in the desert. They are constantly sending small raiding parties and scouts to attack Freeport and its citizens. ");
}

if($text=~/yellow sash of order/i)
{
quest::say("To earn the yellow sash, you must prove yourself to be very skilled in the art of fighting. The lands to the west and south of Freeport are filled with dangerous beasts that often prey upon innocent travelers. Help protect our merchant caravans and traveling citizens, while at the same time practicing your defensive skills, and eliminating these deadly creatures from the surrounding landscape. Bring me a giant snake rattle, a Deathfist slashed belt, the chitin of a desert tarantula, and turn in your white training sash, and I shall reward your noble work with our yellow Sash of Order. Good luck, $name !");
}

}

sub EVENT_ITEM
{ 
 # Deathfist Pawn Scalp ID-13794 - Snake Fang ID-13067 - Bone Chips ID-13073
 if ($itemcount{13794} == 2 && $itemcount{13067} == 1 && $itemcount{13073} == 1 )
 {
	quest::say("Good work, $name , you've worked hard and proven yourself a valuable addition to the Ashen Order. Here's your white sash, wear it with pride.");

	quest::ding();
	# White Training Sash ID-10130
	quest::summonitem("10130");
	quest::exp("100");
 	# Faction Ashen Order ID-12
	quest::faction("12","1");
	# Faction Knights of Truth ID-184
	quest::faction("184","1");
	# Faction Silent Fist Clan ID-300
	quest::faction("300","1");
 }
	# White Training Sash ID-10130 - Giant Snake Rattle ID-13058 - Desert Tarantula Chitin ID-20901
 elsif ($itemcount{10130} == 1 && $itemcount{13058} == 1 && $itemcount{13916} == 1 && $itemcount{20901} == 1 )
 {
	quest::say("'Ah, well done, $name. You have proven that you are a very skillful fighter and it is a honor to have you as a member of the Ashen Order. On behalf of Master Closk, and under the watchful eyes of Quellious, I present you, $name, with this, the yellow Sash of Order. Go out and make us proud.");

        quest::ding();
	# Yellow Sash of Order ID-10131
	quest::summonitem("10131");
	quest::exp("200");
	# Faction Ashen Order ID-12
	quest::faction("12","1");
	# Faction Knights of Truth ID-184
	quest::faction("184","1");
	# Faction Silent Fist Clan ID-300
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
#END of FILE Zone:freportw  ID:9065 -- Velan_Torresk