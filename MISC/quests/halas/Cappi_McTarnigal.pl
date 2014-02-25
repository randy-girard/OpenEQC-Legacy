sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail there. $name! If you are not a [member of the White Rose]. then it be best that you stay on the lower level. This here floor is for honest ...ermm respectable rogues only.");
}
if($text=~/i am a member of the white rose/i){
quest::say("I hope that you are indeed respectable. and loyal to Halas and the Rogues of the White Rose. To do otherwise would bring the wrath of the Six Hammers down on you. But enough with talk! Our caravan to the frigid north leaves in less than two days. and we are short on mammoth calf hides. Return four of them and you will be given items that show your loyalty to our Clan."); }
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
#END of FILE Zone:halas  ID:29071 -- Cappi_McTarnigal 
