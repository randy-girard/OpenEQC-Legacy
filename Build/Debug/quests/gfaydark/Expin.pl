sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("How are you. my friend?  You must be a [new scout of Kelethin].  I would hope so.  We dearly need more recruits.  Most of the Fier'Dal choose the path of the ranger.");
}
if($text=~/I am new scout of Kelethin/i){
quest::say("Good.  I have an easy. but very important. task for you.  We require all young members to cleanse these woods of the troublesome pixie tricksters.  Take this pouch. fill it. and when it is combined. return it to me.  I just may have some used armor lying around for you.");
}
if($text=~/I am a new scout of kelethin/i){
quest::say("Good.  I have an easy. but very important. task for you.  We require all young members to cleanse these woods of the troublesome pixie tricksters.  Take this pouch. fill it. and when it is combined. return it to me.  I just may have some used armor lying around for you."); }
}
sub EVENT_ITEM { 
 if($itemcount{5020} == 4){
	quest::say("Good work. scout!!  You have earned this reward.  It is all we have at the time.  I am certain you are satisfied.  If not. then do not let me hear of it.");
	quest::summonitem("2117");
	quest::givecash("0","2","0","0");
 } else {
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
 }
}
#END of FILE Zone:gfaydark  ID:54024 -- Expin 

