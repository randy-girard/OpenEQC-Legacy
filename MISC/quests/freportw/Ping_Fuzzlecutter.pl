############################################
# ZONE: West Freeport (freportw)
# DATABASE: PEQ-Velious
# LAST EDIT DATE: April 24,2005
# VERSION: 1.0
# BASE QUEST BY: PEQ Quest Team
# DEVELOPER: MWMDRAGON
#
# *** NPC INFORMATION ***
#
# NAME: Ping_Fuzzlecutter
# ID: 9133
# TYPE: Shopkeeper
# RACE: Gnome
# LEVEL: 37
#
# *** ITEMS GIVEN OR TAKEN ***
#
# A Gem Encrusted Casket ID-6708
# Full Gem Bag ID-6710
# Empty Gem Bag ID-17512
# Clumps of Hair ID- MISSING
# Mermaid Hair ID- MISSING
# Tattered Toupee ID- 12337
# Mane Attraction ID-12254
#
# *** QUESTS INVOLVED IN ***
#
#1 - Mane Attraction
#2 - The Bones of Darak Lightforge
#3 - Rain Caller
#
# *** QUESTS AVAILABLE TO ***
#
#1 - All
#2 - Paladin
#3 - Ranger
#
# *** NPC NOTES ***
#
# Merchant ID -9036
# Must Sell: Fuzzlecutter Formula 5000 ID-12260 (For Rain Caller Quest)
#
############################################


sub EVENT_SAY
{
 if($text=~/what components/i && $class == "Paladin")
  {
   quest::say("Oi, you must be from Valeron eh? Take dis empty gem bag and put the following items in it. A diamond, a star ruby, a pearl, a fire emerald -as Brisha Firestone in Firiona Vie-, a sapphire, a fire opal, and 2 enchanted bars of platinum. Bring it back to me when you get them all.");
   # Empty Gem Bag ID-17512
   quest::summonitem(17512);
  }

  if($text=~/You can repair the toupee/i)
  {
   quest::say("Ah!! You have a toupee to repair. It must be the [Mane Attraction]. I gave a one out and it seems to always fall to pieces. Seeing as it has a 100 season warranty and I only created it 5 seasons ago, I suppose I can do it. Do you want me to [make the Mane Attraction]. ");
   }

   if($text=~/Mane Attraction/i)
  {
   quest::say("The Mane Attraction is a special toupee I created for a Gnome junker. He wasn't getting much attention at the taverns till I created the eye catching toupee. He became one Charismatic Gnome after that. Unfortunately, it seems to fall to pieces to easy and since it has a warranty, I have to fix it for him every time at no charge!! I will never make another. ");
   }

   if($text=~/make the Mane Attraction/i)
  {
   quest::say("If you have the original tattered toupee then I can do it. Before you give it to me I will also need three other items. I require two clumps of hair from a Hulking Gorilla and a strand of hair from a [certain mermaid].");
   }

   if($text=~/certain mermaid/i)
  {
   quest::say("I encountered a particular mermaid with beautiful hair!! She had beautiful golden tresses. I used a lockof her hair to create the Mane Attraction. That was a while back when I was in Faydwer. ");
   }

}


sub EVENT_ITEM
{
 # Full Gem Bag ID-6710
 if($itemcount{6710} == 1)
  {
   quest::say("Well done. Lemme just put the finishing touches on dis casket and i'll hand it over.");
   quest::ding();
   # A Gem Encrusted Casket ID-6708
   quest::summonitem(6708);
  }

 ## # Clumps of Hair ID- MISSING - Mermaid Hair ID- MISSING - Tattered Toupee ID- 12337
 ## if($itemcount{MISSING} == 2) && ($itemcount{MISSING} == 1) && ($itemcount{12337} == 1)
 ## {
 ##  quest::say("You are a good helper. Here you go. One genuine, charismatic, lady magnet, zero to hero making Mane Attraction!! Guarnteed to lower prices world wide. Guarnteed to last forever.. Err.. Well,.. It has a 1000 year warranty at least.");

 ##  quest::ding();
 ##  exp("200");
 ##  # Mane Attraction ID-12254
 ##  quest::summonitem(12254);
 ##  # Faction Coalition of Trade Folk ID-47
 ##  quest::faction("47","3");
 ##  # Faction Knights of Truth ID-184
 ##  quest::faction("184","3");
 ##  # Faction Merchants of Qeynos ID-217
 ##  quest::faction("217","3");
 ##  # Faction Merchants of Qeynos ID-217
 ##  quest::faction("217","3");
 ##  }

}

#END of FILE Zone:freportw  ID:9133 -- Ping_Fuzzlecutter
