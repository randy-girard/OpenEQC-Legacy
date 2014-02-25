sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Shadowknight master me be!!  $name prove to me that $name be worthy to be one with Greenblood and me give $name black shadow tunic.  You [want black shadow tunic]?");
}
if($text=~/i want black shadow tunic/i){
quest::say("Help Greenbloods you will. Give lizard tails to Grevak.  Den maybe we trust."); }
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
#END of FILE Zone:oggok  ID:49033 -- Bonlarg 
