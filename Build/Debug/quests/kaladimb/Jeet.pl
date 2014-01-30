sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("What business do you have here?!!  This here is the mine and that means if you ain't a [member of Miner's Guild 628], you'd best be moving on!!");
}
if($text=~/i am a member of miner/i){
quest::say("Don't take this personally,  but I can't quite trust you with such matters.  Maybe a few less Butcherblock bandits would prove your worth."); }
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
#END of FILE Zone:kaladimb  ID:67018 -- Jeet 
