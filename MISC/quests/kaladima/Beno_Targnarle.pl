sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Step forth. young $name!  I heard that you have come of age!  The spirit of adventure has entered your body.  That is good.  Go and speak with the others.  They shall help you.  I am afraid I have no time to spend conversing.  There is much I have to [ponder].");
}
if($text=~/what ponder/i){
quest::say("Must you know everyone's business?  Hmm..  Maybe you can be of assistance.  You see. I have been instructed by Furtog to tend to a matter of extreme urgency. which is keeping me from clearing the mines of rats.  Will you assist and [exterminate the rats]?");
}
if($text=~/i want to exterminate the rats/i){
quest::say("Very good!  I shall reward you for every four giant rat pelts returned to me.  And be on the lookout for a [metal rat]!");
}
if($text=~/what metal rat/i){
quest::say("I cannot tell you how many reports I have heard of metal rats in Kaladim.  I first thought it was a vision obtained from having too many Tumpy Tonics. but Furtog himself is said to have seen them.  If you ever catch sight of the little metal beast. give chase!!  Return its metal carcass to me and I shall reward you."); }
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
#END of FILE Zone:kaladima  ID:60007 -- Beno_Targnarle 
