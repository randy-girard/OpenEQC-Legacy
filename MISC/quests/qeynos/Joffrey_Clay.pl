sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings, friend. My name is Joffrey. I'm trying to learn to play the [flute].  I'm also working on a new song I learned while I was visiting [Kelethin].");
}
if($text=~/what kelethin/i){
quest::say("I just got back from a trip to Faydwer. I was over there studying the lore of Tunare, in the beautiful elven city of Kelethin. I highly recommend visiting there as soon as you get a chance."); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
	if($class ne 'Bard') {
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
#END of FILE Zone:qeynos  ID:1131 -- Joffrey_Clay 
