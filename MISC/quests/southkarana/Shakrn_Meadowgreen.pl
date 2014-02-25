sub EVENT_SAY {
if($text=~/Hail/i){
quest::say("Hail!  I am Shakrn Meadowgreen. warrior extraordinaire and master armorer of the Meadowgreen family.  My brother and I craft [armor] for the bravest warriors in the land - do you think you [qualify]?");
}
if($text=~/what armor/i){
quest::say("I smith [helms], [gauntlets], [boots] and [vambraces].  My brother Ulan smiths bracers, greaves, pauldrons and breastplates.");
}
if($text=~/qualify/i){
quest::say("So you are a warrior of renown?  [Prove] it to me and I will smith you [armor] befitting your exalted station.");
}
if($text=~/prove/i){
quest::say("You will prove yourself to me the old fashioned way, by killing things and bringing me back proof of your deed.  Bah.  What other way is there?");
}
if($text=~/what helms/i){
quest::say("Crafted helms - if you bring me a goblin fire totem and a ruby I shall forge a helm of great splendor for you!");
}
if($text=~/what gauntlets/i){
quest::say("Crafted gauntlets - the mark of a distinguished warrior.  I have a personal grudge to settle with those twice-cursed aviaks.  They have been raiding our merchant convoys for the last few weeks, causing mischief to no end.  Bring me an aviak charm from an avocet. I am sure I will not need to tell you how to get it.  An aviak charm and two [star rubies], and I will reward you with crafted gauntlets.");
}
if($text=~/what boots/i){
quest::say("One of my brethren spoke to me of the mystic properties of the frost totems carried by the goblin high shamans in Permafrost Keep.  I have been unable to fetch one for myself, as my centaur body will not fit through the tunnels of those sniveling wretches.  Prove your might by providing me a frost totem and two [sapphire] stones.  Do this and I will reward you with a pair of crafted boots.");
}
if($text=~/what vambraces/i){
quest::say("Come, warrior, and speak to me of your strength.  Bring me the eye of a griffon that I might eat it raw in the fashion of my ancestors.  Do this for me - then gift me with two [fire emeralds], and for you I will make a crafted vambrace.");
}
if($text=~/what star rubies/i){
quest::say("I need a star ruby for a piece of jewelry my brother and I are creating.");
}
if($text=~/what sapphire/i){
quest::say("I need a sapphire for a piece of jewelry my brother and I are crafting.");
}
}
sub EVENT_ITEM {
	if($itemcount{13737} == 1 && $itemcount{10032} == 2) {
		quest::say("Excellent! Here is your reward, you have earned it!");
		quest::summonitem("4178");
	} elsif($itemcount{13744} == 1 && $itemcount{10034} == 2) {
		quest::say("Excellent! Here is your reward, you have earned it!");
		quest::summonitem("4180");
	} elsif($itemcount{8103} == 1 && $itemcount{10033} == 2) {
		quest::say("Excellent! Here is your reward, you have earned it!");
		quest::summonitem("4176");
	} elsif($itemcount{13743} == 1 && $itemcount{10035} == 1) {
		quest::say("Excellent! Here is your reward, you have earned it!");
		quest::summonitem("4173");
	} else {
		quest::say("I don't need this.");
		if($item1 > 0){quest::summonitem("$item1");} 
		if($item2 > 0){quest::summonitem("$item2");} 
		if($item3 > 0){quest::summonitem("$item3");} 
		if($item4 > 0){quest::summonitem("$item4");}
		if($platinum != 0 || $gold !=0 || $silver != 0 || $copper != 0) {quest::givecash($platinum, $gold, $silver, $copper);}
	}
}

#END of FILE Zone:southkarana  ID:14075 -- Shakrn_Meadowgreen 

