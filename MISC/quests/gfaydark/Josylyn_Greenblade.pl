sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings $name. It is my duty to teach young Fier`Dal the arts of defense and fighting so that they may become skilled members of the Emerald Warriors. There are many [threats] facing our forests and our home Kelethin, thus we warriors must be prepared both physically and mentally to defend our people. It is wise for all young Emerald Warriors to acquire a [suit of armor] to protect them from the weapons of our enemies.");
}
if($text=~/what suit of armor/i){
quest::say("You will require this specially prepared Mail Assembly Kit to assemble a suit of Emerald Novice Armor. The required materials vary depending on the piece of armor you seek to craft. Once you have been properly outfitted return to me and I will present you with another [task]. Do you seek to craft [Emerald Novice Gauntlets], [Emerald Novice Boots], an [Emerald Novice Bracer], an [Emerald Novice Helm], [Emerald Novice Greaves], [Emerald Novice Vambraces], or an [Emerald Novice Breastplate]?");
}
if($text=~/what task/i){
quest::say("Although our city of Kelethin gains much protection from its construction in the treetops of the Faydark, like all things it has weaknesses in its defenses. The Crushbone Orcs often attempt to ignite the trees with the fires of their torches. Young Emerald Warriors are often stationed on the forest floor beneath Kelethin to watch for these orc arsonists and stop them. Go now to the forest floor and should you catch one of these orcs slay him and bring me his orcish torch.");
}
if($text=~/what threats/i){
quest::say("The threats that face Tunares children here in the Faydarks are many, some more obvious than others. The orcish Clan Crushbone has a citadel to the north and is perpetually invading the Faydarks in order to pillage supplies and expand their territory. The foolish pixies that inhabit the forests often cause harm to the trees and animals with their mischievous pranks, and recently the [Arboreans] have returned from centuries of slumber.");
}
if($text=~/what arboreans/i){
quest::say("The Arboreans are an ancient species of sentient plant-folk. Their sentience however does not manifest as intelligence or wisdom. They are little more than mobile weeds, multiplying quickly and draining the nutrients from the soil and flora they come into contact with. Old legends from when our people first migrated to Faydwere from the Eldarr Forest of Tunaria tell of a great famine caused by the Arboreans. The Heartwood Master and his most blessed of druids wove powerful magics that destroyed the Arboreans, but some of their seeds endured, buried in the soil for centuries, and recently they have sprouted and are once again destroying our beloved forests.");
}
if($text=~/what emerald novice gauntlets/i){
quest::say("To assemble emerald novice gauntlets you will need to obtain two bricks of crude bronze and smelt them in a forge with a Water Flask and this crude Gauntlet Mold. Once that is done combine the Crude Bronze Gauntlets with a Ruined Forest Drakeling Scales and two Arborean Sprout Twigs in the Mail Assembly Kit.");
quest::summonitem("19633");
}
if($text=~/what emerald novice boots/i){
quest::say("To assemble emerald novice boots you will need to obtain two bricks of crude bronze and smelt them in a forge with a Water Flask and this crude Boot Mold. Once that is done combine the Crude Bronze Boots with two Ruined Forest Drakeling Scales, and two Arborean Sprout Roots in the Mail Assembly Kit.");
quest::summonitem("19634");
}
if($text=~/what emerald novice bracer/i){
quest::say("To assemble an emerald novice bracer you will need to obtain a brick of crude bronze and smelt it in a forge with a Water Flask and this Crude Bracer Mold. Once that is done, combine the Crude Bronze Bracer with a Ruined Forest Drakeling Scales and an Arborean Sprout Bark in the Mail Assembly Kit.");
quest::summonitem("19632");
}
if($text=~/what emerald novice helm/i){
quest::say("To assemble an emerald novice helm you will need to obtain two bricks of crude bronze and smelt them in a forge with a Water Flask and this Crude Helm Mold. Once that is done combine the Crude Bronze Helm with a Ruined Forest Drakeling Scales and an Arborean Sapling Bark in the Mail Assembly Kit.");
quest::summonitem("19631");
}
if($text=~/what emerald novice greaves/i){
quest::say("To assemble emerald novice greaves you will need to obtain two bricks of crude bronze and smelt them in a forge with a Water Flask and this Crude Greaves Mold. Once that is done combine the Crude Bronze Greaves with two Forest Drakeling Scales and two Arborean Sapling Barks in the Mail Assembly Kit.");
quest::summonitem("19636");
}
if($text=~/what emerald novice vambracers/i){
quest::say("To assemble an emerald novice bracer you will need to obtain a brick of crude bronze and smelt it in a forge with a Water Flask and this Crude Bracer Mold. Once that is done, combine the Crude Bronze Bracer with a Ruined Forest Drakeling Scales and an Arborean Sprout Bark in the Mail Assembly Kit.");
}
if($text=~/what emerald novice vambraces/i){
quest::say("To assemble emerald novice vambraces you will need to obtain two bricks of crude bronze and smelt them in a forge with a Water Flask and this Crude Vambrace Mold. Once that is done combine the Crude Bronze Vambraces with a Forest Drakeling Scales and two Arborean Sapling Barks in the Mail Assembly Kit.");
quest::summonitem("19635");
}
if($text=~/what emerald novice breastplate/i){
quest::say("To assemble an emerald novice breastplate you will need to obtain four bricks of crude bronze and smelt them in a forge with a Water Flask and this Crude Breastplate Mold. Once that is done combine the Crude Bronze Breastplate with a Pristine Forest Drakeling Scales, and two Mature Arborean Barks in the Mail Assembly Kit.");
quest::summonitem("19637"); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
	if($class ne 'Warrior') {
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
 #}
}
#END of FILE Zone:gfaydark  ID:54122 -- Josylyn_Greenblade 
