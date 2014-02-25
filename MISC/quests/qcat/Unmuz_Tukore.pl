sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Your eyes betray your eagerness and your naivety young one. I am Unmuz Tukore. Scourge Knight of the Bloodsabers. If you have come seeking the [training as a shadowknight] then I will offer you guidance.");
}
if($text=~/i seek training as a shadowknight./i){
quest::say("We Scourge Knights of the Bloodsabers. often refered to as shadowknights by those less knowledgeable of our sect. are gifted by Bertoxxulous with prowess in combat and powers over the spirits and bodies of the dead.  It is through discipline. training. and devotion to the Plague Lord that we are granted our powers. You must first equip yourself with a [suit of armor] to defend you in battle from the weapons of our [enemies].");
}
if($text=~/what suit of armor?/i){
quest::say("Take this note to Wellis Pestule. He will assist you in obtaining your armor. Once you have been properly outfitted return to me. I will allow you to assist me with a [pressing matter].");
quest::summonitem("20206");
}
if($text=~/what pressing matter?/i){
quest::say("The Knights of Thunder. the order of paladins loyal to Karana. the Storm Lord. have been paying close attention for signs of us Bloodsabers in the streets of Qeynos. By orders of Antonius Bayle known disciples of the Plague Lord are to be executed by the Knights of Thunder. A particular knight. Grennet Stormhands. has recently discovered the loyalties of a Bloodsaber member that held a valuable position among the merchants of Qeynos. Grennet is to be hunted and slain for our loss. Find this Knight of Thunder and bring me his head.");
}
if($text=~/what enemies?/i){
quest::say("The Knights of Thunder and the Priests of Life are our primary foes. and the power behind the throne of Antonius Bayle IV. If it were not for their presence this city would have been claimed in the name of the Plague Lord long ago. Instead we are forced to hide our temple in the catacombs and move through the sewers to avoid the patrols of Qeynos Guards in the streets. Be mindful of your words when not within the walls of this temple. The Qeynos Guards would execute you for your allegiance to the Bloodsabers."); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
	if($class ne 'Shadowknight') {
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
#END of FILE Zone:qcat  ID:45068 -- Unmuz_Tukore 
