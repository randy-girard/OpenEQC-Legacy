#!/usr/bin/perl

sub EVENT_SAY {
    if($text=~/Hail/i){
	quest::say("Greetings.  I am Ulan Meadowgreen of the family Meadowgreen.  My brother and I are the best armorers in all of Norrath.  We craft [armor] for the bravest warriors in the land.  If you are a warrior of renown, and are interested in our armor, I have some mighty [labors] you might wish to attempt for me.");
    }
    if($text=~/what armor/i){
	quest::say("I smith [bracers], [greaves], [pauldrons] and [breastplates].  My brother Shakrn smiths helms, gauntlets, boots and vambraces.");
    }
    if($text=~/labors/i){
	quest::say("Only those who can prove themselves mighty warriors deserve to wear our crafted armor.  While my brother prefers trophies, I seek instead tasks which will help my craft and my people.");
    }
    if($text=~/what bracers/i){
	quest::say("The fine sheen you see on our crafted armor is produced by a mixture of river berries and juice squeezed from the optic nerves of an evil eye.  We are always in need of more optic nerves for our armor.  Bring me a handful of optic nerves and a [sapphire], and I will give you a crafted bracer for your trouble.");
    }
    if($text=~/what pauldrons/i){
	quest::say("In the caverns of Clan Runnyeye live several evil eyes of prodigious magical power.  Split among them are the three lost pieces of the legendary [Rune of Dwarves].  When assembled, this rune is said to impart a mystic skill to the smith who holds it.  Bring me these three pieces and a [fire emerald], and I will smith for you a pauldron worthy of the mightiest of warriors.");
    }
    if($text=~/what greaves/i){
	quest::say("Years ago, a necromancer most foul terrorized the people of the Karanas.  This wretch stole a [circlet] father was smithing for my sister.  It was very easy to recognize - shining silver like the light of dawn breaking.  I have heard rumors that this necromancer has settled in the depths of Najena.  Return this circlet to me and gift me with two [star rubies], and I will reward you with crafted greaves.");
    }
    if($text=~/what breastplate/i){
	quest::say("Deep within the depths of Castle Mistmoore lives a particularly deadly clan of werewolves.  These are the servants of [Mayong], and he has enchanted the most ferocious of them that their talons might cut through steel.  I wish to study these talons, and see if I can transfer the enchantments from them to the crafted armor I make.  If you bring me werewolf talons and 3 [rubies], I will give you a breastplate, the likes of which you have never before seen.");
    }
    if($text=~/what rune of dwarves/i){
	quest::say("The Rune of Dwarves once rested in the heart of the city of Kaladim.  Years ago, the goblins of Clan Runnyeye stole it from the dwarves.  No one I have ever spoken to knows how it was broken.  It is not hard to guess, however, why the evil eyes now hold them.");
    }
    if($text=~/what circlet/i){
	quest::say("The circlet my father forged was of the finest silver, ready to be enchanted by our more magical cousins.  It is a shame we never had the chance to finish the work.");
    }
    if($text=~/what mayong/i){
	quest::say("Mayong Mistmoore is the ruler of Castle Mistmoore.  He has ruled there for centuries, and will most likely rule for centuries more to come.  It is said that he does not age.");
    }
    if($text=~/what star rubies/i){
	quest::say("I need a star ruby for a piece of jewelry my brother and I are creating.");
    }
    if($text=~/what sapphire/i){
	quest::say("I need a sapphire for a piece of jewelry my brother and I are crafting.");
    }
    if($text=~/what rubies/i){
	quest::say("I need rubies for a piece of jewelry my brother and I are crafting.");
    }
    if($text=~/what fire emerald/i){
	quest::say("I need a fire emerald for a piece of jewelry my brother and I are crafting.");
    }
    if($text=~/what sapphire/i){
	quest::say("I need a sapphire for a piece of jewelry my brother and I are crafting.");
    }
}

sub EVENT_ITEM {
    if(plugin::check_handin(\%itemcount, 14019 => 1, 10034 => 1)) {
	quest::say("Excellent! Here is your reward, you have earned it!");
	quest::summonitem("4177");
    } elsif(plugin::check_handin(\%itemcount, 13698 => 1, 13699 => 1, 13738 => 1, 10033 => 1)) {
	quest::say("Excellent! Here is your reward, you have earned it!");
	quest::summonitem("4175");
    } elsif(plugin::check_handin(\%itemcount, 13742 => 1, 10032 => 2)) {
	quest::say("Excellent! Here is your reward, you have earned it!");
	quest::summonitem("4179");
    } elsif(plugin::check_handin(\%itemcount, 13746 => 1, 10035 => 3)) {
	quest::say("Excellent! Here is your reward, you have earned it!");
	quest::summonitem("4174");
    } else {
	quest::say("I don't need this.");
	plugin::return_items(\%itemcount);
    }
}

# END of FILE Zone:southkarana  ID:14073 -- Ulan_Meadowgreen 

