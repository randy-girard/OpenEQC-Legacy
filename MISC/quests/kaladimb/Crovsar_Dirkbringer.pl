sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Gud to meet ye there $name. Me names Crovsar Dirkbringer and I run dis here mining operation. Anyone else that tell ye different simply aint telling da truth! I like to spend most of me time minin but I also like to help our young miners pick dere way to glory as a great rogue! Er I mean a great miner! Aye, dats it. If ye are a [young minin rogue] of Kaladim den I might just have some things for ye to do.");
}
if($text=~/I am a young minin rogue/i){
quest::say("A young rogue ye say ye is eh $name? Well den If`n yer ready to git your hands dirty and yer pockets full I will be happy to explain to you the [training exercises] dat I have our new recruits all undergo to earn dere keep in dese here mines!");
}
if($text=~/What training exercises?/i){
quest::say("Well den it must be obvious that not just any young miner can git his things and venture out into da world without the proper armor to protect dem Aye? Dis is why I have developed training exercises dat will test both yer fightin and collectin skills and will in da end yield you a full set of Apprentice Miners Chainmail! Now makin da armor will nat be hard at all because I will be able to give you the tools necessary to craft da armor pieces once you have created da correct [armor materials].");
}
if($text=~/What armor materials?/i){
quest::say("Now were talkin! I can see dat ye are very interested in carving yer way into da Kaladim history books so lets git started. First off you will use this Dusty Mail Assembly Kit to collect various magical items that can be combined in da kit to create the armor materials that I spoke of earlier. You will then take the material to a forge along with patterns that I will present ye with to create da specific armor piece ye asked for. When ye are ready simply say what armor piece ye [want] to craft and I can provide ye with the armor material recipes and patterns for Apprentice Miners [Coifs], [Bracers], [Sleeves], [Boots], [Legplates], [Gauntlets] and [Tunics]."); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
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
 #}
}
#END of FILE Zone:kaladimb  ID:67003 -- Crovsar_Dirkbringer 
