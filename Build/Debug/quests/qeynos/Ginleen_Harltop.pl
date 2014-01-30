sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail!  Keep all combat to the center of the ring. So says [Ebon Strongbear].");
}
if($text=~/who is ebon strongbear/i){
quest::say("Ebon Strongbear is the current champion of the Steel Warriors. As champion, he rules over the Steel Warriors."); }
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
#END of FILE Zone:qeynos  ID:1144 -- Ginleen_Harltop 
