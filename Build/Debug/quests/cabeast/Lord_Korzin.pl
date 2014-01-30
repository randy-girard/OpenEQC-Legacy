sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("What is it you seek?  Eternal suffering?");
}
if($text=~/i seek eternal suffering/i){
quest::say("Then follow the words of Cazic-Thule and may his blessed curses rain upon your soul as they shall on all of his faithful servants."); }
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
# }
}
#END of FILE Zone:cabeast  ID:3313 -- Lord_Korzin 

